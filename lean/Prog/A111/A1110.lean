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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A111000: Integer part of zeta(zeta(n)).

The programs for A111000, there is no canonical definition to state claims against.
-/

/-! ## A111000.P7564207026410126391

`eq[A035327(n), A048766(A173601(n))]`
-/

namespace A111000.P7564207026410126391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A173601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111000.P7564207026410126391

/-! ## A111000.P15464776195324168

`A233583(A020707(n)-A271489(n))`
-/

namespace A111000.P15464776195324168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A020707 n - A271489 n).toNat

end

end A111000.P15464776195324168

/-! ## A111000.P7593440147448078412

`A271473(Δ[A020707(n)])-A271489(n)`
-/

namespace A111000.P7593440147448078412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271473 (f1 (n + 1) - f1 n).toNat - A271489 n

end

end A111000.P7593440147448078412

/-! ## A111000.P13436330277048622766

`A271473(A271482(n+2))-A271489(n)`
-/

namespace A111000.P13436330277048622766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271473 (A271482 (n + 2)).toNat - A271489 n

end

end A111000.P13436330277048622766

/-!
# A111002: a(n) = gcd(f(n), f(n+1)) where f(n) = n^4 + n^2 + 1.

The programs for A111002, the canonical program `A111002.P5659110002420583552` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111002 has offset 0).

The definition of A111002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111002.P5659110002420583552

`gcd(n^4+n²+1, n^4+4*n^3+7*n²+6*n+3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111002

/-- `gcd(n^4+n²+1, n^4+4*n^3+7*n²+6*n+3)` -/
def P5659110002420583552.Spec : Prop :=
  ∀ n, (P5659110002420583552.a n : ℤ) = A111002 n

theorem P5659110002420583552.correct : P5659110002420583552.Spec := by
  intro n
  simp only [A111002]

end A111002

/-! ## A111002.P17489400660489854627

`(∑[2*n]+1)*gcd(2*n+1, n-3)`
-/

namespace A111002.P17489400660489854627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * Int.gcd (2 * n + 1 : ℤ) ((n : ℤ) - 3)

end

end A111002.P17489400660489854627

namespace A111002

/-- `(∑[2*n]+1)*gcd(2*n+1, n-3)` -/
def P17489400660489854627.Spec : Prop :=
  ∀ n, (P17489400660489854627.a n : ℤ) = A111002 n

end A111002

/-! ## A111002.P4359777807079372844

`gcd(7, 3-n)*∑[A004277(n)]`
-/

namespace A111002.P4359777807079372844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (3 - (n : ℤ)) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111002.P4359777807079372844

namespace A111002

/-- `gcd(7, 3-n)*∑[A004277(n)]` -/
def P4359777807079372844.Spec : Prop :=
  ∀ n, P4359777807079372844.a n = A111002 n

end A111002

/-!
# A111004: Number of permutations avoiding a consecutive 132 pattern.

The programs for A111004, there is no canonical definition to state claims against.
-/

/-! ## A111004.P13443208906408224759

`A197365(A033638(n))`
-/

namespace A111004.P13443208906408224759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A033638 n).toNat

end

end A111004.P13443208906408224759

/-! ## A111004.P15466531357379369158

`A197365(A008621(n²))`
-/

namespace A111004.P15466531357379369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A008621 (n ^ 2)).toNat

end

end A111004.P15466531357379369158

/-! ## A111004.P15222588717363281858

`A197365(∑[A123108(n)])`
-/

namespace A111004.P15222588717363281858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111004.P15222588717363281858

/-! ## A111004.P15544181209032117466

`A197365(A002620(n)+1)`
-/

namespace A111004.P15544181209032117466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A002620 n + 1).toNat

end

end A111004.P15544181209032117466

/-! ## A111004.P14434814086522606101

`A197365(A002265(n²)+1)`
-/

namespace A111004.P14434814086522606101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A002265 (n ^ 2) + 1).toNat

end

end A111004.P14434814086522606101

/-! ## A111004.P13291303416486473609

`A197365(A024206(n+1)+1-n)`
-/

namespace A111004.P13291303416486473609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A024206 (n + 1) + (1 - (n : ℤ))).toNat

end

end A111004.P13291303416486473609

/-!
# A111005: Terms in A062234 that are powers > 1.

The programs for A111005, there is no canonical definition to state claims against.
-/

/-! ## A111005.P3192578304011744152

`filter[A062234(n+3), A075802(#)]`
-/

namespace A111005.P3192578304011744152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A111005.P3192578304011744152

/-! ## A111005.P9304877968245045425

`A268576(∏{p}[A026553(n), #])`
-/

namespace A111005.P9304877968245045425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268576 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A111005.P9304877968245045425

/-!
# A111006: Another version of Fibonacci-Pascal triangle A037027.

The programs for A111006, there is no canonical definition to state claims against.
-/

/-! ## A111006.P11555858009192352287

`∑{e}[A048784(A124182(n)), #]`
-/

namespace A111006.P11555858009192352287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 (A124182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A111006.P11555858009192352287

/-! ## A111006.P4982938990564632204

`A035931(A124182(n)^4)`
-/

namespace A111006.P4982938990564632204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A124182 n ^ 4).toNat

end

end A111006.P4982938990564632204

/-! ## A111006.P11170057271549150946

`A035931(A124182(n)²²)`
-/

namespace A111006.P11170057271549150946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 ((A124182 n ^ 2) ^ 2).toNat

end

end A111006.P11170057271549150946

/-! ## A111006.P945670683233726546

`∑{e}[A001610(A099089(n)), #]`
-/

namespace A111006.P945670683233726546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (A099089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A111006.P945670683233726546

/-! ## A111006.P12217345746279732935

`A228110(lcm(A049808(n+1), A084938(n)))`
-/

namespace A111006.P12217345746279732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228110 (Int.lcm (A049808 (n + 1)) (A084938 n))

end

end A111006.P12217345746279732935

/-!
# A111007: Triangle T(n,m) which contains in row n the rounded ordinate value at abscissa m along the upper rim of the circle with diameter n centered at (n/2, 1).

The programs for A111007, the canonical program `A111007.P10750197142784258135` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111007 has offset 0).

The definition of A111007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111007.P15353067215757209619

`round(sqrt(A004247(n)))+1`
-/

namespace A111007.P15353067215757209619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ)) + 1

end

end A111007.P15353067215757209619

namespace A111007

/-- `round(sqrt(A004247(n)))+1` -/
def P15353067215757209619.Spec : Prop :=
  ∀ n, P15353067215757209619.a n = A111007 n

end A111007

/-! ## A111007.P8606034060675358063

`round(sqrt(log2(A117401(n))))+1`
-/

namespace A111007.P8606034060675358063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.logb 2 (A117401 n : ℝ))) + 1

end

end A111007.P8606034060675358063

namespace A111007

/-- `round(sqrt(log2(A117401(n))))+1` -/
def P8606034060675358063.Spec : Prop :=
  ∀ n, P8606034060675358063.a n = A111007 n

end A111007

/-! ## A111007.P3270881918510933761

`round(sqrt(A077028(n)-1))+1`
-/

namespace A111007.P3270881918510933761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A077028 n - 1 : ℝ)) + 1

end

end A111007.P3270881918510933761

namespace A111007

/-- `round(sqrt(A077028(n)-1))+1` -/
def P3270881918510933761.Spec : Prop :=
  ∀ n, P3270881918510933761.a n = A111007 n

end A111007

/-! ## A111007.P15275789747580863231

`round(sqrt(1-A176270(n)))+1`
-/

namespace A111007.P15275789747580863231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (1 - A176270 n : ℝ)) + 1

end

end A111007.P15275789747580863231

namespace A111007

/-- `round(sqrt(1-A176270(n)))+1` -/
def P15275789747580863231.Spec : Prop :=
  ∀ n, P15275789747580863231.a n = A111007 n

end A111007

/-! ## A111007.P10750197142784258135

`A368941(A004247(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111007

/-- `A368941(A004247(n))` -/
def P10750197142784258135.Spec : Prop :=
  ∀ n, P10750197142784258135.a n = A111007 n

theorem P10750197142784258135.correct : P10750197142784258135.Spec := by
  intro n
  simp only [A111007]

end A111007

/-! ## A111007.P2884633399753238024

`A005496(round(sqrt(A004247(n))))`
-/

namespace A111007.P2884633399753238024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ))).toNat

end

end A111007.P2884633399753238024

namespace A111007

/-- `A005496(round(sqrt(A004247(n))))` -/
def P2884633399753238024.Spec : Prop :=
  ∀ n, P2884633399753238024.a n = A111007 n

end A111007

/-! ## A111007.P1136985982976618869

`A005555(round(sqrt(A004247(n))))`
-/

namespace A111007.P1136985982976618869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ))).toNat

end

end A111007.P1136985982976618869

namespace A111007

/-- `A005555(round(sqrt(A004247(n))))` -/
def P1136985982976618869.Spec : Prop :=
  ∀ n, P1136985982976618869.a n = A111007 n

end A111007

/-! ## A111007.P7375449372764314380

`A008726(round(sqrt(A004247(n))))`
-/

namespace A111007.P7375449372764314380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ))).toNat

end

end A111007.P7375449372764314380

namespace A111007

/-- `A008726(round(sqrt(A004247(n))))` -/
def P7375449372764314380.Spec : Prop :=
  ∀ n, P7375449372764314380.a n = A111007 n

end A111007

/-! ## A111007.P5370186174359261469

`A008728(round(sqrt(A004247(n))))`
-/

namespace A111007.P5370186174359261469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ))).toNat

end

end A111007.P5370186174359261469

namespace A111007

/-- `A008728(round(sqrt(A004247(n))))` -/
def P5370186174359261469.Spec : Prop :=
  ∀ n, P5370186174359261469.a n = A111007 n

end A111007

/-! ## A111007.P10773942842243524370

`A033307(round(sqrt(A004247(n))))`
-/

namespace A111007.P10773942842243524370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ))).toNat

end

end A111007.P10773942842243524370

namespace A111007

/-- `A033307(round(sqrt(A004247(n))))` -/
def P10773942842243524370.Spec : Prop :=
  ∀ n, P10773942842243524370.a n = A111007 n

end A111007

/-! ## A111007.P8979769416633414307

`A077168(round(sqrt(A004247(n))))`
-/

namespace A111007.P8979769416633414307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ))).toNat

end

end A111007.P8979769416633414307

namespace A111007

/-- `A077168(round(sqrt(A004247(n))))` -/
def P8979769416633414307.Spec : Prop :=
  ∀ n, P8979769416633414307.a n = A111007 n

end A111007

/-! ## A111007.P15743144480610731726

`A123578(A259572(n+1))+1`
-/

namespace A111007.P15743144480610731726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A259572 (n + 1)).toNat + 1

end

end A111007.P15743144480610731726

namespace A111007

/-- `A123578(A259572(n+1))+1` -/
def P15743144480610731726.Spec : Prop :=
  ∀ n, P15743144480610731726.a n = A111007 n

end A111007

/-! ## A111007.P9084158740451055754

`A000194(A077028(n)-1)+1`
-/

namespace A111007.P9084158740451055754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A077028 n - 1).toNat + 1

end

end A111007.P9084158740451055754

namespace A111007

/-- `A000194(A077028(n)-1)+1` -/
def P9084158740451055754.Spec : Prop :=
  ∀ n, P9084158740451055754.a n = A111007 n

theorem P9084158740451055754.correct : P9084158740451055754.Spec := by
  intro n
  simp only [A111007, Nat.add_sub_cancel, A111007.P9084158740451055754.a, A111007.P10750197142784258135.a, A000194, A000194.P3625933274776871084.a, A004247, A004247.P14233945955703425283.a, A077028, A077028.P11682596430163569480.a, A368941, A368941.P450632481750621154.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A111007

/-! ## A111007.P6235310363030930607

`A000005(2^round(sqrt(A004247(n))))`
-/

namespace A111007.P6235310363030930607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ)) : ℤ))).toNat

end

end A111007.P6235310363030930607

namespace A111007

/-- `A000005(2^round(sqrt(A004247(n))))` -/
def P6235310363030930607.Spec : Prop :=
  ∀ n, P6235310363030930607.a n = A111007 n

end A111007

/-! ## A111007.P1115372754738658453

`A001511(2^round(sqrt(A004247(n))))`
-/

namespace A111007.P1115372754738658453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ)) : ℤ))).toNat

end

end A111007.P1115372754738658453

namespace A111007

/-- `A001511(2^round(sqrt(A004247(n))))` -/
def P1115372754738658453.Spec : Prop :=
  ∀ n, P1115372754738658453.a n = A111007 n

end A111007

/-! ## A111007.P1092867057378633607

`A002326(2^round(sqrt(A004247(n)))-1)`
-/

namespace A111007.P1092867057378633607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ)) : ℤ) - 1)).toNat

end

end A111007.P1092867057378633607

namespace A111007

/-- `A002326(2^round(sqrt(A004247(n)))-1)` -/
def P1092867057378633607.Spec : Prop :=
  ∀ n, P1092867057378633607.a n = A111007 n

end A111007

/-! ## A111007.P10462053845471472205

`A001222(2*2^round(sqrt(A004247(n))))`
-/

namespace A111007.P10462053845471472205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (A004247 n : ℝ)) : ℤ))).toNat

end

end A111007.P10462053845471472205

namespace A111007

/-- `A001222(2*2^round(sqrt(A004247(n))))` -/
def P10462053845471472205.Spec : Prop :=
  ∀ n, P10462053845471472205.a n = A111007 n

end A111007

/-! ## A111007.P1118332792450410311

`round(sqrt(A002262(n)*A025581(n)))+1`
-/

namespace A111007.P1118332792450410311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A002262 n * A025581 n : ℝ)) + 1

end

end A111007.P1118332792450410311

namespace A111007

/-- `round(sqrt(A002262(n)*A025581(n)))+1` -/
def P1118332792450410311.Spec : Prop :=
  ∀ n, P1118332792450410311.a n = A111007 n

end A111007

/-! ## A111007.P10470322931428222405

`round(sqrt((A004736(n+1)-1)*A002262(n)))+1`
-/

namespace A111007.P10470322931428222405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A004736 (n + 1) - 1) * A002262 n : ℝ)) + 1

end

end A111007.P10470322931428222405

namespace A111007

/-- `round(sqrt((A004736(n+1)-1)*A002262(n)))+1` -/
def P10470322931428222405.Spec : Prop :=
  ∀ n, P10470322931428222405.a n = A111007 n

end A111007

/-!
# A111008: a(n) = A000367(n)/A141590(n).

The programs for A111008, there is no canonical definition to state claims against.
-/

/-! ## A111008.P851015748174626161

`A000367(n)/A141590(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111008.P851015748174626161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (A141590 n : ℚ)

end

end A111008.P851015748174626161

/-! ## A111008.P2881857054558102490

`gcd((n+8)!, A164555(2*n))`
-/

namespace A111008.P2881857054558102490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (n + 8) : ℤ) (A164555 (2 * n))

end

end A111008.P2881857054558102490

/-! ## A111008.P10595675250541729865

`gcd(A000367(n), A001147(n))`
-/

namespace A111008.P10595675250541729865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000367 n) (A001147 n)

end

end A111008.P10595675250541729865

/-! ## A111008.P18340325590712377106

`A000367(n)/A120080(2*n)`
-/

namespace A111008.P18340325590712377106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (A120080 (2 * n) : ℚ)

end

end A111008.P18340325590712377106

/-! ## A111008.P13071686991562260045

`A000367(n)/A120082(2*n)`
-/

namespace A111008.P13071686991562260045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (A120082 (2 * n) : ℚ)

end

end A111008.P13071686991562260045

/-! ## A111008.P12837910234179547191

`A000367(n)/A120086(2*n)`
-/

namespace A111008.P12837910234179547191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (A120086 (2 * n) : ℚ)

end

end A111008.P12837910234179547191

/-! ## A111008.P5384750616664529015

`A027641(2*n)/A141590(n)`
-/

namespace A111008.P5384750616664529015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 (2 * n) : ℚ) / (A141590 n : ℚ)

end

end A111008.P5384750616664529015

/-! ## A111008.P15544237714452937651

`gcd(-A000367(n), ∏[A223134(n)])`
-/

namespace A111008.P15544237714452937651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A000367 n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111008.P15544237714452937651

/-! ## A111008.P4446495782565315856

`A027641(2*n)/A120080(2*n)`
-/

namespace A111008.P4446495782565315856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 (2 * n) : ℚ) / (A120080 (2 * n) : ℚ)

end

end A111008.P4446495782565315856

/-! ## A111008.P7270550397216610790

`A027641(2*n)/A120082(2*n)`
-/

namespace A111008.P7270550397216610790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 (2 * n) : ℚ) / (A120082 (2 * n) : ℚ)

end

end A111008.P7270550397216610790

/-!
# A111009: Starting with the fraction 1/1, the prime numerators of fractions built according to the rule: add top and bottom to get the new bottom, add top and 4 times bottom to get the new top.

The programs for A111009, there is no canonical definition to state claims against.
-/

/-! ## A111009.P1660569024541536937

`A088553(n+2)`
-/

namespace A111009.P1660569024541536937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088553 (n + 2)

end

end A111009.P1660569024541536937

/-! ## A111009.P9255420253950385723

`record[A088553(A328578(n))]`
-/

namespace A111009.P9255420253950385723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088553 (A328578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111009.P9255420253950385723

/-! ## A111009.P6535676316324313341

`A046717(A096723(n+2))`
-/

namespace A111009.P6535676316324313341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (A096723 (n + 2)).toNat

end

end A111009.P6535676316324313341

/-!
# A111010: Primes of the form (3^k - (-1)^k)/4.

The programs for A111010, there is no canonical definition to state claims against.
-/

/-! ## A111010.P12520186907764030971

`A015518(A080190(n))`
-/

namespace A111010.P12520186907764030971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A080190 n).toNat

end

end A111010.P12520186907764030971

/-! ## A111010.P2425368799884311441

`A015518(A006992(n+1))`
-/

namespace A111010.P2425368799884311441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A006992 (n + 1)).toNat

end

end A111010.P2425368799884311441

/-! ## A111010.P6574765816659100647

`A280691(A113118(n+2))`
-/

namespace A111010.P6574765816659100647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280691 (A113118 (n + 2)).toNat

end

end A111010.P6574765816659100647

/-!
# A111011: Primes in A002533.

The programs for A111011, there is no canonical definition to state claims against.
-/

/-! ## A111011.P16512904203858243755

`A002533(A372491(n+1))`
-/

namespace A111011.P16512904203858243755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (A372491 (n + 1)).toNat

end

end A111011.P16512904203858243755

/-!
# A111014: Primes in the sequence A015519.

The programs for A111014, there is no canonical definition to state claims against.
-/

/-! ## A111014.P8517640172090771615

`A015519(p?[A236843(n)])`
-/

namespace A111014.P8517640172090771615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111014.P8517640172090771615

/-!
# A111015: Primes in A002535.

The programs for A111015, there is no canonical definition to state claims against.
-/

/-! ## A111015.P14879303150759696108

`p?[2*a(n-1)+9*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A111015.P14879303150759696108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) + 9 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A111015.P14879303150759696108

/-!
# A111017: a(n) = (A102877(n+1) - A102877(n))/2.

The programs for A111017, there is no canonical definition to state claims against.
-/

/-! ## A111017.P4788344382791753290

`(A102877(n+1)-A102877(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111017.P4788344382791753290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102877 (n + 1) - A102877 n : ℚ) / 2

end

end A111017.P4788344382791753290

/-! ## A111017.P18087638644691027281

`Δ[A102877(n)/2]`
-/

namespace A111017.P18087638644691027281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102877 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111017.P18087638644691027281

/-! ## A111017.P16637468416028167819

`Δ[2^A008683(A006450(n+1))*A102877(n)]`
-/

namespace A111017.P16637468416028167819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A102877 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111017.P16637468416028167819

/-! ## A111017.P12416911953826595542

`Δ[(A039721(n+2)/2-A129770(n))/2]`
-/

namespace A111017.P12416911953826595542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A039721 (n + 2) : ℚ) / 2 - (A129770 n : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111017.P12416911953826595542

/-! ## A111017.P7634182282441600830

`Δ[(A129772(n)-A129770(n))/2]`
-/

namespace A111017.P7634182282441600830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129772 n - A129770 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111017.P7634182282441600830

/-!
# A111018: Indices of Catalan numbers that are divisible by 3.

The programs for A111018, the canonical program `A111018.P13011013396432791406` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111018 has offset 1).

The definition of A111018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111018.P13011013396432791406

`eq[0, (n+1)*a(floor(n/3))²%3]-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111018

/-- `eq[0, (n+1)*a(floor(n/3))²%3]-1` -/
def P13011013396432791406.Spec : Prop :=
  ∀ n, P13011013396432791406.a n = A111018 (n + 1)

theorem P13011013396432791406.correct : P13011013396432791406.Spec := by
  intro n
  simp only [A111018, Nat.add_sub_cancel]

end A111018

/-! ## A111018.P6991996292120290901

`comp[A370662(n+1)]`
-/

namespace A111018.P6991996292120290901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111018.P6991996292120290901

namespace A111018

/-- `comp[A370662(n+1)]` -/
def P6991996292120290901.Spec : Prop :=
  ∀ n, (P6991996292120290901.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P16170919481741774405

`A089119(n+1)+1`
-/

namespace A111018.P16170919481741774405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089119 (n + 1) + 1

end

end A111018.P16170919481741774405

namespace A111018

/-- `A089119(n+1)+1` -/
def P16170919481741774405.Spec : Prop :=
  ∀ n, P16170919481741774405.a n = A111018 (n + 1)

theorem P16170919481741774405.correct : P16170919481741774405.Spec := by
  intro n
  simp only [A111018, Nat.add_sub_cancel, A111018.P16170919481741774405.a, A111018.P13011013396432791406.f1, A111018.P13011013396432791406.f2, A111018.P13011013396432791406.a, A089119, A089119.P15893030282403105852.f1, A089119.P15893030282403105852.f2, A089119.P15893030282403105852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111018

/-! ## A111018.P399745378875569010

`lt[2, A300222(n+1)]`
-/

namespace A111018.P399745378875569010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111018.P399745378875569010

namespace A111018

/-- `lt[2, A300222(n+1)]` -/
def P399745378875569010.Spec : Prop :=
  ∀ n, (P399745378875569010.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P6905606143352456462

`lt[2, A300222(n)]-1`
-/

namespace A111018.P6905606143352456462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A111018.P6905606143352456462

namespace A111018

/-- `lt[2, A300222(n)]-1` -/
def P6905606143352456462.Spec : Prop :=
  ∀ n, P6905606143352456462.a n = A111018 (n + 1)

end A111018

/-! ## A111018.P12079255928062565733

`eq[0, A039970(2*n+1)]`
-/

namespace A111018.P12079255928062565733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111018.P12079255928062565733

namespace A111018

/-- `eq[0, A039970(2*n+1)]` -/
def P12079255928062565733.Spec : Prop :=
  ∀ n, (P12079255928062565733.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P14414929948697942610

`eq[0, A039973(2*n+1)]`
-/

namespace A111018.P14414929948697942610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111018.P14414929948697942610

namespace A111018

/-- `eq[0, A039973(2*n+1)]` -/
def P14414929948697942610.Spec : Prop :=
  ∀ n, (P14414929948697942610.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P9721436135316572796

`A074940(A241783(n+1))`
-/

namespace A111018.P9721436135316572796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (A241783 (n + 1)).toNat

end

end A111018.P9721436135316572796

namespace A111018

/-- `A074940(A241783(n+1))` -/
def P9721436135316572796.Spec : Prop :=
  ∀ n, P9721436135316572796.a n = A111018 (n + 1)

end A111018

/-! ## A111018.P216803553600592715

`A107756(A241783(n+1)+1)`
-/

namespace A111018.P216803553600592715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (A241783 (n + 1) + 1).toNat

end

end A111018.P216803553600592715

namespace A111018

/-- `A107756(A241783(n+1)+1)` -/
def P216803553600592715.Spec : Prop :=
  ∀ n, P216803553600592715.a n = A111018 (n + 1)

end A111018

/-! ## A111018.P14144338943185851301

`∩[A074940(n+1), A107756(n+1)]`
-/

namespace A111018.P14144338943185851301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111018.P14144338943185851301

namespace A111018

/-- `∩[A074940(n+1), A107756(n+1)]` -/
def P14144338943185851301.Spec : Prop :=
  ∀ n, (P14144338943185851301.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P17961800223871114671

`eq[0, A039964(n)]+1`
-/

namespace A111018.P17961800223871114671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111018.P17961800223871114671

namespace A111018

/-- `eq[0, A039964(n)]+1` -/
def P17961800223871114671.Spec : Prop :=
  ∀ n, (P17961800223871114671.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P14822767990187253553

`A020725(A089119(n+1))`
-/

namespace A111018.P14822767990187253553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A089119 (n + 1)).toNat

end

end A111018.P14822767990187253553

namespace A111018

/-- `A020725(A089119(n+1))` -/
def P14822767990187253553.Spec : Prop :=
  ∀ n, P14822767990187253553.a n = A111018 (n + 1)

end A111018

/-! ## A111018.P18234199448181212521

`eq[0, A039969(n)]`
-/

namespace A111018.P18234199448181212521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111018.P18234199448181212521

namespace A111018

/-- `eq[0, A039969(n)]` -/
def P18234199448181212521.Spec : Prop :=
  ∀ n, (P18234199448181212521.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P17091326770718960439

`lt[0, A067397(n)]`
-/

namespace A111018.P17091326770718960439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111018.P17091326770718960439

namespace A111018

/-- `lt[0, A067397(n)]` -/
def P17091326770718960439.Spec : Prop :=
  ∀ n, (P17091326770718960439.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P5078951307467963109

`lt[1, A060373(n)]`
-/

namespace A111018.P5078951307467963109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111018.P5078951307467963109

namespace A111018

/-- `lt[1, A060373(n)]` -/
def P5078951307467963109.Spec : Prop :=
  ∀ n, (P5078951307467963109.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P17290415539130712784

`lt[n+1, A060372(n)]`
-/

namespace A111018.P17290415539130712784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111018.P17290415539130712784

namespace A111018

/-- `lt[n+1, A060372(n)]` -/
def P17290415539130712784.Spec : Prop :=
  ∀ n, (P17290415539130712784.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P15117869181067571854

`eq[0, A039965(n+1)]`
-/

namespace A111018.P15117869181067571854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111018.P15117869181067571854

namespace A111018

/-- `eq[0, A039965(n+1)]` -/
def P15117869181067571854.Spec : Prop :=
  ∀ n, (P15117869181067571854.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P16941376941582579107

`lt[2, A289816(n+1)]`
-/

namespace A111018.P16941376941582579107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111018.P16941376941582579107

namespace A111018

/-- `lt[2, A289816(n+1)]` -/
def P16941376941582579107.Spec : Prop :=
  ∀ n, (P16941376941582579107.a n : ℤ) = A111018 (n + 1)

end A111018

/-! ## A111018.P9946915240441824531

`lt[2, A289816(n)]-1`
-/

namespace A111018.P9946915240441824531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A111018.P9946915240441824531

namespace A111018

/-- `lt[2, A289816(n)]-1` -/
def P9946915240441824531.Spec : Prop :=
  ∀ n, P9946915240441824531.a n = A111018 (n + 1)

end A111018

/-! ## A111018.P9783172371345112199

`eq[0, A004095(n)%3]`
-/

namespace A111018.P9783172371345112199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004095 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111018.P9783172371345112199

namespace A111018

/-- `eq[0, A004095(n)%3]` -/
def P9783172371345112199.Spec : Prop :=
  ∀ n, (P9783172371345112199.a n : ℤ) = A111018 (n + 1)

end A111018

/-!
# A111019: Indices of Catalan numbers that are == 1 mod 3 (cf. A000108).

The programs for A111019, the canonical program `A111019.P749535475044442863` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111019 has offset 1).

The definition of A111019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111019.P749535475044442863

`A019467(n+2)/3-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A111019

