import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A352400: a(n) is the left Aurifeuillian factor of p^p + 1 for A002145(n), where A002145 lists the primes congruent to 3 (mod 4).

The programs for A352400, there is no canonical definition to state claims against.
-/

/-! ## A352400.P6654458633860887579

`A230377(∑[p?[A132225(n+1)]])`
-/

namespace A352400.P6654458633860887579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352400.P6654458633860887579

/-!
# A352401: The right Aurifeuillian factor of p^p + 1 for primes p congruent to 3 (mod 4).

The programs for A352401, there is no canonical definition to state claims against.
-/

/-! ## A352401.P17402161922720584764

`A230379(∑[p?[A132225(n+1)]])`
-/

namespace A352401.P17402161922720584764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352401.P17402161922720584764

/-!
# A352404: Product_{n>=1} (1 + x^n)^(a(n)/n!) = 1 + log(1 + x).

The programs for A352404, there is no canonical definition to state claims against.
-/

/-! ## A352404.P12288869925553731375

`A284600(A224274(n+1))/(-1)^n`
-/

namespace A352404.P12288869925553731375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284600 (A224274 (n + 1)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A352404.P12288869925553731375

/-!
# A352405: a(n) = binomial(n,2)*(binomial(n-1,2) + 2).

The programs for A352405, the canonical program `A352405.P8942584792095966573` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352405 has offset 1).

The definition of A352405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 2)*(C(n, 2)+2)` (program `A352405.P8942584792095966573`, by `A352405.P8942584792095966573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352405.P8942584792095966573

`C(n+1, 2)*(C(n, 2)+2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352405

/-- `C(n+1, 2)*(C(n, 2)+2)` -/
def P8942584792095966573.Spec : Prop :=
  ∀ n, (P8942584792095966573.a n : ℤ) = A352405 (n + 1)

theorem P8942584792095966573.correct : P8942584792095966573.Spec := by
  intro n
  simp only [A352405, Nat.add_sub_cancel]

end A352405

/-! ## A352405.P16574869581589466470

`(C(n, 2)+2)*∑[n]`
-/

namespace A352405.P16574869581589466470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352405.P16574869581589466470

namespace A352405

/-- `(C(n, 2)+2)*∑[n]` -/
def P16574869581589466470.Spec : Prop :=
  ∀ n, (P16574869581589466470.a n : ℤ) = A352405 (n + 1)

end A352405

/-! ## A352405.P468864818051132604

`(∑[n-1]+3)*∑[n]`
-/

namespace A352405.P468864818051132604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A352405.P468864818051132604

namespace A352405

/-- `(∑[n-1]+3)*∑[n]` -/
def P468864818051132604.Spec : Prop :=
  ∀ n, P468864818051132604.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P12865714275447367918

`floor(∑[n]/acot(C(n, 2)+2))`
-/

namespace A352405.P12865714275447367918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (Nat.choose n 2 + 2 : ℝ)⌋

end

end A352405.P12865714275447367918

namespace A352405

/-- `floor(∑[n]/acot(C(n, 2)+2))` -/
def P12865714275447367918.Spec : Prop :=
  ∀ n, P12865714275447367918.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P8794529567263342329

`round(∑[n]/acot(C(n, 2)+2))`
-/

namespace A352405.P8794529567263342329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (Nat.choose n 2 + 2 : ℝ))

end

end A352405.P8794529567263342329

namespace A352405

/-- `round(∑[n]/acot(C(n, 2)+2))` -/
def P8794529567263342329.Spec : Prop :=
  ∀ n, P8794529567263342329.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P9539780441430734957

`floor(C(n²+2, 2)/2+n)`
-/

namespace A352405.P9539780441430734957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n ^ 2 + 2) 2 : ℚ) / 2 + (n : ℚ)⌋

end

end A352405.P9539780441430734957

namespace A352405

/-- `floor(C(n²+2, 2)/2+n)` -/
def P9539780441430734957.Spec : Prop :=
  ∀ n, P9539780441430734957.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P12842433093640010693

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A352405.P12842433093640010693
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352405.P12842433093640010693

namespace A352405

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P12842433093640010693.Spec : Prop :=
  ∀ n, (P12842433093640010693.a n : ℤ) = A352405 (n + 1)

end A352405

/-! ## A352405.P11172190809046921836

`A006528(n)+∑[n]`
-/

namespace A352405.P11172190809046921836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352405.P11172190809046921836

namespace A352405

/-- `A006528(n)+∑[n]` -/
def P11172190809046921836.Spec : Prop :=
  ∀ n, P11172190809046921836.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P8826799408252611947

`A239352(n)+2*n²`
-/

namespace A352405.P8826799408252611947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 n + (2 * n ^ 2 : ℤ)

end

end A352405.P8826799408252611947

namespace A352405

/-- `A239352(n)+2*n²` -/
def P8826799408252611947.Spec : Prop :=
  ∀ n, P8826799408252611947.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P14737564784208003626

`A006011(n)+∑[2*n]`
-/

namespace A352405.P14737564784208003626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352405.P14737564784208003626

namespace A352405

/-- `A006011(n)+∑[2*n]` -/
def P14737564784208003626.Spec : Prop :=
  ∀ n, P14737564784208003626.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P8350760633514292593

`A061316(n)-n*∑[n]`
-/

namespace A352405.P8350760633514292593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A352405.P8350760633514292593

namespace A352405

/-- `A061316(n)-n*∑[n]` -/
def P8350760633514292593.Spec : Prop :=
  ∀ n, P8350760633514292593.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P17236271834349743878

`A006484(n)+∑[∑[n²]]`
-/

namespace A352405.P17236271834349743878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352405.P17236271834349743878

namespace A352405

/-- `A006484(n)+∑[∑[n²]]` -/
def P17236271834349743878.Spec : Prop :=
  ∀ n, P17236271834349743878.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P9875744895761068420

`∑[n+1]²-A143690(n)`
-/

namespace A352405.P9875744895761068420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A143690 n

end

end A352405.P9875744895761068420

namespace A352405

/-- `∑[n+1]²-A143690(n)` -/
def P9875744895761068420.Spec : Prop :=
  ∀ n, P9875744895761068420.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P13558960247306671832

`A066375(n+1)-(n²+1)`
-/

namespace A352405.P13558960247306671832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1) - (n ^ 2 + 1 : ℤ)

end

end A352405.P13558960247306671832

namespace A352405

/-- `A066375(n+1)-(n²+1)` -/
def P13558960247306671832.Spec : Prop :=
  ∀ n, P13558960247306671832.a n = A352405 (n + 1)

theorem P13558960247306671832.correct : P13558960247306671832.Spec := by
  intro n
  simp only [A352405, Nat.add_sub_cancel, A352405.P13558960247306671832.a, A352405.P8942584792095966573.a, A066375, A066375.P8305533867417825506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352405

/-! ## A352405.P7405262442367400204

`A101357(n)+A002817(n)`
-/

namespace A352405.P7405262442367400204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 n + A002817 n

end

end A352405.P7405262442367400204

namespace A352405

/-- `A101357(n)+A002817(n)` -/
def P7405262442367400204.Spec : Prop :=
  ∀ n, P7405262442367400204.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P11788428434307881903

`A131479(n)+A001859(n)`
-/

namespace A352405.P11788428434307881903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 n + A001859 n

end

end A352405.P11788428434307881903

namespace A352405

/-- `A131479(n)+A001859(n)` -/
def P11788428434307881903.Spec : Prop :=
  ∀ n, P11788428434307881903.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P1376913415222665637

`A135503(n)+A062026(n)`
-/

namespace A352405.P1376913415222665637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A062026 n

end

end A352405.P1376913415222665637

namespace A352405

/-- `A135503(n)+A062026(n)` -/
def P1376913415222665637.Spec : Prop :=
  ∀ n, P1376913415222665637.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P10278302787012123513

`A329523(n)+A006008(n)`
-/

namespace A352405.P10278302787012123513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n + A006008 n

end

end A352405.P10278302787012123513

namespace A352405

/-- `A329523(n)+A006008(n)` -/
def P10278302787012123513.Spec : Prop :=
  ∀ n, P10278302787012123513.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P10300749486529022739

`A318054(n)+A212501(n)`
-/

namespace A352405.P10300749486529022739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n + A212501 n

end

end A352405.P10300749486529022739

namespace A352405

/-- `A318054(n)+A212501(n)` -/
def P10300749486529022739.Spec : Prop :=
  ∀ n, P10300749486529022739.a n = A352405 (n + 1)

end A352405

/-! ## A352405.P9831848428749510145

`A001621(n)-A135503(n)`
-/

namespace A352405.P9831848428749510145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n - A135503 n

end

end A352405.P9831848428749510145

namespace A352405

/-- `A001621(n)-A135503(n)` -/
def P9831848428749510145.Spec : Prop :=
  ∀ n, P9831848428749510145.a n = A352405 (n + 1)

end A352405

/-!
# A352410: Expansion of e.g.f. LambertW( -x/(1-x) ) / (-x).

The programs for A352410, there is no canonical definition to state claims against.
-/

/-! ## A352410.P2523607411340024367

`A052868(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A352410.P2523607411340024367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052868 n + (n : ℤ) * a (n - 1)

end

end A352410.P2523607411340024367

/-! ## A352410.P4418876096507562158

`A052871(n)+A052868(n)`
-/

namespace A352410.P4418876096507562158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052871 n + A052868 n

end

end A352410.P4418876096507562158

/-! ## A352410.P145709784036564858

`A323772(n+1)-A331726(n)`
-/

namespace A352410.P145709784036564858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323772 (n + 1) - A331726 n

end

end A352410.P145709784036564858

/-! ## A352410.P7440531422722388778

`A052871(n+1)/(n+1)`
-/

namespace A352410.P7440531422722388778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052871 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A352410.P7440531422722388778

/-!
# A352412: E.g.f.: 2*x / LambertW( 2*x/(1-x) ).

The programs for A352412, there is no canonical definition to state claims against.
-/

/-! ## A352412.P11209360797198597983

`(6/(n+1)-4)*a(n-1)*A107042(2*n+3)` with `a(0)=1, a(1)=1`
-/

namespace A352412.P11209360797198597983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (6 / (n + 1 : ℚ) - 4) * a (n - 1) * (A107042 (2 * n + 3) : ℚ)

end

end A352412.P11209360797198597983

/-!
# A352413: G.f. A(x) satisfies: A(x)^4 = (1-x) * (A(x) + x)^3.

The programs for A352413, there is no canonical definition to state claims against.
-/

/-! ## A352413.P1220871337388383264

`A228711(n)+A010815(A001579(n))`
-/

namespace A352413.P1220871337388383264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228711 n + A010815 (A001579 n).toNat

end

end A352413.P1220871337388383264

/-!
# A352419: Triangle read by rows T(n,k): number of three-in-a-rows in n-dimensional tic-tac-toe through a cell that is central in k dimensions (for k=0..n).

The programs for A352419, there is no canonical definition to state claims against.
-/

/-! ## A352419.P3625869376800633281

`A003462(A002262(n))+A130321(n)-1`
-/

namespace A352419.P3625869376800633281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A002262 n).toNat + (A130321 n - 1)

end

end A352419.P3625869376800633281

/-! ## A352419.P2993794482702925554

`A005836(A059268(n))+A130321(n)-1`
-/

namespace A352419.P2993794482702925554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A059268 n).toNat + (A130321 n - 1)

end

end A352419.P2993794482702925554

/-! ## A352419.P9785775337513830031

`A003462(A002260(n+1)-1)+A130321(n)-1`
-/

namespace A352419.P9785775337513830031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A002260 (n + 1) - 1).toNat + (A130321 n - 1)

end

end A352419.P9785775337513830031

/-! ## A352419.P4238783258246868029

`A267182(A090988(n+1))+A005836(A059268(n))`
-/

namespace A352419.P4238783258246868029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A090988 (n + 1)).toNat + A005836 (A059268 n).toNat

end

end A352419.P4238783258246868029

/-! ## A352419.P18363244843779927574

`A005836(A059268(n))-(A130321(n)-1)*A057428(n)`
-/

namespace A352419.P18363244843779927574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A059268 n).toNat - (A130321 n - 1) * A057428 n

end

end A352419.P18363244843779927574

/-! ## A352419.P14905101763029405210

`∑{d}[A036561(n), A349394(#)]`
-/

namespace A352419.P14905101763029405210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349394 d

end

end A352419.P14905101763029405210

/-! ## A352419.P9207138568912557722

`∑{d}[A036561(n), A253628(#)]`
-/

namespace A352419.P9207138568912557722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A253628 d

end

end A352419.P9207138568912557722

