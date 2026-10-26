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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099800: Bisection of A002110.

The programs for A099800, there is no canonical definition to state claims against.
-/

/-! ## A099800.P8108232577790593659

`A002110(Δ[n²])`
-/

namespace A099800.P8108232577790593659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099800.P8108232577790593659

/-! ## A099800.P2084506482258835924

`record[A002110(xor(1, n))]`
-/

namespace A099800.P2084506482258835924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099800.P2084506482258835924

/-! ## A099800.P15228411926302424313

`lcm(2, A231209(2*n))`
-/

namespace A099800.P15228411926302424313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231209 (2 * n))

end

end A099800.P15228411926302424313

/-! ## A099800.P16901317124162369138

`A057588(2*n+1)+1`
-/

namespace A099800.P16901317124162369138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057588 (2 * n + 1) + 1

end

end A099800.P16901317124162369138

/-! ## A099800.P16177808718977013971

`A006862(2*n+1)-1`
-/

namespace A099800.P16177808718977013971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (2 * n + 1) - 1

end

end A099800.P16177808718977013971

/-!
# A099801: PrimePi(2n+1), the number of primes less than or equal to 2n+1.

The programs for A099801, the canonical program `A099801.P5122847261811021280` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099801 has offset 0).

The definition of A099801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(2*n+1)` (program `A099801.P5122847261811021280`, by `A099801.P5122847261811021280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099801.P5122847261811021280

`A000720(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099801

/-- `A000720(2*n+1)` -/
def P5122847261811021280.Spec : Prop :=
  ∀ n, P5122847261811021280.a n = A099801 n

theorem P5122847261811021280.correct : P5122847261811021280.Spec := by
  intro n
  simp only [A099801]

end A099801

/-! ## A099801.P5638060238408130792

`∑[A101808(n)]-1`
-/

namespace A099801.P5638060238408130792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099801.P5638060238408130792

namespace A099801

/-- `∑[A101808(n)]-1` -/
def P5638060238408130792.Spec : Prop :=
  ∀ n, P5638060238408130792.a n = A099801 n

end A099801

/-! ## A099801.P11065998049365879246

`∑[A101264(n)+char[1]]`
-/

namespace A099801.P11065998049365879246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099801.P11065998049365879246

namespace A099801

/-- `∑[A101264(n)+char[1]]` -/
def P11065998049365879246.Spec : Prop :=
  ∀ n, P11065998049365879246.a n = A099801 n

end A099801

/-! ## A099801.P7046191187465604825

`∑[A168141(2*n+1)]-1`
-/

namespace A099801.P7046191187465604825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099801.P7046191187465604825

namespace A099801

/-- `∑[A168141(2*n+1)]-1` -/
def P7046191187465604825.Spec : Prop :=
  ∀ n, P7046191187465604825.a n = A099801 n

end A099801

/-! ## A099801.P5791739986142453809

`A099802(n+1)%∑[n+1]`
-/

namespace A099801.P5791739986142453809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099802 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A099801.P5791739986142453809

namespace A099801

/-- `A099802(n+1)%∑[n+1]` -/
def P5791739986142453809.Spec : Prop :=
  ∀ n, P5791739986142453809.a n = A099801 n

end A099801

/-! ## A099801.P18267484439768681676

`comp[A130290(n+1)+n]-n`
-/

namespace A099801.P18267484439768681676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A099801.P18267484439768681676

namespace A099801

/-- `comp[A130290(n+1)+n]-n` -/
def P18267484439768681676.Spec : Prop :=
  ∀ n, P18267484439768681676.a n = A099801 n

end A099801

/-! ## A099801.P18144370728282328030

`2*n-A065855(2*n+1)`
-/

namespace A099801.P18144370728282328030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A065855 (2 * n + 1)

end

end A099801.P18144370728282328030

namespace A099801

/-- `2*n-A065855(2*n+1)` -/
def P18144370728282328030.Spec : Prop :=
  ∀ n, P18144370728282328030.a n = A099801 n

theorem P18144370728282328030.correct : P18144370728282328030.Spec := by
  intro n
  simp only [A099801, Nat.add_sub_cancel, A099801.P18144370728282328030.a, A099801.P5122847261811021280.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099801

/-! ## A099801.P8106375331365462572

`∑[A010051(2*n+1)+char[1]]`
-/

namespace A099801.P8106375331365462572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099801.P8106375331365462572

namespace A099801

/-- `∑[A010051(2*n+1)+char[1]]` -/
def P8106375331365462572.Spec : Prop :=
  ∀ n, P8106375331365462572.a n = A099801 n

end A099801

/-! ## A099801.P6114257689413333655

`comp[floor(A000040(n+1)/2)+n]-n`
-/

namespace A099801.P6114257689413333655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A099801.P6114257689413333655

namespace A099801

/-- `comp[floor(A000040(n+1)/2)+n]-n` -/
def P6114257689413333655.Spec : Prop :=
  ∀ n, P6114257689413333655.a n = A099801 n

end A099801

/-! ## A099801.P12569936138464890998

`∑[C(a(A001222(2*n+1)), 2)]-1` with `a(0)=1, a(1)=2`
-/

namespace A099801.P12569936138464890998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.choose (f1 (A001222 (2 * n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A099801.P12569936138464890998

namespace A099801

/-- `∑[C(a(A001222(2*n+1)), 2)]-1` -/
def P12569936138464890998.Spec : Prop :=
  ∀ n, P12569936138464890998.a n = A099801 n

end A099801

/-! ## A099801.P15879668695523538755

`a(n-1)+C(2, A000005(2*n+1))` with `a(0)=0, a(1)=2`
-/

namespace A099801.P15879668695523538755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + Nat.choose 2 (A000005 (2 * n + 1)).toNat

end

end A099801.P15879668695523538755

namespace A099801

/-- `a(n-1)+C(2, A000005(2*n+1))` -/
def P15879668695523538755.Spec : Prop :=
  ∀ n, (P15879668695523538755.a n : ℤ) = A099801 n

end A099801

/-! ## A099801.P11955755039105188978

`a(n-1)+C(A000010(2*n+1), 2*n)` with `a(0)=0, a(1)=2`
-/

namespace A099801.P11955755039105188978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + Nat.choose (A000010 (2 * n + 1)).toNat (2 * n)

end

end A099801.P11955755039105188978

namespace A099801

/-- `a(n-1)+C(A000010(2*n+1), 2*n)` -/
def P11955755039105188978.Spec : Prop :=
  ∀ n, (P11955755039105188978.a n : ℤ) = A099801 n

end A099801

/-! ## A099801.P12374935139828469892

`A099802(n+1)-A000007(n)`
-/

namespace A099801.P12374935139828469892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A000007 n

end

end A099801.P12374935139828469892

namespace A099801

/-- `A099802(n+1)-A000007(n)` -/
def P12374935139828469892.Spec : Prop :=
  ∀ n, P12374935139828469892.a n = A099801 n

end A099801

/-! ## A099801.P17049650711172513074

`A100637(n)-A289493(n+1)`
-/

namespace A099801.P17049650711172513074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A289493 (n + 1)

end

end A099801.P17049650711172513074

namespace A099801

/-- `A100637(n)-A289493(n+1)` -/
def P17049650711172513074.Spec : Prop :=
  ∀ n, P17049650711172513074.a n = A099801 n

theorem P17049650711172513074.correct : P17049650711172513074.Spec := by
  intro n
  simp only [A099801, Nat.add_sub_cancel, A099801.P17049650711172513074.a, A099801.P5122847261811021280.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100637, A100637.P13819822131188342482.a, A289493, A289493.P4700301683383788014.a, A075743, A075743.P8124416718606607743.a, A007310, A007310.P9946423629536973135.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A099801

/-! ## A099801.P16347981104278039854

`A057427(n)*A099802(n+1)`
-/

namespace A099801.P16347981104278039854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A099802 (n + 1)

end

end A099801.P16347981104278039854

namespace A099801

/-- `A057427(n)*A099802(n+1)` -/
def P16347981104278039854.Spec : Prop :=
  ∀ n, P16347981104278039854.a n = A099801 n

end A099801

/-! ## A099801.P2779415779703513069

`and(A057428(n), A099802(n+1))`
-/

namespace A099801.P2779415779703513069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A099802 (n + 1))

end

end A099801.P2779415779703513069

namespace A099801

/-- `and(A057428(n), A099802(n+1))` -/
def P2779415779703513069.Spec : Prop :=
  ∀ n, P2779415779703513069.a n = A099801 n

end A099801

/-! ## A099801.P1607376589059495387

`A060715(n+1)+A000720(n+1)`
-/

namespace A099801.P1607376589059495387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) + A000720 (n + 1)

end

end A099801.P1607376589059495387

namespace A099801

/-- `A060715(n+1)+A000720(n+1)` -/
def P1607376589059495387.Spec : Prop :=
  ∀ n, P1607376589059495387.a n = A099801 n

end A099801

/-! ## A099801.P1561700946423538965

`A291564(n+1)+A035026(n+1)`
-/

namespace A099801.P1561700946423538965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 (n + 1) + A035026 (n + 1)

end

end A099801.P1561700946423538965

namespace A099801

/-- `A291564(n+1)+A035026(n+1)` -/
def P1561700946423538965.Spec : Prop :=
  ∀ n, P1561700946423538965.a n = A099801 n

end A099801

/-!
# A099802: Bisection of A000720.

The programs for A099802, the canonical program `A099802.P6867368783497668993` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099802 has offset 1).

The definition of A099802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099802.P13169830617276463911

`A000720(2*(n+1))`
-/

namespace A099802.P13169830617276463911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1))

end

end A099802.P13169830617276463911

namespace A099802

/-- `A000720(2*(n+1))` -/
def P13169830617276463911.Spec : Prop :=
  ∀ n, P13169830617276463911.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P6867368783497668993

`A000720(n+1)+A035250(n+1)-A010051(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099802

/-- `A000720(n+1)+A035250(n+1)-A010051(n+1)` -/
def P6867368783497668993.Spec : Prop :=
  ∀ n, P6867368783497668993.a n = A099802 (n + 1)

theorem P6867368783497668993.correct : P6867368783497668993.Spec := by
  intro n
  simp only [A099802, Nat.add_sub_cancel]

end A099802

/-! ## A099802.P11115466350932244703

`∑[C(2*n+1, ∏{d}[2*n+1, #])]`
-/

namespace A099802.P11115466350932244703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P11115466350932244703

namespace A099802

/-- `∑[C(2*n+1, ∏{d}[2*n+1, #])]` -/
def P11115466350932244703.Spec : Prop :=
  ∀ n, (P11115466350932244703.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P13123540885360956968

`∑[∏{p}[2*n+1, val(#, 2*n+1)]]`
-/

namespace A099802.P13123540885360956968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P13123540885360956968

namespace A099802

/-- `∑[∏{p}[2*n+1, val(#, 2*n+1)]]` -/
def P13123540885360956968.Spec : Prop :=
  ∀ n, (P13123540885360956968.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P4963861410727651378

`∑[∏{p}[2*n+1, C(#, 2*n+1)]]`
-/

namespace A099802.P4963861410727651378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P4963861410727651378

namespace A099802

/-- `∑[∏{p}[2*n+1, C(#, 2*n+1)]]` -/
def P4963861410727651378.Spec : Prop :=
  ∀ n, (P4963861410727651378.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P2249077424091500315

`∑[A101264(n)]+1`
-/

namespace A099802.P2249077424091500315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099802.P2249077424091500315

namespace A099802

/-- `∑[A101264(n)]+1` -/
def P2249077424091500315.Spec : Prop :=
  ∀ n, P2249077424091500315.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P16646520491938496772

`∑[abs(A112448(n))]+1`
-/

namespace A099802.P16646520491938496772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112448 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099802.P16646520491938496772

namespace A099802

/-- `∑[abs(A112448(n))]+1` -/
def P16646520491938496772.Spec : Prop :=
  ∀ n, P16646520491938496772.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P14595979028849732356

`∑[char[A102781(n+1)]]`
-/

namespace A099802.P14595979028849732356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P14595979028849732356

namespace A099802

/-- `∑[char[A102781(n+1)]]` -/
def P14595979028849732356.Spec : Prop :=
  ∀ n, (P14595979028849732356.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P10613628682030693667

`∑[A323152(2*n+1)]`
-/

namespace A099802.P10613628682030693667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P10613628682030693667

namespace A099802

/-- `∑[A323152(2*n+1)]` -/
def P10613628682030693667.Spec : Prop :=
  ∀ n, P10613628682030693667.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P1979832021669451053

`∑[A340371(2*n+1)]`
-/

namespace A099802.P1979832021669451053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P1979832021669451053

namespace A099802

/-- `∑[A340371(2*n+1)]` -/
def P1979832021669451053.Spec : Prop :=
  ∀ n, P1979832021669451053.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P6848680382954519155

`∑[A365716(2*n+1)]`
-/

namespace A099802.P6848680382954519155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P6848680382954519155

namespace A099802

/-- `∑[A365716(2*n+1)]` -/
def P6848680382954519155.Spec : Prop :=
  ∀ n, P6848680382954519155.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P11817611058773990719

`∑[A380467(2*n+1)]`
-/

namespace A099802.P11817611058773990719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P11817611058773990719

namespace A099802

/-- `∑[A380467(2*n+1)]` -/
def P11817611058773990719.Spec : Prop :=
  ∀ n, P11817611058773990719.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P7195781507578767539

`1-A210469(n+1)+n`
-/

namespace A099802.P7195781507578767539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210469 (n + 1) + (n : ℤ)

end

end A099802.P7195781507578767539

namespace A099802

/-- `1-A210469(n+1)+n` -/
def P7195781507578767539.Spec : Prop :=
  ∀ n, P7195781507578767539.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P2164534606257676450

`∑[A010051(2*n+1)]+1`
-/

namespace A099802.P2164534606257676450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099802.P2164534606257676450

namespace A099802

/-- `∑[A010051(2*n+1)]+1` -/
def P2164534606257676450.Spec : Prop :=
  ∀ n, P2164534606257676450.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P14607027691807732747

`∑[char[floor(A006530(n+1)/2)]]`
-/

namespace A099802.P14607027691807732747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (n + 1) : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P14607027691807732747

namespace A099802

/-- `∑[char[floor(A006530(n+1)/2)]]` -/
def P14607027691807732747.Spec : Prop :=
  ∀ n, (P14607027691807732747.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P13615249284112506524

`∑[char[floor(A020639(n+1)/2)]]`
-/

namespace A099802.P13615249284112506524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (n + 1) : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P13615249284112506524

namespace A099802

/-- `∑[char[floor(A020639(n+1)/2)]]` -/
def P13615249284112506524.Spec : Prop :=
  ∀ n, (P13615249284112506524.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P17933745349716037803

`∑[char[floor(sinh(log(A000040(n+1))))]]`
-/

namespace A099802.P17933745349716037803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000040 (n + 1) : ℝ))⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P17933745349716037803

namespace A099802

/-- `∑[char[floor(sinh(log(A000040(n+1))))]]` -/
def P17933745349716037803.Spec : Prop :=
  ∀ n, (P17933745349716037803.a n : ℤ) = A099802 (n + 1)

end A099802

/-! ## A099802.P17714276043418660195

`∑[round(1/A000005(2*n+1))]`
-/

namespace A099802.P17714276043418660195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A000005 (2 * n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099802.P17714276043418660195

namespace A099802

/-- `∑[round(1/A000005(2*n+1))]` -/
def P17714276043418660195.Spec : Prop :=
  ∀ n, P17714276043418660195.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P14099040107301577961

`A028310(A099801(n))`
-/

namespace A099802.P14099040107301577961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099801 n).toNat

end

end A099802.P14099040107301577961

namespace A099802

/-- `A028310(A099801(n))` -/
def P14099040107301577961.Spec : Prop :=
  ∀ n, P14099040107301577961.a n = A099802 (n + 1)

end A099802

/-! ## A099802.P7735755690635461416

`A099801(n)+A000007(n)`
-/

namespace A099802.P7735755690635461416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n + A000007 n

end

end A099802.P7735755690635461416

namespace A099802

/-- `A099801(n)+A000007(n)` -/
def P7735755690635461416.Spec : Prop :=
  ∀ n, P7735755690635461416.a n = A099802 (n + 1)

end A099802

/-!
# A099805: Positions of records for terms in the continued fraction of Soldner's constant (A070769).

The programs for A099805, there is no canonical definition to state claims against.
-/

/-! ## A099805.P12624756701041945623

`A229230(n+1)+1`
-/

namespace A099805.P12624756701041945623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229230 (n + 1) + 1

end

end A099805.P12624756701041945623

/-! ## A099805.P11868058700540581212

`∏{p}[n+1, #]*A003871(A316694(n+1))`
-/

namespace A099805.P11868058700540581212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A003871 (A316694 (n + 1)).toNat

end

end A099805.P11868058700540581212

/-!
# A099810: a(n) = a(n-1) XOR (a(n-1) + a(n-2)), with a(1)=1, a(2)=3, where XOR is the binary exclusive OR operation.

The programs for A099810, the canonical program `A099810.P9087988449188924237` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099810 has offset 1).

The definition of A099810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099810.P9087988449188924237

`xor(a(n-1), a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099810

/-- `xor(a(n-1), a(n-1)+a(n-2))` -/
def P9087988449188924237.Spec : Prop :=
  ∀ n, (P9087988449188924237.a n : ℤ) = A099810 (n + 1)

theorem P9087988449188924237.correct : P9087988449188924237.Spec := by
  intro n
  simp only [A099810, Nat.add_sub_cancel]

end A099810

/-! ## A099810.P10698029279323922860

`xor(a(n-1)-xor(-2, a(n-2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099810.P10698029279323922860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (a (n - 1) - Int.xor (-2) (a (n - 2))) (a (n - 1))

end

end A099810.P10698029279323922860

namespace A099810

/-- `xor(a(n-1)-xor(-2, a(n-2)), a(n-1))` -/
def P10698029279323922860.Spec : Prop :=
  ∀ n, P10698029279323922860.a n = A099810 (n + 1)

end A099810

/-! ## A099810.P12545908963680736775

`xor(a(n-1)-(n²%n-a(n-2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099810.P12545908963680736775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (a (n - 1) - (((n ^ 2 % n : ℕ) : ℤ) - a (n - 2))) (a (n - 1))

end

end A099810.P12545908963680736775

namespace A099810

/-- `xor(a(n-1)-(n²%n-a(n-2)), a(n-1))` -/
def P12545908963680736775.Spec : Prop :=
  ∀ n, P12545908963680736775.a n = A099810 (n + 1)

end A099810

/-! ## A099810.P7311015970709800312

`xor(2-(4/2-a(n-1)-a(n-2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099810.P7311015970709800312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))) (a (n - 1))

end

end A099810.P7311015970709800312

namespace A099810

/-- `xor(2-(4/2-a(n-1)-a(n-2)), a(n-1))` -/
def P7311015970709800312.Spec : Prop :=
  ∀ n, P7311015970709800312.a n = A099810 (n + 1)

end A099810

/-! ## A099810.P5864821731636124698

`xor(1-or(1, 1-a(n-1)-a(n-2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099810.P5864821731636124698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (1 - Int.lor 1 (1 - a (n - 1) - a (n - 2))) (a (n - 1))

end

end A099810.P5864821731636124698

namespace A099810

/-- `xor(1-or(1, 1-a(n-1)-a(n-2)), a(n-1))` -/
def P5864821731636124698.Spec : Prop :=
  ∀ n, P5864821731636124698.a n = A099810 (n + 1)

end A099810

/-!
# A099811: a(n) = a(n-1) XOR Sum_{k=1..n-1} a(k), with a(1)=1, a(2)=3, where XOR is the binary exclusive OR operation.

The programs for A099811, the canonical program `A099811.P8664965666514160557` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099811 has offset 1).

The definition of A099811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099811.P8664965666514160557

`xor(a(n-1)+xor(a(n-1), a(n-2)), a(n-1))` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099811

/-- `xor(a(n-1)+xor(a(n-1), a(n-2)), a(n-1))` -/
def P8664965666514160557.Spec : Prop :=
  ∀ n, (P8664965666514160557.a n : ℤ) = A099811 (n + 1)

theorem P8664965666514160557.correct : P8664965666514160557.Spec := by
  intro n
  simp only [A099811, Nat.add_sub_cancel]

end A099811

/-! ## A099811.P11587584012522639864

`A033677(A052340(n+1))+A000292(n)`
-/

namespace A099811.P11587584012522639864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A052340 (n + 1)).toNat + A000292 n

end

end A099811.P11587584012522639864

namespace A099811

/-- `A033677(A052340(n+1))+A000292(n)` -/
def P11587584012522639864.Spec : Prop :=
  ∀ n, P11587584012522639864.a n = A099811 (n + 1)

end A099811

/-! ## A099811.P1604783986145469317

`A033677(record[A050412(n+1)])+A000292(n)`
-/

namespace A099811.P1604783986145469317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000292 n

end

end A099811.P1604783986145469317

namespace A099811

/-- `A033677(record[A050412(n+1)])+A000292(n)` -/
def P1604783986145469317.Spec : Prop :=
  ∀ n, P1604783986145469317.a n = A099811 (n + 1)

end A099811

/-!
# A099812: Number of distinct primes dividing 2n (i.e., omega(2n)).

The programs for A099812, the canonical program `A099812.P7682174187740935634` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099812 has offset 1).

The definition of A099812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099812.P7682174187740935634

`A001221(2*(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099812

/-- `A001221(2*(n+1))` -/
def P7682174187740935634.Spec : Prop :=
  ∀ n, P7682174187740935634.a n = A099812 (n + 1)

theorem P7682174187740935634.correct : P7682174187740935634.Spec := by
  intro n
  simp only [A099812, Nat.add_sub_cancel]

end A099812

/-! ## A099812.P7443934105847958481

`∑{p}[n+1, #%2]+1`
-/

namespace A099812.P7443934105847958481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p % 2 + 1

end

end A099812.P7443934105847958481

namespace A099812

/-- `∑{p}[n+1, #%2]+1` -/
def P7443934105847958481.Spec : Prop :=
  ∀ n, (P7443934105847958481.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P9229661844898680724

`∑{p}[n+1, and(1, #)]+1`
-/

namespace A099812.P9229661844898680724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p + 1

end

end A099812.P9229661844898680724

namespace A099812

/-- `∑{p}[n+1, and(1, #)]+1` -/
def P9229661844898680724.Spec : Prop :=
  ∀ n, (P9229661844898680724.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P3301984134234328009

`∑{e}[∏{p}[2*(n+1), #], #]`
-/

namespace A099812.P3301984134234328009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A099812.P3301984134234328009

namespace A099812

/-- `∑{e}[∏{p}[2*(n+1), #], #]` -/
def P3301984134234328009.Spec : Prop :=
  ∀ n, (P3301984134234328009.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P5203510665217195098

`∑{p}[2*(n+1), ceil(1/#)]`
-/

namespace A099812.P5203510665217195098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A099812.P5203510665217195098

namespace A099812

/-- `∑{p}[2*(n+1), ceil(1/#)]` -/
def P5203510665217195098.Spec : Prop :=
  ∀ n, P5203510665217195098.a n = A099812 (n + 1)

end A099812

/-! ## A099812.P15644938855394980798

`∑{e}[2*(n+1), ceil(1/#)]`
-/

namespace A099812.P15644938855394980798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A099812.P15644938855394980798

namespace A099812

/-- `∑{e}[2*(n+1), ceil(1/#)]` -/
def P15644938855394980798.Spec : Prop :=
  ∀ n, P15644938855394980798.a n = A099812 (n + 1)

end A099812

/-! ## A099812.P844023492557311635

`log2(A100008(n+1))`
-/

namespace A099812.P844023492557311635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100008 (n + 1) : ℝ)

end

end A099812.P844023492557311635

namespace A099812

/-- `log2(A100008(n+1))` -/
def P844023492557311635.Spec : Prop :=
  ∀ n, P844023492557311635.a n = (A099812 (n + 1) : ℝ)

end A099812

/-! ## A099812.P6908511309826389862

`A005087(n+1)+1`
-/

namespace A099812.P6908511309826389862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + 1

end

end A099812.P6908511309826389862

namespace A099812

/-- `A005087(n+1)+1` -/
def P6908511309826389862.Spec : Prop :=
  ∀ n, P6908511309826389862.a n = A099812 (n + 1)

end A099812

/-! ## A099812.P5354725894429913054

`∑{d}[n+1, A080545(#)]`
-/

namespace A099812.P5354725894429913054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080545 d

end

end A099812.P5354725894429913054

namespace A099812

/-- `∑{d}[n+1, A080545(#)]` -/
def P5354725894429913054.Spec : Prop :=
  ∀ n, P5354725894429913054.a n = A099812 (n + 1)

end A099812

/-! ## A099812.P16929926167645983948

`log2(A068068(n+1))+1`
-/

namespace A099812.P16929926167645983948
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A068068 (n + 1) : ℝ) + 1

end

end A099812.P16929926167645983948

namespace A099812

/-- `log2(A068068(n+1))+1` -/
def P16929926167645983948.Spec : Prop :=
  ∀ n, P16929926167645983948.a n = (A099812 (n + 1) : ℝ)

end A099812

/-! ## A099812.P17317220052353997155

`dr(A001221(lcm(2, n+1)))`
-/

namespace A099812.P17317220052353997155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001221 (Nat.lcm 2 (n + 1)))

end

end A099812.P17317220052353997155

namespace A099812

/-- `dr(A001221(lcm(2, n+1)))` -/
def P17317220052353997155.Spec : Prop :=
  ∀ n, (P17317220052353997155.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P5844836039877841259

`dr(A001221(n+2+n))`
-/

namespace A099812.P5844836039877841259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001221 (n + 2 + n))

end

end A099812.P5844836039877841259

namespace A099812

/-- `dr(A001221(n+2+n))` -/
def P5844836039877841259.Spec : Prop :=
  ∀ n, (P5844836039877841259.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P4347456498931203376

`A360115(2*(n+1))+1`
-/

namespace A099812.P4347456498931203376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360115 (2 * (n + 1)) + 1

end

end A099812.P4347456498931203376

namespace A099812

/-- `A360115(2*(n+1))+1` -/
def P4347456498931203376.Spec : Prop :=
  ∀ n, P4347456498931203376.a n = A099812 (n + 1)

end A099812

/-! ## A099812.P4425658179723588235

`2-A351619(2*(n+1))`
-/

namespace A099812.P4425658179723588235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A351619 (2 * (n + 1))

end

end A099812.P4425658179723588235

namespace A099812

/-- `2-A351619(2*(n+1))` -/
def P4425658179723588235.Spec : Prop :=
  ∀ n, P4425658179723588235.a n = A099812 (n + 1)

end A099812

/-! ## A099812.P1642511768274208636

`val(A034676(n+1), 2)+1`
-/

namespace A099812.P1642511768274208636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034676 (n + 1)).toNat 2 + 1

end

end A099812.P1642511768274208636

namespace A099812

/-- `val(A034676(n+1), 2)+1` -/
def P1642511768274208636.Spec : Prop :=
  ∀ n, (P1642511768274208636.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P2152041845015887728

`val(A034678(n+1), 2)+1`
-/

namespace A099812.P2152041845015887728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034678 (n + 1)).toNat 2 + 1

end

end A099812.P2152041845015887728

namespace A099812

/-- `val(A034678(n+1), 2)+1` -/
def P2152041845015887728.Spec : Prop :=
  ∀ n, (P2152041845015887728.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P16386517293719905962

`val(A034680(n+1), 2)+1`
-/

namespace A099812.P16386517293719905962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034680 (n + 1)).toNat 2 + 1

end

end A099812.P16386517293719905962

namespace A099812

/-- `val(A034680(n+1), 2)+1` -/
def P16386517293719905962.Spec : Prop :=
  ∀ n, (P16386517293719905962.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P12576236080366703337

`val(A034682(n+1), 2)+1`
-/

namespace A099812.P12576236080366703337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034682 (n + 1)).toNat 2 + 1

end

end A099812.P12576236080366703337

namespace A099812

/-- `val(A034682(n+1), 2)+1` -/
def P12576236080366703337.Spec : Prop :=
  ∀ n, (P12576236080366703337.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P9968852664539939199

`val(A324283(n+1), 2)+1`
-/

namespace A099812.P9968852664539939199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324283 (n + 1)).toNat 2 + 1

end

end A099812.P9968852664539939199

namespace A099812

/-- `val(A324283(n+1), 2)+1` -/
def P9968852664539939199.Spec : Prop :=
  ∀ n, (P9968852664539939199.a n : ℤ) = A099812 (n + 1)

end A099812

/-! ## A099812.P113239687498993946

`val(A351265(n+1), 2)+1`
-/

namespace A099812.P113239687498993946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351265 (n + 1)).toNat 2 + 1

end

end A099812.P113239687498993946

namespace A099812

/-- `val(A351265(n+1), 2)+1` -/
def P113239687498993946.Spec : Prop :=
  ∀ n, (P113239687498993946.a n : ℤ) = A099812 (n + 1)

end A099812

/-!
# A099813: Bisection of A007318.

The programs for A099813, the canonical program `A099813.P574082998773418701` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099813 has offset 0).

The definition of A099813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099813.P7236415926511699804

`A028326(Δ[n²])/2`
-/

namespace A099813.P7236415926511699804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A099813.P7236415926511699804

namespace A099813

/-- `A028326(Δ[n²])/2` -/
def P7236415926511699804.Spec : Prop :=
  ∀ n, P7236415926511699804.a n = (A099813 n : ℚ)

end A099813

/-! ## A099813.P574082998773418701

`ceil(A109128(2*n+1)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099813

/-- `ceil(A109128(2*n+1)/2)` -/
def P574082998773418701.Spec : Prop :=
  ∀ n, P574082998773418701.a n = A099813 n

theorem P574082998773418701.correct : P574082998773418701.Spec := by
  intro n
  simp only [A099813]

end A099813

/-! ## A099813.P9444061434080729761

`ceil(A124927(2*n+1)/2)`
-/

namespace A099813.P9444061434080729761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 (2 * n + 1) : ℚ) / 2⌉

end

end A099813.P9444061434080729761

namespace A099813

/-- `ceil(A124927(2*n+1)/2)` -/
def P9444061434080729761.Spec : Prop :=
  ∀ n, P9444061434080729761.a n = A099813 n

end A099813

/-! ## A099813.P7196427067968906315

`A028263(2*n+1)-A014410(2*n+3)`
-/

namespace A099813.P7196427067968906315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (2 * n + 1) - A014410 (2 * n + 3)

end

end A099813.P7196427067968906315

namespace A099813

/-- `A028263(2*n+1)-A014410(2*n+3)` -/
def P7196427067968906315.Spec : Prop :=
  ∀ n, P7196427067968906315.a n = A099813 n

end A099813

/-! ## A099813.P10100150919959054222

`A285118(2*n+1)+A285116(2*n+1)`
-/

namespace A099813.P10100150919959054222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 (2 * n + 1) + A285116 (2 * n + 1)

end

end A099813.P10100150919959054222

namespace A099813

/-- `A285118(2*n+1)+A285116(2*n+1)` -/
def P10100150919959054222.Spec : Prop :=
  ∀ n, P10100150919959054222.a n = A099813 n

end A099813

/-! ## A099813.P12749188615283551080

`A007318(Δ[n²])`
-/

namespace A099813.P12749188615283551080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099813.P12749188615283551080

namespace A099813

/-- `A007318(Δ[n²])` -/
def P12749188615283551080.Spec : Prop :=
  ∀ n, P12749188615283551080.a n = A099813 n

end A099813

/-! ## A099813.P6743275503158334078

`or(A007318(2*n+1), char[1])`
-/

namespace A099813.P6743275503158334078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (2 * n + 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099813.P6743275503158334078

namespace A099813

/-- `or(A007318(2*n+1), char[1])` -/
def P6743275503158334078.Spec : Prop :=
  ∀ n, P6743275503158334078.a n = A099813 n

end A099813

/-! ## A099813.P725701309470544969

`lcm((-1)^n, A007318(or(1, 2*n)))`
-/

namespace A099813.P725701309470544969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A007318 (Nat.lor 1 (2 * n)))

end

end A099813.P725701309470544969

namespace A099813

/-- `lcm((-1)^n, A007318(or(1, 2*n)))` -/
def P725701309470544969.Spec : Prop :=
  ∀ n, (P725701309470544969.a n : ℤ) = A099813 n

end A099813

/-! ## A099813.P2929087130293031416

`∏{d}[2*n+1, A007318(C(#, 2*n))]`
-/

namespace A099813.P2929087130293031416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007318 (Nat.choose d (2 * n))

end

end A099813.P2929087130293031416

namespace A099813

/-- `∏{d}[2*n+1, A007318(C(#, 2*n))]` -/
def P2929087130293031416.Spec : Prop :=
  ∀ n, P2929087130293031416.a n = A099813 n

end A099813

/-! ## A099813.P2716730697197596960

`gcd(n, n-1)*A007318(n+1+n)`
-/

namespace A099813.P2716730697197596960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℤ) * A007318 (n + 1 + n)

end

end A099813.P2716730697197596960

namespace A099813

/-- `gcd(n, n-1)*A007318(n+1+n)` -/
def P2716730697197596960.Spec : Prop :=
  ∀ n, P2716730697197596960.a n = A099813 n

end A099813

/-! ## A099813.P2515164374139540071

`Δ[a(n-1)+A007318(2*n-1)]` with `a(0)=2`
-/

namespace A099813.P2515164374139540071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + A007318 (2 * n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099813.P2515164374139540071

namespace A099813

/-- `Δ[a(n-1)+A007318(2*n-1)]` -/
def P2515164374139540071.Spec : Prop :=
  ∀ n, P2515164374139540071.a n = A099813 n

end A099813

/-! ## A099813.P3685634695118703640

`and(2, A007318(n)²)+A007318(2*n+1)`
-/

namespace A099813.P3685634695118703640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A007318 n ^ 2) + A007318 (2 * n + 1)

end

end A099813.P3685634695118703640

namespace A099813

/-- `and(2, A007318(n)²)+A007318(2*n+1)` -/
def P3685634695118703640.Spec : Prop :=
  ∀ n, P3685634695118703640.a n = A099813 n

end A099813

/-! ## A099813.P16499104991629922709

`A000041(C(n, n²))*A007318(2*n+1)`
-/

namespace A099813.P16499104991629922709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A007318 (2 * n + 1)

end

end A099813.P16499104991629922709

namespace A099813

/-- `A000041(C(n, n²))*A007318(2*n+1)` -/
def P16499104991629922709.Spec : Prop :=
  ∀ n, P16499104991629922709.a n = A099813 n

end A099813

/-! ## A099813.P7592448383776065834

`A007318(2*n+1)-A008683(4*(n+1))`
-/

namespace A099813.P7592448383776065834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n + 1) - A008683 (4 * (n + 1))

end

end A099813.P7592448383776065834

namespace A099813

/-- `A007318(2*n+1)-A008683(4*(n+1))` -/
def P7592448383776065834.Spec : Prop :=
  ∀ n, P7592448383776065834.a n = A099813 n

end A099813

/-! ## A099813.P3009792836479981535

`A008683(4*(n+2))+A007318(2*n+1)`
-/

namespace A099813.P3009792836479981535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 2)) + A007318 (2 * n + 1)

end

end A099813.P3009792836479981535

namespace A099813

/-- `A008683(4*(n+2))+A007318(2*n+1)` -/
def P3009792836479981535.Spec : Prop :=
  ∀ n, P3009792836479981535.a n = A099813 n

end A099813

/-! ## A099813.P14489404042999973706

`A000040(n+2)%2*A007318(2*n+1)`
-/

namespace A099813.P14489404042999973706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A007318 (2 * n + 1)

end

end A099813.P14489404042999973706

namespace A099813

/-- `A000040(n+2)%2*A007318(2*n+1)` -/
def P14489404042999973706.Spec : Prop :=
  ∀ n, P14489404042999973706.a n = A099813 n

end A099813

/-! ## A099813.P1572525929951080055

`A007318(2*n+1)+C(2, A161004(n+2))`
-/

namespace A099813.P1572525929951080055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n + 1) + (Nat.choose 2 (A161004 (n + 2)).toNat : ℤ)

end

end A099813.P1572525929951080055

namespace A099813

/-- `A007318(2*n+1)+C(2, A161004(n+2))` -/
def P1572525929951080055.Spec : Prop :=
  ∀ n, P1572525929951080055.a n = A099813 n

end A099813

/-! ## A099813.P8238048834440183585

`A000041(and(1, n-1))*A007318(2*n+1)`
-/

namespace A099813.P8238048834440183585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 ((n : ℤ) - 1)).toNat * A007318 (2 * n + 1)

end

end A099813.P8238048834440183585

namespace A099813

/-- `A000041(and(1, n-1))*A007318(2*n+1)` -/
def P8238048834440183585.Spec : Prop :=
  ∀ n, P8238048834440183585.a n = A099813 n

end A099813

/-! ## A099813.P5350976525788581083

`A007318(A127739(n+2))*A007318(2*n+1)`
-/

namespace A099813.P5350976525788581083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A127739 (n + 2)).toNat * A007318 (2 * n + 1)

end

end A099813.P5350976525788581083

namespace A099813

/-- `A007318(A127739(n+2))*A007318(2*n+1)` -/
def P5350976525788581083.Spec : Prop :=
  ∀ n, P5350976525788581083.a n = A099813 n

end A099813

/-!
# A099814: Bisection of A002275.

The programs for A099814, the canonical program `A099814.P5329394022456049275` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099814 has offset 0).

The definition of A099814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099814.P5329394022456049275

`(100^n-1)/9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099814

/-- `(100^n-1)/9` -/
def P5329394022456049275.Spec : Prop :=
  ∀ n, P5329394022456049275.a n = (A099814 n : ℚ)

end A099814

/-! ## A099814.P11287620466827173960

`a(n-1)+11*100^(n-1)` with `a(0)=0`
-/

namespace A099814.P11287620466827173960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 11 * (100 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A099814.P11287620466827173960

namespace A099814

/-- `a(n-1)+11*100^(n-1)` -/
def P11287620466827173960.Spec : Prop :=
  ∀ n, P11287620466827173960.a n = (A099814 n : ℚ)

end A099814

/-! ## A099814.P14042173387737596530

`100*a(n-1)+11` with `a(0)=0`
-/

namespace A099814.P14042173387737596530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  100 * a (n - 1) + 11

end

end A099814.P14042173387737596530

namespace A099814

/-- `100*a(n-1)+11` -/
def P14042173387737596530.Spec : Prop :=
  ∀ n, (P14042173387737596530.a n : ℤ) = A099814 n

end A099814

/-! ## A099814.P4194742513001637119

`record[floor(10^n*(-1)^n/9)]`
-/

namespace A099814.P4194742513001637119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((10 ^ n : ℤ) * (-1) ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099814.P4194742513001637119

namespace A099814

/-- `record[floor(10^n*(-1)^n/9)]` -/
def P4194742513001637119.Spec : Prop :=
  ∀ n, P4194742513001637119.a n = A099814 n

end A099814

/-! ## A099814.P11447089758993795571

`or(1, 10^n)*floor(10^n/9)`
-/

namespace A099814.P11447089758993795571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 ^ n) : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋

end

end A099814.P11447089758993795571

namespace A099814

/-- `or(1, 10^n)*floor(10^n/9)` -/
def P11447089758993795571.Spec : Prop :=
  ∀ n, P11447089758993795571.a n = A099814 n

end A099814

/-! ## A099814.P2795876140082776081

`lcm(or(1, 10^n), floor(10^n/9))`
-/

namespace A099814.P2795876140082776081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 (10 ^ n) : ℤ) ⌊(10 ^ n : ℚ) / 9⌋

end

end A099814.P2795876140082776081

namespace A099814

/-- `lcm(or(1, 10^n), floor(10^n/9))` -/
def P2795876140082776081.Spec : Prop :=
  ∀ n, (P2795876140082776081.a n : ℤ) = A099814 n

end A099814

/-! ## A099814.P10879231958803753889

`floor(10^n/9)*ceil(tanh(n)+10^n)`
-/

namespace A099814.P10879231958803753889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ * ⌈Real.tanh (n : ℝ) + (10 ^ n : ℝ)⌉

end

end A099814.P10879231958803753889

namespace A099814

/-- `floor(10^n/9)*ceil(tanh(n)+10^n)` -/
def P10879231958803753889.Spec : Prop :=
  ∀ n, P10879231958803753889.a n = A099814 n

end A099814

/-! ## A099814.P2302746737036684222

`(and(-2, 10^n)+1)*floor(10^n/9)`
-/

namespace A099814.P2302746737036684222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) + 1) * ⌊(10 ^ n : ℚ) / 9⌋

end

end A099814.P2302746737036684222

namespace A099814

/-- `(and(-2, 10^n)+1)*floor(10^n/9)` -/
def P2302746737036684222.Spec : Prop :=
  ∀ n, P2302746737036684222.a n = A099814 n

end A099814

/-! ## A099814.P18431761847036394466

`A002275(2*n)`
-/

namespace A099814.P18431761847036394466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * n)

end

end A099814.P18431761847036394466

namespace A099814

/-- `A002275(2*n)` -/
def P18431761847036394466.Spec : Prop :=
  ∀ n, P18431761847036394466.a n = A099814 n

end A099814

/-! ## A099814.P10247207201279614318

`A081857(4*n)`
-/

namespace A099814.P10247207201279614318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (4 * n)

end

end A099814.P10247207201279614318

namespace A099814

/-- `A081857(4*n)` -/
def P10247207201279614318.Spec : Prop :=
  ∀ n, P10247207201279614318.a n = A099814 n

end A099814

/-!
# A099815: Maximum determinant that can be formed from the optimal set of nonnegative 3 X 3 matrix elements <=n, which maximize the number of different determinants given in A099834.

The programs for A099815, there is no canonical definition to state claims against.
-/

/-! ## A099815.P13143584839180578293

`A078106(A004116(n+3))-A301823(n+1)`
-/

namespace A099815.P13143584839180578293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078106 (A004116 (n + 3)).toNat - A301823 (n + 1)

end

end A099815.P13143584839180578293

/-!
# A099816: Bisection of A000796 (decimal expansion of Pi).

The programs for A099816, there is no canonical definition to state claims against.
-/

/-! ## A099816.P1854556979952033327

`A000796(2*n)`
-/

namespace A099816.P1854556979952033327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1)

end

end A099816.P1854556979952033327

/-! ## A099816.P9704960159723026809

`A037244(n)%10`
-/

namespace A099816.P9704960159723026809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037244 n) 10

end

end A099816.P9704960159723026809

/-! ## A099816.P8438890237533864360

`A123152(Δ[n²])-1`
-/

namespace A099816.P8438890237533864360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099816.P8438890237533864360

/-! ## A099816.P10861462050741382221

`A010879(A037244(n))`
-/

namespace A099816.P10861462050741382221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A037244 n).toNat

end

end A099816.P10861462050741382221

/-! ## A099816.P8802041900100215741

`A000796(A005843(n))%A005151(n+4)`
-/

namespace A099816.P8802041900100215741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 ((A005843 n).toNat + 1)) (A005151 (n + 4))

end

end A099816.P8802041900100215741

/-! ## A099816.P10110251897014421550

`A187747(2*n)+A001113(2*n)`
-/

namespace A099816.P10110251897014421550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 (2 * n) + A001113 (2 * n + 1)

end

end A099816.P10110251897014421550

/-! ## A099816.P6189744661635235205

`sqrt(A072448(Δ[n²]))`
-/

namespace A099816.P6189744661635235205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A099816.P6189744661635235205

/-! ## A099816.P4973405609634997756

`9-A030644(2*n)`
-/

namespace A099816.P4973405609634997756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (2 * n + 1)

end

end A099816.P4973405609634997756

/-! ## A099816.P4111304467163556733

`A054249(Δ[n²])+1`
-/

namespace A099816.P4111304467163556733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099816.P4111304467163556733

/-! ## A099816.P11698132866446625919

`A073212(2*n)-A001113(2*n)`
-/

namespace A099816.P11698132866446625919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 (2 * n) - A001113 (2 * n + 1)

end

end A099816.P11698132866446625919

/-! ## A099816.P15662311508168303751

`A099817(n+1)-A095916(2*n+1)`
-/

namespace A099816.P15662311508168303751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099817 (n + 1) - A095916 (2 * n + 1)

end

end A099816.P15662311508168303751

/-! ## A099816.P9775739172089238540

`(A187747(2*n)+A073212(2*n))/2`
-/

namespace A099816.P9775739172089238540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187747 (2 * n) + A073212 (2 * n) : ℚ) / 2

end

end A099816.P9775739172089238540

/-! ## A099816.P12254723295146444773

`A010879(A065253(Δ[n²]))`
-/

namespace A099816.P12254723295146444773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A099816.P12254723295146444773

/-! ## A099816.P1740514685665754371

`A001355(4*n+1)`
-/

namespace A099816.P1740514685665754371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (4 * n + 1)

end

end A099816.P1740514685665754371

/-! ## A099816.P5450893598015904531

`A110766(4*n+1)`
-/

namespace A099816.P5450893598015904531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (4 * n + 1)

end

end A099816.P5450893598015904531

/-! ## A099816.P8312042310927034276

`A076790(3*n+n+1)`
-/

namespace A099816.P8312042310927034276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (3 * n + (n + 1))

end

end A099816.P8312042310927034276

/-! ## A099816.P6306378474207787652

`A010879(A103868(n+1))`
-/

namespace A099816.P6306378474207787652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A103868 (n + 1)).toNat

end

end A099816.P6306378474207787652

/-! ## A099816.P6664932822495743579

`A103868(n+1)%A040020(n)`
-/

namespace A099816.P6664932822495743579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103868 (n + 1)) (A040020 n)

end

end A099816.P6664932822495743579

/-! ## A099816.P18148760282806186221

`A078424(A016921(n))`
-/

namespace A099816.P18148760282806186221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A016921 n).toNat

end

end A099816.P18148760282806186221

/-! ## A099816.P2497942306756396417

`A059582(2*n+1)-A059582(2*n)`
-/

namespace A099816.P2497942306756396417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (2 * n + 1) - A059582 (2 * n)

end

end A099816.P2497942306756396417

/-!
# A099817: Bisection of A000796 (decimal expansion of Pi).

The programs for A099817, there is no canonical definition to state claims against.
-/

/-! ## A099817.P10896596354819707355

`A000796(Δ[n²])`
-/

namespace A099817.P10896596354819707355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A099817.P10896596354819707355

/-! ## A099817.P2698009502688310638

`dr(A000796(2*n+1))`
-/

namespace A099817.P2698009502688310638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 (2 * n + 1 + 1))

end

end A099817.P2698009502688310638

/-! ## A099817.P11195492913959681515

`A123152(2*(n+1))-1`
-/

namespace A099817.P11195492913959681515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (2 * (n + 1)) - 1

end

end A099817.P11195492913959681515

/-! ## A099817.P2525663356567916302

`A054899(A037244(n+1))`
-/

namespace A099817.P2525663356567916302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A037244 (n + 1)).toNat

end

end A099817.P2525663356567916302

/-! ## A099817.P4079300662437640996

`A000796(A000027(2*n+1))%10`
-/

namespace A099817.P4079300662437640996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 ((A000027 (2 * n + 1)).toNat + 1)) 10

end

end A099817.P4079300662437640996

/-! ## A099817.P4859612339860226328

`gcd(A000038(n), A000796(2*n+1))`
-/

namespace A099817.P4859612339860226328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000796 (2 * n + 1 + 1))

end

end A099817.P4859612339860226328

/-! ## A099817.P7230290853014115037

`lcm(A000796(2*n+1), A020985(n))`
-/

namespace A099817.P7230290853014115037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000796 (2 * n + 1 + 1)) (A020985 n)

end

end A099817.P7230290853014115037

/-! ## A099817.P6092454762632040735

`and(A000796(2*n+1), A125169(n))`
-/

namespace A099817.P6092454762632040735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000796 (2 * n + 1 + 1)) (A125169 n)

end

end A099817.P6092454762632040735

/-! ## A099817.P1816095743640270514

`or(A000007(n), A000796(2*n+1))`
-/

namespace A099817.P1816095743640270514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000796 (2 * n + 1 + 1))

end

end A099817.P1816095743640270514

/-! ## A099817.P10546304796114462741

`A000796(2*n+1)+A000038(n+1)`
-/

namespace A099817.P10546304796114462741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1 + 1) + A000038 (n + 1)

end

end A099817.P10546304796114462741

/-! ## A099817.P13941903692707637890

`A000796(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A099817.P13941903692707637890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1 + 1) + (2 - A020639 (2 * (n + 1)))

end

end A099817.P13941903692707637890

/-! ## A099817.P11161948378668709919

`A000796(2*n+1)+A000007(n+1)`
-/

namespace A099817.P11161948378668709919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1 + 1) + A000007 (n + 1)

end

end A099817.P11161948378668709919

/-! ## A099817.P17063148293537160815

`9-A153799(2*n)`
-/

namespace A099817.P17063148293537160815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153799 (2 * n)

end

end A099817.P17063148293537160815

/-! ## A099817.P13775506015675720601

`sqrt(A072448(2*(n+1)))`
-/

namespace A099817.P13775506015675720601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (2 * (n + 1)) : ℝ)