/-- `A019467(n+2)/3-1` -/
def P749535475044442863.Spec : Prop :=
  ∀ n, P749535475044442863.a n = (A111019 (n + 1) : ℚ)

end A111019

/-! ## A111019.P15286254578752036710

`eq[1, A039970(2*n+3)]+1`
-/

namespace A111019.P15286254578752036710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111019.P15286254578752036710

namespace A111019

/-- `eq[1, A039970(2*n+3)]+1` -/
def P15286254578752036710.Spec : Prop :=
  ∀ n, (P15286254578752036710.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P42872487542193733

`1+eq[1, A039969(n+1)]`
-/

namespace A111019.P42872487542193733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111019.P42872487542193733

namespace A111019

/-- `1+eq[1, A039969(n+1)]` -/
def P42872487542193733.Spec : Prop :=
  ∀ n, (P42872487542193733.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P3442066099771693944

`eq[A039969(n), A054977(n)]`
-/

namespace A111019.P3442066099771693944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111019.P3442066099771693944

namespace A111019

/-- `eq[A039969(n), A054977(n)]` -/
def P3442066099771693944.Spec : Prop :=
  ∀ n, (P3442066099771693944.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P6928001203130702961

`eq[A039969(n), A057427(n)]`
-/

namespace A111019.P6928001203130702961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111019.P6928001203130702961

namespace A111019

/-- `eq[A039969(n), A057427(n)]` -/
def P6928001203130702961.Spec : Prop :=
  ∀ n, (P6928001203130702961.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P4281219242606934805

`eq[A039969(n), A158388(n)]`
-/

namespace A111019.P4281219242606934805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111019.P4281219242606934805

namespace A111019

/-- `eq[A039969(n), A158388(n)]` -/
def P4281219242606934805.Spec : Prop :=
  ∀ n, (P4281219242606934805.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P15362068226098619101

`eq[A039969(n), A116891(n+1)]`
-/

namespace A111019.P15362068226098619101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111019.P15362068226098619101

namespace A111019

/-- `eq[A039969(n), A116891(n+1)]` -/
def P15362068226098619101.Spec : Prop :=
  ∀ n, (P15362068226098619101.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P12915660572466589921

`eq[2, A039965(n+1)*A134451(n)]`
-/

namespace A111019.P12915660572466589921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (n + 1) * A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111019.P12915660572466589921

namespace A111019

/-- `eq[2, A039965(n+1)*A134451(n)]` -/
def P12915660572466589921.Spec : Prop :=
  ∀ n, (P12915660572466589921.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P3684960213416849499

`eq[A039969(n), A178334(A178334(n))]`
-/

namespace A111019.P3684960213416849499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111019.P3684960213416849499

namespace A111019

/-- `eq[A039969(n), A178334(A178334(n))]` -/
def P3684960213416849499.Spec : Prop :=
  ∀ n, (P3684960213416849499.a n : ℤ) = A111019 (n + 1)

end A111019

/-! ## A111019.P345532626783455675

`A267183(A019467(n+2))`
-/

namespace A111019.P345532626783455675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (A019467 (n + 2)).toNat

end

end A111019.P345532626783455675

namespace A111019

/-- `A267183(A019467(n+2))` -/
def P345532626783455675.Spec : Prop :=
  ∀ n, P345532626783455675.a n = A111019 (n + 1)

end A111019

/-! ## A111019.P12605531453285912259

`A002264(A019467(n+2)-1)`
-/

namespace A111019.P12605531453285912259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A019467 (n + 2) - 1).toNat

end

end A111019.P12605531453285912259

namespace A111019

/-- `A002264(A019467(n+2)-1)` -/
def P12605531453285912259.Spec : Prop :=
  ∀ n, P12605531453285912259.a n = A111019 (n + 1)

end A111019

/-!
# A111020: Indices of Catalan numbers (A000108) that are == 2 mod 3.

The programs for A111020, the canonical program `A111020.P1849780843808022538` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111020 has offset 1).

The definition of A111020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111020.P4513817334777974729

`A019468(n+1)/3-1`
-/

namespace A111020.P4513817334777974729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019468 (n + 1) : ℚ) / 3 - 1

end

end A111020.P4513817334777974729

namespace A111020

/-- `A019468(n+1)/3-1` -/
def P4513817334777974729.Spec : Prop :=
  ∀ n, P4513817334777974729.a n = (A111020 (n + 1) : ℚ)

theorem P4513817334777974729.correct : P4513817334777974729.Spec := by
  intro n
  simp only [A111020, Nat.add_sub_cancel, A111020.P4513817334777974729.a, A111020.P1849780843808022538.f1, A111020.P1849780843808022538.f2, A111020.P1849780843808022538.a, A019468, A019468.P325024408186836971.a, A039970, A039970.P17445179311011045739.a, A000108, A000108.P17551949696095299361.a, A123108, A123108.P8709889862737691449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111020

/-! ## A111020.P1849780843808022538

`eq[2, A039970(2*n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111020

/-- `eq[2, A039970(2*n+1)]` -/
def P1849780843808022538.Spec : Prop :=
  ∀ n, (P1849780843808022538.a n : ℤ) = A111020 (n + 1)

theorem P1849780843808022538.correct : P1849780843808022538.Spec := by
  intro n
  simp only [A111020, Nat.add_sub_cancel]

end A111020

/-! ## A111020.P12281708185066784584

`eq[gcd(2, n), A039973(2*n+1)]`
-/

namespace A111020.P12281708185066784584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111020.P12281708185066784584

namespace A111020

/-- `eq[gcd(2, n), A039973(2*n+1)]` -/
def P12281708185066784584.Spec : Prop :=
  ∀ n, (P12281708185066784584.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P13529691548186842869

`eq[2, A039970(n+1)]/2`
-/

namespace A111020.P13529691548186842869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A111020.P13529691548186842869

namespace A111020

/-- `eq[2, A039970(n+1)]/2` -/
def P13529691548186842869.Spec : Prop :=
  ∀ n, P13529691548186842869.a n = (A111020 (n + 1) : ℚ)

end A111020

/-! ## A111020.P989244382939377198

`∩[A047228(n+1), A370662(n+1)]`
-/

namespace A111020.P989244382939377198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111020.P989244382939377198

namespace A111020

/-- `∩[A047228(n+1), A370662(n+1)]` -/
def P989244382939377198.Spec : Prop :=
  ∀ n, (P989244382939377198.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P15683139541520941220

`lt[1, A039969(n)]`
-/

namespace A111020.P15683139541520941220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111020.P15683139541520941220

namespace A111020

/-- `lt[1, A039969(n)]` -/
def P15683139541520941220.Spec : Prop :=
  ∀ n, (P15683139541520941220.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P9515415175429633635

`eq[2, A039969(n+1)]+1`
-/

namespace A111020.P9515415175429633635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111020.P9515415175429633635

namespace A111020

/-- `eq[2, A039969(n+1)]+1` -/
def P9515415175429633635.Spec : Prop :=
  ∀ n, (P9515415175429633635.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P4694502033152593924

`eq[A039969(n), A040934(n)]`
-/

namespace A111020.P4694502033152593924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P4694502033152593924

namespace A111020

/-- `eq[A039969(n), A040934(n)]` -/
def P4694502033152593924.Spec : Prop :=
  ∀ n, (P4694502033152593924.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P8976018797448957033

`eq[A060373(n), A088911(n)]`
-/

namespace A111020.P8976018797448957033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P8976018797448957033

namespace A111020

/-- `eq[A060373(n), A088911(n)]` -/
def P8976018797448957033.Spec : Prop :=
  ∀ n, (P8976018797448957033.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P4684234918370394854

`eq[A060373(n), A115360(n)]`
-/

namespace A111020.P4684234918370394854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P4684234918370394854

namespace A111020

/-- `eq[A060373(n), A115360(n)]` -/
def P4684234918370394854.Spec : Prop :=
  ∀ n, (P4684234918370394854.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P9799259718378524139

`eq[A060373(n), A117907(n)]`
-/

namespace A111020.P9799259718378524139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P9799259718378524139

namespace A111020

/-- `eq[A060373(n), A117907(n)]` -/
def P9799259718378524139.Spec : Prop :=
  ∀ n, (P9799259718378524139.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P8879352187436135417

`eq[A039969(n), A366424(n)]`
-/

namespace A111020.P8879352187436135417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P8879352187436135417

namespace A111020

/-- `eq[A039969(n), A366424(n)]` -/
def P8879352187436135417.Spec : Prop :=
  ∀ n, (P8879352187436135417.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P6923030727127592115

`eq[A088911(n), A353158(n)]`
-/

namespace A111020.P6923030727127592115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P6923030727127592115

namespace A111020

/-- `eq[A088911(n), A353158(n)]` -/
def P6923030727127592115.Spec : Prop :=
  ∀ n, (P6923030727127592115.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P17098317591770687217

`eq[A115360(n), A353158(n)]`
-/

namespace A111020.P17098317591770687217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P17098317591770687217

namespace A111020

/-- `eq[A115360(n), A353158(n)]` -/
def P17098317591770687217.Spec : Prop :=
  ∀ n, (P17098317591770687217.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P4031269310416679776

`eq[A117907(n), A353158(n)]`
-/

namespace A111020.P4031269310416679776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P4031269310416679776

namespace A111020

/-- `eq[A117907(n), A353158(n)]` -/
def P4031269310416679776.Spec : Prop :=
  ∀ n, (P4031269310416679776.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P17828038609053000493

`eq[2, A006996(A002264(n+1))]`
-/

namespace A111020.P17828038609053000493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A002264 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111020.P17828038609053000493

namespace A111020

/-- `eq[2, A006996(A002264(n+1))]` -/
def P17828038609053000493.Spec : Prop :=
  ∀ n, (P17828038609053000493.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P11648499159717017895

`eq[2, A230404(A159989(n)+1)]`
-/

namespace A111020.P11648499159717017895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (A159989 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111020.P11648499159717017895

namespace A111020

/-- `eq[2, A230404(A159989(n)+1)]` -/
def P11648499159717017895.Spec : Prop :=
  ∀ n, (P11648499159717017895.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P8759253643769703277

`eq[2, A006996(A002264(n))]-1`
-/

namespace A111020.P8759253643769703277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A111020.P8759253643769703277

namespace A111020

/-- `eq[2, A006996(A002264(n))]-1` -/
def P8759253643769703277.Spec : Prop :=
  ∀ n, P8759253643769703277.a n = A111020 (n + 1)

end A111020

/-! ## A111020.P4738933367963652876

`eq[A010219(n), A039965(n+1)]`
-/

namespace A111020.P4738933367963652876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P4738933367963652876

namespace A111020

/-- `eq[A010219(n), A039965(n+1)]` -/
def P4738933367963652876.Spec : Prop :=
  ∀ n, (P4738933367963652876.a n : ℤ) = A111020 (n + 1)

end A111020

/-! ## A111020.P8137121942878184156

`eq[A039965(n+1), A040263(n)]`
-/

namespace A111020.P8137121942878184156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111020.P8137121942878184156

namespace A111020

/-- `eq[A039965(n+1), A040263(n)]` -/
def P8137121942878184156.Spec : Prop :=
  ∀ n, (P8137121942878184156.a n : ℤ) = A111020 (n + 1)

end A111020

/-!
# A111021: Integers k such that 7*10^k + 31 is a prime number.

The programs for A111021, there is no canonical definition to state claims against.
-/

/-! ## A111021.P1978070301085331829

`A000203(A186378(n))%A180362(n+1)`
-/

namespace A111021.P1978070301085331829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A186378 n).toNat) (A180362 (n + 1))

end

end A111021.P1978070301085331829

/-!
# A111023: Integers n such that 9*10^n + 11 is a prime number.

The programs for A111023, there is no canonical definition to state claims against.
-/

/-! ## A111023.P14310118150620506963

`A321304(A321334(n+2))+A000041(n)`
-/

namespace A111023.P14310118150620506963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (A321334 (n + 2)).toNat + A000041 n

end

end A111023.P14310118150620506963

/-!
# A111024: Triangle read by rows: T(n,s), 0<=s

The programs for A111024, there is no canonical definition to state claims against.
-/

/-! ## A111024.P12247782649202241190

`A097331(A214015(n)%A288386(n))`
-/

namespace A111024.P12247782649202241190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (Int.tmod (A214015 n) (A288386 n)).toNat

end

end A111024.P12247782649202241190

/-! ## A111024.P11130650492462887644

`A010054(A214248(n)%A085383(n+1))`
-/

namespace A111024.P11130650492462887644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.tmod (A214248 n) (A085383 (n + 1))).toNat

end

end A111024.P11130650492462887644

/-! ## A111024.P8722841560611449893

`A010054(A214257(n)%A085383(n+1))`
-/

namespace A111024.P8722841560611449893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.tmod (A214257 n) (A085383 (n + 1))).toNat

end

end A111024.P8722841560611449893

/-! ## A111024.P10489332479551549062

`A115361(A214015(n)^A091492(n))`
-/

namespace A111024.P10489332479551549062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 (SequenceMachineLib.roundAway ((A214015 n : ℚ) ^ (A091492 n : ℤ))).toNat

end

end A111024.P10489332479551549062

/-! ## A111024.P2615195343383596055

`A115361(and(A131689(n), A267401(n+1)))`
-/

namespace A111024.P2615195343383596055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 (Int.land (A131689 n) (A267401 (n + 1))).toNat

end

end A111024.P2615195343383596055

/-! ## A111024.P13899889839766460736

`A010054(or(a(n-1), A325227(n+1)))` with `a(0)=1`
-/

namespace A111024.P13899889839766460736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (Int.lor (a (n - 1)) (A325227 (n + 1))).toNat

end

end A111024.P13899889839766460736

/-! ## A111024.P912274598792179127

`A036987(C(A325227(n+1), A319696(n+2)))`
-/

namespace A111024.P912274598792179127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (Nat.choose (A325227 (n + 1)).toNat (A319696 (n + 2)).toNat)

end

end A111024.P912274598792179127

/-! ## A111024.P2537529728766930040

`A010054(A238349(n)*A293496(n+1))`
-/

namespace A111024.P2537529728766930040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A238349 n * A293496 (n + 1)).toNat

end

end A111024.P2537529728766930040

/-! ## A111024.P8505102874691032035

`A359832(A116445(n+2))`
-/

namespace A111024.P8505102874691032035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (A116445 (n + 2)).toNat

end

end A111024.P8505102874691032035

/-!
# A111025: Number of cubes between 10n and 10n+9 (inclusive).

The programs for A111025, the canonical program `A111025.P4862041035301823537` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111025 has offset 0).

The definition of A111025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111025.P4862041035301823537

`Δ[A048763(10*n)]%6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111025

/-- `Δ[A048763(10*n)]%6` -/
def P4862041035301823537.Spec : Prop :=
  ∀ n, P4862041035301823537.a n = A111025 n

theorem P4862041035301823537.correct : P4862041035301823537.Spec := by
  intro n
  simp only [A111025]

end A111025

/-! ## A111025.P16248815764992151027

`A111037(n)-Δ[ceil(sqrt(10*n))]`
-/

namespace A111025.P16248815764992151027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111037 n - (f1 (n + 1) - f1 n)

end

end A111025.P16248815764992151027

namespace A111025

/-- `A111037(n)-Δ[ceil(sqrt(10*n))]` -/
def P16248815764992151027.Spec : Prop :=
  ∀ n, P16248815764992151027.a n = A111025 n

theorem P16248815764992151027.correct : P16248815764992151027.Spec := by
  intro n
  simp only [A111025, Nat.add_sub_cancel, A111025.P16248815764992151027.f1, A111025.P16248815764992151027.a, A111025.P4862041035301823537.f1, A111025.P4862041035301823537.a, A048763, A048763.P672452928353669014.a, A111037, A111037.P2009686031977942018.a, A110916, A110916.P11752932001123406710.f1, A110916.P11752932001123406710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A111025

/-! ## A111025.P3435040127504841432

`Δ[A048766(A048763(10*n))]`
-/

namespace A111025.P3435040127504841432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048763 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111025.P3435040127504841432

namespace A111025

/-- `Δ[A048766(A048763(10*n))]` -/
def P3435040127504841432.Spec : Prop :=
  ∀ n, P3435040127504841432.a n = A111025 n

end A111025

/-! ## A111025.P5403752105842959165

`abs(A110916(n)-A111037(n))`
-/

namespace A111025.P5403752105842959165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110916 n - A111037 n|

end

end A111025.P5403752105842959165

namespace A111025

/-- `abs(A110916(n)-A111037(n))` -/
def P5403752105842959165.Spec : Prop :=
  ∀ n, P5403752105842959165.a n = A111025 n

end A111025

/-! ## A111025.P17187801845196707015

`char[A059995(A077110(n))]+C(2, (n+1)²)`
-/

namespace A111025.P17187801845196707015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A077110 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.choose 2 ((n + 1) ^ 2)

end

end A111025.P17187801845196707015

namespace A111025

/-- `char[A059995(A077110(n))]+C(2, (n+1)²)` -/
def P17187801845196707015.Spec : Prop :=
  ∀ n, (P17187801845196707015.a n : ℤ) = A111025 n

end A111025

/-! ## A111025.P5634016165465557869

`ceil(Δ[A048763(10*n)]/A156592(n+1))`
-/

namespace A111025.P5634016165465557869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A156592 (n + 1) : ℚ)⌉

end

end A111025.P5634016165465557869

namespace A111025

/-- `ceil(Δ[A048763(10*n)]/A156592(n+1))` -/
def P5634016165465557869.Spec : Prop :=
  ∀ n, P5634016165465557869.a n = A111025 n

end A111025

/-! ## A111025.P11634185437202015769

`ceil(Δ[A048763(10*n)]/A175791(n+1))`
-/

namespace A111025.P11634185437202015769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A175791 (n + 1) : ℚ)⌉

end

end A111025.P11634185437202015769

namespace A111025

/-- `ceil(Δ[A048763(10*n)]/A175791(n+1))` -/
def P11634185437202015769.Spec : Prop :=
  ∀ n, P11634185437202015769.a n = A111025 n

end A111025

/-! ## A111025.P17297286584499261629

`(a(n-1)+1)*char[A059995(A048763(n))]` with `a(0)=3`
-/

namespace A111025.P17297286584499261629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A048763 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A111025.P17297286584499261629

namespace A111025

/-- `(a(n-1)+1)*char[A059995(A048763(n))]` -/
def P17297286584499261629.Spec : Prop :=
  ∀ n, (P17297286584499261629.a n : ℤ) = A111025 n

end A111025

/-! ## A111025.P6722132276976394232

`A000038(n)+char[A059995(A000578(n))]`
-/

namespace A111025.P6722132276976394232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A000578 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P6722132276976394232

namespace A111025

/-- `A000038(n)+char[A059995(A000578(n))]` -/
def P6722132276976394232.Spec : Prop :=
  ∀ n, P6722132276976394232.a n = A111025 n

end A111025

/-! ## A111025.P12095234243082942383

`A000038(n)+char[A059995(A048762(n))]`
-/

namespace A111025.P12095234243082942383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A048762 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P12095234243082942383

namespace A111025

/-- `A000038(n)+char[A059995(A048762(n))]` -/
def P12095234243082942383.Spec : Prop :=
  ∀ n, P12095234243082942383.a n = A111025 n

end A111025

/-! ## A111025.P695389011946184001

`A000038(n)+char[A059995(A048763(n))]`
-/

namespace A111025.P695389011946184001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A048763 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P695389011946184001

namespace A111025

/-- `A000038(n)+char[A059995(A048763(n))]` -/
def P695389011946184001.Spec : Prop :=
  ∀ n, P695389011946184001.a n = A111025 n

end A111025

/-! ## A111025.P7503111012145805254

`A000038(n)+char[A059995(A077106(n))]`
-/

namespace A111025.P7503111012145805254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A077106 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P7503111012145805254

namespace A111025

/-- `A000038(n)+char[A059995(A077106(n))]` -/
def P7503111012145805254.Spec : Prop :=
  ∀ n, P7503111012145805254.a n = A111025 n

end A111025

/-! ## A111025.P5277571579692927844

`A000038(n)+char[A059995(A077107(n))]`
-/

namespace A111025.P5277571579692927844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A077107 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P5277571579692927844

namespace A111025

/-- `A000038(n)+char[A059995(A077107(n))]` -/
def P5277571579692927844.Spec : Prop :=
  ∀ n, P5277571579692927844.a n = A111025 n

end A111025

/-! ## A111025.P4238293066146646464

`A000038(n)+char[A059995(A077110(n))]`
-/

namespace A111025.P4238293066146646464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A077110 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P4238293066146646464

namespace A111025

/-- `A000038(n)+char[A059995(A077110(n))]` -/
def P4238293066146646464.Spec : Prop :=
  ∀ n, P4238293066146646464.a n = A111025 n

end A111025

/-! ## A111025.P14052611209860459180

`A000038(n)+char[A059995(A201053(n))]`
-/

namespace A111025.P14052611209860459180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A201053 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111025.P14052611209860459180

namespace A111025

/-- `A000038(n)+char[A059995(A201053(n))]` -/
def P14052611209860459180.Spec : Prop :=
  ∀ n, P14052611209860459180.a n = A111025 n

end A111025

/-! ## A111025.P14207574621670093764

`(A111037(n)-A110916(n))^A000041(n)`
-/

namespace A111025.P14207574621670093764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111037 n - A110916 n : ℚ) ^ (A000041 n : ℤ)

end

end A111025.P14207574621670093764

namespace A111025

/-- `(A111037(n)-A110916(n))^A000041(n)` -/
def P14207574621670093764.Spec : Prop :=
  ∀ n, P14207574621670093764.a n = (A111025 n : ℚ)

end A111025

/-!
# A111026: Perfect powers (A001597) of the form 3p + q + 3, p & q are primes.

The programs for A111026, there is no canonical definition to state claims against.
-/

/-! ## A111026.P13665081777607262547

`A132774(A100058(n)+9)+A053810(n+3)`
-/

namespace A111026.P13665081777607262547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132774 (A100058 n + 9).toNat + A053810 (n + 3)

end

end A111026.P13665081777607262547

/-! ## A111026.P5819835948617690915

`filter[A246067(n+3), A357298(#)]`
-/

namespace A111026.P5819835948617690915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357298 (f1 j).toNat = 1) n)

end

end A111026.P5819835948617690915

/-!
# A111029: Magic products of 3 X 3 multiplicative magic squares.

The programs for A111029, there is no canonical definition to state claims against.
-/

/-! ## A111029.P13963452710071887798

`A325265(n+1)^3`
-/

namespace A111029.P13963452710071887798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325265 (n + 1) ^ 3

end

end A111029.P13963452710071887798

/-! ## A111029.P17694520728656968154

`lt[10, A048785(n)]^3`
-/

namespace A111029.P17694520728656968154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A111029.P17694520728656968154

/-! ## A111029.P10433536744601852149

`lt[4, A223135(n²)]^3`
-/

namespace A111029.P10433536744601852149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A111029.P10433536744601852149

/-! ## A111029.P16844766461434556992

`lt[20, A226602(n²)]^3`
-/

namespace A111029.P16844766461434556992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A111029.P16844766461434556992

/-! ## A111029.P14679608459598615584

`(lt[2, A365171(n+1)]+1)^3`
-/

namespace A111029.P14679608459598615584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 3

end

end A111029.P14679608459598615584

/-!
# A111032: Non-Fibonacci Markoff numbers.

The programs for A111032, there is no canonical definition to state claims against.
-/

/-! ## A111032.P7080234947814037252

`A002559(lt[1, A305313(n+1)]+1)`
-/

namespace A111032.P7080234947814037252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111032.P7080234947814037252

/-! ## A111032.P11873554577579923498

`A002559(lt[A305314(n+1), A305310(n+1)]+1)`
-/

namespace A111032.P11873554577579923498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A111032.P11873554577579923498

/-! ## A111032.P861584684507924480

`filter[A002559(n+3), A188470(#)]`
-/

namespace A111032.P861584684507924480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188470 (f1 j).toNat = 1) n)

end

end A111032.P861584684507924480

/-!
# A111033: Sum of squares of first n digits of Pi.

The programs for A111033, there is no canonical definition to state claims against.
-/

/-! ## A111033.P3040470836289043859

`∑[A000796(n)²]`
-/

namespace A111033.P3040470836289043859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P3040470836289043859

/-! ## A111033.P8222159372659401942

`∑[A072448(n+1)]`
-/

namespace A111033.P8222159372659401942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P8222159372659401942

/-! ## A111033.P28348516008177957

`∑[Δ[A059582(n)]²]`
-/

namespace A111033.P28348516008177957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P28348516008177957

/-! ## A111033.P15274696677797745975

`∑[(9-A030644(n))²]`
-/

namespace A111033.P15274696677797745975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P15274696677797745975

/-! ## A111033.P2571400129728938117

`∑[A001355(Δ[n²])²]`
-/