/-!
# A352423: Numbers that are the sum of some number of consecutive prime cubes.

The programs for A352423, there is no canonical definition to state claims against.
-/

/-! ## A352423.P1006225067850745843

`A005064(A098012(n+1))`
-/

namespace A352423.P1006225067850745843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A098012 (n + 1)).toNat

end

end A352423.P1006225067850745843

/-! ## A352423.P549494886132210674

`record[∑{p}[A260443(n+1), A000578(#)]]`
-/

namespace A352423.P549494886132210674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A000578 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352423.P549494886132210674

/-! ## A352423.P11478550213767480171

`∑{p}[A066117(n+1), #^3]`
-/

namespace A352423.P11478550213767480171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 3

end

end A352423.P11478550213767480171

/-! ## A352423.P15275141009279698019

`A005064(A066117(n+1))`
-/

namespace A352423.P15275141009279698019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A066117 (n + 1)).toNat

end

end A352423.P15275141009279698019

/-!
# A352427: a(n) is the number of trailing 0's in the minimal representation of n in terms of the positive Pell numbers (A317204).

The programs for A352427, there is no canonical definition to state claims against.
-/

/-! ## A352427.P14675272490721997796

`1-Δ[A265744(n)]`
-/

namespace A352427.P14675272490721997796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A352427.P14675272490721997796

/-! ## A352427.P4473541776842986177

`val(A317204(n+1), 5)`
-/

namespace A352427.P4473541776842986177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317204 (n + 1)).toNat 5

end

end A352427.P4473541776842986177

/-! ## A352427.P17888982484138137833

`A265744(n)+1-A265744(n+1)`
-/

namespace A352427.P17888982484138137833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 n + 1 - A265744 (n + 1)

end

end A352427.P17888982484138137833

/-! ## A352427.P6576154522926150853

`A265744(n)+A024000(A265744(n+1))`
-/

namespace A352427.P6576154522926150853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 n + A024000 (A265744 (n + 1)).toNat

end

end A352427.P6576154522926150853

/-! ## A352427.P137037456238280437

`abs(Δ[A265744(n)+A024000(n)])`
-/

namespace A352427.P137037456238280437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 n + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A352427.P137037456238280437

/-!
# A352428: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/3)} binomial(n,3*k+1) * a(n-3*k-1).

The programs for A352428, there is no canonical definition to state claims against.
-/

/-! ## A352428.P9341032206289456169

`A014682(A353180(n)+A352436(n))`
-/

namespace A352428.P9341032206289456169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A353180 n + A352436 n).toNat

end

end A352428.P9341032206289456169

/-! ## A352428.P11938395157350232784

`A273943(A353180(n)+A352436(n))`
-/

namespace A352428.P11938395157350232784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A353180 n + A352436 n).toNat

end

end A352428.P11938395157350232784

/-! ## A352428.P10991930435028725933

`A353180(n)+A025466(A000142(n))`
-/

namespace A352428.P10991930435028725933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353180 n + A025466 (A000142 n).toNat

end

end A352428.P10991930435028725933

/-! ## A352428.P17533936291287760260

`A353180(n)+A103675(A084784(n))`
-/

namespace A352428.P17533936291287760260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353180 n + A103675 (A084784 n).toNat

end

end A352428.P17533936291287760260

/-!
# A352429: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/4)} binomial(n,4*k+1) * a(n-4*k-1).

The programs for A352429, there is no canonical definition to state claims against.
-/

/-! ## A352429.P10791064828785604193

`A352437(n)+A178798(A264078(n))`
-/

namespace A352429.P10791064828785604193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352437 n + A178798 (A264078 n).toNat

end

end A352429.P10791064828785604193

/-! ## A352429.P17911976708296331216

`A000027(A352437(n)-A011723(n))`
-/

namespace A352429.P17911976708296331216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A352437 n - A011723 n).toNat

end

end A352429.P17911976708296331216

/-! ## A352429.P10086946470269998631

`A000027(A352437(n)-A102683(n))`
-/

namespace A352429.P10086946470269998631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A352437 n - A102683 n).toNat

end

end A352429.P10086946470269998631

/-! ## A352429.P2800762182368027808

`A352437(n)-A025466(A131267(n))`
-/

namespace A352429.P2800762182368027808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352437 n - A025466 (A131267 n).toNat

end

end A352429.P2800762182368027808

/-! ## A352429.P679176444407102631

`A352437(n)-A170957(A008574(n))`
-/

namespace A352429.P679176444407102631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352437 n - A170957 (A008574 n).toNat

end

end A352429.P679176444407102631

/-!
# A352430: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/5)} binomial(n,5*k+1) * a(n-5*k-1).

The programs for A352430, there is no canonical definition to state claims against.
-/

/-! ## A352430.P17846080563920300143

`or(n!, A185238(5*n))`
-/

namespace A352430.P17846080563920300143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial n : ℤ) (A185238 (5 * n))

end

end A352430.P17846080563920300143

/-! ## A352430.P16221259024302533911

`A098851(∑[round(sqrt(2*n))]+1)+n!`
-/

namespace A352430.P16221259024302533911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098851 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + (Nat.factorial n : ℤ)

end

end A352430.P16221259024302533911

/-! ## A352430.P16915160694152170129

`Δ[A020639(A072855(n+2))]+n!`
-/

namespace A352430.P16915160694152170129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072855 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial n : ℤ)

end

end A352430.P16915160694152170129

/-! ## A352430.P5480898650964026048

`A185284(A398324(n+1))+A000142(n)`
-/

namespace A352430.P5480898650964026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A398324 (n + 1)).toNat + A000142 n

end

end A352430.P5480898650964026048

/-!
# A352431: Number T(n,k) of tilings of a 2k X n rectangle using dominoes and 2 X 2 tiles.

The programs for A352431, there is no canonical definition to state claims against.
-/

/-! ## A352431.P11658553029547698131

`A001650(C(A048993(n), A247505(n)))`
-/

namespace A352431.P11658553029547698131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (Nat.choose (A048993 n).toNat (A247505 n).toNat)

end

end A352431.P11658553029547698131

/-! ## A352431.P15260339102040879837

`A003173(A361277(n))%A341909(2*(n+1))`
-/

namespace A352431.P15260339102040879837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003173 (A361277 n).toNat) (A341909 (2 * (n + 1)))

end

end A352431.P15260339102040879837

/-! ## A352431.P11815756527870186593

`A285189(A285824(n))+A238123(A285824(n))`
-/

namespace A352431.P11815756527870186593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A285824 n).toNat + A238123 (A285824 n).toNat

end

end A352431.P11815756527870186593

/-!
# A352432: Number of tilings of a 4 X n rectangle using dominoes and 2 X 2 tiles.

The programs for A352432, there is no canonical definition to state claims against.
-/

/-! ## A352432.P4844559402058045522

`A352431(∑[n+3])`
-/

namespace A352432.P4844559402058045522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352432.P4844559402058045522

/-! ## A352432.P11333720544137115519

`A352431(A141214(n))%A352477(n)`
-/

namespace A352432.P11333720544137115519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352431 (A141214 n).toNat) (A352477 (n + 12))

end

end A352432.P11333720544137115519

/-! ## A352432.P9454674950215694391

`∏{p}[A352431(A141214(n)), #]`
-/

namespace A352432.P9454674950215694391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A141214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A352432.P9454674950215694391

/-!
# A352433: Number of tilings of a 5 X 2n rectangle using dominoes and 2 X 2 tiles.

The programs for A352433, there is no canonical definition to state claims against.
-/

/-! ## A352433.P17554391938923433600

`A352431(eq[5, A002262(n)])`
-/

namespace A352433.P17554391938923433600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352433.P17554391938923433600

/-! ## A352433.P9849215337685967532

`A352431(A134869(n+5)+4)`
-/

namespace A352433.P9849215337685967532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A134869 (n + 5) + 4).toNat

end

end A352433.P9849215337685967532

/-! ## A352433.P3664768733008641035

`A352431(A155212(n+1)+13)`
-/

namespace A352433.P3664768733008641035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A155212 (n + 1) + 13).toNat

end

end A352433.P3664768733008641035

/-!
# A352434: The number of simple vertices on a diagonal of a regular 2n-gon when all its vertices are connected by lines and where the diagonal passes through the center of the 2n-gon.

The programs for A352434, there is no canonical definition to state claims against.
-/

/-! ## A352434.P6175753739784427996

`n+1-A300362(A196441(n+1))`
-/

namespace A352434.P6175753739784427996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A300362 (A196441 (n + 1)).toNat

end

end A352434.P6175753739784427996

/-! ## A352434.P9109773118495794208

`n-A136565(A094024(n))`
-/

namespace A352434.P9109773118495794208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136565 (A094024 n).toNat

end

end A352434.P9109773118495794208

/-! ## A352434.P14538115572126066187

`n+1-a(A055874(∏{d}[n, #]+1))` with `a(0)=0, a(1)=1`
-/

namespace A352434.P14538115572126066187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℤ) - a (A055874 (∏ d ∈ Nat.divisors (f1 n), d + 1)).toNat

end

end A352434.P14538115572126066187

/-! ## A352434.P10734513622436220076

`and(n, -A214027(A210865(n+1)))`
-/

namespace A352434.P10734513622436220076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-A214027 (A210865 (n + 1)).toNat)

end

end A352434.P10734513622436220076

/-! ## A352434.P6072505235500809623

`n-A023645(A119479(n+1))`
-/

namespace A352434.P6072505235500809623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023645 (A119479 (n + 1)).toNat

end

end A352434.P6072505235500809623

/-!
# A352435: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n,2*k+1) * a(k) * a(n-2*k-1).

The programs for A352435, there is no canonical definition to state claims against.
-/

/-! ## A352435.P1943809022520969688

`A055768(A143435(n)+1)`
-/

namespace A352435.P1943809022520969688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A143435 n + 1).toNat

end

end A352435.P1943809022520969688

/-! ## A352435.P524773101045295148

`A074840(A000602(n)+A000255(n))`
-/

namespace A352435.P524773101045295148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A000602 n + A000255 n).toNat

end

end A352435.P524773101045295148

/-! ## A352435.P8911107097265985620

`A004526(A229046(n)+A202365(n))`
-/

namespace A352435.P8911107097265985620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A229046 n + A202365 n).toNat

end

end A352435.P8911107097265985620

/-!
# A352436: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/3)} binomial(n,3*k+1) * a(k) * a(n-3*k-1).

The programs for A352436, there is no canonical definition to state claims against.
-/

/-! ## A352436.P15486303323413881017

`A352428(n)+A025466(A000142(n))`
-/

namespace A352436.P15486303323413881017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352428 n + A025466 (A000142 n).toNat

end

end A352436.P15486303323413881017

/-! ## A352436.P2440463618952303796

`A353180(n)+A025466(A000153(n))`
-/

namespace A352436.P2440463618952303796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353180 n + A025466 (A000153 n).toNat

end

end A352436.P2440463618952303796

/-! ## A352436.P6572909940504408581

`A353180(n)+A025466(A001710(n))`
-/

namespace A352436.P6572909940504408581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353180 n + A025466 (A001710 n).toNat

end

end A352436.P6572909940504408581

/-! ## A352436.P3344631171560718057

`A352428(n)+A079365(A074377(n))`
-/

namespace A352436.P3344631171560718057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352428 n + A079365 (A074377 n).toNat

end

end A352436.P3344631171560718057

/-!
# A352437: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/4)} binomial(n,4*k+1) * a(k) * a(n-4*k-1).

The programs for A352437, there is no canonical definition to state claims against.
-/

/-! ## A352437.P17661569867312866901

`A011723(n)+A000027(A352429(n))`
-/

namespace A352437.P17661569867312866901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011723 n + A000027 (A352429 n).toNat

end

end A352437.P17661569867312866901

/-! ## A352437.P16884199009458316431

`A352429(n)+A025466(A131267(n))`
-/

namespace A352437.P16884199009458316431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352429 n + A025466 (A131267 n).toNat

end

end A352437.P16884199009458316431

/-! ## A352437.P15154528527392228354

`A352429(n)+A170957(A008574(n))`
-/

namespace A352437.P15154528527392228354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352429 n + A170957 (A008574 n).toNat

end

end A352437.P15154528527392228354

/-! ## A352437.P61039538822613611

`A352429(n)+A185284(A333883(n))`
-/

namespace A352437.P61039538822613611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352429 n + A185284 (A333883 n).toNat

end

end A352437.P61039538822613611

/-! ## A352437.P7588942673620242169

`A252459(n+1)+A000027(A352429(n))`
-/