end

end A099817.P13775506015675720601

/-! ## A099817.P17836220288985662565

`A054249(2*(n+1))-1`
-/

namespace A099817.P17836220288985662565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (2 * (n + 1)) - 1

end

end A099817.P17836220288985662565

/-! ## A099817.P5732881466065883988

`9-A030644(2*n+1)`
-/

namespace A099817.P5732881466065883988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (2 * n + 1 + 1)

end

end A099817.P5732881466065883988

/-! ## A099817.P11173524340352670575

`A048766(A261197(2*(n+1)))`
-/

namespace A099817.P11173524340352670575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (2 * (n + 1))).toNat

end

end A099817.P11173524340352670575

/-! ## A099817.P635129910511944980

`A099816(n+1)+A095916(2*n+1)`
-/

namespace A099817.P635129910511944980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099816 (n + 1) + A095916 (2 * n + 1)

end

end A099817.P635129910511944980

/-! ## A099817.P14697544036701819889

`A095916(2*n+1)+A000796(2*n)`
-/

namespace A099817.P14697544036701819889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (2 * n + 1) + A000796 (2 * n + 1)

end

end A099817.P14697544036701819889

/-! ## A099817.P4528028185304223688

`A046974(2*n+1)-A046974(2*n)`
-/

namespace A099817.P4528028185304223688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (2 * n + 1) - A046974 (2 * n)

end

end A099817.P4528028185304223688

/-!
# A099818: Bisection of A000521.

The programs for A099818, there is no canonical definition to state claims against.
-/

/-! ## A099818.P11293574313560913761

`A289063(2*n)`
-/

namespace A099818.P11293574313560913761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289063 (2 * n)

end

end A099818.P11293574313560913761

/-!
# A099820: Even nonnegative integers in base 2 (bisection of A007088).

The programs for A099820, the canonical program `A099820.P9969869862672452089` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099820 has offset 0).

The definition of A099820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099820.P9969869862672452089

`A007088(2*n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099820

/-- `A007088(2*n)` -/
def P9969869862672452089.Spec : Prop :=
  ∀ n, P9969869862672452089.a n = A099820 n

theorem P9969869862672452089.correct : P9969869862672452089.Spec := by
  intro n
  simp only [A099820]

end A099820

/-! ## A099820.P16896859513685559961

`5*(2*a(floor(n/2))-(-1)^n+1)` with `a(0)=0`
-/

namespace A099820.P16896859513685559961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)

end

end A099820.P16896859513685559961

namespace A099820

/-- `5*(2*a(floor(n/2))-(-1)^n+1)` -/
def P16896859513685559961.Spec : Prop :=
  ∀ n, P16896859513685559961.a n = A099820 n

end A099820

/-! ## A099820.P6790837581512564742

`2*A169964(n+1)`
-/

namespace A099820.P6790837581512564742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169964 (n + 1)

end

end A099820.P6790837581512564742

namespace A099820

/-- `2*A169964(n+1)` -/
def P6790837581512564742.Spec : Prop :=
  ∀ n, P6790837581512564742.a n = A099820 n

end A099820

/-! ## A099820.P12639752977715923491

`5*A169965(n+1)`
-/

namespace A099820.P12639752977715923491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A169965 (n + 1)

end

end A099820.P12639752977715923491

namespace A099820

/-- `5*A169965(n+1)` -/
def P12639752977715923491.Spec : Prop :=
  ∀ n, P12639752977715923491.a n = A099820 n

end A099820

/-! ## A099820.P6996048913706508969

`5/4*A204095(n)`
-/

namespace A099820.P6996048913706508969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A204095 n : ℚ)

end

end A099820.P6996048913706508969

namespace A099820

/-- `5/4*A204095(n)` -/
def P6996048913706508969.Spec : Prop :=
  ∀ n, P6996048913706508969.a n = (A099820 n : ℚ)

end A099820

/-! ## A099820.P5975699097454674845

`A007088(Δ[n²])-1`
-/

namespace A099820.P5975699097454674845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099820.P5975699097454674845

namespace A099820

/-- `A007088(Δ[n²])-1` -/
def P5975699097454674845.Spec : Prop :=
  ∀ n, P5975699097454674845.a n = A099820 n

end A099820

/-! ## A099820.P9925626871042491557

`record[A007088(xor(1, n))-1]`
-/

namespace A099820.P9925626871042491557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor 1 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099820.P9925626871042491557

namespace A099820

/-- `record[A007088(xor(1, n))-1]` -/
def P9925626871042491557.Spec : Prop :=
  ∀ n, P9925626871042491557.a n = A099820 n

end A099820

/-! ## A099820.P16976940965436064976

`record[A007088(n%4+n)]`
-/

namespace A099820.P16976940965436064976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099820.P16976940965436064976

namespace A099820

/-- `record[A007088(n%4+n)]` -/
def P16976940965436064976.Spec : Prop :=
  ∀ n, P16976940965436064976.a n = A099820 n

end A099820

/-! ## A099820.P5054069426909260861

`record[A007088(and(n, n+1))]`
-/

namespace A099820.P5054069426909260861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099820.P5054069426909260861

namespace A099820

/-- `record[A007088(and(n, n+1))]` -/
def P5054069426909260861.Spec : Prop :=
  ∀ n, P5054069426909260861.a n = A099820 n

end A099820

/-! ## A099820.P2399834280521683129

`A097256(n)+A007088(n)`
-/

namespace A099820.P2399834280521683129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n + A007088 n

end

end A099820.P2399834280521683129

namespace A099820

/-- `A097256(n)+A007088(n)` -/
def P2399834280521683129.Spec : Prop :=
  ∀ n, P2399834280521683129.a n = A099820 n

end A099820

/-! ## A099820.P9143856658084417006

`A204093(n)+A169967(n+1)`
-/

namespace A099820.P9143856658084417006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n + A169967 (n + 1)

end

end A099820.P9143856658084417006

namespace A099820

/-- `A204093(n)+A169967(n+1)` -/
def P9143856658084417006.Spec : Prop :=
  ∀ n, P9143856658084417006.a n = A099820 n

end A099820

/-! ## A099820.P9515744293368190562

`A204094(n)+A169966(n+1)`
-/

namespace A099820.P9515744293368190562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n + A169966 (n + 1)

end

end A099820.P9515744293368190562

namespace A099820

/-- `A204094(n)+A169966(n+1)` -/
def P9515744293368190562.Spec : Prop :=
  ∀ n, P9515744293368190562.a n = A099820 n

end A099820

/-! ## A099820.P703306415272680945

`A204095(n)+A169965(n+1)`
-/

namespace A099820.P703306415272680945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n + A169965 (n + 1)

end

end A099820.P703306415272680945

namespace A099820

/-- `A204095(n)+A169965(n+1)` -/
def P703306415272680945.Spec : Prop :=
  ∀ n, P703306415272680945.a n = A099820 n

end A099820

/-! ## A099820.P3164729446148611811

`A385663(n+1)-A010060(n)`
-/

namespace A099820.P3164729446148611811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385663 (n + 1) - A010060 n

end

end A099820.P3164729446148611811

namespace A099820

/-- `A385663(n+1)-A010060(n)` -/
def P3164729446148611811.Spec : Prop :=
  ∀ n, P3164729446148611811.a n = A099820 n

end A099820

/-! ## A099820.P18176669489799229321

`lcm(A169964(n+1), A169965(n+1))`
-/

namespace A099820.P18176669489799229321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A169964 (n + 1)) (A169965 (n + 1))

end

end A099820.P18176669489799229321

namespace A099820

/-- `lcm(A169964(n+1), A169965(n+1))` -/
def P18176669489799229321.Spec : Prop :=
  ∀ n, (P18176669489799229321.a n : ℤ) = A099820 n

end A099820

/-! ## A099820.P11419962288029374327

`A333415(A145342(n+1))-1`
-/

namespace A099820.P11419962288029374327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333415 (A145342 (n + 1)).toNat - 1

end

end A099820.P11419962288029374327

namespace A099820

/-- `A333415(A145342(n+1))-1` -/
def P11419962288029374327.Spec : Prop :=
  ∀ n, P11419962288029374327.a n = A099820 n

end A099820

/-! ## A099820.P16731621177558313441

`A303596(A372060(2*n))`
-/

namespace A099820.P16731621177558313441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 (2 * n)).toNat

end

end A099820.P16731621177558313441

namespace A099820

/-- `A303596(A372060(2*n))` -/
def P16731621177558313441.Spec : Prop :=
  ∀ n, P16731621177558313441.a n = A099820 n

end A099820

/-! ## A099820.P5432706096709211312

`A204093(2*n)/6`
-/

namespace A099820.P5432706096709211312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (2 * n) : ℚ) / 6

end

end A099820.P5432706096709211312

namespace A099820

/-- `A204093(2*n)/6` -/
def P5432706096709211312.Spec : Prop :=
  ∀ n, P5432706096709211312.a n = (A099820 n : ℚ)

theorem P5432706096709211312.correct : P5432706096709211312.Spec := by
  intro n
  simp only [A099820, Nat.add_sub_cancel, A099820.P5432706096709211312.a, A099820.P9969869862672452089.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099820

/-! ## A099820.P7286216443520308089

`A204094(2*n)/7`
-/

namespace A099820.P7286216443520308089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 (2 * n) : ℚ) / 7

end

end A099820.P7286216443520308089

namespace A099820

/-- `A204094(2*n)/7` -/
def P7286216443520308089.Spec : Prop :=
  ∀ n, P7286216443520308089.a n = (A099820 n : ℚ)

theorem P7286216443520308089.correct : P7286216443520308089.Spec := by
  intro n
  simp only [A099820, Nat.add_sub_cancel, A099820.P7286216443520308089.a, A099820.P9969869862672452089.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099820

/-! ## A099820.P1027279496551268025

`A097256(2*n)/9`
-/

namespace A099820.P1027279496551268025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (2 * n) : ℚ) / 9

end

end A099820.P1027279496551268025

namespace A099820

/-- `A097256(2*n)/9` -/
def P1027279496551268025.Spec : Prop :=
  ∀ n, P1027279496551268025.a n = (A099820 n : ℚ)

end A099820

/-!
# A099821: Odd positive integers in base 2 (bisection of A007088).

The programs for A099821, the canonical program `A099821.P15875521690874164687` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099821 has offset 1).

The definition of A099821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099821.P15875521690874164687

`10*A007088(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099821

/-- `10*A007088(n)+1` -/
def P15875521690874164687.Spec : Prop :=
  ∀ n, P15875521690874164687.a n = A099821 (n + 1)

theorem P15875521690874164687.correct : P15875521690874164687.Spec := by
  intro n
  simp only [A099821, Nat.add_sub_cancel]

end A099821

/-! ## A099821.P5082273078647319293

`5*(2*a(floor(n/2))-(-1)^n+1)-9` with `a(0)=1`
-/

namespace A099821.P5082273078647319293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - 9

end

end A099821.P5082273078647319293

namespace A099821

/-- `5*(2*a(floor(n/2))-(-1)^n+1)-9` -/
def P5082273078647319293.Spec : Prop :=
  ∀ n, P5082273078647319293.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P7599453127046429107

`A099820(n)+1`
-/

namespace A099821.P7599453127046429107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n + 1

end

end A099821.P7599453127046429107

namespace A099821

/-- `A099820(n)+1` -/
def P7599453127046429107.Spec : Prop :=
  ∀ n, P7599453127046429107.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P4355920811093182829

`A007088(Δ[n²])`
-/

namespace A099821.P4355920811093182829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099821.P4355920811093182829

namespace A099821

/-- `A007088(Δ[n²])` -/
def P4355920811093182829.Spec : Prop :=
  ∀ n, P4355920811093182829.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P15875396180846200734

`record[or(1, A230891(n))]`
-/

namespace A099821.P15875396180846200734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A230891 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099821.P15875396180846200734

namespace A099821

/-- `record[or(1, A230891(n))]` -/
def P15875396180846200734.Spec : Prop :=
  ∀ n, P15875396180846200734.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P313664219410982510

`record[A007088(xor(1, n))]`
-/

namespace A099821.P313664219410982510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099821.P313664219410982510

namespace A099821

/-- `record[A007088(xor(1, n))]` -/
def P313664219410982510.Spec : Prop :=
  ∀ n, P313664219410982510.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P7835609421350877350

`sqrt(A063009(Δ[n²]))`
-/

namespace A099821.P7835609421350877350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A099821.P7835609421350877350

namespace A099821

/-- `sqrt(A063009(Δ[n²]))` -/
def P7835609421350877350.Spec : Prop :=
  ∀ n, P7835609421350877350.a n = (A099821 (n + 1) : ℝ)

end A099821

/-! ## A099821.P4397792163865291870

`A340051(3*n+1)`
-/

namespace A099821.P4397792163865291870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (3 * n + 1)

end

end A099821.P4397792163865291870

namespace A099821

/-- `A340051(3*n+1)` -/
def P4397792163865291870.Spec : Prop :=
  ∀ n, P4397792163865291870.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P16532792448322820066

`A185544(4*n+2)`
-/

namespace A099821.P16532792448322820066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (4 * n + 2)

end

end A099821.P16532792448322820066

namespace A099821

/-- `A185544(4*n+2)` -/
def P16532792448322820066.Spec : Prop :=
  ∀ n, P16532792448322820066.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P6359083128352846713

`or(1, A385663(n+1))`
-/

namespace A099821.P6359083128352846713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A385663 (n + 1))

end

end A099821.P6359083128352846713

namespace A099821

/-- `or(1, A385663(n+1))` -/
def P6359083128352846713.Spec : Prop :=
  ∀ n, P6359083128352846713.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P16180783958724375112

`or(1, A007088(2*n))`
-/

namespace A099821.P16180783958724375112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007088 (2 * n))

end

end A099821.P16180783958724375112

namespace A099821

/-- `or(1, A007088(2*n))` -/
def P16180783958724375112.Spec : Prop :=
  ∀ n, P16180783958724375112.a n = A099821 (n + 1)

end A099821

/-! ## A099821.P2065442862496552414

`sqrt(A063009(2*n))+1`
-/

namespace A099821.P2065442862496552414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (2 * n) : ℝ) + 1

end

end A099821.P2065442862496552414

namespace A099821

/-- `sqrt(A063009(2*n))+1` -/
def P2065442862496552414.Spec : Prop :=
  ∀ n, P2065442862496552414.a n = (A099821 (n + 1) : ℝ)

end A099821

/-! ## A099821.P3876374429621991782

`2*A169964(n+1)+1`
-/

namespace A099821.P3876374429621991782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169964 (n + 1) + 1

end

end A099821.P3876374429621991782

namespace A099821

/-- `2*A169964(n+1)+1` -/
def P3876374429621991782.Spec : Prop :=
  ∀ n, P3876374429621991782.a n = A099821 (n + 1)

theorem P3876374429621991782.correct : P3876374429621991782.Spec := by
  intro n
  simp only [A099821, Nat.add_sub_cancel, A099821.P3876374429621991782.a, A099821.P15875521690874164687.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099821

/-! ## A099821.P1427092930182057448

`5*A169965(n+1)+1`
-/

namespace A099821.P1427092930182057448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A169965 (n + 1) + 1

end

end A099821.P1427092930182057448

namespace A099821

/-- `5*A169965(n+1)+1` -/
def P1427092930182057448.Spec : Prop :=
  ∀ n, P1427092930182057448.a n = A099821 (n + 1)

theorem P1427092930182057448.correct : P1427092930182057448.Spec := by
  intro n
  simp only [A099821, Nat.add_sub_cancel, A099821.P1427092930182057448.a, A099821.P15875521690874164687.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099821

/-! ## A099821.P3962925611062181780

`A169966(2*(n+1))/3`
-/

namespace A099821.P3962925611062181780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (2 * (n + 1)) : ℚ) / 3

end

end A099821.P3962925611062181780

namespace A099821

/-- `A169966(2*(n+1))/3` -/
def P3962925611062181780.Spec : Prop :=
  ∀ n, P3962925611062181780.a n = (A099821 (n + 1) : ℚ)

end A099821

/-! ## A099821.P4310415228345154528

`A169967(2*(n+1))/4`
-/

namespace A099821.P4310415228345154528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (2 * (n + 1)) : ℚ) / 4

end

end A099821.P4310415228345154528

namespace A099821

/-- `A169967(2*(n+1))/4` -/
def P4310415228345154528.Spec : Prop :=
  ∀ n, P4310415228345154528.a n = (A099821 (n + 1) : ℚ)

end A099821

/-! ## A099821.P16778902053660377680

`A204093(2*n+1)/6`
-/

namespace A099821.P16778902053660377680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (2 * n + 1) : ℚ) / 6

end

end A099821.P16778902053660377680

namespace A099821

/-- `A204093(2*n+1)/6` -/
def P16778902053660377680.Spec : Prop :=
  ∀ n, P16778902053660377680.a n = (A099821 (n + 1) : ℚ)

end A099821

/-! ## A099821.P5894147066347435287

`A204094(2*n+1)/7`
-/

namespace A099821.P5894147066347435287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 (2 * n + 1) : ℚ) / 7

end

end A099821.P5894147066347435287

namespace A099821

/-- `A204094(2*n+1)/7` -/
def P5894147066347435287.Spec : Prop :=
  ∀ n, P5894147066347435287.a n = (A099821 (n + 1) : ℚ)

end A099821

/-! ## A099821.P930188724828549145

`A204095(2*n+1)/8`
-/

namespace A099821.P930188724828549145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 (2 * n + 1) : ℚ) / 8

end

end A099821.P930188724828549145

namespace A099821

/-- `A204095(2*n+1)/8` -/
def P930188724828549145.Spec : Prop :=
  ∀ n, P930188724828549145.a n = (A099821 (n + 1) : ℚ)

end A099821

/-! ## A099821.P6807453530038600031

`A097256(2*n+1)/9`
-/

namespace A099821.P6807453530038600031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (2 * n + 1) : ℚ) / 9

end

end A099821.P6807453530038600031

namespace A099821

/-- `A097256(2*n+1)/9` -/
def P6807453530038600031.Spec : Prop :=
  ∀ n, P6807453530038600031.a n = (A099821 (n + 1) : ℚ)

end A099821

/-!
# A099822: Bisection of A005117.

The programs for A099822, the canonical program `A099822.P4941690864949644625` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099822 has offset 1).

The definition of A099822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099822.P4941690864949644625