namespace A111033.P2571400129728938117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P2571400129728938117

/-! ## A111033.P9246125912402885634

`∑[A110766(Δ[n²])²]`
-/

namespace A111033.P9246125912402885634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P9246125912402885634

/-! ## A111033.P4308902751580559043

`∑[(1-A123152(n+1))²]`
-/

namespace A111033.P4308902751580559043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A123152 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P4308902751580559043

/-! ## A111033.P3436914272947946335

`∑[A076790(2*n+1)²]`
-/

namespace A111033.P3436914272947946335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P3436914272947946335

/-! ## A111033.P3828331460946061702

`∑[dr(A001355(2*n+1))²]`
-/

namespace A111033.P3828331460946061702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (2 * n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P3828331460946061702

/-! ## A111033.P11217097236865838019

`∑[A048766(A261197(n+1))²]`
-/

namespace A111033.P11217097236865838019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P11217097236865838019

/-! ## A111033.P9544476147761482238

`∑[(A187747(n)+A001113(n))²]`
-/

namespace A111033.P9544476147761482238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187747 n + A001113 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P9544476147761482238

/-! ## A111033.P7827819347851579441

`∑[(A001113(n)-A073212(n))²]`
-/

namespace A111033.P7827819347851579441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001113 (n + 1) - A073212 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P7827819347851579441

/-! ## A111033.P3297029232397999481

`∑[Δ[A059582(n)]*A000796(n)]`
-/

namespace A111033.P3297029232397999481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P3297029232397999481

/-! ## A111033.P10526309751742023370

`∑[A000796(n)^gcd(2, A212766(n))]`
-/

namespace A111033.P10526309751742023370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) ^ Int.gcd 2 (A212766 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P10526309751742023370

/-! ## A111033.P14471768621151761635

`∑[(A054249(n+1)+A033999(n))²]`
-/

namespace A111033.P14471768621151761635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054249 (n + 1) + A033999 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P14471768621151761635

/-! ## A111033.P8706740513902879562

`∑[A000796(n)*A001355(2*n+1)]`
-/

namespace A111033.P8706740513902879562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P8706740513902879562

/-! ## A111033.P12929905363006950129

`∑[A097902(∑[n+2]-1)²]`
-/

namespace A111033.P12929905363006950129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097902 (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111033.P12929905363006950129

/-! ## A111033.P16612524340183699968

`∑{digits}[A011545(n), #²]`
-/

namespace A111033.P16612524340183699968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A111033.P16612524340183699968

/-! ## A111033.P14058383219546003014

`∑{digits}[A092845(n), #²]`
-/

namespace A111033.P14058383219546003014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A111033.P14058383219546003014

/-!
# A111034: Sum of squares of digits of e.

The programs for A111034, there is no canonical definition to state claims against.
-/

/-! ## A111034.P7121427768343465099

`∑[A001113(n)²]`
-/

namespace A111034.P7121427768343465099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111034.P7121427768343465099

/-! ## A111034.P2765739832723575689

`∑[A248558(n+1)]`
-/

namespace A111034.P2765739832723575689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111034.P2765739832723575689

/-! ## A111034.P1444379413193896543

`∑[A001355(2*(n+1))²]`
-/

namespace A111034.P1444379413193896543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111034.P1444379413193896543

/-! ## A111034.P9014553911842496130

`∑[A104691(2*n+1)²]`
-/

namespace A111034.P9014553911842496130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111034.P9014553911842496130

/-! ## A111034.P2008081951099942964

`∑[A110779(2*n+1)²]`
-/

namespace A111034.P2008081951099942964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111034.P2008081951099942964

/-!
# A111036: Numbers n such that p(6n) is prime, where p(n) is the number of partitions of n.

The programs for A111036, there is no canonical definition to state claims against.
-/

/-! ## A111036.P11492671419799133299

`record[A273943(A111389(n+1))]`
-/

namespace A111036.P11492671419799133299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A111389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111036.P11492671419799133299

/-! ## A111036.P17858383087292834214

`record[A318518(A111389(n+2))]`
-/

namespace A111036.P17858383087292834214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A111389 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111036.P17858383087292834214

/-! ## A111036.P3328361686447352648

`record[A246425(A111389(n+2)-1)]`
-/

namespace A111036.P3328361686447352648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A111389 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111036.P3328361686447352648

/-! ## A111036.P17965424478020783155

`record[A325641(A111389(n+1))]%A000032(n+5)`
-/

namespace A111036.P17965424478020783155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A111389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000032 (n + 5))

end

end A111036.P17965424478020783155

/-! ## A111036.P11801988540073802143

`eq[2, A278241(6*n)]`
-/

namespace A111036.P11801988540073802143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111036.P11801988540073802143

/-!
# A111037: Number of squares plus number of cubes between 10n and 10n+9 (inclusive).

The programs for A111037, the canonical program `A111037.P2009686031977942018` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111037 has offset 0).

The definition of A111037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110916, A111025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111037.P2009686031977942018

`A110916(n)+A111025(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111037

/-- `A110916(n)+A111025(n)` -/
def P2009686031977942018.Spec : Prop :=
  ∀ n, P2009686031977942018.a n = A111037 n

theorem P2009686031977942018.correct : P2009686031977942018.Spec := by
  intro n
  simp only [A111037]

end A111037

/-! ## A111037.P14303041910709849414

`Δ[ceil(sqrt(10*n))]+Δ[A048763(10*n)]%6`
-/

namespace A111037.P14303041910709849414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 * n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (f2 (n + 1) - f2 n) 6

end

end A111037.P14303041910709849414

namespace A111037

/-- `Δ[ceil(sqrt(10*n))]+Δ[A048763(10*n)]%6` -/
def P14303041910709849414.Spec : Prop :=
  ∀ n, P14303041910709849414.a n = A111037 n

end A111037

/-! ## A111037.P4083247566947837698

`abs(A110916(n)+Δ[A048763(10*n)]%6)`
-/

namespace A111037.P4083247566947837698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110916 n + Int.tmod (f1 (n + 1) - f1 n) 6|

end

end A111037.P4083247566947837698

namespace A111037

/-- `abs(A110916(n)+Δ[A048763(10*n)]%6)` -/
def P4083247566947837698.Spec : Prop :=
  ∀ n, P4083247566947837698.a n = A111037 n

end A111037

/-! ## A111037.P11360976403198858218

`A110916(n)+Δ[A048766(A048763(10*n))]`
-/

namespace A111037.P11360976403198858218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048763 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110916 n + (f1 (n + 1) - f1 n)

end

end A111037.P11360976403198858218

namespace A111037

/-- `A110916(n)+Δ[A048766(A048763(10*n))]` -/
def P11360976403198858218.Spec : Prop :=
  ∀ n, P11360976403198858218.a n = A111037 n

end A111037

/-!
# A111039: Start with the positive integers, and at the n-th step, remove every (a(n)+1)-st term from the list of numbers remaining, for n = 1, 2, 3, ...

The programs for A111039, there is no canonical definition to state claims against.
-/

/-! ## A111039.P12173943003556270020

`A045954(n+1)-A057427(A027336(n))`
-/

namespace A111039.P12173943003556270020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - A057427 (A027336 n).toNat

end

end A111039.P12173943003556270020

/-! ## A111039.P10403299159261067335

`A045954(n+1)-A034460(A092749(n))`
-/

namespace A111039.P10403299159261067335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - A034460 (A092749 n).toNat

end

end A111039.P10403299159261067335

/-! ## A111039.P7861373553999473567

`A045954(n+1)-A006519(A201279(n))`
-/

namespace A111039.P7861373553999473567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - A006519 (A201279 n).toNat

end

end A111039.P7861373553999473567

/-! ## A111039.P10848173533546328763

`A045954(n+1)-A168181(A100861(n))`
-/

namespace A111039.P10848173533546328763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - A168181 (A100861 n).toNat

end

end A111039.P10848173533546328763

/-! ## A111039.P10204572138972293603

`A045954(n+1)-A319774(A010894(n))`
-/

namespace A111039.P10204572138972293603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045954 (n + 1) - A319774 (A010894 (n + 21)).toNat

end

end A111039.P10204572138972293603

/-!
# A111040: Numbers n such that 2*n^2 + 9 is prime.

The programs for A111040, there is no canonical definition to state claims against.
-/

/-! ## A111040.P5058141882617971428

`eq[1, A001222(2*n²+9)]`
-/

namespace A111040.P5058141882617971428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111040.P5058141882617971428

/-! ## A111040.P615549140496144622

`lt[0, A010051(2*n²+9)]`
-/

namespace A111040.P615549140496144622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n ^ 2 + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111040.P615549140496144622

/-! ## A111040.P13401286242691864749

`eq[2, A000005(2*n²+9)]`
-/

namespace A111040.P13401286242691864749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111040.P13401286242691864749

/-! ## A111040.P10176744575915570965

`lt[A001222(n*2*n+9), 2]`
-/

namespace A111040.P10176744575915570965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (2 * n) + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111040.P10176744575915570965

/-! ## A111040.P788238031774582341

`lt[A000005(n*2*n+9), 3]`
-/

namespace A111040.P788238031774582341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (2 * n) + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111040.P788238031774582341

/-! ## A111040.P15433123011324620122

`lt[2*n+5, A020639(2*n²+9)]`
-/

namespace A111040.P15433123011324620122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n ^ 2 + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111040.P15433123011324620122

/-! ## A111040.P5856791475027888002

`record[(n+1)/A001222(2*(n+1)²+9)]`
-/

namespace A111040.P5856791475027888002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (2 * (n + 1) ^ 2 + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111040.P5856791475027888002

/-! ## A111040.P5899624534789307182

`eq[2*(n²+4), A000010(2*n²+9)]`
-/

namespace A111040.P5899624534789307182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n ^ 2 + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111040.P5899624534789307182

/-! ## A111040.P4233385949127631944

`lt[A000203(2*n²+9), 2*(n²+6)]`
-/

namespace A111040.P4233385949127631944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n ^ 2 + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111040.P4233385949127631944

/-! ## A111040.P5734359118719581717

`lt[A155966(n), A006530(A155966(n)+1)]`
-/

namespace A111040.P5734359118719581717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155966 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111040.P5734359118719581717

/-!
# A111041: Numbers m such that 2*m^2 + 25 is prime.

The programs for A111041, there is no canonical definition to state claims against.
-/

/-! ## A111041.P17927384594140406779

`eq[2, A305973(A241749(n))]`
-/

namespace A111041.P17927384594140406779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A241749 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111041.P17927384594140406779

/-! ## A111041.P15795516566709928830

`eq[2, A305973(A241750(n)-2)]`
-/

namespace A111041.P15795516566709928830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A241750 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111041.P15795516566709928830

/-! ## A111041.P7001649401688140841

`eq[1, A001222(2*n²+25)]`
-/

namespace A111041.P7001649401688140841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 25)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111041.P7001649401688140841

/-! ## A111041.P11716851935885002930

`lt[A000005(2*n²+25), 3]`
-/

namespace A111041.P11716851935885002930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 25)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111041.P11716851935885002930

/-! ## A111041.P7051406129387818901

`eq[2, A000005(A005893(n)+23)]`
-/

namespace A111041.P7051406129387818901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005893 n + 23).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111041.P7051406129387818901

/-!
# A111043: Partial sums of squares of digits of golden ratio phi (A001622).

The programs for A111043, there is no canonical definition to state claims against.
-/

/-! ## A111043.P17955846316995405263

`∑[A001622(n)²]`
-/

namespace A111043.P17955846316995405263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P17955846316995405263

/-! ## A111043.P12555158954978140786

`∑[A104457(n)²]-3`
-/

namespace A111043.P12555158954978140786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A111043.P12555158954978140786

/-! ## A111043.P15457718170724290799

`∑[(9-A109866(n+1))²]`
-/

namespace A111043.P15457718170724290799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A109866 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P15457718170724290799

/-! ## A111043.P1210968565863677489

`a(n-1)+A094214(n-1)²` with `a(0)=1`
-/

namespace A111043.P1210968565863677489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A094214 (n - 1) ^ 2

end

end A111043.P1210968565863677489

/-! ## A111043.P240861861740570476

`∑[(A104457(n)/A054977(n))²]`
-/

namespace A111043.P240861861740570476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A104457 (n + 1) : ℚ) / (A054977 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P240861861740570476

/-! ## A111043.P1282150583208533730

`∑[A001622(n)*A094214(abs(1-n))]`
-/

namespace A111043.P1282150583208533730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A094214 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P1282150583208533730

/-! ## A111043.P15485110169270867207

`∑[(9-A109866(n+1))*A001622(n)]`
-/

namespace A111043.P15485110169270867207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A109866 (n + 1)) * A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P15485110169270867207

/-! ## A111043.P6063673986237646617

`∑[A001622(n)*A001622(n%(n+1))]`
-/

namespace A111043.P6063673986237646617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A001622 (n % (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P6063673986237646617

/-! ## A111043.P17965147246731103562

`∑[A001622(n)^A283990(A284017(n+2))]`
-/

namespace A111043.P17965147246731103562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001622 (n + 1) : ℚ) ^ (A283990 (A284017 (n + 2)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P17965147246731103562

/-! ## A111043.P6759682706603459957

`∑[A382130(2*n+1)²]`
-/

namespace A111043.P6759682706603459957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P6759682706603459957

/-! ## A111043.P17433979344399841480

`∑[A078424(3*(n+1))²]`
-/

namespace A111043.P17433979344399841480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P17433979344399841480

/-! ## A111043.P3432303768982596429

`∑[(A104457(n)/A165022(A035337(n)))²]`
-/

namespace A111043.P3432303768982596429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A104457 (n + 1) : ℚ) / (A165022 (A035337 n).toNat : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P3432303768982596429

/-! ## A111043.P5975713937686411704

`∑[A098369(∑[n])²]`
-/

namespace A111043.P5975713937686411704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111043.P5975713937686411704

/-! ## A111043.P5476887731080783564

`∑{digits}[A011551(n), #²]`
-/

namespace A111043.P5476887731080783564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A111043.P5476887731080783564

/-!
# A111044: Integers which can be written as a sum of at least 2 consecutive squares in at least 3 different ways.

The programs for A111044, there is no canonical definition to state claims against.
-/

/-! ## A111044.P17831459060203335012

`A234304(A102352(n+1))`
-/

namespace A111044.P17831459060203335012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234304 (A102352 (n + 1)).toNat

end

end A111044.P17831459060203335012

/-! ## A111044.P11115870954278705123

`A234304(A248182(n))+A151933(A296327(n+1))`
-/

namespace A111044.P11115870954278705123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234304 (A248182 n).toNat + A151933 (A296327 (n + 1)).toNat

end

end A111044.P11115870954278705123

/-! ## A111044.P10776930041094719

`A234304(A248182(n)%∑[A261717(n+1)])`
-/

namespace A111044.P10776930041094719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234304 (Int.tmod (A248182 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111044.P10776930041094719

/-!
# A111045: Numbers n such that P(4n) is prime, where P(m) is the number of partitions of m.

The programs for A111045, there is no canonical definition to state claims against.
-/

/-! ## A111045.P17178729340782403664

`record[A078898(A114165(n+1))]`
-/

namespace A111045.P17178729340782403664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A114165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111045.P17178729340782403664

/-! ## A111045.P9330559497015551296

`record[A025480(A114165(n+2))]`
-/

namespace A111045.P9330559497015551296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A114165 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111045.P9330559497015551296

/-! ## A111045.P3397975924383570893

`record[A097140(A114165(n+1)+A000007(n))]`
-/

namespace A111045.P3397975924383570893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A114165 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111045.P3397975924383570893

/-! ## A111045.P6439291335476828374

`record[A078898(A325641(A046063(n+1)))]`
-/

namespace A111045.P6439291335476828374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A325641 (A046063 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111045.P6439291335476828374

/-! ## A111045.P13009014262954173414

`eq[2, A085543(A008586(n))]`
-/

namespace A111045.P13009014262954173414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111045.P13009014262954173414

/-!
# A111046: Difference between squares of twin prime pairs.

The programs for A111046, the canonical program `A111046.P4495621465565882332` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111046 has offset 1).

The definition of A111046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054735, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111046.P4495621465565882332

`2*A054735(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A111046

/-- `2*A054735(n+1)` -/
def P4495621465565882332.Spec : Prop :=
  ∀ n, P4495621465565882332.a n = A111046 (n + 1)

theorem P4495621465565882332.correct : P4495621465565882332.Spec := by
  intro n
  simp only [A111046, Nat.add_sub_cancel]

end A111046

/-! ## A111046.P4642257885013583550

`4*A014574(n+1)`
-/

namespace A111046.P4642257885013583550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014574 (n + 1)

end

end A111046.P4642257885013583550

namespace A111046

/-- `4*A014574(n+1)` -/
def P4642257885013583550.Spec : Prop :=
  ∀ n, P4642257885013583550.a n = A111046 (n + 1)

theorem P4642257885013583550.correct : P4642257885013583550.Spec := by
  intro n
  simp only [A111046, Nat.add_sub_cancel, A111046.P4642257885013583550.a, A111046.P4495621465565882332.a, A014574, A014574.P4587706211531852143.a, A054735, A054735.P17392456198016609014.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111046

/-! ## A111046.P3541674584440648714

`8*A040040(n+1)`
-/

namespace A111046.P3541674584440648714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A040040 (n + 1)

end

end A111046.P3541674584440648714

namespace A111046

/-- `8*A040040(n+1)` -/
def P3541674584440648714.Spec : Prop :=
  ∀ n, P3541674584440648714.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P11482779556536416290

`A006512(n+1)²-A001359(n+1)²`
-/

namespace A111046.P11482779556536416290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2 - A001359 (n + 1) ^ 2

end

end A111046.P11482779556536416290

namespace A111046

/-- `A006512(n+1)²-A001359(n+1)²` -/
def P11482779556536416290.Spec : Prop :=
  ∀ n, P11482779556536416290.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P12668996590262678561

`A108604(n+1)-A108570(n+1)`
-/

namespace A111046.P12668996590262678561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - A108570 (n + 1)

end

end A111046.P12668996590262678561

namespace A111046

/-- `A108604(n+1)-A108570(n+1)` -/
def P12668996590262678561.Spec : Prop :=
  ∀ n, P12668996590262678561.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P1334143599486205210

`4*sqrt(A075369(n+1))`
-/

namespace A111046.P1334143599486205210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A075369 (n + 1) : ℝ)

end

end A111046.P1334143599486205210

namespace A111046

/-- `4*sqrt(A075369(n+1))` -/
def P1334143599486205210.Spec : Prop :=
  ∀ n, P1334143599486205210.a n = (A111046 (n + 1) : ℝ)

end A111046

/-! ## A111046.P9850919519166259097

`2*(A082496(n+1)+1)`
-/

namespace A111046.P9850919519166259097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A082496 (n + 1) + 1)

end

end A111046.P9850919519166259097

namespace A111046

/-- `2*(A082496(n+1)+1)` -/
def P9850919519166259097.Spec : Prop :=
  ∀ n, P9850919519166259097.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P8346836143686591158

`2*(A108605(n+1)+2)`
-/

namespace A111046.P8346836143686591158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108605 (n + 1) + 2)

end

end A111046.P8346836143686591158

namespace A111046

/-- `2*(A108605(n+1)+2)` -/
def P8346836143686591158.Spec : Prop :=
  ∀ n, P8346836143686591158.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P17002928658418106956

`4*(A001359(n+1)+1)`
-/

namespace A111046.P17002928658418106956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001359 (n + 1) + 1)

end

end A111046.P17002928658418106956

namespace A111046

/-- `4*(A001359(n+1)+1)` -/
def P17002928658418106956.Spec : Prop :=
  ∀ n, P17002928658418106956.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P4377134253209742506

`2*(A176810(n+1)-2)`
-/

namespace A111046.P4377134253209742506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A176810 (n + 1) - 2)

end

end A111046.P4377134253209742506

namespace A111046

/-- `2*(A176810(n+1)-2)` -/
def P4377134253209742506.Spec : Prop :=
  ∀ n, P4377134253209742506.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P2366609094820509644

`4*(A006512(n+1)-1)`
-/

namespace A111046.P2366609094820509644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A006512 (n + 1) - 1)

end

end A111046.P2366609094820509644

namespace A111046

/-- `4*(A006512(n+1)-1)` -/
def P2366609094820509644.Spec : Prop :=
  ∀ n, P2366609094820509644.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P13345038219963030760

`4*(A144834(n+1)+2)`
-/

namespace A111046.P13345038219963030760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A144834 (n + 1) + 2)

end

end A111046.P13345038219963030760

namespace A111046

/-- `4*(A144834(n+1)+2)` -/
def P13345038219963030760.Spec : Prop :=
  ∀ n, P13345038219963030760.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P16195457839564515185

`A135284(n+1)+A135283(n+1)`
-/

namespace A111046.P16195457839564515185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135284 (n + 1) + A135283 (n + 1)

end

end A111046.P16195457839564515185

namespace A111046

/-- `A135284(n+1)+A135283(n+1)` -/
def P16195457839564515185.Spec : Prop :=
  ∀ n, P16195457839564515185.a n = A111046 (n + 1)

theorem P16195457839564515185.correct : P16195457839564515185.Spec := by
  intro n
  simp only [A111046, Nat.add_sub_cancel, A111046.P16195457839564515185.a, A111046.P4495621465565882332.a, A054735, A054735.P17392456198016609014.a, A135283, A135283.P740554623869463875.a, A135284, A135284.P4928143440831884536.a, A001359, A001359.P8865495035699438537.a, A014574, A014574.P4587706211531852143.a, A077800, A077800.P16009445446139691322.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A096281, A096281.P9870488552655544131.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111046

/-! ## A111046.P3721433048419955529

`A176810(n+1)+A108605(n+1)`
-/

namespace A111046.P3721433048419955529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) + A108605 (n + 1)

end

end A111046.P3721433048419955529

namespace A111046

/-- `A176810(n+1)+A108605(n+1)` -/
def P3721433048419955529.Spec : Prop :=
  ∀ n, P3721433048419955529.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P16063679838372263735

`A108604(n+1)-A001359(n+1)²`
-/

namespace A111046.P16063679838372263735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - A001359 (n + 1) ^ 2

end

end A111046.P16063679838372263735

namespace A111046

/-- `A108604(n+1)-A001359(n+1)²` -/
def P16063679838372263735.Spec : Prop :=
  ∀ n, P16063679838372263735.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P3974618599626367397

`A054735(n+1)²/A014574(n+1)`
-/

namespace A111046.P3974618599626367397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) ^ 2 : ℚ) / (A014574 (n + 1) : ℚ)

end

end A111046.P3974618599626367397

namespace A111046

/-- `A054735(n+1)²/A014574(n+1)` -/
def P3974618599626367397.Spec : Prop :=
  ∀ n, P3974618599626367397.a n = (A111046 (n + 1) : ℚ)

end A111046

/-! ## A111046.P9735803903224156791

`A054735(n+1)+A082496(n+1)+1`
-/

namespace A111046.P9735803903224156791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + (A082496 (n + 1) + 1)

end

end A111046.P9735803903224156791

namespace A111046

/-- `A054735(n+1)+A082496(n+1)+1` -/
def P9735803903224156791.Spec : Prop :=
  ∀ n, P9735803903224156791.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P14004015975825251890

`A054735(n+1)+A176810(n+1)-2`
-/

namespace A111046.P14004015975825251890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + (A176810 (n + 1) - 2)

end

end A111046.P14004015975825251890

namespace A111046

/-- `A054735(n+1)+A176810(n+1)-2` -/
def P14004015975825251890.Spec : Prop :=
  ∀ n, P14004015975825251890.a n = A111046 (n + 1)

end A111046

/-! ## A111046.P9168796158849059664

`(A071142(n+1)+2)/A040040(n+1)`
-/

namespace A111046.P9168796158849059664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) + 2 : ℚ) / (A040040 (n + 1) : ℚ)

end

end A111046.P9168796158849059664

namespace A111046

/-- `(A071142(n+1)+2)/A040040(n+1)` -/
def P9168796158849059664.Spec : Prop :=
  ∀ n, P9168796158849059664.a n = (A111046 (n + 1) : ℚ)

end A111046

/-! ## A111046.P784574695699315468

`2*(A362941(n+1)-A075369(n+1))`
-/

namespace A111046.P784574695699315468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A362941 (n + 1) - A075369 (n + 1))

end

end A111046.P784574695699315468

namespace A111046

/-- `2*(A362941(n+1)-A075369(n+1))` -/
def P784574695699315468.Spec : Prop :=
  ∀ n, P784574695699315468.a n = A111046 (n + 1)

end A111046

/-!
# A111048: a(n) = least i such that prime(n)/prime(n+1) < 1 - 1/i.

The programs for A111048, there is no canonical definition to state claims against.
-/

/-! ## A111048.P15297289472238039663

`A102551(n+1)+2`
-/

namespace A111048.P15297289472238039663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 1) + 2

end

end A111048.P15297289472238039663

/-! ## A111048.P13656631137373770499

`floor(1/(ratio[A000040(n+1)]-1))+2`
-/

namespace A111048.P13656631137373770499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1)⌋ + 2

end

end A111048.P13656631137373770499

/-! ## A111048.P5379438229338241790

`A009056(A102551(n+1))`
-/

namespace A111048.P5379438229338241790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A102551 (n + 1)).toNat

end

end A111048.P5379438229338241790

/-! ## A111048.P11680319250061538632

`floor(A210497(n+1)/A001223(n+1))`
-/

namespace A111048.P11680319250061538632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210497 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A111048.P11680319250061538632

/-! ## A111048.P3809938894686041223

`ceil(A123134(n+1)/A291463(n+1))`
-/

namespace A111048.P3809938894686041223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123134 (n + 1) : ℚ) / (A291463 (n + 1) : ℚ)⌉

end

end A111048.P3809938894686041223

/-! ## A111048.P1111232496930170318

`ceil(A008864(n+2)/A001223(n+1))`
-/

namespace A111048.P1111232496930170318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (n + 2) : ℚ) / (A001223 (n + 1) : ℚ)⌉

end

end A111048.P1111232496930170318

/-! ## A111048.P16473296490308767129

`floor(A210497(n+1)/Δ[A000040(n+1)])`
-/

namespace A111048.P16473296490308767129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210497 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A111048.P16473296490308767129

/-! ## A111048.P3319338163115394998

`ceil(A008864(n+2)/Δ[A000040(n+1)])`
-/

namespace A111048.P3319338163115394998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A111048.P3319338163115394998

/-! ## A111048.P14509965657506414034

`floor(A000040(n+1)/A001223(n+1))+2`
-/

namespace A111048.P14509965657506414034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)⌋ + 2

end

end A111048.P14509965657506414034

/-! ## A111048.P16271257400230782265

`ceil((A000040(n+2)+1)/A001223(n+1))`
-/

namespace A111048.P16271257400230782265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 2) + 1 : ℚ) / (A001223 (n + 1) : ℚ)⌉

end

end A111048.P16271257400230782265

/-!
# A111049: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A111049, the canonical program `A111049.P6292796028926116323` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111049 has offset 0).

The definition of A111049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111049.P6292796028926116323

`(A110552(n+1)+A071919(n))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111049

/-- `(A110552(n+1)+A071919(n))/2` -/
def P6292796028926116323.Spec : Prop :=
  ∀ n, P6292796028926116323.a n = (A111049 n : ℚ)

end A111049

/-! ## A111049.P12240547188705190721

`(A110552(n+1)+A071919(n))*2^A008683(A020483(n))`
-/

namespace A111049.P12240547188705190721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110552 (n + 1) + A071919 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A111049.P12240547188705190721

namespace A111049

/-- `(A110552(n+1)+A071919(n))*2^A008683(A020483(n))` -/
def P12240547188705190721.Spec : Prop :=
  ∀ n, P12240547188705190721.a n = (A111049 n : ℚ)

end A111049

/-! ## A111049.P17039123350671593229

`A014682(A110552(n+1)+A071919(n))`
-/

namespace A111049.P17039123350671593229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A110552 (n + 1) + A071919 n).toNat

end

end A111049.P17039123350671593229

namespace A111049

/-- `A014682(A110552(n+1)+A071919(n))` -/
def P17039123350671593229.Spec : Prop :=
  ∀ n, P17039123350671593229.a n = A111049 n

end A111049

/-! ## A111049.P4601762765977672926

`A273943(A110552(n+1)+A071919(n))`
-/

namespace A111049.P4601762765977672926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A110552 (n + 1) + A071919 n).toNat

end

end A111049.P4601762765977672926

namespace A111049

/-- `A273943(A110552(n+1)+A071919(n))` -/
def P4601762765977672926.Spec : Prop :=
  ∀ n, P4601762765977672926.a n = A111049 n

end A111049

/-! ## A111049.P17170222682076568541

`A014682(A071919(n)+(A308737(n)+A007318(n))/2)`
-/

namespace A111049.P17170222682076568541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A071919 n : ℚ) + (A308737 n + A007318 n : ℚ) / 2)).toNat