namespace A352437.P7588942673620242169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (n + 1) + A000027 (A352429 n).toNat

end

end A352437.P7588942673620242169

/-!
# A352438: Numbers k whose decimal expansion starts with the sum of the last two digits of k.

The programs for A352438, there is no canonical definition to state claims against.
-/

/-! ## A352438.P3961747550550021258

`record[A194233(n+1)+A037860(n+1)]`
-/

namespace A352438.P3961747550550021258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (n + 1) + A037860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352438.P3961747550550021258

/-! ## A352438.P1595956533349684086

`record[A194233(n+1)+A037904(n+1)]`
-/

namespace A352438.P1595956533349684086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (n + 1) + A037904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352438.P1595956533349684086

/-! ## A352438.P9922333816925629077

`record[A194233(n+1)+A064834(n+1)]`
-/

namespace A352438.P9922333816925629077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (n + 1) + A064834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352438.P9922333816925629077

/-! ## A352438.P15487782970788372350

`A118959(n+1)+A033665(A068634(n+1))`
-/

namespace A352438.P15487782970788372350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1) + A033665 (A068634 (n + 1)).toNat

end

end A352438.P15487782970788372350

/-! ## A352438.P375132473433282473

`eq[A086008(n), A376010(n+2)]`
-/

namespace A352438.P375132473433282473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352438.P375132473433282473

/-!
# A352442: Largest prime "r" among all pairs of Goldbach partitions of A352240(n), (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352442, there is no canonical definition to state claims against.
-/

/-! ## A352442.P1497715680784894681

`A352240(n+1)-A352443(n+1)`
-/

namespace A352442.P1497715680784894681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352240 (n + 1) - A352443 (n + 1)

end

end A352442.P1497715680784894681

/-! ## A352442.P4424592749822399976

`A352444(n+1)+A352445(n+1)-A352443(n+1)`
-/

namespace A352442.P4424592749822399976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352444 (n + 1) + (A352445 (n + 1) - A352443 (n + 1))

end

end A352442.P4424592749822399976

/-! ## A352442.P10525407255580871358

`A187797(A076084(n+1))-A352443(n+1)`
-/

namespace A352442.P10525407255580871358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A076084 (n + 1)).toNat - A352443 (n + 1)

end

end A352442.P10525407255580871358

/-! ## A352442.P6765550874247418512

`A187797(A151764(n+1))-A352443(n+1)`
-/

namespace A352442.P6765550874247418512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A151764 (n + 1)).toNat - A352443 (n + 1)

end

end A352442.P6765550874247418512

/-! ## A352442.P14740227655085095991

`A187797(A161953(n+1))-A352443(n+1)`
-/

namespace A352442.P14740227655085095991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A161953 (n + 1)).toNat - A352443 (n + 1)

end

end A352442.P14740227655085095991

/-!
# A352443: Smallest prime "s" among all pairs of Goldbach partitions of A352240(n), (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352443, there is no canonical definition to state claims against.
-/

/-! ## A352443.P264966898677854447

`A352240(n+1)-A352442(n+1)`
-/

namespace A352443.P264966898677854447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352240 (n + 1) - A352442 (n + 1)

end

end A352443.P264966898677854447

/-! ## A352443.P10180941959422609750

`A352444(n+1)+A352445(n+1)-A352442(n+1)`
-/

namespace A352443.P10180941959422609750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352444 (n + 1) + (A352445 (n + 1) - A352442 (n + 1))

end

end A352443.P10180941959422609750

/-! ## A352443.P10597796032752872909

`A187797(A161953(n+1))-A352442(n+1)`
-/

namespace A352443.P10597796032752872909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A161953 (n + 1)).toNat - A352442 (n + 1)

end

end A352443.P10597796032752872909

/-! ## A352443.P17866918208023892812

`A187797(n+1)-A352442(A187829(n+1))`
-/

namespace A352443.P17866918208023892812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (n + 1) - A352442 (A187829 (n + 1)).toNat

end

end A352443.P17866918208023892812

/-! ## A352443.P16527519596436138114

`A334160(n+1)-2-A352442(A161953(n+1))`
-/

namespace A352443.P16527519596436138114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1) - 2 - A352442 (A161953 (n + 1)).toNat

end

end A352443.P16527519596436138114

/-!
# A352444: Largest prime "q" among all pairs of Goldbach partitions of A352240(n), (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352444, there is no canonical definition to state claims against.
-/

/-! ## A352444.P3862968210458178979

`A352240(n+1)-A352445(n+1)`
-/

namespace A352444.P3862968210458178979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352240 (n + 1) - A352445 (n + 1)

end

end A352444.P3862968210458178979

/-! ## A352444.P10439281202498053216

`A352442(n+1)+A352443(n+1)-A352445(n+1)`
-/

namespace A352444.P10439281202498053216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (n + 1) + (A352443 (n + 1) - A352445 (n + 1))

end

end A352444.P10439281202498053216

/-! ## A352444.P16269101098521956773

`A187797(A076084(n+1))-A352445(n+1)`
-/

namespace A352444.P16269101098521956773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A076084 (n + 1)).toNat - A352445 (n + 1)

end

end A352444.P16269101098521956773

/-! ## A352444.P2794095226334869324

`A136548(A006881(n+2))%A261058(3*(n+1))`
-/

namespace A352444.P2794095226334869324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (A006881 (n + 2)).toNat) (A261058 (3 * (n + 1)))

end

end A352444.P2794095226334869324

/-! ## A352444.P3931640227056395379

`A180101(or(A055494(n+1), A085232(3*n+4))+1)`
-/

namespace A352444.P3931640227056395379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A055494 (n + 1)) (A085232 (3 * n + 4)) + 1).toNat

end

end A352444.P3931640227056395379

/-!
# A352445: Smallest prime "p" among all pairs of Goldbach partitions of A352240(n), (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352445, there is no canonical definition to state claims against.
-/

/-! ## A352445.P721554974760600295

`A352240(n+1)-A352444(n+1)`
-/

namespace A352445.P721554974760600295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352240 (n + 1) - A352444 (n + 1)

end

end A352445.P721554974760600295

/-! ## A352445.P8287129896499311489

`A352442(n+1)+A352443(n+1)-A352444(n+1)`
-/

namespace A352445.P8287129896499311489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (n + 1) + (A352443 (n + 1) - A352444 (n + 1))

end

end A352445.P8287129896499311489

/-! ## A352445.P937369115578798450

`A000027(A352443(n+1)+A352442(n+1))%A352444(n+1)`
-/

namespace A352445.P937369115578798450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A352443 (n + 1) + A352442 (n + 1)).toNat) (A352444 (n + 1))

end

end A352445.P937369115578798450

/-! ## A352445.P5411352714025977784

`A006530((A352443(n+1)+A352442(n+1))%A352444(n+1))`
-/

namespace A352445.P5411352714025977784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A352443 (n + 1) + A352442 (n + 1)) (A352444 (n + 1))).toNat

end

end A352445.P5411352714025977784

/-! ## A352445.P10267623982567327485

`A028310(A352443(n+1)+A352442(n+1))%A352444(n+1)`
-/

namespace A352445.P10267623982567327485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A352443 (n + 1) + A352442 (n + 1)).toNat) (A352444 (n + 1))

end

end A352445.P10267623982567327485

/-! ## A352445.P11148003088026428792

`A352240(A000027(n+1))%A352444(n+1)`
-/

namespace A352445.P11148003088026428792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352240 (A000027 (n + 1)).toNat) (A352444 (n + 1))

end

end A352445.P11148003088026428792

/-! ## A352445.P14606666927804970995

`A014963(A352240(n+1)%A352444(n+1))`
-/

namespace A352445.P14606666927804970995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A352240 (n + 1)) (A352444 (n + 1))).toNat

end

end A352445.P14606666927804970995

/-! ## A352445.P8971058038719822868

`∪[A352297(n+1), A352240(n+5)]%A352444(n+1)`
-/

namespace A352445.P8971058038719822868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352240 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A352444 (n + 1))

end

end A352445.P8971058038719822868

/-!
# A352446: Total number of parts in all partitions of n into an even number of consecutive parts.

The programs for A352446, there is no canonical definition to state claims against.
-/

/-! ## A352446.P5580992208292710776

`A204217(n+1)-A341309(n+1)`
-/

namespace A352446.P5580992208292710776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - A341309 (n + 1)

end

end A352446.P5580992208292710776

/-! ## A352446.P16635070906790531875

`A204217(n+1)-A069289(2*(n+1))`
-/

namespace A352446.P16635070906790531875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - A069289 (2 * (n + 1))

end

end A352446.P16635070906790531875

/-! ## A352446.P5676616093919105597

`A338616(n+1)/2-A341309(n+1)`
-/

namespace A352446.P5676616093919105597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2 - (A341309 (n + 1) : ℚ)

end

end A352446.P5676616093919105597

/-! ## A352446.P13874940771910810743

`A338616(n+1)/2-A069289(2*(n+1))`
-/

namespace A352446.P13874940771910810743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2 - (A069289 (2 * (n + 1)) : ℚ)

end

end A352446.P13874940771910810743

/-! ## A352446.P7637429482651633783

`A204217(n+1)-A347162(2*(n+1))%24`
-/

namespace A352446.P7637429482651633783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - Int.tmod (A347162 (2 * (n + 1))) 24

end

end A352446.P7637429482651633783

/-! ## A352446.P6274776234393617565

`A204217(n+1)-A069289(n+2+n)%23`
-/

namespace A352446.P6274776234393617565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - Int.tmod (A069289 (n + 2 + n)) 23

end

end A352446.P6274776234393617565

/-! ## A352446.P11980992582536252824

`A004526(A338616(n+1))-A341309(n+1)`
-/

namespace A352446.P11980992582536252824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338616 (n + 1)).toNat - A341309 (n + 1)

end

end A352446.P11980992582536252824

/-! ## A352446.P9800062592654030564

`A338616(n+1)/2-A000027(A069289(n+2+n))`
-/

namespace A352446.P9800062592654030564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2 - (A000027 (A069289 (n + 2 + n)).toNat : ℚ)

end

end A352446.P9800062592654030564

/-! ## A352446.P8500063464031284867

`A008619(A338616(n+1)-1)-A000027(A069289(2*(n+1)))`
-/

namespace A352446.P8500063464031284867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A338616 (n + 1) - 1).toNat - A000027 (A069289 (2 * (n + 1))).toNat

end

end A352446.P8500063464031284867

/-! ## A352446.P8106026181922312901

`(A348953(2*(n+1))+A070039(2*(n+1)))/2-A000027(A069289(2*(n+1)))`
-/

namespace A352446.P8106026181922312901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348953 (2 * (n + 1)) + A070039 (2 * (n + 1)) : ℚ) / 2 - (A000027 (A069289 (2 * (n + 1))).toNat : ℚ)

end

end A352446.P8106026181922312901

/-!
# A352447: Numbers k such that BarnesG(k) is divisible by Gamma(k).

The programs for A352447, there is no canonical definition to state claims against.
-/

/-! ## A352447.P14144991378258298165

`lt[1, (n+1-∑{d}[1-n, #])²]`
-/

namespace A352447.P14144991378258298165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f3 n).natAbs, d : ℕ) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352447.P14144991378258298165

/-! ## A352447.P16230586406353503362

`comp[A175787(n+1)]+1`
-/

namespace A352447.P16230586406353503362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P16230586406353503362

/-! ## A352447.P18321900214817152119

`comp[A266620(n+1)]+1`
-/

namespace A352447.P18321900214817152119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P18321900214817152119

/-! ## A352447.P17434397798781050853

`comp[A025492(n+2)]+1`
-/

namespace A352447.P17434397798781050853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P17434397798781050853

/-! ## A352447.P12793801598467087202

`comp[A029908(n+2)]+1`
-/

namespace A352447.P12793801598467087202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P12793801598467087202

/-! ## A352447.P17598358655839230314

`comp[A046022(n+2)]+1`
-/

namespace A352447.P17598358655839230314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P17598358655839230314

/-! ## A352447.P15403506022083235370

`comp[A135682(n+2)]+1`
-/

namespace A352447.P15403506022083235370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135682 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P15403506022083235370

/-! ## A352447.P3069027365420881506

`comp[record[A001414(n+2)]]+1`
-/

namespace A352447.P3069027365420881506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P3069027365420881506

/-! ## A352447.P18320351148878489633

`lt[n-1, A072480(n)²]+1`
-/

namespace A352447.P18320351148878489633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A352447.P18320351148878489633

/-! ## A352447.P10994676631375970739

`A018252(n+1)%(3^n)+1`
-/

namespace A352447.P10994676631375970739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 1)) (3 ^ n : ℤ) + 1