`A005117(2*n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A099822

/-- `A005117(2*n+1)` -/
def P4941690864949644625.Spec : Prop :=
  ∀ n, P4941690864949644625.a n = A099822 (n + 1)

theorem P4941690864949644625.correct : P4941690864949644625.Spec := by
  intro n
  simp only [A099822, Nat.add_sub_cancel]

end A099822

/-! ## A099822.P8932480935008818994

`record[A005117(n^(n%2))]`
-/

namespace A099822.P8932480935008818994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P8932480935008818994

namespace A099822

/-- `record[A005117(n^(n%2))]` -/
def P8932480935008818994.Spec : Prop :=
  ∀ n, P8932480935008818994.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P6437910968176174101

`record[A005117(C(or(1, n), n))]`
-/

namespace A099822.P6437910968176174101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P6437910968176174101

namespace A099822

/-- `record[A005117(C(or(1, n), n))]` -/
def P6437910968176174101.Spec : Prop :=
  ∀ n, P6437910968176174101.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P12459626696754617829

`record[A005117(lcm(2, n+2)/2)]`
-/

namespace A099822.P12459626696754617829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P12459626696754617829

namespace A099822

/-- `record[A005117(lcm(2, n+2)/2)]` -/
def P12459626696754617829.Spec : Prop :=
  ∀ n, P12459626696754617829.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P11027897303485318946

`record[A005117(and(n, n-1)+1)]`
-/

namespace A099822.P11027897303485318946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P11027897303485318946

namespace A099822

/-- `record[A005117(and(n, n-1)+1)]` -/
def P11027897303485318946.Spec : Prop :=
  ∀ n, P11027897303485318946.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P6634407437072481506

`eq[1, A008683(n)²-a(n-1)²]` with `a(0)=0`
-/

namespace A099822.P6634407437072481506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A008683 n ^ 2 - f2 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099822.P6634407437072481506

namespace A099822

/-- `eq[1, A008683(n)²-a(n-1)²]` -/
def P6634407437072481506.Spec : Prop :=
  ∀ n, (P6634407437072481506.a n : ℤ) = A099822 (n + 1)

end A099822

/-! ## A099822.P8332267190880534868

`record[A005117((n+1)/2^val(n+1, 2))]`
-/

namespace A099822.P8332267190880534868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P8332267190880534868

namespace A099822

/-- `record[A005117((n+1)/2^val(n+1, 2))]` -/
def P8332267190880534868.Spec : Prop :=
  ∀ n, P8332267190880534868.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P10739801226924502259

`record[A005117(A000265(n+1))]`
-/

namespace A099822.P10739801226924502259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P10739801226924502259

namespace A099822

/-- `record[A005117(A000265(n+1))]` -/
def P10739801226924502259.Spec : Prop :=
  ∀ n, P10739801226924502259.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P10313331961750882059

`A007913(A005117(n+1+n))`
-/

namespace A099822.P10313331961750882059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A005117 (n + 1 + n)).toNat

end

end A099822.P10313331961750882059

namespace A099822

/-- `A007913(A005117(n+1+n))` -/
def P10313331961750882059.Spec : Prop :=
  ∀ n, P10313331961750882059.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P10014278077826062067

`A243348(2*n+1)+Δ[n²]`
-/

namespace A099822.P10014278077826062067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099822.P10014278077826062067

namespace A099822

/-- `A243348(2*n+1)+Δ[n²]` -/
def P10014278077826062067.Spec : Prop :=
  ∀ n, P10014278077826062067.a n = A099822 (n + 1)

theorem P10014278077826062067.correct : P10014278077826062067.Spec := by
  intro n
  simp only [A099822, Nat.add_sub_cancel, A099822.P10014278077826062067.f1, A099822.P10014278077826062067.a, A099822.P4941690864949644625.a, A005117, A005117.P6531558222696957500.a, A243348, A243348.P5579662287376898014.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099822

/-! ## A099822.P5893349688243569032

`A243351(2*n+1)+2*A243348(2*n+1)`
-/

namespace A099822.P5893349688243569032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243351 (2 * n + 1) + 2 * A243348 (2 * n + 1)

end

end A099822.P5893349688243569032

namespace A099822

/-- `A243351(2*n+1)+2*A243348(2*n+1)` -/
def P5893349688243569032.Spec : Prop :=
  ∀ n, P5893349688243569032.a n = A099822 (n + 1)

theorem P5893349688243569032.correct : P5893349688243569032.Spec := by
  intro n
  simp only [A099822, Nat.add_sub_cancel, A099822.P5893349688243569032.a, A099822.P4941690864949644625.a, A005117, A005117.P6531558222696957500.a, A243348, A243348.P5579662287376898014.a, A243351, A243351.P857383307926038219.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099822

/-! ## A099822.P12789382283668115727

`sqrt(A062503(2*n+1))`
-/

namespace A099822.P12789382283668115727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (2 * n + 1) : ℝ)

end

end A099822.P12789382283668115727

namespace A099822

/-- `sqrt(A062503(2*n+1))` -/
def P12789382283668115727.Spec : Prop :=
  ∀ n, P12789382283668115727.a n = (A099822 (n + 1) : ℝ)

end A099822

/-! ## A099822.P954879326203030631

`A133466(2*n+1)/4`
-/

namespace A099822.P954879326203030631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (2 * n + 1) : ℚ) / 4

end

end A099822.P954879326203030631

namespace A099822

/-- `A133466(2*n+1)/4` -/
def P954879326203030631.Spec : Prop :=
  ∀ n, P954879326203030631.a n = (A099822 (n + 1) : ℚ)

theorem P954879326203030631.correct : P954879326203030631.Spec := by
  intro n
  simp only [A099822, Nat.add_sub_cancel, A099822.P954879326203030631.a, A099822.P4941690864949644625.a, A005117, A005117.P6531558222696957500.a, A133466, A133466.P7898642945469282061.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099822

/-! ## A099822.P11461692719186438607

`record[record[A007947(n+1)]*char[2*n]]`
-/

namespace A099822.P11461692719186438607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099822.P11461692719186438607

namespace A099822

/-- `record[record[A007947(n+1)]*char[2*n]]` -/
def P11461692719186438607.Spec : Prop :=
  ∀ n, P11461692719186438607.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P2986185836779140955

`A161203(2*n+1)-(2*n+1)²`
-/

namespace A099822.P2986185836779140955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161203 (2 * n + 1) - ((2 * n + 1) ^ 2 : ℤ)

end

end A099822.P2986185836779140955

namespace A099822

/-- `A161203(2*n+1)-(2*n+1)²` -/
def P2986185836779140955.Spec : Prop :=
  ∀ n, P2986185836779140955.a n = A099822 (n + 1)

theorem P2986185836779140955.correct : P2986185836779140955.Spec := by
  intro n
  simp only [A099822, Nat.add_sub_cancel, A099822.P2986185836779140955.a, A099822.P4941690864949644625.a, A005117, A005117.P6531558222696957500.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099822

/-! ## A099822.P6365500859863863277

`A268335(A383031(2*n+1))`
-/

namespace A099822.P6365500859863863277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (A383031 (2 * n + 1)).toNat

end

end A099822.P6365500859863863277

namespace A099822

/-- `A268335(A383031(2*n+1))` -/
def P6365500859863863277.Spec : Prop :=
  ∀ n, P6365500859863863277.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P4133601902881899631

`A004709(A371188(2*n+1))`
-/

namespace A099822.P4133601902881899631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A371188 (2 * n + 1)).toNat

end

end A099822.P4133601902881899631

namespace A099822

/-- `A004709(A371188(2*n+1))` -/
def P4133601902881899631.Spec : Prop :=
  ∀ n, P4133601902881899631.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P6917634939519439597

`A079228(A079228(a(n-1)))` with `a(0)=1`
-/

namespace A099822.P6917634939519439597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079228 (A079228 (a (n - 1)).toNat).toNat

end

end A099822.P6917634939519439597

namespace A099822

/-- `A079228(A079228(a(n-1)))` -/
def P6917634939519439597.Spec : Prop :=
  ∀ n, P6917634939519439597.a n = A099822 (n + 1)

end A099822

/-! ## A099822.P8401238451222033775

`A075378(A008574(n))`
-/

namespace A099822.P8401238451222033775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (A008574 n).toNat

end

end A099822.P8401238451222033775

namespace A099822

/-- `A075378(A008574(n))` -/
def P8401238451222033775.Spec : Prop :=
  ∀ n, P8401238451222033775.a n = A099822 (n + 1)

end A099822

/-!
# A099823: G.f. is the continued fraction: A(x) = 1/[1 - x/[1 - (x-x^2)/[1 - (x^2-x^4)/[1 - (x^3-x^6)/[1-... - (x^n-x^(2n))/[1 - ... ]]]]]]].

The programs for A099823, there is no canonical definition to state claims against.
-/

/-! ## A099823.P16219931624835943429

`A054404(A305498(n+1)-A003056(n))`
-/

namespace A099823.P16219931624835943429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A305498 (n + 1) - A003056 n).toNat

end

end A099823.P16219931624835943429

/-! ## A099823.P17888798653293612446

`A054404(A305498(n+1)-A057360(n))`
-/

namespace A099823.P17888798653293612446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A305498 (n + 1) - A057360 n).toNat

end

end A099823.P17888798653293612446

/-! ## A099823.P12061808628229548094

`A124062(n)+A083896(A000079(n))`
-/

namespace A099823.P12061808628229548094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124062 n + A083896 (A000079 n).toNat

end

end A099823.P12061808628229548094

/-! ## A099823.P16426565290909077348

`A274199(n)+A083896(A000079(n))`
-/

namespace A099823.P16426565290909077348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 n + A083896 (A000079 n).toNat

end

end A099823.P16426565290909077348

/-! ## A099823.P12429325380402812363

`A274199(n)+A102681(A000225(n))`
-/

namespace A099823.P12429325380402812363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 n + A102681 (A000225 n).toNat

end

end A099823.P12429325380402812363

/-!
# A099824: a(n) = Sum of the first 10^n primes.

The programs for A099824, there is no canonical definition to state claims against.
-/

/-! ## A099824.P946404478294219136

`A007504(10^n)`
-/

namespace A099824.P946404478294219136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (10 ^ n)

end

end A099824.P946404478294219136

/-! ## A099824.P5707746254729692182

`record[A007504(A038303(n))]`
-/

namespace A099824.P5707746254729692182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099824.P5707746254729692182

/-!
# A099825: Sum of the first 2^n primes.

The programs for A099825, the canonical program `A099825.P10390891143560570139` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099825 has offset 0).

The definition of A099825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099825.P10390891143560570139

`A007504(A000079(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099825

/-- `A007504(A000079(n))` -/
def P10390891143560570139.Spec : Prop :=
  ∀ n, P10390891143560570139.a n = A099825 n

theorem P10390891143560570139.correct : P10390891143560570139.Spec := by
  intro n
  simp only [A099825]

end A099825

/-! ## A099825.P6538203629399659403

`A007504(2^n)`
-/

namespace A099825.P6538203629399659403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 ^ n)

end

end A099825.P6538203629399659403

namespace A099825

/-- `A007504(2^n)` -/
def P6538203629399659403.Spec : Prop :=
  ∀ n, P6538203629399659403.a n = A099825 n

end A099825

/-! ## A099825.P4495096002420729883

`record[A007504(A029930(n))]`
-/

namespace A099825.P4495096002420729883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099825.P4495096002420729883

namespace A099825

/-- `record[A007504(A029930(n))]` -/
def P4495096002420729883.Spec : Prop :=
  ∀ n, P4495096002420729883.a n = A099825 n

end A099825

/-! ## A099825.P18097144775657551090

`record[A007504(A034008(n))]`
-/

namespace A099825.P18097144775657551090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099825.P18097144775657551090

namespace A099825

/-- `record[A007504(A034008(n))]` -/
def P18097144775657551090.Spec : Prop :=
  ∀ n, P18097144775657551090.a n = A099825 n

end A099825

/-! ## A099825.P11787417617611984657

`record[A007504(A048483(n))]`
-/

namespace A099825.P11787417617611984657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099825.P11787417617611984657

namespace A099825

/-- `record[A007504(A048483(n))]` -/
def P11787417617611984657.Spec : Prop :=
  ∀ n, P11787417617611984657.a n = A099825 n

end A099825

/-!
# A099826: Sum of the first 3^n primes.

The programs for A099826, the canonical program `A099826.P17288839142158247066` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099826 has offset 0).

The definition of A099826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099826.P17288839142158247066

`A007504(A000244(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099826

/-- `A007504(A000244(n))` -/
def P17288839142158247066.Spec : Prop :=
  ∀ n, P17288839142158247066.a n = A099826 n

theorem P17288839142158247066.correct : P17288839142158247066.Spec := by
  intro n
  simp only [A099826]

end A099826

/-! ## A099826.P5496038182224061527

`A007504(3^n)`
-/

namespace A099826.P5496038182224061527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (3 ^ n)

end

end A099826.P5496038182224061527

namespace A099826

/-- `A007504(3^n)` -/
def P5496038182224061527.Spec : Prop :=
  ∀ n, P5496038182224061527.a n = A099826 n

end A099826

/-! ## A099826.P12507417733048792846

`record[A007504(A048883(n))]`
-/

namespace A099826.P12507417733048792846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099826.P12507417733048792846

namespace A099826

/-- `record[A007504(A048883(n))]` -/
def P12507417733048792846.Spec : Prop :=
  ∀ n, P12507417733048792846.a n = A099826 n

end A099826

/-! ## A099826.P7226283973553541535

`record[A007504(A061980(n))]`
-/

namespace A099826.P7226283973553541535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A061980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099826.P7226283973553541535

namespace A099826

/-- `record[A007504(A061980(n))]` -/
def P7226283973553541535.Spec : Prop :=
  ∀ n, P7226283973553541535.a n = A099826 n

end A099826

/-! ## A099826.P16938496636014212785

`record[A007504(A106516(n))]`
-/

namespace A099826.P16938496636014212785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099826.P16938496636014212785

namespace A099826

/-- `record[A007504(A106516(n))]` -/
def P16938496636014212785.Spec : Prop :=
  ∀ n, P16938496636014212785.a n = A099826 n

end A099826

/-!
# A099827: Generalized harmonic number H(n,5) = Sum_{k=1..n} 1/k^5 multiplied by (n!)^5.

The programs for A099827, there is no canonical definition to state claims against.
-/

/-! ## A099827.P16589740079506012701

`A291556(eq[5, A025581(n)])`
-/

namespace A099827.P16589740079506012701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099827.P16589740079506012701

/-! ## A099827.P5089447036930411265

`A291556(eq[6, A193739(n)])`
-/

namespace A099827.P5089447036930411265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099827.P5089447036930411265

/-! ## A099827.P15551019550187281559

`A291556(eq[11, A099375(n)])`
-/

namespace A099827.P15551019550187281559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099827.P15551019550187281559

/-! ## A099827.P4754311762189694928

`A291556(Δ[A023551(n+1)])`
-/

namespace A099827.P4754311762189694928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (f1 (n + 1) - f1 n).toNat

end

end A099827.P4754311762189694928

/-! ## A099827.P10770789997769136172

`A291556(Δ[A026054(n+3)])`
-/

namespace A099827.P10770789997769136172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (f1 (n + 1) - f1 n).toNat

end

end A099827.P10770789997769136172

/-!
# A099828: Numerator of the generalized harmonic number H(n,5) = Sum_{k=1..n} 1/k^5.

The programs for A099828, there is no canonical definition to state claims against.
-/

/-! ## A099828.P8039739019413085674

`A322265(A052905(n+3))`
-/

namespace A099828.P8039739019413085674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (A052905 (n + 3)).toNat

end

end A099828.P8039739019413085674

/-! ## A099828.P1757663417637753580

`A322265(A046691(n+4)-1)`
-/

namespace A099828.P1757663417637753580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (A046691 (n + 4) - 1).toNat

end

end A099828.P1757663417637753580

/-!
# A099829: Smallest perimeter S such that at least n distinct Pythagorean triangles with this perimeter can be constructed.

The programs for A099829, there is no canonical definition to state claims against.
-/

/-! ## A099829.P3625000794136703707

`A046523(A099830(n+1))%A278679(2*(n+2))`
-/

namespace A099829.P3625000794136703707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (A099830 (n + 1)).toNat) (A278679 (2 * (n + 2)))

end

end A099829.P3625000794136703707

/-! ## A099829.P538526295256296701

`A330076(A265334(n+1)+A188068(n+1))`
-/

namespace A099829.P538526295256296701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330076 (A265334 (n + 1) + A188068 (n + 1)).toNat

end

end A099829.P538526295256296701

/-! ## A099829.P16799299146186357310

`A046523(C(A099830(n+1), A063260(n)))`
-/

namespace A099829.P16799299146186357310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose (A099830 (n + 1)).toNat (A063260 n).toNat)

end

end A099829.P16799299146186357310

/-!
# A099830: Smallest perimeter S such that exactly n distinct Pythagorean triangles with this perimeter can be constructed.

The programs for A099830, there is no canonical definition to state claims against.
-/

/-! ## A099830.P2853435810853498784

`3*4*A107486(n+1)`
-/

namespace A099830.P2853435810853498784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A107486 (n + 1))

end

end A099830.P2853435810853498784

/-! ## A099830.P16082981556687950792

`A008594(A107486(n+1))`
-/

namespace A099830.P16082981556687950792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A107486 (n + 1)).toNat

end

end A099830.P16082981556687950792

/-! ## A099830.P15188978187156210444

`A040874(A180516(3*n+1)+1)*A089259(n)`
-/

namespace A099830.P15188978187156210444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040874 (A180516 (3 * n + 1) + 1).toNat * A089259 n

end

end A099830.P15188978187156210444

/-!
# A099831: Perimeters of Pythagorean triangles that can be constructed in exactly 2 different ways.

The programs for A099831, there is no canonical definition to state claims against.
-/

/-! ## A099831.P3598268124968241923

`A103517(eq[2, A270417(n+1)])`
-/

namespace A099831.P3598268124968241923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099831.P3598268124968241923

/-! ## A099831.P7042533043660704847

`2*eq[2, A270417(A028310(n))]`
-/

namespace A099831.P7042533043660704847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099831.P7042533043660704847

/-! ## A099831.P9558945238091796785

`A005408(eq[2, A270417(n+1)])+1`
-/

namespace A099831.P9558945238091796785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A099831.P9558945238091796785

/-! ## A099831.P14071764034287828518

`A005843(eq[2, A270417(n+1)]+1)`
-/

namespace A099831.P14071764034287828518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A099831.P14071764034287828518

/-! ## A099831.P893619478674171017

`A004273(eq[2, A270417(n+1)])+3`
-/

namespace A099831.P893619478674171017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A099831.P893619478674171017

/-! ## A099831.P4610856087382816853

`A020739(eq[2, A270417(n+1)]-2)`
-/

namespace A099831.P4610856087382816853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A099831.P4610856087382816853

/-! ## A099831.P15459928790906879763

`A004275(eq[2, A270417(n+1)]+2)`
-/

namespace A099831.P15459928790906879763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A099831.P15459928790906879763

/-! ## A099831.P5793359805970297921

`eq[2, A024155(n+1)]+1`
-/

namespace A099831.P5793359805970297921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099831.P5793359805970297921

/-! ## A099831.P9652367732269787038

`eq[2, A024155(A028310(n))]`
-/

namespace A099831.P9652367732269787038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099831.P9652367732269787038

/-! ## A099831.P13998203709722654990

`A011760(eq[2, A024155(n+1)])`
-/

namespace A099831.P13998203709722654990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099831.P13998203709722654990

/-! ## A099831.P12090876669949255070

`A014681(eq[2, A024155(n+1)])`
-/

namespace A099831.P12090876669949255070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099831.P12090876669949255070

/-! ## A099831.P3166714640867790269

`A020725(eq[2, A024155(n+1)])`
-/

namespace A099831.P3166714640867790269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099831.P3166714640867790269

/-! ## A099831.P2515762791373113590

`A065475(eq[2, A024155(n+1)])`
-/

namespace A099831.P2515762791373113590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099831.P2515762791373113590

/-! ## A099831.P8480526598900385274

`A133265(eq[2, A024155(n+1)])`
-/

namespace A099831.P8480526598900385274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099831.P8480526598900385274

/-!
# A099832: Perimeters of Pythagorean triangles that can be constructed in exactly 3 different ways.

The programs for A099832, there is no canonical definition to state claims against.
-/

/-! ## A099832.P12209367591834380665

`A103517(eq[3, A270417(n+1)])`
-/

namespace A099832.P12209367591834380665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099832.P12209367591834380665

/-! ## A099832.P2576315556015982447

`A020739(eq[3, A270417(n+3)])`
-/

namespace A099832.P2576315556015982447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099832.P2576315556015982447

/-! ## A099832.P6008574523021556433

`eq[3, A024155(A028310(n))]`
-/

namespace A099832.P6008574523021556433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099832.P6008574523021556433

/-! ## A099832.P5073701443595985452

`A011760(eq[3, A024155(n+1)])`
-/

namespace A099832.P5073701443595985452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099832.P5073701443595985452

/-! ## A099832.P13080749311795960081

`A014681(eq[3, A024155(n+1)])`
-/

namespace A099832.P13080749311795960081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099832.P13080749311795960081

/-! ## A099832.P8733464648705430119

`A020725(eq[3, A024155(n+1)])`
-/

namespace A099832.P8733464648705430119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099832.P8733464648705430119

/-! ## A099832.P12408316767536223402

`A065475(eq[3, A024155(n+1)])`
-/

namespace A099832.P12408316767536223402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099832.P12408316767536223402

/-!
# A099833: Perimeters of Pythagorean triangles that can be constructed in exactly 4 different ways.

The programs for A099833, there is no canonical definition to state claims against.
-/

/-! ## A099833.P1170017818104522175

`A103517(eq[4, A270417(n+1)])`
-/

namespace A099833.P1170017818104522175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099833.P1170017818104522175

/-! ## A099833.P4773645966512905607

`eq[4, A024155(A028310(n))]`
-/

namespace A099833.P4773645966512905607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099833.P4773645966512905607

/-! ## A099833.P16747446434962686108

`A011760(eq[4, A024155(n+1)])`
-/

namespace A099833.P16747446434962686108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099833.P16747446434962686108

/-! ## A099833.P11295615883658970826

`A014681(eq[4, A024155(n+1)])`
-/

namespace A099833.P11295615883658970826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099833.P11295615883658970826

/-! ## A099833.P5818597796108894727

`A020725(eq[4, A024155(n+1)])`
-/

namespace A099833.P5818597796108894727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099833.P5818597796108894727

/-! ## A099833.P193116681559346101

`A065475(eq[4, A024155(n+1)])`
-/

namespace A099833.P193116681559346101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099833.P193116681559346101

/-! ## A099833.P14123659945644362678

`A133265(eq[4, A024155(n+1)])`
-/

namespace A099833.P14123659945644362678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099833.P14123659945644362678

/-!
# A099835: Bisection of A005117.

The programs for A099835, the canonical program `A099835.P17347924561769071639` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099835 has offset 1).

The definition of A099835 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099835.P17347924561769071639

`A005117(2*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A099835

/-- `A005117(2*(n+1))` -/
def P17347924561769071639.Spec : Prop :=
  ∀ n, P17347924561769071639.a n = A099835 (n + 1)

theorem P17347924561769071639.correct : P17347924561769071639.Spec := by
  intro n
  simp only [A099835, Nat.add_sub_cancel]

end A099835

/-! ## A099835.P16475477851416384129

`record[A005117(xor(1, n)+1)]`
-/

namespace A099835.P16475477851416384129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099835.P16475477851416384129

namespace A099835

/-- `record[A005117(xor(1, n)+1)]` -/
def P16475477851416384129.Spec : Prop :=
  ∀ n, P16475477851416384129.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P12660106231782554811

`record[A005117(and(n, n-1)+2)]`
-/

namespace A099835.P12660106231782554811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.land (n : ℤ) ((n : ℤ) - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099835.P12660106231782554811

namespace A099835

/-- `record[A005117(and(n, n-1)+2)]` -/
def P12660106231782554811.Spec : Prop :=
  ∀ n, P12660106231782554811.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P9843919980097957419

`record[A005117(n+2)/(-1)^n]`
-/

namespace A099835.P9843919980097957419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099835.P9843919980097957419

namespace A099835

/-- `record[A005117(n+2)/(-1)^n]` -/
def P9843919980097957419.Spec : Prop :=
  ∀ n, P9843919980097957419.a n = (A099835 (n + 1) : ℚ)

end A099835

/-! ## A099835.P8067181372323213306

`eq[1, A008683(n)²-a(n-1)²]` with `a(0)=0, a(1)=0`
-/

namespace A099835.P8067181372323213306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A008683 n ^ 2 - f2 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099835.P8067181372323213306

namespace A099835

/-- `eq[1, A008683(n)²-a(n-1)²]` -/
def P8067181372323213306.Spec : Prop :=
  ∀ n, (P8067181372323213306.a n : ℤ) = A099835 (n + 1)

end A099835

/-! ## A099835.P11553811155103696966

`A000027(A005117(n+2+n))`
-/

namespace A099835.P11553811155103696966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005117 (n + 2 + n)).toNat

end

end A099835.P11553811155103696966

namespace A099835

/-- `A000027(A005117(n+2+n))` -/
def P11553811155103696966.Spec : Prop :=
  ∀ n, P11553811155103696966.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P10305929784406509812

`record[A005117(A000265(n+1)+1)]`
-/

namespace A099835.P10305929784406509812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099835.P10305929784406509812

namespace A099835

/-- `record[A005117(A000265(n+1)+1)]` -/
def P10305929784406509812.Spec : Prop :=
  ∀ n, P10305929784406509812.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P12746135157201617779

`A005117(n+2+n)+C(2, A000203(n+2))`
-/

namespace A099835.P12746135157201617779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2 + n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A099835.P12746135157201617779

namespace A099835

/-- `A005117(n+2+n)+C(2, A000203(n+2))` -/
def P12746135157201617779.Spec : Prop :=
  ∀ n, P12746135157201617779.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P17854969600066141402

`A005117(n+2+n)+and(1, A000010(n+3))`
-/

namespace A099835.P17854969600066141402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2 + n) + Int.land 1 (A000010 (n + 3))

end

end A099835.P17854969600066141402

namespace A099835

/-- `A005117(n+2+n)+and(1, A000010(n+3))` -/
def P17854969600066141402.Spec : Prop :=
  ∀ n, P17854969600066141402.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P12544727688955605771

`A005117(n+2+n)+A000045(C(2, n+3))`
-/

namespace A099835.P12544727688955605771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2 + n) + A000045 (Nat.choose 2 (n + 3))

end

end A099835.P12544727688955605771

namespace A099835

/-- `A005117(n+2+n)+A000045(C(2, n+3))` -/
def P12544727688955605771.Spec : Prop :=
  ∀ n, P12544727688955605771.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P901523380226965455

`A005117(n+2+n)/A008683(a(n-1))²` with `a(0)=2`
-/

namespace A099835.P901523380226965455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A005117 (n + 2 + n) : ℚ) / (A008683 (SequenceMachineLib.roundAway (a (n - 1))).toNat ^ 2 : ℚ)

end

end A099835.P901523380226965455

namespace A099835

/-- `A005117(n+2+n)/A008683(a(n-1))²` -/
def P901523380226965455.Spec : Prop :=
  ∀ n, P901523380226965455.a n = (A099835 (n + 1) : ℚ)

end A099835

/-! ## A099835.P15221051585606452409

`A005117(n+2+n)/gcd(2, A000040(n+2))`
-/

namespace A099835.P15221051585606452409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 2 + n) : ℚ) / (Int.gcd 2 (A000040 (n + 2)) : ℚ)

end

end A099835.P15221051585606452409

namespace A099835

/-- `A005117(n+2+n)/gcd(2, A000040(n+2))` -/
def P15221051585606452409.Spec : Prop :=
  ∀ n, P15221051585606452409.a n = (A099835 (n + 1) : ℚ)

end A099835

/-! ## A099835.P11217593911762095711

`A005117(n+2+n)+C(2, A000040(n+3))`
-/

namespace A099835.P11217593911762095711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2 + n) + (Nat.choose 2 (A000040 (n + 3)).toNat : ℤ)

end

end A099835.P11217593911762095711

namespace A099835

/-- `A005117(n+2+n)+C(2, A000040(n+3))` -/
def P11217593911762095711.Spec : Prop :=
  ∀ n, P11217593911762095711.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P17319548471487715493

`A144338(Δ[n²])`
-/

namespace A099835.P17319548471487715493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099835.P17319548471487715493

namespace A099835

/-- `A144338(Δ[n²])` -/
def P17319548471487715493.Spec : Prop :=
  ∀ n, P17319548471487715493.a n = A099835 (n + 1)

end A099835

/-! ## A099835.P9953420863481962313

`sqrt(A062503(2*(n+1)))`
-/

namespace A099835.P9953420863481962313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (2 * (n + 1)) : ℝ)

end

end A099835.P9953420863481962313

namespace A099835

/-- `sqrt(A062503(2*(n+1)))` -/
def P9953420863481962313.Spec : Prop :=
  ∀ n, P9953420863481962313.a n = (A099835 (n + 1) : ℝ)

end A099835

/-! ## A099835.P3331182513498001746

`A133466(2*(n+1))/4`
-/

namespace A099835.P3331182513498001746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (2 * (n + 1)) : ℚ) / 4

end

end A099835.P3331182513498001746

namespace A099835

/-- `A133466(2*(n+1))/4` -/
def P3331182513498001746.Spec : Prop :=
  ∀ n, P3331182513498001746.a n = (A099835 (n + 1) : ℚ)

theorem P3331182513498001746.correct : P3331182513498001746.Spec := by
  intro n
  simp only [A099835, Nat.add_sub_cancel, A099835.P3331182513498001746.a, A099835.P17347924561769071639.a, A005117, A005117.P6531558222696957500.a, A133466, A133466.P7898642945469282061.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099835

/-! ## A099835.P15365308578457748424

`root(A113851(2*n+1), 6)`
-/

namespace A099835.P15365308578457748424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A113851 (2 * n + 1) : ℝ) ^ (1 / (6 : ℝ))

end

end A099835.P15365308578457748424

namespace A099835

/-- `root(A113851(2*n+1), 6)` -/
def P15365308578457748424.Spec : Prop :=
  ∀ n, P15365308578457748424.a n = (A099835 (n + 1) : ℝ)

end A099835

/-! ## A099835.P17729006933477503911

`sqrt(sqrt(A113849(2*n+1)))`
-/

namespace A099835.P17729006933477503911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A113849 (2 * n + 1) : ℝ))

end

end A099835.P17729006933477503911

namespace A099835

/-- `sqrt(sqrt(A113849(2*n+1)))` -/
def P17729006933477503911.Spec : Prop :=
  ∀ n, P17729006933477503911.a n = (A099835 (n + 1) : ℝ)

end A099835

/-!
# A099836: Bisection of A000961.

The programs for A099836, the canonical program `A099836.P12712774098873545659` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099836 has offset 0).

The definition of A099836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099836.P7150807950351180984

`record[A246655(n+1)^(n%2)]`
-/

namespace A099836.P7150807950351180984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P7150807950351180984

namespace A099836

/-- `record[A246655(n+1)^(n%2)]` -/
def P7150807950351180984.Spec : Prop :=
  ∀ n, P7150807950351180984.a n = A099836 n

end A099836

/-! ## A099836.P12712774098873545659

`record[A246655(n+1)-A027656(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A099836

/-- `record[A246655(n+1)-A027656(n)]` -/
def P12712774098873545659.Spec : Prop :=
  ∀ n, P12712774098873545659.a n = A099836 n

theorem P12712774098873545659.correct : P12712774098873545659.Spec := by
  intro n
  simp only [A099836]

end A099836

/-! ## A099836.P12169543219922975508

`record[gcd(A083912(n+2), A246655(n+1))]`
-/

namespace A099836.P12169543219922975508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083912 (n + 2)) (A246655 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P12169543219922975508

namespace A099836

/-- `record[gcd(A083912(n+2), A246655(n+1))]` -/
def P12169543219922975508.Spec : Prop :=
  ∀ n, (P12169543219922975508.a n : ℤ) = A099836 n

end A099836

/-! ## A099836.P8921183625780051166

`record[A246655(n+1)/A328570(3*n+1)]`
-/

namespace A099836.P8921183625780051166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) / (A328570 (3 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P8921183625780051166

namespace A099836

/-- `record[A246655(n+1)/A328570(3*n+1)]` -/
def P8921183625780051166.Spec : Prop :=
  ∀ n, P8921183625780051166.a n = (A099836 n : ℚ)

end A099836

/-! ## A099836.P13027334611742429955

`A246655(A004277(n))-A000007(n)`
-/

namespace A099836.P13027334611742429955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A004277 n).toNat - A000007 n

end

end A099836.P13027334611742429955

namespace A099836

/-- `A246655(A004277(n))-A000007(n)` -/
def P13027334611742429955.Spec : Prop :=
  ∀ n, P13027334611742429955.a n = A099836 n

end A099836

/-! ## A099836.P14158807453312012222

`A000961(Δ[n²])`
-/

namespace A099836.P14158807453312012222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099836.P14158807453312012222

namespace A099836

/-- `A000961(Δ[n²])` -/
def P14158807453312012222.Spec : Prop :=
  ∀ n, P14158807453312012222.a n = A099836 n

end A099836

/-! ## A099836.P16456798215797540541

`sqrt(A056798(Δ[n²]))`
-/

namespace A099836.P16456798215797540541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A099836.P16456798215797540541

namespace A099836

/-- `sqrt(A056798(Δ[n²]))` -/
def P16456798215797540541.Spec : Prop :=
  ∀ n, P16456798215797540541.a n = (A099836 n : ℝ)

end A099836

/-! ## A099836.P7328282407942819746

`A181062(Δ[n²])+1`
-/

namespace A099836.P7328282407942819746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099836.P7328282407942819746

namespace A099836

/-- `A181062(Δ[n²])+1` -/
def P7328282407942819746.Spec : Prop :=
  ∀ n, P7328282407942819746.a n = A099836 n

end A099836

/-! ## A099836.P11337050569266318230

`A138929(Δ[n²])/2`
-/

namespace A099836.P11337050569266318230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A099836.P11337050569266318230

namespace A099836

/-- `A138929(Δ[n²])/2` -/
def P11337050569266318230.Spec : Prop :=
  ∀ n, P11337050569266318230.a n = (A099836 n : ℚ)

end A099836

/-! ## A099836.P15739126402214358202

`record[A000961(n^(n%2))]`
-/

namespace A099836.P15739126402214358202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P15739126402214358202

namespace A099836

/-- `record[A000961(n^(n%2))]` -/
def P15739126402214358202.Spec : Prop :=
  ∀ n, P15739126402214358202.a n = A099836 n

end A099836

/-! ## A099836.P13149540636469422003

`record[A000961(n^and(1, n))]`
-/

namespace A099836.P13149540636469422003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P13149540636469422003

namespace A099836

/-- `record[A000961(n^and(1, n))]` -/
def P13149540636469422003.Spec : Prop :=
  ∀ n, P13149540636469422003.a n = A099836 n

end A099836

/-! ## A099836.P9679339416196081318

`record[A000961(gcd(n, or(1, n)))]`
-/

namespace A099836.P9679339416196081318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.gcd n (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P9679339416196081318

namespace A099836

/-- `record[A000961(gcd(n, or(1, n)))]` -/
def P9679339416196081318.Spec : Prop :=
  ∀ n, P9679339416196081318.a n = A099836 n

end A099836

/-! ## A099836.P17783441616123156415

`record[A000961(C(n, and(1, n)))]`
-/

namespace A099836.P17783441616123156415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P17783441616123156415

namespace A099836

/-- `record[A000961(C(n, and(1, n)))]` -/
def P17783441616123156415.Spec : Prop :=
  ∀ n, P17783441616123156415.a n = A099836 n

end A099836

/-! ## A099836.P2874984378512587350

`record[A000961(C(or(1, n), n))]`
-/

namespace A099836.P2874984378512587350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P2874984378512587350

namespace A099836

/-- `record[A000961(C(or(1, n), n))]` -/
def P2874984378512587350.Spec : Prop :=
  ∀ n, P2874984378512587350.a n = A099836 n

end A099836

/-! ## A099836.P2934829617853555534

`root(A000961(2*n+1), 2)²`
-/

namespace A099836.P2934829617853555534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000961 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A099836.P2934829617853555534

namespace A099836

/-- `root(A000961(2*n+1), 2)²` -/
def P2934829617853555534.Spec : Prop :=
  ∀ n, P2934829617853555534.a n = (A099836 n : ℝ)

end A099836

/-! ## A099836.P4239514460941730033

`record[A000961(lcm(2, n+1)/2)]`
-/

namespace A099836.P4239514460941730033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P4239514460941730033

namespace A099836

/-- `record[A000961(lcm(2, n+1)/2)]` -/
def P4239514460941730033.Spec : Prop :=
  ∀ n, P4239514460941730033.a n = A099836 n

end A099836

/-! ## A099836.P16251391577939201204

`record[A000961(and(3, n)+n+1)]`
-/

namespace A099836.P16251391577939201204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.land 3 n + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P16251391577939201204

namespace A099836

/-- `record[A000961(and(3, n)+n+1)]` -/
def P16251391577939201204.Spec : Prop :=
  ∀ n, P16251391577939201204.a n = A099836 n

end A099836

/-! ## A099836.P16050750260969561675

`record[A000961(n+1)/(-1)^n]`
-/

namespace A099836.P16050750260969561675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P16050750260969561675

namespace A099836

/-- `record[A000961(n+1)/(-1)^n]` -/
def P16050750260969561675.Spec : Prop :=
  ∀ n, P16050750260969561675.a n = (A099836 n : ℚ)

end A099836

/-! ## A099836.P8488854038291443321

`A000961(record[xor(1, n)])%∑[n+3]`
-/

namespace A099836.P8488854038291443321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A099836.P8488854038291443321

namespace A099836

/-- `A000961(record[xor(1, n)])%∑[n+3]` -/
def P8488854038291443321.Spec : Prop :=
  ∀ n, P8488854038291443321.a n = A099836 n

end A099836

/-! ## A099836.P1453524648376682390

`record[A000961(A000265(n+1))]`
-/

namespace A099836.P1453524648376682390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099836.P1453524648376682390

namespace A099836

/-- `record[A000961(A000265(n+1))]` -/
def P1453524648376682390.Spec : Prop :=
  ∀ n, P1453524648376682390.a n = A099836 n

end A099836

/-!
# A099837: Expansion of (1 - x^2) / (1 + x + x^2) in powers of x.

The programs for A099837, the canonical program `A099837.P689716215545320824` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099837 has offset 0).

The definition of A099837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1+x+x^2))` (program `A099837.P689716215545320824`, by `A099837.P689716215545320824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099837.P689716215545320824

`ogf((1-x^2)/(1+x+x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099837

/-- `ogf((1-x^2)/(1+x+x^2))` -/
def P689716215545320824.Spec : Prop :=
  ∀ n, P689716215545320824.a n = A099837 n

theorem P689716215545320824.correct : P689716215545320824.Spec := by
  intro n
  simp only [A099837]

end A099837

/-!
# A099838: Expansion of (1-x)^2*(1+x)/(1+x+x^2).

The programs for A099838, the canonical program `A099838.P3881809343433998942` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099838 has offset 0).

The definition of A099838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2+x^3)/(1+x+x^2))` (program `A099838.P3881809343433998942`, by `A099838.P3881809343433998942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099838.P3881809343433998942