end

end A111049.P17170222682076568541

namespace A111049

/-- `A014682(A071919(n)+(A308737(n)+A007318(n))/2)` -/
def P17170222682076568541.Spec : Prop :=
  ∀ n, P17170222682076568541.a n = A111049 n

end A111049

/-! ## A111049.P2756482840368938703

`A273943(A071919(n)+(A308737(n)+A007318(n))/2)`
-/

namespace A111049.P2756482840368938703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway ((A071919 n : ℚ) + (A308737 n + A007318 n : ℚ) / 2)).toNat

end

end A111049.P2756482840368938703

namespace A111049

/-- `A273943(A071919(n)+(A308737(n)+A007318(n))/2)` -/
def P2756482840368938703.Spec : Prop :=
  ∀ n, P2756482840368938703.a n = A111049 n

end A111049

/-!
# A111051: Numbers m such that 3*m^2 + 1 is prime.

The programs for A111051, there is no canonical definition to state claims against.
-/

/-! ## A111051.P13425469979675960959

`sqrt((A002648(n+1)-1)/3)`
-/

namespace A111051.P13425469979675960959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A002648 (n + 1) - 1 : ℚ) / 3 : ℝ)

end

end A111051.P13425469979675960959

/-! ## A111051.P3092472355535866967

`floor(sqrt(A002648(n+1)/3))`
-/

namespace A111051.P3092472355535866967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A002648 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A111051.P3092472355535866967

/-! ## A111051.P2404226832117257140

`A000027(round(sqrt(A002648(n+1)/3)))`
-/

namespace A111051.P2404226832117257140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt ((A002648 (n + 1) : ℚ) / 3 : ℝ))).toNat

end

end A111051.P2404226832117257140

/-! ## A111051.P15961130781712144908

`round(sqrt(A002648(n+1)/3))%A125169(n)`
-/

namespace A111051.P15961130781712144908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A002648 (n + 1) : ℚ) / 3 : ℝ))) (A125169 n)

end

end A111051.P15961130781712144908

/-! ## A111051.P12292106127389522888

`A038608(round(sqrt(A002648(n+1)/3)))`
-/

namespace A111051.P12292106127389522888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (SequenceMachineLib.roundAway (Real.sqrt ((A002648 (n + 1) : ℚ) / 3 : ℝ))).toNat

end

end A111051.P12292106127389522888

/-! ## A111051.P12059050699794519727

`A237420(round(sqrt(A002648(n+1)/3)))`
-/

namespace A111051.P12059050699794519727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (SequenceMachineLib.roundAway (Real.sqrt ((A002648 (n + 1) : ℚ) / 3 : ℝ))).toNat

end

end A111051.P12059050699794519727

/-! ## A111051.P3325230470802554392

`eq[2, ∑{e}[A005897(n), #]]`
-/

namespace A111051.P3325230470802554392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111051.P3325230470802554392

/-! ## A111051.P6654758645508752779

`lt[A245838(A028310(n)²), 2]`
-/

namespace A111051.P6654758645508752779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A028310 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111051.P6654758645508752779

/-! ## A111051.P471156901291718811

`lt[A245838(A233583(n+1)²), n]`
-/

namespace A111051.P471156901291718811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A233583 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111051.P471156901291718811

/-! ## A111051.P5683396122690809536

`lt[A245838(A065190(n+1)²), 2]`
-/

namespace A111051.P5683396122690809536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A065190 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111051.P5683396122690809536

/-!
# A111052: Numbers m such that 3*m^2 + 4 is prime.

The programs for A111052, there is no canonical definition to state claims against.
-/

/-! ## A111052.P2371569242791444639

`sqrt((A201477(n+1)-4)/3)`
-/

namespace A111052.P2371569242791444639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A201477 (n + 1) - 4 : ℚ) / 3 : ℝ)

end

end A111052.P2371569242791444639

/-! ## A111052.P18229995203848793398

`floor(sqrt(A201477(n+1)/3))`
-/

namespace A111052.P18229995203848793398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A201477 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A111052.P18229995203848793398

/-! ## A111052.P11035181405551307114

`lt[A245838(n²+1), 2]`
-/

namespace A111052.P11035181405551307114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n ^ 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111052.P11035181405551307114

/-! ## A111052.P11442397807796435292

`sqrt(∩[A034936(n+1), n²])`
-/

namespace A111052.P11442397807796435292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A111052.P11442397807796435292

/-! ## A111052.P17531694837203795204

`eq[1, A001222(3*A363268(2*(n+1))+1)]`
-/

namespace A111052.P17531694837203795204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * A363268 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111052.P17531694837203795204

/-!
# A111053: Number of permutations which avoid the patterns 1324 and (2143 with Bruhat restriction {2<->3}). Also the number of permutations whose graphs are acyclic.

The programs for A111053, there is no canonical definition to state claims against.
-/

/-! ## A111053.P13462335388801126190

`A274112(4*n+1)+A274112(4*n+2)-A274112(4*n+3)`
-/

namespace A111053.P13462335388801126190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (4 * n + 1) + (A274112 (4 * n + 2) - A274112 (4 * n + 3))

end

end A111053.P13462335388801126190

/-! ## A111053.P5662774125626995972

`A008615(5*A150563(n))`
-/

namespace A111053.P5662774125626995972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A150563 n).toNat

end

end A111053.P5662774125626995972

/-! ## A111053.P6622068370693465581

`A103221(5*A150563(n))`
-/

namespace A111053.P6622068370693465581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (5 * A150563 n).toNat

end

end A111053.P6622068370693465581

/-!
# A111054: Sum of squares of digits of decimal expansion of square root of 2.

The programs for A111054, there is no canonical definition to state claims against.
-/

/-! ## A111054.P14148002239499519957

`∑[A002193(n)²]`
-/

namespace A111054.P14148002239499519957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111054.P14148002239499519957

/-! ## A111054.P16671323410779810893

`∑{digits}[A011547(n), #²]`
-/

namespace A111054.P16671323410779810893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011547 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A111054.P16671323410779810893

/-! ## A111054.P14603082937861524898

`∑[A120731(n+1)²]`
-/

namespace A111054.P14603082937861524898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111054.P14603082937861524898

/-! ## A111054.P15861720152709706137

`∑[A014176(n)²]-3`
-/

namespace A111054.P15861720152709706137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A111054.P15861720152709706137

/-! ## A111054.P15617221139185789145

`∑[A098364(∑[n+1])²]`
-/

namespace A111054.P15617221139185789145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111054.P15617221139185789145

/-!
# A111055: The set of primes of the form 4n+1 that is minimal in the sense of A071062.

The programs for A111055, there is no canonical definition to state claims against.
-/

/-! ## A111055.P14868695230203293280

`A002144(lt[A287737(n), A057708(2*n+1)])`
-/

namespace A111055.P14868695230203293280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057708 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A111055.P14868695230203293280

/-! ## A111055.P12431436512844978152

`A002313(lt[A351592(n+4), A105827(n+1)]+2)`
-/

namespace A111055.P12431436512844978152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351592 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A111055.P12431436512844978152

/-! ## A111055.P9141688820027153777

`p?[xor(3, A276941(n+2))]`
-/

namespace A111055.P9141688820027153777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A276941 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111055.P9141688820027153777

/-! ## A111055.P10887638063385356758

`p?[p?[4*n+1]-A079204(n+1)]`
-/

namespace A111055.P10887638063385356758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A079204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111055.P10887638063385356758

/-! ## A111055.P10320612861280727353

`record[A005078(A114255(n+1))]`
-/