end

end A352447.P10994676631375970739

/-!
# A352448: Expansion of e.g.f. LambertW( -2*x/(1-x) ) / (-2*x).

The programs for A352448, there is no canonical definition to state claims against.
-/

/-! ## A352448.P7307522290408510969

`A376098(n+1)/(n+1)`
-/

namespace A352448.P7307522290408510969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376098 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A352448.P7307522290408510969

/-! ## A352448.P8922734223999695258

`A360939(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A352448.P8922734223999695258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360939 n + (n : ℤ) * a (n - 1)

end

end A352448.P8922734223999695258

/-! ## A352448.P17881740649519944938

`A376098(n)+A360939(n)`
-/

namespace A352448.P17881740649519944938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376098 n + A360939 n

end

end A352448.P17881740649519944938

/-!
# A352449: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k AND n = k (where AND denotes the bitwise AND operator).

The programs for A352449, the canonical program `A352449.P2406120621837797886` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352449 has offset 0).

The definition of A352449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352449.P2406120621837797886

`and(n, A133179(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A352449

/-- `and(n, A133179(n))` -/
def P2406120621837797886.Spec : Prop :=
  ∀ n, P2406120621837797886.a n = A352449 n

theorem P2406120621837797886.correct : P2406120621837797886.Spec := by
  intro n
  simp only [A352449]

end A352449

/-! ## A352449.P12619474714638471827

`n-and(n, A219843(n))`
-/

namespace A352449.P12619474714638471827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A219843 n)

end

end A352449.P12619474714638471827

namespace A352449

/-- `n-and(n, A219843(n))` -/
def P12619474714638471827.Spec : Prop :=
  ∀ n, P12619474714638471827.a n = A352449 n

end A352449

/-! ## A352449.P3063327022896314610

`and(n, A001317(n))`
-/

namespace A352449.P3063327022896314610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A001317 n)

end

end A352449.P3063327022896314610

namespace A352449

/-- `and(n, A001317(n))` -/
def P3063327022896314610.Spec : Prop :=
  ∀ n, P3063327022896314610.a n = A352449 n

end A352449

/-! ## A352449.P12693888098208844006

`and(n, A087745(2*n))`
-/

namespace A352449.P12693888098208844006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A087745 (2 * n))

end

end A352449.P12693888098208844006

namespace A352449

/-- `and(n, A087745(2*n))` -/
def P12693888098208844006.Spec : Prop :=
  ∀ n, P12693888098208844006.a n = A352449 n

end A352449

/-! ## A352449.P16059935441152491179

`and(n, ∪[A038183(n), A038192(n)])`
-/

namespace A352449.P16059935441152491179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A352449.P16059935441152491179

namespace A352449

/-- `and(n, ∪[A038183(n), A038192(n)])` -/
def P16059935441152491179.Spec : Prop :=
  ∀ n, (P16059935441152491179.a n : ℤ) = A352449 n

end A352449

/-! ## A352449.P14577107450383709141

`and(n, A100735(2*n)/A100735(n))`
-/

namespace A352449.P14577107450383709141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway ((A100735 (2 * n) : ℚ) / (A100735 n : ℚ)))

end

end A352449.P14577107450383709141

namespace A352449

/-- `and(n, A100735(2*n)/A100735(n))` -/
def P14577107450383709141.Spec : Prop :=
  ∀ n, P14577107450383709141.a n = A352449 n

end A352449

/-! ## A352449.P1590211547489274002

`n-and(n, A267675(n))`
-/

namespace A352449.P1590211547489274002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A267675 n)

end

end A352449.P1590211547489274002

namespace A352449

/-- `n-and(n, A267675(n))` -/
def P1590211547489274002.Spec : Prop :=
  ∀ n, P1590211547489274002.a n = A352449 n

end A352449

/-! ## A352449.P9269128987288595210

`and(n, A117998(n)/2^n)`
-/

namespace A352449.P9269128987288595210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway ((A117998 n : ℚ) / (2 ^ n : ℚ)))

end

end A352449.P9269128987288595210

namespace A352449

/-- `and(n, A117998(n)/2^n)` -/
def P9269128987288595210.Spec : Prop :=
  ∀ n, P9269128987288595210.a n = A352449 n

end A352449

/-! ## A352449.P14848805442444722713

`and(n, A276618(∑[n]))`
-/

namespace A352449.P14848805442444722713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A276618 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A352449.P14848805442444722713

namespace A352449

/-- `and(n, A276618(∑[n]))` -/
def P14848805442444722713.Spec : Prop :=
  ∀ n, P14848805442444722713.a n = A352449 n

end A352449

/-! ## A352449.P6186698060271404002

`and(n, record[A276618(n)/A276617(n+1)])`
-/

namespace A352449.P6186698060271404002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276618 n : ℚ) / (A276617 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A352449.P6186698060271404002

namespace A352449

/-- `and(n, record[A276618(n)/A276617(n+1)])` -/
def P6186698060271404002.Spec : Prop :=
  ∀ n, P6186698060271404002.a n = A352449 n

end A352449

/-!
# A352450: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k AND n > 0 (where AND denotes the bitwise AND operator).

The programs for A352450, there is no canonical definition to state claims against.
-/

/-! ## A352450.P2374900805629669091

`n-A352458(n)`
-/

namespace A352450.P2374900805629669091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352458 n

end

end A352450.P2374900805629669091

/-! ## A352450.P1526717706344816366

`A109043(xor(n, A352458(n)))`
-/

namespace A352450.P1526717706344816366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (Int.xor (n : ℤ) (A352458 n)).toNat

end

end A352450.P1526717706344816366

/-! ## A352450.P13602007714649246620

`-(A352458(n)+A001489(n))`
-/

namespace A352450.P13602007714649246620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A352458 n + A001489 n)

end

end A352450.P13602007714649246620

/-! ## A352450.P10189931843213518290

`xor(A028310(n), A352458(A028310(n)))`
-/

namespace A352450.P10189931843213518290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028310 n) (A352458 (A028310 n).toNat)

end

end A352450.P10189931843213518290

/-! ## A352450.P15460956617691206914

`xor(A214417(A105027(n)), A352458(n))`
-/

namespace A352450.P15460956617691206914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A214417 (A105027 n).toNat) (A352458 n)

end

end A352450.P15460956617691206914

/-! ## A352450.P6319779860171677372

`xor(A110654(A005843(n)), A352458(n))`
-/

namespace A352450.P6319779860171677372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110654 (A005843 n).toNat) (A352458 n)

end

end A352450.P6319779860171677372

/-! ## A352450.P2770627315639204503

`xor(A004526(2*n), A352458(n))`
-/

namespace A352450.P2770627315639204503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (2 * n)) (A352458 n)

end

end A352450.P2770627315639204503

/-! ## A352450.P7807095153694216856

`n-and(n, A001317(A035327(n)))`
-/

namespace A352450.P7807095153694216856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A001317 (A035327 n).toNat)

end

end A352450.P7807095153694216856

/-! ## A352450.P3150645862575806654

`n-and(n, A133179(A010078(n+1)))`
-/

namespace A352450.P3150645862575806654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A133179 (A010078 (n + 1)).toNat)

end

end A352450.P3150645862575806654

/-!
# A352451: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k+1 divides n.

The programs for A352451, there is no canonical definition to state claims against.
-/

/-! ## A352451.P3075580660915548924

`n-A352452(n)`
-/

namespace A352451.P3075580660915548924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352452 n

end

end A352451.P3075580660915548924

/-! ## A352451.P7986254329281152266

`xor(n, A352452(A028310(n)))`
-/

namespace A352451.P7986254329281152266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A352452 (A028310 n).toNat)

end

end A352451.P7986254329281152266

/-! ## A352451.P6609088521013731312

`abs(A352452(n)+A001489(n))`
-/

namespace A352451.P6609088521013731312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352452 n + A001489 n|

end

end A352451.P6609088521013731312

/-! ## A352451.P9756659459268489360

`xor(A061579(A061579(n)), A352452(n))`
-/

namespace A352451.P9756659459268489360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061579 (A061579 n).toNat) (A352452 n)

end

end A352451.P9756659459268489360

/-! ## A352451.P6825702636556145301

`xor(A175126(A005843(n)), A352452(n))`
-/

namespace A352451.P6825702636556145301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175126 (A005843 n).toNat) (A352452 n)

end

end A352451.P6825702636556145301

/-! ## A352451.P10928947473177074050

`xor(A214417(A105027(n)), A352452(n))`
-/

namespace A352451.P10928947473177074050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A214417 (A105027 n).toNat) (A352452 n)

end

end A352451.P10928947473177074050

/-! ## A352451.P1058068701924614839

`A035327(A352452(n)+A010078(n+1))`
-/

namespace A352451.P1058068701924614839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A352452 n + A010078 (n + 1)).toNat

end

end A352451.P1058068701924614839

/-! ## A352451.P576011684145134702

`∑{d}[n, and(n, A011782(#))]`
-/

namespace A352451.P576011684145134702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (n : ℤ) (A011782 d)

end

end A352451.P576011684145134702

/-! ## A352451.P10984275188156426541

`A110654(and(2*n, ∑{d}[n, 2^#]))`
-/

namespace A352451.P10984275188156426541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Nat.land (2 * n) (∑ d ∈ Nat.divisors (f1 n), 2 ^ d))

end

end A352451.P10984275188156426541

/-! ## A352451.P14533048918044568828

`A001281(and(2*n, A055895(n)))`
-/

namespace A352451.P14533048918044568828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.land (2 * n : ℤ) (A055895 n)).toNat

end

end A352451.P14533048918044568828

/-! ## A352451.P4307128359003822428

`A004525(and(2*n, A055895(n)))`
-/

namespace A352451.P4307128359003822428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (2 * n : ℤ) (A055895 n)).toNat

end

end A352451.P4307128359003822428

/-! ## A352451.P3066265786592391304

`A175126(and(2*n, A055895(n)))`
-/

namespace A352451.P3066265786592391304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.land (2 * n : ℤ) (A055895 n)).toNat

end

end A352451.P3066265786592391304

/-! ## A352451.P6832104038403272251

`A110654(and(∑{d}[n, 2^#], A005843(n)))`
-/

namespace A352451.P6832104038403272251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.land ((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℤ) (A005843 n)).toNat

end

end A352451.P6832104038403272251

/-!
# A352452: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k+1 does not divide n.

The programs for A352452, there is no canonical definition to state claims against.
-/

/-! ## A352452.P199187660816028920

`n-A352451(n)`
-/

namespace A352452.P199187660816028920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352451 n

end

end A352452.P199187660816028920

/-! ## A352452.P15674456982382829476

`-(A352451(n)+A001489(n))`
-/

namespace A352452.P15674456982382829476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A352451 n + A001489 n)

end

end A352452.P15674456982382829476

/-! ## A352452.P13184069496539361014

`xor(A175126(2*n), A352451(n))`
-/

namespace A352452.P13184069496539361014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175126 (2 * n)) (A352451 n)

end

end A352452.P13184069496539361014

/-! ## A352452.P2800159129905029378

`A005408(n)%(A352451(n)+1+n)`
-/

namespace A352452.P2800159129905029378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A352451 n + 1 + (n : ℤ))

end

end A352452.P2800159129905029378

/-! ## A352452.P15163447067959288009

`xor(A263273(A263273(n)), A352451(n))`
-/

namespace A352452.P15163447067959288009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A263273 (A263273 n).toNat) (A352451 n)

end

end A352452.P15163447067959288009

/-! ## A352452.P5057637380693879526

`xor(A110654(2*n), A352451(n))`
-/

namespace A352452.P5057637380693879526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110654 (2 * n)) (A352451 n)

end

end A352452.P5057637380693879526

/-! ## A352452.P15692574686522192103

`xor(A004526(2*n), A352451(n))`
-/

namespace A352452.P15692574686522192103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (2 * n)) (A352451 n)

end

end A352452.P15692574686522192103

/-!
# A352456: Smallest Matula-Goebel number of a rooted binary tree (everywhere 0 or 2 children) of n childless vertices.

The programs for A352456, there is no canonical definition to state claims against.
-/

/-! ## A352456.P4113301299612668815

`A245824(∑[A000055(n)])`
-/

namespace A352456.P4113301299612668815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352456.P4113301299612668815

/-! ## A352456.P13538703789480430204

`A245824(A173282(n)+1)`
-/

namespace A352456.P13538703789480430204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (A173282 n + 1).toNat

end

end A352456.P13538703789480430204

/-! ## A352456.P17816847009113351659

`A245824(∑[A001190(n)]+1)`
-/

namespace A352456.P17816847009113351659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A352456.P17816847009113351659