`ogf((1-x-x^2+x^3)/(1+x+x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099838

/-- `ogf((1-x-x^2+x^3)/(1+x+x^2))` -/
def P3881809343433998942.Spec : Prop :=
  ∀ n, P3881809343433998942.a n = A099838 n

theorem P3881809343433998942.correct : P3881809343433998942.Spec := by
  intro n
  simp only [A099838]

end A099838

/-!
# A099839: a(n) = -10*a(n-1) - 5*a(n-2) with a(0) = 1, a(1) = -11.

The programs for A099839, the canonical program `A099839.P9493702978602819204` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099839 has offset 0).

The definition of A099839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-10*a(n-1)-5*a(n-2)` (program `A099839.P9493702978602819204`, by `A099839.P9493702978602819204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099839.P9493702978602819204

`-10*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=-11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099839

/-- `-10*a(n-1)-5*a(n-2)` -/
def P9493702978602819204.Spec : Prop :=
  ∀ n, P9493702978602819204.a n = A099839 n

theorem P9493702978602819204.correct : P9493702978602819204.Spec := by
  intro n
  simp only [A099839]

end A099839

/-! ## A099839.P18123403093357263671

`ogf((1-x)/(1+10x+5x^2))`
-/

namespace A099839.P18123403093357263671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 10, 5] n

end

end A099839.P18123403093357263671

namespace A099839

/-- `ogf((1-x)/(1+10x+5x^2))` -/
def P18123403093357263671.Spec : Prop :=
  ∀ n, P18123403093357263671.a n = A099839 n

end A099839

/-! ## A099839.P1990847368994843119

`a(n-1)-4*round(ϕ²*a(n-1))` with `a(0)=1`
-/

namespace A099839.P1990847368994843119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 4 * SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A099839.P1990847368994843119

namespace A099839

/-- `a(n-1)-4*round(ϕ²*a(n-1))` -/
def P1990847368994843119.Spec : Prop :=
  ∀ n, P1990847368994843119.a n = A099839 n

end A099839

/-! ## A099839.P12156105685765784081

`Δ[A062157(n)*A190987(n)]`
-/

namespace A099839.P12156105685765784081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A190987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099839.P12156105685765784081

namespace A099839

/-- `Δ[A062157(n)*A190987(n)]` -/
def P12156105685765784081.Spec : Prop :=
  ∀ n, P12156105685765784081.a n = A099839 n

end A099839

/-! ## A099839.P8350937500258438414

`Δ[(A014681(n)-n)*A190987(n)]`
-/

namespace A099839.P8350937500258438414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A190987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099839.P8350937500258438414

namespace A099839

/-- `Δ[(A014681(n)-n)*A190987(n)]` -/
def P8350937500258438414.Spec : Prop :=
  ∀ n, P8350937500258438414.a n = A099839 n

end A099839

/-!
# A099840: Expansion of (1-6*x)/(1-20*x^2).

The programs for A099840, the canonical program `A099840.P5189687510156087746` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099840 has offset 0).

The definition of A099840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x)/(1-20x^2))` (program `A099840.P5189687510156087746`, by `A099840.P5189687510156087746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099840.P5189687510156087746