namespace A111055.P10320612861280727353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (A114255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111055.P10320612861280727353

/-!
# A111056: Minimal set of prime-strings in base 10 for primes of the form 4n+3 in the sense of A071062.

The programs for A111056, there is no canonical definition to state claims against.
-/

/-! ## A111056.P2464919229371134664

`p?[or(3, 2*(n!+n))]`
-/

namespace A111056.P2464919229371134664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * (Nat.factorial n + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A111056.P2464919229371134664

/-! ## A111056.P13505191223426946668

`A237055(A034749(n+1))`
-/

namespace A111056.P13505191223426946668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (A034749 (n + 1)).toNat

end

end A111056.P13505191223426946668

/-!
# A111057: Minimal set in the sense of A071062 of prime-strings in base 12 for primes of the form 4n+1.

The programs for A111057, there is no canonical definition to state claims against.
-/

/-! ## A111057.P8853654599511473137

`p?[A175832(n)+4*(n+1)]`
-/

namespace A111057.P8853654599511473137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 n + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111057.P8853654599511473137

/-! ## A111057.P9527432881445645722

`p?[4-A345420(n+2)]`
-/

namespace A111057.P9527432881445645722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A345420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111057.P9527432881445645722

/-!
# A111058: Numbers k such that the average of the first k Lucas numbers is an integer.

The programs for A111058, there is no canonical definition to state claims against.
-/

/-! ## A111058.P4450261949317614116

`record[gcd(n+1, A027961(n+1))]`
-/

namespace A111058.P4450261949317614116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A027961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111058.P4450261949317614116

/-! ## A111058.P7278005842176502030

`record[gcd(n+3, A094584(n+1))]`
-/

namespace A111058.P7278005842176502030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A094584 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111058.P7278005842176502030

/-! ## A111058.P910493435993567017

`record[gcd(n-2, A000032(n)-3)]`
-/

namespace A111058.P910493435993567017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (A000032 n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111058.P910493435993567017

/-! ## A111058.P14784849839725883323

`record[gcd(A004277(n), A294152(n+1))]`
-/

namespace A111058.P14784849839725883323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 n) (A294152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111058.P14784849839725883323

/-! ## A111058.P17981007827770983225

`record[gcd(A023548(n+1), A065475(n+1))]`
-/

namespace A111058.P17981007827770983225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023548 (n + 1)) (A065475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111058.P17981007827770983225

/-!
# A111059: a(n) = Product_{k=1..n} A005117(k), the product of the first n squarefree positive integers.

The programs for A111059, there is no canonical definition to state claims against.
-/

/-! ## A111059.P7012050724757571883

`∏[record[∏{p}[n, #]]]`
-/

namespace A111059.P7012050724757571883
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P7012050724757571883

/-! ## A111059.P2412641548147475496

`∏[eq[n, ∏{p}[n, #]]]`
-/

namespace A111059.P2412641548147475496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P2412641548147475496

/-! ## A111059.P11746050664652104020

`∏[A365656(∑[n])]`
-/

namespace A111059.P11746050664652104020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365656 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P11746050664652104020

/-! ## A111059.P13242782198226149354

`∏[A005117(n+1)]`
-/

namespace A111059.P13242782198226149354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P13242782198226149354

/-! ## A111059.P16495198879740581200

`∏[A348506(n+1)]`
-/

namespace A111059.P16495198879740581200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P16495198879740581200

/-! ## A111059.P9622729927721146576

`∏[A367801(n+1)]`
-/

namespace A111059.P9622729927721146576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P9622729927721146576

/-! ## A111059.P8088629324059702293

`∏[A076144(n+2)]`
-/

namespace A111059.P8088629324059702293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P8088629324059702293

/-! ## A111059.P210537209311544632

`∏[record[A329376(n+1)]]`
-/

namespace A111059.P210537209311544632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P210537209311544632

/-! ## A111059.P12074858749130147391

`∏[record[A336643(n+1)]]`
-/

namespace A111059.P12074858749130147391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P12074858749130147391

/-! ## A111059.P9596674466611672556

`∏[A088610(2*n+1)]`
-/

namespace A111059.P9596674466611672556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111059.P9596674466611672556

/-!
# A111060: a(n) = sum of primes dividing the n-th squarefree positive integer.

The programs for A111060, the canonical program `A111060.P4105044473920745879` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111060 has offset 1).

The definition of A111060 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111060.P4105044473920745879

`A001414(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A111060

/-- `A001414(A005117(n+1))` -/
def P4105044473920745879.Spec : Prop :=
  ∀ n, P4105044473920745879.a n = A111060 (n + 1)

theorem P4105044473920745879.correct : P4105044473920745879.Spec := by
  intro n
  simp only [A111060, Nat.add_sub_cancel]

end A111060

/-! ## A111060.P16967067007071090634

`∑{p}[record[A007947(n+1)], #]`
-/

namespace A111060.P16967067007071090634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111060.P16967067007071090634

namespace A111060

/-- `∑{p}[record[A007947(n+1)], #]` -/
def P16967067007071090634.Spec : Prop :=
  ∀ n, (P16967067007071090634.a n : ℤ) = A111060 (n + 1)

end A111060

/-! ## A111060.P4514823989681633759

`A001414(comp[A105570(n)])`
-/

namespace A111060.P4514823989681633759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111060.P4514823989681633759

namespace A111060

/-- `A001414(comp[A105570(n)])` -/
def P4514823989681633759.Spec : Prop :=
  ∀ n, P4514823989681633759.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P7463615750551665896

`A008472(comp[A105570(n)])`
-/

namespace A111060.P7463615750551665896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111060.P7463615750551665896

namespace A111060

/-- `A008472(comp[A105570(n)])` -/
def P7463615750551665896.Spec : Prop :=
  ∀ n, P7463615750551665896.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P5221050902522606511

`A001414(sqrt(A062503(n+1)))`
-/

namespace A111060.P5221050902522606511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A111060.P5221050902522606511

namespace A111060

/-- `A001414(sqrt(A062503(n+1)))` -/
def P5221050902522606511.Spec : Prop :=
  ∀ n, P5221050902522606511.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P14961503433979114849

`A001414(record[A007913(n+1)])`
-/

namespace A111060.P14961503433979114849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111060.P14961503433979114849

namespace A111060

/-- `A001414(record[A007913(n+1)])` -/
def P14961503433979114849.Spec : Prop :=
  ∀ n, P14961503433979114849.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P14132128919043687640

`A001414(record[A007947(n+1)])`
-/

namespace A111060.P14132128919043687640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111060.P14132128919043687640

namespace A111060

/-- `A001414(record[A007947(n+1)])` -/
def P14132128919043687640.Spec : Prop :=
  ∀ n, P14132128919043687640.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P11599567496948800296

`A008472(record[A007947(n+1)])`
-/

namespace A111060.P11599567496948800296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111060.P11599567496948800296

namespace A111060

/-- `A008472(record[A007947(n+1)])` -/
def P11599567496948800296.Spec : Prop :=
  ∀ n, P11599567496948800296.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P4581899124478121997

`A008475(record[A007947(n+1)])`
-/

namespace A111060.P4581899124478121997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111060.P4581899124478121997

namespace A111060

/-- `A008475(record[A007947(n+1)])` -/
def P4581899124478121997.Spec : Prop :=
  ∀ n, P4581899124478121997.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P10202490335807784823

`A001414(record[A055231(n+1)])`
-/

namespace A111060.P10202490335807784823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111060.P10202490335807784823

namespace A111060

/-- `A001414(record[A055231(n+1)])` -/
def P10202490335807784823.Spec : Prop :=
  ∀ n, P10202490335807784823.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P61532251632665023

`A008472(eq[1, A005361(n+1)]+1)`
-/

namespace A111060.P61532251632665023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A111060.P61532251632665023

namespace A111060

/-- `A008472(eq[1, A005361(n+1)]+1)` -/
def P61532251632665023.Spec : Prop :=
  ∀ n, P61532251632665023.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P17818451513450964234

`A008472(A005117(2*n+1-n))`
-/

namespace A111060.P17818451513450964234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A005117 (2 * n + 1 - n)).toNat

end

end A111060.P17818451513450964234

namespace A111060

/-- `A008472(A005117(2*n+1-n))` -/
def P17818451513450964234.Spec : Prop :=
  ∀ n, P17818451513450964234.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P10283143608112133504

`A008472(lt[n, A007947(n+1)]+1)`
-/

namespace A111060.P10283143608112133504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111060.P10283143608112133504

namespace A111060

/-- `A008472(lt[n, A007947(n+1)]+1)` -/
def P10283143608112133504.Spec : Prop :=
  ∀ n, P10283143608112133504.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P5568329509148358634

`A001414(eq[A001414(n+1), A008472(n+1)]+1)`
-/

namespace A111060.P5568329509148358634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A111060.P5568329509148358634

namespace A111060

/-- `A001414(eq[A001414(n+1), A008472(n+1)]+1)` -/
def P5568329509148358634.Spec : Prop :=
  ∀ n, P5568329509148358634.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P13604634074695804796

`∑{p}[record[∏{p}[n, #]], #]`
-/

namespace A111060.P13604634074695804796
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A111060.P13604634074695804796

namespace A111060

/-- `∑{p}[record[∏{p}[n, #]], #]` -/
def P13604634074695804796.Spec : Prop :=
  ∀ n, (P13604634074695804796.a n : ℤ) = A111060 (n + 1)

end A111060

/-! ## A111060.P8168828526417215804

`A008475(record[∏{p}[n, #]])`
-/

namespace A111060.P8168828526417215804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111060.P8168828526417215804

namespace A111060

/-- `A008475(record[∏{p}[n, #]])` -/
def P8168828526417215804.Spec : Prop :=
  ∀ n, P8168828526417215804.a n = A111060 (n + 1)

end A111060

/-! ## A111060.P8430969341681927510

`∑{p}[record[A182938(n+1)], #]`
-/

namespace A111060.P8430969341681927510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111060.P8430969341681927510

namespace A111060

/-- `∑{p}[record[A182938(n+1)], #]` -/
def P8430969341681927510.Spec : Prop :=
  ∀ n, (P8430969341681927510.a n : ℤ) = A111060 (n + 1)

end A111060

/-! ## A111060.P7635040504777399885

`∑{p}[record[A336965(n+1)], #]`
-/

namespace A111060.P7635040504777399885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111060.P7635040504777399885

namespace A111060

/-- `∑{p}[record[A336965(n+1)], #]` -/
def P7635040504777399885.Spec : Prop :=
  ∀ n, (P7635040504777399885.a n : ℤ) = A111060 (n + 1)

end A111060

/-! ## A111060.P5336932123425768191

`∑{p}[A088610(2*n+1), #]`
-/

namespace A111060.P5336932123425768191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111060.P5336932123425768191

namespace A111060

/-- `∑{p}[A088610(2*n+1), #]` -/
def P5336932123425768191.Spec : Prop :=
  ∀ n, (P5336932123425768191.a n : ℤ) = A111060 (n + 1)

end A111060

/-! ## A111060.P1018610403133044880

`∑{p}[A366786(n+1), #]`
-/

namespace A111060.P1018610403133044880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111060.P1018610403133044880

namespace A111060

/-- `∑{p}[A366786(n+1), #]` -/
def P1018610403133044880.Spec : Prop :=
  ∀ n, (P1018610403133044880.a n : ℤ) = A111060 (n + 1)

end A111060

/-!
# A111061: Begin with 1,2 In binary 1, 10. To get the sequence, left pad binary number with its precedent: 1,10, 110, 10110, 11010110, 1011011010110, etc. Note the number of bits of the n-th term is the (n-1)st Fibonacci number. Now convert back to decimal 1,2,6,22,214,5846, ...

The programs for A111061, there is no canonical definition to state claims against.
-/

/-! ## A111061.P7057769928289195066

`A370762(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A111061.P7057769928289195066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A370762 (a (n - 1)).toNat + 1

end

end A111061.P7057769928289195066

/-! ## A111061.P10317991318038736885

`A059893(A005203(n+1))`
-/

namespace A111061.P10317991318038736885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A005203 (n + 1)).toNat

end

end A111061.P10317991318038736885

/-!
# A111062: Triangle T(n, k) = binomial(n, k) * A000085(n-k), 0 <= k <= n.

The programs for A111062, the canonical program `A111062.P16070414047201229067` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111062 has offset 0).

The definition of A111062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111062.P16070414047201229067

`A007318(n)*A000085(A025581(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111062

/-- `A007318(n)*A000085(A025581(n))` -/
def P16070414047201229067.Spec : Prop :=
  ∀ n, P16070414047201229067.a n = A111062 n

theorem P16070414047201229067.correct : P16070414047201229067.Spec := by
  intro n
  simp only [A111062]

end A111062

/-! ## A111062.P8414951383638956856

`abs(A000085(A025581(n))*A108086(n))`
-/

namespace A111062.P8414951383638956856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000085 (A025581 n).toNat * A108086 n|

end

end A111062.P8414951383638956856

namespace A111062

/-- `abs(A000085(A025581(n))*A108086(n))` -/
def P8414951383638956856.Spec : Prop :=
  ∀ n, P8414951383638956856.a n = A111062 n

end A111062

/-! ## A111062.P1071357874246682007

`abs(A000085(A025581(n))*A130595(n))`
-/

namespace A111062.P1071357874246682007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000085 (A025581 n).toNat * A130595 n|

end

end A111062.P1071357874246682007

namespace A111062

/-- `abs(A000085(A025581(n))*A130595(n))` -/
def P1071357874246682007.Spec : Prop :=
  ∀ n, P1071357874246682007.a n = A111062 n

end A111062

/-! ## A111062.P1386153609669583396

`sqrt(A008459(n))*A000085(A025581(n))`
-/

namespace A111062.P1386153609669583396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000085 (A025581 n).toNat : ℝ)

end

end A111062.P1386153609669583396

namespace A111062

/-- `sqrt(A008459(n))*A000085(A025581(n))` -/
def P1386153609669583396.Spec : Prop :=
  ∀ n, P1386153609669583396.a n = (A111062 n : ℝ)

end A111062

/-! ## A111062.P7223593732082585502

`Δ[A102363(n)]*A000085(A025581(n))`
-/

namespace A111062.P7223593732082585502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000085 (A025581 n).toNat

end

end A111062.P7223593732082585502

namespace A111062

/-- `Δ[A102363(n)]*A000085(A025581(n))` -/
def P7223593732082585502.Spec : Prop :=
  ∀ n, P7223593732082585502.a n = A111062 n

end A111062

/-! ## A111062.P17018049190245091533

`(A014473(n)+1)*A000085(A025581(n))`
-/

namespace A111062.P17018049190245091533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000085 (A025581 n).toNat

end

end A111062.P17018049190245091533

namespace A111062

/-- `(A014473(n)+1)*A000085(A025581(n))` -/
def P17018049190245091533.Spec : Prop :=
  ∀ n, P17018049190245091533.a n = A111062 n

theorem P17018049190245091533.correct : P17018049190245091533.Spec := by
  intro n
  simp only [A111062, Nat.add_sub_cancel, A111062.P17018049190245091533.a, A111062.P16070414047201229067.a, A000085, A000085.P6317799103021482191.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A111062

/-! ## A111062.P14124048395310120753

`ceil(A134060(n)/3)*A000085(A025581(n))`
-/

namespace A111062.P14124048395310120753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A000085 (A025581 n).toNat

end

end A111062.P14124048395310120753

namespace A111062

/-- `ceil(A134060(n)/3)*A000085(A025581(n))` -/
def P14124048395310120753.Spec : Prop :=
  ∀ n, P14124048395310120753.a n = A111062 n

end A111062

/-! ## A111062.P18425124273700264627

`A000085(A025581(n))/A176346(n)*A176348(n)`
-/

namespace A111062.P18425124273700264627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (A025581 n).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A111062.P18425124273700264627

namespace A111062

/-- `A000085(A025581(n))/A176346(n)*A176348(n)` -/
def P18425124273700264627.Spec : Prop :=
  ∀ n, P18425124273700264627.a n = (A111062 n : ℚ)

end A111062

/-! ## A111062.P4283756165654072021

`(A097805(n+1)+A097805(n))*A000085(A025581(n))`
-/

namespace A111062.P4283756165654072021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A000085 (A025581 n).toNat

end

end A111062.P4283756165654072021

namespace A111062

/-- `(A097805(n+1)+A097805(n))*A000085(A025581(n))` -/
def P4283756165654072021.Spec : Prop :=
  ∀ n, P4283756165654072021.a n = A111062 n

end A111062

/-! ## A111062.P7945581699975906858

`(A124927(n)+A073423(n)^n)/2*A000085(A025581(n))`
-/

namespace A111062.P7945581699975906858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 n + A073423 n ^ n : ℚ) / 2 * (A000085 (A025581 n).toNat : ℚ)

end

end A111062.P7945581699975906858

namespace A111062

/-- `(A124927(n)+A073423(n)^n)/2*A000085(A025581(n))` -/
def P7945581699975906858.Spec : Prop :=
  ∀ n, P7945581699975906858.a n = (A111062 n : ℚ)

end A111062

/-!
# A111063: a(0) = 1; a(n) = (n-1)*a(n-1) + n.

The programs for A111063, the canonical program `A111063.P13728041897525577379` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111063 has offset 0).

The definition of A111063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-1)+n` (program `A111063.P13728041897525577379`, by `A111063.P13728041897525577379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111063.P13728041897525577379

`(n-1)*a(n-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111063

/-- `(n-1)*a(n-1)+n` -/
def P13728041897525577379.Spec : Prop :=
  ∀ n, P13728041897525577379.a n = A111063 n

theorem P13728041897525577379.correct : P13728041897525577379.Spec := by
  intro n
  simp only [A111063]

end A111063

/-! ## A111063.P4899388120607265236

`n-(1-n)*a(n-1)` with `a(0)=1`
-/

namespace A111063.P4899388120607265236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (1 - (n : ℤ)) * a (n - 1)

end

end A111063.P4899388120607265236

namespace A111063

/-- `n-(1-n)*a(n-1)` -/
def P4899388120607265236.Spec : Prop :=
  ∀ n, P4899388120607265236.a n = A111063 n

theorem P4899388120607265236.correct : P4899388120607265236.Spec := by
  intro n
  simp only [A111063, Nat.add_sub_cancel, A111063.P4899388120607265236.a, A111063.P13728041897525577379.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A111063

/-! ## A111063.P11724326781472483578

`a(n-1)/(n/(n-1)-1)+n` with `a(0)=1, a(1)=1`
-/

namespace A111063.P11724326781472483578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / ((n : ℚ) / ((n : ℤ) - 1 : ℚ) - 1) + (n : ℚ)

end

end A111063.P11724326781472483578

namespace A111063

/-- `a(n-1)/(n/(n-1)-1)+n` -/
def P11724326781472483578.Spec : Prop :=
  ∀ n, P11724326781472483578.a n = (A111063 n : ℚ)

end A111063

/-! ## A111063.P8263945440031567563

`n-a(n-1)/(1-n/(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A111063.P8263945440031567563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) - a (n - 1) / (1 - (n : ℚ) / ((n : ℤ) - 1 : ℚ))

end

end A111063.P8263945440031567563

namespace A111063

/-- `n-a(n-1)/(1-n/(n-1))` -/
def P8263945440031567563.Spec : Prop :=
  ∀ n, P8263945440031567563.a n = (A111063 n : ℚ)

end A111063

/-! ## A111063.P13331816370561727312

`a(n-1)+lcm(n-2, a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A111063.P13331816370561727312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (Int.lcm ((n : ℤ) - 2) (a (n - 1) : ℤ) + n)

end

end A111063.P13331816370561727312

namespace A111063

/-- `a(n-1)+lcm(n-2, a(n-1))+n` -/
def P13331816370561727312.Spec : Prop :=
  ∀ n, (P13331816370561727312.a n : ℤ) = A111063 n

end A111063

/-! ## A111063.P15142502523685949141

`or(1, A054091(n)-1)`
-/

namespace A111063.P15142502523685949141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054091 n - 1)

end

end A111063.P15142502523685949141

namespace A111063

/-- `or(1, A054091(n)-1)` -/
def P15142502523685949141.Spec : Prop :=
  ∀ n, P15142502523685949141.a n = A111063 n

end A111063

/-! ## A111063.P13970712765743880292

`A006183(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A111063.P13970712765743880292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006183 n + a (n - 1)

end

end A111063.P13970712765743880292

namespace A111063

/-- `A006183(n)+a(n-1)` -/
def P13970712765743880292.Spec : Prop :=
  ∀ n, P13970712765743880292.a n = A111063 n

end A111063

/-! ## A111063.P5915561717097815484

`a(n-1)*A033619(n)+n` with `a(0)=1`
-/

namespace A111063.P5915561717097815484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A033619 n + (n : ℤ)

end

end A111063.P5915561717097815484

namespace A111063

/-- `a(n-1)*A033619(n)+n` -/
def P5915561717097815484.Spec : Prop :=
  ∀ n, P5915561717097815484.a n = A111063 n

end A111063

/-! ## A111063.P10135889612804867417

`a(n-1)*A130734(n)+n` with `a(0)=1`
-/

namespace A111063.P10135889612804867417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A130734 n + (n : ℤ)

end

end A111063.P10135889612804867417

namespace A111063

/-- `a(n-1)*A130734(n)+n` -/
def P10135889612804867417.Spec : Prop :=
  ∀ n, P10135889612804867417.a n = A111063 n

end A111063

/-! ## A111063.P660446015188931583

`A019461(A004274(n+1))`
-/

namespace A111063.P660446015188931583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (A004274 (n + 1)).toNat

end

end A111063.P660446015188931583

namespace A111063

/-- `A019461(A004274(n+1))` -/
def P660446015188931583.Spec : Prop :=
  ∀ n, P660446015188931583.a n = A111063 n

end A111063

/-!
# A111065: Numbers that look the same when rotated by 180 degrees, using only digits 0, 6 and 9.

The programs for A111065, there is no canonical definition to state claims against.
-/

/-! ## A111065.P5974815929332947191

`∩[A111156(n+1), A169731(n+1)]`
-/

namespace A111065.P5974815929332947191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111065.P5974815929332947191

/-! ## A111065.P6729703316522247190

`∩[A001743(n+1), A169731(n+1)]`
-/

namespace A111065.P6729703316522247190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111065.P6729703316522247190

/-! ## A111065.P3846422527802822223

`∩[A169731(n+1), A001743(A004277(n))]`
-/

namespace A111065.P3846422527802822223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A004277 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111065.P3846422527802822223

/-! ## A111065.P879595038698023167

`∩[A018846(n+1), A001743(A023713(n+1)+1)]`
-/

namespace A111065.P879595038698023167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (A023713 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111065.P879595038698023167

/-! ## A111065.P15145896281234980892

`record[A004183(A111156(n+1))]`
-/

namespace A111065.P15145896281234980892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A111156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111065.P15145896281234980892

/-!
# A111066: Numbers with digits 1 and 2 and at least one of each.

The programs for A111066, there is no canonical definition to state claims against.
-/

/-! ## A111066.P3501599422814211457

`A007931(lt[1, (a(n-1)-1+n)%n])` with `a(0)=0`
-/

namespace A111066.P3501599422814211457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod (f2 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111066.P3501599422814211457

/-! ## A111066.P12837318878833371460

`A007931(lt[1, A336479(2*(n+1))])`
-/

namespace A111066.P12837318878833371460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336479 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111066.P12837318878833371460

/-! ## A111066.P9268168891021465389

`A007931(eq[1, A043545(A109613(n))])`
-/

namespace A111066.P9268168891021465389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111066.P9268168891021465389

/-! ## A111066.P11846994236941884062

`A007931(eq[A036987(n), A099894(n+1)])`
-/

namespace A111066.P11846994236941884062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111066.P11846994236941884062

/-! ## A111066.P2696842785286232806

`A007931(eq[A099894(n+1), A099894(n)])`
-/

namespace A111066.P2696842785286232806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111066.P2696842785286232806

/-! ## A111066.P10102973207366426370

`A007931(eq[A127802(n+1), A127802(n)])`
-/

namespace A111066.P10102973207366426370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111066.P10102973207366426370

/-! ## A111066.P10928221835329237555

`A007931(eq[A043545(n), A297382(n+2)])`
-/

namespace A111066.P10928221835329237555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111066.P10928221835329237555

/-! ## A111066.P2290502965717029454

`A007931(eq[A297382(n+1)², A297382(n+2)])`
-/

namespace A111066.P2290502965717029454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111066.P2290502965717029454

/-! ## A111066.P13722590666527184423

`A007931(eq[A154269(2*(n+1))², A154269(n+2)])`
-/

namespace A111066.P13722590666527184423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111066.P13722590666527184423

/-! ## A111066.P16921281190040589627

`∩[A007931(n+1), A366958(n+1)]`
-/

namespace A111066.P16921281190040589627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P16921281190040589627

/-! ## A111066.P7111760868092088352

`∩[A085184(n+1), A366958(n+1)]`
-/

namespace A111066.P7111760868092088352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P7111760868092088352

/-! ## A111066.P15936809187353857436

`∩[A277964(n+1), A366958(n+1)]`
-/

namespace A111066.P15936809187353857436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P15936809187353857436

/-! ## A111066.P11809379955655546936

`∩[A101594(n+1), A007089(n)]`
-/

namespace A111066.P11809379955655546936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P11809379955655546936

/-! ## A111066.P16172459422083760785

`∩[A007931(n+1), A101594(n+1)]`
-/

namespace A111066.P16172459422083760785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P16172459422083760785

/-! ## A111066.P13207248889374579209

`∩[A007931(n+1), A031955(n+1)]`
-/

namespace A111066.P13207248889374579209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P13207248889374579209

/-! ## A111066.P11130037677856978520

`∩[A240763(n+1), A277964(n+1)]`
-/

namespace A111066.P11130037677856978520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P11130037677856978520

/-! ## A111066.P4093514148979224041

`∩[A240763(n+1), A366958(n+1)]`
-/

namespace A111066.P4093514148979224041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P4093514148979224041

/-! ## A111066.P745790934406903316

`∩[A028846(n+1), A366958(n+1)]`
-/

namespace A111066.P745790934406903316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P745790934406903316

/-! ## A111066.P11454336072653482733

`∩[A366958(n+1), A385324(n+1)]`
-/

namespace A111066.P11454336072653482733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P11454336072653482733

/-! ## A111066.P9697466169118402585

`∩[A080792(n+1), A240763(n+1)]`
-/

namespace A111066.P9697466169118402585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111066.P9697466169118402585

/-!
# A111068: Numbers k such that 3*k^2 + 16 is prime.

The programs for A111068, there is no canonical definition to state claims against.
-/

/-! ## A111068.P7858667825788901734

`eq[1, A245838(n²+5)]`
-/

namespace A111068.P7858667825788901734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n ^ 2 + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111068.P7858667825788901734

/-! ## A111068.P4511073456257613223

`lt[A245838((n+1)²+5), 2]+1`
-/

namespace A111068.P4511073456257613223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 ((n + 1) ^ 2 + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A111068.P4511073456257613223

/-! ## A111068.P4707009178639527854

`lt[A245838(n²+5), A007947(n+1)]`
-/

namespace A111068.P4707009178639527854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n ^ 2 + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111068.P4707009178639527854

/-! ## A111068.P14739421090088248665

`lt[A245838(n²+5), A233583(n+1)]`
-/

namespace A111068.P14739421090088248665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n ^ 2 + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111068.P14739421090088248665

/-! ## A111068.P11862938251702760345

`or(lt[A245838(n²+5), 2], A000007(n))`
-/

namespace A111068.P11862938251702760345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n ^ 2 + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) (A000007 n)

end

end A111068.P11862938251702760345

/-!
# A111069: Numbers k such that 3*k^2 + 25 is prime.

The programs for A111069, there is no canonical definition to state claims against.
-/

/-! ## A111069.P1395946149296845027

`lt[A245838((1-n)²+2*(n+1)+5), 2]`
-/

namespace A111069.P1395946149296845027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 ((1 - (n : ℤ)) ^ 2 + (2 * (n + 1) : ℤ) + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111069.P1395946149296845027

/-! ## A111069.P4873034528467591006

`eq[1, A156706(n²+8)]`
-/

namespace A111069.P4873034528467591006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n ^ 2 + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111069.P4873034528467591006

/-! ## A111069.P5117750280517051575

`eq[1, A001222(3*n²+25)]`
-/

namespace A111069.P5117750280517051575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n ^ 2 + 25)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111069.P5117750280517051575

/-! ## A111069.P18388578397936469517

`lt[A000005(3*n²+25), 3]`
-/

namespace A111069.P18388578397936469517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n ^ 2 + 25)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111069.P18388578397936469517

/-! ## A111069.P12193788459166341959

`eq[2, A116933(A117619(n))]`
-/

namespace A111069.P12193788459166341959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A117619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111069.P12193788459166341959

/-!
# A111071: Difference between the product of two consecutive primes and the next prime.

The programs for A111071, the canonical program `A111071.P17768111592594357772` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111071 has offset 1).

The definition of A111071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111071.P17768111592594357772

`A006094(n+1)-A000040(n+3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111071

/-- `A006094(n+1)-A000040(n+3)` -/
def P17768111592594357772.Spec : Prop :=
  ∀ n, P17768111592594357772.a n = A111071 (n + 1)

theorem P17768111592594357772.correct : P17768111592594357772.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel]

end A111071

/-! ## A111071.P10214257154363098202

`A096379(n+1)+A037165(n+1)`
-/

namespace A111071.P10214257154363098202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + A037165 (n + 1)

end

end A111071.P10214257154363098202

namespace A111071

/-- `A096379(n+1)+A037165(n+1)` -/
def P10214257154363098202.Spec : Prop :=
  ∀ n, P10214257154363098202.a n = A111071 (n + 1)

theorem P10214257154363098202.correct : P10214257154363098202.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P10214257154363098202.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A037165, A037165.P11474511069064839000.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P18256152803403480673

`A037166(n+1)-A031131(n+1)`
-/

namespace A111071.P18256152803403480673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - A031131 (n + 1)

end

end A111071.P18256152803403480673

namespace A111071

/-- `A037166(n+1)-A031131(n+1)` -/
def P18256152803403480673.Spec : Prop :=
  ∀ n, P18256152803403480673.a n = A111071 (n + 1)

theorem P18256152803403480673.correct : P18256152803403480673.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P18256152803403480673.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A031131, A031131.P2453725465626413076.a, A037166, A037166.P12337752897375453718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P16488569605878172680

`A126199(n+1)-A034961(n+1)`
-/

namespace A111071.P16488569605878172680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A034961 (n + 1)

end

end A111071.P16488569605878172680

namespace A111071

/-- `A126199(n+1)-A034961(n+1)` -/
def P16488569605878172680.Spec : Prop :=
  ∀ n, P16488569605878172680.a n = A111071 (n + 1)

theorem P16488569605878172680.correct : P16488569605878172680.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P16488569605878172680.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, A126199, A126199.P3423459806366818693.a, A001043, A001043.P18269783162673735460.a, A180617, A180617.P4406684303062301047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P2079077806578253882

`A006094(n+1)-A215848(n+1)`
-/

namespace A111071.P2079077806578253882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A215848 (n + 1)

end

end A111071.P2079077806578253882

namespace A111071

/-- `A006094(n+1)-A215848(n+1)` -/
def P2079077806578253882.Spec : Prop :=
  ∀ n, P2079077806578253882.a n = A111071 (n + 1)

end A111071

/-! ## A111071.P17948479149421316657

`A069486(n+1)-A292926(n+1)`
-/

namespace A111071.P17948479149421316657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A292926 (n + 1)

end

end A111071.P17948479149421316657

namespace A111071

/-- `A069486(n+1)-A292926(n+1)` -/
def P17948479149421316657.Spec : Prop :=
  ∀ n, P17948479149421316657.a n = A111071 (n + 1)

theorem P17948479149421316657.correct : P17948479149421316657.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P17948479149421316657.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A069486, A069486.P8901001312048262221.a, A292926, A292926.P9248577169796954627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P12395463582878065521

`A037167(n+1)-A001223(n+2)`
-/

namespace A111071.P12395463582878065521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A001223 (n + 2)

end

end A111071.P12395463582878065521

namespace A111071

/-- `A037167(n+1)-A001223(n+2)` -/
def P12395463582878065521.Spec : Prop :=
  ∀ n, P12395463582878065521.a n = A111071 (n + 1)

theorem P12395463582878065521.correct : P12395463582878065521.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P12395463582878065521.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A006094, A006094.P10257567645245129766.a, A037167, A037167.P11043553757995377342.a, A037165, A037165.P11474511069064839000.a, A046933, A046933.P9479947770746769512.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P6769397723930621107

`A006094(n+1)-Δ[A007504(n+2)]`
-/

namespace A111071.P6769397723930621107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111071.P6769397723930621107

namespace A111071

/-- `A006094(n+1)-Δ[A007504(n+2)]` -/
def P6769397723930621107.Spec : Prop :=
  ∀ n, P6769397723930621107.a n = A111071 (n + 1)

end A111071

/-! ## A111071.P8062925088782431956

`2*A006094(n+1)-A292926(n+1)`
-/

namespace A111071.P8062925088782431956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006094 (n + 1) - A292926 (n + 1)

end

end A111071.P8062925088782431956

namespace A111071

/-- `2*A006094(n+1)-A292926(n+1)` -/
def P8062925088782431956.Spec : Prop :=
  ∀ n, P8062925088782431956.a n = A111071 (n + 1)

theorem P8062925088782431956.correct : P8062925088782431956.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P8062925088782431956.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A292926, A292926.P9248577169796954627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P7199471450403669556

`A292926(n+1)-2*A215848(n+1)`
-/

namespace A111071.P7199471450403669556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) - 2 * A215848 (n + 1)

end

end A111071.P7199471450403669556

namespace A111071

/-- `A292926(n+1)-2*A215848(n+1)` -/
def P7199471450403669556.Spec : Prop :=
  ∀ n, P7199471450403669556.a n = A111071 (n + 1)

theorem P7199471450403669556.correct : P7199471450403669556.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P7199471450403669556.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A215848, A215848.P17068717743202425727.a, A292926, A292926.P9248577169796954627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P10795366312379888839

`A001043(n+1)+A006094(n+1)-A034961(n+1)`
-/

namespace A111071.P10795366312379888839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A006094 (n + 1) - A034961 (n + 1))

end

end A111071.P10795366312379888839

namespace A111071

/-- `A001043(n+1)+A006094(n+1)-A034961(n+1)` -/
def P10795366312379888839.Spec : Prop :=
  ∀ n, P10795366312379888839.a n = A111071 (n + 1)

theorem P10795366312379888839.correct : P10795366312379888839.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P10795366312379888839.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P13622737853334833411

`A000040(n+1)+A037166(n+1)-A215848(n+1)`
-/

namespace A111071.P13622737853334833411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A037166 (n + 1) - A215848 (n + 1))

end

end A111071.P13622737853334833411

namespace A111071

/-- `A000040(n+1)+A037166(n+1)-A215848(n+1)` -/
def P13622737853334833411.Spec : Prop :=
  ∀ n, P13622737853334833411.a n = A111071 (n + 1)

theorem P13622737853334833411.correct : P13622737853334833411.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P13622737853334833411.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A037166, A037166.P12337752897375453718.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P6283136208588395059

`A006094(n+1)+A011974(n+2)-A034961(n+1)`
-/

namespace A111071.P6283136208588395059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A011974 (n + 2) - A034961 (n + 1))

end

end A111071.P6283136208588395059

namespace A111071

/-- `A006094(n+1)+A011974(n+2)-A034961(n+1)` -/
def P6283136208588395059.Spec : Prop :=
  ∀ n, P6283136208588395059.a n = A111071 (n + 1)

end A111071

/-! ## A111071.P2508663198876915443

`A006094(n+1)-A046301(n+1)/A006094(n+1)`
-/

namespace A111071.P2508663198876915443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) - (A046301 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ)

end

end A111071.P2508663198876915443

namespace A111071

/-- `A006094(n+1)-A046301(n+1)/A006094(n+1)` -/
def P2508663198876915443.Spec : Prop :=
  ∀ n, P2508663198876915443.a n = (A111071 (n + 1) : ℚ)

end A111071

/-! ## A111071.P10319733911526691347

`A046301(n+1)/A215848(n+1)-A215848(n+1)`
-/

namespace A111071.P10319733911526691347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A215848 (n + 1) : ℚ) - (A215848 (n + 1) : ℚ)

end

end A111071.P10319733911526691347

namespace A111071

/-- `A046301(n+1)/A215848(n+1)-A215848(n+1)` -/
def P10319733911526691347.Spec : Prop :=
  ∀ n, P10319733911526691347.a n = (A111071 (n + 1) : ℚ)

end A111071

/-! ## A111071.P6323564237961990274

`A006094(n+1)-sqrt(A258155(n+1))/A006094(n+1)`
-/

namespace A111071.P6323564237961990274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℝ) - Real.sqrt (A258155 (n + 1) : ℝ) / (A006094 (n + 1) : ℝ)

end

end A111071.P6323564237961990274

namespace A111071

/-- `A006094(n+1)-sqrt(A258155(n+1))/A006094(n+1)` -/
def P6323564237961990274.Spec : Prop :=
  ∀ n, P6323564237961990274.a n = (A111071 (n + 1) : ℝ)

end A111071

/-! ## A111071.P6878588887244700162

`A006094(n+1)-A065091(n+2)`
-/

namespace A111071.P6878588887244700162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A065091 (n + 2)

end

end A111071.P6878588887244700162

namespace A111071

/-- `A006094(n+1)-A065091(n+2)` -/
def P6878588887244700162.Spec : Prop :=
  ∀ n, P6878588887244700162.a n = A111071 (n + 1)

theorem P6878588887244700162.correct : P6878588887244700162.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P6878588887244700162.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P11392498946509378825

`A345727(n+1)-A001043(n+2)`
-/

namespace A111071.P11392498946509378825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) - A001043 (n + 2)

end

end A111071.P11392498946509378825

namespace A111071

/-- `A345727(n+1)-A001043(n+2)` -/
def P11392498946509378825.Spec : Prop :=
  ∀ n, P11392498946509378825.a n = A111071 (n + 1)

theorem P11392498946509378825.correct : P11392498946509378825.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P11392498946509378825.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A345727, A345727.P2376584514298467307.a, A008864, A008864.P9177617808325052279.a, A180617, A180617.P4406684303062301047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P1983037956959058877

`A037166(n+1)-Δ[A001043(n+1)]`
-/

namespace A111071.P1983037956959058877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111071.P1983037956959058877

namespace A111071

/-- `A037166(n+1)-Δ[A001043(n+1)]` -/
def P1983037956959058877.Spec : Prop :=
  ∀ n, P1983037956959058877.a n = A111071 (n + 1)

theorem P1983037956959058877.correct : P1983037956959058877.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P1983037956959058877.f1, A111071.P1983037956959058877.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A037166, A037166.P12337752897375453718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-! ## A111071.P16308073738492999264

`A037167(n+1)-Δ[A065091(n+1)]`
-/

namespace A111071.P16308073738492999264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111071.P16308073738492999264

namespace A111071

/-- `A037167(n+1)-Δ[A065091(n+1)]` -/
def P16308073738492999264.Spec : Prop :=
  ∀ n, P16308073738492999264.a n = A111071 (n + 1)

theorem P16308073738492999264.correct : P16308073738492999264.Spec := by
  intro n
  simp only [A111071, Nat.add_sub_cancel, A111071.P16308073738492999264.f1, A111071.P16308073738492999264.a, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A037167, A037167.P11043553757995377342.a, A065091, A065091.P6971844946592549357.a, A037165, A037165.P11474511069064839000.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111071

/-!
# A111072: Write the digit string 0123456789, repeated infinitely many times. Then, starting from the first "0" digit at the left end, move to the right by one digit (to the "1"), then two digits (to the "3"), then three digits (to the "6"), four digits ("0"), five digits ("5"), and so on. Partial sums of the digits thus reached are 0, 1, 4, 10, 10, 15, ...

The programs for A111072, the canonical program `A111072.P2084818371892874282` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111072 has offset 0).

The definition of A111072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111072.P2084818371892874282

`∑[∑[n]%10]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111072

/-- `∑[∑[n]%10]` -/
def P2084818371892874282.Spec : Prop :=
  ∀ n, (P2084818371892874282.a n : ℤ) = A111072 n

theorem P2084818371892874282.correct : P2084818371892874282.Spec := by
  intro n
  simp only [A111072]

end A111072

/-! ## A111072.P7284457520221358026

`∑[A008954(n)]`
-/

namespace A111072.P7284457520221358026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P7284457520221358026

namespace A111072

/-- `∑[A008954(n)]` -/
def P7284457520221358026.Spec : Prop :=
  ∀ n, P7284457520221358026.a n = A111072 n

end A111072

/-! ## A111072.P9920022325270404066

`∑[A061501(n+1)-1]`
-/

namespace A111072.P9920022325270404066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061501 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P9920022325270404066

namespace A111072

/-- `∑[A061501(n+1)-1]` -/
def P9920022325270404066.Spec : Prop :=
  ∀ n, P9920022325270404066.a n = A111072 n

end A111072

/-! ## A111072.P7702319136182376716

`∑[A180316(n)-10*n]`
-/

namespace A111072.P7702319136182376716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180316 n - (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P7702319136182376716

namespace A111072

/-- `∑[A180316(n)-10*n]` -/
def P7702319136182376716.Spec : Prop :=
  ∀ n, P7702319136182376716.a n = A111072 n

theorem P7702319136182376716.correct : P7702319136182376716.Spec := by
  intro n
  simp only [A111072, Nat.add_sub_cancel, A111072.P7702319136182376716.f1, A111072.P7702319136182376716.a, A111072.P2084818371892874282.f2, A111072.P2084818371892874282.f1, A111072.P2084818371892874282.a, A180316, A180316.P16574413024367403363.f1, A180316.P16574413024367403363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111072

/-! ## A111072.P3737579364267984161

`∑[A260196(3*n+2)+A061501(n+1)]`
-/

namespace A111072.P3737579364267984161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * n + 2) + A061501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P3737579364267984161

namespace A111072

/-- `∑[A260196(3*n+2)+A061501(n+1)]` -/
def P3737579364267984161.Spec : Prop :=
  ∀ n, P3737579364267984161.a n = A111072 n

end A111072

/-! ## A111072.P81321472911962547

`∑[A010879(A130488(n))]`
-/

namespace A111072.P81321472911962547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A130488 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P81321472911962547

namespace A111072

/-- `∑[A010879(A130488(n))]` -/
def P81321472911962547.Spec : Prop :=
  ∀ n, P81321472911962547.a n = A111072 n

end A111072

/-! ## A111072.P13586251722372000935

`∑[A010879(∑[A010879(n)])]`
-/

namespace A111072.P13586251722372000935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P13586251722372000935

namespace A111072

/-- `∑[A010879(∑[A010879(n)])]` -/
def P13586251722372000935.Spec : Prop :=
  ∀ n, P13586251722372000935.a n = A111072 n

end A111072

/-! ## A111072.P11560458171317253352

`∑[A144468(∑[A131579(n)])]`
-/

namespace A111072.P11560458171317253352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P11560458171317253352

namespace A111072

/-- `∑[A144468(∑[A131579(n)])]` -/
def P11560458171317253352.Spec : Prop :=
  ∀ n, P11560458171317253352.a n = A111072 n

end A111072

/-! ## A111072.P15884893773245774571

`∑[A055017(n)+A055017(A180316(n))]`
-/

namespace A111072.P15884893773245774571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n + A055017 (A180316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P15884893773245774571

namespace A111072

/-- `∑[A055017(n)+A055017(A180316(n))]` -/
def P15884893773245774571.Spec : Prop :=
  ∀ n, P15884893773245774571.a n = A111072 n

end A111072

/-! ## A111072.P3340228028713846219

`∑[A007953(A180316(n))-A007953(n)]`
-/

namespace A111072.P3340228028713846219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A180316 n).toNat - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P3340228028713846219

namespace A111072

/-- `∑[A007953(A180316(n))-A007953(n)]` -/
def P3340228028713846219.Spec : Prop :=
  ∀ n, P3340228028713846219.a n = A111072 n

end A111072

/-! ## A111072.P12885839301609994785

`∑[A008975(∑[n+1]+2)]-1`
-/

namespace A111072.P12885839301609994785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008975 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111072.P12885839301609994785

namespace A111072

/-- `∑[A008975(∑[n+1]+2)]-1` -/
def P12885839301609994785.Spec : Prop :=
  ∀ n, P12885839301609994785.a n = A111072 n

end A111072

/-! ## A111072.P16148255112399593455

`∑[A010879(∑[n])]`
-/

namespace A111072.P16148255112399593455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P16148255112399593455

namespace A111072

/-- `∑[A010879(∑[n])]` -/
def P16148255112399593455.Spec : Prop :=
  ∀ n, P16148255112399593455.a n = A111072 n

theorem P16148255112399593455.correct : P16148255112399593455.Spec := by
  intro n
  simp only [A111072, Nat.add_sub_cancel, A111072.P16148255112399593455.f2, A111072.P16148255112399593455.f1, A111072.P16148255112399593455.a, A111072.P2084818371892874282.f2, A111072.P2084818371892874282.f1, A111072.P2084818371892874282.a, A010879, A010879.P10561743211919002802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111072

/-! ## A111072.P1587088014016962160

`∑[A010889(∑[n])-1]`
-/

namespace A111072.P1587088014016962160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P1587088014016962160

namespace A111072

/-- `∑[A010889(∑[n])-1]` -/
def P1587088014016962160.Spec : Prop :=
  ∀ n, P1587088014016962160.a n = A111072 n

theorem P1587088014016962160.correct : P1587088014016962160.Spec := by
  intro n
  simp only [A111072, Nat.add_sub_cancel, A111072.P1587088014016962160.f2, A111072.P1587088014016962160.f1, A111072.P1587088014016962160.a, A111072.P2084818371892874282.f2, A111072.P2084818371892874282.f1, A111072.P2084818371892874282.a, A010889, A010889.P15142290721062223514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111072

/-! ## A111072.P4940122769881477962

`∑[A007376(A065650(∑[n]))]`
-/

namespace A111072.P4940122769881477962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A065650 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P4940122769881477962

namespace A111072

/-- `∑[A007376(A065650(∑[n]))]` -/
def P4940122769881477962.Spec : Prop :=
  ∀ n, P4940122769881477962.a n = A111072 n

end A111072

/-! ## A111072.P2810386752579683738

`∑[A033307(A261334(∑[n]))]`
-/

namespace A111072.P2810386752579683738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A261334 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P2810386752579683738

namespace A111072

/-- `∑[A033307(A261334(∑[n]))]` -/
def P2810386752579683738.Spec : Prop :=
  ∀ n, P2810386752579683738.a n = A111072 n

end A111072

/-! ## A111072.P8624476156407072936

`∑[A171654(A042948(∑[n]))]`
-/

namespace A111072.P8624476156407072936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171654 (A042948 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111072.P8624476156407072936

namespace A111072

/-- `∑[A171654(A042948(∑[n]))]` -/
def P8624476156407072936.Spec : Prop :=
  ∀ n, P8624476156407072936.a n = A111072 n

end A111072

/-!
# A111073: Numbers n such that the sum of the smallest and largest prime factors of n divides n.

The programs for A111073, there is no canonical definition to state claims against.
-/

/-! ## A111073.P7620559991055561353

`lt[(n+1)%A074320(n+1), 1]+1`
-/

namespace A111073.P7620559991055561353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A074320 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A111073.P7620559991055561353

/-! ## A111073.P9922009488377433597

`eq[A191410(A006046(n+4)), A331749(3*n)]`
-/

namespace A111073.P9922009488377433597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A006046 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111073.P9922009488377433597

/-! ## A111073.P2185193324630380371

`∩[A076488(n+1), A227979(n+1)]`
-/

namespace A111073.P2185193324630380371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111073.P2185193324630380371

/-!
# A111074: Let t(n) denote the triangular numbers (A000217). Sequence mixes t(n+2) and t(n).

The programs for A111074, the canonical program `A111074.P6787230978484841028` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111074 has offset 0).

The definition of A111074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111074.P6787230978484841028

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=0, a(2)=6, a(3)=1, a(4)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111074

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6787230978484841028.Spec : Prop :=
  ∀ n, P6787230978484841028.a n = A111074 n

theorem P6787230978484841028.correct : P6787230978484841028.Spec := by
  intro n
  simp only [A111074]

end A111074

/-! ## A111074.P9232224262543283404

`C(∑[1-a(n-1)], 2)` with `a(0)=3`
-/

namespace A111074.P9232224262543283404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A111074.P9232224262543283404

namespace A111074

/-- `C(∑[1-a(n-1)], 2)` -/
def P9232224262543283404.Spec : Prop :=
  ∀ n, (P9232224262543283404.a n : ℤ) = A111074 n

end A111074

/-! ## A111074.P6274398646389815490

`C(Δ[a(n-2)+n+2], 2)` with `a(0)=0, a(1)=3`
-/

namespace A111074.P6274398646389815490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2

end

end A111074.P6274398646389815490

namespace A111074

/-- `C(Δ[a(n-2)+n+2], 2)` -/
def P6274398646389815490.Spec : Prop :=
  ∀ n, (P6274398646389815490.a n : ℤ) = A111074 n

end A111074

/-! ## A111074.P15315128593771033878

`∑[1-a(n-1)+n]-a(n-1)` with `a(0)=3, a(1)=0`
-/

namespace A111074.P15315128593771033878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  1 - f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A111074.P15315128593771033878

namespace A111074

/-- `∑[1-a(n-1)+n]-a(n-1)` -/
def P15315128593771033878.Spec : Prop :=
  ∀ n, P15315128593771033878.a n = A111074 n

end A111074

/-! ## A111074.P8016202920951711251

`∑[1-(a(n-1)-n)]-a(n-1)` with `a(0)=3, a(1)=0`
-/

namespace A111074.P8016202920951711251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  1 - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A111074.P8016202920951711251

namespace A111074

/-- `∑[1-(a(n-1)-n)]-a(n-1)` -/
def P8016202920951711251.Spec : Prop :=
  ∀ n, P8016202920951711251.a n = A111074 n

end A111074

/-! ## A111074.P5881812826749052561

`floor(sqrt(2*a(n-2))+a(n-2)+1)` with `a(0)=3, a(1)=0`
-/

namespace A111074.P5881812826749052561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  ⌊Real.sqrt (2 * a (n - 2) : ℝ) + (a (n - 2) + 1 : ℝ)⌋

end

end A111074.P5881812826749052561

namespace A111074

/-- `floor(sqrt(2*a(n-2))+a(n-2)+1)` -/
def P5881812826749052561.Spec : Prop :=
  ∀ n, P5881812826749052561.a n = A111074 n

end A111074

/-! ## A111074.P9736184611345300196

`C(A084964(n)+1, 2)`
-/

namespace A111074.P9736184611345300196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084964 n + 1).toNat 2

end

end A111074.P9736184611345300196

namespace A111074

/-- `C(A084964(n)+1, 2)` -/
def P9736184611345300196.Spec : Prop :=
  ∀ n, (P9736184611345300196.a n : ℤ) = A111074 n

end A111074

/-! ## A111074.P18362427841836947353

`A008795(xor(1, n)+1)`
-/

namespace A111074.P18362427841836947353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (Nat.xor 1 n + 1)

end

end A111074.P18362427841836947353

namespace A111074

/-- `A008795(xor(1, n)+1)` -/
def P18362427841836947353.Spec : Prop :=
  ∀ n, P18362427841836947353.a n = A111074 n

end A111074

/-! ## A111074.P10250656243854932977

`C(∑[A168330(n+1)], 2)`
-/

namespace A111074.P10250656243854932977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A111074.P10250656243854932977

namespace A111074

/-- `C(∑[A168330(n+1)], 2)` -/
def P10250656243854932977.Spec : Prop :=
  ∀ n, (P10250656243854932977.a n : ℤ) = A111074 n

end A111074

/-! ## A111074.P13433163163538117030

`C(A267182(n+1)+1, 2)`
-/

namespace A111074.P13433163163538117030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A267182 (n + 1) + 1).toNat 2

end

end A111074.P13433163163538117030

namespace A111074

/-- `C(A267182(n+1)+1, 2)` -/
def P13433163163538117030.Spec : Prop :=
  ∀ n, (P13433163163538117030.a n : ℤ) = A111074 n

end A111074

/-! ## A111074.P11063800182885492272

`C(∑[C(5, A010690(n))-2], 2)`
-/

namespace A111074.P11063800182885492272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 5 (A010690 n).toNat : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A111074.P11063800182885492272

namespace A111074

/-- `C(∑[C(5, A010690(n))-2], 2)` -/
def P11063800182885492272.Spec : Prop :=
  ∀ n, (P11063800182885492272.a n : ℤ) = A111074 n

end A111074

/-! ## A111074.P1438235589024999653

`A000217(A084964(n))`
-/

namespace A111074.P1438235589024999653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A084964 n).toNat

end

end A111074.P1438235589024999653

namespace A111074

/-- `A000217(A084964(n))` -/
def P1438235589024999653.Spec : Prop :=
  ∀ n, P1438235589024999653.a n = A111074 n

end A111074

/-! ## A111074.P14044437606949971552

`A008795(A004442(n)+1)`
-/

namespace A111074.P14044437606949971552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A004442 n + 1).toNat

end

end A111074.P14044437606949971552

namespace A111074

/-- `A008795(A004442(n)+1)` -/
def P14044437606949971552.Spec : Prop :=
  ∀ n, P14044437606949971552.a n = A111074 n

end A111074

/-! ## A111074.P2348598549449321991

`A008795(A014681(n+1))`
-/

namespace A111074.P2348598549449321991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A014681 (n + 1)).toNat

end

end A111074.P2348598549449321991

namespace A111074

/-- `A008795(A014681(n+1))` -/
def P2348598549449321991.Spec : Prop :=
  ∀ n, P2348598549449321991.a n = A111074 n

end A111074

/-! ## A111074.P2747710038795186503

`A008795(A103889(n+1))`
-/

namespace A111074.P2747710038795186503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A103889 (n + 1)).toNat