/-!
# A352458: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k AND n = 0 (where AND denotes the bitwise AND operator).

The programs for A352458, there is no canonical definition to state claims against.
-/

/-! ## A352458.P14973770092170177910

`n-A352450(n)`
-/

namespace A352458.P14973770092170177910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352450 n

end

end A352458.P14973770092170177910

/-! ## A352458.P17090399607109333453

`xor(n, A352450(A028310(n)))`
-/

namespace A352458.P17090399607109333453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A352450 (A028310 n).toNat)

end

end A352458.P17090399607109333453

/-! ## A352458.P16245191295283362527

`abs(A352450(n)+A001489(n))`
-/

namespace A352458.P16245191295283362527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352450 n + A001489 n|

end

end A352458.P16245191295283362527

/-! ## A352458.P2612022796031827788

`xor(sqrt(A000290(n)), A352450(n))`
-/

namespace A352458.P2612022796031827788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))) (A352450 n)

end

end A352458.P2612022796031827788

/-! ## A352458.P17304770090106466181

`xor(A061579(A061579(n)), A352450(n))`
-/

namespace A352458.P17304770090106466181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061579 (A061579 n).toNat) (A352450 n)

end

end A352458.P17304770090106466181

/-! ## A352458.P11915417740992182975

`A167614(n+1)%(A352450(n)+A167499(n))`
-/

namespace A352458.P11915417740992182975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (n + 1)) (A352450 n + A167499 n)

end

end A352458.P11915417740992182975

/-! ## A352458.P12847198945614437357

`xor(A056539(A056539(n)), A352450(n))`
-/

namespace A352458.P12847198945614437357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056539 (A056539 n).toNat) (A352450 n)

end

end A352458.P12847198945614437357

/-! ## A352458.P15121907852464098495

`xor(A214417(A105027(n)), A352450(n))`
-/

namespace A352458.P15121907852464098495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A214417 (A105027 n).toNat) (A352450 n)

end

end A352458.P15121907852464098495

/-! ## A352458.P9779075521633058061

`xor(A004525(2*n), A352450(n))`
-/

namespace A352458.P9779075521633058061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (2 * n)) (A352450 n)

end

end A352458.P9779075521633058061

/-! ## A352458.P2569118507625731942

`xor(A110654(2*n), A352450(n))`
-/

namespace A352458.P2569118507625731942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110654 (2 * n)) (A352450 n)

end

end A352458.P2569118507625731942

/-! ## A352458.P5065908190761185856

`xor(A001281(2*n), A352450(n))`
-/

namespace A352458.P5065908190761185856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001281 (2 * n)) (A352450 n)

end

end A352458.P5065908190761185856

/-! ## A352458.P15720646760283634147

`xor(A006370(2*n), A352450(n))`
-/

namespace A352458.P15720646760283634147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006370 (2 * n)) (A352450 n)

end

end A352458.P15720646760283634147

/-! ## A352458.P8560732163963828081

`and(n, A001317(A035327(n)))`
-/

namespace A352458.P8560732163963828081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A001317 (A035327 n).toNat)

end

end A352458.P8560732163963828081

/-! ## A352458.P9615387659635733295

`and(n, A133179(A010078(n+1)))`
-/

namespace A352458.P9615387659635733295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A133179 (A010078 (n + 1)).toNat)

end

end A352458.P9615387659635733295

/-! ## A352458.P6305342453525843962

`xor(A003987(∑[n]), A352450(n))`
-/

namespace A352458.P6305342453525843962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 (∑ j ∈ Finset.range (n + 1), f1 j)) (A352450 n)

end

end A352458.P6305342453525843962

/-!
# A352459: First of four consecutive primes p,q,r,s such that p+q+r+s is divisible by A001414(p+q).

The programs for A352459, there is no canonical definition to state claims against.
-/

/-! ## A352459.P10122344363926785533

`A069688(A220273(n+1)^A110566(n+1))`
-/

namespace A352459.P10122344363926785533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069688 (SequenceMachineLib.roundAway ((A220273 (n + 1) : ℚ) ^ (A110566 (n + 1) : ℤ))).toNat

end

end A352459.P10122344363926785533

/-!
# A352460: Triangle read by rows: T(n,k), 2 <= k < n is the number of n-element k-ary unlabeled quasi-full rooted trees.

The programs for A352460, there is no canonical definition to state claims against.
-/

/-! ## A352460.P18431968056595557143

`A328346(A130321(n))+A255270(A285267(n+4))`
-/

namespace A352460.P18431968056595557143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328346 (A130321 n).toNat + A255270 (A285267 (n + 4)).toNat

end

end A352460.P18431968056595557143

/-! ## A352460.P3630278679547544128

`A089047(A205558(n+1)%A080201(n+1))`
-/

namespace A352460.P3630278679547544128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089047 (Int.tmod (A205558 (n + 1)) (A080201 (n + 1))).toNat

end

end A352460.P3630278679547544128

/-!
# A352461: Numbers k whose decimal expansion starts with the sum of digits of k.

The programs for A352461, there is no canonical definition to state claims against.
-/

/-! ## A352461.P11777945349725441879

`record[A052018(A007953(n)+2)]`
-/

namespace A352461.P11777945349725441879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (A007953 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352461.P11777945349725441879

/-! ## A352461.P3678020367647395783

`A052018(n+2)%A051980(n+1)`
-/

namespace A352461.P3678020367647395783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052018 (n + 2)) (A051980 (n + 1))

end

end A352461.P3678020367647395783

/-! ## A352461.P4292182683386262836

`A052018(n+2)+A000007(A046682(n))`
-/

namespace A352461.P4292182683386262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 2) + A000007 (A046682 n).toNat

end

end A352461.P4292182683386262836

/-! ## A352461.P3913740772787848334

`A052018(n+2)+A000007(A288256(n))`
-/

namespace A352461.P3913740772787848334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 2) + A000007 (A288256 (n + 10)).toNat

end

end A352461.P3913740772787848334

/-! ## A352461.P14379444143587077434

`A186685(A161409(n))+A052018(n+2)`
-/

namespace A352461.P14379444143587077434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (A161409 n).toNat + A052018 (n + 2)

end

end A352461.P14379444143587077434

/-!
# A352462: Numbers k with the property that k ends in the sum of the digits of k.

The programs for A352462, there is no canonical definition to state claims against.
-/

/-! ## A352462.P17471982674668891180

`∑[A051444(A272750(3*n+4))+1]`
-/