`ogf((1-6x)/(1-20x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099840

/-- `ogf((1-6x)/(1-20x^2))` -/
def P5189687510156087746.Spec : Prop :=
  ∀ n, P5189687510156087746.a n = A099840 n

theorem P5189687510156087746.correct : P5189687510156087746.Spec := by
  intro n
  simp only [A099840]

end A099840

/-! ## A099840.P8828025131498980428

`20*a(n-2)` with `a(0)=1, a(1)=-6`
-/

namespace A099840.P8828025131498980428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -6] fun n a =>
  20 * a (n - 2)

end

end A099840.P8828025131498980428

namespace A099840

/-- `20*a(n-2)` -/
def P8828025131498980428.Spec : Prop :=
  ∀ n, P8828025131498980428.a n = A099840 n

end A099840

/-! ## A099840.P8600557676303752020

`A004663(n)*A152166(n)`
-/

namespace A099840.P8600557676303752020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 n * A152166 n

end

end A099840.P8600557676303752020

namespace A099840

/-- `A004663(n)*A152166(n)` -/
def P8600557676303752020.Spec : Prop :=
  ∀ n, P8600557676303752020.a n = A099840 n

end A099840

/-! ## A099840.P16336735636089593075

`A056487(n)*A122803(n)`
-/

namespace A099840.P16336735636089593075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n * A122803 n

end

end A099840.P16336735636089593075

namespace A099840

/-- `A056487(n)*A122803(n)` -/
def P16336735636089593075.Spec : Prop :=
  ∀ n, P16336735636089593075.a n = A099840 n

end A099840

/-! ## A099840.P17270454357629693233

`Δ[A084247(n)]*A056487(n)`
-/

namespace A099840.P17270454357629693233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056487 n

end

end A099840.P17270454357629693233

namespace A099840

/-- `Δ[A084247(n)]*A056487(n)` -/
def P17270454357629693233.Spec : Prop :=
  ∀ n, P17270454357629693233.a n = A099840 n

end A099840

/-!
# A099841: Expansion of (1-16*x)/(1-20*x+80*x^2).

The programs for A099841, the canonical program `A099841.P10603811378266186895` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099841 has offset 0).

The definition of A099841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-16x)/(1-20x+80x^2))` (program `A099841.P10603811378266186895`, by `A099841.P10603811378266186895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099841.P10603811378266186895

`ogf((1-16x)/(1-20x+80x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099841

/-- `ogf((1-16x)/(1-20x+80x^2))` -/
def P10603811378266186895.Spec : Prop :=
  ∀ n, P10603811378266186895.a n = A099841 n

theorem P10603811378266186895.correct : P10603811378266186895.Spec := by
  intro n
  simp only [A099841]

end A099841

/-! ## A099841.P11931155390505495527

`20*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A099841.P11931155390505495527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  20 * a (n - 1) - 80 * a (n - 2)

end

end A099841.P11931155390505495527

namespace A099841

/-- `20*a(n-1)-80*a(n-2)` -/
def P11931155390505495527.Spec : Prop :=
  ∀ n, P11931155390505495527.a n = A099841 n

end A099841

/-! ## A099841.P15843454657978847633

`(A093129(n)-A093131(n))*A000302(n)`
-/

namespace A099841.P15843454657978847633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093129 n - A093131 n) * A000302 n

end

end A099841.P15843454657978847633

namespace A099841

/-- `(A093129(n)-A093131(n))*A000302(n)` -/
def P15843454657978847633.Spec : Prop :=
  ∀ n, P15843454657978847633.a n = A099841 n

end A099841

/-! ## A099841.P10056721376395704329

`(A020876(n)-A039717(n+1))*A000302(n)`
-/

namespace A099841.P10056721376395704329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020876 n - A039717 (n + 1)) * A000302 n

end

end A099841.P10056721376395704329

namespace A099841

/-- `(A020876(n)-A039717(n+1))*A000302(n)` -/
def P10056721376395704329.Spec : Prop :=
  ∀ n, P10056721376395704329.a n = A099841 n

end A099841

/-! ## A099841.P618047155309272114

`(A020876(n)-A039717(n+1))*A000079(n)²`
-/

namespace A099841.P618047155309272114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020876 n - A039717 (n + 1)) * A000079 n ^ 2

end

end A099841.P618047155309272114

namespace A099841

/-- `(A020876(n)-A039717(n+1))*A000079(n)²` -/
def P618047155309272114.Spec : Prop :=
  ∀ n, P618047155309272114.a n = A099841 n

end A099841

/-! ## A099841.P5097398830366505657

`(A093129(n)-A093131(n))*A011782(n+1)²`
-/

namespace A099841.P5097398830366505657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093129 n - A093131 n) * A011782 (n + 1) ^ 2

end

end A099841.P5097398830366505657

namespace A099841

/-- `(A093129(n)-A093131(n))*A011782(n+1)²` -/
def P5097398830366505657.Spec : Prop :=
  ∀ n, P5097398830366505657.a n = A099841 n

end A099841

/-! ## A099841.P13527249461564245451

`(A093129(n)-A093131(n))*A011782(2*n+1)`
-/

namespace A099841.P13527249461564245451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093129 n - A093131 n) * A011782 (2 * n + 1)

end

end A099841.P13527249461564245451

namespace A099841

/-- `(A093129(n)-A093131(n))*A011782(2*n+1)` -/
def P13527249461564245451.Spec : Prop :=
  ∀ n, P13527249461564245451.a n = A099841 n

end A099841

/-!
# A099842: Expansion of (1-x)/(1 + 6*x - 3*x^2).

The programs for A099842, the canonical program `A099842.P15224995824363838364` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099842 has offset 0).

The definition of A099842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+6x-3x^2))` (program `A099842.P15224995824363838364`, by `A099842.P15224995824363838364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099842.P15224995824363838364

`ogf((1-x)/(1+6x-3x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099842

/-- `ogf((1-x)/(1+6x-3x^2))` -/
def P15224995824363838364.Spec : Prop :=
  ∀ n, P15224995824363838364.a n = A099842 n

theorem P15224995824363838364.correct : P15224995824363838364.Spec := by
  intro n
  simp only [A099842]

end A099842

/-! ## A099842.P4022631841332511426

`A033999(n)*A287811(n)`
-/

namespace A099842.P4022631841332511426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A287811 n

end

end A099842.P4022631841332511426

namespace A099842

/-- `A033999(n)*A287811(n)` -/
def P4022631841332511426.Spec : Prop :=
  ∀ n, P4022631841332511426.a n = A099842 n

end A099842

/-! ## A099842.P6698122405341540784

`A062157(n+1)*A287811(n)`
-/

namespace A099842.P6698122405341540784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A287811 n

end

end A099842.P6698122405341540784

namespace A099842

/-- `A062157(n+1)*A287811(n)` -/
def P6698122405341540784.Spec : Prop :=
  ∀ n, P6698122405341540784.a n = A099842 n

end A099842

/-! ## A099842.P13145261172672009036

`A027151(2*n)*A033999(n)`
-/

namespace A099842.P13145261172672009036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 (2 * n) * A033999 n

end

end A099842.P13145261172672009036

namespace A099842

/-- `A027151(2*n)*A033999(n)` -/
def P13145261172672009036.Spec : Prop :=
  ∀ n, P13145261172672009036.a n = A099842 n

end A099842

/-! ## A099842.P3880094228508735129

`A009531(2*n+1)*A287811(n)`
-/

namespace A099842.P3880094228508735129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A287811 n

end

end A099842.P3880094228508735129

namespace A099842

/-- `A009531(2*n+1)*A287811(n)` -/
def P3880094228508735129.Spec : Prop :=
  ∀ n, P3880094228508735129.a n = A099842 n

end A099842

/-! ## A099842.P9832289669278509814

`A027151(A005843(n))/A033999(n)`
-/

namespace A099842.P9832289669278509814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027151 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A099842.P9832289669278509814

namespace A099842

/-- `A027151(A005843(n))/A033999(n)` -/
def P9832289669278509814.Spec : Prop :=
  ∀ n, P9832289669278509814.a n = (A099842 n : ℚ)

end A099842

/-!
# A099843: A transform of the Fibonacci numbers.

The programs for A099843, the canonical program `A099843.P6765421565920201974` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099843 has offset 0).

The definition of A099843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099843.P6765421565920201974

`(-1)^n*A015448(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099843

/-- `(-1)^n*A015448(n+1)` -/
def P6765421565920201974.Spec : Prop :=
  ∀ n, P6765421565920201974.a n = A099843 n

theorem P6765421565920201974.correct : P6765421565920201974.Spec := by
  intro n
  simp only [A099843]

end A099843

/-! ## A099843.P284292027892549583

`(-1)^n*A000045(3*n+2)`
-/

namespace A099843.P284292027892549583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 (3 * n + 2)

end

end A099843.P284292027892549583

namespace A099843

/-- `(-1)^n*A000045(3*n+2)` -/
def P284292027892549583.Spec : Prop :=
  ∀ n, P284292027892549583.a n = A099843 n

end A099843

/-! ## A099843.P16767742394688995897

`(-1)^n*(A001076(n)+A001076(n+1))`
-/

namespace A099843.P16767742394688995897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A001076 n + A001076 (n + 1))

end

end A099843.P16767742394688995897

namespace A099843

/-- `(-1)^n*(A001076(n)+A001076(n+1))` -/
def P16767742394688995897.Spec : Prop :=
  ∀ n, P16767742394688995897.a n = A099843 n

end A099843

/-! ## A099843.P1265912642644203877

`ogf((1-x)/(1+4x-x^2))`
-/

namespace A099843.P1265912642644203877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 4, -1] n

end

end A099843.P1265912642644203877

namespace A099843

/-- `ogf((1-x)/(1+4x-x^2))` -/
def P1265912642644203877.Spec : Prop :=
  ∀ n, P1265912642644203877.a n = A099843 n

end A099843

/-! ## A099843.P7916631246712369336

`floor(-(ϕ^3*a(n-1)))` with `a(0)=1`
-/

namespace A099843.P7916631246712369336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊-(Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))⌋

end

end A099843.P7916631246712369336

namespace A099843

/-- `floor(-(ϕ^3*a(n-1)))` -/
def P7916631246712369336.Spec : Prop :=
  ∀ n, P7916631246712369336.a n = A099843 n

end A099843

/-! ## A099843.P14003565391539505037

`-ceil(ϕ^3*a(n-1))` with `a(0)=1`
-/

namespace A099843.P14003565391539505037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌈Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌉

end

end A099843.P14003565391539505037

namespace A099843

/-- `-ceil(ϕ^3*a(n-1))` -/
def P14003565391539505037.Spec : Prop :=
  ∀ n, P14003565391539505037.a n = A099843 n

end A099843

/-! ## A099843.P12802362673221972800

`a(n-2)-4*a(n-1)` with `a(0)=1, a(1)=-5`
-/

namespace A099843.P12802362673221972800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -5] fun n a =>
  a (n - 2) - 4 * a (n - 1)

end

end A099843.P12802362673221972800

namespace A099843

/-- `a(n-2)-4*a(n-1)` -/
def P12802362673221972800.Spec : Prop :=
  ∀ n, P12802362673221972800.a n = A099843 n

end A099843

/-! ## A099843.P13298835187659121749

`A173343(3*n)`
-/

namespace A099843.P13298835187659121749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173343 (3 * n)

end

end A099843.P13298835187659121749

namespace A099843

/-- `A173343(3*n)` -/
def P13298835187659121749.Spec : Prop :=
  ∀ n, P13298835187659121749.a n = A099843 n

end A099843

/-! ## A099843.P13496466701093119588

`A236191(3*n+2)`
-/

namespace A099843.P13496466701093119588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (3 * n + 2)

end

end A099843.P13496466701093119588

namespace A099843

/-- `A236191(3*n+2)` -/
def P13496466701093119588.Spec : Prop :=
  ∀ n, P13496466701093119588.a n = A099843 n

end A099843

/-! ## A099843.P15957299670257646002

`Δ[A106511(3*n+1)]`
-/

namespace A099843.P15957299670257646002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099843.P15957299670257646002

namespace A099843

/-- `Δ[A106511(3*n+1)]` -/
def P15957299670257646002.Spec : Prop :=
  ∀ n, P15957299670257646002.a n = A099843 n

end A099843

/-! ## A099843.P7432783359064811625

`(-1)^n*A167808(3*n+2)`
-/

namespace A099843.P7432783359064811625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A167808 (3 * n + 2)

end

end A099843.P7432783359064811625

namespace A099843

/-- `(-1)^n*A167808(3*n+2)` -/
def P7432783359064811625.Spec : Prop :=
  ∀ n, P7432783359064811625.a n = A099843 n

end A099843

/-! ## A099843.P8437633276886416941

`A014437(2*n+1)*A033999(n)`
-/

namespace A099843.P8437633276886416941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (2 * n + 1) * A033999 n

end

end A099843.P8437633276886416941

namespace A099843

/-- `A014437(2*n+1)*A033999(n)` -/
def P8437633276886416941.Spec : Prop :=
  ∀ n, P8437633276886416941.a n = A099843 n

end A099843

/-! ## A099843.P10838802401936240187

`A000045(3*n+2)*A033999(n)`
-/

namespace A099843.P10838802401936240187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n + 2) * A033999 n

end

end A099843.P10838802401936240187

namespace A099843

/-- `A000045(3*n+2)*A033999(n)` -/
def P10838802401936240187.Spec : Prop :=
  ∀ n, P10838802401936240187.a n = A099843 n

end A099843

/-! ## A099843.P16591433546265936494

`A000045(3*n+2)/A057077(2*n)`
-/

namespace A099843.P16591433546265936494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n + 2) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A099843.P16591433546265936494

namespace A099843

/-- `A000045(3*n+2)/A057077(2*n)` -/
def P16591433546265936494.Spec : Prop :=
  ∀ n, P16591433546265936494.a n = (A099843 n : ℚ)

end A099843

/-! ## A099843.P3155127290165140738

`A057077(2*n)*A103609(6*n+4)`
-/

namespace A099843.P3155127290165140738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A103609 (6 * n + 4)

end

end A099843.P3155127290165140738

namespace A099843

/-- `A057077(2*n)*A103609(6*n+4)` -/
def P3155127290165140738.Spec : Prop :=
  ∀ n, P3155127290165140738.a n = A099843 n

end A099843

/-! ## A099843.P10036837192980742562

`A000045(2*n+n+2)*A057077(2*n)`
-/

namespace A099843.P10036837192980742562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + (n + 2)) * A057077 (2 * n)

end

end A099843.P10036837192980742562

namespace A099843

/-- `A000045(2*n+n+2)*A057077(2*n)` -/
def P10036837192980742562.Spec : Prop :=
  ∀ n, P10036837192980742562.a n = A099843 n

end A099843

/-! ## A099843.P9740748277834820071

`A000045(2*n+n+2)*A008683(gcd(n+1, n-1))`
-/

namespace A099843.P9740748277834820071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + (n + 2)) * A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A099843.P9740748277834820071

namespace A099843

/-- `A000045(2*n+n+2)*A008683(gcd(n+1, n-1))` -/
def P9740748277834820071.Spec : Prop :=
  ∀ n, P9740748277834820071.a n = A099843 n

end A099843

/-! ## A099843.P3393090228317568880

`A167808(3*n+2)/A054354(A054353(n+1))`
-/

namespace A099843.P3393090228317568880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167808 (3 * n + 2) : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A099843.P3393090228317568880

namespace A099843

/-- `A167808(3*n+2)/A054354(A054353(n+1))` -/
def P3393090228317568880.Spec : Prop :=
  ∀ n, P3393090228317568880.a n = (A099843 n : ℚ)

end A099843

/-!
# A099844: An Alexander sequence for the knot 8_2.

The programs for A099844, there is no canonical definition to state claims against.
-/

/-! ## A099844.P6960941403663829347

`∑[∑[A003056(A165533(n))]]`
-/

namespace A099844.P6960941403663829347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A165533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099844.P6960941403663829347

/-! ## A099844.P5158113928697692639

`∑[A005041(∑[A307401(n)])]`
-/

namespace A099844.P5158113928697692639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099844.P5158113928697692639

/-! ## A099844.P1024991988788508855

`or(A061509(n), A257639(A150573(n)))`
-/

namespace A099844.P1024991988788508855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061509 n) (A257639 (A150573 n).toNat)

end

end A099844.P1024991988788508855

/-! ## A099844.P18240608385916820784

`∑[A002024(A150171(n))]`
-/

namespace A099844.P18240608385916820784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A150171 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099844.P18240608385916820784

/-!
# A099845: A Chebyshev transform of A090400 related to the knot 8_2.

The programs for A099845, there is no canonical definition to state claims against.
-/

/-! ## A099845.P17955447503378217083

`∑[∑[A000194(A150348(n))]]`
-/

namespace A099845.P17955447503378217083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A150348 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099845.P17955447503378217083

/-! ## A099845.P9216781653048456751

`∑[∑[A194327(A149302(n))]]`
-/

namespace A099845.P9216781653048456751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A149302 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099845.P9216781653048456751

/-! ## A099845.P692737144909854178

`∑[∑[A137734(A039919(n+1))]]`
-/

namespace A099845.P692737144909854178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A039919 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099845.P692737144909854178

/-! ## A099845.P13773133357264015673

`A338565(A008776(n))+A161943(n+1)`
-/

namespace A099845.P13773133357264015673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338565 (A008776 n).toNat + A161943 (n + 1)

end

end A099845.P13773133357264015673

/-!
# A099846: An Alexander sequence for the knot 8_5.

The programs for A099846, the canonical program `A099846.P11887730762219744914` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099846 has offset 0).

The definition of A099846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099846.P11887730762219744914

`3*a(n-1)-4*a(n-2)+5*a(n-3)-4*a(n-4)+3*a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=15, a(5)=29`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099846

/-- `3*a(n-1)-4*a(n-2)+5*a(n-3)-4*a(n-4)+3*a(n-5)-a(n-6)` -/
def P11887730762219744914.Spec : Prop :=
  ∀ n, P11887730762219744914.a n = A099846 n

theorem P11887730762219744914.correct : P11887730762219744914.Spec := by
  intro n
  simp only [A099846]

end A099846

/-! ## A099846.P5155938976068496780

`Δ[Δ[Δ[Δ[A099854(n)]]]]`
-/

namespace A099846.P5155938976068496780
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099854 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099846.P5155938976068496780

namespace A099846

/-- `Δ[Δ[Δ[Δ[A099854(n)]]]]` -/
def P5155938976068496780.Spec : Prop :=
  ∀ n, P5155938976068496780.a n = A099846 n

end A099846

/-! ## A099846.P11603012866311651042

`A001462(A128834(n)+A018041(n))`
-/

namespace A099846.P11603012866311651042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A128834 n + A018041 n).toNat

end

end A099846.P11603012866311651042

namespace A099846

/-- `A001462(A128834(n)+A018041(n))` -/
def P11603012866311651042.Spec : Prop :=
  ∀ n, P11603012866311651042.a n = A099846 n

end A099846

/-! ## A099846.P8461567287650174871

`A001462(A166486(n)+A018041(n))`
-/

namespace A099846.P8461567287650174871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A166486 n + A018041 n).toNat

end

end A099846.P8461567287650174871

namespace A099846

/-- `A001462(A166486(n)+A018041(n))` -/
def P8461567287650174871.Spec : Prop :=
  ∀ n, P8461567287650174871.a n = A099846 n

end A099846

/-! ## A099846.P10164551565871953729

`A210691(A033461(n)+A018040(n))`
-/

namespace A099846.P10164551565871953729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210691 (A033461 n + A018040 n).toNat

end

end A099846.P10164551565871953729

namespace A099846

/-- `A210691(A033461(n)+A018040(n))` -/
def P10164551565871953729.Spec : Prop :=
  ∀ n, P10164551565871953729.a n = A099846 n

end A099846

/-!
# A099847: Bisection of A000961.

The programs for A099847, the canonical program `A099847.P18382211922917996472` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099847 has offset 1).

The definition of A099847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099847.P14492339511370946758

`A246655(Δ[n²])`
-/

namespace A099847.P14492339511370946758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099847.P14492339511370946758

namespace A099847

/-- `A246655(Δ[n²])` -/
def P14492339511370946758.Spec : Prop :=
  ∀ n, P14492339511370946758.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P15413914338493853933

`A000961(2*(n+1))`
-/

namespace A099847.P15413914338493853933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (2 * (n + 1))

end

end A099847.P15413914338493853933

namespace A099847

/-- `A000961(2*(n+1))` -/
def P15413914338493853933.Spec : Prop :=
  ∀ n, P15413914338493853933.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P18382211922917996472

`ceil(sqrt(A060615(2*n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A099847

/-- `ceil(sqrt(A060615(2*n)))` -/
def P18382211922917996472.Spec : Prop :=
  ∀ n, P18382211922917996472.a n = A099847 (n + 1)

theorem P18382211922917996472.correct : P18382211922917996472.Spec := by
  intro n
  simp only [A099847, Nat.add_sub_cancel]

end A099847

/-! ## A099847.P18146950489658384692

`record[A000961(abs(xor(n, -2)))]`
-/

namespace A099847.P18146950489658384692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P18146950489658384692

namespace A099847

/-- `record[A000961(abs(xor(n, -2)))]` -/
def P18146950489658384692.Spec : Prop :=
  ∀ n, P18146950489658384692.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P10975328764290210316

`sqrt(A056798(2*(n+1)))`
-/

namespace A099847.P10975328764290210316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (2 * (n + 1)) : ℝ)

end

end A099847.P10975328764290210316

namespace A099847

/-- `sqrt(A056798(2*(n+1)))` -/
def P10975328764290210316.Spec : Prop :=
  ∀ n, P10975328764290210316.a n = (A099847 (n + 1) : ℝ)

end A099847

/-! ## A099847.P2103131859767236396

`record[A000961(xor(1, n)+1)]`
-/

namespace A099847.P2103131859767236396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P2103131859767236396

namespace A099847

/-- `record[A000961(xor(1, n)+1)]` -/
def P2103131859767236396.Spec : Prop :=
  ∀ n, P2103131859767236396.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P11242421363695228748

`A181062(2*(n+1))+1`
-/

namespace A099847.P11242421363695228748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (2 * (n + 1)) + 1

end

end A099847.P11242421363695228748

namespace A099847

/-- `A181062(2*(n+1))+1` -/
def P11242421363695228748.Spec : Prop :=
  ∀ n, P11242421363695228748.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P9924416503225672645

`A138929(2*(n+1))/2`
-/

namespace A099847.P9924416503225672645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (2 * (n + 1)) : ℚ) / 2

end

end A099847.P9924416503225672645

namespace A099847

/-- `A138929(2*(n+1))/2` -/
def P9924416503225672645.Spec : Prop :=
  ∀ n, P9924416503225672645.a n = (A099847 (n + 1) : ℚ)

end A099847

/-! ## A099847.P8137469895414263431

`or(char[2], A246655(2*n+1))`
-/

namespace A099847.P8137469895414263431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A246655 (2 * n + 1))

end

end A099847.P8137469895414263431

namespace A099847

/-- `or(char[2], A246655(2*n+1))` -/
def P8137469895414263431.Spec : Prop :=
  ∀ n, P8137469895414263431.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P18149756435800779750

`root(A000961(n+2+n), 2)²`
-/

namespace A099847.P18149756435800779750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000961 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A099847.P18149756435800779750

namespace A099847

/-- `root(A000961(n+2+n), 2)²` -/
def P18149756435800779750.Spec : Prop :=
  ∀ n, P18149756435800779750.a n = (A099847 (n + 1) : ℝ)

end A099847

/-! ## A099847.P6394434192928435962

`ceil(sqrt(sqrt(A059238(2*n+1))))`
-/

namespace A099847.P6394434192928435962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A059238 (2 * n + 1) : ℝ))⌉

end

end A099847.P6394434192928435962

namespace A099847

/-- `ceil(sqrt(sqrt(A059238(2*n+1))))` -/
def P6394434192928435962.Spec : Prop :=
  ∀ n, P6394434192928435962.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P15631378890877872626

`record[A000961(lcm(2, n+1)-n)]`
-/

namespace A099847.P15631378890877872626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.lcm 2 (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P15631378890877872626

namespace A099847

/-- `record[A000961(lcm(2, n+1)-n)]` -/
def P15631378890877872626.Spec : Prop :=
  ∀ n, P15631378890877872626.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P424334802644163306

`record[A000961((n+2)%4+n)]`
-/

namespace A099847.P424334802644163306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 ((n + 2) % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P424334802644163306

namespace A099847

/-- `record[A000961((n+2)%4+n)]` -/
def P424334802644163306.Spec : Prop :=
  ∀ n, P424334802644163306.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P12101498672265566238

`record[A000961(and(n, n-1)+2)]`
-/

namespace A099847.P12101498672265566238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Int.land (n : ℤ) ((n : ℤ) - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P12101498672265566238

namespace A099847

/-- `record[A000961(and(n, n-1)+2)]` -/
def P12101498672265566238.Spec : Prop :=
  ∀ n, P12101498672265566238.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P11922739392562776703

`record[A000961((-1)^n+n+1)]`
-/

namespace A099847.P11922739392562776703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 ((-1) ^ n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P11922739392562776703

namespace A099847

/-- `record[A000961((-1)^n+n+1)]` -/
def P11922739392562776703.Spec : Prop :=
  ∀ n, P11922739392562776703.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P6496531845651020721

`record[A246655(A000265(n+1))]`
-/

namespace A099847.P6496531845651020721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P6496531845651020721

namespace A099847

/-- `record[A246655(A000265(n+1))]` -/
def P6496531845651020721.Spec : Prop :=
  ∀ n, P6496531845651020721.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P10319142487805413338

`A000027(A246655(2*n+1))`
-/

namespace A099847.P10319142487805413338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A246655 (2 * n + 1)).toNat

end

end A099847.P10319142487805413338

namespace A099847

/-- `A000027(A246655(2*n+1))` -/
def P10319142487805413338.Spec : Prop :=
  ∀ n, P10319142487805413338.a n = A099847 (n + 1)

end A099847

/-! ## A099847.P9892891672381344786

`record[A246655(n+1)/A328570(n)]`
-/

namespace A099847.P9892891672381344786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) / (A328570 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P9892891672381344786

namespace A099847

/-- `record[A246655(n+1)/A328570(n)]` -/
def P9892891672381344786.Spec : Prop :=
  ∀ n, P9892891672381344786.a n = (A099847 (n + 1) : ℚ)

end A099847

/-! ## A099847.P8037767041471349207

`record[A000961(n+2)/A266303(n)]`
-/

namespace A099847.P8037767041471349207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 2) : ℚ) / (A266303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P8037767041471349207

namespace A099847

/-- `record[A000961(n+2)/A266303(n)]` -/
def P8037767041471349207.Spec : Prop :=
  ∀ n, P8037767041471349207.a n = (A099847 (n + 1) : ℚ)

end A099847

/-! ## A099847.P5213740739136752939

`record[A138929(n+1)/A020639(n+1)]`
-/

namespace A099847.P5213740739136752939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099847.P5213740739136752939

namespace A099847

/-- `record[A138929(n+1)/A020639(n+1)]` -/
def P5213740739136752939.Spec : Prop :=
  ∀ n, P5213740739136752939.a n = (A099847 (n + 1) : ℚ)

end A099847

/-!
# A099848: All natural numbers occur in their order as many times as they have ordered prime factorizations.

The programs for A099848, the canonical program `A099848.P408237094223669535` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099848 has offset 1).

The definition of A099848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099848.P408237094223669535

`∑[char[A099849(n+1)]]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099848

/-- `∑[char[A099849(n+1)]]+1` -/
def P408237094223669535.Spec : Prop :=
  ∀ n, (P408237094223669535.a n : ℤ) = A099848 (n + 1)

theorem P408237094223669535.correct : P408237094223669535.Spec := by
  intro n
  simp only [A099848, Nat.add_sub_cancel]

end A099848

/-! ## A099848.P17857340399612766938

`∑[char[∑[A008480(n+1)]]]+1`
-/

namespace A099848.P17857340399612766938
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099848.P17857340399612766938

namespace A099848

/-- `∑[char[∑[A008480(n+1)]]]+1` -/
def P17857340399612766938.Spec : Prop :=
  ∀ n, (P17857340399612766938.a n : ℤ) = A099848 (n + 1)

end A099848

/-! ## A099848.P9490817416183225687

`∑[char[∑[A168324(n+1)]+1]]+1`
-/

namespace A099848.P9490817416183225687
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099848.P9490817416183225687

namespace A099848

/-- `∑[char[∑[A168324(n+1)]+1]]+1` -/
def P9490817416183225687.Spec : Prop :=
  ∀ n, (P9490817416183225687.a n : ℤ) = A099848 (n + 1)

end A099848

/-! ## A099848.P2815585338723660372

`∑[char[∑[A335447(n+1)+1]]]+1`
-/

namespace A099848.P2815585338723660372
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099848.P2815585338723660372

namespace A099848

/-- `∑[char[∑[A335447(n+1)+1]]]+1` -/
def P2815585338723660372.Spec : Prop :=
  ∀ n, (P2815585338723660372.a n : ℤ) = A099848 (n + 1)

end A099848

/-! ## A099848.P16075784037876892085

`A000027(a(n-1))+char[A099849(n+1)]` with `a(0)=1`
-/

namespace A099848.P16075784037876892085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099849 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099848.P16075784037876892085

namespace A099848

/-- `A000027(a(n-1))+char[A099849(n+1)]` -/
def P16075784037876892085.Spec : Prop :=
  ∀ n, P16075784037876892085.a n = A099848 (n + 1)

end A099848

/-! ## A099848.P11753003834664574331

`A333219(A333221(n+1)+1)`
-/

namespace A099848.P11753003834664574331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A333221 (n + 1) + 1).toNat

end

end A099848.P11753003834664574331

namespace A099848

/-- `A333219(A333221(n+1)+1)` -/
def P11753003834664574331.Spec : Prop :=
  ∀ n, P11753003834664574331.a n = A099848 (n + 1)

end A099848

/-!
# A099849: Partial sums of A008480.

The programs for A099849, the canonical program `A099849.P9992613573656940042` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099849 has offset 1).

The definition of A099849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099849.P9992613573656940042

`a(n-1)+A008480(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099849

/-- `a(n-1)+A008480(n+1)` -/
def P9992613573656940042.Spec : Prop :=
  ∀ n, P9992613573656940042.a n = A099849 (n + 1)

theorem P9992613573656940042.correct : P9992613573656940042.Spec := by
  intro n
  simp only [A099849, Nat.add_sub_cancel]

end A099849

/-! ## A099849.P11383786180008406519

`∑[∑{e}[n+1, #]!/∏{e}[n+1, #!]]`
-/

namespace A099849.P11383786180008406519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P11383786180008406519

namespace A099849

/-- `∑[∑{e}[n+1, #]!/∏{e}[n+1, #!]]` -/
def P11383786180008406519.Spec : Prop :=
  ∀ n, P11383786180008406519.a n = (A099849 (n + 1) : ℚ)

end A099849

/-! ## A099849.P4924786710746761947

`∑[A008480(n+1)]`
-/

namespace A099849.P4924786710746761947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P4924786710746761947

namespace A099849

/-- `∑[A008480(n+1)]` -/
def P4924786710746761947.Spec : Prop :=
  ∀ n, P4924786710746761947.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P6218375235000630863

`∑[abs(A355939(n+1))]`
-/

namespace A099849.P6218375235000630863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P6218375235000630863

namespace A099849

/-- `∑[abs(A355939(n+1))]` -/
def P6218375235000630863.Spec : Prop :=
  ∀ n, P6218375235000630863.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P16938997681837756791

`∑[A168324(n+1)]+1`
-/

namespace A099849.P16938997681837756791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099849.P16938997681837756791

namespace A099849

/-- `∑[A168324(n+1)]+1` -/
def P16938997681837756791.Spec : Prop :=
  ∀ n, P16938997681837756791.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P15249206512318444814

`∑[A335447(n+1)+1]`
-/

namespace A099849.P15249206512318444814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P15249206512318444814

namespace A099849

/-- `∑[A335447(n+1)+1]` -/
def P15249206512318444814.Spec : Prop :=
  ∀ n, P15249206512318444814.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P6559834593824160498

`∑[A135323(n+1)/(n+1)]`
-/

namespace A099849.P6559834593824160498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135323 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P6559834593824160498

namespace A099849

/-- `∑[A135323(n+1)/(n+1)]` -/
def P6559834593824160498.Spec : Prop :=
  ∀ n, P6559834593824160498.a n = (A099849 (n + 1) : ℚ)

end A099849

/-! ## A099849.P8572189509804713593

`∑[A001222(n+1)!/∏{e}[n+1, #!]]`
-/

namespace A099849.P8572189509804713593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P8572189509804713593

namespace A099849

/-- `∑[A001222(n+1)!/∏{e}[n+1, #!]]` -/
def P8572189509804713593.Spec : Prop :=
  ∀ n, P8572189509804713593.a n = (A099849 (n + 1) : ℚ)

end A099849

/-! ## A099849.P18259742801519650354

`∑[A050382(A101296(n+1))]`
-/

namespace A099849.P18259742801519650354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (A101296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P18259742801519650354

namespace A099849

/-- `∑[A050382(A101296(n+1))]` -/
def P18259742801519650354.Spec : Prop :=
  ∀ n, P18259742801519650354.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P15794603581161328778

`∑[A318762(A181819(n+1))]`
-/

namespace A099849.P15794603581161328778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P15794603581161328778

namespace A099849

/-- `∑[A318762(A181819(n+1))]` -/
def P15794603581161328778.Spec : Prop :=
  ∀ n, P15794603581161328778.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P7383935987368266595

`∑[A337255(∑[A073093(n+1)])]`
-/

namespace A099849.P7383935987368266595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337255 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P7383935987368266595

namespace A099849

/-- `∑[A337255(∑[A073093(n+1)])]` -/
def P7383935987368266595.Spec : Prop :=
  ∀ n, P7383935987368266595.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P9138053509652079245

`∑[A251683(∑[A086436(n+1)])]`
-/

namespace A099849.P9138053509652079245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251683 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P9138053509652079245

namespace A099849

/-- `∑[A251683(∑[A086436(n+1)])]` -/
def P9138053509652079245.Spec : Prop :=
  ∀ n, P9138053509652079245.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P4341393374238958298

`∑[A251683(∑[A001222(n+1)]+1)]`
-/

namespace A099849.P4341393374238958298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251683 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P4341393374238958298

namespace A099849

/-- `∑[A251683(∑[A001222(n+1)]+1)]` -/
def P4341393374238958298.Spec : Prop :=
  ∀ n, P4341393374238958298.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P164057275913516462

`∑[A334996(∑[A073093(n+1)])]+1`
-/

namespace A099849.P164057275913516462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099849.P164057275913516462

namespace A099849

/-- `∑[A334996(∑[A073093(n+1)])]+1` -/
def P164057275913516462.Spec : Prop :=
  ∀ n, P164057275913516462.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P282816047262036977

`∑[A298941(A087560(n+1))]`
-/

namespace A099849.P282816047262036977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A087560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P282816047262036977

namespace A099849

/-- `∑[A298941(A087560(n+1))]` -/
def P282816047262036977.Spec : Prop :=
  ∀ n, P282816047262036977.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P4184646193169736504

`∑[A325392(A045965(n+1))]+1`
-/

namespace A099849.P4184646193169736504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099849.P4184646193169736504

namespace A099849

/-- `∑[A325392(A045965(n+1))]+1` -/
def P4184646193169736504.Spec : Prop :=
  ∀ n, P4184646193169736504.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P3700059961074302732

`∑[A206487(A046523(n+1))]`
-/

namespace A099849.P3700059961074302732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P3700059961074302732

namespace A099849

/-- `∑[A206487(A046523(n+1))]` -/
def P3700059961074302732.Spec : Prop :=
  ∀ n, P3700059961074302732.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P7527756628777268727

`∑[A206487(A071364(n+1))]`
-/

namespace A099849.P7527756628777268727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A071364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P7527756628777268727

namespace A099849

/-- `∑[A206487(A071364(n+1))]` -/
def P7527756628777268727.Spec : Prop :=
  ∀ n, P7527756628777268727.a n = A099849 (n + 1)

end A099849

/-! ## A099849.P5973620896721016290

`∑[A206487(A097272(n+1))]`
-/

namespace A099849.P5973620896721016290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A097272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099849.P5973620896721016290

namespace A099849

/-- `∑[A206487(A097272(n+1))]` -/
def P5973620896721016290.Spec : Prop :=
  ∀ n, P5973620896721016290.a n = A099849 (n + 1)

end A099849

/-!
# A099850: Partial sums of A004648.

The programs for A099850, the canonical program `A099850.P5992010022998124774` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099850 has offset 1).

The definition of A099850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099850.P5992010022998124774

`∑[A004648(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099850

/-- `∑[A004648(n+1)]` -/
def P5992010022998124774.Spec : Prop :=
  ∀ n, P5992010022998124774.a n = A099850 (n + 1)

theorem P5992010022998124774.correct : P5992010022998124774.Spec := by
  intro n
  simp only [A099850, Nat.add_sub_cancel]

end A099850

/-! ## A099850.P3433094930166913946

`∑[A087611(n+1)]+n`
-/

namespace A099850.P3433094930166913946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A099850.P3433094930166913946

namespace A099850

/-- `∑[A087611(n+1)]+n` -/
def P3433094930166913946.Spec : Prop :=
  ∀ n, P3433094930166913946.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P2357359621804885317

`∑[Δ[A007504(n)]%(n+1)]`
-/

namespace A099850.P2357359621804885317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P2357359621804885317

namespace A099850

/-- `∑[Δ[A007504(n)]%(n+1)]` -/
def P2357359621804885317.Spec : Prop :=
  ∀ n, P2357359621804885317.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P13684569662744957675

`∑[A000040(n+1)%(n+1)]`
-/

namespace A099850.P13684569662744957675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P13684569662744957675

namespace A099850

/-- `∑[A000040(n+1)%(n+1)]` -/
def P13684569662744957675.Spec : Prop :=
  ∀ n, P13684569662744957675.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P3009430601382248160

`∑[A004232(n+1)%(n+1)]`
-/

namespace A099850.P3009430601382248160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004232 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P3009430601382248160

namespace A099850

/-- `∑[A004232(n+1)%(n+1)]` -/
def P3009430601382248160.Spec : Prop :=
  ∀ n, P3009430601382248160.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P14595614074615907732

`∑[A006005(n+1)%(n+1)]`
-/

namespace A099850.P14595614074615907732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P14595614074615907732

namespace A099850

/-- `∑[A006005(n+1)%(n+1)]` -/
def P14595614074615907732.Spec : Prop :=
  ∀ n, P14595614074615907732.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P11308370826703242692

`∑[A174008(n+1)%(n+1)]`
-/

namespace A099850.P11308370826703242692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174008 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P11308370826703242692

namespace A099850

/-- `∑[A174008(n+1)%(n+1)]` -/
def P11308370826703242692.Spec : Prop :=
  ∀ n, P11308370826703242692.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P13896589278745733146

`∑[(A040976(n+1)+2)%(n+1)]`
-/

namespace A099850.P13896589278745733146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P13896589278745733146

namespace A099850

/-- `∑[(A040976(n+1)+2)%(n+1)]` -/
def P13896589278745733146.Spec : Prop :=
  ∀ n, P13896589278745733146.a n = A099850 (n + 1)

theorem P13896589278745733146.correct : P13896589278745733146.Spec := by
  intro n
  simp only [A099850, Nat.add_sub_cancel, A099850.P13896589278745733146.f1, A099850.P13896589278745733146.a, A099850.P5992010022998124774.f1, A099850.P5992010022998124774.a, A004648, A004648.P171968973179240133.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099850

/-! ## A099850.P18003807527242654821

`∑[A006093(n+1)-A076079(n+1)]+n`
-/

namespace A099850.P18003807527242654821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A076079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A099850.P18003807527242654821

namespace A099850

/-- `∑[A006093(n+1)-A076079(n+1)]+n` -/
def P18003807527242654821.Spec : Prop :=
  ∀ n, P18003807527242654821.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P5627821894417787131

`∑[record[A006530(n+2)]%(n+1)]`
-/

namespace A099850.P5627821894417787131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P5627821894417787131

namespace A099850

/-- `∑[record[A006530(n+2)]%(n+1)]` -/
def P5627821894417787131.Spec : Prop :=
  ∀ n, P5627821894417787131.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P6669398705791223721

`∑[record[A020639(n+2)]%(n+1)]`
-/

namespace A099850.P6669398705791223721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P6669398705791223721

namespace A099850

/-- `∑[record[A020639(n+2)]%(n+1)]` -/
def P6669398705791223721.Spec : Prop :=
  ∀ n, P6669398705791223721.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P12815421695623147188

`∑[record[A000010(n+1)]%(n+1)]+n`
-/

namespace A099850.P12815421695623147188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A099850.P12815421695623147188

namespace A099850

/-- `∑[record[A000010(n+1)]%(n+1)]+n` -/
def P12815421695623147188.Spec : Prop :=
  ∀ n, P12815421695623147188.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P14526081728005631076

`∑[eq[n, A000010(or(1, n))]%(n+1)]+n`
-/

namespace A099850.P14526081728005631076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A099850.P14526081728005631076

namespace A099850

/-- `∑[eq[n, A000010(or(1, n))]%(n+1)]+n` -/
def P14526081728005631076.Spec : Prop :=
  ∀ n, (P14526081728005631076.a n : ℤ) = A099850 (n + 1)

end A099850

/-! ## A099850.P14208854197232257897

`∑[record[A014963(n+2)]%(n+1)]`
-/

namespace A099850.P14208854197232257897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P14208854197232257897

namespace A099850

/-- `∑[record[A014963(n+2)]%(n+1)]` -/
def P14208854197232257897.Spec : Prop :=
  ∀ n, P14208854197232257897.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P2549192643612495304

`∑[A065134(A000040(n+1))]`
-/

namespace A099850.P2549192643612495304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P2549192643612495304

namespace A099850

/-- `∑[A065134(A000040(n+1))]` -/
def P2549192643612495304.Spec : Prop :=
  ∀ n, P2549192643612495304.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P3827838950069391748

`∑[A065134(A008578(n+2))]`
-/

namespace A099850.P3827838950069391748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P3827838950069391748

namespace A099850

/-- `∑[A065134(A008578(n+2))]` -/
def P3827838950069391748.Spec : Prop :=
  ∀ n, P3827838950069391748.a n = A099850 (n + 1)

end A099850

/-! ## A099850.P1664644873422974608

`∑[A101257(A033286(n+1))]`
-/

namespace A099850.P1664644873422974608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (A033286 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099850.P1664644873422974608

namespace A099850

/-- `∑[A101257(A033286(n+1))]` -/
def P1664644873422974608.Spec : Prop :=
  ∀ n, P1664644873422974608.a n = A099850 (n + 1)

end A099850

/-!
# A099851: Numbers k such that A099850(k) is divisible by k.

The programs for A099851, there is no canonical definition to state claims against.
-/

/-! ## A099851.P56739810499900608

`A008458(A099852(n+1))/A008458(A099853(n+1))`
-/

namespace A099851.P56739810499900608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A099852 (n + 1)).toNat : ℚ) / (A008458 (A099853 (n + 1)).toNat : ℚ)

end

end A099851.P56739810499900608

/-!
# A099852: Terms in A099850 that are divisible by their position in that sequence.

The programs for A099852, there is no canonical definition to state claims against.
-/

/-! ## A099852.P7161073281508480593

`A099850(A099851(n+1))`
-/

namespace A099852.P7161073281508480593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099850 (A099851 (n + 1)).toNat

end

end A099852.P7161073281508480593

/-! ## A099852.P11296970286686331921

`A099851(n+1)*A099853(n+1)`
-/

namespace A099852.P11296970286686331921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099851 (n + 1) * A099853 (n + 1)

end

end A099852.P11296970286686331921

/-!
# A099853: Values of A099852 divided by the corresponding values in A099851. These are the integer results of dividing the terms of A099850 by their position in that sequence.

The programs for A099853, there is no canonical definition to state claims against.
-/

/-! ## A099853.P15996770165774520321

`A099852(n+1)/A099851(n+1)`
-/

namespace A099853.P15996770165774520321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099852 (n + 1) : ℚ) / (A099851 (n + 1) : ℚ)

end

end A099853.P15996770165774520321

/-! ## A099853.P11039546106905562347

`A099852(n+1)%(A099851(n+1)+A057428(n))`
-/

namespace A099853.P11039546106905562347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099852 (n + 1)) (A099851 (n + 1) + A057428 n)

end

end A099853.P11039546106905562347

/-! ## A099853.P15006577133533733690

`A099850(A099851(n+1))/A099851(A000027(n+1))`
-/

namespace A099853.P15006577133533733690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099850 (A099851 (n + 1)).toNat : ℚ) / (A099851 (A000027 (n + 1)).toNat : ℚ)

end

end A099853.P15006577133533733690

/-!
# A099854: A Chebyshev transform of A048739 related to the knot 8_5.

The programs for A099854, there is no canonical definition to state claims against.
-/

/-! ## A099854.P6055741908080573935

`∑[∑[A342524(A213709(n))]]`
-/

namespace A099854.P6055741908080573935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (A213709 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099854.P6055741908080573935

/-! ## A099854.P5258827659232917725

`∑[A338283(A001700(n))]`
-/

namespace A099854.P5258827659232917725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338283 (A001700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099854.P5258827659232917725

/-! ## A099854.P8268304791642002545

`∑[A130148(A018152(n)²)]`
-/

namespace A099854.P8268304791642002545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A018152 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099854.P8268304791642002545

/-! ## A099854.P7109032211276954089

`∑[A103128(A047061(n)²)]`
-/

namespace A099854.P7109032211276954089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A047061 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099854.P7109032211276954089

/-!
# A099855: a(n) = n*2^n - 2^(n/2)*sin(Pi*n/4).

The programs for A099855, the canonical program `A099855.P3189206528298959588` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099855 has offset 0).

The definition of A099855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099855.P11945086665565561524

`n*2^n-2^(n/2)*sin(π*n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099855.P11945086665565561524
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℝ) - (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * Real.sin (Real.pi * (n : ℝ) / 4)

end

end A099855.P11945086665565561524

namespace A099855

/-- `n*2^n-2^(n/2)*sin(π*n/4)` -/
def P11945086665565561524.Spec : Prop :=
  ∀ n, P11945086665565561524.a n = (A099855 n : ℝ)

end A099855

/-! ## A099855.P3189206528298959588

`2*A001787(n)-A009545(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099855

/-- `2*A001787(n)-A009545(n)` -/
def P3189206528298959588.Spec : Prop :=
  ∀ n, P3189206528298959588.a n = A099855 n

theorem P3189206528298959588.correct : P3189206528298959588.Spec := by
  intro n
  simp only [A099855]

end A099855

/-! ## A099855.P2890826525782382928

`6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=22`
-/

namespace A099855.P2890826525782382928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 22] fun n a =>
  6 * a (n - 1) - 14 * a (n - 2) + 16 * a (n - 3) - 8 * a (n - 4)

end

end A099855.P2890826525782382928

namespace A099855

/-- `6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` -/
def P2890826525782382928.Spec : Prop :=
  ∀ n, P2890826525782382928.a n = A099855 n

end A099855

/-! ## A099855.P17637652598405465371

`∑[A321959(n)]`
-/

namespace A099855.P17637652598405465371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099855.P17637652598405465371

namespace A099855

/-- `∑[A321959(n)]` -/
def P17637652598405465371.Spec : Prop :=
  ∀ n, P17637652598405465371.a n = A099855 n

end A099855

/-! ## A099855.P12138894400895555046

`A036289(n)-A009545(n)`
-/

namespace A099855.P12138894400895555046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - A009545 n

end

end A099855.P12138894400895555046

namespace A099855

/-- `A036289(n)-A009545(n)` -/
def P12138894400895555046.Spec : Prop :=
  ∀ n, P12138894400895555046.a n = A099855 n

end A099855

/-! ## A099855.P979202171239573078

`A097064(n+1)-A009545(n)`
-/

namespace A099855.P979202171239573078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) - A009545 n

end

end A099855.P979202171239573078

namespace A099855

/-- `A097064(n+1)-A009545(n)` -/
def P979202171239573078.Spec : Prop :=
  ∀ n, P979202171239573078.a n = A099855 n

end A099855

/-! ## A099855.P16350296688300358932

`A128135(n+1)-A131885(n)`
-/

namespace A099855.P16350296688300358932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 1) - A131885 n

end

end A099855.P16350296688300358932

namespace A099855

/-- `A128135(n+1)-A131885(n)` -/
def P16350296688300358932.Spec : Prop :=
  ∀ n, P16350296688300358932.a n = A099855 n

end A099855

/-! ## A099855.P18371106891789857061

`∑[A001787(n)+∑[A038505(n)]]`
-/

namespace A099855.P18371106891789857061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099855.P18371106891789857061

namespace A099855

/-- `∑[A001787(n)+∑[A038505(n)]]` -/
def P18371106891789857061.Spec : Prop :=
  ∀ n, P18371106891789857061.a n = A099855 n

end A099855

/-! ## A099855.P8705538081970875304

`∑[A001792(n)-∑[A038503(n)]]`
-/

namespace A099855.P8705538081970875304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099855.P8705538081970875304

namespace A099855

/-- `∑[A001792(n)-∑[A038503(n)]]` -/
def P8705538081970875304.Spec : Prop :=
  ∀ n, P8705538081970875304.a n = A099855 n

end A099855

/-! ## A099855.P10901510745590446779

`∑[A001787(n)+A000749(n+1)]`
-/

namespace A099855.P10901510745590446779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + A000749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099855.P10901510745590446779

namespace A099855

/-- `∑[A001787(n)+A000749(n+1)]` -/
def P10901510745590446779.Spec : Prop :=
  ∀ n, P10901510745590446779.a n = A099855 n

end A099855

/-! ## A099855.P8995870282645500469

`∑[A323225(n+1)-A099087(n)]`
-/

namespace A099855.P8995870282645500469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 1) - A099087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099855.P8995870282645500469

namespace A099855

/-- `∑[A323225(n+1)-A099087(n)]` -/
def P8995870282645500469.Spec : Prop :=
  ∀ n, P8995870282645500469.a n = A099855 n

end A099855

/-! ## A099855.P8382775618932671128

`A001787(n+1)-A038505(n+2)`
-/

namespace A099855.P8382775618932671128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A038505 (n + 2)

end

end A099855.P8382775618932671128

namespace A099855

/-- `A001787(n+1)-A038505(n+2)` -/
def P8382775618932671128.Spec : Prop :=
  ∀ n, P8382775618932671128.a n = A099855 n

end A099855

/-! ## A099855.P1997316702827840937

`A321959(n+1)-A000749(n+3)`
-/

namespace A099855.P1997316702827840937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321959 (n + 1) - A000749 (n + 3)

end

end A099855.P1997316702827840937

namespace A099855

/-- `A321959(n+1)-A000749(n+3)` -/
def P1997316702827840937.Spec : Prop :=
  ∀ n, P1997316702827840937.a n = A099855 n

end A099855

/-! ## A099855.P9340103843387733683

`A323225(n+2)-A038505(n+3)`
-/

namespace A099855.P9340103843387733683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 2) - A038505 (n + 3)

end

end A099855.P9340103843387733683

namespace A099855

/-- `A323225(n+2)-A038505(n+3)` -/
def P9340103843387733683.Spec : Prop :=
  ∀ n, P9340103843387733683.a n = A099855 n

end A099855

/-! ## A099855.P1101089810832388061

`∑[A323225(n+1)-A009545(n+1)]`
-/

namespace A099855.P1101089810832388061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 1) - A009545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099855.P1101089810832388061

namespace A099855

/-- `∑[A323225(n+1)-A009545(n+1)]` -/
def P1101089810832388061.Spec : Prop :=
  ∀ n, P1101089810832388061.a n = A099855 n

end A099855

/-! ## A099855.P10029898510181224256

`n*A131577(n+1)-A138231(2*n)`
-/

namespace A099855.P10029898510181224256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 (n + 1) - A138231 (2 * n)

end

end A099855.P10029898510181224256

namespace A099855

/-- `n*A131577(n+1)-A138231(2*n)` -/
def P10029898510181224256.Spec : Prop :=
  ∀ n, P10029898510181224256.a n = A099855 n

end A099855

/-! ## A099855.P6597400444246685651

`n*A011782(n+1)-A138232(2*n+1)`
-/

namespace A099855.P6597400444246685651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 (n + 1) - A138232 (2 * n + 1)

end

end A099855.P6597400444246685651

namespace A099855

/-- `n*A011782(n+1)-A138232(2*n+1)` -/
def P6597400444246685651.Spec : Prop :=
  ∀ n, P6597400444246685651.a n = A099855 n

end A099855

/-! ## A099855.P4428892620126994060

`n*A131577(n+1)-A138232(2*n+1)`
-/

namespace A099855.P4428892620126994060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 (n + 1) - A138232 (2 * n + 1)

end

end A099855.P4428892620126994060

namespace A099855

/-- `n*A131577(n+1)-A138232(2*n+1)` -/
def P4428892620126994060.Spec : Prop :=
  ∀ n, P4428892620126994060.a n = A099855 n

end A099855

/-! ## A099855.P13040389054418060791

`n*A016116(2*n)-A138232(2*n+1)`
-/

namespace A099855.P13040389054418060791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016116 (2 * n) - A138232 (2 * n + 1)

end

end A099855.P13040389054418060791

namespace A099855

/-- `n*A016116(2*n)-A138232(2*n+1)` -/
def P13040389054418060791.Spec : Prop :=
  ∀ n, P13040389054418060791.a n = A099855 n

end A099855

/-!
# A099856: Expansion of (1+3*x)/(1-3*x).

The programs for A099856, the canonical program `A099856.P16025205025310371230` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099856 has offset 0).

The definition of A099856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-3x))` (program `A099856.P16025205025310371230`, by `A099856.P16025205025310371230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099856.P16025205025310371230

`ogf((1+3x)/(1-3x))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099856

/-- `ogf((1+3x)/(1-3x))` -/
def P16025205025310371230.Spec : Prop :=
  ∀ n, P16025205025310371230.a n = A099856 n

theorem P16025205025310371230.correct : P16025205025310371230.Spec := by
  intro n
  simp only [A099856]

end A099856

/-! ## A099856.P12134502180177736371

`3*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A099856.P12134502180177736371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 1)

end

end A099856.P12134502180177736371

namespace A099856

/-- `3*a(n-1)` -/
def P12134502180177736371.Spec : Prop :=
  ∀ n, (P12134502180177736371.a n : ℤ) = A099856 n

end A099856

/-! ## A099856.P6758275770055677198

`Δ[3^n]-floor(acot(n))`
-/

namespace A099856.P6758275770055677198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A099856.P6758275770055677198

namespace A099856

/-- `Δ[3^n]-floor(acot(n))` -/
def P6758275770055677198.Spec : Prop :=
  ∀ n, P6758275770055677198.a n = A099856 n

end A099856

/-! ## A099856.P9243641668242075233

`Δ[3^n]/ceil(acot(n))`
-/

namespace A099856.P9243641668242075233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A099856.P9243641668242075233

namespace A099856

/-- `Δ[3^n]/ceil(acot(n))` -/
def P9243641668242075233.Spec : Prop :=
  ∀ n, P9243641668242075233.a n = (A099856 n : ℚ)

end A099856

/-! ## A099856.P18424721591826616356

`gcd(floor(acot(n)), Δ[3^n])`
-/

namespace A099856.P18424721591826616356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099856.P18424721591826616356

namespace A099856

/-- `gcd(floor(acot(n)), Δ[3^n])` -/
def P18424721591826616356.Spec : Prop :=
  ∀ n, (P18424721591826616356.a n : ℤ) = A099856 n

end A099856

/-! ## A099856.P16001622693905521960

`3^n*ceil(atan(n+1))`
-/

namespace A099856.P16001622693905521960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A099856.P16001622693905521960

namespace A099856

/-- `3^n*ceil(atan(n+1))` -/
def P16001622693905521960.Spec : Prop :=
  ∀ n, P16001622693905521960.a n = A099856 n

end A099856

/-! ## A099856.P14147944773169099358

`3^n*(3-ceil(acot(n)))`
-/

namespace A099856.P14147944773169099358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (3 - ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A099856.P14147944773169099358

namespace A099856

/-- `3^n*(3-ceil(acot(n)))` -/
def P14147944773169099358.Spec : Prop :=
  ∀ n, P14147944773169099358.a n = A099856 n

end A099856

/-! ## A099856.P9461730864585265748

`Δ[3^n]^ceil(sin(n)²)`
-/

namespace A099856.P9461730864585265748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A099856.P9461730864585265748

namespace A099856

/-- `Δ[3^n]^ceil(sin(n)²)` -/
def P9461730864585265748.Spec : Prop :=
  ∀ n, P9461730864585265748.a n = (A099856 n : ℚ)

end A099856

/-! ## A099856.P12489475223723020954

`lcm(3^n, a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A099856.P12489475223723020954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.lcm (3 ^ n) (a (n - 1))

end

end A099856.P12489475223723020954

namespace A099856

/-- `lcm(3^n, a(n-1))` -/
def P12489475223723020954.Spec : Prop :=
  ∀ n, (P12489475223723020954.a n : ℤ) = A099856 n

end A099856

/-! ## A099856.P16729199525425022447

`Δ[C(2, n+2)+3^n]`
-/

namespace A099856.P16729199525425022447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A099856.P16729199525425022447

namespace A099856

/-- `Δ[C(2, n+2)+3^n]` -/
def P16729199525425022447.Spec : Prop :=
  ∀ n, P16729199525425022447.a n = A099856 n

end A099856

/-! ## A099856.P12710264536992390915

`Δ[3^(n%a(n-1))]` with `a(0)=2`
-/

namespace A099856.P12710264536992390915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 ^ (n % f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A099856.P12710264536992390915

namespace A099856

/-- `Δ[3^(n%a(n-1))]` -/
def P12710264536992390915.Spec : Prop :=
  ∀ n, P12710264536992390915.a n = A099856 n

end A099856

/-! ## A099856.P6512450209974799236

`Δ[3^n]-C(n, 2*n)`
-/

namespace A099856.P6512450209974799236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.choose n (2 * n) : ℤ)

end

end A099856.P6512450209974799236

namespace A099856

/-- `Δ[3^n]-C(n, 2*n)` -/
def P6512450209974799236.Spec : Prop :=
  ∀ n, P6512450209974799236.a n = A099856 n

end A099856

/-! ## A099856.P14192229920139343076

`3^n*ceil(acot(acot(n+1)))`
-/

namespace A099856.P14192229920139343076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A099856.P14192229920139343076

namespace A099856

/-- `3^n*ceil(acot(acot(n+1)))` -/
def P14192229920139343076.Spec : Prop :=
  ∀ n, P14192229920139343076.a n = A099856 n

end A099856

/-! ## A099856.P7206842761417202844

`(2-floor(1/(n+1)))*3^n`
-/

namespace A099856.P7206842761417202844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ⌊1 / (n + 1 : ℚ)⌋) * (3 ^ n : ℤ)

end

end A099856.P7206842761417202844

namespace A099856

/-- `(2-floor(1/(n+1)))*3^n` -/
def P7206842761417202844.Spec : Prop :=
  ∀ n, P7206842761417202844.a n = A099856 n

end A099856

/-! ## A099856.P137819331167315929

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A099856.P137819331167315929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A099856.P137819331167315929

namespace A099856

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P137819331167315929.Spec : Prop :=
  ∀ n, (P137819331167315929.a n : ℤ) = A099856 n

end A099856

/-! ## A099856.P17279648625170858191

`Δ[A103453(n)]`
-/

namespace A099856.P17279648625170858191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099856.P17279648625170858191

namespace A099856

/-- `Δ[A103453(n)]` -/
def P17279648625170858191.Spec : Prop :=
  ∀ n, P17279648625170858191.a n = A099856 n

end A099856

/-! ## A099856.P14936110815661677286

`Δ[A259821(n)]`
-/

namespace A099856.P14936110815661677286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099856.P14936110815661677286

namespace A099856

/-- `Δ[A259821(n)]` -/
def P14936110815661677286.Spec : Prop :=
  ∀ n, P14936110815661677286.a n = A099856 n

end A099856

/-! ## A099856.P5451016607230413842

`A182751(Δ[n²])`
-/

namespace A099856.P5451016607230413842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099856.P5451016607230413842

namespace A099856

/-- `A182751(Δ[n²])` -/
def P5451016607230413842.Spec : Prop :=
  ∀ n, P5451016607230413842.a n = A099856 n

end A099856

/-! ## A099856.P13035331547653473012

`Δ[A376478(n+2)]`
-/

namespace A099856.P13035331547653473012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099856.P13035331547653473012

namespace A099856

/-- `Δ[A376478(n+2)]` -/
def P13035331547653473012.Spec : Prop :=
  ∀ n, P13035331547653473012.a n = A099856 n

end A099856

/-! ## A099856.P12983351394845358623

`record[A166450(n+1)]`
-/

namespace A099856.P12983351394845358623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099856.P12983351394845358623

namespace A099856

/-- `record[A166450(n+1)]` -/
def P12983351394845358623.Spec : Prop :=
  ∀ n, P12983351394845358623.a n = A099856 n

end A099856

/-!
# A099857: Expansion of (1+3*x+x^2)/(1-3*x+x^2).

The programs for A099857, the canonical program `A099857.P11834770020361606966` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099857 has offset 0).

The definition of A099857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2)/(1-3x+x^2))` (program `A099857.P11834770020361606966`, by `A099857.P11834770020361606966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099857.P11834770020361606966

`ogf((1+3x+x^2)/(1-3x+x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099857

/-- `ogf((1+3x+x^2)/(1-3x+x^2))` -/
def P11834770020361606966.Spec : Prop :=
  ∀ n, P11834770020361606966.a n = A099857 n

theorem P11834770020361606966.correct : P11834770020361606966.Spec := by
  intro n
  simp only [A099857]

end A099857

/-! ## A099857.P3409871099122039456

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=6, a(2)=18`
-/

namespace A099857.P3409871099122039456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A099857.P3409871099122039456

namespace A099857

/-- `ceil(ϕ²*a(n-1))` -/
def P3409871099122039456.Spec : Prop :=
  ∀ n, P3409871099122039456.a n = A099857 n

end A099857

/-! ## A099857.P907350371240144537

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=6, a(2)=18`
-/

namespace A099857.P907350371240144537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A099857.P907350371240144537

namespace A099857

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P907350371240144537.Spec : Prop :=
  ∀ n, P907350371240144537.a n = A099857 n

end A099857

/-! ## A099857.P6158319602946571949

`char[2]+3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A099857.P6158319602946571949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (3 * a (n - 1) - a (n - 2))

end

end A099857.P6158319602946571949

namespace A099857

/-- `char[2]+3*a(n-1)-a(n-2)` -/
def P6158319602946571949.Spec : Prop :=
  ∀ n, P6158319602946571949.a n = A099857 n

end A099857

/-! ## A099857.P4446225589200818741

`xor(1, 3*a(n-1))-xor(1, a(n-2))` with `a(0)=1, a(1)=6, a(2)=18`
-/

namespace A099857.P4446225589200818741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18] fun n a =>
  Int.xor 1 (3 * a (n - 1)) - Int.xor 1 (a (n - 2))

end

end A099857.P4446225589200818741

namespace A099857

/-- `xor(1, 3*a(n-1))-xor(1, a(n-2))` -/
def P4446225589200818741.Spec : Prop :=
  ∀ n, P4446225589200818741.a n = A099857 n

end A099857

/-! ## A099857.P627113171313442456

`record[C(6, and(1, n))*A000045(n+1)]`
-/

namespace A099857.P627113171313442456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 6 (Nat.land 1 n) : ℤ) * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099857.P627113171313442456

namespace A099857

/-- `record[C(6, and(1, n))*A000045(n+1)]` -/
def P627113171313442456.Spec : Prop :=
  ∀ n, P627113171313442456.a n = A099857 n

end A099857

/-! ## A099857.P5115252447699445176

`A054888(n)+A001906(n)`
-/

namespace A099857.P5115252447699445176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n + A001906 n

end

end A099857.P5115252447699445176

namespace A099857

/-- `A054888(n)+A001906(n)` -/
def P5115252447699445176.Spec : Prop :=
  ∀ n, P5115252447699445176.a n = A099857 n

end A099857

/-! ## A099857.P10764113565740279273

`A001354(n)-A001906(n)`
-/

namespace A099857.P10764113565740279273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001354 n - A001906 n

end

end A099857.P10764113565740279273

namespace A099857

/-- `A001354(n)-A001906(n)` -/
def P10764113565740279273.Spec : Prop :=
  ∀ n, P10764113565740279273.a n = A099857 n

end A099857

/-! ## A099857.P3567788390982754192

`A335807(n)-A032908(n)`
-/

namespace A099857.P3567788390982754192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335807 n - A032908 n

end

end A099857.P3567788390982754192

namespace A099857

/-- `A335807(n)-A032908(n)` -/
def P3567788390982754192.Spec : Prop :=
  ∀ n, P3567788390982754192.a n = A099857 n

end A099857

/-! ## A099857.P15799662488534072560

`A001354(n)-Δ[A032908(n)]`
-/

namespace A099857.P15799662488534072560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001354 n - (f1 (n + 1) - f1 n)

end

end A099857.P15799662488534072560

namespace A099857

/-- `A001354(n)-Δ[A032908(n)]` -/
def P15799662488534072560.Spec : Prop :=
  ∀ n, P15799662488534072560.a n = A099857 n

end A099857

/-! ## A099857.P12920122133232001545

`record[A000034(n)*A131326(n)]`
-/

namespace A099857.P12920122133232001545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A131326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099857.P12920122133232001545

namespace A099857

/-- `record[A000034(n)*A131326(n)]` -/
def P12920122133232001545.Spec : Prop :=
  ∀ n, P12920122133232001545.a n = A099857 n

end A099857

/-! ## A099857.P11888939330085947383

`A201157(n+1)+A088305(n)`
-/

namespace A099857.P11888939330085947383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A088305 n

end

end A099857.P11888939330085947383

namespace A099857

/-- `A201157(n+1)+A088305(n)` -/
def P11888939330085947383.Spec : Prop :=
  ∀ n, P11888939330085947383.a n = A099857 n

end A099857

/-! ## A099857.P16867846305396597041

`A097134(n)+A097136(n)-1`
-/

namespace A099857.P16867846305396597041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 n + (A097136 n - 1)

end

end A099857.P16867846305396597041

namespace A099857

/-- `A097134(n)+A097136(n)-1` -/
def P16867846305396597041.Spec : Prop :=
  ∀ n, P16867846305396597041.a n = A099857 n

end A099857

/-! ## A099857.P16136004243267459577

`A036453(n+1)*A097134(n)`
-/

namespace A099857.P16136004243267459577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A097134 n

end

end A099857.P16136004243267459577

namespace A099857

/-- `A036453(n+1)*A097134(n)` -/
def P16136004243267459577.Spec : Prop :=
  ∀ n, P16136004243267459577.a n = A099857 n

end A099857

/-! ## A099857.P14698844156063797244

`(A057427(n)+1)*A097134(n)`
-/

namespace A099857.P14698844156063797244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A097134 n

end

end A099857.P14698844156063797244

namespace A099857

/-- `(A057427(n)+1)*A097134(n)` -/
def P14698844156063797244.Spec : Prop :=
  ∀ n, P14698844156063797244.a n = A099857 n

end A099857

/-! ## A099857.P9055153559029854259

`A111282(n+1)*A122553(n)`
-/

namespace A099857.P9055153559029854259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (n + 1) * A122553 n

end

end A099857.P9055153559029854259

namespace A099857

/-- `A111282(n+1)*A122553(n)` -/
def P9055153559029854259.Spec : Prop :=
  ∀ n, P9055153559029854259.a n = A099857 n

end A099857

/-! ## A099857.P10249287130058687727

`A022089(2*n)+A000007(n)`
-/

namespace A099857.P10249287130058687727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (2 * n) + A000007 n

end

end A099857.P10249287130058687727

namespace A099857

/-- `A022089(2*n)+A000007(n)` -/
def P10249287130058687727.Spec : Prop :=
  ∀ n, P10249287130058687727.a n = A099857 n

end A099857

/-! ## A099857.P4772494127580390555

`A054888(n)+A000045(2*n)`
-/

namespace A099857.P4772494127580390555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n + A000045 (2 * n)

end

end A099857.P4772494127580390555

namespace A099857

/-- `A054888(n)+A000045(2*n)` -/
def P4772494127580390555.Spec : Prop :=
  ∀ n, P4772494127580390555.a n = A099857 n

end A099857

/-! ## A099857.P17304909767765136100

`A054888(n)+A005013(2*n)`
-/

namespace A099857.P17304909767765136100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n + A005013 (2 * n)

end

end A099857.P17304909767765136100

namespace A099857

/-- `A054888(n)+A005013(2*n)` -/
def P17304909767765136100.Spec : Prop :=
  ∀ n, P17304909767765136100.a n = A099857 n

end A099857

/-!
# A099858: A Chebyshev transform of (1+3x)/(1-3x).

The programs for A099858, the canonical program `A099858.P2907830409672137456` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099858 has offset 0).

The definition of A099858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099858.P2907830409672137456

`3*a(n-1)-2*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=42`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099858

/-- `3*a(n-1)-2*a(n-2)+3*a(n-3)-a(n-4)` -/
def P2907830409672137456.Spec : Prop :=
  ∀ n, P2907830409672137456.a n = A099858 n

theorem P2907830409672137456.correct : P2907830409672137456.Spec := by
  intro n
  simp only [A099858]

end A099858

/-! ## A099858.P763570449422327701

`ogf((1+3x+x^2)/(1-3x+2x^2-3x^3+x^4))`
-/

namespace A099858.P763570449422327701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, -3, 2, -3, 1] n