end

end A111074.P2747710038795186503

namespace A111074

/-- `A008795(A103889(n+1))` -/
def P2747710038795186503.Spec : Prop :=
  ∀ n, P2747710038795186503.a n = A111074 n

end A111074

/-! ## A111074.P1523916956100693205

`A000217(A267182(n+1))`
-/

namespace A111074.P1523916956100693205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A267182 (n + 1)).toNat

end

end A111074.P1523916956100693205

namespace A111074

/-- `A000217(A267182(n+1))` -/
def P1523916956100693205.Spec : Prop :=
  ∀ n, P1523916956100693205.a n = A111074 n

end A111074

/-! ## A111074.P2823906146263696830

`A000124(A097065(n)+1)-1`
-/

namespace A111074.P2823906146263696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A097065 n + 1).toNat - 1

end

end A111074.P2823906146263696830

namespace A111074

/-- `A000124(A097065(n)+1)-1` -/
def P2823906146263696830.Spec : Prop :=
  ∀ n, P2823906146263696830.a n = A111074 n

end A111074

/-! ## A111074.P2298541586956547725

`1-A080956(A084964(n)+1)`
-/

namespace A111074.P2298541586956547725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080956 (A084964 n + 1).toNat

end

end A111074.P2298541586956547725

namespace A111074

/-- `1-A080956(A084964(n)+1)` -/
def P2298541586956547725.Spec : Prop :=
  ∀ n, P2298541586956547725.a n = A111074 n

end A111074

/-! ## A111074.P2018742929344727481

`A008795(A033999(n)+1+n)`
-/

namespace A111074.P2018742929344727481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A033999 n + 1 + (n : ℤ)).toNat

end

end A111074.P2018742929344727481

namespace A111074

/-- `A008795(A033999(n)+1+n)` -/
def P2018742929344727481.Spec : Prop :=
  ∀ n, P2018742929344727481.a n = A111074 n

end A111074

/-! ## A111074.P15625521992262942975

`(A028242(n)+1)²-A008805(n)`
-/

namespace A111074.P15625521992262942975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028242 n + 1) ^ 2 - A008805 n

end

end A111074.P15625521992262942975

namespace A111074

/-- `(A028242(n)+1)²-A008805(n)` -/
def P15625521992262942975.Spec : Prop :=
  ∀ n, P15625521992262942975.a n = A111074 n

end A111074

/-!
# A111075: a(n) = F(n) * Sum_{k|n} 1/F(k), where F(k) is the k-th Fibonacci number.

The programs for A111075, the canonical program `A111075.P8801867717305907114` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111075 has offset 1).

The definition of A111075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111075.P8801867717305907114

`∑{d}[n+1, A000045(n+1)/A000045(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111075

/-- `∑{d}[n+1, A000045(n+1)/A000045(#)]` -/
def P8801867717305907114.Spec : Prop :=
  ∀ n, P8801867717305907114.a n = (A111075 (n + 1) : ℚ)

end A111075

/-! ## A111075.P1793974168257637101

`∑{d}[n+1, A022087(n+1)/A022087(#)]`
-/

namespace A111075.P1793974168257637101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A022087 (n + 1) : ℚ) / (A022087 d : ℚ)

end

end A111075.P1793974168257637101

namespace A111075

/-- `∑{d}[n+1, A022087(n+1)/A022087(#)]` -/
def P1793974168257637101.Spec : Prop :=
  ∀ n, P1793974168257637101.a n = (A111075 (n + 1) : ℚ)

end A111075

/-! ## A111075.P11475821513359708598

`∑{d}[n+1, A022093(n+1)/A022093(#)]`
-/

namespace A111075.P11475821513359708598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A022093 (n + 1) : ℚ) / (A022093 d : ℚ)

end

end A111075.P11475821513359708598

namespace A111075

/-- `∑{d}[n+1, A022093(n+1)/A022093(#)]` -/
def P11475821513359708598.Spec : Prop :=
  ∀ n, P11475821513359708598.a n = (A111075 (n + 1) : ℚ)

end A111075

/-! ## A111075.P15987116302880952725

`∑{d}[n+1, A022349(n+1)/A022349(#)]`
-/

namespace A111075.P15987116302880952725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A022349 (n + 1) : ℚ) / (A022349 d : ℚ)

end

end A111075.P15987116302880952725

namespace A111075

/-- `∑{d}[n+1, A022349(n+1)/A022349(#)]` -/
def P15987116302880952725.Spec : Prop :=
  ∀ n, P15987116302880952725.a n = (A111075 (n + 1) : ℚ)

end A111075

/-! ## A111075.P18414051569255252318

`∑{d}[n+1, A022361(n+1)/A022361(#)]`
-/

namespace A111075.P18414051569255252318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A022361 (n + 1) : ℚ) / (A022361 d : ℚ)

end

end A111075.P18414051569255252318

namespace A111075

/-- `∑{d}[n+1, A022361(n+1)/A022361(#)]` -/
def P18414051569255252318.Spec : Prop :=
  ∀ n, P18414051569255252318.a n = (A111075 (n + 1) : ℚ)

end A111075

/-! ## A111075.P2530933158800656650

`∑{d}[n+1, A022363(n+1)/A022363(#)]`
-/

namespace A111075.P2530933158800656650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A022363 (n + 1) : ℚ) / (A022363 d : ℚ)

end

end A111075.P2530933158800656650

namespace A111075

/-- `∑{d}[n+1, A022363(n+1)/A022363(#)]` -/
def P2530933158800656650.Spec : Prop :=
  ∀ n, P2530933158800656650.a n = (A111075 (n + 1) : ℚ)

end A111075

/-!
# A111076: Smallest positive number of maximal order mod n.

The programs for A111076, there is no canonical definition to state claims against.
-/

/-! ## A111076.P13953108807316911871

`gcd(A225627(n), A229708(n+1))`
-/

namespace A111076.P13953108807316911871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225627 n) (A229708 (n + 1))

end

end A111076.P13953108807316911871

/-! ## A111076.P18194443498323867804

`A014963(A229708(n+1)^A032741(n))`
-/

namespace A111076.P18194443498323867804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A229708 (n + 1) : ℚ) ^ (A032741 n : ℤ))).toNat

end

end A111076.P18194443498323867804

/-! ## A111076.P16572175435829403972

`A071773(A229708(n+1)^A344517(n+4))`
-/

namespace A111076.P16572175435829403972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (SequenceMachineLib.roundAway ((A229708 (n + 1) : ℚ) ^ (A344517 (n + 4) : ℤ))).toNat

end

end A111076.P16572175435829403972

/-! ## A111076.P4026503003334527410

`A006530(char[46]+A229708(n+1)^A032741(n))`
-/

namespace A111076.P4026503003334527410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A229708 (n + 1) : ℚ) ^ (A032741 n : ℤ))).toNat

end

end A111076.P4026503003334527410

/-! ## A111076.P4211167925971125876

`A006530(lcm((-1)^n, A229708(n+1)^A032741(n)))`
-/

namespace A111076.P4211167925971125876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm ((-1) ^ n) (SequenceMachineLib.roundAway ((A229708 (n + 1) : ℚ) ^ (A032741 n : ℤ))))

end

end A111076.P4211167925971125876

/-!
# A111077: Smallest squarefree integer > the n-th term of the Fibonacci sequence.

The programs for A111077, there is no canonical definition to state claims against.
-/

/-! ## A111077.P17896034940008050750

`∏{e}[A000045(n)+1, A321783(#)]+A000045(n)`
-/

namespace A111077.P17896034940008050750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A321783 (Nat.factorization (f1 n).natAbs p) + A000045 n

end

end A111077.P17896034940008050750

/-! ## A111077.P7669575406935071495

`A157725(n)-A008966(A001611(n))`
-/

namespace A111077.P7669575406935071495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - A008966 (A001611 n).toNat

end

end A111077.P7669575406935071495

/-! ## A111077.P17494139367583643566

`A157725(n)-A008966(A157726(n)-2)`
-/

namespace A111077.P17494139367583643566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - A008966 (A157726 n - 2).toNat

end

end A111077.P17494139367583643566

/-! ## A111077.P13264601775637151382

`A000045(n)+2-A008966(A000045(n)+1)`
-/

namespace A111077.P13264601775637151382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (2 - A008966 (A000045 n + 1).toNat)

end

end A111077.P13264601775637151382

/-!
# A111079: a(n) = gcd(F(n), product{k|n,k

The programs for A111079, there is no canonical definition to state claims against.
-/

/-! ## A111079.P5528487190238586737

`lcm(A178764(A061446(n+1))², A105602(n+1))`
-/

namespace A111079.P5528487190238586737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178764 (A061446 (n + 1)).toNat ^ 2) (A105602 (n + 1))

end

end A111079.P5528487190238586737

/-! ## A111079.P11208551945214500458

`A030599(record[A058071(n)])*A105602(n+1)`
-/

namespace A111079.P11208551945214500458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A105602 (n + 1)

end

end A111079.P11208551945214500458

/-! ## A111079.P6572259033219070210

`A030599(record[A129713(n)])*A105602(n+1)`
-/

namespace A111079.P6572259033219070210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A105602 (n + 1)

end

end A111079.P6572259033219070210

/-! ## A111079.P14258167172488211621

`A105602(A061446(n+1))*A105602(n+1)`
-/

namespace A111079.P14258167172488211621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105602 (A061446 (n + 1)).toNat * A105602 (n + 1)

end

end A111079.P14258167172488211621

/-! ## A111079.P9133957334995174434

`A105602(n+1)*A244226(A105602(2*(n+1)))`
-/

namespace A111079.P9133957334995174434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105602 (n + 1) * A244226 (A105602 (2 * (n + 1))).toNat

end

end A111079.P9133957334995174434

/-!
# A111080: Sum of numbers under a triangle on a spiral staircase of width 10.

The programs for A111080, the canonical program `A111080.P4154633953232749073` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111080 has offset 0).

The definition of A111080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111080.P8506817080310521797

`11*(1+n)*(2+n)*(3+n)/6`
-/

namespace A111080.P8506817080310521797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (1 + n) * (2 + n) * (3 + n) : ℚ) / 6

end

end A111080.P8506817080310521797

namespace A111080

/-- `11*(1+n)*(2+n)*(3+n)/6` -/
def P8506817080310521797.Spec : Prop :=
  ∀ n, P8506817080310521797.a n = (A111080 n : ℚ)

theorem P8506817080310521797.correct : P8506817080310521797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A111080, Nat.add_sub_cancel, A111080.P8506817080310521797.a, A111080.P4154633953232749073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A111080, Nat.add_sub_cancel, A111080.P8506817080310521797.a, A111080.P4154633953232749073.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A111080

/-! ## A111080.P4154633953232749073

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=11, a(1)=44, a(2)=110, a(3)=220`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111080

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4154633953232749073.Spec : Prop :=
  ∀ n, P4154633953232749073.a n = A111080 n

theorem P4154633953232749073.correct : P4154633953232749073.Spec := by
  intro n
  simp only [A111080]

end A111080

/-! ## A111080.P18211525805806673480

`11*A000292(n+1)`
-/

namespace A111080.P18211525805806673480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000292 (n + 1)

end

end A111080.P18211525805806673480

namespace A111080

/-- `11*A000292(n+1)` -/
def P18211525805806673480.Spec : Prop :=
  ∀ n, P18211525805806673480.a n = A111080 n

end A111080

/-! ## A111080.P4374718212439383389

`11*C(n+3, 3)`
-/

namespace A111080.P4374718212439383389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose (n + 3) 3

end

end A111080.P4374718212439383389

namespace A111080

/-- `11*C(n+3, 3)` -/
def P4374718212439383389.Spec : Prop :=
  ∀ n, (P4374718212439383389.a n : ℤ) = A111080 n

end A111080

/-! ## A111080.P2725415848957252678

`∑[∑[ogf(11/(1-2x+x^2))]]`
-/

namespace A111080.P2725415848957252678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111080.P2725415848957252678

namespace A111080

/-- `∑[∑[ogf(11/(1-2x+x^2))]]` -/
def P2725415848957252678.Spec : Prop :=
  ∀ n, P2725415848957252678.a n = A111080 n

end A111080

/-! ## A111080.P14877873432943686292

`ogf(11/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A111080.P14877873432943686292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11] [1, -4, 6, -4, 1] n

end

end A111080.P14877873432943686292

namespace A111080

/-- `ogf(11/(1-4x+6x^2-4x^3+x^4))` -/
def P14877873432943686292.Spec : Prop :=
  ∀ n, P14877873432943686292.a n = A111080 n

end A111080

/-! ## A111080.P11041122137861281508

`∑[∑[a(n-1)+11]]` with `a(0)=11`
-/

namespace A111080.P11041122137861281508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111080.P11041122137861281508

namespace A111080

/-- `∑[∑[a(n-1)+11]]` -/
def P11041122137861281508.Spec : Prop :=
  ∀ n, (P11041122137861281508.a n : ℤ) = A111080 n

end A111080

/-! ## A111080.P6386776973495699578

`(3/n+1)*a(n-1)` with `a(0)=11`
-/

namespace A111080.P6386776973495699578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  (3 / (n : ℚ) + 1) * a (n - 1)

end

end A111080.P6386776973495699578

namespace A111080

/-- `(3/n+1)*a(n-1)` -/
def P6386776973495699578.Spec : Prop :=
  ∀ n, P6386776973495699578.a n = (A111080 n : ℚ)

end A111080

/-! ## A111080.P12539959297523327573

`∑[∑[A008593(n+1)]]`
-/

namespace A111080.P12539959297523327573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111080.P12539959297523327573

namespace A111080

/-- `∑[∑[A008593(n+1)]]` -/
def P12539959297523327573.Spec : Prop :=
  ∀ n, P12539959297523327573.a n = A111080 n

end A111080

/-! ## A111080.P15257677132469534208

`A024183(n+1)-A004255(n+1)`
-/

namespace A111080.P15257677132469534208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024183 (n + 1) - A004255 (n + 1)

end

end A111080.P15257677132469534208

namespace A111080

/-- `A024183(n+1)-A004255(n+1)` -/
def P15257677132469534208.Spec : Prop :=
  ∀ n, P15257677132469534208.a n = A111080 n

end A111080

/-! ## A111080.P7025518261263131741

`A112415(n)-(A033486(n)+A000292(n+1))`
-/

namespace A111080.P7025518261263131741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112415 n - (A033486 n + A000292 (n + 1))

end

end A111080.P7025518261263131741

namespace A111080

/-- `A112415(n)-(A033486(n)+A000292(n+1))` -/
def P7025518261263131741.Spec : Prop :=
  ∀ n, P7025518261263131741.a n = A111080 n

end A111080

/-! ## A111080.P10064392498130904637

`∑[A152740(n+1)]`
-/

namespace A111080.P10064392498130904637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111080.P10064392498130904637

namespace A111080

/-- `∑[A152740(n+1)]` -/
def P10064392498130904637.Spec : Prop :=
  ∀ n, P10064392498130904637.a n = A111080 n

end A111080

/-! ## A111080.P8890871740154485651

`A254407(n+1)+A046092(n+1)`
-/