namespace A352462.P17471982674668891180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A272750 (3 * n + 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352462.P17471982674668891180

/-! ## A352462.P11696504337695223459

`∑[A085952(A102683(n)*A107458(n))]`
-/

namespace A352462.P11696504337695223459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085952 (A102683 n * A107458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352462.P11696504337695223459

/-! ## A352462.P14275440722253728738

`∑[A004442(A122840(n+1)*A252079(n+1))]`
-/

namespace A352462.P14275440722253728738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A122840 (n + 1) * A252079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352462.P14275440722253728738

/-! ## A352462.P6592287061175167252

`∑[A108064(A108064(n+1)^A114099(n))]`
-/

namespace A352462.P6592287061175167252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108064 (SequenceMachineLib.roundAway ((A108064 (n + 1) : ℚ) ^ (A114099 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352462.P6592287061175167252

/-! ## A352462.P3774576388642336589

`∑[A338678(A327449(n+1)+1)]`
-/

namespace A352462.P3774576388642336589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338678 (A327449 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352462.P3774576388642336589

/-!
# A352463: Numbers k with the property that the product of the digits of k starts k.

The programs for A352463, there is no canonical definition to state claims against.
-/

/-! ## A352463.P15201357433664561918

`eq[n, A028310(A321243(n))]`
-/

namespace A352463.P15201357433664561918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A321243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352463.P15201357433664561918

/-! ## A352463.P1328625137579005852

`∑[A238480(Δ[A010785(n)])]`
-/

namespace A352463.P1328625137579005852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352463.P1328625137579005852

/-! ## A352463.P1687081732860411783

`∑[A354804(Δ[A010785(n)])]`
-/

namespace A352463.P1687081732860411783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354804 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352463.P1687081732860411783

/-! ## A352463.P18000369176289284266

`record[A004719(n+1)-A347470(n)]`
-/

namespace A352463.P18000369176289284266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1) - A347470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352463.P18000369176289284266

/-! ## A352463.P16296909545696161882

`∩[A227510(n+1), A267771(n+1)]`
-/

namespace A352463.P16296909545696161882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352463.P16296909545696161882

/-!
# A352464: Positive numbers k whose decimal expansion ends in the product of digits of k.

The programs for A352464, there is no canonical definition to state claims against.
-/

/-! ## A352464.P11261363992182820273

`∪[A167619(n+1), A370532(n+1)]`
-/

namespace A352464.P11261363992182820273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352464.P11261363992182820273

/-! ## A352464.P16153491306383435374

`eq[A007954(n), A008975(A000124(n))]`
-/

namespace A352464.P16153491306383435374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008975 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352464.P16153491306383435374

/-! ## A352464.P1252989071367263464

`∑[A096751(A135663(2*(n+2))!)]`
-/

namespace A352464.P1252989071367263464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (Nat.factorial (A135663 (2 * (n + 2))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352464.P1252989071367263464

/-! ## A352464.P3478755554702268506

`∑[A071457(∏[A340366(n+1)])]`
-/

namespace A352464.P3478755554702268506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340366 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071457 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352464.P3478755554702268506

/-! ## A352464.P13684728796915023703

`eq[A056967(n+1), A347470(n+1)]+1`
-/

namespace A352464.P13684728796915023703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352464.P13684728796915023703

/-!
# A352469: a(0) = 1; a(n) = (1/n) * Sum_{k=0..floor((n-1)/2)} binomial(n,2*k+1)^3 * (2*k+1) * a(n-2*k-1).

The programs for A352469, there is no canonical definition to state claims against.
-/

/-! ## A352469.P8441922635898081524

`A172002(n²*a(n-1))` with `a(0)=1`
-/

namespace A352469.P8441922635898081524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172002 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A352469.P8441922635898081524

/-!
# A352470: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n,2*k+1)^2 * a(n-2*k-1).

The programs for A352470, there is no canonical definition to state claims against.
-/

/-! ## A352470.P8778407202203853856

`A115063(n!²)`
-/

namespace A352470.P8778407202203853856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (Nat.factorial n ^ 2)

end

end A352470.P8778407202203853856

/-!
# A352471: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n,2*k+1)^3 * a(n-2*k-1).

The programs for A352471, there is no canonical definition to state claims against.
-/

/-! ## A352471.P10409207341416385748

`A208928(A080017(n))+A000442(n)`
-/

namespace A352471.P10409207341416385748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208928 (A080017 n).toNat + A000442 n

end

end A352471.P10409207341416385748

/-!
# A352472: Triangle T(n,k) read by rows: the number of traceless symmetric binary n X n matrices with 2k one's and no all-1 2 X 2 submatrix.

The programs for A352472, there is no canonical definition to state claims against.
-/

/-! ## A352472.P9337705097725881833

`A080858(lt[A000032(n+4), A245697(2*n+3)])`
-/

namespace A352472.P9337705097725881833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245697 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352472.P9337705097725881833

/-!
# A352474: a(n) is the number of different ways to partition the set of vertices of a convex n-gon into 3 intersecting polygons.

The programs for A352474, the canonical program `A352474.P3840502231361590685` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352474 has offset 9).

The definition of A352474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352474.P3840502231361590685

`A272982(n+9)-A350116(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A352474

/-- `A272982(n+9)-A350116(n+1)` -/
def P3840502231361590685.Spec : Prop :=
  ∀ n, P3840502231361590685.a n = A352474 (n + 9)

theorem P3840502231361590685.correct : P3840502231361590685.Spec := by
  intro n
  simp only [A352474, Nat.add_sub_cancel]

end A352474

/-!
# A352475: Numbers m such that gcd(d(m),6) = 1.

The programs for A352475, there is no canonical definition to state claims against.
-/

/-! ## A352475.P7061510820119834933

`A350014(n+1)²`
-/

namespace A352475.P7061510820119834933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1) ^ 2

end

end A352475.P7061510820119834933

/-! ## A352475.P15097508818613410182

`A350014(A000027(n+1))*A350014(n+1)`
-/

namespace A352475.P15097508818613410182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (A000027 (n + 1)).toNat * A350014 (n + 1)

end

end A352475.P15097508818613410182

/-! ## A352475.P17007788266887556291

`A350014(n+1)^A001222(A001358(n+1))`
-/

namespace A352475.P17007788266887556291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350014 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A352475.P17007788266887556291

/-! ## A352475.P12349448634566877524

`A350014(n+1)^A000005(A052369(n+1))`
-/

namespace A352475.P12349448634566877524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350014 (n + 1) : ℚ) ^ (A000005 (A052369 (n + 1)).toNat : ℤ)

end

end A352475.P12349448634566877524

/-! ## A352475.P10023109063407064676

`A350014(n+1)^A000005(A056608(n+1))`
-/

namespace A352475.P10023109063407064676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350014 (n + 1) : ℚ) ^ (A000005 (A056608 (n + 1)).toNat : ℤ)

end

end A352475.P10023109063407064676

/-! ## A352475.P594375433584564592

`A350014(n+1)^A000005(A008578(n+1))`
-/

namespace A352475.P594375433584564592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350014 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A352475.P594375433584564592

/-! ## A352475.P17488782372694128523

`record[(A056552(A306458(n+1))*A306458(n+1))²]`
-/

namespace A352475.P17488782372694128523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056552 (A306458 (n + 1)).toNat * A306458 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352475.P17488782372694128523

/-! ## A352475.P2951142583239540848

`record[((n+1)*A307424(n+1))²]`
-/

namespace A352475.P2951142583239540848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A307424 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352475.P2951142583239540848

/-! ## A352475.P10320953495757473738

`(eq[A048798(n+1), A056552(n+1)]+1)²`
-/

namespace A352475.P10320953495757473738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A352475.P10320953495757473738

/-!
# A352476: Expansion of g.f.: 1/Sum_{p prime} x^p.

The programs for A352476, there is no canonical definition to state claims against.
-/

/-! ## A352476.P15330003207349681326

`A015811(n)*A257639(A003440(n))`
-/

namespace A352476.P15330003207349681326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 n * A257639 (A003440 n).toNat

end

end A352476.P15330003207349681326

/-! ## A352476.P7396821782877321386

`A016155(n)*A257639(A003440(n))`
-/

namespace A352476.P7396821782877321386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016155 n * A257639 (A003440 n).toNat

end

end A352476.P7396821782877321386

/-! ## A352476.P7584413644174464145

`A033999(n)*A257639(A003440(n))`
-/

namespace A352476.P7584413644174464145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A257639 (A003440 n).toNat

end

end A352476.P7584413644174464145

/-! ## A352476.P3120671115210275723

`A015811(n)*A257639(A109545(n))`
-/

namespace A352476.P3120671115210275723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 n * A257639 (A109545 n).toNat

end

end A352476.P3120671115210275723

/-! ## A352476.P6902063781788259613

`A016155(n)*A257639(A109545(n))`
-/

namespace A352476.P6902063781788259613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016155 n * A257639 (A109545 n).toNat

end

end A352476.P6902063781788259613

/-!
# A352477: a(n) is the number of different ways to partition the set of vertices of a convex n-gon into 4 intersecting polygons.

The programs for A352477, there is no canonical definition to state claims against.
-/

/-! ## A352477.P4676199533975806512

`A261724(n)-A350286(A187829(n+1))`
-/

namespace A352477.P4676199533975806512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261724 (n + 12) - A350286 (A187829 (n + 1)).toNat

end

end A352477.P4676199533975806512

/-! ## A352477.P15211130250612589312

`A261724(n)-A350286(A077168(n))`
-/

namespace A352477.P15211130250612589312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261724 (n + 12) - A350286 (A077168 n).toNat

end

end A352477.P15211130250612589312

/-! ## A352477.P9838644942760886003

`A261724(n)-A350286(A032559(n+1))`
-/

namespace A352477.P9838644942760886003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261724 (n + 12) - A350286 (A032559 (n + 1)).toNat

end

end A352477.P9838644942760886003

/-!
# A352480: First of four consecutive primes p,q,r,s such that p+q+r+s is divisible by A001414(q+r).

The programs for A352480, there is no canonical definition to state claims against.
-/

/-! ## A352480.P4563907074946799368

`A326536(A081091(n+1)+2)`
-/

namespace A352480.P4563907074946799368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (A081091 (n + 1) + 2).toNat

end

end A352480.P4563907074946799368

/-! ## A352480.P8308230760459585325

`A100725(A003459(n+4)-A379313(n+1))`
-/

namespace A352480.P8308230760459585325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (A003459 (n + 4) - A379313 (n + 1)).toNat

end

end A352480.P8308230760459585325

/-!
# A352482: Denominator of (n-d)/n*d where d = A000005(n) is the number of divisors of n.

The programs for A352482, the canonical program `A352482.P1047364551664792945` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352482 has offset 1).

The definition of A352482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352482.P1047364551664792945

`A038040(n+1)/gcd(A038040(n+1), A049820(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A352482

/-- `A038040(n+1)/gcd(A038040(n+1), A049820(n+1))` -/
def P1047364551664792945.Spec : Prop :=
  ∀ n, P1047364551664792945.a n = (A352482 (n + 1) : ℚ)

end A352482

/-! ## A352482.P13747322118191239669

`gcd(A009230(n+1), A117980(A056925(n+1)))`
-/

namespace A352482.P13747322118191239669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009230 (n + 1)) (A117980 (A056925 (n + 1)).toNat)

end

end A352482.P13747322118191239669

namespace A352482

/-- `gcd(A009230(n+1), A117980(A056925(n+1)))` -/
def P13747322118191239669.Spec : Prop :=
  ∀ n, (P13747322118191239669.a n : ℤ) = A352482 (n + 1)

end A352482

/-! ## A352482.P14997354703776924233

`lcm(n+1, ∏{e}[n+1, #+1])-A010051(2^n)`
-/

namespace A352482.P14997354703776924233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ) - A010051 (2 ^ n)

end

end A352482.P14997354703776924233

namespace A352482

/-- `lcm(n+1, ∏{e}[n+1, #+1])-A010051(2^n)` -/
def P14997354703776924233.Spec : Prop :=
  ∀ n, P14997354703776924233.a n = A352482 (n + 1)

end A352482

/-! ## A352482.P12272142285115626705

`A009230(n+1)-A010051(2^n)`
-/

namespace A352482.P12272142285115626705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009230 (n + 1) - A010051 (2 ^ n)

end

end A352482.P12272142285115626705

namespace A352482

/-- `A009230(n+1)-A010051(2^n)` -/
def P12272142285115626705.Spec : Prop :=
  ∀ n, P12272142285115626705.a n = A352482 (n + 1)

end A352482

/-! ## A352482.P11116616244555659029

`A009230(n+1)-A185012(A171516(n))`
-/

namespace A352482.P11116616244555659029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009230 (n + 1) - A185012 (A171516 n).toNat

end

end A352482.P11116616244555659029

namespace A352482

/-- `A009230(n+1)-A185012(A171516(n))` -/
def P11116616244555659029.Spec : Prop :=
  ∀ n, P11116616244555659029.a n = A352482 (n + 1)

end A352482

/-!
# A352483: Numerator of 1/d - 1/n = (n-d)/(n*d) where d is the number of divisors of n (A000005).

The programs for A352483, the canonical program `A352483.P1408584713413222711` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352483 has offset 1).

The definition of A352483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352483.P1408584713413222711

`lcm(n+1-∏{e}[n+1, #+1], ∏{e}[n+1, (#+1)²])/∏{e}[n+1, (#+1)²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352483

/-- `lcm(n+1-∏{e}[n+1, #+1], ∏{e}[n+1, (#+1)²])/∏{e}[n+1, (#+1)²]` -/
def P1408584713413222711.Spec : Prop :=
  ∀ n, P1408584713413222711.a n = (A352483 (n + 1) : ℚ)

end A352483

/-! ## A352483.P18269091885964194922

`A049820(n+1)/gcd(A038040(n+1), A049820(n+1))`
-/

namespace A352483.P18269091885964194922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049820 (n + 1) : ℚ) / (Int.gcd (A038040 (n + 1)) (A049820 (n + 1)) : ℚ)

end

end A352483.P18269091885964194922

namespace A352483

/-- `A049820(n+1)/gcd(A038040(n+1), A049820(n+1))` -/
def P18269091885964194922.Spec : Prop :=
  ∀ n, P18269091885964194922.a n = (A352483 (n + 1) : ℚ)

end A352483

/-! ## A352483.P7881573953009625284

`lcm(A035116(n+1), A049820(n+1))/A035116(n+1)`
-/

namespace A352483.P7881573953009625284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A035116 (n + 1)) (A049820 (n + 1)) : ℚ) / (A035116 (n + 1) : ℚ)

end

end A352483.P7881573953009625284

namespace A352483

/-- `lcm(A035116(n+1), A049820(n+1))/A035116(n+1)` -/
def P7881573953009625284.Spec : Prop :=
  ∀ n, P7881573953009625284.a n = (A352483 (n + 1) : ℚ)

end A352483

/-! ## A352483.P12318869981428407102

`A258468(n+1)/A001222(2^(n+1))`
-/

namespace A352483.P12318869981428407102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258468 (n + 1) : ℚ) / (A001222 (2 ^ (n + 1)) : ℚ)

end

end A352483.P12318869981428407102

namespace A352483

/-- `A258468(n+1)/A001222(2^(n+1))` -/
def P12318869981428407102.Spec : Prop :=
  ∀ n, P12318869981428407102.a n = (A352483 (n + 1) : ℚ)

end A352483

/-! ## A352483.P16602567021091859723

`A253975(3*(n+1))%A002322(n+1)`
-/

namespace A352483.P16602567021091859723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253975 (3 * (n + 1))) (A002322 (n + 1))

end

end A352483.P16602567021091859723

namespace A352483

/-- `A253975(3*(n+1))%A002322(n+1)` -/
def P16602567021091859723.Spec : Prop :=
  ∀ n, P16602567021091859723.a n = A352483 (n + 1)

end A352483

/-!
# A352486: Heinz numbers of non-self-conjugate integer partitions.

The programs for A352486, there is no canonical definition to state claims against.
-/

/-! ## A352486.P12204896198247930047

`comp[C(A280491(n+1), n)]`
-/

namespace A352486.P12204896198247930047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280491 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A352486.P12204896198247930047

/-! ## A352486.P3046558190729689735

`comp[floor((A001400(n)/2)²)]`
-/

namespace A352486.P3046558190729689735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001400 n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352486.P3046558190729689735

/-! ## A352486.P4549357566449039562

`comp[floor((A008773(n)/2)²)]`
-/

namespace A352486.P4549357566449039562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008773 n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352486.P4549357566449039562

/-! ## A352486.P16719610175504750276

`comp[floor((A026810(n)/2)²)]`
-/

namespace A352486.P16719610175504750276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A026810 n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352486.P16719610175504750276

/-! ## A352486.P8599286099514980486

`comp[floor((A178932(n)/2)²)]`
-/

namespace A352486.P8599286099514980486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A178932 n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352486.P8599286099514980486

/-! ## A352486.P10002722954401550196

`lt[1, A280490(n+1)]+1`
-/

namespace A352486.P10002722954401550196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352486.P10002722954401550196

/-! ## A352486.P10179217369109077694

`comp[A088902(n+1)-1]+1`
-/

namespace A352486.P10179217369109077694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088902 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352486.P10179217369109077694

/-! ## A352486.P2497068965279243832

`comp[A350949(n+1)-1]+1`
-/

namespace A352486.P2497068965279243832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350949 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352486.P2497068965279243832

/-! ## A352486.P3936547788138510801

`comp[abs(1-n)*A266506(n+2)]`
-/

namespace A352486.P3936547788138510801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A266506 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352486.P3936547788138510801

/-! ## A352486.P8779767778857849499

`comp[A143823(n)-∏{p}[n+1, #-1]]`
-/

namespace A352486.P8779767778857849499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 n - ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352486.P8779767778857849499

/-!
# A352487: Excedance set of A122111. Numbers k < A122111(k), where A122111 represents partition conjugation using Heinz numbers.

The programs for A352487, there is no canonical definition to state claims against.
-/

/-! ## A352487.P12561272937971658004

`eq[0, A331168(n+1)]+1`
-/

namespace A352487.P12561272937971658004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352487.P12561272937971658004

/-! ## A352487.P5413959672111482933

`comp[∪[A187860(2*n+1), A352488(n+1)]]`
-/

namespace A352487.P5413959672111482933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187860 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352488 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A352487.P5413959672111482933

/-! ## A352487.P688546910141672643

`record[A331170(A331170(n+2)+A331168(n+2))]`
-/

namespace A352487.P688546910141672643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (A331170 (n + 2) + A331168 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352487.P688546910141672643

/-! ## A352487.P18199932721439910798

`eq[0, A331168(A028310(n))]`
-/

namespace A352487.P18199932721439910798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352487.P18199932721439910798

/-! ## A352487.P7536801859380597779

`eq[0, A331168(A000007(n)+n)]`
-/

namespace A352487.P7536801859380597779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352487.P7536801859380597779

/-! ## A352487.P5464694306096887804

`eq[char[A352488(n+1)], A000007(n)]`
-/

namespace A352487.P5464694306096887804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352488 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A352487.P5464694306096887804

/-! ## A352487.P8585584025241973311

`eq[char[A352488(n+1)], A000038(n)]`
-/

namespace A352487.P8585584025241973311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352488 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A352487.P8585584025241973311

/-! ## A352487.P10069572638652099990

`eq[char[A352488(n+1)], A288352(3*(n+1))]`
-/

namespace A352487.P10069572638652099990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352488 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288352 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A352487.P10069572638652099990

/-! ## A352487.P10833481426109060243

`record[(n+3)%A122111(n+3)]`
-/

namespace A352487.P10833481426109060243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A122111 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352487.P10833481426109060243

/-! ## A352487.P13483139469295982770

`lt[n+1, A122111(n+1)]+1`
-/

namespace A352487.P13483139469295982770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352487.P13483139469295982770

/-! ## A352487.P5430755937480127130

`eq[0, A331168(A233583(n+1))]`
-/

namespace A352487.P5430755937480127130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352487.P5430755937480127130

/-!
# A352488: Weak nonexcedance set of A122111. Numbers k >= A122111(k), where A122111 represents partition conjugation using Heinz numbers.

The programs for A352488, there is no canonical definition to state claims against.
-/

/-! ## A352488.P5879344821234279182

`∪[A088902(n+1), A352490(n+1)]`
-/

namespace A352488.P5879344821234279182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352488.P5879344821234279182

/-! ## A352488.P5601846026580574291

`record[(n+1)*A331168(n+1)]`
-/

namespace A352488.P5601846026580574291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352488.P5601846026580574291

/-! ## A352488.P16572858313968245020

`filter[A286608(n+1), A331168(#)]`
-/

namespace A352488.P16572858313968245020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P16572858313968245020

/-! ## A352488.P526363191318439828

`eq[1, A331168(n+1)]+1`
-/

namespace A352488.P526363191318439828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352488.P526363191318439828

/-! ## A352488.P7529963165367566347

`filter[A354360(n+1), A331168(#)]`
-/

namespace A352488.P7529963165367566347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P7529963165367566347

/-! ## A352488.P3575334116167500852

`filter[A246352(n+1), A331168(#)]`
-/

namespace A352488.P3575334116167500852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P3575334116167500852

/-! ## A352488.P17359808456713392374

`filter[A341749(n+1), A331168(#)]`
-/

namespace A352488.P17359808456713392374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P17359808456713392374

/-! ## A352488.P6634858559835737649

`filter[A343012(n+1), A331168(#)]`
-/

namespace A352488.P6634858559835737649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P6634858559835737649

/-! ## A352488.P15248640862559394368

`filter[A316350(n+1), A331168(#)]`
-/

namespace A352488.P15248640862559394368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P15248640862559394368

/-! ## A352488.P10048688099355006220

`filter[A253567(n+1), A331168(#)]`
-/

namespace A352488.P10048688099355006220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P10048688099355006220

/-! ## A352488.P13457178625794373743

`filter[A065090(n+1), A331168(#)]`
-/

namespace A352488.P13457178625794373743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P13457178625794373743

/-! ## A352488.P15803060654624155991

`filter[A073900(n+1), A331168(#)]`
-/

namespace A352488.P15803060654624155991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P15803060654624155991

/-! ## A352488.P8715327981738324772

`filter[A171581(n+1), A331168(#)]`
-/

namespace A352488.P8715327981738324772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P8715327981738324772

/-! ## A352488.P8318952107743832864

`filter[A338924(n+1), A331168(#)]`
-/

namespace A352488.P8318952107743832864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P8318952107743832864

/-! ## A352488.P2737143737403304871

`filter[A173905(n+2), A331168(#)]`
-/

namespace A352488.P2737143737403304871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P2737143737403304871

/-! ## A352488.P15949978058633473218

`filter[A073899(n+1), A331168(#)]`
-/

namespace A352488.P15949978058633473218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P15949978058633473218

/-! ## A352488.P4981715392317679162

`filter[A089088(n), A331168(#)]`
-/

namespace A352488.P4981715392317679162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P4981715392317679162

/-! ## A352488.P11302764738587448974

`filter[A101513(n+1), A331168(#)]`
-/

namespace A352488.P11302764738587448974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P11302764738587448974

/-! ## A352488.P12986137152751549864

`filter[A137621(n+1), A331168(#)]`
-/

namespace A352488.P12986137152751549864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P12986137152751549864

/-! ## A352488.P6331823679099967275

`filter[A337843(n), A331168(#)]`
-/

namespace A352488.P6331823679099967275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A352488.P6331823679099967275

/-!
# A352489: Weak excedance set of A122111. Numbers k <= A122111(k), where A122111 represents partition conjugation using Heinz numbers.

The programs for A352489, there is no canonical definition to state claims against.
-/

/-! ## A352489.P17735250390017723496

`record[A331170(n+1)]`
-/

namespace A352489.P17735250390017723496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352489.P17735250390017723496

/-! ## A352489.P4677773033926963068

`eq[0, A331169(n+1)]+1`
-/

namespace A352489.P4677773033926963068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352489.P4677773033926963068

/-! ## A352489.P7308488166576514822

`comp[A352490(n+1)-1]+1`
-/

namespace A352489.P7308488166576514822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352490 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352489.P7308488166576514822

/-! ## A352489.P17264230823913459087

`A331170(lt[n, A331170(n+1)]+1)`
-/

namespace A352489.P17264230823913459087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A352489.P17264230823913459087

/-! ## A352489.P4889607398812996677

`eq[n, A331170(A028310(n))]`
-/

namespace A352489.P4889607398812996677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352489.P4889607398812996677

/-! ## A352489.P17367859722989589843

`eq[char[A352490(n+1)], A000038(n)]`
-/

namespace A352489.P17367859722989589843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352490 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A352489.P17367859722989589843

/-! ## A352489.P1439606614459902038

`eq[A000007(n), A331169(A028310(n))]`
-/

namespace A352489.P1439606614459902038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352489.P1439606614459902038

/-! ## A352489.P15572363342407829054

`lt[n, A122111(n+1)]+1`
-/

namespace A352489.P15572363342407829054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A352489.P15572363342407829054

/-! ## A352489.P3048068796184727725

`eq[A122111(n+1), A122111(A331170(n+1))]+1`
-/

namespace A352489.P3048068796184727725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A331170 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352489.P3048068796184727725

/-! ## A352489.P12532194389957888649

`record[A331170(A008619(n))]%A038762(n)`
-/

namespace A352489.P12532194389957888649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038762 n)

end

end A352489.P12532194389957888649

/-!
# A352490: Nonexcedance set of A122111. Numbers k > A122111(k), where A122111 represents partition conjugation using Heinz numbers.

The programs for A352490, there is no canonical definition to state claims against.
-/

/-! ## A352490.P5912497456959518474

`filter[A286608(n+1), A331169(#)]`
-/

namespace A352490.P5912497456959518474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P5912497456959518474

/-! ## A352490.P13913019769926855106

`filter[A352488(n+1), A331169(#)]`
-/

namespace A352490.P13913019769926855106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P13913019769926855106

/-! ## A352490.P2953526049029480291

`eq[1, A331169(n+1)]+1`
-/

namespace A352490.P2953526049029480291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352490.P2953526049029480291

/-! ## A352490.P16625800004776735438

`filter[A048098(n+1), A331169(#)]`
-/

namespace A352490.P16625800004776735438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P16625800004776735438

/-! ## A352490.P13868293683444593041

`filter[A387941(n+1), A331169(#)]`
-/

namespace A352490.P13868293683444593041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P13868293683444593041

/-! ## A352490.P14465230775428226248

`filter[A013929(n+1), A331169(#)]`
-/

namespace A352490.P14465230775428226248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P14465230775428226248

/-! ## A352490.P16513075470616199897

`filter[A162966(n+1), A331169(#)]`
-/

namespace A352490.P16513075470616199897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P16513075470616199897

/-! ## A352490.P15872442604761442217

`filter[A354360(n+1), A331169(#)]`
-/

namespace A352490.P15872442604761442217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P15872442604761442217

/-! ## A352490.P14344809337260579683

`filter[A389462(n+1), A331169(#)]`
-/

namespace A352490.P14344809337260579683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P14344809337260579683

/-! ## A352490.P17986291149413473217

`filter[A343597(n+1), A331169(#)]`
-/

namespace A352490.P17986291149413473217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P17986291149413473217

/-! ## A352490.P8058108125875887502

`filter[A246282(n+1), A331169(#)]`
-/

namespace A352490.P8058108125875887502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P8058108125875887502

/-! ## A352490.P18352485706947125306

`filter[A246352(n+1), A331169(#)]`
-/

namespace A352490.P18352485706947125306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P18352485706947125306

/-! ## A352490.P16855678713852747254

`filter[A366288(n+1), A331169(#)]`
-/

namespace A352490.P16855678713852747254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P16855678713852747254

/-! ## A352490.P12952307628722183597

`filter[A379271(n+1), A331169(#)]`
-/

namespace A352490.P12952307628722183597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P12952307628722183597

/-! ## A352490.P6859704503285669327

`filter[A289553(n+1), A331169(#)]`
-/

namespace A352490.P6859704503285669327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P6859704503285669327

/-! ## A352490.P9709560089243143015

`filter[A088609(n+1), A331169(#)]`
-/

namespace A352490.P9709560089243143015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P9709560089243143015

/-! ## A352490.P6851178017472501250

`filter[A316350(n+1), A331169(#)]`
-/

namespace A352490.P6851178017472501250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P6851178017472501250

/-! ## A352490.P2871670318208642431

`filter[A145190(n+1), A331169(#)]`
-/

namespace A352490.P2871670318208642431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P2871670318208642431

/-! ## A352490.P12191566615503153719

`filter[A060679(n+1), A331169(#)]`
-/

namespace A352490.P12191566615503153719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P12191566615503153719

/-! ## A352490.P1745121121039493071

`filter[A174891(n+1), A331169(#)]`
-/

namespace A352490.P1745121121039493071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331169 (f1 j).toNat = 1) n)