end

end A099858.P763570449422327701

namespace A099858

/-- `ogf((1+3x+x^2)/(1-3x+2x^2-3x^3+x^4))` -/
def P763570449422327701.Spec : Prop :=
  ∀ n, P763570449422327701.a n = A099858 n

end A099858

/-! ## A099858.P1053622361218495131

`A099857(n)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A099858.P1053622361218495131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A099857 n - a (n - 2)

end

end A099858.P1053622361218495131

namespace A099858

/-- `A099857(n)-a(n-2)` -/
def P1053622361218495131.Spec : Prop :=
  ∀ n, P1053622361218495131.a n = A099858 n

end A099858

/-! ## A099858.P8126155230678246094

`A025169(n)-A056594(n)`
-/

namespace A099858.P8126155230678246094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A056594 n

end

end A099858.P8126155230678246094

namespace A099858

/-- `A025169(n)-A056594(n)` -/
def P8126155230678246094.Spec : Prop :=
  ∀ n, P8126155230678246094.a n = A099858 n

end A099858

/-! ## A099858.P9916763208725519920

`A056594(n+2)+A025169(n)`
-/

namespace A099858.P9916763208725519920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 2) + A025169 n

end

end A099858.P9916763208725519920

namespace A099858

/-- `A056594(n+2)+A025169(n)` -/
def P9916763208725519920.Spec : Prop :=
  ∀ n, P9916763208725519920.a n = A099858 n

end A099858

/-! ## A099858.P7700990376252986639

`A099484(n)+5*A099483(n)`
-/

namespace A099858.P7700990376252986639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 n + 5 * A099483 n

end

end A099858.P7700990376252986639

namespace A099858

/-- `A099484(n)+5*A099483(n)` -/
def P7700990376252986639.Spec : Prop :=
  ∀ n, P7700990376252986639.a n = A099858 n

end A099858

/-! ## A099858.P17309613724100551522

`A007877(n)+A001595(2*n+1)`
-/

namespace A099858.P17309613724100551522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n + A001595 (2 * n + 1)

end

end A099858.P17309613724100551522

namespace A099858

/-- `A007877(n)+A001595(2*n+1)` -/
def P17309613724100551522.Spec : Prop :=
  ∀ n, P17309613724100551522.a n = A099858 n

end A099858

/-! ## A099858.P15359371295547953729

`A133586(2*(n+1))-A056594(n)`
-/

namespace A099858.P15359371295547953729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (2 * (n + 1)) - A056594 n

end

end A099858.P15359371295547953729

namespace A099858

/-- `A133586(2*(n+1))-A056594(n)` -/
def P15359371295547953729.Spec : Prop :=
  ∀ n, P15359371295547953729.a n = A099858 n

end A099858

/-! ## A099858.P6216498569612481977

`A001906(n+1)+A001906(n+1)-A056594(n)`
-/

namespace A099858.P6216498569612481977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (A001906 (n + 1) - A056594 n)

end

end A099858.P6216498569612481977

namespace A099858

/-- `A001906(n+1)+A001906(n+1)-A056594(n)` -/
def P6216498569612481977.Spec : Prop :=
  ∀ n, P6216498569612481977.a n = A099858 n

end A099858

/-! ## A099858.P186938253039081553

`Δ[2*A001519(n+1)-and(2, -n)/2]`
-/

namespace A099858.P186938253039081553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001519 (n + 1) : ℚ) - (Int.land 2 (-(n : ℤ)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099858.P186938253039081553

namespace A099858

/-- `Δ[2*A001519(n+1)-and(2, -n)/2]` -/
def P186938253039081553.Spec : Prop :=
  ∀ n, P186938253039081553.a n = (A099858 n : ℚ)

end A099858

/-! ## A099858.P14024353668764086206

`Δ[∑[2*A000045(2*n)]+∑[-n]%2]`
-/

namespace A099858.P14024353668764086206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099858.P14024353668764086206

namespace A099858

/-- `Δ[∑[2*A000045(2*n)]+∑[-n]%2]` -/
def P14024353668764086206.Spec : Prop :=
  ∀ n, P14024353668764086206.a n = A099858 n

end A099858

/-! ## A099858.P4549399469365650916

`Δ[A069403(n)]-A056594(n)`
-/

namespace A099858.P4549399469365650916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056594 n

end

end A099858.P4549399469365650916

namespace A099858

/-- `Δ[A069403(n)]-A056594(n)` -/
def P4549399469365650916.Spec : Prop :=
  ∀ n, P4549399469365650916.a n = A099858 n

end A099858

/-! ## A099858.P10545404694381283944

`Δ[A001595(2*n)]-A056594(n)`
-/

namespace A099858.P10545404694381283944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056594 n

end

end A099858.P10545404694381283944

namespace A099858

/-- `Δ[A001595(2*n)]-A056594(n)` -/
def P10545404694381283944.Spec : Prop :=
  ∀ n, P10545404694381283944.a n = A099858 n

end A099858

/-! ## A099858.P27528487173022497

`Δ[A001595(2*n)+∑[A056594(n+1)]]`
-/

namespace A099858.P27528487173022497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099858.P27528487173022497

namespace A099858

/-- `Δ[A001595(2*n)+∑[A056594(n+1)]]` -/
def P27528487173022497.Spec : Prop :=
  ∀ n, P27528487173022497.a n = A099858 n

end A099858

/-! ## A099858.P3731210859711513592

`A185331(A000217(n+1))+A025169(n)`
-/

namespace A099858.P3731210859711513592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A000217 (n + 1)).toNat + A025169 n

end

end A099858.P3731210859711513592

namespace A099858

/-- `A185331(A000217(n+1))+A025169(n)` -/
def P3731210859711513592.Spec : Prop :=
  ∀ n, P3731210859711513592.a n = A099858 n

end A099858

/-!
# A099859: A Chebyshev transform of A006053 related to the knot 7_1.

The programs for A099859, the canonical program `A099859.P11234783524769903663` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099859 has offset 0).

The definition of A099859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099859.P11234783524769903663

`A046978(A302255(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099859

/-- `A046978(A302255(n))` -/
def P11234783524769903663.Spec : Prop :=
  ∀ n, P11234783524769903663.a n = A099859 n

theorem P11234783524769903663.correct : P11234783524769903663.Spec := by
  intro n
  simp only [A099859]

end A099859

/-!
# A099860: A Chebyshev transform related to the knot 7_1.

The programs for A099860, there is no canonical definition to state claims against.
-/

/-! ## A099860.P6138395324855318151

`A033999(n)*A099918(n)`
-/

namespace A099860.P6138395324855318151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099918 n

end

end A099860.P6138395324855318151

/-!
# A099861: a(n) = (2*n-1)-st composite number: a bisection of A002808.

The programs for A099861, the canonical program `A099861.P6004856047514362636` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099861 has offset 1).

The definition of A099861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099861.P6614665568636796984

`A175228(n+2)`
-/

namespace A099861.P6614665568636796984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175228 (n + 2)

end

end A099861.P6614665568636796984

namespace A099861

/-- `A175228(n+2)` -/
def P6614665568636796984.Spec : Prop :=
  ∀ n, P6614665568636796984.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P6169136567207911191

`filter[A377897(n+1), A005171(#)]`
-/

namespace A099861.P6169136567207911191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A099861.P6169136567207911191

namespace A099861

/-- `filter[A377897(n+1), A005171(#)]` -/
def P6169136567207911191.Spec : Prop :=
  ∀ n, P6169136567207911191.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P6004856047514362636

`filter[A377897(n+1), A066247(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A099861

/-- `filter[A377897(n+1), A066247(#)]` -/
def P6004856047514362636.Spec : Prop :=
  ∀ n, P6004856047514362636.a n = A099861 (n + 1)

theorem P6004856047514362636.correct : P6004856047514362636.Spec := by
  intro n
  simp only [A099861, Nat.add_sub_cancel]

end A099861

/-! ## A099861.P17713997571351283229

`A002808(Δ[n²])`
-/

namespace A099861.P17713997571351283229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099861.P17713997571351283229

namespace A099861

/-- `A002808(Δ[n²])` -/
def P17713997571351283229.Spec : Prop :=
  ∀ n, P17713997571351283229.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P674186686691499579

`A018252(2*(n+1))`
-/

namespace A099861.P674186686691499579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 1))

end

end A099861.P674186686691499579

namespace A099861

/-- `A018252(2*(n+1))` -/
def P674186686691499579.Spec : Prop :=
  ∀ n, P674186686691499579.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P15757557894002889816

`A141468(2*n+3)`
-/

namespace A099861.P15757557894002889816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (2 * n + 3)

end

end A099861.P15757557894002889816

namespace A099861

/-- `A141468(2*n+3)` -/
def P15757557894002889816.Spec : Prop :=
  ∀ n, P15757557894002889816.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P15278242168219591783

`record[A018252(xor(1, n)+1)]`
-/

namespace A099861.P15278242168219591783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099861.P15278242168219591783

namespace A099861

/-- `record[A018252(xor(1, n)+1)]` -/
def P15278242168219591783.Spec : Prop :=
  ∀ n, P15278242168219591783.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P15373018250830416536

`record[A002808(n^(n%2))]`
-/

namespace A099861.P15373018250830416536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099861.P15373018250830416536

namespace A099861

/-- `record[A002808(n^(n%2))]` -/
def P15373018250830416536.Spec : Prop :=
  ∀ n, P15373018250830416536.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P11478911107078238171

`and(-1, A002808(2*n+1))`
-/

namespace A099861.P11478911107078238171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002808 (2 * n + 1))

end

end A099861.P11478911107078238171

namespace A099861

/-- `and(-1, A002808(2*n+1))` -/
def P11478911107078238171.Spec : Prop :=
  ∀ n, P11478911107078238171.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P12297275800287329746

`record[A018252((n+2)%4+n)]`
-/

namespace A099861.P12297275800287329746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((n + 2) % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099861.P12297275800287329746

namespace A099861

/-- `record[A018252((n+2)%4+n)]` -/
def P12297275800287329746.Spec : Prop :=
  ∀ n, P12297275800287329746.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P15401579917173976266

`record[A018252(and(n, n+1)+2)]`
-/

namespace A099861.P15401579917173976266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.land n (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099861.P15401579917173976266

namespace A099861

/-- `record[A018252(and(n, n+1)+2)]` -/
def P15401579917173976266.Spec : Prop :=
  ∀ n, P15401579917173976266.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P7348456997362564656

`record[A018252((-1)^n+1+n)]`
-/

namespace A099861.P7348456997362564656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((-1) ^ n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099861.P7348456997362564656

namespace A099861

/-- `record[A018252((-1)^n+1+n)]` -/
def P7348456997362564656.Spec : Prop :=
  ∀ n, P7348456997362564656.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P15419522683215206582

`abs(A018252(Δ[n²]+1)-1)+1`
-/

namespace A099861.P15419522683215206582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1| + 1

end

end A099861.P15419522683215206582

namespace A099861

/-- `abs(A018252(Δ[n²]+1)-1)+1` -/
def P15419522683215206582.Spec : Prop :=
  ∀ n, P15419522683215206582.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P9466524769973892876

`A018252(n+2+n)%(n+3)²`
-/

namespace A099861.P9466524769973892876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2 + n)) ((n + 3) ^ 2 : ℤ)

end

end A099861.P9466524769973892876

namespace A099861

/-- `A018252(n+2+n)%(n+3)²` -/
def P9466524769973892876.Spec : Prop :=
  ∀ n, P9466524769973892876.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P6385129739819655021

`record[A002808(A000265(n+1))]`
-/

namespace A099861.P6385129739819655021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099861.P6385129739819655021

namespace A099861

/-- `record[A002808(A000265(n+1))]` -/
def P6385129739819655021.Spec : Prop :=
  ∀ n, P6385129739819655021.a n = A099861 (n + 1)

end A099861

/-! ## A099861.P11194968779671665261

`∩[A002808(n+1), A377897(n+1)]`
-/

namespace A099861.P11194968779671665261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099861.P11194968779671665261

namespace A099861

/-- `∩[A002808(n+1), A377897(n+1)]` -/
def P11194968779671665261.Spec : Prop :=
  ∀ n, (P11194968779671665261.a n : ℤ) = A099861 (n + 1)

end A099861

/-! ## A099861.P11353275386260142696

`∩[A018252(n+1), A377897(n+1)]`
-/

namespace A099861.P11353275386260142696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099861.P11353275386260142696

namespace A099861

/-- `∩[A018252(n+1), A377897(n+1)]` -/
def P11353275386260142696.Spec : Prop :=
  ∀ n, (P11353275386260142696.a n : ℤ) = A099861 (n + 1)

end A099861

/-!
# A099862: a(n) = (2*k)-th composite number; a bisection of A002808.

The programs for A099862, the canonical program `A099862.P16419779574124934599` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099862 has offset 1).

The definition of A099862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099862.P8754713856437948967

`A377900(a(n-1))` with `a(0)=6`
-/

namespace A099862.P8754713856437948967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A377900 (a (n - 1)).toNat

end

end A099862.P8754713856437948967

namespace A099862

/-- `A377900(a(n-1))` -/
def P8754713856437948967.Spec : Prop :=
  ∀ n, P8754713856437948967.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P16985262651626323104

`A377900(A099861(n+1))`
-/

namespace A099862.P16985262651626323104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377900 (A099861 (n + 1)).toNat

end

end A099862.P16985262651626323104

namespace A099862

/-- `A377900(A099861(n+1))` -/
def P16985262651626323104.Spec : Prop :=
  ∀ n, P16985262651626323104.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P8313622217955585836

`A377900(A018252(2*(n+1)))`
-/

namespace A099862.P8313622217955585836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377900 (A018252 (2 * (n + 1))).toNat

end

end A099862.P8313622217955585836

namespace A099862

/-- `A377900(A018252(2*(n+1)))` -/
def P8313622217955585836.Spec : Prop :=
  ∀ n, P8313622217955585836.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P16419779574124934599

`A002808(2*(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099862

/-- `A002808(2*(n+1))` -/
def P16419779574124934599.Spec : Prop :=
  ∀ n, P16419779574124934599.a n = A099862 (n + 1)

theorem P16419779574124934599.correct : P16419779574124934599.Spec := by
  intro n
  simp only [A099862, Nat.add_sub_cancel]

end A099862

/-! ## A099862.P18446519161912447472

`A141468(2*(n+2))`
-/

namespace A099862.P18446519161912447472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (2 * (n + 2))

end

end A099862.P18446519161912447472

namespace A099862

/-- `A141468(2*(n+2))` -/
def P18446519161912447472.Spec : Prop :=
  ∀ n, P18446519161912447472.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P201574978493501283

`A018252(2*n+3)`
-/

namespace A099862.P201574978493501283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * n + 3)

end

end A099862.P201574978493501283

namespace A099862

/-- `A018252(2*n+3)` -/
def P201574978493501283.Spec : Prop :=
  ∀ n, P201574978493501283.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P15088823087680601032

`record[A002808(xor(1, n)+1)]`
-/

namespace A099862.P15088823087680601032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099862.P15088823087680601032

namespace A099862

/-- `record[A002808(xor(1, n)+1)]` -/
def P15088823087680601032.Spec : Prop :=
  ∀ n, P15088823087680601032.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P5816057798651926203

`record[A018252(xor(1, n+2))]`
-/

namespace A099862.P5816057798651926203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.xor 1 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099862.P5816057798651926203

namespace A099862

/-- `record[A018252(xor(1, n+2))]` -/
def P5816057798651926203.Spec : Prop :=
  ∀ n, P5816057798651926203.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P12757327519917734925

`record[A018252(abs(2*n-3))]`
-/

namespace A099862.P12757327519917734925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 |(2 * n : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099862.P12757327519917734925

namespace A099862

/-- `record[A018252(abs(2*n-3))]` -/
def P12757327519917734925.Spec : Prop :=
  ∀ n, P12757327519917734925.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P15575299047111936438

`record[A018252(n+3)/(-1)^n]`
-/

namespace A099862.P15575299047111936438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 3) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099862.P15575299047111936438

namespace A099862

/-- `record[A018252(n+3)/(-1)^n]` -/
def P15575299047111936438.Spec : Prop :=
  ∀ n, P15575299047111936438.a n = (A099862 (n + 1) : ℚ)

end A099862

/-! ## A099862.P10368252549953956425

`A018252(n+3+n)%(n+3)²`
-/

namespace A099862.P10368252549953956425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 3 + n)) ((n + 3) ^ 2 : ℤ)

end

end A099862.P10368252549953956425

namespace A099862

/-- `A018252(n+3+n)%(n+3)²` -/
def P10368252549953956425.Spec : Prop :=
  ∀ n, P10368252549953956425.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P10688622986662480718

`record[A002808(2*A328399(n))]`
-/

namespace A099862.P10688622986662480718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099862.P10688622986662480718

namespace A099862

/-- `record[A002808(2*A328399(n))]` -/
def P10688622986662480718.Spec : Prop :=
  ∀ n, P10688622986662480718.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P4298040066672357160

`record[A002808(2*A344180(n))]`
-/

namespace A099862.P4298040066672357160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099862.P4298040066672357160

namespace A099862

/-- `record[A002808(2*A344180(n))]` -/
def P4298040066672357160.Spec : Prop :=
  ∀ n, P4298040066672357160.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P15929101706331456292

`filter[A377994(n+1), A066247(#)]`
-/

namespace A099862.P15929101706331456292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A099862.P15929101706331456292

namespace A099862

/-- `filter[A377994(n+1), A066247(#)]` -/
def P15929101706331456292.Spec : Prop :=
  ∀ n, P15929101706331456292.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P15204255425209589417

`filter[A377994(n+2), A005171(#)]`
-/

namespace A099862.P15204255425209589417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A099862.P15204255425209589417

namespace A099862

/-- `filter[A377994(n+2), A005171(#)]` -/
def P15204255425209589417.Spec : Prop :=
  ∀ n, P15204255425209589417.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P9878089184377362003

`∩[A002808(n+1), A377994(n+1)]`
-/

namespace A099862.P9878089184377362003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099862.P9878089184377362003

namespace A099862

/-- `∩[A002808(n+1), A377994(n+1)]` -/
def P9878089184377362003.Spec : Prop :=
  ∀ n, (P9878089184377362003.a n : ℤ) = A099862 (n + 1)

end A099862

/-! ## A099862.P5348880685403761827

`A222307(4*n+5)`
-/

namespace A099862.P5348880685403761827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (4 * n + 5)

end

end A099862.P5348880685403761827

namespace A099862

/-- `A222307(4*n+5)` -/
def P5348880685403761827.Spec : Prop :=
  ∀ n, P5348880685403761827.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P14409652343944629371

`∩[A377994(n+1), A387319(n+1)]`
-/

namespace A099862.P14409652343944629371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099862.P14409652343944629371

namespace A099862

/-- `∩[A377994(n+1), A387319(n+1)]` -/
def P14409652343944629371.Spec : Prop :=
  ∀ n, (P14409652343944629371.a n : ℤ) = A099862 (n + 1)

end A099862

/-! ## A099862.P14961516009150559660

`A056653(2*(n+1))`
-/

namespace A099862.P14961516009150559660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (2 * (n + 1))

end

end A099862.P14961516009150559660

namespace A099862

/-- `A056653(2*(n+1))` -/
def P14961516009150559660.Spec : Prop :=
  ∀ n, P14961516009150559660.a n = A099862 (n + 1)

end A099862

/-! ## A099862.P11801783602289572690

`A118742(Δ[n²])+1`
-/

namespace A099862.P11801783602289572690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099862.P11801783602289572690

namespace A099862

/-- `A118742(Δ[n²])+1` -/
def P11801783602289572690.Spec : Prop :=
  ∀ n, P11801783602289572690.a n = A099862 (n + 1)

end A099862

/-!
# A099863: A permutation of the odd primes that satisfy the condition that the sequence modulo 2^n has period 2^(n-1) for all n>0, where the least unused primes are chosen in the process.

The programs for A099863, there is no canonical definition to state claims against.
-/

/-! ## A099863.P2872652774250637192

`A000040(A099864(n+2))`
-/

namespace A099863.P2872652774250637192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099864 (n + 2)).toNat

end

end A099863.P2872652774250637192

/-! ## A099863.P15025323622332953238

`A008578(A099864(n+2)+1)`
-/

namespace A099863.P15025323622332953238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099864 (n + 2) + 1).toNat

end

end A099863.P15025323622332953238

/-! ## A099863.P777859193409244049

`A182986(A099864(n+2)+1)`
-/

namespace A099863.P777859193409244049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A099864 (n + 2) + 1).toNat

end

end A099863.P777859193409244049

/-! ## A099863.P17015547263163929505

`A065091(A099864(n+2)-1)`
-/

namespace A099863.P17015547263163929505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A099864 (n + 2) - 1).toNat

end

end A099863.P17015547263163929505

/-! ## A099863.P3674400752647707353

`A158611(A099864(n+2)+2)`
-/

namespace A099863.P3674400752647707353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A099864 (n + 2) + 2).toNat

end

end A099863.P3674400752647707353

/-! ## A099863.P5246496655276136914

`A073846(2*A099864(n+2))`
-/

namespace A099863.P5246496655276136914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A099864 (n + 2)).toNat

end

end A099863.P5246496655276136914

/-! ## A099863.P8774373885654493266

`A082500(2*A099864(n+2))`
-/

namespace A099863.P8774373885654493266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A099864 (n + 2)).toNat

end

end A099863.P8774373885654493266

/-! ## A099863.P5227906021266683587

`A207790(2*A099864(n+2))`
-/

namespace A099863.P5227906021266683587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A099864 (n + 2)).toNat

end

end A099863.P5227906021266683587

/-! ## A099863.P10341056494144882359

`A028815(A099864(n+2))-A007318(and(1, 1-n))`
-/

namespace A099863.P10341056494144882359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A099864 (n + 2)).toNat - A007318 (Int.land 1 (1 - (n : ℤ))).toNat

end

end A099863.P10341056494144882359

/-! ## A099863.P11613838964437207237

`A028815(A099864(n+2))-A000045(A020639(4*n+2))`
-/

namespace A099863.P11613838964437207237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A099864 (n + 2)).toNat - A000045 (A020639 (4 * n + 2)).toNat

end

end A099863.P11613838964437207237

/-!
# A099864: Indices of the primes used in A099863, which is a permutation of the odd primes that satisfies the condition that the sequence modulo 2^n has period 2^(n-1) for all n>0, where the least unused primes are chosen in the process.

The programs for A099864, there is no canonical definition to state claims against.
-/

/-! ## A099864.P15427931555524091737

`A000720(A099863(n+1))`
-/

namespace A099864.P15427931555524091737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A099863 (n + 1)).toNat

end

end A099864.P15427931555524091737

/-! ## A099864.P14733466527541418771

`A003963(2*A099863(n+1))`
-/

namespace A099864.P14733466527541418771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A099863 (n + 1)).toNat

end

end A099864.P14733466527541418771

/-! ## A099864.P1092718360637590504

`A061395(2*A099863(n+1))`
-/

namespace A099864.P1092718360637590504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A099863 (n + 1)).toNat

end

end A099864.P1092718360637590504

/-! ## A099864.P8352060262778574811

`A003963(lcm(2, A099863(n+1)))`
-/

namespace A099864.P8352060262778574811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A099863 (n + 1)))

end

end A099864.P8352060262778574811

/-! ## A099864.P1966626132106070555

`A003963(or(1, A099863(n+1)))`
-/

namespace A099864.P1966626132106070555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A099863 (n + 1))).toNat

end

end A099864.P1966626132106070555

/-!
# A099867: a(n) = 5*a(n-1) - a(n-2) for n>1, a(0)=1, a(1)=9.

The programs for A099867, the canonical program `A099867.P5274769622371494389` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099867 has offset 0).

The definition of A099867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A099867.P5274769622371494389`, by `A099867.P5274769622371494389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099867.P5274769622371494389

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099867

/-- `5*a(n-1)-a(n-2)` -/
def P5274769622371494389.Spec : Prop :=
  ∀ n, P5274769622371494389.a n = A099867 n

theorem P5274769622371494389.correct : P5274769622371494389.Spec := by
  intro n
  simp only [A099867]

end A099867

/-! ## A099867.P8337786250586457221

`A004254(n+1)+4*A004254(n)`
-/

namespace A099867.P8337786250586457221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1) + 4 * A004254 n

end

end A099867.P8337786250586457221

namespace A099867

/-- `A004254(n+1)+4*A004254(n)` -/
def P8337786250586457221.Spec : Prop :=
  ∀ n, P8337786250586457221.a n = A099867 n

end A099867

/-! ## A099867.P16352059364037771320

`ogf((1+4x)/(1-5x+x^2))`
-/

namespace A099867.P16352059364037771320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -5, 1] n

end

end A099867.P16352059364037771320

namespace A099867

/-- `ogf((1+4x)/(1-5x+x^2))` -/
def P16352059364037771320.Spec : Prop :=
  ∀ n, P16352059364037771320.a n = A099867 n

end A099867

/-! ## A099867.P11146611474691973115

`lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A099867.P11146611474691973115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A099867.P11146611474691973115

namespace A099867

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P11146611474691973115.Spec : Prop :=
  ∀ n, P11146611474691973115.a n = A099867 n

end A099867

/-! ## A099867.P6311317293871639529

`Δ[A107402(Δ[n²])]`
-/

namespace A099867.P6311317293871639529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107402 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099867.P6311317293871639529

namespace A099867

/-- `Δ[A107402(Δ[n²])]` -/
def P6311317293871639529.Spec : Prop :=
  ∀ n, P6311317293871639529.a n = A099867 n

end A099867

/-! ## A099867.P15649352242802578134

`Δ[A002320(n)]-A002310(n)`
-/

namespace A099867.P15649352242802578134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002310 n

end

end A099867.P15649352242802578134

namespace A099867

/-- `Δ[A002320(n)]-A002310(n)` -/
def P15649352242802578134.Spec : Prop :=
  ∀ n, P15649352242802578134.a n = A099867 n

end A099867

/-! ## A099867.P3409271043985458434

`A002320(n+1)-A003501(n)`
-/

namespace A099867.P3409271043985458434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 (n + 1) - A003501 n

end

end A099867.P3409271043985458434

namespace A099867

/-- `A002320(n+1)-A003501(n)` -/
def P3409271043985458434.Spec : Prop :=
  ∀ n, P3409271043985458434.a n = A099867 n

end A099867

/-! ## A099867.P10083971346670506424

`A055271(n)+2*A004254(n)`
-/

namespace A099867.P10083971346670506424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055271 n + 2 * A004254 n

end

end A099867.P10083971346670506424

namespace A099867

/-- `A055271(n)+2*A004254(n)` -/
def P10083971346670506424.Spec : Prop :=
  ∀ n, P10083971346670506424.a n = A099867 n

end A099867

/-! ## A099867.P9957350520925678193

`2*A030221(n)-A002320(n)`
-/

namespace A099867.P9957350520925678193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030221 n - A002320 n

end

end A099867.P9957350520925678193

namespace A099867

/-- `2*A030221(n)-A002320(n)` -/
def P9957350520925678193.Spec : Prop :=
  ∀ n, P9957350520925678193.a n = A099867 n

end A099867

/-! ## A099867.P4092017749490464840

`A002310(n)+7*A004254(n)`
-/

namespace A099867.P4092017749490464840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n + 7 * A004254 n

end

end A099867.P4092017749490464840

namespace A099867

/-- `A002310(n)+7*A004254(n)` -/
def P4092017749490464840.Spec : Prop :=
  ∀ n, P4092017749490464840.a n = A099867 n

end A099867

/-! ## A099867.P3988718955813168116

`Δ[A101368(n+1)+A002310(n)]`
-/

namespace A099867.P3988718955813168116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1) + A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099867.P3988718955813168116

namespace A099867

/-- `Δ[A101368(n+1)+A002310(n)]` -/
def P3988718955813168116.Spec : Prop :=
  ∀ n, P3988718955813168116.a n = A099867 n

end A099867

/-! ## A099867.P942962752926430715

`A237254(2*n+3)-A003501(n)`
-/

namespace A099867.P942962752926430715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 3) - A003501 n

end

end A099867.P942962752926430715

namespace A099867

/-- `A237254(2*n+3)-A003501(n)` -/
def P942962752926430715.Spec : Prop :=
  ∀ n, P942962752926430715.a n = A099867 n

end A099867

/-! ## A099867.P6370102977174937100

`Δ[A004253(n+1)]-2*A002320(n)`
-/

namespace A099867.P6370102977174937100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A002320 n

end

end A099867.P6370102977174937100

namespace A099867

/-- `Δ[A004253(n+1)]-2*A002320(n)` -/
def P6370102977174937100.Spec : Prop :=
  ∀ n, P6370102977174937100.a n = A099867 n

end A099867

/-! ## A099867.P14801464146677812773

`A107402(2*n+3)-A107402(2*n+1)`
-/

namespace A099867.P14801464146677812773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107402 (2 * n + 3) - A107402 (2 * n + 1)

end

end A099867.P14801464146677812773

namespace A099867

/-- `A107402(2*n+3)-A107402(2*n+1)` -/
def P14801464146677812773.Spec : Prop :=
  ∀ n, P14801464146677812773.a n = A099867 n

end A099867

/-! ## A099867.P8831362397300683949

`A136210(2*(n+1))-2*A237254(2*n+1)`
-/

namespace A099867.P8831362397300683949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (2 * (n + 1)) - 2 * A237254 (2 * n + 1)

end

end A099867.P8831362397300683949

namespace A099867

/-- `A136210(2*(n+1))-2*A237254(2*n+1)` -/
def P8831362397300683949.Spec : Prop :=
  ∀ n, P8831362397300683949.a n = A099867 n

end A099867

/-! ## A099867.P9099416105073967812

`Δ[A002320(n)]+A004254(n)-A002320(n)`
-/

namespace A099867.P9099416105073967812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A004254 n - A002320 n)

end

end A099867.P9099416105073967812

namespace A099867

/-- `Δ[A002320(n)]+A004254(n)-A002320(n)` -/
def P9099416105073967812.Spec : Prop :=
  ∀ n, P9099416105073967812.a n = A099867 n

end A099867

/-! ## A099867.P7005652360622458749

`A002320(n+1)-(A002320(n)+A002310(n))`
-/

namespace A099867.P7005652360622458749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 (n + 1) - (A002320 n + A002310 n)

end

end A099867.P7005652360622458749

namespace A099867

/-- `A002320(n+1)-(A002320(n)+A002310(n))` -/
def P7005652360622458749.Spec : Prop :=
  ∀ n, P7005652360622458749.a n = A099867 n

end A099867

/-! ## A099867.P4199724847031653653

`A164582(n+2)+A004254(n)-A003501(n)`
-/

namespace A099867.P4199724847031653653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164582 (n + 2) + (A004254 n - A003501 n)

end

end A099867.P4199724847031653653

namespace A099867

/-- `A164582(n+2)+A004254(n)-A003501(n)` -/
def P4199724847031653653.Spec : Prop :=
  ∀ n, P4199724847031653653.a n = A099867 n

end A099867

/-! ## A099867.P8168784057487824620

`A004253(n+2)-(A004254(n+1)+A003501(n))`
-/

namespace A099867.P8168784057487824620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - (A004254 (n + 1) + A003501 n)

end

end A099867.P8168784057487824620

namespace A099867

/-- `A004253(n+2)-(A004254(n+1)+A003501(n))` -/
def P8168784057487824620.Spec : Prop :=
  ∀ n, P8168784057487824620.a n = A099867 n

end A099867

/-! ## A099867.P16626754864882164759

`A164582(n+2)-(A164582(n+1)+A004254(n))`
-/

namespace A099867.P16626754864882164759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164582 (n + 2) - (A164582 (n + 1) + A004254 n)

end

end A099867.P16626754864882164759

namespace A099867

/-- `A164582(n+2)-(A164582(n+1)+A004254(n))` -/
def P16626754864882164759.Spec : Prop :=
  ∀ n, P16626754864882164759.a n = A099867 n

end A099867

/-!
# A099868: a(n) = 5*a(n-1) - a(n-2), a(0) = 3, a(1) = 25.

The programs for A099868, the canonical program `A099868.P7061997465988655626` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099868 has offset 0).

The definition of A099868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A099868.P7061997465988655626`, by `A099868.P7061997465988655626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099868.P7061997465988655626

`5*a(n-1)-a(n-2)` with `a(0)=3, a(1)=25`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099868

/-- `5*a(n-1)-a(n-2)` -/
def P7061997465988655626.Spec : Prop :=
  ∀ n, P7061997465988655626.a n = A099868 n

theorem P7061997465988655626.correct : P7061997465988655626.Spec := by
  intro n
  simp only [A099868]

end A099868

/-! ## A099868.P15228554634143899701

`ogf((3+10x)/(1-5x+x^2))`
-/

namespace A099868.P15228554634143899701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 10] [1, -5, 1] n

end

end A099868.P15228554634143899701

namespace A099868

/-- `ogf((3+10x)/(1-5x+x^2))` -/
def P15228554634143899701.Spec : Prop :=
  ∀ n, P15228554634143899701.a n = A099868 n

end A099868

/-! ## A099868.P12934811655927568762

`A054477(n)+2*A030221(n)`
-/

namespace A099868.P12934811655927568762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054477 n + 2 * A030221 n

end

end A099868.P12934811655927568762

namespace A099868

/-- `A054477(n)+2*A030221(n)` -/
def P12934811655927568762.Spec : Prop :=
  ∀ n, P12934811655927568762.a n = A099868 n

end A099868

/-! ## A099868.P7644230996940576486

`4*A055271(n)-A002320(n)`
-/

namespace A099868.P7644230996940576486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055271 n - A002320 n

end

end A099868.P7644230996940576486

namespace A099868

/-- `4*A055271(n)-A002320(n)` -/
def P7644230996940576486.Spec : Prop :=
  ∀ n, P7644230996940576486.a n = A099868 n

end A099868

/-! ## A099868.P12419615335224373574

`5*A030221(n)-A003501(n)`
-/

namespace A099868.P12419615335224373574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A030221 n - A003501 n

end

end A099868.P12419615335224373574

namespace A099868

/-- `5*A030221(n)-A003501(n)` -/
def P12419615335224373574.Spec : Prop :=
  ∀ n, P12419615335224373574.a n = A099868 n

end A099868

/-! ## A099868.P14742570078839975959

`A237254(2*(n+2))-6*A237254(2*n+1)`
-/

namespace A099868.P14742570078839975959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * (n + 2)) - 6 * A237254 (2 * n + 1)

end

end A099868.P14742570078839975959

namespace A099868

/-- `A237254(2*(n+2))-6*A237254(2*n+1)` -/
def P14742570078839975959.Spec : Prop :=
  ∀ n, P14742570078839975959.a n = A099868 n

end A099868

/-! ## A099868.P10934746017069646552

`A002320(n+1)+A054477(n)-A002310(n)`
-/

namespace A099868.P10934746017069646552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 (n + 1) + (A054477 n - A002310 n)

end

end A099868.P10934746017069646552

namespace A099868

/-- `A002320(n+1)+A054477(n)-A002310(n)` -/
def P10934746017069646552.Spec : Prop :=
  ∀ n, P10934746017069646552.a n = A099868 n

end A099868

/-! ## A099868.P1074324892018765519

`A237254(2*n+7)%(A237255(2*n+1)+A237254(2*n+5))`
-/

namespace A099868.P1074324892018765519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237254 (2 * n + 7)) (A237255 (2 * n + 1) + A237254 (2 * n + 5))

end

end A099868.P1074324892018765519

namespace A099868

/-- `A237254(2*n+7)%(A237255(2*n+1)+A237254(2*n+5))` -/
def P1074324892018765519.Spec : Prop :=
  ∀ n, P1074324892018765519.a n = A099868 n

end A099868

/-!
# A099869: Bisection of A014137.

The programs for A099869, there is no canonical definition to state claims against.
-/

/-! ## A099869.P4872530927407228792

`A014137(2*n)`
-/

namespace A099869.P4872530927407228792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (2 * n)

end

end A099869.P4872530927407228792

/-! ## A099869.P14554056959614332508

`A110199(4*n)`
-/

namespace A099869.P14554056959614332508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (4 * n)

end

end A099869.P14554056959614332508

/-! ## A099869.P3664648582736685444

`∑[A071716(2*n)]`
-/

namespace A099869.P3664648582736685444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099869.P3664648582736685444

/-! ## A099869.P4515620553313131791

`∑[A133603(2*n)]`
-/

namespace A099869.P4515620553313131791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133603 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099869.P4515620553313131791

/-! ## A099869.P17505408064469819091

`∑[A167422(2*n)]`
-/

namespace A099869.P17505408064469819091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099869.P17505408064469819091

/-! ## A099869.P1040802455697291881

`A014138(2*n)+1`
-/

namespace A099869.P1040802455697291881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (2 * n) + 1

end

end A099869.P1040802455697291881

/-! ## A099869.P11840594202712295991

`2-A106271(2*n)`
-/

namespace A099869.P11840594202712295991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106271 (2 * n)

end

end A099869.P11840594202712295991

/-! ## A099869.P17090357488153707671

`A099324(Δ[n²])+1`
-/

namespace A099869.P17090357488153707671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099869.P17090357488153707671

/-! ## A099869.P13997594294226766901

`A155587(Δ[n²])-1`
-/

namespace A099869.P13997594294226766901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099869.P13997594294226766901

/-! ## A099869.P824024952545120518

`A159972(Δ[n²])+2`
-/

namespace A099869.P824024952545120518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A099869.P824024952545120518

/-!
# A099875: Continued fraction expansion of nested cube root expression in A099874.

The programs for A099875, there is no canonical definition to state claims against.
-/

/-! ## A099875.P11272939133928674398

`A007895(Δ[A308262(n+1)]²)`
-/

namespace A099875.P11272939133928674398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A099875.P11272939133928674398

/-! ## A099875.P10684990324614077503

`A070352(n*A132372(2*(n+1)))`
-/

namespace A099875.P10684990324614077503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 ((n : ℤ) * A132372 (2 * (n + 1))).toNat

end

end A099875.P10684990324614077503

/-! ## A099875.P1092798602111183454

`A043558(A213541(n)*A297569(n+1))`
-/

namespace A099875.P1092798602111183454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A213541 n * A297569 (n + 1)).toNat

end

end A099875.P1092798602111183454

/-!
# A099880: Number of preferential arrangements (or simple hierarchies) of 2*n labeled elements with two kinds of elements (where each kind has n elements).

The programs for A099880, there is no canonical definition to state claims against.
-/

/-! ## A099880.P11870155020068176473

`C(2*n, n)*A000670(n)`
-/

namespace A099880.P11870155020068176473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000670 n

end

end A099880.P11870155020068176473

/-! ## A099880.P12111635424856869503

`A000670(n)*A000984(n)`
-/

namespace A099880.P12111635424856869503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A000984 n

end

end A099880.P12111635424856869503

/-! ## A099880.P8430472731329231083

`A000629(n)*A088218(n)`
-/

namespace A099880.P8430472731329231083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n * A088218 n

end

end A099880.P8430472731329231083

/-! ## A099880.P8227387395980444491

`A000984(n)*A122101(∑[n])`
-/

namespace A099880.P8227387395980444491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099880.P8227387395980444491

/-! ## A099880.P9606745024853934139

`∑[A162509(n)]*A088218(n)`
-/

namespace A099880.P9606745024853934139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A088218 n

end

end A099880.P9606745024853934139

/-! ## A099880.P17915948325414986674

`record[A126869(n)]*A000670(n)`
-/

namespace A099880.P17915948325414986674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000670 n

end

end A099880.P17915948325414986674

/-! ## A099880.P1177066087992885636

`A000108(n)*A052882(n+1)`
-/

namespace A099880.P1177066087992885636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A052882 (n + 1)

end

end A099880.P1177066087992885636

/-! ## A099880.P8141755360588940540

`A000670(n)*A126869(2*n)`
-/

namespace A099880.P8141755360588940540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A126869 (2 * n)

end

end A099880.P8141755360588940540

/-! ## A099880.P11704068393276595379

`(n+1)*A000108(n)*A000670(n)`
-/

namespace A099880.P11704068393276595379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A000670 n

end

end A099880.P11704068393276595379

/-! ## A099880.P11250816537313752487

`(n+1)*A000108(n)*ceil(A000629(n)/2)`
-/

namespace A099880.P11250816537313752487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * ⌈(A000629 n : ℚ) / 2⌉

end

end A099880.P11250816537313752487

/-!
# A099881: Number of pairs of n-node simple graphs that are isospectral (excluding triples, etc.).

The programs for A099881, there is no canonical definition to state claims against.
-/

/-! ## A099881.P10010114026821958892

`∑[A370806(A001405(n))]`
-/

namespace A099881.P10010114026821958892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370806 (A001405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099881.P10010114026821958892

/-! ## A099881.P280626975100917958

`and(A029977(A000142(n)), A076281(n+1))`
-/

namespace A099881.P280626975100917958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029977 (A000142 n).toNat) (A076281 (n + 1))

end

end A099881.P280626975100917958

/-! ## A099881.P11543746433199575373

`and(A057235(A083318(n)), A076281(n+1))`
-/

namespace A099881.P11543746433199575373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057235 (A083318 n).toNat) (A076281 (n + 1))

end

end A099881.P11543746433199575373

/-! ## A099881.P1464235601683709665

`and(A004273(A076315(n+1)), A076281(n+1))`
-/

namespace A099881.P1464235601683709665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A076315 (n + 1)).toNat) (A076281 (n + 1))

end

end A099881.P1464235601683709665

/-!
# A099882: Number of triples of n-node simple graphs that are isospectral (excluding quadruples, etc.).

The programs for A099882, there is no canonical definition to state claims against.
-/

/-! ## A099882.P1840904755324803763

`A000203(A002709(n))%A006228(n)`
-/

namespace A099882.P1840904755324803763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A002709 n).toNat) (A006228 n)

end

end A099882.P1840904755324803763

/-!
# A099884: XOR difference triangle of the powers of 2, read by rows; Square array A(row,col): A(0,col) = 2^col, A(row,col) = A048724(A(row-1, col)) for row > 0, read by descending antidiagonals.

The programs for A099884, the canonical program `A099884.P15567766785827251283` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099884 has offset 0).

The definition of A099884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099884.P15567766785827251283

`2^(row(n)-col(n))*A001317(col(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099884

/-- `2^(row(n)-col(n))*A001317(col(n))` -/
def P15567766785827251283.Spec : Prop :=
  ∀ n, P15567766785827251283.a n = (A099884 n : ℚ)

end A099884

/-! ## A099884.P5213760924720862821

`A091202(A036561(n))`
-/

namespace A099884.P5213760924720862821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A036561 n).toNat

end

end A099884.P5213760924720862821

namespace A099884

/-- `A091202(A036561(n))` -/
def P5213760924720862821.Spec : Prop :=
  ∀ n, P5213760924720862821.a n = A099884 n

end A099884

/-! ## A099884.P17076813942457510357

`A276618(A061579(n))`
-/

namespace A099884.P17076813942457510357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A061579 n).toNat

end

end A099884.P17076813942457510357

namespace A099884

/-- `A276618(A061579(n))` -/
def P17076813942457510357.Spec : Prop :=
  ∀ n, P17076813942457510357.a n = A099884 n

end A099884

/-! ## A099884.P1801465934503211820

`A276618(A002024(n+1)²-(n+1))`
-/

namespace A099884.P1801465934503211820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A099884.P1801465934503211820

namespace A099884

/-- `A276618(A002024(n+1)²-(n+1))` -/
def P1801465934503211820.Spec : Prop :=
  ∀ n, P1801465934503211820.a n = A099884 n

end A099884

/-! ## A099884.P3892305011309293421

`A276618(A025581(n)+n-A002262(n))`
-/

namespace A099884.P3892305011309293421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A099884.P3892305011309293421

namespace A099884

/-- `A276618(A025581(n)+n-A002262(n))` -/
def P3892305011309293421.Spec : Prop :=
  ∀ n, P3892305011309293421.a n = A099884 n

end A099884

/-! ## A099884.P9465373924689083058

`A276618(n-(A002262(n)-A025581(n)))`
-/

namespace A099884.P9465373924689083058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A099884.P9465373924689083058

namespace A099884

/-- `A276618(n-(A002262(n)-A025581(n)))` -/
def P9465373924689083058.Spec : Prop :=
  ∀ n, P9465373924689083058.a n = A099884 n

end A099884

/-! ## A099884.P16248993800801569368

`A276618(A025581(n)+n+1-A002260(n+1))`
-/

namespace A099884.P16248993800801569368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A025581 n + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A099884.P16248993800801569368

namespace A099884

/-- `A276618(A025581(n)+n+1-A002260(n+1))` -/
def P16248993800801569368.Spec : Prop :=
  ∀ n, P16248993800801569368.a n = A099884 n

end A099884

/-! ## A099884.P5737068452469572838

`A276618(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A099884.P5737068452469572838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A099884.P5737068452469572838

namespace A099884

/-- `A276618(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P5737068452469572838.Spec : Prop :=
  ∀ n, P5737068452469572838.a n = A099884 n

end A099884

/-! ## A099884.P18430638238726270389

`A305417(A089633(n))`
-/

namespace A099884.P18430638238726270389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (A089633 n).toNat

end

end A099884.P18430638238726270389

namespace A099884

/-- `A305417(A089633(n))` -/
def P18430638238726270389.Spec : Prop :=
  ∀ n, P18430638238726270389.a n = A099884 n

end A099884

/-! ## A099884.P4026106637696482059

`filter[A059893(n+1), A336477(#)]`
-/

namespace A099884.P4026106637696482059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A099884.P4026106637696482059

namespace A099884

/-- `filter[A059893(n+1), A336477(#)]` -/
def P4026106637696482059.Spec : Prop :=
  ∀ n, P4026106637696482059.a n = A099884 n

end A099884

/-! ## A099884.P6359633055366116652

`filter[A139708(n+1), A336477(#)]`
-/

namespace A099884.P6359633055366116652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A099884.P6359633055366116652

namespace A099884

/-- `filter[A139708(n+1), A336477(#)]` -/
def P6359633055366116652.Spec : Prop :=
  ∀ n, P6359633055366116652.a n = A099884 n

end A099884

/-!
# A099885: Central terms of the rows of the XOR difference triangle of the powers of 2 (A099884) so that a(n) = A099884(n, floor(n/2)).

The programs for A099885, the canonical program `A099885.P5795883260777038836` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099885 has offset 0).

The definition of A099885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099885.P5795883260777038836

`2^floor((n+1)/2)*A001317(floor(n/2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099885

/-- `2^floor((n+1)/2)*A001317(floor(n/2))` -/
def P5795883260777038836.Spec : Prop :=
  ∀ n, P5795883260777038836.a n = (A099885 n : ℚ)

end A099885

/-! ## A099885.P2090688416391475508

`2*xor(2*a(n-2), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A099885.P2090688416391475508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Nat.xor (2 * a (n - 2)) (a (n - 2))

end

end A099885.P2090688416391475508

namespace A099885

/-- `2*xor(2*a(n-2), a(n-2))` -/
def P2090688416391475508.Spec : Prop :=
  ∀ n, (P2090688416391475508.a n : ℤ) = A099885 n

end A099885

/-! ## A099885.P1880635172945840735

`2*(2*or(a(n-1), a(n-2))-3*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A099885.P1880635172945840735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * Int.lor (a (n - 1)) (a (n - 2)) - 3 * a (n - 2))

end

end A099885.P1880635172945840735

namespace A099885

/-- `2*(2*or(a(n-1), a(n-2))-3*a(n-2))` -/
def P1880635172945840735.Spec : Prop :=
  ∀ n, P1880635172945840735.a n = A099885 n

end A099885

/-! ## A099885.P4985014786406148551

`a(n-1)/(xor(a(n-1), a(n-2))/a(n-2))^-1` with `a(0)=1, a(1)=2`
-/

namespace A099885.P4985014786406148551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((Int.xor (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) / a (n - 2)) ^ (-1 : ℤ)

end

end A099885.P4985014786406148551

namespace A099885

/-- `a(n-1)/(xor(a(n-1), a(n-2))/a(n-2))^-1` -/
def P4985014786406148551.Spec : Prop :=
  ∀ n, P4985014786406148551.a n = (A099885 n : ℚ)

end A099885

/-! ## A099885.P10854708327561545843

`2*(2*(a(n-1)-and(a(n-1), a(n-2)))-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A099885.P10854708327561545843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * (a (n - 1) - Int.land (a (n - 1)) (a (n - 2))) - a (n - 2))

end

end A099885.P10854708327561545843

namespace A099885

/-- `2*(2*(a(n-1)-and(a(n-1), a(n-2)))-a(n-2))` -/
def P10854708327561545843.Spec : Prop :=
  ∀ n, P10854708327561545843.a n = A099885 n

end A099885

/-!
# A099886: XOR binomial transform of A099885.

The programs for A099886, there is no canonical definition to state claims against.
-/

/-! ## A099886.P14296953017032239088

`xor(2*a(n-1), a(n-gcd(2, n)))` with `a(0)=1`
-/

namespace A099886.P14296953017032239088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (a (n - Nat.gcd 2 n))

end

end A099886.P14296953017032239088

/-! ## A099886.P14370957093643081280

`A048727(a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A099886.P14370957093643081280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A048727 (a (n - 2)).toNat

end

end A099886.P14370957093643081280

/-! ## A099886.P1984795119266529549

`A099896(4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A099886.P1984795119266529549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A099896 (4 * a (n - 2)).toNat

end

end A099886.P1984795119266529549

/-! ## A099886.P5345772709981556913

`A091202(A056487(n))`
-/

namespace A099886.P5345772709981556913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A056487 n).toNat

end

end A099886.P5345772709981556913

/-!
# A099888: XOR BINOMIAL transform of the powers of 3.

The programs for A099888, there is no canonical definition to state claims against.
-/

/-! ## A099888.P16348099174218742200

`A099887(∑[n]+n)`
-/

namespace A099888.P16348099174218742200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099887 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A099888.P16348099174218742200

/-! ## A099888.P6468291930131714214

`record[char[∑[n-1]]*A099887(n)]`
-/

namespace A099888.P6468291930131714214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A099887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099888.P6468291930131714214

/-! ## A099888.P12796538820169745282

`A099887(A000096(n))+char[9]`
-/

namespace A099888.P12796538820169745282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099887 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099888.P12796538820169745282

/-! ## A099888.P14504019239343656082

`record[A099887(n)/A027465(n)]`
-/

namespace A099888.P14504019239343656082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099887 n : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099888.P14504019239343656082

/-! ## A099888.P16083992530334585403

`record[A099887(n)/A027466(n)]`
-/

namespace A099888.P16083992530334585403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099887 n : ℚ) / (A027466 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099888.P16083992530334585403

/-!
# A099889: XOR difference triangle of the odd numbers, read by rows.

The programs for A099889, there is no canonical definition to state claims against.
-/

/-! ## A099889.P12724543478342436271

`A135764(n+1)%A016875(A238920(n))`
-/

namespace A099889.P12724543478342436271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135764 (n + 1)) (A016875 (A238920 n).toNat)

end

end A099889.P12724543478342436271

/-! ## A099889.P15214661305219378935

`A253551(n+1)%A016875(A238920(n))`
-/

namespace A099889.P15214661305219378935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253551 (n + 1)) (A016875 (A238920 n).toNat)

end

end A099889.P15214661305219378935

/-! ## A099889.P13803348168383940653

`A265895(n+1)%A016875(A238920(n))`
-/

namespace A099889.P13803348168383940653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265895 (n + 1)) (A016875 (A238920 n).toNat)

end

end A099889.P13803348168383940653

/-! ## A099889.P17042893211953624750

`and(A127347(A133221(n)), A135764(n+1))`
-/

namespace A099889.P17042893211953624750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127347 (A133221 n).toNat) (A135764 (n + 1))

end

end A099889.P17042893211953624750

/-! ## A099889.P4297821306042870071

`and(A135764(n+1), A174454(A309864(n)))`
-/

namespace A099889.P4297821306042870071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135764 (n + 1)) (A174454 (A309864 n).toNat)

end

end A099889.P4297821306042870071

/-!
# A099890: XOR BINOMIAL transform of the odd numbers; also the main diagonal of the XOR difference triangle A099889.

The programs for A099890, the canonical program `A099890.P6525210573475105064` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099890 has offset 0).

The definition of A099890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099890.P6525210573475105064

`Δ[2*a(ceil(n/2))]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099890

/-- `Δ[2*a(ceil(n/2))]` -/
def P6525210573475105064.Spec : Prop :=
  ∀ n, P6525210573475105064.a n = A099890 n

theorem P6525210573475105064.correct : P6525210573475105064.Spec := by
  intro n
  simp only [A099890]

end A099890

/-! ## A099890.P12721687526390163112

`∏{p}[2*n, n*val(#², 2)]`
-/

namespace A099890.P12721687526390163112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), n * SequenceMachineLib.valuation (p ^ 2) 2

end

end A099890.P12721687526390163112

namespace A099890

/-- `∏{p}[2*n, n*val(#², 2)]` -/
def P12721687526390163112.Spec : Prop :=
  ∀ n, (P12721687526390163112.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P9473481509548762092

`∏{p}[2*n, 2*n*C(2, #)]`
-/

namespace A099890.P9473481509548762092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * n * Nat.choose 2 p

end

end A099890.P9473481509548762092

namespace A099890

/-- `∏{p}[2*n, 2*n*C(2, #)]` -/
def P9473481509548762092.Spec : Prop :=
  ∀ n, (P9473481509548762092.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P10891961784426265357

`(∑{d}[n, #]+1)*∏{p}[n, val(#, 2)]`
-/

namespace A099890.P10891961784426265357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d + 1) * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

end

end A099890.P10891961784426265357

namespace A099890

/-- `(∑{d}[n, #]+1)*∏{p}[n, val(#, 2)]` -/
def P10891961784426265357.Spec : Prop :=
  ∀ n, (P10891961784426265357.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P17735073653743073139

`2*n%(a(floor(n/2))+1)` with `a(0)=1`
-/

namespace A099890.P17735073653743073139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n % (a ⌊(n : ℚ) / 2⌋.toNat + 1))

end

end A099890.P17735073653743073139

namespace A099890

/-- `2*n%(a(floor(n/2))+1)` -/
def P17735073653743073139.Spec : Prop :=
  ∀ n, (P17735073653743073139.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P10269289580862845573

`∏{p}[2*n, 2*n*floor(2/#)]`
-/

namespace A099890.P10269289580862845573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 * n : ℤ) * ⌊2 / (p : ℚ)⌋

end

end A099890.P10269289580862845573

namespace A099890

/-- `∏{p}[2*n, 2*n*floor(2/#)]` -/
def P10269289580862845573.Spec : Prop :=
  ∀ n, P10269289580862845573.a n = A099890 n

end A099890

/-! ## A099890.P14982630975350908300

`∏{e}[2*n, floor(4^#/(2*n))]`
-/

namespace A099890.P14982630975350908300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊(4 ^ Nat.factorization (f1 n) p : ℚ) / (2 * n : ℚ)⌋

end

end A099890.P14982630975350908300

namespace A099890

/-- `∏{e}[2*n, floor(4^#/(2*n))]` -/
def P14982630975350908300.Spec : Prop :=
  ∀ n, P14982630975350908300.a n = A099890 n

end A099890

/-! ## A099890.P8399585331087805941

`round(∏{e}[2*n, 4^#/(2*n)])`
-/

namespace A099890.P8399585331087805941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (4 ^ Nat.factorization (f1 n) p : ℚ) / (2 * n : ℚ))

end

end A099890.P8399585331087805941

namespace A099890

/-- `round(∏{e}[2*n, 4^#/(2*n)])` -/
def P8399585331087805941.Spec : Prop :=
  ∀ n, P8399585331087805941.a n = A099890 n

end A099890

/-! ## A099890.P9623740026989935279

`2*n*and(1, a(and(n, n-1)))` with `a(0)=1`
-/

namespace A099890.P9623740026989935279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * Nat.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A099890.P9623740026989935279

namespace A099890

/-- `2*n*and(1, a(and(n, n-1)))` -/
def P9623740026989935279.Spec : Prop :=
  ∀ n, (P9623740026989935279.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P2193708800516390661

`2*n*floor(a(floor(n/2))/n)` with `a(0)=1`
-/

namespace A099890.P2193708800516390661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * ⌊(a ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n : ℚ)⌋)

end

end A099890.P2193708800516390661

namespace A099890

/-- `2*n*floor(a(floor(n/2))/n)` -/
def P2193708800516390661.Spec : Prop :=
  ∀ n, P2193708800516390661.a n = A099890 n

end A099890

/-! ## A099890.P10792948662061144587

`C(2*n, ∑{p}[2*n, 2*n+1-#])`
-/

namespace A099890.P10792948662061144587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (∑ p ∈ Nat.primeFactors (f1 n), ((2 * n + 1 : ℤ) - (p : ℤ))).toNat

end

end A099890.P10792948662061144587

namespace A099890

/-- `C(2*n, ∑{p}[2*n, 2*n+1-#])` -/
def P10792948662061144587.Spec : Prop :=
  ∀ n, (P10792948662061144587.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P3743709698433856321

`(1+(-1)^n)*a((2*n+1-(-1)^n)/4)` with `a(0)=1, a(1)=2`
-/

namespace A099890.P3743709698433856321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 + (-1) ^ n) * a (SequenceMachineLib.roundAway (((2 * n : ℤ) + (1 - (-1) ^ n) : ℚ) / 4)).toNat

end

end A099890.P3743709698433856321

namespace A099890

/-- `(1+(-1)^n)*a((2*n+1-(-1)^n)/4)` -/
def P3743709698433856321.Spec : Prop :=
  ∀ n, P3743709698433856321.a n = A099890 n

end A099890

/-! ## A099890.P16456291732996110549

`A063972(Δ[n²])`
-/

namespace A099890.P16456291732996110549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099890.P16456291732996110549

namespace A099890

/-- `A063972(Δ[n²])` -/
def P16456291732996110549.Spec : Prop :=
  ∀ n, P16456291732996110549.a n = A099890 n

end A099890

/-! ## A099890.P5577732790472246467

`A063973(Δ[n²])`
-/

namespace A099890.P5577732790472246467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099890.P5577732790472246467

namespace A099890

/-- `A063973(Δ[n²])` -/
def P5577732790472246467.Spec : Prop :=
  ∀ n, P5577732790472246467.a n = A099890 n

end A099890

/-! ## A099890.P3312218967017440140

`∏{d}[2*n, A069517(#)]`
-/

namespace A099890.P3312218967017440140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A069517 d

end

end A099890.P3312218967017440140

namespace A099890

/-- `∏{d}[2*n, A069517(#)]` -/
def P3312218967017440140.Spec : Prop :=
  ∀ n, P3312218967017440140.a n = A099890 n

end A099890

/-! ## A099890.P9842758726187561807

`∏{d}[2*n, A159981(#)]`
-/

namespace A099890.P9842758726187561807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A159981 d

end

end A099890.P9842758726187561807

namespace A099890

/-- `∏{d}[2*n, A159981(#)]` -/
def P9842758726187561807.Spec : Prop :=
  ∀ n, P9842758726187561807.a n = A099890 n

end A099890

/-! ## A099890.P2799021860263620804

`∏{d}[2*n, A346773(#)]`
-/

namespace A099890.P2799021860263620804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A346773 d

end

end A099890.P2799021860263620804

namespace A099890

/-- `∏{d}[2*n, A346773(#)]` -/
def P2799021860263620804.Spec : Prop :=
  ∀ n, P2799021860263620804.a n = A099890 n

end A099890

/-! ## A099890.P6878030276747200421

`and(2*n+1, A029930(n))`
-/

namespace A099890.P6878030276747200421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A029930 n)

end

end A099890.P6878030276747200421

namespace A099890

/-- `and(2*n+1, A029930(n))` -/
def P6878030276747200421.Spec : Prop :=
  ∀ n, P6878030276747200421.a n = A099890 n

end A099890

/-! ## A099890.P8672759475790982335

`C(2*n, A079073(2*n))`
-/

namespace A099890.P8672759475790982335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A079073 (2 * n)).toNat

end

end A099890.P8672759475790982335

namespace A099890

/-- `C(2*n, A079073(2*n))` -/
def P8672759475790982335.Spec : Prop :=
  ∀ n, (P8672759475790982335.a n : ℤ) = A099890 n

end A099890

/-! ## A099890.P7840699267923555904

`C(2*n, A342643(2*n))`
-/

namespace A099890.P7840699267923555904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A342643 (2 * n)).toNat

end

end A099890.P7840699267923555904

namespace A099890

/-- `C(2*n, A342643(2*n))` -/
def P7840699267923555904.Spec : Prop :=
  ∀ n, (P7840699267923555904.a n : ℤ) = A099890 n

end A099890

/-!
# A099891: XOR difference triangle of A003188 (Gray code numbers), read by rows.