namespace A111080.P8890871740154485651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 (n + 1) + A046092 (n + 1)

end

end A111080.P8890871740154485651

namespace A111080

/-- `A254407(n+1)+A046092(n+1)` -/
def P8890871740154485651.Spec : Prop :=
  ∀ n, P8890871740154485651.a n = A111080 n

end A111080

/-! ## A111080.P129492225302034599

`A027480(n+1)+2*A210440(n+1)`
-/

namespace A111080.P129492225302034599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1) + 2 * A210440 (n + 1)

end

end A111080.P129492225302034599

namespace A111080

/-- `A027480(n+1)+2*A210440(n+1)` -/
def P129492225302034599.Spec : Prop :=
  ∀ n, P129492225302034599.a n = A111080 n

end A111080

/-! ## A111080.P12943228807874948735

`A254407(n+1)+2*A002378(n+1)`
-/

namespace A111080.P12943228807874948735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 (n + 1) + 2 * A002378 (n + 1)

end

end A111080.P12943228807874948735

namespace A111080

/-- `A254407(n+1)+2*A002378(n+1)` -/
def P12943228807874948735.Spec : Prop :=
  ∀ n, P12943228807874948735.a n = A111080 n

end A111080

/-! ## A111080.P9123790802214637117

`A033486(n+1)-(A033486(n)+A000292(n+1))`
-/

namespace A111080.P9123790802214637117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 (n + 1) - (A033486 n + A000292 (n + 1))

end

end A111080.P9123790802214637117

namespace A111080

/-- `A033486(n+1)-(A033486(n)+A000292(n+1))` -/
def P9123790802214637117.Spec : Prop :=
  ∀ n, P9123790802214637117.a n = A111080 n

end A111080

/-! ## A111080.P11508486378449837922

`A027480(n+1)+A162668(n+1)-A162668(n)`
-/

namespace A111080.P11508486378449837922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1) + (A162668 (n + 1) - A162668 n)

end

end A111080.P11508486378449837922

namespace A111080

/-- `A027480(n+1)+A162668(n+1)-A162668(n)` -/
def P11508486378449837922.Spec : Prop :=
  ∀ n, P11508486378449837922.a n = A111080 n

end A111080

/-! ## A111080.P10781462632039645626

`A000292(n+1)+A134481(n+1)+A134481(n+1)`
-/

namespace A111080.P10781462632039645626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A134481 (n + 1) + A134481 (n + 1))

end

end A111080.P10781462632039645626

namespace A111080

/-- `A000292(n+1)+A134481(n+1)+A134481(n+1)` -/
def P10781462632039645626.Spec : Prop :=
  ∀ n, P10781462632039645626.a n = A111080 n

end A111080

/-! ## A111080.P7240091118965374494

`A004467(n+2)-(n+2)`
-/

namespace A111080.P7240091118965374494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004467 (n + 2) - (n + 2 : ℤ)

end

end A111080.P7240091118965374494

namespace A111080

/-- `A004467(n+2)-(n+2)` -/
def P7240091118965374494.Spec : Prop :=
  ∀ n, P7240091118965374494.a n = A111080 n

end A111080

/-! ## A111080.P9237187370155817597

`A007588(n+2)-A004006(n+2)`
-/

namespace A111080.P9237187370155817597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (n + 2) - A004006 (n + 2)

end

end A111080.P9237187370155817597

namespace A111080

/-- `A007588(n+2)-A004006(n+2)` -/
def P9237187370155817597.Spec : Prop :=
  ∀ n, P9237187370155817597.a n = A111080 n

end A111080

/-!
# A111081: Successive generations of an alternating Kolakoski rule.

The programs for A111081, there is no canonical definition to state claims against.
-/

/-! ## A111081.P2580877543107589161

`A136407(A041047(n)%Δ[A014635(n)])`
-/

namespace A111081.P2580877543107589161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136407 (Int.tmod (A041047 n) (f1 (n + 1) - f1 n)).toNat

end

end A111081.P2580877543107589161

/-!
# A111082: Numbers n such that 3*n^2 + 49 is prime.

The programs for A111082, there is no canonical definition to state claims against.
-/

/-! ## A111082.P4685204518462704536

`eq[1, A245838(A241751(n))]`
-/

namespace A111082.P4685204518462704536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111082.P4685204518462704536

/-! ## A111082.P13160080606842391776

`lt[A245838(A241751(n)), A005408(n)]`
-/

namespace A111082.P13160080606842391776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P13160080606842391776

/-! ## A111082.P11786917539676393554

`lt[A245838(A241751(n)), A020483(n)]`
-/

namespace A111082.P11786917539676393554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P11786917539676393554

/-! ## A111082.P2757664708293582272

`lt[A245838(A241751(n)), A013929(n+1)]`
-/

namespace A111082.P2757664708293582272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P2757664708293582272

/-! ## A111082.P758015247620672221

`lt[A245838(A241751(n)), A056239(n+1)]`
-/

namespace A111082.P758015247620672221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P758015247620672221

/-! ## A111082.P10147085325860278669

`lt[A245838(A241751(n)), A181819(n+1)]`
-/

namespace A111082.P10147085325860278669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P10147085325860278669

/-! ## A111082.P6973121993301732656

`lt[A245838(A241751(n)), A195176(n+1)]`
-/

namespace A111082.P6973121993301732656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P6973121993301732656

/-! ## A111082.P1803591834219692451

`lt[A245838(A241751(n)), A316670(n+1)]`
-/

namespace A111082.P1803591834219692451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P1803591834219692451

/-! ## A111082.P481949567318773905

`lt[A245838(A241751(n))²², A195176(n)]`
-/

namespace A111082.P481949567318773905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245838 (A241751 n).toNat ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P481949567318773905

/-! ## A111082.P12448456086090131131

`lt[A245838(A241751(n))+1, A000203(n+1)]`
-/

namespace A111082.P12448456086090131131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241751 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111082.P12448456086090131131

/-!
# A111083: Numbers k such that 3*k^2 + 64 is prime.

The programs for A111083, there is no canonical definition to state claims against.
-/

/-! ## A111083.P6917571221648323147

`eq[1, A245838(A241851(n))]`
-/

namespace A111083.P6917571221648323147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111083.P6917571221648323147

/-! ## A111083.P15109541948393469409

`lt[A245838(A241851(n+1)), 2]+1`
-/

namespace A111083.P15109541948393469409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A111083.P15109541948393469409

/-! ## A111083.P8581429492625779369

`lt[A245838(A241851(n)), A065190(n+1)]`
-/

namespace A111083.P8581429492625779369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111083.P8581429492625779369

/-! ## A111083.P10753446235171556662

`lt[A245838(A241851(n)), A020639(n+2)]`
-/

namespace A111083.P10753446235171556662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111083.P10753446235171556662

/-! ## A111083.P731025403462786240

`lt[A245838(A241851(n)), A002262(n)+3]`
-/

namespace A111083.P731025403462786240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111083.P731025403462786240

/-! ## A111083.P8087520852914204387

`lt[A245838(A241851(n)), A028310(n+3)]`
-/

namespace A111083.P8087520852914204387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111083.P8087520852914204387

/-! ## A111083.P13625100488454876832

`lt[A245838(A241851(n)), A275948(n)+n]`
-/

namespace A111083.P13625100488454876832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A241851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111083.P13625100488454876832

/-!
# A111084: Where records occur in A111267.

The programs for A111084, there is no canonical definition to state claims against.
-/

/-! ## A111084.P6278164771582255601

`record[A111267(n+1)+n+1]-A111268(n+1)`
-/

namespace A111084.P6278164771582255601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111268 (n + 1)

end

end A111084.P6278164771582255601

/-! ## A111084.P1627623760590168442

`A053050(A111268(n+1))`
-/

namespace A111084.P1627623760590168442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A111268 (n + 1)).toNat

end

end A111084.P1627623760590168442

/-! ## A111084.P12597935758829890287

`A053050(record[A111267(n+1)])`
-/

namespace A111084.P12597935758829890287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111084.P12597935758829890287

/-! ## A111084.P1794182024847598861

`A111229(record[A111267(n+1)])`
-/

namespace A111084.P1794182024847598861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111084.P1794182024847598861

/-! ## A111084.P7814368307183065394

`A111229(or(1, A111268(n+1)))`
-/

namespace A111084.P7814368307183065394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (Int.lor 1 (A111268 (n + 1))).toNat

end

end A111084.P7814368307183065394

/-!
# A111087: Neither primes nor semiprimes.

The programs for A111087, the canonical program `A111087.P4608048223291234418` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111087 has offset 1).

The definition of A111087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111087.P9593818153723192461

`eq[0, A101040(n+1)]+1`
-/

namespace A111087.P9593818153723192461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111087.P9593818153723192461

namespace A111087

/-- `eq[0, A101040(n+1)]+1` -/
def P9593818153723192461.Spec : Prop :=
  ∀ n, (P9593818153723192461.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P10041050439914375505

`lt[C(3, A001222(n+1)), 2]+1`
-/

namespace A111087.P10041050439914375505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A001222 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111087.P10041050439914375505

namespace A111087

/-- `lt[C(3, A001222(n+1)), 2]+1` -/
def P10041050439914375505.Spec : Prop :=
  ∀ n, (P10041050439914375505.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P10317456218235782922

`record[(n+3)%(A001222(n+3)+n+1)]`
-/

namespace A111087.P10317456218235782922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A001222 (n + 3) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111087.P10317456218235782922

namespace A111087

/-- `record[(n+3)%(A001222(n+3)+n+1)]` -/
def P10317456218235782922.Spec : Prop :=
  ∀ n, P10317456218235782922.a n = A111087 (n + 1)

end A111087

/-! ## A111087.P1064831631960295250

`∪[A000156(n), A033942(n+1)]`
-/

namespace A111087.P1064831631960295250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P1064831631960295250

namespace A111087

/-- `∪[A000156(n), A033942(n+1)]` -/
def P1064831631960295250.Spec : Prop :=
  ∀ n, (P1064831631960295250.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P4608048223291234418

`∪[A033942(n+1), A001249(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111087

/-- `∪[A033942(n+1), A001249(n)]` -/
def P4608048223291234418.Spec : Prop :=
  ∀ n, (P4608048223291234418.a n : ℤ) = A111087 (n + 1)

theorem P4608048223291234418.correct : P4608048223291234418.Spec := by
  intro n
  simp only [A111087, Nat.add_sub_cancel]

end A111087

/-! ## A111087.P16379034624982840769

`∪[A033942(n+1), A001288(n)]`
-/

namespace A111087.P16379034624982840769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P16379034624982840769

namespace A111087

/-- `∪[A033942(n+1), A001288(n)]` -/
def P16379034624982840769.Spec : Prop :=
  ∀ n, (P16379034624982840769.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P8290469061418085576

`∪[A033942(n+1), A001386(n)]`
-/

namespace A111087.P8290469061418085576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P8290469061418085576

namespace A111087

/-- `∪[A033942(n+1), A001386(n)]` -/
def P8290469061418085576.Spec : Prop :=
  ∀ n, (P8290469061418085576.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P9272859622449113185

`∪[A005758(n), A033942(n+1)]`
-/

namespace A111087.P9272859622449113185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P9272859622449113185

namespace A111087

/-- `∪[A005758(n), A033942(n+1)]` -/
def P9272859622449113185.Spec : Prop :=
  ∀ n, (P9272859622449113185.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P10216946318168642431

`∪[A033942(n+1), A005906(n)]`
-/

namespace A111087.P10216946318168642431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005906 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P10216946318168642431

namespace A111087

/-- `∪[A033942(n+1), A005906(n)]` -/
def P10216946318168642431.Spec : Prop :=
  ∀ n, (P10216946318168642431.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P1755046881814268350

`∪[A006361(n), A033942(n+1)]`
-/

namespace A111087.P1755046881814268350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P1755046881814268350

namespace A111087

/-- `∪[A006361(n), A033942(n+1)]` -/
def P1755046881814268350.Spec : Prop :=
  ∀ n, (P1755046881814268350.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P1824949752400288446

`∪[A033942(n+1), A006859(n)]`
-/

namespace A111087.P1824949752400288446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P1824949752400288446

namespace A111087

/-- `∪[A033942(n+1), A006859(n)]` -/
def P1824949752400288446.Spec : Prop :=
  ∀ n, (P1824949752400288446.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P13996787155996998343

`∪[A007245(n), A033942(n+1)]`
-/

namespace A111087.P13996787155996998343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P13996787155996998343

namespace A111087

/-- `∪[A007245(n), A033942(n+1)]` -/
def P13996787155996998343.Spec : Prop :=
  ∀ n, (P13996787155996998343.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P4612523085843480750

`∪[A007247(n), A033942(n+1)]`
-/

namespace A111087.P4612523085843480750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P4612523085843480750

namespace A111087

/-- `∪[A007247(n), A033942(n+1)]` -/
def P4612523085843480750.Spec : Prop :=
  ∀ n, (P4612523085843480750.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P2988888914455851512

`∪[A033942(n+1), A007900(n)]`
-/

namespace A111087.P2988888914455851512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P2988888914455851512

namespace A111087

/-- `∪[A033942(n+1), A007900(n)]` -/
def P2988888914455851512.Spec : Prop :=
  ∀ n, (P2988888914455851512.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P3145085448861420947

`∪[A033942(n+1), A008340(n)]`
-/

namespace A111087.P3145085448861420947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P3145085448861420947

namespace A111087

/-- `∪[A033942(n+1), A008340(n)]` -/
def P3145085448861420947.Spec : Prop :=
  ∀ n, (P3145085448861420947.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P14514929421384456794

`∪[A033942(n+1), A008355(n)]`
-/

namespace A111087.P14514929421384456794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P14514929421384456794

namespace A111087

/-- `∪[A033942(n+1), A008355(n)]` -/
def P14514929421384456794.Spec : Prop :=
  ∀ n, (P14514929421384456794.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P14834741370472768059

`∪[A033942(n+1), A008357(n)]`
-/

namespace A111087.P14834741370472768059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008357 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P14834741370472768059

namespace A111087

/-- `∪[A033942(n+1), A008357(n)]` -/
def P14834741370472768059.Spec : Prop :=
  ∀ n, (P14834741370472768059.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P16983328769367576374

`∪[A033942(n+1), A008359(n)]`
-/

namespace A111087.P16983328769367576374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P16983328769367576374

namespace A111087

/-- `∪[A033942(n+1), A008359(n)]` -/
def P16983328769367576374.Spec : Prop :=
  ∀ n, (P16983328769367576374.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P13086751030023546028

`∪[A033942(n+1), A008387(n)]`
-/

namespace A111087.P13086751030023546028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P13086751030023546028

namespace A111087

/-- `∪[A033942(n+1), A008387(n)]` -/
def P13086751030023546028.Spec : Prop :=
  ∀ n, (P13086751030023546028.a n : ℤ) = A111087 (n + 1)

end A111087

/-! ## A111087.P6995035739196460058

`∪[A008383(n), A033942(n+1)]`
-/

namespace A111087.P6995035739196460058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111087.P6995035739196460058

namespace A111087

/-- `∪[A008383(n), A033942(n+1)]` -/
def P6995035739196460058.Spec : Prop :=
  ∀ n, (P6995035739196460058.a n : ℤ) = A111087 (n + 1)

end A111087

/-!
# A111088: a(0) = a(1) = 1, a(2) = x, a(3) = 2x^2, a(n) = x*(n-1)*a(n-1) + Sum_{j=2..n-2} (j-1)*a(j)*a(n-j), n>=4 and for x = 2.

The programs for A111088, there is no canonical definition to state claims against.
-/

/-! ## A111088.P7867031909465467622

`A278065((sqrt(2)^n)^(n-1))`
-/

namespace A111088.P7867031909465467622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278065 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) ^ n) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A111088.P7867031909465467622

/-! ## A111088.P4643948881286374632

`A082003(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A111088.P4643948881286374632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A082003 (a (n - 1) + 2).toNat

end

end A111088.P4643948881286374632

/-!
# A111089: Largest prime factor of 2n.

The programs for A111089, the canonical program `A111089.P6834740455436443643` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111089 has offset 1).

The definition of A111089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111089.P6834740455436443643

`A070777(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A111089

/-- `A070777(n+1)+1` -/
def P6834740455436443643.Spec : Prop :=
  ∀ n, P6834740455436443643.a n = A111089 (n + 1)

theorem P6834740455436443643.correct : P6834740455436443643.Spec := by
  intro n
  simp only [A111089, Nat.add_sub_cancel]

end A111089

/-! ## A111089.P18212256938124217916

`A006530(2*(n+1))`
-/

namespace A111089.P18212256938124217916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

end

end A111089.P18212256938124217916

namespace A111089

/-- `A006530(2*(n+1))` -/
def P18212256938124217916.Spec : Prop :=
  ∀ n, P18212256938124217916.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P7916313036023891333

`A139171(∏{p}[n+1, #])`
-/

namespace A111089.P7916313036023891333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A111089.P7916313036023891333

namespace A111089

/-- `A139171(∏{p}[n+1, #])` -/
def P7916313036023891333.Spec : Prop :=
  ∀ n, P7916313036023891333.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P1818665722226220846

`A329570(∏{p}[n+1, #])`
-/

namespace A111089.P1818665722226220846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329570 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A111089.P1818665722226220846

namespace A111089

/-- `A329570(∏{p}[n+1, #])` -/
def P1818665722226220846.Spec : Prop :=
  ∀ n, P1818665722226220846.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P9277266192154530092

`A129598(n+1)/(n+1)`
-/

namespace A111089.P9277266192154530092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129598 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A111089.P9277266192154530092

namespace A111089

/-- `A129598(n+1)/(n+1)` -/
def P9277266192154530092.Spec : Prop :=
  ∀ n, P9277266192154530092.a n = (A111089 (n + 1) : ℚ)

end A111089

/-! ## A111089.P11892295105741113545

`∏{p}[A345941(2*(n+1)), #]`
-/

namespace A111089.P11892295105741113545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111089.P11892295105741113545

namespace A111089

/-- `∏{p}[A345941(2*(n+1)), #]` -/
def P11892295105741113545.Spec : Prop :=
  ∀ n, (P11892295105741113545.a n : ℤ) = A111089 (n + 1)

end A111089

/-! ## A111089.P6755274091343937890

`∏{d}[A006530(lcm(2, n+1)), #]`
-/

namespace A111089.P6755274091343937890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lcm 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A111089.P6755274091343937890

namespace A111089

/-- `∏{d}[A006530(lcm(2, n+1)), #]` -/
def P6755274091343937890.Spec : Prop :=
  ∀ n, (P6755274091343937890.a n : ℤ) = A111089 (n + 1)

end A111089

/-! ## A111089.P16797690395217745943

`∏{d}[A006530(n+2+n), #]`
-/

namespace A111089.P16797690395217745943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A111089.P16797690395217745943

namespace A111089

/-- `∏{d}[A006530(n+2+n), #]` -/
def P16797690395217745943.Spec : Prop :=
  ∀ n, (P16797690395217745943.a n : ℤ) = A111089 (n + 1)

end A111089

/-! ## A111089.P8915053918460905670

`floor(A006530(n+1)+acot(n))`
-/

namespace A111089.P8915053918460905670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A111089.P8915053918460905670

namespace A111089

/-- `floor(A006530(n+1)+acot(n))` -/
def P8915053918460905670.Spec : Prop :=
  ∀ n, P8915053918460905670.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P15361802381203524842

`∏{p}[A006530(Δ[n²]+1), #]`
-/

namespace A111089.P15361802381203524842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111089.P15361802381203524842

namespace A111089

/-- `∏{p}[A006530(Δ[n²]+1), #]` -/
def P15361802381203524842.Spec : Prop :=
  ∀ n, (P15361802381203524842.a n : ℤ) = A111089 (n + 1)

end A111089

/-! ## A111089.P7855050503433640793

`A070221(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A111089.P7855050503433640793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A070221 n + a (n - 1)

end

end A111089.P7855050503433640793

namespace A111089

/-- `A070221(n)+a(n-1)` -/
def P7855050503433640793.Spec : Prop :=
  ∀ n, P7855050503433640793.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P18102422184629919340

`A245486(n)/a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A111089.P18102422184629919340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (A245486 n : ℚ) / a (n - 1)

end

end A111089.P18102422184629919340

namespace A111089

/-- `A245486(n)/a(n-1)` -/
def P18102422184629919340.Spec : Prop :=
  ∀ n, P18102422184629919340.a n = (A111089 (n + 1) : ℚ)

end A111089

/-! ## A111089.P1439717507937733166

`Δ[A006530(n)+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A111089.P1439717507937733166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A006530 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111089.P1439717507937733166

namespace A111089

/-- `Δ[A006530(n)+a(n-1)]` -/
def P1439717507937733166.Spec : Prop :=
  ∀ n, P1439717507937733166.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P2238060999924055290

`∑{p}[A006530((n+2)²-n²), #]`
-/

namespace A111089.P2238060999924055290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2) ^ 2 - n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111089.P2238060999924055290

namespace A111089

/-- `∑{p}[A006530((n+2)²-n²), #]` -/
def P2238060999924055290.Spec : Prop :=
  ∀ n, (P2238060999924055290.a n : ℤ) = A111089 (n + 1)

end A111089

/-! ## A111089.P12376469213443399586

`A006530(abs(2-n)+3)%(n+3)`
-/

namespace A111089.P12376469213443399586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (|2 - (n : ℤ)| + 3).toNat) (n + 3 : ℤ)

end

end A111089.P12376469213443399586

namespace A111089

/-- `A006530(abs(2-n)+3)%(n+3)` -/
def P12376469213443399586.Spec : Prop :=
  ∀ n, P12376469213443399586.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P17942923790105850619

`A007918(A006530(n+1))`
-/

namespace A111089.P17942923790105850619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A006530 (n + 1)).toNat

end

end A111089.P17942923790105850619

namespace A111089

/-- `A007918(A006530(n+1))` -/
def P17942923790105850619.Spec : Prop :=
  ∀ n, P17942923790105850619.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P6425962732702055112

`A020725(A070777(n+1))`
-/

namespace A111089.P6425962732702055112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070777 (n + 1)).toNat

end

end A111089.P6425962732702055112

namespace A111089

/-- `A020725(A070777(n+1))` -/
def P6425962732702055112.Spec : Prop :=
  ∀ n, P6425962732702055112.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P8146329559814456012

`A117366(A064989(n+1))`
-/

namespace A111089.P8146329559814456012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A064989 (n + 1)).toNat

end

end A111089.P8146329559814456012

namespace A111089

/-- `A117366(A064989(n+1))` -/
def P8146329559814456012.Spec : Prop :=
  ∀ n, P8146329559814456012.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P13845439504165488092

`A117366(A117364(n+1))`
-/

namespace A111089.P13845439504165488092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A117364 (n + 1)).toNat

end

end A111089.P13845439504165488092

namespace A111089

/-- `A117366(A117364(n+1))` -/
def P13845439504165488092.Spec : Prop :=
  ∀ n, P13845439504165488092.a n = A111089 (n + 1)

end A111089

/-! ## A111089.P12449642938773792148

`A093074(A299766(n+1))`
-/

namespace A111089.P12449642938773792148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A299766 (n + 1)).toNat

end

end A111089.P12449642938773792148

namespace A111089

/-- `A093074(A299766(n+1))` -/
def P12449642938773792148.Spec : Prop :=
  ∀ n, P12449642938773792148.a n = A111089 (n + 1)

end A111089

/-!
# A111090: Successive generations of an alternating Kolakoski rule.

The programs for A111090, there is no canonical definition to state claims against.
-/

/-! ## A111090.P8775629998771275701

`A114034(A281618(n+1))`
-/

namespace A111090.P8775629998771275701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114034 (A281618 (n + 1)).toNat

end

end A111090.P8775629998771275701

/-! ## A111090.P5069822758712276779

`A065031(∑[A212421(n)²])`
-/

namespace A111090.P5069822758712276779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212421 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111090.P5069822758712276779

/-!
# A111091: Successive generations of a Kolakoski(3,1) rule starting with 1 (see A066983).

The programs for A111091, there is no canonical definition to state claims against.
-/

/-! ## A111091.P2652529179782670900

`A318927(A206914(a(n-1)+1))` with `a(0)=1, a(1)=3`
-/

namespace A111091.P2652529179782670900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A318927 (A206914 (a (n - 1) + 1).toNat).toNat

end

end A111091.P2652529179782670900

/-!
# A111092: Primes congruent to {1,69} mod 70.

The programs for A111092, the canonical program `A111092.P5172382396822745315` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111092 has offset 1).

The definition of A111092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111092.P14948936771150950062

`∪[A140535(n+1), A140732(n+1)]`
-/

namespace A111092.P14948936771150950062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111092.P14948936771150950062

namespace A111092

/-- `∪[A140535(n+1), A140732(n+1)]` -/
def P14948936771150950062.Spec : Prop :=
  ∀ n, (P14948936771150950062.a n : ℤ) = A111092 (n + 1)

end A111092

/-! ## A111092.P15933237552159408717

`∪[A142076(n+1), A142099(n+1)]`
-/

namespace A111092.P15933237552159408717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111092.P15933237552159408717

namespace A111092

/-- `∪[A142076(n+1), A142099(n+1)]` -/
def P15933237552159408717.Spec : Prop :=
  ∀ n, (P15933237552159408717.a n : ℤ) = A111092 (n + 1)

end A111092

/-! ## A111092.P5172382396822745315