end

end A352490.P1745121121039493071

/-!
# A352491: n minus the Heinz number of the conjugate of the integer partition with Heinz number n.

The programs for A352491, the canonical program `A352491.P13151427470145142033` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352491 has offset 1).

The definition of A352491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352491.P13151427470145142033

`n+1-A122111(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A352491

/-- `n+1-A122111(n+1)` -/
def P13151427470145142033.Spec : Prop :=
  ∀ n, P13151427470145142033.a n = A352491 (n + 1)

theorem P13151427470145142033.correct : P13151427470145142033.Spec := by
  intro n
  simp only [A352491, Nat.add_sub_cancel]

end A352491

/-! ## A352491.P9194962259414124957

`1-∑{d}[n+1, A329034(#)]+n`
-/

namespace A352491.P9194962259414124957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A329034 d + (n : ℤ)

end

end A352491.P9194962259414124957

namespace A352491

/-- `1-∑{d}[n+1, A329034(#)]+n` -/
def P9194962259414124957.Spec : Prop :=
  ∀ n, P9194962259414124957.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P241424931480626322

`n-(A122111(Δ[n²]-n)-1)`
-/

namespace A352491.P241424931480626322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A122111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1)

end

end A352491.P241424931480626322

namespace A352491

/-- `n-(A122111(Δ[n²]-n)-1)` -/
def P241424931480626322.Spec : Prop :=
  ∀ n, P241424931480626322.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P14457065206925678237

`n+1-A181821(n+1)/A181821((n+1)/A006530(n+1))`
-/

namespace A352491.P14457065206925678237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A181821 (n + 1) : ℚ) / (A181821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)

end

end A352491.P14457065206925678237

namespace A352491

/-- `n+1-A181821(n+1)/A181821((n+1)/A006530(n+1))` -/
def P14457065206925678237.Spec : Prop :=
  ∀ n, P14457065206925678237.a n = (A352491 (n + 1) : ℚ)

end A352491

/-! ## A352491.P2695133557760534308

`1-A279352(A249817(n+1))+n`
-/

namespace A352491.P2695133557760534308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A279352 (A249817 (n + 1)).toNat + (n : ℤ)

end

end A352491.P2695133557760534308

namespace A352491