The programs for A099891, there is no canonical definition to state claims against.
-/

/-! ## A099891.P15993673214777271824

`A003188(floor(A099889(n)/2))`
-/

namespace A099891.P15993673214777271824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ⌊(A099889 n : ℚ) / 2⌋.toNat

end

end A099891.P15993673214777271824

/-! ## A099891.P15158280733955196387

`A038548(∑[A018100(n)])%A130065(n+1)`
-/

namespace A099891.P15158280733955196387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038548 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A130065 (n + 1))

end

end A099891.P15158280733955196387

/-!
# A099892: XOR BINOMIAL transform of A003188 (Gray code numbers); also the main diagonal of the XOR difference triangle A099891.

The programs for A099892, the canonical program `A099892.P14170613631558515283` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099892 has offset 0).

The definition of A099892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099892.P17680920746889408452

`∑[n%4]*char[2^n]`
-/

namespace A099892.P17680920746889408452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = n then 1 else 0)

end

end A099892.P17680920746889408452

namespace A099892

/-- `∑[n%4]*char[2^n]` -/
def P17680920746889408452.Spec : Prop :=
  ∀ n, (P17680920746889408452.a n : ℤ) = A099892 n

end A099892

/-! ## A099892.P12029430029586547836

`∑[and(3, n)]*char[2^n]`
-/

namespace A099892.P12029430029586547836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = n then 1 else 0)

end

end A099892.P12029430029586547836

namespace A099892

/-- `∑[and(3, n)]*char[2^n]` -/
def P12029430029586547836.Spec : Prop :=
  ∀ n, (P12029430029586547836.a n : ℤ) = A099892 n

end A099892

/-! ## A099892.P14170613631558515283

`2*a(∑[n]%n)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099892

/-- `2*a(∑[n]%n)` -/
def P14170613631558515283.Spec : Prop :=
  ∀ n, (P14170613631558515283.a n : ℤ) = A099892 n

theorem P14170613631558515283.correct : P14170613631558515283.Spec := by
  intro n
  simp only [A099892]

end A099892

/-! ## A099892.P13395192146157775001

`C(2, ∑{p}[n, #])*∑[and(3, n)]`
-/

namespace A099892.P13395192146157775001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A099892.P13395192146157775001

namespace A099892

/-- `C(2, ∑{p}[n, #])*∑[and(3, n)]` -/
def P13395192146157775001.Spec : Prop :=
  ∀ n, (P13395192146157775001.a n : ℤ) = A099892 n

end A099892

/-! ## A099892.P17333183549065983039

`floor(3*n*char[2^n]/2)`
-/

namespace A099892.P17333183549065983039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℚ) / 2)⌋

end

end A099892.P17333183549065983039

namespace A099892

/-- `floor(3*n*char[2^n]/2)` -/
def P17333183549065983039.Spec : Prop :=
  ∀ n, P17333183549065983039.a n = A099892 n

end A099892

/-! ## A099892.P14124865003814132564

`and(-char[2^n], xor(n, floor(n/2)))`
-/

namespace A099892.P14124865003814132564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A099892.P14124865003814132564

namespace A099892

/-- `and(-char[2^n], xor(n, floor(n/2)))` -/
def P14124865003814132564.Spec : Prop :=
  ∀ n, P14124865003814132564.a n = A099892 n

end A099892

/-! ## A099892.P8578353515126337201

`∑[∑{d}[n, round(1/#)]]*char[2^n]`
-/

namespace A099892.P8578353515126337201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099892.P8578353515126337201

namespace A099892

/-- `∑[∑{d}[n, round(1/#)]]*char[2^n]` -/
def P8578353515126337201.Spec : Prop :=
  ∀ n, P8578353515126337201.a n = A099892 n

end A099892

/-! ## A099892.P10715651856553775373

`xor(n, ∑[char[2*(n+1)]])*char[2^n]`
-/

namespace A099892.P10715651856553775373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f3 j = n then 1 else 0)

end

end A099892.P10715651856553775373

namespace A099892

/-- `xor(n, ∑[char[2*(n+1)]])*char[2^n]` -/
def P10715651856553775373.Spec : Prop :=
  ∀ n, (P10715651856553775373.a n : ℤ) = A099892 n

end A099892

/-! ## A099892.P6760236504503255563

`ceil((xor(n, 2*n)-1)*char[2^n]/2)`
-/

namespace A099892.P6760236504503255563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((Nat.xor n (2 * n) : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / 2⌉

end

end A099892.P6760236504503255563

namespace A099892

/-- `ceil((xor(n, 2*n)-1)*char[2^n]/2)` -/
def P6760236504503255563.Spec : Prop :=
  ∀ n, P6760236504503255563.a n = A099892 n

end A099892

/-! ## A099892.P5010708748301446208

`char[2^n]*A006368(n)`
-/

namespace A099892.P5010708748301446208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A006368 n

end

end A099892.P5010708748301446208

namespace A099892

/-- `char[2^n]*A006368(n)` -/
def P5010708748301446208.Spec : Prop :=
  ∀ n, P5010708748301446208.a n = A099892 n

end A099892

/-! ## A099892.P16781896010076115448

`char[2^n]*A032766(n)`
-/

namespace A099892.P16781896010076115448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A032766 n

end

end A099892.P16781896010076115448

namespace A099892

/-- `char[2^n]*A032766(n)` -/
def P16781896010076115448.Spec : Prop :=
  ∀ n, P16781896010076115448.a n = A099892 n

end A099892

/-! ## A099892.P13100060243547474971

`(2*n-A110654(n))*char[2^n]`
-/

namespace A099892.P13100060243547474971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A110654 n) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099892.P13100060243547474971

namespace A099892

/-- `(2*n-A110654(n))*char[2^n]` -/
def P13100060243547474971.Spec : Prop :=
  ∀ n, P13100060243547474971.a n = A099892 n

end A099892

/-! ## A099892.P3868415482027850374

`A003188(A048298(n))`
-/

namespace A099892.P3868415482027850374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A048298 n).toNat

end

end A099892.P3868415482027850374

namespace A099892

/-- `A003188(A048298(n))` -/
def P3868415482027850374.Spec : Prop :=
  ∀ n, P3868415482027850374.a n = A099892 n

end A099892

/-! ## A099892.P6696009185609563295

`A003188(n*A209229(n))`
-/

namespace A099892.P6696009185609563295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ((n : ℤ) * A209229 n).toNat

end

end A099892.P6696009185609563295

namespace A099892

/-- `A003188(n*A209229(n))` -/
def P6696009185609563295.Spec : Prop :=
  ∀ n, P6696009185609563295.a n = A099892 n

end A099892

/-! ## A099892.P463451214608127394

`A006368(n*A209229(n))`
-/

namespace A099892.P463451214608127394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 ((n : ℤ) * A209229 n).toNat

end

end A099892.P463451214608127394

namespace A099892

/-- `A006368(n*A209229(n))` -/
def P463451214608127394.Spec : Prop :=
  ∀ n, P463451214608127394.a n = A099892 n

end A099892

/-! ## A099892.P9162127494391456644

`A026430(n*A209229(n))`
-/

namespace A099892.P9162127494391456644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 ((n : ℤ) * A209229 n).toNat

end

end A099892.P9162127494391456644

namespace A099892

/-- `A026430(n*A209229(n))` -/
def P9162127494391456644.Spec : Prop :=
  ∀ n, P9162127494391456644.a n = A099892 n

end A099892

/-! ## A099892.P3847882410464761785

`A032766(n*A209229(n))`
-/

namespace A099892.P3847882410464761785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((n : ℤ) * A209229 n).toNat

end

end A099892.P3847882410464761785

namespace A099892

/-- `A032766(n*A209229(n))` -/
def P3847882410464761785.Spec : Prop :=
  ∀ n, P3847882410464761785.a n = A099892 n

end A099892

/-! ## A099892.P12123722222895350917

`A063946(n*A209229(n))`
-/

namespace A099892.P12123722222895350917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 ((n : ℤ) * A209229 n).toNat

end

end A099892.P12123722222895350917

namespace A099892

/-- `A063946(n*A209229(n))` -/
def P12123722222895350917.Spec : Prop :=
  ∀ n, P12123722222895350917.a n = A099892 n

end A099892

/-! ## A099892.P3350005474495803196

`A130482(n*A209229(n))`
-/

namespace A099892.P3350005474495803196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 ((n : ℤ) * A209229 n).toNat

end

end A099892.P3350005474495803196

namespace A099892

/-- `A130482(n*A209229(n))` -/
def P3350005474495803196.Spec : Prop :=
  ∀ n, P3350005474495803196.a n = A099892 n

end A099892

/-! ## A099892.P16548549935761038883

`A142149(n*A209229(n))`
-/

namespace A099892.P16548549935761038883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 ((n : ℤ) * A209229 n).toNat

end

end A099892.P16548549935761038883

namespace A099892

/-- `A142149(n*A209229(n))` -/
def P16548549935761038883.Spec : Prop :=
  ∀ n, P16548549935761038883.a n = A099892 n

end A099892

/-!
# A099893: XOR BINOMIAL transform of A006068 (inverse Gray code).

The programs for A099893, the canonical program `A099893.P11718225018095688680` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099893 has offset 0).

The definition of A099893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099893.P10020476715891429369

`xor(n, n-char[2^n])`
-/

namespace A099893.P10020476715891429369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A099893.P10020476715891429369

namespace A099893

/-- `xor(n, n-char[2^n])` -/
def P10020476715891429369.Spec : Prop :=
  ∀ n, P10020476715891429369.a n = A099893 n

end A099893

/-! ## A099893.P18410532837593236960

`char[2^n]*∑{d}[n, #]`
-/

namespace A099893.P18410532837593236960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A099893.P18410532837593236960

namespace A099893

/-- `char[2^n]*∑{d}[n, #]` -/
def P18410532837593236960.Spec : Prop :=
  ∀ n, (P18410532837593236960.a n : ℤ) = A099893 n

end A099893

/-! ## A099893.P11718225018095688680

`∑{d}[n*∏{p}[n, val(#, 2)], #]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099893

/-- `∑{d}[n*∏{p}[n, val(#, 2)], #]` -/
def P11718225018095688680.Spec : Prop :=
  ∀ n, (P11718225018095688680.a n : ℤ) = A099893 n

theorem P11718225018095688680.correct : P11718225018095688680.Spec := by
  intro n
  simp only [A099893]

end A099893

/-! ## A099893.P4340952817100534960

`∑{d}[n*C(2, ∑{p}[n, #]), #]`
-/

namespace A099893.P4340952817100534960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A099893.P4340952817100534960

namespace A099893

/-- `∑{d}[n*C(2, ∑{p}[n, #]), #]` -/
def P4340952817100534960.Spec : Prop :=
  ∀ n, (P4340952817100534960.a n : ℤ) = A099893 n

end A099893

/-! ## A099893.P1395703441425978488

`∑{d}[lcm(n, ∏{p}[n, val(#, 2)]), #]`
-/

namespace A099893.P1395703441425978488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A099893.P1395703441425978488

namespace A099893

/-- `∑{d}[lcm(n, ∏{p}[n, val(#, 2)]), #]` -/
def P1395703441425978488.Spec : Prop :=
  ∀ n, (P1395703441425978488.a n : ℤ) = A099893 n

end A099893

/-! ## A099893.P11587271936594864561

`∑{d}[n*char[and(n, -n)], #]`
-/

namespace A099893.P11587271936594864561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A099893.P11587271936594864561

namespace A099893

/-- `∑{d}[n*char[and(n, -n)], #]` -/
def P11587271936594864561.Spec : Prop :=
  ∀ n, (P11587271936594864561.a n : ℤ) = A099893 n

end A099893

/-! ## A099893.P10311206902516669178

`(2*n-1)*char[2^n]`
-/

namespace A099893.P10311206902516669178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099893.P10311206902516669178

namespace A099893

/-- `(2*n-1)*char[2^n]` -/
def P10311206902516669178.Spec : Prop :=
  ∀ n, P10311206902516669178.a n = A099893 n

end A099893

/-! ## A099893.P12988515745866864997

`∑{d}[n*C(2, ∏{p}[2*n, #]), #]`
-/

namespace A099893.P12988515745866864997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A099893.P12988515745866864997

namespace A099893

/-- `∑{d}[n*C(2, ∏{p}[2*n, #]), #]` -/
def P12988515745866864997.Spec : Prop :=
  ∀ n, (P12988515745866864997.a n : ℤ) = A099893 n

end A099893

/-! ## A099893.P15736535426565176532

`and(-char[2^n], comp[2*(n+1)])`
-/

namespace A099893.P15736535426565176532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A099893.P15736535426565176532

namespace A099893

/-- `and(-char[2^n], comp[2*(n+1)])` -/
def P15736535426565176532.Spec : Prop :=
  ∀ n, P15736535426565176532.a n = A099893 n

end A099893

/-! ## A099893.P12275041605047413167

`floor(gcd((2*n)², and(n, n-1))/(2*n+1))`
-/

namespace A099893.P12275041605047413167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd ((2 * n) ^ 2 : ℤ) (Int.land (n : ℤ) ((n : ℤ) - 1)) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A099893.P12275041605047413167

namespace A099893

/-- `floor(gcd((2*n)², and(n, n-1))/(2*n+1))` -/
def P12275041605047413167.Spec : Prop :=
  ∀ n, P12275041605047413167.a n = A099893 n

end A099893

/-! ## A099893.P9589468830712871110

`∑{d}[A048298(n), #]`
-/

namespace A099893.P9589468830712871110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A099893.P9589468830712871110

namespace A099893

/-- `∑{d}[A048298(n), #]` -/
def P9589468830712871110.Spec : Prop :=
  ∀ n, (P9589468830712871110.a n : ℤ) = A099893 n

end A099893

/-! ## A099893.P13334283448682786990

`A003817(A048298(n))`
-/

namespace A099893.P13334283448682786990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A048298 n).toNat

end

end A099893.P13334283448682786990

namespace A099893

/-- `A003817(A048298(n))` -/
def P13334283448682786990.Spec : Prop :=
  ∀ n, P13334283448682786990.a n = A099893 n

end A099893

/-! ## A099893.P13137755116046061991

`A003817(n*A209229(n))`
-/

namespace A099893.P13137755116046061991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 ((n : ℤ) * A209229 n).toNat

end

end A099893.P13137755116046061991

namespace A099893

/-- `A003817(n*A209229(n))` -/
def P13137755116046061991.Spec : Prop :=
  ∀ n, P13137755116046061991.a n = A099893 n

end A099893

/-! ## A099893.P16891541872460941492

`A006068(n*A209229(n))`
-/

namespace A099893.P16891541872460941492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ((n : ℤ) * A209229 n).toNat

end

end A099893.P16891541872460941492

namespace A099893

/-- `A006068(n*A209229(n))` -/
def P16891541872460941492.Spec : Prop :=
  ∀ n, P16891541872460941492.a n = A099893 n

end A099893

/-! ## A099893.P11697961985164033570

`A129527(n*A209229(n))`
-/

namespace A099893.P11697961985164033570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 ((n : ℤ) * A209229 n).toNat

end

end A099893.P11697961985164033570

namespace A099893

/-- `A129527(n*A209229(n))` -/
def P11697961985164033570.Spec : Prop :=
  ∀ n, P11697961985164033570.a n = A099893 n

end A099893

/-! ## A099893.P3792593890482007564

`A005187(n*A036987(A005187(n)))`
-/

namespace A099893.P3792593890482007564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((n : ℤ) * A036987 (A005187 n).toNat).toNat

end

end A099893.P3792593890482007564

namespace A099893

/-- `A005187(n*A036987(A005187(n)))` -/
def P3792593890482007564.Spec : Prop :=
  ∀ n, P3792593890482007564.a n = A099893 n

end A099893

/-! ## A099893.P8035343273219912951

`A048298(n)+A048298(n)-A209229(n)`
-/

namespace A099893.P8035343273219912951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n + (A048298 n - A209229 n)

end

end A099893.P8035343273219912951

namespace A099893

/-- `A048298(n)+A048298(n)-A209229(n)` -/
def P8035343273219912951.Spec : Prop :=
  ∀ n, P8035343273219912951.a n = A099893 n

end A099893

/-! ## A099893.P3187951284148844607

`A209229(n)*A366275(n)-A209229(n)`
-/

namespace A099893.P3187951284148844607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n * A366275 n - A209229 n

end

end A099893.P3187951284148844607

namespace A099893

/-- `A209229(n)*A366275(n)-A209229(n)` -/
def P3187951284148844607.Spec : Prop :=
  ∀ n, P3187951284148844607.a n = A099893 n

end A099893

/-! ## A099893.P15273112071235258174

`A004760(Δ[A004760(n+1)])`
-/

namespace A099893.P15273112071235258174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (f1 (n + 1) - f1 n).toNat

end

end A099893.P15273112071235258174

namespace A099893

/-- `A004760(Δ[A004760(n+1)])` -/
def P15273112071235258174.Spec : Prop :=
  ∀ n, P15273112071235258174.a n = A099893 n

end A099893

/-! ## A099893.P11001211582786881048

`A003817(A060147(n))`
-/

namespace A099893.P11001211582786881048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A060147 n).toNat

end

end A099893.P11001211582786881048

namespace A099893

/-- `A003817(A060147(n))` -/
def P11001211582786881048.Spec : Prop :=
  ∀ n, P11001211582786881048.a n = A099893 n

end A099893

/-!
# A099894: XOR BINOMIAL transform of A038712.

The programs for A099894, the canonical program `A099894.P11632390264748204457` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099894 has offset 0).

The definition of A099894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099894.P11632390264748204457

`A048298(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099894

/-- `A048298(n+1)` -/
def P11632390264748204457.Spec : Prop :=
  ∀ n, P11632390264748204457.a n = A099894 n

theorem P11632390264748204457.correct : P11632390264748204457.Spec := by
  intro n
  simp only [A099894]

end A099894

/-! ## A099894.P12082266934153009359

`Δ[or(n, a(n-1))]` with `a(0)=0`
-/

namespace A099894.P12082266934153009359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A099894.P12082266934153009359

namespace A099894

/-- `Δ[or(n, a(n-1))]` -/
def P12082266934153009359.Spec : Prop :=
  ∀ n, P12082266934153009359.a n = A099894 n

end A099894

/-! ## A099894.P16611228773086217708

`Δ[2^ceil(log2(n+1))]`
-/

namespace A099894.P16611228773086217708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099894.P16611228773086217708

namespace A099894

/-- `Δ[2^ceil(log2(n+1))]` -/
def P16611228773086217708.Spec : Prop :=
  ∀ n, P16611228773086217708.a n = (A099894 n : ℚ)

end A099894

/-! ## A099894.P16660725319345281132

`C(2^val(n+1, 2), n)`
-/

namespace A099894.P16660725319345281132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ SequenceMachineLib.valuation (n + 1) 2) n

end

end A099894.P16660725319345281132

namespace A099894

/-- `C(2^val(n+1, 2), n)` -/
def P16660725319345281132.Spec : Prop :=
  ∀ n, (P16660725319345281132.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P10287647038594212439

`C(and(n+1, 2*n), n)`
-/

namespace A099894.P10287647038594212439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

end

end A099894.P10287647038594212439

namespace A099894

/-- `C(and(n+1, 2*n), n)` -/
def P10287647038594212439.Spec : Prop :=
  ∀ n, (P10287647038594212439.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P16788250279133681342

`C(or(n, n+1)-n, n)`
-/

namespace A099894.P16788250279133681342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)).toNat n

end

end A099894.P16788250279133681342

namespace A099894

/-- `C(or(n, n+1)-n, n)` -/
def P16788250279133681342.Spec : Prop :=
  ∀ n, (P16788250279133681342.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P2117774320380156593

`C(and(n, Δ[n²])+1, n)`
-/

namespace A099894.P2117774320380156593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1).toNat n

end

end A099894.P2117774320380156593

namespace A099894

/-- `C(and(n, Δ[n²])+1, n)` -/
def P2117774320380156593.Spec : Prop :=
  ∀ n, (P2117774320380156593.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P5885657831303585302

`lcm(n+1, Δ[ceil(log2(n+1))])`
-/

namespace A099894.P5885657831303585302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A099894.P5885657831303585302

namespace A099894

/-- `lcm(n+1, Δ[ceil(log2(n+1))])` -/
def P5885657831303585302.Spec : Prop :=
  ∀ n, (P5885657831303585302.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P5643028598125760489

`C(gcd(n+1, (3-n)^10), n)`
-/

namespace A099894.P5643028598125760489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)) n

end

end A099894.P5643028598125760489

namespace A099894

/-- `C(gcd(n+1, (3-n)^10), n)` -/
def P5643028598125760489.Spec : Prop :=
  ∀ n, (P5643028598125760489.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P1046552633798839321

`∏{p}[n+1, (n+1)*val(#, 2)]`
-/

namespace A099894.P1046552633798839321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1) * SequenceMachineLib.valuation p 2

end

end A099894.P1046552633798839321

namespace A099894

/-- `∏{p}[n+1, (n+1)*val(#, 2)]` -/
def P1046552633798839321.Spec : Prop :=
  ∀ n, (P1046552633798839321.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P9420435531752647131

`(n+1)*C(2, ∑{p}[n+1, #])`
-/

namespace A099894.P9420435531752647131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A099894.P9420435531752647131

namespace A099894

/-- `(n+1)*C(2, ∑{p}[n+1, #])` -/
def P9420435531752647131.Spec : Prop :=
  ∀ n, (P9420435531752647131.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P7899005523686727856

`∏{p}[n+1, (n+1)*C(2, #)]`
-/

namespace A099894.P7899005523686727856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1) * Nat.choose 2 p

end

end A099894.P7899005523686727856

namespace A099894

/-- `∏{p}[n+1, (n+1)*C(2, #)]` -/
def P7899005523686727856.Spec : Prop :=
  ∀ n, (P7899005523686727856.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P10596748611724720527

`C(n+1, and(n, n+1)+n)`
-/

namespace A099894.P10596748611724720527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land n (n + 1) + n)

end

end A099894.P10596748611724720527

namespace A099894

/-- `C(n+1, and(n, n+1)+n)` -/
def P10596748611724720527.Spec : Prop :=
  ∀ n, (P10596748611724720527.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P1593521033534941609

`C(-or(n+1, -(n+1)), n)`
-/

namespace A099894.P1593521033534941609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat n

end

end A099894.P1593521033534941609

namespace A099894

/-- `C(-or(n+1, -(n+1)), n)` -/
def P1593521033534941609.Spec : Prop :=
  ∀ n, (P1593521033534941609.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P5549170746689383

`C((n+1)%xor(n, n+1), n)`
-/

namespace A099894.P5549170746689383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) % Nat.xor n (n + 1)) n

end

end A099894.P5549170746689383

namespace A099894

/-- `C((n+1)%xor(n, n+1), n)` -/
def P5549170746689383.Spec : Prop :=
  ∀ n, (P5549170746689383.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P8860660351662827286

`(2*a(floor(n/2)))%(n+2)` with `a(0)=1`
-/

namespace A099894.P8860660351662827286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat % (n + 2)

end

end A099894.P8860660351662827286

namespace A099894

/-- `(2*a(floor(n/2)))%(n+2)` -/
def P8860660351662827286.Spec : Prop :=
  ∀ n, (P8860660351662827286.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P18213144641357996733

`2*a(floor(n/2))*n%2` with `a(0)=1`
-/

namespace A099894.P18213144641357996733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat * (n % 2)

end

end A099894.P18213144641357996733

namespace A099894

/-- `2*a(floor(n/2))*n%2` -/
def P18213144641357996733.Spec : Prop :=
  ∀ n, (P18213144641357996733.a n : ℤ) = A099894 n

end A099894

/-! ## A099894.P9530606055725206012

`floor((n+1)^(1-and(n, n+1)))`
-/

namespace A099894.P9530606055725206012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (1 - (Nat.land n (n + 1) : ℤ) : ℤ)⌋

end

end A099894.P9530606055725206012

namespace A099894

/-- `floor((n+1)^(1-and(n, n+1)))` -/
def P9530606055725206012.Spec : Prop :=
  ∀ n, P9530606055725206012.a n = A099894 n

end A099894

/-! ## A099894.P14026916193008051836

`round((n+1)^(1-and(n, n+1)))`
-/

namespace A099894.P14026916193008051836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (1 - (Nat.land n (n + 1) : ℤ) : ℤ))

end

end A099894.P14026916193008051836

namespace A099894

/-- `round((n+1)^(1-and(n, n+1)))` -/
def P14026916193008051836.Spec : Prop :=
  ∀ n, P14026916193008051836.a n = A099894 n

end A099894

/-! ## A099894.P5964900578414792046

`∏{p}[n+1, (n+1)*floor(2/#)]`
-/

namespace A099894.P5964900578414792046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℤ) * ⌊2 / (p : ℚ)⌋

end

end A099894.P5964900578414792046

namespace A099894

/-- `∏{p}[n+1, (n+1)*floor(2/#)]` -/
def P5964900578414792046.Spec : Prop :=
  ∀ n, P5964900578414792046.a n = A099894 n

end A099894

/-!
# A099895: XOR BINOMIAL transform of A000069 (Odious numbers).

The programs for A099895, there is no canonical definition to state claims against.
-/

/-! ## A099895.P4983087050085952925

`Δ[n²]*∏{p}[n, val(#, 2)]`
-/

namespace A099895.P4983087050085952925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A099895.P4983087050085952925

/-! ## A099895.P6186985759136016617

`C(2, ∑{p}[n, #])*Δ[n²]`
-/

namespace A099895.P6186985759136016617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A099895.P6186985759136016617

/-! ## A099895.P4258666940588197867

`Δ[n²]*∏{p}[n, C(2, #)]`
-/

namespace A099895.P4258666940588197867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p : ℕ) : ℤ)

end

end A099895.P4258666940588197867

/-! ## A099895.P9679454202919705

`lcm(Δ[n²], ∏{p}[n, val(#, 2)])`
-/

namespace A099895.P9679454202919705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A099895.P9679454202919705

/-! ## A099895.P3072108228134860697

`Δ[n²]*char[and(n, -n)]`
-/

namespace A099895.P3072108228134860697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099895.P3072108228134860697

/-! ## A099895.P1668057921200605022

`C(1-xor(n, -n), 2*n)`
-/

namespace A099895.P1668057921200605022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - Int.xor (n : ℤ) (-(n : ℤ))).toNat (2 * n)

end

end A099895.P1668057921200605022

/-! ## A099895.P13695516254897581164

`round(1/∏{p}[n, #])*Δ[n²]`
-/

namespace A099895.P13695516254897581164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A099895.P13695516254897581164

/-! ## A099895.P1533427918584876055

`C(or(n, n-1)+2, 2*n)`
-/

namespace A099895.P1533427918584876055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.lor (n : ℤ) ((n : ℤ) - 1) + 2).toNat (2 * n)

end

end A099895.P1533427918584876055

/-!
# A099896: A permutation of the natural numbers where a(n) = n XOR [n/2] XOR [n/4].

The programs for A099896, the canonical program `A099896.P13419305368164812444` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099896 has offset 1).

The definition of A099896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099896.P13419305368164812444

`xor(n+1, A003188(ceil(n/2)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099896

/-- `xor(n+1, A003188(ceil(n/2)))` -/
def P13419305368164812444.Spec : Prop :=
  ∀ n, P13419305368164812444.a n = A099896 (n + 1)

theorem P13419305368164812444.correct : P13419305368164812444.Spec := by
  intro n
  simp only [A099896, Nat.add_sub_cancel]

end A099896

/-! ## A099896.P14514879273266199788

`xor(a(n-1), A006368(xor(n, n+1)))` with `a(0)=1`
-/

namespace A099896.P14514879273266199788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A006368 (Nat.xor n (n + 1)))

end

end A099896.P14514879273266199788

namespace A099896

/-- `xor(a(n-1), A006368(xor(n, n+1)))` -/
def P14514879273266199788.Spec : Prop :=
  ∀ n, P14514879273266199788.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P12518883547031506561

`A100281(A100280(n+1))`
-/

namespace A099896.P12518883547031506561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100281 (A100280 (n + 1)).toNat

end

end A099896.P12518883547031506561

namespace A099896

/-- `A100281(A100280(n+1))` -/
def P12518883547031506561.Spec : Prop :=
  ∀ n, P12518883547031506561.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P2764190635406315427

`xor(A003188(A003188(n+1)), A004526(n+1))`
-/

namespace A099896.P2764190635406315427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A003188 (n + 1)).toNat) (A004526 (n + 1))

end

end A099896.P2764190635406315427

namespace A099896

/-- `xor(A003188(A003188(n+1)), A004526(n+1))` -/
def P2764190635406315427.Spec : Prop :=
  ∀ n, P2764190635406315427.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P14282841737194486679

`xor(A006068(n+1), A006068(A132292(n+2)))`
-/

namespace A099896.P14282841737194486679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006068 (n + 1)) (A006068 (A132292 (n + 2)).toNat)

end

end A099896.P14282841737194486679

namespace A099896

/-- `xor(A006068(n+1), A006068(A132292(n+2)))` -/
def P14282841737194486679.Spec : Prop :=
  ∀ n, P14282841737194486679.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P7819356083923472808

`xor(n-A002265(2*n), A064706(n+1))`
-/

namespace A099896.P7819356083923472808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A002265 (2 * n)) (A064706 (n + 1))

end

end A099896.P7819356083923472808

namespace A099896

/-- `xor(n-A002265(2*n), A064706(n+1))` -/
def P7819356083923472808.Spec : Prop :=
  ∀ n, P7819356083923472808.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P15172342753584041163

`xor(A003188(A003188(n+1)), A110655(2*n))`
-/

namespace A099896.P15172342753584041163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A003188 (n + 1)).toNat) (A110655 (2 * n))

end

end A099896.P15172342753584041163

namespace A099896

/-- `xor(A003188(A003188(n+1)), A110655(2*n))` -/
def P15172342753584041163.Spec : Prop :=
  ∀ n, P15172342753584041163.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P7287209279084117813

`xor(A002265(2*(n+1)), A064706(n+1))`
-/

namespace A099896.P7287209279084117813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (2 * (n + 1))) (A064706 (n + 1))

end

end A099896.P7287209279084117813

namespace A099896

/-- `xor(A002265(2*(n+1)), A064706(n+1))` -/
def P7287209279084117813.Spec : Prop :=
  ∀ n, P7287209279084117813.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P6598228851784245009

`xor(a(n-1), A154442(xor(n, n+1)))` with `a(0)=1`
-/

namespace A099896.P6598228851784245009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A154442 (Nat.xor n (n + 1)))

end

end A099896.P6598228851784245009

namespace A099896

/-- `xor(a(n-1), A154442(xor(n, n+1)))` -/
def P6598228851784245009.Spec : Prop :=
  ∀ n, P6598228851784245009.a n = A099896 (n + 1)

end A099896

/-! ## A099896.P15479069256761041431

`A002265(A048727(n+1))`
-/

namespace A099896.P15479069256761041431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A048727 (n + 1)).toNat

end

end A099896.P15479069256761041431

namespace A099896

/-- `A002265(A048727(n+1))` -/
def P15479069256761041431.Spec : Prop :=
  ∀ n, P15479069256761041431.a n = A099896 (n + 1)

end A099896

/-!
# A099897: XOR difference triangle, read by rows, of A099898 (in leftmost column) such that the main diagonal equals A099898 shift left and divided by 4.

The programs for A099897, there is no canonical definition to state claims against.
-/

/-! ## A099897.P2996479767923805657

`A000695(A099900(n))`
-/

namespace A099897.P2996479767923805657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A099900 n).toNat

end

end A099897.P2996479767923805657

/-! ## A099897.P2157783680128745336

`A234741(A099900(n)²)`
-/

namespace A099897.P2157783680128745336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A099900 n ^ 2).toNat

end

end A099897.P2157783680128745336

/-! ## A099897.P2506719572624244207

`A234741(A099900(n)*A099900(n))`
-/

namespace A099897.P2506719572624244207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A099900 n * A099900 n).toNat

end

end A099897.P2506719572624244207

/-!
# A099898: Shifts left and divides by 4 under the XOR BINOMIAL transform (A099899).

The programs for A099898, there is no canonical definition to state claims against.
-/

/-! ## A099898.P11755243330008806081

`xor(16*a(n-2), a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A099898.P11755243330008806081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor (16 * a (n - 2)) (a (n - 1))

end

end A099898.P11755243330008806081

/-! ## A099898.P6187077755618756863

`record[xor(a(n-2)/(1/2)², a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A099898.P6187077755618756863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Int.xor (SequenceMachineLib.roundAway ((f1 (n - 2) : ℚ) / ((1 : ℚ) / 2) ^ 2)) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099898.P6187077755618756863

/-! ## A099898.P1627893760117905454

`record[xor(A101625(n+1), A101625(n))]`
-/

namespace A099898.P1627893760117905454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101625 (n + 1)) (A101625 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099898.P1627893760117905454

/-! ## A099898.P1523132330254306723

`record[A101624(2*n+1)*A123932(n)]`
-/

namespace A099898.P1523132330254306723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101624 (2 * n + 1) * A123932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099898.P1523132330254306723

/-! ## A099898.P12534617335005491125

`xor(A101625(2*n+1), A101625(2*n))`
-/

namespace A099898.P12534617335005491125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101625 (2 * n + 1)) (A101625 (2 * n))

end

end A099898.P12534617335005491125

/-!
# A099899: Multiplies by 4 and shifts right under the XOR BINOMIAL transform (A099898).

The programs for A099899, there is no canonical definition to state claims against.
-/

/-! ## A099899.P15808036870200540581

`xor(16*a(n-2), a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A099899.P15808036870200540581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.xor (16 * a (n - 2)) (a (n - 1))

end

end A099899.P15808036870200540581

/-! ## A099899.P14568020238564741637

`record[xor(a(n-2)/(1/2)², a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A099899.P14568020238564741637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.xor (SequenceMachineLib.roundAway ((f1 (n - 2) : ℚ) / ((1 : ℚ) / 2) ^ 2)) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099899.P14568020238564741637

/-! ## A099899.P16490385550767195124

`A101625(Δ[n²])`
-/

namespace A099899.P16490385550767195124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101625 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099899.P16490385550767195124

/-! ## A099899.P5628181943930179573

`record[A101625(n+1)]`
-/

namespace A099899.P5628181943930179573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099899.P5628181943930179573

/-! ## A099899.P9886076075387636007

`record[A101624(or(1, n))]`
-/

namespace A099899.P9886076075387636007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101624 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099899.P9886076075387636007