`p?[35*n-a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111092

/-- `p?[35*n-a(n-1)]` -/
def P5172382396822745315.Spec : Prop :=
  ∀ n, P5172382396822745315.a n = A111092 (n + 1)

theorem P5172382396822745315.correct : P5172382396822745315.Spec := by
  intro n
  simp only [A111092, Nat.add_sub_cancel]

end A111092

/-! ## A111092.P2043009332264219288

`p?[A057539(A014601(n)+1)]`
-/

namespace A111092.P2043009332264219288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (A014601 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P2043009332264219288

namespace A111092

/-- `p?[A057539(A014601(n)+1)]` -/
def P2043009332264219288.Spec : Prop :=
  ∀ n, P2043009332264219288.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P6978273226108001447

`p?[A057539(A007310(n+1)-n)]`
-/

namespace A111092.P6978273226108001447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (A007310 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P6978273226108001447

namespace A111092

/-- `p?[A057539(A007310(n+1)-n)]` -/
def P6978273226108001447.Spec : Prop :=
  ∀ n, P6978273226108001447.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P16454172316618695715

`p?[∑[(n%2+1)^5]+n]`
-/

namespace A111092.P16454172316618695715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A111092.P16454172316618695715

namespace A111092

/-- `p?[∑[(n%2+1)^5]+n]` -/
def P16454172316618695715.Spec : Prop :=
  ∀ n, (P16454172316618695715.a n : ℤ) = A111092 (n + 1)

end A111092

/-! ## A111092.P12173174443536743362

`p?[∑[A131800(n)²]+n]`
-/

namespace A111092.P12173174443536743362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131800 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P12173174443536743362

namespace A111092

/-- `p?[∑[A131800(n)²]+n]` -/
def P12173174443536743362.Spec : Prop :=
  ∀ n, P12173174443536743362.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P4737546858460660778

`p?[33*A004524(n+1)+n]`
-/

namespace A111092.P4737546858460660778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 * A004524 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P4737546858460660778

namespace A111092

/-- `p?[33*A004524(n+1)+n]` -/
def P4737546858460660778.Spec : Prop :=
  ∀ n, P4737546858460660778.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P7987445815542548791

`p?[∑[A040509(n+3)]]`
-/

namespace A111092.P7987445815542548791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040509 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P7987445815542548791

namespace A111092

/-- `p?[∑[A040509(n+3)]]` -/
def P7987445815542548791.Spec : Prop :=
  ∀ n, P7987445815542548791.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P17065700054968337544

`p?[∑[A110551(n)²]]`
-/

namespace A111092.P17065700054968337544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110551 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P17065700054968337544

namespace A111092

/-- `p?[∑[A110551(n)²]]` -/
def P17065700054968337544.Spec : Prop :=
  ∀ n, P17065700054968337544.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P5199042726837981152

`p?[4*8*A002264(n+1)+n]`
-/

namespace A111092.P5199042726837981152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (8 * A002264 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P5199042726837981152

namespace A111092

/-- `p?[4*8*A002264(n+1)+n]` -/
def P5199042726837981152.Spec : Prop :=
  ∀ n, P5199042726837981152.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P2278381593664674064

`p?[∑[A070591(2*n+1)]]`
-/

namespace A111092.P2278381593664674064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070591 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P2278381593664674064

namespace A111092

/-- `p?[∑[A070591(2*n+1)]]` -/
def P2278381593664674064.Spec : Prop :=
  ∀ n, P2278381593664674064.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P1091095852499919883

`p?[A047353(n+3)+A047323(n+1)]`
-/

namespace A111092.P1091095852499919883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (n + 3) + A047323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P1091095852499919883

namespace A111092

/-- `p?[A047353(n+3)+A047323(n+1)]` -/
def P1091095852499919883.Spec : Prop :=
  ∀ n, P1091095852499919883.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P11007684965222968187

`p?[A111072(n)]`
-/

namespace A111092.P11007684965222968187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P11007684965222968187

namespace A111092

/-- `p?[A111072(n)]` -/
def P11007684965222968187.Spec : Prop :=
  ∀ n, P11007684965222968187.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P13114146905152099856

`p?[A047336(A197652(n+2))]`
-/

namespace A111092.P13114146905152099856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (A197652 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P13114146905152099856

namespace A111092

/-- `p?[A047336(A197652(n+2))]` -/
def P13114146905152099856.Spec : Prop :=
  ∀ n, P13114146905152099856.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P15249044993566429643

`p?[A047336(A047221(n+2)-2)]`
-/

namespace A111092.P15249044993566429643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (A047221 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P15249044993566429643

namespace A111092

/-- `p?[A047336(A047221(n+2)-2)]` -/
def P15249044993566429643.Spec : Prop :=
  ∀ n, P15249044993566429643.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P4855627701854743765

`p?[A047336(A047336(n+1)-n)]`
-/

namespace A111092.P4855627701854743765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (A047336 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P4855627701854743765

namespace A111092

/-- `p?[A047336(A047336(n+1)-n)]` -/
def P4855627701854743765.Spec : Prop :=
  ∀ n, P4855627701854743765.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P13247232372238310762

`filter[A111072(2*n+1), A010051(#)]`
-/

namespace A111092.P13247232372238310762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111072 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A111092.P13247232372238310762

namespace A111092

/-- `filter[A111072(2*n+1), A010051(#)]` -/
def P13247232372238310762.Spec : Prop :=
  ∀ n, P13247232372238310762.a n = A111092 (n + 1)

end A111092

/-! ## A111092.P13064402152514411309

`p?[A042965(A151977(n+2))+n+1]`
-/

namespace A111092.P13064402152514411309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A151977 (n + 2)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111092.P13064402152514411309

namespace A111092

/-- `p?[A042965(A151977(n+2))+n+1]` -/
def P13064402152514411309.Spec : Prop :=
  ∀ n, P13064402152514411309.a n = A111092 (n + 1)

end A111092

/-!
# A111093: Like sequence A111072 but moving right by the squares of the sequence of positive integers.

The programs for A111093, the canonical program `A111093.P801810242047355900` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111093 has offset 0).

The definition of A111093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111093.P801810242047355900

`∑[∑[n²]%10]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111093

/-- `∑[∑[n²]%10]` -/
def P801810242047355900.Spec : Prop :=
  ∀ n, (P801810242047355900.a n : ℤ) = A111093 n

theorem P801810242047355900.correct : P801810242047355900.Spec := by
  intro n
  simp only [A111093]

end A111093

/-! ## A111093.P8521353146983329394

`-∑[∑[-n^6]%10]`
-/

namespace A111093.P8521353146983329394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 6 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111093.P8521353146983329394

namespace A111093

/-- `-∑[∑[-n^6]%10]` -/
def P8521353146983329394.Spec : Prop :=
  ∀ n, P8521353146983329394.a n = A111093 n

end A111093

/-! ## A111093.P11848563885785751751

`∑[dr(A000330(n)%10)]`
-/

namespace A111093.P11848563885785751751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000330 n) 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P11848563885785751751

namespace A111093

/-- `∑[dr(A000330(n)%10)]` -/
def P11848563885785751751.Spec : Prop :=
  ∀ n, (P11848563885785751751.a n : ℤ) = A111093 n

end A111093

/-! ## A111093.P12257528085752022794

`∑[dr(A000540(n)%10)]`
-/

namespace A111093.P12257528085752022794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000540 n) 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P12257528085752022794

namespace A111093

/-- `∑[dr(A000540(n)%10)]` -/
def P12257528085752022794.Spec : Prop :=
  ∀ n, (P12257528085752022794.a n : ℤ) = A111093 n

end A111093

/-! ## A111093.P13615642825731300880

`∑[dr(A172073(n)%10)]`
-/

namespace A111093.P13615642825731300880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A172073 n) 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P13615642825731300880

namespace A111093

/-- `∑[dr(A172073(n)%10)]` -/
def P13615642825731300880.Spec : Prop :=
  ∀ n, (P13615642825731300880.a n : ℤ) = A111093 n

end A111093

/-! ## A111093.P3210333416968206771

`∑[A008960(∑[A008959(n)])]`
-/

namespace A111093.P3210333416968206771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P3210333416968206771

namespace A111093

/-- `∑[A008960(∑[A008959(n)])]` -/
def P3210333416968206771.Spec : Prop :=
  ∀ n, P3210333416968206771.a n = A111093 n

end A111093

/-! ## A111093.P17730966440594643010

`∑[A008960(∑[A070442(n)])]`
-/

namespace A111093.P17730966440594643010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P17730966440594643010

namespace A111093

/-- `∑[A008960(∑[A070442(n)])]` -/
def P17730966440594643010.Spec : Prop :=
  ∀ n, P17730966440594643010.a n = A111093 n

end A111093

/-! ## A111093.P12651743915456174474

`∑[A010879(∑[A010879(n)²])]`
-/

namespace A111093.P12651743915456174474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P12651743915456174474

namespace A111093

/-- `∑[A010879(∑[A010879(n)²])]` -/
def P12651743915456174474.Spec : Prop :=
  ∀ n, P12651743915456174474.a n = A111093 n

end A111093

/-! ## A111093.P10922233707845263614

`∑[A008960(∑[A008960(n)²])]`
-/

namespace A111093.P10922233707845263614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P10922233707845263614

namespace A111093

/-- `∑[A008960(∑[A008960(n)²])]` -/
def P10922233707845263614.Spec : Prop :=
  ∀ n, P10922233707845263614.a n = A111093 n

end A111093

/-! ## A111093.P1441860736908357010

`∑[A008960(∑[A002015(n)])]`
-/

namespace A111093.P1441860736908357010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111093.P1441860736908357010

namespace A111093

/-- `∑[A008960(∑[A002015(n)])]` -/
def P1441860736908357010.Spec : Prop :=
  ∀ n, P1441860736908357010.a n = A111093 n

end A111093

/-!
# A111094: Numbers k such that 18*k + 1 is prime.

The programs for A111094, the canonical program `A111094.P17054907925859865419` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111094 has offset 1).

The definition of A111094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111094.P9060358916121378637

`A024906(n+1)/2`
-/

namespace A111094.P9060358916121378637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024906 (n + 1) : ℚ) / 2

end

end A111094.P9060358916121378637

namespace A111094

/-- `A024906(n+1)/2` -/
def P9060358916121378637.Spec : Prop :=
  ∀ n, P9060358916121378637.a n = (A111094 (n + 1) : ℚ)

end A111094

/-! ## A111094.P17054907925859865419

`floor(A061237(n+1)/18)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111094

/-- `floor(A061237(n+1)/18)` -/
def P17054907925859865419.Spec : Prop :=
  ∀ n, P17054907925859865419.a n = A111094 (n + 1)

theorem P17054907925859865419.correct : P17054907925859865419.Spec := by
  intro n
  simp only [A111094, Nat.add_sub_cancel]

end A111094

/-! ## A111094.P15247683908290642518

`comp[A153400(n+1)]`
-/

namespace A111094.P15247683908290642518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111094.P15247683908290642518

namespace A111094

/-- `comp[A153400(n+1)]` -/
def P15247683908290642518.Spec : Prop :=
  ∀ n, (P15247683908290642518.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P8525619514230923173

`eq[1, A001222(18*n+1)]`
-/

namespace A111094.P8525619514230923173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (18 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111094.P8525619514230923173

namespace A111094

/-- `eq[1, A001222(18*n+1)]` -/
def P8525619514230923173.Spec : Prop :=
  ∀ n, (P8525619514230923173.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P2676934853773462500

`eq[2, A000005(18*n+1)]`
-/

namespace A111094.P2676934853773462500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (18 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111094.P2676934853773462500

namespace A111094

/-- `eq[2, A000005(18*n+1)]` -/
def P2676934853773462500.Spec : Prop :=
  ∀ n, (P2676934853773462500.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P14762325825549189078

`lt[A000005(9*2*(n+1)+1), 3]+1`
-/

namespace A111094.P14762325825549189078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * (2 * (n + 1)) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A111094.P14762325825549189078

namespace A111094

/-- `lt[A000005(9*2*(n+1)+1), 3]+1` -/
def P14762325825549189078.Spec : Prop :=
  ∀ n, (P14762325825549189078.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P15726504404258449224

`eq[1, A100995(A161705(n))]`
-/

namespace A111094.P15726504404258449224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A161705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111094.P15726504404258449224

namespace A111094

/-- `eq[1, A100995(A161705(n))]` -/
def P15726504404258449224.Spec : Prop :=
  ∀ n, (P15726504404258449224.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P14455711414851244831

`lt[A000005(9*A004277(n)+1), 3]`
-/

namespace A111094.P14455711414851244831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * A004277 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111094.P14455711414851244831

namespace A111094

/-- `lt[A000005(9*A004277(n)+1), 3]` -/
def P14455711414851244831.Spec : Prop :=
  ∀ n, (P14455711414851244831.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P95280798381339189

`A004525(A024906(n+1))`
-/

namespace A111094.P95280798381339189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024906 (n + 1)).toNat

end

end A111094.P95280798381339189

namespace A111094

/-- `A004525(A024906(n+1))` -/
def P95280798381339189.Spec : Prop :=
  ∀ n, P95280798381339189.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P4415891999009011699

`eq[1, A156706(A008486(2*n))]`
-/

namespace A111094.P4415891999009011699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111094.P4415891999009011699

namespace A111094

/-- `eq[1, A156706(A008486(2*n))]` -/
def P4415891999009011699.Spec : Prop :=
  ∀ n, (P4415891999009011699.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P623311736638437984

`eq[1, A156706(A008486(n))]/2`
-/

namespace A111094.P623311736638437984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A008486 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A111094.P623311736638437984

namespace A111094

/-- `eq[1, A156706(A008486(n))]/2` -/
def P623311736638437984.Spec : Prop :=
  ∀ n, P623311736638437984.a n = (A111094 (n + 1) : ℚ)

end A111094

/-! ## A111094.P16776524497534823554

`A004526(A024906(n+1)-1)+1`
-/

namespace A111094.P16776524497534823554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024906 (n + 1) - 1).toNat + 1

end

end A111094.P16776524497534823554

namespace A111094

/-- `A004526(A024906(n+1)-1)+1` -/
def P16776524497534823554.Spec : Prop :=
  ∀ n, P16776524497534823554.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P9847944164122412172

`A004526(A024906(n+1)+1)`
-/

namespace A111094.P9847944164122412172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024906 (n + 1) + 1).toNat

end

end A111094.P9847944164122412172

namespace A111094

/-- `A004526(A024906(n+1)+1)` -/
def P9847944164122412172.Spec : Prop :=
  ∀ n, P9847944164122412172.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P17959125381603375225

`A001281(A024906(n+1)+2)-1`
-/

namespace A111094.P17959125381603375225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024906 (n + 1) + 2).toNat - 1

end

end A111094.P17959125381603375225

namespace A111094

/-- `A001281(A024906(n+1)+2)-1` -/
def P17959125381603375225.Spec : Prop :=
  ∀ n, P17959125381603375225.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P4293086332715639090

`eq[A006530(2*A161705(n)), A161705(n)]`
-/

namespace A111094.P4293086332715639090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A161705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111094.P4293086332715639090

namespace A111094

/-- `eq[A006530(2*A161705(n)), A161705(n)]` -/
def P4293086332715639090.Spec : Prop :=
  ∀ n, (P4293086332715639090.a n : ℤ) = A111094 (n + 1)

end A111094

/-! ## A111094.P2776103688325883515

`A002265(2*A024906(n+1))`
-/

namespace A111094.P2776103688325883515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A024906 (n + 1)).toNat

end

end A111094.P2776103688325883515

namespace A111094

/-- `A002265(2*A024906(n+1))` -/
def P2776103688325883515.Spec : Prop :=
  ∀ n, P2776103688325883515.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P7347707260334819190

`A002265(A024906(n+1)+A024906(n+1))`
-/

namespace A111094.P7347707260334819190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A024906 (n + 1) + A024906 (n + 1)).toNat

end

end A111094.P7347707260334819190

namespace A111094

/-- `A002265(A024906(n+1)+A024906(n+1))` -/
def P7347707260334819190.Spec : Prop :=
  ∀ n, P7347707260334819190.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P10318796748963179912

`A257849((A061237(n+1)+1)/2)`
-/

namespace A111094.P10318796748963179912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (SequenceMachineLib.roundAway ((A061237 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A111094.P10318796748963179912

namespace A111094

/-- `A257849((A061237(n+1)+1)/2)` -/
def P10318796748963179912.Spec : Prop :=
  ∀ n, P10318796748963179912.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P16229420966595014010

`A008618(A061237(n+1))`
-/

namespace A111094.P16229420966595014010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A061237 (n + 1)).toNat

end

end A111094.P16229420966595014010

namespace A111094

/-- `A008618(A061237(n+1))` -/
def P16229420966595014010.Spec : Prop :=
  ∀ n, P16229420966595014010.a n = A111094 (n + 1)

end A111094

/-! ## A111094.P14220340186986253719

`eq[2, A085082(A215137(n)+n)]`
-/

namespace A111094.P14220340186986253719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A215137 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111094.P14220340186986253719

namespace A111094

/-- `eq[2, A085082(A215137(n)+n)]` -/
def P14220340186986253719.Spec : Prop :=
  ∀ n, (P14220340186986253719.a n : ℤ) = A111094 (n + 1)

end A111094

/-!
# A111095: n = Sum_{b} c_b*b! in the factorial base rewritten by c_b-fold repetition of b, b=1,2,3,....

The programs for A111095, there is no canonical definition to state claims against.
-/

/-! ## A111095.P15464894008538104367

`A087712(A276076(n+1))`
-/

namespace A111095.P15464894008538104367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A276076 (n + 1)).toNat

end

end A111095.P15464894008538104367

/-!
# A111096: Partial sums of A137701.

The programs for A111096, there is no canonical definition to state claims against.
-/

/-! ## A111096.P11810046019021679204

`∑[A137701(n+1)]`
-/

namespace A111096.P11810046019021679204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111096.P11810046019021679204

/-! ## A111096.P603596342844178855

`∑[eq[2, ∑{e}[n, #]]^A000040(n+1)]`
-/

namespace A111096.P603596342844178855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111096.P603596342844178855

/-! ## A111096.P10473258839296198751

`∑[A001358(n+1)^A000040(n+1)]`
-/

namespace A111096.P10473258839296198751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111096.P10473258839296198751

/-! ## A111096.P17689784661867536175

`∑[(eq[2, A001222(n+1)]+1)^A000040(n+1)]`
-/

namespace A111096.P17689784661867536175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111096.P17689784661867536175

/-!
# A111097: Maximum likelihood of the number of distinguishable marbles in an urn if repeated random sampling of one marble with replacement yields n different marbles before the first repeated marble.

The programs for A111097, the canonical program `A111097.P1116355640857215868` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111097 has offset 1).

The definition of A111097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111097.P3480067951334255079

`∑[and(1, round(ϕ^n))+n]`
-/

namespace A111097.P3480067951334255079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111097.P3480067951334255079

namespace A111097

/-- `∑[and(1, round(ϕ^n))+n]` -/
def P3480067951334255079.Spec : Prop :=
  ∀ n, P3480067951334255079.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P10133312819336198886

`round(sqrt(∑[n*(n+1)²]+1))`
-/

namespace A111097.P10133312819336198886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))

end

end A111097.P10133312819336198886

namespace A111097

/-- `round(sqrt(∑[n*(n+1)²]+1))` -/
def P10133312819336198886.Spec : Prop :=
  ∀ n, P10133312819336198886.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P1116355640857215868

`∑[a(n-3)+3]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111097

/-- `∑[a(n-3)+3]` -/
def P1116355640857215868.Spec : Prop :=
  ∀ n, (P1116355640857215868.a n : ℤ) = A111097 (n + 1)

theorem P1116355640857215868.correct : P1116355640857215868.Spec := by
  intro n
  simp only [A111097, Nat.add_sub_cancel]

end A111097

/-! ## A111097.P14207148991146299504

`∑[(3-(n-2)%3)%2+n]`
-/

namespace A111097.P14207148991146299504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - Int.tmod ((n : ℤ) - 2) 3) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111097.P14207148991146299504

namespace A111097

/-- `∑[(3-(n-2)%3)%2+n]` -/
def P14207148991146299504.Spec : Prop :=
  ∀ n, P14207148991146299504.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P5135837123843174528

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A111097.P5135837123843174528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 0, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111097.P5135837123843174528

namespace A111097

/-- `∑[∑[floor(a(n-3))]]` -/
def P5135837123843174528.Spec : Prop :=
  ∀ n, (P5135837123843174528.a n : ℤ) = A111097 (n + 1)

end A111097

/-! ## A111097.P13412139922148666805

`a(n-1)+n²%3+n` with `a(0)=1, a(1)=2`
-/

namespace A111097.P13412139922148666805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (n ^ 2 % 3 + n)

end

end A111097.P13412139922148666805

namespace A111097

/-- `a(n-1)+n²%3+n` -/
def P13412139922148666805.Spec : Prop :=
  ∀ n, (P13412139922148666805.a n : ℤ) = A111097 (n + 1)

end A111097

/-! ## A111097.P17628591495503274003

`gcd(3, n)%3+a(n-1)+n` with `a(0)=1, a(1)=2`
-/

namespace A111097.P17628591495503274003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 3 n % 3 + (a (n - 1) + n)

end

end A111097.P17628591495503274003

namespace A111097

/-- `gcd(3, n)%3+a(n-1)+n` -/
def P17628591495503274003.Spec : Prop :=
  ∀ n, (P17628591495503274003.a n : ℤ) = A111097 (n + 1)

end A111097

/-! ## A111097.P9195553604530382503

`a(n-1)+(n*n)%3+n` with `a(0)=1, a(1)=2`
-/

namespace A111097.P9195553604530382503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + n * n % 3 + n

end

end A111097.P9195553604530382503

namespace A111097

/-- `a(n-1)+(n*n)%3+n` -/
def P9195553604530382503.Spec : Prop :=
  ∀ n, (P9195553604530382503.a n : ℤ) = A111097 (n + 1)

end A111097

/-! ## A111097.P8557167633682601439

`floor((3*(n+1)²-a(n-1))/5)` with `a(0)=1`
-/

namespace A111097.P8557167633682601439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((3 * (n + 1) ^ 2 : ℤ) - a (n - 1) : ℚ) / 5⌋

end

end A111097.P8557167633682601439

namespace A111097

/-- `floor((3*(n+1)²-a(n-1))/5)` -/
def P8557167633682601439.Spec : Prop :=
  ∀ n, P8557167633682601439.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P9668302319389019793

`∑[∑[a(n-3)^a(n-2)]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A111097.P9668302319389019793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 0, 2] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111097.P9668302319389019793

namespace A111097

/-- `∑[∑[a(n-3)^a(n-2)]]` -/
def P9668302319389019793.Spec : Prop :=
  ∀ n, (P9668302319389019793.a n : ℤ) = A111097 (n + 1)

end A111097

/-! ## A111097.P3976242873128011918

`A262523(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A111097.P3976242873128011918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A262523 n - a (n - 1)

end

end A111097.P3976242873128011918

namespace A111097

/-- `A262523(n)-a(n-1)` -/
def P3976242873128011918.Spec : Prop :=
  ∀ n, P3976242873128011918.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P6908216386371140106

`A389143(A028310(n))+n`
-/

namespace A111097.P6908216386371140106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389143 (A028310 n).toNat + (n : ℤ)

end

end A111097.P6908216386371140106

namespace A111097

/-- `A389143(A028310(n))+n` -/
def P6908216386371140106.Spec : Prop :=
  ∀ n, P6908216386371140106.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P11779612103370145405

`A027379(n)-A004773(n)`
-/

namespace A111097.P11779612103370145405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A004773 n

end

end A111097.P11779612103370145405

namespace A111097

/-- `A027379(n)-A004773(n)` -/
def P11779612103370145405.Spec : Prop :=
  ∀ n, P11779612103370145405.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P15111799926961243967

`A134479(n)-A389316(n)`
-/

namespace A111097.P15111799926961243967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 n - A389316 n

end

end A111097.P15111799926961243967

namespace A111097

/-- `A134479(n)-A389316(n)` -/
def P15111799926961243967.Spec : Prop :=
  ∀ n, P15111799926961243967.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P17253170308032353689

`A008620(A004273(n))+∑[n]`
-/

namespace A111097.P17253170308032353689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004273 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111097.P17253170308032353689

namespace A111097

/-- `A008620(A004273(n))+∑[n]` -/
def P17253170308032353689.Spec : Prop :=
  ∀ n, P17253170308032353689.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P743274996738194595

`A080476(n+1)+A008615(n)`
-/

namespace A111097.P743274996738194595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) + A008615 n

end

end A111097.P743274996738194595

namespace A111097

/-- `A080476(n+1)+A008615(n)` -/
def P743274996738194595.Spec : Prop :=
  ∀ n, P743274996738194595.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P5236190798715956295

`A171452(n)+A063200(n+1)`
-/

namespace A111097.P5236190798715956295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171452 n + A063200 (n + 1)

end

end A111097.P5236190798715956295

namespace A111097

/-- `A171452(n)+A063200(n+1)` -/
def P5236190798715956295.Spec : Prop :=
  ∀ n, P5236190798715956295.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P11190218893944857939

`A027379(n)-A004523(2*n)`
-/

namespace A111097.P11190218893944857939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A004523 (2 * n)

end

end A111097.P11190218893944857939

namespace A111097

/-- `A027379(n)-A004523(2*n)` -/
def P11190218893944857939.Spec : Prop :=
  ∀ n, P11190218893944857939.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P17381344270331579810

`A027379(n)-A002264(4*n)`
-/

namespace A111097.P17381344270331579810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A002264 (4 * n)

end

end A111097.P17381344270331579810

namespace A111097

/-- `A027379(n)-A002264(4*n)` -/
def P17381344270331579810.Spec : Prop :=
  ∀ n, P17381344270331579810.a n = A111097 (n + 1)

end A111097

/-! ## A111097.P16620207928591630185

`∪[A016784(n), A027916(n+2)]`
-/

namespace A111097.P16620207928591630185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027916 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111097.P16620207928591630185

namespace A111097

/-- `∪[A016784(n), A027916(n+2)]` -/
def P16620207928591630185.Spec : Prop :=
  ∀ n, (P16620207928591630185.a n : ℤ) = A111097 (n + 1)

end A111097

/-!
# A111099: Sum of even Fermat coefficients rounded to nearest integer.

The programs for A111099, there is no canonical definition to state claims against.
-/

/-! ## A111099.P5421941245466191575

`record[round(A005013(n)/(or(1, n)+n))]`
-/

namespace A111099.P5421941245466191575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005013 n : ℚ) / (Nat.lor 1 n + n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111099.P5421941245466191575

/-! ## A111099.P236775517532839240

`record[round(A005013(n)/A004277(n))]`
-/

namespace A111099.P236775517532839240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005013 n : ℚ) / (A004277 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111099.P236775517532839240

/-! ## A111099.P8579109953950868752

`A000968(n+1)-char[A059021(n)]`
-/

namespace A111099.P8579109953950868752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059021 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000968 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111099.P8579109953950868752

/-! ## A111099.P2800420309695073455

`A000968(n+1)-char[A062765(n)]`
-/

namespace A111099.P2800420309695073455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062765 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000968 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111099.P2800420309695073455

/-! ## A111099.P13556608099150388996

`A000968(n+1)-char[A067389(n)]`
-/

namespace A111099.P13556608099150388996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000968 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111099.P13556608099150388996