/-- `1-A279352(A249817(n+1))+n` -/
def P2695133557760534308.Spec : Prop :=
  ∀ n, P2695133557760534308.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P3858526190123249109

`n+1-A181815(A361808(n+1))`
-/

namespace A352491.P3858526190123249109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A181815 (A361808 (n + 1)).toNat

end

end A352491.P3858526190123249109

namespace A352491

/-- `n+1-A181815(A361808(n+1))` -/
def P3858526190123249109.Spec : Prop :=
  ∀ n, P3858526190123249109.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P11888386144170620395

`1-A243505(A048673(n+1))+n`
-/

namespace A352491.P11888386144170620395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243505 (A048673 (n + 1)).toNat + (n : ℤ)

end

end A352491.P11888386144170620395

namespace A352491

/-- `1-A243505(A048673(n+1))+n` -/
def P11888386144170620395.Spec : Prop :=
  ∀ n, P11888386144170620395.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P14571061835953516123

`n+1-A243070(∑[4*n]+1)`
-/

namespace A352491.P14571061835953516123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A352491.P14571061835953516123

namespace A352491

/-- `n+1-A243070(∑[4*n]+1)` -/
def P14571061835953516123.Spec : Prop :=
  ∀ n, P14571061835953516123.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P1819031738488389113

`1-A243070((n+1)²+n²)+n`
-/

namespace A352491.P1819031738488389113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243070 ((n + 1) ^ 2 + n ^ 2) + (n : ℤ)

end

end A352491.P1819031738488389113

namespace A352491

/-- `1-A243070((n+1)²+n²)+n` -/
def P1819031738488389113.Spec : Prop :=
  ∀ n, P1819031738488389113.a n = A352491 (n + 1)

end A352491

/-! ## A352491.P8295948573898721740

`n+1-A156552(A322863(n+1))`
-/

namespace A352491.P8295948573898721740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156552 (A322863 (n + 1)).toNat

end

end A352491.P8295948573898721740

namespace A352491

/-- `n+1-A156552(A322863(n+1))` -/
def P8295948573898721740.Spec : Prop :=
  ∀ n, P8295948573898721740.a n = A352491 (n + 1)

end A352491

/-!
# A352492: Powerful numbers whose prime indices are all prime numbers.

The programs for A352492, there is no canonical definition to state claims against.
-/

/-! ## A352492.P17162823451423389373

`∩[A001694(n+1), A076610(n+1)]`
-/

namespace A352492.P17162823451423389373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352492.P17162823451423389373

/-! ## A352492.P12878472096602198456

`∩[A062739(n+1), A076610(n+1)]`
-/

namespace A352492.P12878472096602198456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352492.P12878472096602198456

/-! ## A352492.P9564169640038253260

`∩[A076610(n+1), A335851(n+1)]`
-/

namespace A352492.P9564169640038253260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352492.P9564169640038253260

/-! ## A352492.P8252706749540907854

`∩[A076610(n+1), A076446(n)+a(n-1)]` with `a(0)=1`
-/

namespace A352492.P8252706749540907854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A076446 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352492.P8252706749540907854

/-! ## A352492.P2855170722815176093

`record[A360325(A001694(n+1))]`
-/

namespace A352492.P2855170722815176093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352492.P2855170722815176093

/-!
# A352494: Primes congruent to 0, 1, or 10 mod 11.

The programs for A352494, the canonical program `A352494.P10502948085050372852` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352494 has offset 1).

The definition of A352494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352494.P10502948085050372852

`p?[8*round(n/3)+n]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352494

/-- `p?[8*round(n/3)+n]` -/
def P10502948085050372852.Spec : Prop :=
  ∀ n, P10502948085050372852.a n = A352494 (n + 1)

theorem P10502948085050372852.correct : P10502948085050372852.Spec := by
  intro n
  simp only [A352494, Nat.add_sub_cancel]

end A352494

/-! ## A352494.P14264016867938932504

`∏{p}[p?[a(n-3)+11], #]` with `a(0)=-11, a(1)=10, a(2)=1`
-/

namespace A352494.P14264016867938932504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-11, 10, 1] fun n f2 =>
  f2 (n - 3) + 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A352494.P14264016867938932504

namespace A352494

/-- `∏{p}[p?[a(n-3)+11], #]` -/
def P14264016867938932504.Spec : Prop :=
  ∀ n, (P14264016867938932504.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P18359774574877525504

`or(1, p?[A112654(n+1)])`
-/

namespace A352494.P18359774574877525504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A352494.P18359774574877525504

namespace A352494

/-- `or(1, p?[A112654(n+1)])` -/
def P18359774574877525504.Spec : Prop :=
  ∀ n, P18359774574877525504.a n = A352494 (n + 1)

end A352494

/-! ## A352494.P13492225678847791594

`filter[A112654(n+2), A010051(#)]`
-/

namespace A352494.P13492225678847791594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A352494.P13492225678847791594

namespace A352494

/-- `filter[A112654(n+2), A010051(#)]` -/
def P13492225678847791594.Spec : Prop :=
  ∀ n, P13492225678847791594.a n = A352494 (n + 1)

end A352494

/-! ## A352494.P16682038232067460641

`filter[A112654(2*(n+1)), A323153(#)]`
-/

namespace A352494.P16682038232067460641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A352494.P16682038232067460641

namespace A352494

/-- `filter[A112654(2*(n+1)), A323153(#)]` -/
def P16682038232067460641.Spec : Prop :=
  ∀ n, P16682038232067460641.a n = A352494 (n + 1)

end A352494

/-! ## A352494.P10929700962834361349

`filter[A112654(2*(n+1)), A353670(#)]`
-/

namespace A352494.P10929700962834361349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A352494.P10929700962834361349

namespace A352494

/-- `filter[A112654(2*(n+1)), A353670(#)]` -/
def P10929700962834361349.Spec : Prop :=
  ∀ n, P10929700962834361349.a n = A352494 (n + 1)

end A352494

/-! ## A352494.P3148808741233941814

`filter[A112654(2*(n+1)), A379969(#)]`
-/

namespace A352494.P3148808741233941814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A352494.P3148808741233941814

namespace A352494

/-- `filter[A112654(2*(n+1)), A379969(#)]` -/
def P3148808741233941814.Spec : Prop :=
  ∀ n, P3148808741233941814.a n = A352494 (n + 1)

end A352494

/-! ## A352494.P17080977833126813890

`∩[A000040(n+1), A112654(n+1)]`
-/

namespace A352494.P17080977833126813890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P17080977833126813890

namespace A352494

/-- `∩[A000040(n+1), A112654(n+1)]` -/
def P17080977833126813890.Spec : Prop :=
  ∀ n, (P17080977833126813890.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P6300982258339944776

`∩[A004139(n+1), A112654(n+1)]`
-/

namespace A352494.P6300982258339944776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P6300982258339944776

namespace A352494

/-- `∩[A004139(n+1), A112654(n+1)]` -/
def P6300982258339944776.Spec : Prop :=
  ∀ n, (P6300982258339944776.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P650607110402627052

`∩[A045319(n+1), A112654(n+1)]`
-/

namespace A352494.P650607110402627052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P650607110402627052

namespace A352494

/-- `∩[A045319(n+1), A112654(n+1)]` -/
def P650607110402627052.Spec : Prop :=
  ∀ n, (P650607110402627052.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P9738412202336332041

`∩[A045344(n+1), A112654(n+1)]`
-/

namespace A352494.P9738412202336332041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P9738412202336332041

namespace A352494

/-- `∩[A045344(n+1), A112654(n+1)]` -/
def P9738412202336332041.Spec : Prop :=
  ∀ n, (P9738412202336332041.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P17834980491945698817

`∩[A065091(n+1), A112654(n+1)]`
-/

namespace A352494.P17834980491945698817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P17834980491945698817

namespace A352494

/-- `∩[A065091(n+1), A112654(n+1)]` -/
def P17834980491945698817.Spec : Prop :=
  ∀ n, (P17834980491945698817.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P1527084893259619884

`∩[A065396(n+1), A112654(n+1)]`
-/

namespace A352494.P1527084893259619884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P1527084893259619884

namespace A352494

/-- `∩[A065396(n+1), A112654(n+1)]` -/
def P1527084893259619884.Spec : Prop :=
  ∀ n, (P1527084893259619884.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P6794415358999500958

`∩[A083249(n+1), A112654(n+1)]`
-/

namespace A352494.P6794415358999500958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P6794415358999500958

namespace A352494

/-- `∩[A083249(n+1), A112654(n+1)]` -/
def P6794415358999500958.Spec : Prop :=
  ∀ n, (P6794415358999500958.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P8686154082908362475

`∩[A112654(n+1), A116974(n+1)]`
-/

namespace A352494.P8686154082908362475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P8686154082908362475

namespace A352494

/-- `∩[A112654(n+1), A116974(n+1)]` -/
def P8686154082908362475.Spec : Prop :=
  ∀ n, (P8686154082908362475.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P13512040361415527957

`∩[A112654(n+1), A138837(n+1)]`
-/

namespace A352494.P13512040361415527957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P13512040361415527957

namespace A352494

/-- `∩[A112654(n+1), A138837(n+1)]` -/
def P13512040361415527957.Spec : Prop :=
  ∀ n, (P13512040361415527957.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P1237480494545037653

`∩[A140826(n+1), A112654(n+1)]`
-/

namespace A352494.P1237480494545037653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P1237480494545037653

namespace A352494

/-- `∩[A140826(n+1), A112654(n+1)]` -/
def P1237480494545037653.Spec : Prop :=
  ∀ n, (P1237480494545037653.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P16113997199014190289

`∩[A112654(n+1), A161346(n+1)]`
-/

namespace A352494.P16113997199014190289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P16113997199014190289

namespace A352494

/-- `∩[A112654(n+1), A161346(n+1)]` -/
def P16113997199014190289.Spec : Prop :=
  ∀ n, (P16113997199014190289.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P5879072380048399303

`∩[A216495(n+1), A112654(n+1)]`
-/

namespace A352494.P5879072380048399303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352494.P5879072380048399303

namespace A352494

/-- `∩[A216495(n+1), A112654(n+1)]` -/
def P5879072380048399303.Spec : Prop :=
  ∀ n, (P5879072380048399303.a n : ℤ) = A352494 (n + 1)

end A352494

/-! ## A352494.P12343737076592047623

`filter[A265188(2*(n+1)), A010051(#)]`
-/

namespace A352494.P12343737076592047623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A352494.P12343737076592047623

namespace A352494

/-- `filter[A265188(2*(n+1)), A010051(#)]` -/
def P12343737076592047623.Spec : Prop :=
  ∀ n, P12343737076592047623.a n = A352494 (n + 1)

end A352494

/-!
# A352496: Number of upper triangulations of the Koch chain K_s.

The programs for A352496, there is no canonical definition to state claims against.
-/

/-! ## A352496.P7658392033713634465

`sqrt(A352497(n+1))`
-/

namespace A352496.P7658392033713634465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352497 (n + 1) : ℝ)

end

end A352496.P7658392033713634465

/-! ## A352496.P14799666383758838174

`A352498(n)/A352497(n)`
-/

namespace A352496.P14799666383758838174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352498 n : ℚ) / (A352497 n : ℚ)

end

end A352496.P14799666383758838174

/-!
# A352497: Number of lower triangulations of the Koch chain K_s.

The programs for A352497, there is no canonical definition to state claims against.
-/

/-! ## A352497.P9968792567680223363

`A352496(log2(ceil(2^(n-1))))²`
-/

namespace A352497.P9968792567680223363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352496 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat ^ 2

end

end A352497.P9968792567680223363

/-! ## A352497.P5601080286218780675

`A352498(n)/A352496(n)`
-/

namespace A352497.P5601080286218780675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352498 n : ℚ) / (A352496 n : ℚ)

end

end A352497.P5601080286218780675

/-!
# A352498: Number of complete triangulations of the Koch chain K_s.

The programs for A352498, there is no canonical definition to state claims against.
-/

/-! ## A352498.P11260441605037026630

`A352496(n)*A352497(n)`
-/

namespace A352498.P11260441605037026630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352496 n * A352497 n

end

end A352498.P11260441605037026630

/-! ## A352498.P4780182807976634878

`sqrt(A352497(n+1))*A352497(n)`
-/

namespace A352498.P4780182807976634878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352497 (n + 1) : ℝ) * (A352497 n : ℝ)

end

end A352498.P4780182807976634878

/-! ## A352498.P5173394976497768510

`A352496(log2(A011782(n)))²*A352496(n)`
-/

namespace A352498.P5173394976497768510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352496 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat ^ 2 * A352496 n

end

end A352498.P5173394976497768510

