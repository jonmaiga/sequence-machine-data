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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A103400: Semiprimes in A103380.

The programs for A103400, there is no canonical definition to state claims against.
-/

/-! ## A103400.P7743637210515901217

`A102363(eq[1, A308427(A102363(n))])`
-/

namespace A103400.P7743637210515901217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A102363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103400.P7743637210515901217

/-! ## A103400.P465030100526197557

`A102363(eq[2, A105700(A102363(n))])`
-/

namespace A103400.P465030100526197557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A102363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103400.P465030100526197557

/-! ## A103400.P16591232409543478014

`A102363(eq[2, A226378(A102363(n))])`
-/

namespace A103400.P16591232409543478014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A102363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103400.P16591232409543478014

/-! ## A103400.P9950317993903758694

`A102363(eq[3, A073093(A102363(n))])`
-/

namespace A103400.P9950317993903758694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A102363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103400.P9950317993903758694

/-!
# A103402: Palindromes p such that pi(p) is a palindromic prime.

The programs for A103402, there is no canonical definition to state claims against.
-/

/-! ## A103402.P2906391174785398477

`∩[A048989(n+1), A103357(n+1)]`
-/

namespace A103402.P2906391174785398477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103402.P2906391174785398477

/-! ## A103402.P8864228129488306355

`A118248(A072878(n+1))+A053868(n+1)`
-/

namespace A103402.P8864228129488306355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 (A072878 (n + 1)).toNat + A053868 (n + 1)

end

end A103402.P8864228129488306355

/-!
# A103403: Palindromic primes q derived from palindromes p such that pi(p) = q.

The programs for A103403, there is no canonical definition to state claims against.
-/

/-! ## A103403.P10711482869053888542

`p?[A103358(n+1)]`
-/

namespace A103403.P10711482869053888542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103403.P10711482869053888542

/-! ## A103403.P1484020170972030490

`filter[A103358(n+2), A010051(#)]`
-/

namespace A103403.P1484020170972030490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A103403.P1484020170972030490

/-! ## A103403.P12855257180088983980

`filter[A103358(n+3), A380467(#)]`
-/

namespace A103403.P12855257180088983980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103358 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A103403.P12855257180088983980

/-! ## A103403.P1100178125646211739

`A000720(A103402(n+1))`
-/

namespace A103403.P1100178125646211739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103402 (n + 1)).toNat

end

end A103403.P1100178125646211739

/-! ## A103403.P6926348056302151187

`p?[A000720(A103357(n+1))]`
-/

namespace A103403.P6926348056302151187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103357 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103403.P6926348056302151187

/-!
# A103404: The 10^n-th palindromic prime.

The programs for A103404, there is no canonical definition to state claims against.
-/

/-! ## A103404.P17034803877544722588

`A002385(10^n)`
-/

namespace A103404.P17034803877544722588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (10 ^ n)

end

end A103404.P17034803877544722588

/-!
# A103405: The 2^n-th palindromic prime.

The programs for A103405, there is no canonical definition to state claims against.
-/

/-! ## A103405.P2122657451275741143

`A002385(2^n)`
-/

namespace A103405.P2122657451275741143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (2 ^ n)

end

end A103405.P2122657451275741143

/-! ## A103405.P6312208008422817741

`record[A002385(A001316(n))]`
-/

namespace A103405.P6312208008422817741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103405.P6312208008422817741

/-! ## A103405.P5046722651028622302

`record[A002385(A029930(n))]`
-/

namespace A103405.P5046722651028622302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103405.P5046722651028622302

/-! ## A103405.P8127265092251779610

`record[A002385(A048483(n))]`
-/

namespace A103405.P8127265092251779610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103405.P8127265092251779610

/-! ## A103405.P15534135590574313215

`record[A002385(A055248(n))]`
-/

namespace A103405.P15534135590574313215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103405.P15534135590574313215

/-!
# A103406: Triangle read by rows: n-th row = unsigned coefficients of the characteristic polynomials of an n X n matrix with 2's on the diagonal and 1's elsewhere.

The programs for A103406, the canonical program `A103406.P6599304241706345565` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103406 has offset 0).

The definition of A103406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103406.P11671875476051512731

`(col(n)+1)*C(row(n), col(n))`
-/

namespace A103406.P11671875476051512731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A103406.P11671875476051512731

namespace A103406

/-- `(col(n)+1)*C(row(n), col(n))` -/
def P11671875476051512731.Spec : Prop :=
  ∀ n, (P11671875476051512731.a n : ℤ) = A103406 n

theorem P11671875476051512731.correct : P11671875476051512731.Spec := by
  intro n
  simp only [A103406, Nat.add_sub_cancel, A103406.P11671875476051512731.a, A103406.P6599304241706345565.a, A002260, A002260.P9170571874073898642.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103406

/-! ## A103406.P17315235378917491548

`(n+1-C(∑[char[∑[n]]], 2))*A007318(n)`
-/

namespace A103406.P17315235378917491548
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A007318 n

end

end A103406.P17315235378917491548

namespace A103406

/-- `(n+1-C(∑[char[∑[n]]], 2))*A007318(n)` -/
def P17315235378917491548.Spec : Prop :=
  ∀ n, P17315235378917491548.a n = A103406 n

end A103406

/-! ## A103406.P3816317808419722375

`A128710(n)-A007318(n)`
-/

namespace A103406.P3816317808419722375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A007318 n

end

end A103406.P3816317808419722375

namespace A103406

/-- `A128710(n)-A007318(n)` -/
def P3816317808419722375.Spec : Prop :=
  ∀ n, P3816317808419722375.a n = A103406 n

theorem P3816317808419722375.correct : P3816317808419722375.Spec := by
  intro n
  simp only [A103406, Nat.add_sub_cancel, A103406.P3816317808419722375.a, A103406.P6599304241706345565.a, A002260, A002260.P9170571874073898642.a, A007318, A007318.P11755526479805562006.a, A128710, A128710.P2966919769106220333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103406

/-! ## A103406.P3146608683515220642

`gcd(A073423(n), A135852(n))`
-/

namespace A103406.P3146608683515220642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A135852 n)

end

end A103406.P3146608683515220642

namespace A103406

/-- `gcd(A073423(n), A135852(n))` -/
def P3146608683515220642.Spec : Prop :=
  ∀ n, (P3146608683515220642.a n : ℤ) = A103406 n

end A103406

/-! ## A103406.P398282463731104660

`A127952(n)+A097805(n+1)`
-/

namespace A103406.P398282463731104660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 n + A097805 (n + 1)

end

end A103406.P398282463731104660

namespace A103406

/-- `A127952(n)+A097805(n+1)` -/
def P398282463731104660.Spec : Prop :=
  ∀ n, P398282463731104660.a n = A103406 n

end A103406

/-! ## A103406.P8650287318051284507

`A216973(n)+A128065(n+1)`
-/

namespace A103406.P8650287318051284507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A128065 (n + 1)

end

end A103406.P8650287318051284507

namespace A103406

/-- `A216973(n)+A128065(n+1)` -/
def P8650287318051284507.Spec : Prop :=
  ∀ n, P8650287318051284507.a n = A103406 n

end A103406

/-! ## A103406.P3336790348480100729

`A003506(n+1)-A216973(n)`
-/

namespace A103406.P3336790348480100729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A216973 n

end

end A103406.P3336790348480100729

namespace A103406

/-- `A003506(n+1)-A216973(n)` -/
def P3336790348480100729.Spec : Prop :=
  ∀ n, P3336790348480100729.a n = A103406 n

theorem P3336790348480100729.correct : P3336790348480100729.Spec := by
  intro n
  simp only [A103406, Nat.add_sub_cancel, A103406.P3336790348480100729.a, A103406.P6599304241706345565.a, A002260, A002260.P9170571874073898642.a, A003506, A003506.P13263006833711295772.a, A007318, A007318.P11755526479805562006.a, A216973, A216973.P15863105142889415858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103406

/-! ## A103406.P6599304241706345565

`A002260(n+1)*A007318(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103406

/-- `A002260(n+1)*A007318(n)` -/
def P6599304241706345565.Spec : Prop :=
  ∀ n, P6599304241706345565.a n = A103406 n

theorem P6599304241706345565.correct : P6599304241706345565.Spec := by
  intro n
  simp only [A103406]

end A103406

/-! ## A103406.P86665783204831853

`(A002262(n)+1)*A007318(n)`
-/

namespace A103406.P86665783204831853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A007318 n

end

end A103406.P86665783204831853

namespace A103406

/-- `(A002262(n)+1)*A007318(n)` -/
def P86665783204831853.Spec : Prop :=
  ∀ n, P86665783204831853.a n = A103406 n

theorem P86665783204831853.correct : P86665783204831853.Spec := by
  intro n
  simp only [A103406, Nat.add_sub_cancel, A103406.P86665783204831853.a, A103406.P6599304241706345565.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103406

/-! ## A103406.P9457467203106532707

`A130595(n)*A140756(n+1)`
-/

namespace A103406.P9457467203106532707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A140756 (n + 1)

end

end A103406.P9457467203106532707

namespace A103406

/-- `A130595(n)*A140756(n+1)` -/
def P9457467203106532707.Spec : Prop :=
  ∀ n, P9457467203106532707.a n = A103406 n

end A103406

/-! ## A103406.P14596543155667940401

`A125092(n)/A002260(n+1)`
-/

namespace A103406.P14596543155667940401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125092 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A103406.P14596543155667940401

namespace A103406

/-- `A125092(n)/A002260(n+1)` -/
def P14596543155667940401.Spec : Prop :=
  ∀ n, P14596543155667940401.a n = (A103406 n : ℚ)

end A103406

/-! ## A103406.P8575777604153102716

`A141611(n)/A004736(n+1)`
-/

namespace A103406.P8575777604153102716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A103406.P8575777604153102716

namespace A103406

/-- `A141611(n)/A004736(n+1)` -/
def P8575777604153102716.Spec : Prop :=
  ∀ n, P8575777604153102716.a n = (A103406 n : ℚ)

end A103406

/-! ## A103406.P5728068908374423795

`abs(A002260(n+1)*A108086(n))`
-/

namespace A103406.P5728068908374423795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A108086 n|

end

end A103406.P5728068908374423795

namespace A103406

/-- `abs(A002260(n+1)*A108086(n))` -/
def P5728068908374423795.Spec : Prop :=
  ∀ n, P5728068908374423795.a n = A103406 n

end A103406

/-! ## A103406.P6179535476674929724

`abs((A002262(n)+1)*A108086(n))`
-/

namespace A103406.P6179535476674929724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002262 n + 1) * A108086 n|

end

end A103406.P6179535476674929724

namespace A103406

/-- `abs((A002262(n)+1)*A108086(n))` -/
def P6179535476674929724.Spec : Prop :=
  ∀ n, P6179535476674929724.a n = A103406 n

end A103406

/-! ## A103406.P18166847371713953712

`abs(A002260(n+1)*A130595(n))`
-/

namespace A103406.P18166847371713953712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A130595 n|

end

end A103406.P18166847371713953712

namespace A103406

/-- `abs(A002260(n+1)*A130595(n))` -/
def P18166847371713953712.Spec : Prop :=
  ∀ n, P18166847371713953712.a n = A103406 n

end A103406

/-! ## A103406.P18273443155783092743

`abs((A002262(n)+1)*A130595(n))`
-/

namespace A103406.P18273443155783092743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002262 n + 1) * A130595 n|

end

end A103406.P18273443155783092743

namespace A103406

/-- `abs((A002262(n)+1)*A130595(n))` -/
def P18273443155783092743.Spec : Prop :=
  ∀ n, P18273443155783092743.a n = A103406 n

end A103406

/-! ## A103406.P18420072764664627905

`(A002262(n)+1)*sqrt(A008459(n))`
-/

namespace A103406.P18420072764664627905
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A103406.P18420072764664627905

namespace A103406

/-- `(A002262(n)+1)*sqrt(A008459(n))` -/
def P18420072764664627905.Spec : Prop :=
  ∀ n, P18420072764664627905.a n = (A103406 n : ℝ)

end A103406

/-! ## A103406.P12473811013037773183

`sqrt(A008459(n))*A002260(n+1)`
-/

namespace A103406.P12473811013037773183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A002260 (n + 1) : ℝ)

end

end A103406.P12473811013037773183

namespace A103406

/-- `sqrt(A008459(n))*A002260(n+1)` -/
def P12473811013037773183.Spec : Prop :=
  ∀ n, P12473811013037773183.a n = (A103406 n : ℝ)

end A103406

/-! ## A103406.P10015082684305089541

`sqrt(A133819(n+1))*A007318(n)`
-/

namespace A103406.P10015082684305089541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A007318 n : ℝ)

end

end A103406.P10015082684305089541

namespace A103406

/-- `sqrt(A133819(n+1))*A007318(n)` -/
def P10015082684305089541.Spec : Prop :=
  ∀ n, P10015082684305089541.a n = (A103406 n : ℝ)

end A103406

/-! ## A103406.P13566859962881845529

`(sqrt(A143844(n))+1)*A007318(n)`
-/

namespace A103406.P13566859962881845529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 1) * (A007318 n : ℝ)

end

end A103406.P13566859962881845529

namespace A103406

/-- `(sqrt(A143844(n))+1)*A007318(n)` -/
def P13566859962881845529.Spec : Prop :=
  ∀ n, P13566859962881845529.a n = (A103406 n : ℝ)

end A103406

/-!
# A103407: Triangle of absolute values of the coefficients (in descending powers) of the characteristic polynomials of n X n matrices with 3's on the main diagonal and 1's elsewhere.

The programs for A103407, there is no canonical definition to state claims against.
-/

/-! ## A103407.P347057297773236467

`A059268(n)/2*A128710(n)`
-/

namespace A103407.P347057297773236467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 2 * (A128710 n : ℚ)

end

end A103407.P347057297773236467

/-! ## A103407.P5532366727361748790

`(A002262(n)+2)*A013609(n)/2`
-/

namespace A103407.P5532366727361748790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2 : ℚ) * ((A013609 n : ℚ) / 2)

end

end A103407.P5532366727361748790

/-! ## A103407.P8034884361944454765

`A001792(A002262(n))*A007318(n)`
-/

namespace A103407.P8034884361944454765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A002262 n).toNat * A007318 n

end

end A103407.P8034884361944454765

/-! ## A103407.P9324068409150571373

`A007318(n)*A006520(A059268(n))`
-/

namespace A103407.P9324068409150571373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A006520 (A059268 n).toNat

end

end A103407.P9324068409150571373

/-! ## A103407.P3091469862821106805

`A304529(A059268(n)*A128710(n))`
-/

namespace A103407.P3091469862821106805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (A059268 n * A128710 n).toNat

end

end A103407.P3091469862821106805

/-! ## A103407.P3238015449060414386

`abs(A001792(A002262(n))*A130595(n))`
-/

namespace A103407.P3238015449060414386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001792 (A002262 n).toNat * A130595 n|

end

end A103407.P3238015449060414386

/-! ## A103407.P891460756426641695

`sqrt(A008459(n))*A001792(A002262(n))`
-/

namespace A103407.P891460756426641695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A001792 (A002262 n).toNat : ℝ)

end

end A103407.P891460756426641695

/-! ## A103407.P9956462113239103568

`sqrt(A008459(n))*A006520(A059268(n))`
-/

namespace A103407.P9956462113239103568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A006520 (A059268 n).toNat : ℝ)

end

end A103407.P9956462113239103568

/-! ## A103407.P2744292200224170053

`A007318(n)*A001792(log2(A059268(n)))`
-/

namespace A103407.P2744292200224170053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001792 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A103407.P2744292200224170053

/-! ## A103407.P6470763859013380610

`Δ[A102363(n)]*A001792(A002262(n))`
-/

namespace A103407.P6470763859013380610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001792 (A002262 n).toNat

end

end A103407.P6470763859013380610

/-!
# A103410: Number of products of distinct elements in generation n, starting with two elements.

The programs for A103410, there is no canonical definition to state claims against.
-/

/-! ## A103410.P18406283672212002303

`Δ[C(a(n-1), 2)+gcd(2, 2*n)]` with `a(0)=0`
-/

namespace A103410.P18406283672212002303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (f1 (n - 1)) 2 + Nat.gcd 2 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103410.P18406283672212002303

/-! ## A103410.P1706221679660499572

`Δ[A108225(n)]`
-/

namespace A103410.P1706221679660499572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103410.P1706221679660499572

/-! ## A103410.P8193971121727386522

`floor(A002658(n)+acot(n))`
-/

namespace A103410.P8193971121727386522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002658 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A103410.P8193971121727386522

/-! ## A103410.P16904296389398416058

`A108225(n+1)-A108225(n)`
-/

namespace A103410.P16904296389398416058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108225 (n + 1) - A108225 n

end

end A103410.P16904296389398416058

/-! ## A103410.P2155860700177561942

`A002658(n)+A073345(n)*A073429(n)`
-/

namespace A103410.P2155860700177561942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002658 n + A073345 n * A073429 n

end

end A103410.P2155860700177561942

/-!
# A103411: Consider smallest m such that m^2 = x_1^2 + ... + x_n^2 with 0 < x_1 < ... < x_n. Sequence gives greatest value of x_n.

The programs for A103411, there is no canonical definition to state claims against.
-/

/-! ## A103411.P2517052456976878510

`A103412(n+1)+A008618(A005135(n))`
-/

namespace A103411.P2517052456976878510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103412 (n + 1) + A008618 (A005135 n).toNat

end

end A103411.P2517052456976878510

/-! ## A103411.P2722038646498056990

`or(val(A063804(n+3), 5), A103412(n+1))`
-/

namespace A103411.P2722038646498056990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A063804 (n + 3)).toNat 5 : ℤ) (A103412 (n + 1))

end

end A103411.P2722038646498056990

/-! ## A103411.P5277760911460755058

`or(A018937(n+1)%A063804(n+3), A103412(n+1))`
-/

namespace A103411.P5277760911460755058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A018937 (n + 1)) (A063804 (n + 3))) (A103412 (n + 1))

end

end A103411.P5277760911460755058

/-! ## A103411.P5883935304758393181

`or(A103412(n+1)%A063804(n+3), A103413(n+1))`
-/

namespace A103411.P5883935304758393181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A103412 (n + 1)) (A063804 (n + 3))) (A103413 (n + 1))

end

end A103411.P5883935304758393181

/-! ## A103411.P7725064953501419587

`A103412(n+1)+A064911(A067199(n+1))`
-/

namespace A103411.P7725064953501419587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103412 (n + 1) + A064911 (A067199 (n + 1)).toNat

end

end A103411.P7725064953501419587

/-!
# A103412: Consider smallest m such that m^2 = x_1^2 + ... + x_n^2 with 0 < x_1 < ... < x_n. Sequence gives value of x_n for lexicographically least {x_1,...,x_n}.

The programs for A103412, there is no canonical definition to state claims against.
-/

/-! ## A103412.P11053422348338610299

`A103411(n+1)-A008618(A005135(n))`
-/

namespace A103412.P11053422348338610299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (n + 1) - A008618 (A005135 n).toNat

end

end A103412.P11053422348338610299

/-! ## A103412.P11193349044836896175

`A103411(n+1)-A064911(A067199(n+1))`
-/

namespace A103412.P11193349044836896175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (n + 1) - A064911 (A067199 (n + 1)).toNat

end

end A103412.P11193349044836896175

/-! ## A103412.P17438833012548781038

`A103411(n+1)-val(A103414(5*n+3), 5)`
-/

namespace A103412.P17438833012548781038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (n + 1) - (SequenceMachineLib.valuation (A103414 (5 * n + 3)).toNat 5 : ℤ)

end

end A103412.P17438833012548781038

/-! ## A103412.P903588898625239802

`A103411(n+1)-A014094(A229312(3*n+1))`
-/

namespace A103412.P903588898625239802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (n + 1) - A014094 (A229312 (3 * n + 1)).toNat

end

end A103412.P903588898625239802

/-! ## A103412.P16213345297999483725

`A103411(n+1)-A003982(A075853(n))`
-/

namespace A103412.P16213345297999483725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (n + 1) - A003982 (A075853 n).toNat

end

end A103412.P16213345297999483725

/-!
# A103413: Consider smallest m such that m^2 = x_1^2 + ... + x_n^2 with 0 < x_1 < ... < x_n. Sequence gives value of x_n for lexicographically greatest {x_1,...,x_n}.

The programs for A103413, there is no canonical definition to state claims against.
-/

/-! ## A103413.P14736107564206811721

`A113047(A338904(2*(n+2)))+A018937(n+1)`
-/

namespace A103413.P14736107564206811721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 (A338904 (2 * (n + 2))).toNat + A018937 (n + 1)

end

end A103413.P14736107564206811721

/-! ## A103413.P4675572511709556194

`A026729(A005135(n))+A018937(n+1)`
-/

namespace A103413.P4675572511709556194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A005135 n).toNat + A018937 (n + 1)

end

end A103413.P4675572511709556194

/-! ## A103413.P11279942740329536661

`or(A010057(A268346(n)), A018937(n+1))`
-/

namespace A103413.P11279942740329536661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 (A268346 n).toNat) (A018937 (n + 1))

end

end A103413.P11279942740329536661

/-! ## A103413.P136472814380751900

`or(A028242(n)%A005135(n), A018937(n+1))`
-/

namespace A103413.P136472814380751900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A028242 n) (A005135 n)) (A018937 (n + 1))

end

end A103413.P136472814380751900

/-! ## A103413.P6136831698369323162

`or(A057979(n)%A005135(n), A018937(n+1))`
-/

namespace A103413.P6136831698369323162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A057979 n) (A005135 n)) (A018937 (n + 1))

end

end A103413.P6136831698369323162

/-!
# A103414: Consider smallest m such that m^2 = x_1^2 + ... + x_n^2 with 0 < x_1 < ... < x_n. Sequence gives number of solutions {x_1,...,x_n}.

The programs for A103414, there is no canonical definition to state claims against.
-/

/-! ## A103414.P2545535212572960107

`A078316(A228351(n+1)+A062041(n+1))`
-/

namespace A103414.P2545535212572960107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078316 (A228351 (n + 1) + A062041 (n + 1)).toNat

end

end A103414.P2545535212572960107

/-! ## A103414.P17001274973892860220

`gcd(A281977(A222048(n)), A303389(n+3))`
-/

namespace A103414.P17001274973892860220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281977 (A222048 n).toNat) (A303389 (n + 3))

end

end A103414.P17001274973892860220

/-! ## A103414.P17121410604254374764

`gcd(A001222(n+5), A038722(A351153(3*n+1)))`
-/

namespace A103414.P17121410604254374764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 5)) (A038722 (A351153 (3 * n + 1)).toNat)

end

end A103414.P17121410604254374764

/-!
# A103416: a(n) = n - ceiling(sqrt(prime(n))).

The programs for A103416, the canonical program `A103416.P11972475855525546389` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103416 has offset 0).

The definition of A103416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103416.P4489440838681032880

`floor(n+1-sqrt(p?[abs(2*n-3)]+1))`
-/

namespace A103416.P4489440838681032880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℝ)⌋

end

end A103416.P4489440838681032880

namespace A103416

/-- `floor(n+1-sqrt(p?[abs(2*n-3)]+1))` -/
def P4489440838681032880.Spec : Prop :=
  ∀ n, P4489440838681032880.a n = A103416 n

end A103416

/-! ## A103416.P3362013583988249873

`n+1-ceil(sqrt(p?[round(8*n/7)]+1))`
-/

namespace A103416.P3362013583988249873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℝ)⌉

end

end A103416.P3362013583988249873

namespace A103416

/-- `n+1-ceil(sqrt(p?[round(8*n/7)]+1))` -/
def P3362013583988249873.Spec : Prop :=
  ∀ n, P3362013583988249873.a n = A103416 n

end A103416

/-! ## A103416.P11972475855525546389

`A103355(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103416

/-- `A103355(n+1)-1` -/
def P11972475855525546389.Spec : Prop :=
  ∀ n, P11972475855525546389.a n = A103416 n

theorem P11972475855525546389.correct : P11972475855525546389.Spec := by
  intro n
  simp only [A103416]

end A103416

/-! ## A103416.P18056252385461065167

`n-A000006(n+1)`
-/

namespace A103416.P18056252385461065167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000006 (n + 1)

end

end A103416.P18056252385461065167

namespace A103416

/-- `n-A000006(n+1)` -/
def P18056252385461065167.Spec : Prop :=
  ∀ n, P18056252385461065167.a n = A103416 n

end A103416

/-! ## A103416.P4064216272220579282

`n-∑[char[A038107(n)]]`
-/

namespace A103416.P4064216272220579282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A103416.P4064216272220579282

namespace A103416

/-- `n-∑[char[A038107(n)]]` -/
def P4064216272220579282.Spec : Prop :=
  ∀ n, P4064216272220579282.a n = A103416 n

end A103416

/-! ## A103416.P10961087316806595376

`n-sqrt(A065730(n+1))`
-/

namespace A103416.P10961087316806595376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A065730 (n + 1) : ℝ)

end

end A103416.P10961087316806595376

namespace A103416

/-- `n-sqrt(A065730(n+1))` -/
def P10961087316806595376.Spec : Prop :=
  ∀ n, P10961087316806595376.a n = (A103416 n : ℝ)

end A103416

/-! ## A103416.P10969498186542157716

`1-A104103(n+1)+n`
-/

namespace A103416.P10969498186542157716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104103 (n + 1) + (n : ℤ)

end

end A103416.P10969498186542157716

namespace A103416

/-- `1-A104103(n+1)+n` -/
def P10969498186542157716.Spec : Prop :=
  ∀ n, P10969498186542157716.a n = A103416 n

end A103416

/-! ## A103416.P10368659140057410291

`n-A096494(n+1)/2`
-/

namespace A103416.P10368659140057410291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A096494 (n + 1) : ℚ) / 2

end

end A103416.P10368659140057410291

namespace A103416

/-- `n-A096494(n+1)/2` -/
def P10368659140057410291.Spec : Prop :=
  ∀ n, P10368659140057410291.a n = (A103416 n : ℚ)

end A103416

/-! ## A103416.P6344539022582740508

`∑[char[A221056(n+1)]]-1`
-/

namespace A103416.P6344539022582740508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221056 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A103416.P6344539022582740508

namespace A103416

/-- `∑[char[A221056(n+1)]]-1` -/
def P6344539022582740508.Spec : Prop :=
  ∀ n, P6344539022582740508.a n = A103416 n

end A103416

/-! ## A103416.P17644061672735130997

`n-floor(sqrt(A000040(n+1)))`
-/

namespace A103416.P17644061672735130997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A000040 (n + 1))

end

end A103416.P17644061672735130997

namespace A103416

/-- `n-floor(sqrt(A000040(n+1)))` -/
def P17644061672735130997.Spec : Prop :=
  ∀ n, P17644061672735130997.a n = A103416 n

theorem P17644061672735130997.correct : P17644061672735130997.Spec := by
  intro n
  simp only [A103416, Nat.add_sub_cancel, A103416.P17644061672735130997.a, A103416.P11972475855525546389.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103416

/-! ## A103416.P15706092675386815126

`n-floor(sqrt(A006005(n+1)))`
-/

namespace A103416.P15706092675386815126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A006005 (n + 1))

end

end A103416.P15706092675386815126

namespace A103416

/-- `n-floor(sqrt(A006005(n+1)))` -/
def P15706092675386815126.Spec : Prop :=
  ∀ n, P15706092675386815126.a n = A103416 n

end A103416

/-! ## A103416.P4664425992670465211

`n-floor(sqrt(A006093(n+1)))`
-/

namespace A103416.P4664425992670465211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A006093 (n + 1))

end

end A103416.P4664425992670465211

namespace A103416

/-- `n-floor(sqrt(A006093(n+1)))` -/
def P4664425992670465211.Spec : Prop :=
  ∀ n, P4664425992670465211.a n = A103416 n

end A103416

/-! ## A103416.P11485008966686108969

`n-floor(sqrt(A014193(n+1)))`
-/

namespace A103416.P11485008966686108969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A014193 (n + 1))

end

end A103416.P11485008966686108969

namespace A103416

/-- `n-floor(sqrt(A014193(n+1)))` -/
def P11485008966686108969.Spec : Prop :=
  ∀ n, P11485008966686108969.a n = A103416 n

end A103416

/-! ## A103416.P16056472160881287482

`n-floor(sqrt(A014686(n+1)))`
-/

namespace A103416.P16056472160881287482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A014686 (n + 1))

end

end A103416.P16056472160881287482

namespace A103416

/-- `n-floor(sqrt(A014686(n+1)))` -/
def P16056472160881287482.Spec : Prop :=
  ∀ n, P16056472160881287482.a n = A103416 n

end A103416

/-! ## A103416.P8175602329723543316

`n-floor(sqrt(A039915(n+1)))`
-/

namespace A103416.P8175602329723543316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A039915 (n + 1))

end

end A103416.P8175602329723543316

namespace A103416

/-- `n-floor(sqrt(A039915(n+1)))` -/
def P8175602329723543316.Spec : Prop :=
  ∀ n, P8175602329723543316.a n = A103416 n

end A103416

/-! ## A103416.P2370374087682112959

`n-floor(sqrt(A082542(n+1)))`
-/

namespace A103416.P2370374087682112959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A082542 (n + 1))

end

end A103416.P2370374087682112959

namespace A103416

/-- `n-floor(sqrt(A082542(n+1)))` -/
def P2370374087682112959.Spec : Prop :=
  ∀ n, P2370374087682112959.a n = A103416 n

end A103416

/-! ## A103416.P2366967336324016310

`n-floor(sqrt(A088190(n+1)))`
-/

namespace A103416.P2366967336324016310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A088190 (n + 1))

end

end A103416.P2366967336324016310

namespace A103416

/-- `n-floor(sqrt(A088190(n+1)))` -/
def P2366967336324016310.Spec : Prop :=
  ∀ n, P2366967336324016310.a n = A103416 n

end A103416

/-! ## A103416.P16760595392486939297

`n-floor(sqrt(A156037(n+1)))`
-/

namespace A103416.P16760595392486939297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A156037 (n + 1))

end

end A103416.P16760595392486939297

namespace A103416

/-- `n-floor(sqrt(A156037(n+1)))` -/
def P16760595392486939297.Spec : Prop :=
  ∀ n, P16760595392486939297.a n = A103416 n

end A103416

/-! ## A103416.P10357842129000963213

`Δ[n²]-A161188(n+1)`
-/

namespace A103416.P10357842129000963213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A161188 (n + 1)

end

end A103416.P10357842129000963213

namespace A103416

/-- `Δ[n²]-A161188(n+1)` -/
def P10357842129000963213.Spec : Prop :=
  ∀ n, P10357842129000963213.a n = A103416 n

theorem P10357842129000963213.correct : P10357842129000963213.Spec := by
  intro n
  simp only [A103416, Nat.add_sub_cancel, A103416.P10357842129000963213.f1, A103416.P10357842129000963213.a, A103416.P11972475855525546389.a, A103355, A103355.P17909756641454416049.a, A161188, A161188.P8302005611444177040.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103416

/-! ## A103416.P14220599448530994030

`n+1-sqrt(A145445(n+1))`
-/

namespace A103416.P14220599448530994030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A145445 (n + 1) : ℝ)

end

end A103416.P14220599448530994030

namespace A103416

/-- `n+1-sqrt(A145445(n+1))` -/
def P14220599448530994030.Spec : Prop :=
  ∀ n, P14220599448530994030.a n = (A103416 n : ℝ)

end A103416

/-!
# A103417: Leading coefficients of self-interpolating polynomials from A103423.

The programs for A103417, there is no canonical definition to state claims against.
-/

/-! ## A103417.P12702370174789163369

`A103423(∑[n])`
-/

namespace A103417.P12702370174789163369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103417.P12702370174789163369

/-! ## A103417.P16053214190010255377

`abs(A103423(A000217(n)))`
-/

namespace A103417.P16053214190010255377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103423 (A000217 n).toNat|

end

end A103417.P16053214190010255377

/-! ## A103417.P7228219251085006896

`A014963(10*(n+1))*A103423(A000217(n))`
-/

namespace A103417.P7228219251085006896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A103423 (A000217 n).toNat

end

end A103417.P7228219251085006896

/-! ## A103417.P5420925679587453502

`A103423(A000217(n))+A008683(lcm(4, n+1))`
-/

namespace A103417.P5420925679587453502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103423 (A000217 n).toNat + A008683 (Nat.lcm 4 (n + 1))

end

end A103417.P5420925679587453502

/-! ## A103417.P1256039737191587577

`A103423(A000217(n))+and(32, A000010(n+1))`
-/

namespace A103417.P1256039737191587577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103423 (A000217 n).toNat + Int.land 32 (A000010 (n + 1))

end

end A103417.P1256039737191587577

/-!
# A103418: Lowest coefficients of self-interpolating polynomials from A103423.

The programs for A103418, there is no canonical definition to state claims against.
-/

/-! ## A103418.P1184564629152513337

`A103423(∑[n]+n)`
-/

namespace A103418.P1184564629152513337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103423 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A103418.P1184564629152513337

/-! ## A103418.P4018778475880435471

`and(1, A000265(n+1))*A103423(A000096(n))`
-/

namespace A103418.P4018778475880435471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000265 (n + 1)) * A103423 (A000096 n).toNat

end

end A103418.P4018778475880435471

/-! ## A103418.P2208980380985760472

`A000045(A219347(n))*A103423(A000096(n))`
-/

namespace A103418.P2208980380985760472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A219347 n).toNat * A103423 (A000096 n).toNat

end

end A103418.P2208980380985760472

/-! ## A103418.P17212317920652486403

`A103423(A000096(n))+A102679(A262501(n+1))`
-/

namespace A103418.P17212317920652486403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103423 (A000096 n).toNat + A102679 (A262501 (n + 1)).toNat

end

end A103418.P17212317920652486403

/-! ## A103418.P7329023807710596247

`A000045(A020639(2*(n+1)))*A103423(A000096(n))`
-/

namespace A103418.P7329023807710596247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A103423 (A000096 n).toNat

end

end A103418.P7329023807710596247

/-!
# A103419: Number of compositions of n in which the least part is odd.

The programs for A103419, there is no canonical definition to state claims against.
-/

/-! ## A103419.P7977703340479722560

`2^n-A103420(n+1)`
-/

namespace A103419.P7977703340479722560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A103420 (n + 1)

end

end A103419.P7977703340479722560

/-! ## A103419.P7225456408888069756

`abs(A103420(n+1)-A000079(n))`
-/

namespace A103419.P7225456408888069756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103420 (n + 1) - A000079 n|

end

end A103419.P7225456408888069756

/-! ## A103419.P11948370808126107147

`abs(A103420(n+1)-A171449(n))`
-/

namespace A103419.P11948370808126107147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103420 (n + 1) - A171449 n|

end

end A103419.P11948370808126107147

/-! ## A103419.P10749225364616923065

`A000051(n)-(A103420(n+1)+1)`
-/

namespace A103419.P10749225364616923065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A103420 (n + 1) + 1)

end

end A103419.P10749225364616923065

/-! ## A103419.P18101856458168382387

`A000225(n)+1-A103420(n+1)`
-/

namespace A103419.P18101856458168382387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A103420 (n + 1))

end

end A103419.P18101856458168382387

/-!
# A103420: Number of compositions of n in which the least part is even.

The programs for A103420, there is no canonical definition to state claims against.
-/

/-! ## A103420.P10848255618781008748

`2^n-A103419(n+1)`
-/

namespace A103420.P10848255618781008748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A103419 (n + 1)

end

end A103420.P10848255618781008748

/-! ## A103420.P2401553329652175197

`abs(A103419(n+1)-A000079(n))`
-/

namespace A103420.P2401553329652175197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103419 (n + 1) - A000079 n|

end

end A103420.P2401553329652175197

/-! ## A103420.P8845493395509704176

`and(-A103419(n+1), A000225(n))`
-/

namespace A103420.P8845493395509704176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A103419 (n + 1)) (A000225 n)

end

end A103420.P8845493395509704176

/-! ## A103420.P13994117079762908679

`A000051(n)-(A103419(n+1)+1)`
-/

namespace A103420.P13994117079762908679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A103419 (n + 1) + 1)

end

end A103420.P13994117079762908679

/-! ## A103420.P17869639264170210919

`abs(A077957(2*n)-A103419(n+1))`
-/

namespace A103420.P17869639264170210919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077957 (2 * n) - A103419 (n + 1)|

end

end A103420.P17869639264170210919

/-!
# A103421: Number of compositions of n in which the greatest part is odd.

The programs for A103421, there is no canonical definition to state claims against.
-/

/-! ## A103421.P16450157820851528584

`2^n-A103422(n+1)`
-/

namespace A103421.P16450157820851528584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A103422 (n + 1)

end

end A103421.P16450157820851528584

/-! ## A103421.P8703314603853688732

`abs(A103422(n+1)-A000079(n))`
-/

namespace A103421.P8703314603853688732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103422 (n + 1) - A000079 n|

end

end A103421.P8703314603853688732

/-! ## A103421.P269357998596454015

`abs(A103422(n+1)-A171449(n))`
-/

namespace A103421.P269357998596454015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103422 (n + 1) - A171449 n|

end

end A103421.P269357998596454015

/-! ## A103421.P1239445819916027337

`A000051(n)-(A103422(n+1)+1)`
-/

namespace A103421.P1239445819916027337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A103422 (n + 1) + 1)

end

end A103421.P1239445819916027337

/-! ## A103421.P13853818325963851646

`A000225(n)+1-A103422(n+1)`
-/

namespace A103421.P13853818325963851646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A103422 (n + 1))

end

end A103421.P13853818325963851646

/-!
# A103422: Number of compositions of n in which the greatest part is even.

The programs for A103422, there is no canonical definition to state claims against.
-/

/-! ## A103422.P6108249518565351370

`2^n-A103421(n+1)`
-/

namespace A103422.P6108249518565351370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A103421 (n + 1)

end

end A103422.P6108249518565351370

/-! ## A103422.P4360475013589593076

`abs(A103421(n+1)-A000079(n))`
-/

namespace A103422.P4360475013589593076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103421 (n + 1) - A000079 n|

end

end A103422.P4360475013589593076

/-! ## A103422.P9632741212214715547

`and(-A103421(n+1), A000225(n))`
-/

namespace A103422.P9632741212214715547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A103421 (n + 1)) (A000225 n)

end

end A103422.P9632741212214715547

/-! ## A103422.P10657254464636580100

`A000051(n)-(A103421(n+1)+1)`
-/

namespace A103422.P10657254464636580100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A103421 (n + 1) + 1)

end

end A103422.P10657254464636580100

/-! ## A103422.P14001162606947182958

`-((A103421(n+1)-A000079(n))*A007318(C(n, 2)))`
-/

namespace A103422.P14001162606947182958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A103421 (n + 1) - A000079 n) * A007318 (Nat.choose n 2))

end

end A103422.P14001162606947182958

/-!
# A103424: Expansion of e.g.f.: 1 + sinh(2*x).

The programs for A103424, the canonical program `A103424.P7963614044959633726` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103424 has offset 0).

The definition of A103424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103424.P7963614044959633726

`Δ[or(1, n)]^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103424

/-- `Δ[or(1, n)]^n` -/
def P7963614044959633726.Spec : Prop :=
  ∀ n, P7963614044959633726.a n = A103424 n

theorem P7963614044959633726.correct : P7963614044959633726.Spec := by
  intro n
  simp only [A103424]

end A103424

/-! ## A103424.P1035235463813957163

`(2*n%2)^n`
-/

namespace A103424.P1035235463813957163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n % 2)) ^ n

end

end A103424.P1035235463813957163

namespace A103424

/-- `(2*n%2)^n` -/
def P1035235463813957163.Spec : Prop :=
  ∀ n, (P1035235463813957163.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P16590057471027768616

`(2*and(1, n))^n`
-/

namespace A103424.P16590057471027768616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n) ^ n

end

end A103424.P16590057471027768616

namespace A103424

/-- `(2*and(1, n))^n` -/
def P16590057471027768616.Spec : Prop :=
  ∀ n, (P16590057471027768616.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P12766887046352910604

`lcm(2, and(1, n))^n`
-/

namespace A103424.P12766887046352910604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.land 1 n) ^ n

end

end A103424.P12766887046352910604

namespace A103424

/-- `lcm(2, and(1, n))^n` -/
def P12766887046352910604.Spec : Prop :=
  ∀ n, (P12766887046352910604.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P6069326376835879592

`and(2, -n²)^n`
-/

namespace A103424.P6069326376835879592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n ^ 2 : ℤ)) ^ n

end

end A103424.P6069326376835879592

namespace A103424

/-- `and(2, -n²)^n` -/
def P6069326376835879592.Spec : Prop :=
  ∀ n, P6069326376835879592.a n = A103424 n

end A103424

/-! ## A103424.P3695625381627536549

`Δ[and(n, -2)]^n`
-/

namespace A103424.P3695625381627536549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A103424.P3695625381627536549

namespace A103424

/-- `Δ[and(n, -2)]^n` -/
def P3695625381627536549.Spec : Prop :=
  ∀ n, P3695625381627536549.a n = A103424 n

end A103424

/-! ## A103424.P13706336819594211115

`(1-(-1)^n)^n`
-/

namespace A103424.P13706336819594211115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ n) ^ n

end

end A103424.P13706336819594211115

namespace A103424

/-- `(1-(-1)^n)^n` -/
def P13706336819594211115.Spec : Prop :=
  ∀ n, P13706336819594211115.a n = A103424 n

end A103424

/-! ## A103424.P4353885655880957503

`and((-1)^n, 2^n)`
-/

namespace A103424.P4353885655880957503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (2 ^ n : ℤ)

end

end A103424.P4353885655880957503

namespace A103424

/-- `and((-1)^n, 2^n)` -/
def P4353885655880957503.Spec : Prop :=
  ∀ n, P4353885655880957503.a n = A103424 n

end A103424

/-! ## A103424.P6710536826264513291

`ogf((1+2x-4x^2)/(1-4x^2))`
-/

namespace A103424.P6710536826264513291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4] [1, 0, -4] n

end

end A103424.P6710536826264513291

namespace A103424

/-- `ogf((1+2x-4x^2)/(1-4x^2))` -/
def P6710536826264513291.Spec : Prop :=
  ∀ n, P6710536826264513291.a n = A103424 n

end A103424

/-! ## A103424.P15080054672290396121

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A103424.P15080054672290396121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  4 * a (n - 2)

end

end A103424.P15080054672290396121

namespace A103424

/-- `4*a(n-2)` -/
def P15080054672290396121.Spec : Prop :=
  ∀ n, (P15080054672290396121.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P4315566641562181706

`∑{p}[n+3, val(#², 2)^n]`
-/

namespace A103424.P4315566641562181706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2) 2 ^ n

end

end A103424.P4315566641562181706

namespace A103424

/-- `∑{p}[n+3, val(#², 2)^n]` -/
def P4315566641562181706.Spec : Prop :=
  ∀ n, (P4315566641562181706.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P6427993110844973674

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A103424.P6427993110844973674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A103424.P6427993110844973674

namespace A103424

/-- `a(n-2)/(1/2)²` -/
def P6427993110844973674.Spec : Prop :=
  ∀ n, P6427993110844973674.a n = (A103424 n : ℚ)

end A103424

/-! ## A103424.P6185348507940151602

`floor(a(n-2)/(1-3/4))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A103424.P6185348507940151602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A103424.P6185348507940151602

namespace A103424

/-- `floor(a(n-2)/(1-3/4))` -/
def P6185348507940151602.Spec : Prop :=
  ∀ n, P6185348507940151602.a n = A103424 n

end A103424

/-! ## A103424.P13040989756150576031

`a(n-2)+lcm(3, a(n-2))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A103424.P13040989756150576031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 2))

end

end A103424.P13040989756150576031

namespace A103424

/-- `a(n-2)+lcm(3, a(n-2))` -/
def P13040989756150576031.Spec : Prop :=
  ∀ n, (P13040989756150576031.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P16807779068502031050

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A103424.P16807779068502031050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A103424.P16807779068502031050

namespace A103424

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P16807779068502031050.Spec : Prop :=
  ∀ n, (P16807779068502031050.a n : ℤ) = A103424 n

end A103424

/-! ## A103424.P2959986679297510276

`floor((A277936(n)+1)/2)`
-/

namespace A103424.P2959986679297510276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277936 n + 1 : ℚ) / 2⌋

end

end A103424.P2959986679297510276

namespace A103424

/-- `floor((A277936(n)+1)/2)` -/
def P2959986679297510276.Spec : Prop :=
  ∀ n, P2959986679297510276.a n = A103424 n

end A103424

/-! ## A103424.P8106486303979118527

`A199573((n+1)%(2*n+1))`
-/

namespace A103424.P8106486303979118527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 ((n + 1) % (2 * n + 1))

end

end A103424.P8106486303979118527

namespace A103424

/-- `A199573((n+1)%(2*n+1))` -/
def P8106486303979118527.Spec : Prop :=
  ∀ n, P8106486303979118527.a n = A103424 n

end A103424

/-! ## A103424.P12792488037409641959

`A131575(A014601(n))`
-/

namespace A103424.P12792488037409641959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A014601 n).toNat

end

end A103424.P12792488037409641959

namespace A103424

/-- `A131575(A014601(n))` -/
def P12792488037409641959.Spec : Prop :=
  ∀ n, P12792488037409641959.a n = A103424 n

end A103424

/-! ## A103424.P17413723959287756509

`A131575(A059029(n))`
-/

namespace A103424.P17413723959287756509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A059029 n).toNat

end

end A103424.P17413723959287756509

namespace A103424

/-- `A131575(A059029(n))` -/
def P17413723959287756509.Spec : Prop :=
  ∀ n, P17413723959287756509.a n = A103424 n

end A103424

/-! ## A103424.P3367166885836835716

`A199573(A014681(n))`
-/

namespace A103424.P3367166885836835716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 (A014681 n).toNat

end

end A103424.P3367166885836835716

namespace A103424

/-- `A199573(A014681(n))` -/
def P3367166885836835716.Spec : Prop :=
  ∀ n, P3367166885836835716.a n = A103424 n

end A103424

/-!
# A103425: a(n) = 3*a(n-1) + a(n-2) - 3*a(n-3).

The programs for A103425, the canonical program `A103425.P12452645580836651238` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103425 has offset 0).

The definition of A103425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-3*a(n-3)` (program `A103425.P12452645580836651238`, by `A103425.P12452645580836651238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103425.P12452645580836651238

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103425

/-- `3*a(n-1)+a(n-2)-3*a(n-3)` -/
def P12452645580836651238.Spec : Prop :=
  ∀ n, P12452645580836651238.a n = A103425 n

theorem P12452645580836651238.correct : P12452645580836651238.Spec := by
  intro n
  simp only [A103425]

end A103425

/-! ## A103425.P11452609393613927083

`1+(3^n-(-1)^n)/2`
-/

namespace A103425.P11452609393613927083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((3 ^ n : ℤ) - (-1) ^ n : ℚ) / 2

end

end A103425.P11452609393613927083

namespace A103425

/-- `1+(3^n-(-1)^n)/2` -/
def P11452609393613927083.Spec : Prop :=
  ∀ n, P11452609393613927083.a n = (A103425 n : ℚ)

theorem P11452609393613927083.correct : P11452609393613927083.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A103425, Nat.add_sub_cancel, A103425.P11452609393613927083.a, A103425.P12452645580836651238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A103425, Nat.add_sub_cancel, A103425.P11452609393613927083.a, A103425.P12452645580836651238.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103425

/-! ## A103425.P3416212379699165052

`or(1, ∑[ceil(3^(n-1))])`
-/

namespace A103425.P3416212379699165052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103425.P3416212379699165052

namespace A103425

/-- `or(1, ∑[ceil(3^(n-1))])` -/
def P3416212379699165052.Spec : Prop :=
  ∀ n, P3416212379699165052.a n = A103425 n

end A103425

/-! ## A103425.P10148116630798415895

`∑[ogf((-1+5x^2)/(-1+2x+3x^2))]`
-/

namespace A103425.P10148116630798415895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103425.P10148116630798415895

namespace A103425

/-- `∑[ogf((-1+5x^2)/(-1+2x+3x^2))]` -/
def P10148116630798415895.Spec : Prop :=
  ∀ n, P10148116630798415895.a n = A103425 n

end A103425

/-! ## A103425.P6710022926270609685

`ogf((1-5x^2)/(1-3x-x^2+3x^3))`
-/

namespace A103425.P6710022926270609685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5] [1, -3, -1, 3] n

end

end A103425.P6710022926270609685

namespace A103425

/-- `ogf((1-5x^2)/(1-3x-x^2+3x^3))` -/
def P6710022926270609685.Spec : Prop :=
  ∀ n, P6710022926270609685.a n = A103425 n

end A103425

/-! ## A103425.P1707853806520716109

`xor(2, 3*a(n-1)-2)` with `a(0)=1`
-/

namespace A103425.P1707853806520716109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (3 * a (n - 1) - 2)

end

end A103425.P1707853806520716109

namespace A103425

/-- `xor(2, 3*a(n-1)-2)` -/
def P1707853806520716109.Spec : Prop :=
  ∀ n, P1707853806520716109.a n = A103425 n

end A103425

/-! ## A103425.P421232348433939902

`xor(∑[ceil(3^(n-1))], char[2*n+1])`
-/

namespace A103425.P421232348433939902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A103425.P421232348433939902

namespace A103425

/-- `xor(∑[ceil(3^(n-1))], char[2*n+1])` -/
def P421232348433939902.Spec : Prop :=
  ∀ n, P421232348433939902.a n = A103425 n

end A103425

/-! ## A103425.P16243963458303531496

`abs(or(1, A341463(n)))`
-/

namespace A103425.P16243963458303531496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (A341463 n)|

end

end A103425.P16243963458303531496

namespace A103425

/-- `abs(or(1, A341463(n)))` -/
def P16243963458303531496.Spec : Prop :=
  ∀ n, P16243963458303531496.a n = A103425 n

end A103425

/-! ## A103425.P1827343709371074387

`∑[or(2, A140429(n))-1]`
-/

namespace A103425.P1827343709371074387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A140429 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103425.P1827343709371074387

namespace A103425

/-- `∑[or(2, A140429(n))-1]` -/
def P1827343709371074387.Spec : Prop :=
  ∀ n, P1827343709371074387.a n = A103425 n

end A103425

/-! ## A103425.P15124361327403761859

`Δ[A122983(n)+n]`
-/

namespace A103425.P15124361327403761859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103425.P15124361327403761859

namespace A103425

/-- `Δ[A122983(n)+n]` -/
def P15124361327403761859.Spec : Prop :=
  ∀ n, P15124361327403761859.a n = A103425 n

end A103425

/-! ## A103425.P7849155298813001492

`∑[abs(A287479(2*n)+1)]`
-/

namespace A103425.P7849155298813001492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287479 (2 * n) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103425.P7849155298813001492

namespace A103425

/-- `∑[abs(A287479(2*n)+1)]` -/
def P7849155298813001492.Spec : Prop :=
  ∀ n, P7849155298813001492.a n = A103425 n

end A103425

/-! ## A103425.P7477074757315959160

`(A010684(n)+A000244(n))/2`
-/

namespace A103425.P7477074757315959160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010684 n + A000244 n : ℚ) / 2

end

end A103425.P7477074757315959160

namespace A103425

/-- `(A010684(n)+A000244(n))/2` -/
def P7477074757315959160.Spec : Prop :=
  ∀ n, P7477074757315959160.a n = (A103425 n : ℚ)

end A103425

/-! ## A103425.P4125670098795923025

`floor(A000034(n)+A000244(n)/2)`
-/

namespace A103425.P4125670098795923025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000034 n : ℚ) + (A000244 n : ℚ) / 2⌋

end

end A103425.P4125670098795923025

namespace A103425

/-- `floor(A000034(n)+A000244(n)/2)` -/
def P4125670098795923025.Spec : Prop :=
  ∀ n, P4125670098795923025.a n = A103425 n

end A103425

/-! ## A103425.P17434309569467037003

`round((A024023(n)+3-A109613(n)+n)/2)`
-/

namespace A103425.P17434309569467037003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024023 n + (3 - A109613 n + (n : ℤ)) : ℚ) / 2)

end

end A103425.P17434309569467037003

namespace A103425

/-- `round((A024023(n)+3-A109613(n)+n)/2)` -/
def P17434309569467037003.Spec : Prop :=
  ∀ n, P17434309569467037003.a n = A103425 n

end A103425

/-! ## A103425.P5591352073686878412

`∪[A007051(2*n+1)+1, A007051(2*n)]`
-/

namespace A103425.P5591352073686878412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103425.P5591352073686878412

namespace A103425

/-- `∪[A007051(2*n+1)+1, A007051(2*n)]` -/
def P5591352073686878412.Spec : Prop :=
  ∀ n, (P5591352073686878412.a n : ℤ) = A103425 n

end A103425

/-! ## A103425.P8658748586782070241

`(A000244(n)-A057077(A016969(n))+2)/2`
-/

namespace A103425.P8658748586782070241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A057077 (A016969 n).toNat + 2 : ℚ) / 2

end

end A103425.P8658748586782070241

namespace A103425

/-- `(A000244(n)-A057077(A016969(n))+2)/2` -/
def P8658748586782070241.Spec : Prop :=
  ∀ n, P8658748586782070241.a n = (A103425 n : ℚ)

end A103425

/-! ## A103425.P13289428256604044358

`A005030(n)%A081251(n+1)`
-/

namespace A103425.P13289428256604044358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005030 n) (A081251 (n + 1))

end

end A103425.P13289428256604044358

namespace A103425

/-- `A005030(n)%A081251(n+1)` -/
def P13289428256604044358.Spec : Prop :=
  ∀ n, P13289428256604044358.a n = A103425 n

end A103425

/-! ## A103425.P1625518249680244791

`(A010684(n)+sqrt(A001019(n)))/2`
-/

namespace A103425.P1625518249680244791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A010684 n : ℝ) + Real.sqrt (A001019 n : ℝ)) / 2

end

end A103425.P1625518249680244791

namespace A103425

/-- `(A010684(n)+sqrt(A001019(n)))/2` -/
def P1625518249680244791.Spec : Prop :=
  ∀ n, P1625518249680244791.a n = (A103425 n : ℝ)

end A103425

/-!
# A103426: (1/4)*Number of non-degenerate triangles that can be formed from the points of an (n+1)X(n+1)X(n+1) lattice cube.

The programs for A103426, there is no canonical definition to state claims against.
-/

/-! ## A103426.P15694957353771933074

`A103500(n+1)+3*A103427(n+1)`
-/

namespace A103426.P15694957353771933074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103500 (n + 1) + 3 * A103427 (n + 1)

end

end A103426.P15694957353771933074

/-!
# A103427: (1/12) * Number of non-degenerate scalene triangles that can be formed from the points of an (n+1) X (n+1) X (n+1) lattice cube.

The programs for A103427, there is no canonical definition to state claims against.
-/

/-! ## A103427.P393110874113915134

`(A103426(n+1)-A103500(n+1))/3`
-/

namespace A103427.P393110874113915134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103426 (n + 1) - A103500 (n + 1) : ℚ) / 3

end

end A103427.P393110874113915134

/-!
# A103431: Subsequence of the Gaussian primes, where only Gaussian primes a+bi with a>0, b>=0 are listed. Ordered by the norm N(a+bi)=a^2+b^2 and the size of the real part, when the norms are equal. a(n) is the real part of the Gaussian prime. Sequence A103432 gives the imaginary parts.

The programs for A103431, there is no canonical definition to state claims against.
-/

/-! ## A103431.P5727067852447444683

`A023531(A000108(n))+A007879(n)`
-/

namespace A103431.P5727067852447444683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A000108 n).toNat + A007879 n

end

end A103431.P5727067852447444683

/-! ## A103431.P3096676218355210088

`A152271(n)+A003849(A016743(n))`
-/

namespace A103431.P3096676218355210088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + A003849 (A016743 n).toNat

end

end A103431.P3096676218355210088

/-! ## A103431.P16407728746745635722

`A248034(n)+A010054(A229958(n+1))`
-/

namespace A103431.P16407728746745635722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n + A010054 (A229958 (n + 1)).toNat

end

end A103431.P16407728746745635722

/-! ## A103431.P16606211455368739506

`A325352(n+1)+A189624(A001333(n))`
-/

namespace A103431.P16606211455368739506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (n + 1) + A189624 (A001333 n).toNat

end

end A103431.P16606211455368739506

/-! ## A103431.P11804694287336709458

`A353846(A098504(n))+A325352(n+1)`
-/

namespace A103431.P11804694287336709458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A098504 n).toNat + A325352 (n + 1)

end

end A103431.P11804694287336709458

/-!
# A103432: Subsequence of the Gaussian primes, where only Gaussian primes a+bi with a>0, b>=0 are listed. Ordered by the norm N(a+bi)=a^2+b^2 and the size of the real part when the norms are equal. The sequence gives the imaginary parts. See A103431 for the real parts.

The programs for A103432, there is no canonical definition to state claims against.
-/

/-! ## A103432.P5860914970916759080

`A239621(lt[1, n*A239621(n+1)])`
-/

namespace A103432.P5860914970916759080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A239621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A103432.P5860914970916759080

/-! ## A103432.P5439645726865809338

`A239621(lt[C(2, n), A239621(n+1)])`
-/

namespace A103432.P5439645726865809338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A103432.P5439645726865809338

/-! ## A103432.P757600544201521929

`A239397(lt[A199572(n), A239397(n+1)])`
-/

namespace A103432.P757600544201521929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103432.P757600544201521929

/-! ## A103432.P9942554277265541

`A239397(lt[A079977(3*n), A239397(n+1)])`
-/

namespace A103432.P9942554277265541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103432.P9942554277265541

/-!
# A103433: a(n) = Sum_{i=1..n} Fibonacci(2i-1)^2.

The programs for A103433, the canonical program `A103433.P6194559142303920155` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103433 has offset 0).

The definition of A103433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103433.P6194559142303920155

`(A000045(4*n)+2*n)/5`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103433

/-- `(A000045(4*n)+2*n)/5` -/
def P6194559142303920155.Spec : Prop :=
  ∀ n, P6194559142303920155.a n = (A103433 n : ℚ)

end A103433

/-! ## A103433.P10108746420322740503

`∑[A001519(n)²]-1`
-/

namespace A103433.P10108746420322740503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103433.P10108746420322740503

namespace A103433

/-- `∑[A001519(n)²]-1` -/
def P10108746420322740503.Spec : Prop :=
  ∀ n, P10108746420322740503.a n = A103433 n

end A103433

/-! ## A103433.P12202958248038605273

`∑[(1-A186025(n))²]`
-/

namespace A103433.P12202958248038605273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A186025 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P12202958248038605273

namespace A103433

/-- `∑[(1-A186025(n))²]` -/
def P12202958248038605273.Spec : Prop :=
  ∀ n, P12202958248038605273.a n = A103433 n

end A103433

/-! ## A103433.P12767314055563803994

`∑[(A052995(n)/2)²]`
-/

namespace A103433.P12767314055563803994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052995 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P12767314055563803994

namespace A103433

/-- `∑[(A052995(n)/2)²]` -/
def P12767314055563803994.Spec : Prop :=
  ∀ n, P12767314055563803994.a n = (A103433 n : ℚ)

end A103433

/-! ## A103433.P5026446255715836485

`∑[(1-A093467(n+1))²]`
-/

namespace A103433.P5026446255715836485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A093467 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P5026446255715836485

namespace A103433

/-- `∑[(1-A093467(n+1))²]` -/
def P5026446255715836485.Spec : Prop :=
  ∀ n, P5026446255715836485.a n = A103433 n

end A103433

/-! ## A103433.P2290793656285544188

`∑[A087123(2*n)²]-1`
-/

namespace A103433.P2290793656285544188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103433.P2290793656285544188

namespace A103433

/-- `∑[A087123(2*n)²]-1` -/
def P2290793656285544188.Spec : Prop :=
  ∀ n, P2290793656285544188.a n = A103433 n

end A103433

/-! ## A103433.P14646748304106792482

`∑[A212804(2*n)²]-1`
-/

namespace A103433.P14646748304106792482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103433.P14646748304106792482

namespace A103433

/-- `∑[A212804(2*n)²]-1` -/
def P14646748304106792482.Spec : Prop :=
  ∀ n, P14646748304106792482.a n = A103433 n

end A103433

/-! ## A103433.P1428887771154173662

`∑[A000045(comp[2*(n+1)])²]`
-/

namespace A103433.P1428887771154173662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P1428887771154173662

namespace A103433

/-- `∑[A000045(comp[2*(n+1)])²]` -/
def P1428887771154173662.Spec : Prop :=
  ∀ n, P1428887771154173662.a n = A103433 n

end A103433

/-! ## A103433.P4035136529393865633

`∑[record[A000045(lcm(16, n)/16)²]]`
-/

namespace A103433.P4035136529393865633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P4035136529393865633

namespace A103433

/-- `∑[record[A000045(lcm(16, n)/16)²]]` -/
def P4035136529393865633.Spec : Prop :=
  ∀ n, P4035136529393865633.a n = A103433 n

end A103433

/-! ## A103433.P15485431006622703898

`∑[floor((1-ϕ)*A000045(2*n))²]`
-/

namespace A103433.P15485431006622703898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.goldenRatio) * (A000045 (2 * n) : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P15485431006622703898

namespace A103433

/-- `∑[floor((1-ϕ)*A000045(2*n))²]` -/
def P15485431006622703898.Spec : Prop :=
  ∀ n, P15485431006622703898.a n = A103433 n

end A103433

/-! ## A103433.P9853651477548609042

`∑[∑[A000045(abs(2*(1-n)))]²]-1`
-/

namespace A103433.P9853651477548609042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 * (1 - (n : ℤ))|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103433.P9853651477548609042

namespace A103433

/-- `∑[∑[A000045(abs(2*(1-n)))]²]-1` -/
def P9853651477548609042.Spec : Prop :=
  ∀ n, P9853651477548609042.a n = A103433 n

end A103433

/-! ## A103433.P15730968537524364326

`∑[A000045(comp[2*(n-char[1])])²]-1`
-/

namespace A103433.P15730968537524364326
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103433.P15730968537524364326

namespace A103433

/-- `∑[A000045(comp[2*(n-char[1])])²]-1` -/
def P15730968537524364326.Spec : Prop :=
  ∀ n, P15730968537524364326.a n = A103433 n

end A103433

/-! ## A103433.P16031698009415520658

`a(n-1)+A000045(2*n-1)²` with `a(0)=0`
-/

namespace A103433.P16031698009415520658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000045 (2 * n - 1) ^ 2

end

end A103433.P16031698009415520658

namespace A103433

/-- `a(n-1)+A000045(2*n-1)²` -/
def P16031698009415520658.Spec : Prop :=
  ∀ n, P16031698009415520658.a n = A103433 n

end A103433

/-! ## A103433.P9484017997810653298

`floor(a(n-1)+A000045(n-1+n)²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A103433.P9484017997810653298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000045 ((n : ℤ) - 1 + (n : ℤ)).toNat ^ 2

end

end A103433.P9484017997810653298

namespace A103433

/-- `floor(a(n-1)+A000045(n-1+n)²)` -/
def P9484017997810653298.Spec : Prop :=
  ∀ n, P9484017997810653298.a n = A103433 n

end A103433

/-! ## A103433.P5058094396202072334

`A115059(A113127(n))`
-/

namespace A103433.P5058094396202072334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115059 (A113127 n).toNat

end

end A103433.P5058094396202072334

namespace A103433

/-- `A115059(A113127(n))` -/
def P5058094396202072334.Spec : Prop :=
  ∀ n, P5058094396202072334.a n = A103433 n

end A103433

/-! ## A103433.P11979143850266804195

`A115059(A130824(n))`
-/

namespace A103433.P11979143850266804195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115059 (A130824 n).toNat

end

end A103433.P11979143850266804195

namespace A103433

/-- `A115059(A130824(n))` -/
def P11979143850266804195.Spec : Prop :=
  ∀ n, P11979143850266804195.a n = A103433 n

end A103433

/-! ## A103433.P14203279054776035359

`∑[A007598(A004273(n))]`
-/

namespace A103433.P14203279054776035359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P14203279054776035359

namespace A103433

/-- `∑[A007598(A004273(n))]` -/
def P14203279054776035359.Spec : Prop :=
  ∀ n, P14203279054776035359.a n = A103433 n

end A103433

/-! ## A103433.P13765363276251973928

`A115059(A111284(n+1))`
-/

namespace A103433.P13765363276251973928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115059 (A111284 (n + 1)).toNat

end

end A103433.P13765363276251973928

namespace A103433

/-- `A115059(A111284(n+1))` -/
def P13765363276251973928.Spec : Prop :=
  ∀ n, P13765363276251973928.a n = A103433 n

end A103433

/-! ## A103433.P4507620028938025754

`∑[A212804(A004277(n))²]`
-/

namespace A103433.P4507620028938025754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A004277 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103433.P4507620028938025754

namespace A103433

/-- `∑[A212804(A004277(n))²]` -/
def P4507620028938025754.Spec : Prop :=
  ∀ n, P4507620028938025754.a n = A103433 n

end A103433

/-!
# A103434: a(n) = Sum_{i=1..n} Fibonacci(2i)^2.

The programs for A103434, the canonical program `A103434.P2183364077100428592` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103434 has offset 0).

The definition of A103434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103434.P2183364077100428592

`1/5*(A000045(4*n+2)-2*n-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103434

/-- `1/5*(A000045(4*n+2)-2*n-1)` -/
def P2183364077100428592.Spec : Prop :=
  ∀ n, P2183364077100428592.a n = (A103434 n : ℚ)

end A103434

/-! ## A103434.P6201310393928210542

`∑[A049684(n)]`
-/

namespace A103434.P6201310393928210542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P6201310393928210542

namespace A103434

/-- `∑[A049684(n)]` -/
def P6201310393928210542.Spec : Prop :=
  ∀ n, P6201310393928210542.a n = A103434 n

end A103434

/-! ## A103434.P12529091318486850137

`A115059(4*n)`
-/

namespace A103434.P12529091318486850137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115059 (4 * n)

end

end A103434.P12529091318486850137

namespace A103434

/-- `A115059(4*n)` -/
def P12529091318486850137.Spec : Prop :=
  ∀ n, P12529091318486850137.a n = A103434 n

end A103434

/-! ## A103434.P8255612826689015097

`∑[A001906(n)²]`
-/

namespace A103434.P8255612826689015097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P8255612826689015097

namespace A103434

/-- `∑[A001906(n)²]` -/
def P8255612826689015097.Spec : Prop :=
  ∀ n, P8255612826689015097.a n = A103434 n

end A103434

/-! ## A103434.P10829898010451059859

`∑[A007598(2*n)]`
-/

namespace A103434.P10829898010451059859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P10829898010451059859

namespace A103434

/-- `∑[A007598(2*n)]` -/
def P10829898010451059859.Spec : Prop :=
  ∀ n, P10829898010451059859.a n = A103434 n

end A103434

/-! ## A103434.P106482394001594828

`∑[A357553(4*n)]`
-/

namespace A103434.P106482394001594828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357553 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P106482394001594828

namespace A103434

/-- `∑[A357553(4*n)]` -/
def P106482394001594828.Spec : Prop :=
  ∀ n, P106482394001594828.a n = A103434 n

end A103434

/-! ## A103434.P11083721989018414999

`∑[Δ[A001519(n)]²]`
-/

namespace A103434.P11083721989018414999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P11083721989018414999

namespace A103434

/-- `∑[Δ[A001519(n)]²]` -/
def P11083721989018414999.Spec : Prop :=
  ∀ n, P11083721989018414999.a n = A103434 n

end A103434

/-! ## A103434.P9255047587201898544

`∑[Δ[A032908(n)]²]`
-/

namespace A103434.P9255047587201898544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P9255047587201898544

namespace A103434

/-- `∑[Δ[A032908(n)]²]` -/
def P9255047587201898544.Spec : Prop :=
  ∀ n, P9255047587201898544.a n = A103434 n

end A103434

/-! ## A103434.P10175753902694619708

`∑[(1-A055588(n))²]`
-/

namespace A103434.P10175753902694619708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A055588 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P10175753902694619708

namespace A103434

/-- `∑[(1-A055588(n))²]` -/
def P10175753902694619708.Spec : Prop :=
  ∀ n, P10175753902694619708.a n = A103434 n

end A103434

/-! ## A103434.P16930894855890916083

`∑[A088305(n)²]-1`
-/

namespace A103434.P16930894855890916083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103434.P16930894855890916083

namespace A103434

/-- `∑[A088305(n)²]-1` -/
def P16930894855890916083.Spec : Prop :=
  ∀ n, P16930894855890916083.a n = A103434 n

end A103434

/-! ## A103434.P817929675620005152

`∑[(A249450(n)+2)²]`
-/

namespace A103434.P817929675620005152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249450 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P817929675620005152

namespace A103434

/-- `∑[(A249450(n)+2)²]` -/
def P817929675620005152.Spec : Prop :=
  ∀ n, P817929675620005152.a n = A103434 n

end A103434

/-! ## A103434.P15831731432896659172

`∑[A000045(2*n)²]`
-/

namespace A103434.P15831731432896659172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P15831731432896659172

namespace A103434

/-- `∑[A000045(2*n)²]` -/
def P15831731432896659172.Spec : Prop :=
  ∀ n, P15831731432896659172.a n = A103434 n

end A103434

/-! ## A103434.P6414497927611382323

`∑[A005013(2*n)²]`
-/

namespace A103434.P6414497927611382323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P6414497927611382323

namespace A103434

/-- `∑[A005013(2*n)²]` -/
def P6414497927611382323.Spec : Prop :=
  ∀ n, P6414497927611382323.a n = A103434 n

end A103434

/-! ## A103434.P4753692486851494852

`∑[A094966(2*n)²]`
-/

namespace A103434.P4753692486851494852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P4753692486851494852

namespace A103434

/-- `∑[A094966(2*n)²]` -/
def P4753692486851494852.Spec : Prop :=
  ∀ n, P4753692486851494852.a n = A103434 n

end A103434

/-! ## A103434.P7378528075306989167

`∑[A109522(2*n)²]`
-/

namespace A103434.P7378528075306989167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P7378528075306989167

namespace A103434

/-- `∑[A109522(2*n)²]` -/
def P7378528075306989167.Spec : Prop :=
  ∀ n, P7378528075306989167.a n = A103434 n

end A103434

/-! ## A103434.P4871167763061543062

`∑[A135994(2*n)²]`
-/

namespace A103434.P4871167763061543062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135994 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P4871167763061543062

namespace A103434

/-- `∑[A135994(2*n)²]` -/
def P4871167763061543062.Spec : Prop :=
  ∀ n, P4871167763061543062.a n = A103434 n

end A103434

/-! ## A103434.P13493163503832968800

`∑[A236191(2*n)²]`
-/

namespace A103434.P13493163503832968800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P13493163503832968800

namespace A103434

/-- `∑[A236191(2*n)²]` -/
def P13493163503832968800.Spec : Prop :=
  ∀ n, P13493163503832968800.a n = A103434 n

end A103434

/-! ## A103434.P17829784569303269053

`∑[A333378(2*n)²]`
-/

namespace A103434.P17829784569303269053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P17829784569303269053

namespace A103434

/-- `∑[A333378(2*n)²]` -/
def P17829784569303269053.Spec : Prop :=
  ∀ n, P17829784569303269053.a n = A103434 n

end A103434

/-! ## A103434.P11254159138125078759

`∑[(A054452(n)+n)²]`
-/

namespace A103434.P11254159138125078759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054452 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P11254159138125078759

namespace A103434

/-- `∑[(A054452(n)+n)²]` -/
def P11254159138125078759.Spec : Prop :=
  ∀ n, P11254159138125078759.a n = A103434 n

end A103434

/-!
# A103435: a(n) = 2^n * Fibonacci(n).

The programs for A103435, the canonical program `A103435.P5733607655013083088` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103435 has offset 0).

The definition of A103435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*A000045(n)` (program `A103435.P5733607655013083088`, by `A103435.P5733607655013083088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103435.P13052167630817308825

`2*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A103435.P13052167630817308825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2)

end

end A103435.P13052167630817308825

namespace A103435

/-- `2*a(n-1)+4*a(n-2)` -/
def P13052167630817308825.Spec : Prop :=
  ∀ n, (P13052167630817308825.a n : ℤ) = A103435 n

end A103435

/-! ## A103435.P4808696966008972383

`2*A085449(n)`
-/

namespace A103435.P4808696966008972383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085449 n

end

end A103435.P4808696966008972383

namespace A103435

/-- `2*A085449(n)` -/
def P4808696966008972383.Spec : Prop :=
  ∀ n, P4808696966008972383.a n = A103435 n

end A103435

/-! ## A103435.P5733607655013083088

`2^n*A000045(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103435

/-- `2^n*A000045(n)` -/
def P5733607655013083088.Spec : Prop :=
  ∀ n, P5733607655013083088.a n = A103435 n

theorem P5733607655013083088.correct : P5733607655013083088.Spec := by
  intro n
  simp only [A103435]

end A103435

/-! ## A103435.P13031136474013845542

`ogf(2x/(1-2x-4x^2))`
-/

namespace A103435.P13031136474013845542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -4] n

end

end A103435.P13031136474013845542

namespace A103435

/-- `ogf(2x/(1-2x-4x^2))` -/
def P13031136474013845542.Spec : Prop :=
  ∀ n, P13031136474013845542.a n = A103435 n

end A103435

/-! ## A103435.P2310352326145839890

`2^n*round(ϕ^n/sqrt(5))`
-/

namespace A103435.P2310352326145839890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A103435.P2310352326145839890

namespace A103435

/-- `2^n*round(ϕ^n/sqrt(5))` -/
def P2310352326145839890.Spec : Prop :=
  ∀ n, P2310352326145839890.a n = A103435 n

end A103435

/-! ## A103435.P6083623279747966913

`Δ[A014334(n)]`
-/

namespace A103435.P6083623279747966913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103435.P6083623279747966913

namespace A103435

/-- `Δ[A014334(n)]` -/
def P6083623279747966913.Spec : Prop :=
  ∀ n, P6083623279747966913.a n = A103435 n

end A103435

/-! ## A103435.P18008195826963307188

`A006483(n)-1`
-/

namespace A103435.P18008195826963307188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006483 n - 1

end

end A103435.P18008195826963307188

namespace A103435

/-- `A006483(n)-1` -/
def P18008195826963307188.Spec : Prop :=
  ∀ n, P18008195826963307188.a n = A103435 n

theorem P18008195826963307188.correct : P18008195826963307188.Spec := by
  intro n
  simp only [A103435, Nat.add_sub_cancel, A103435.P18008195826963307188.a, A103435.P5733607655013083088.a, A000045, A000045.P11838749114346432762.a, A006483, A006483.P1423349417915343725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103435

/-! ## A103435.P1103334641067044998

`A209084(n)/2`
-/

namespace A103435.P1103334641067044998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209084 n : ℚ) / 2

end

end A103435.P1103334641067044998

namespace A103435

/-- `A209084(n)/2` -/
def P1103334641067044998.Spec : Prop :=
  ∀ n, P1103334641067044998.a n = (A103435 n : ℚ)

end A103435

/-! ## A103435.P987859063130525978

`Δ[2*A014335(n)]`
-/

namespace A103435.P987859063130525978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103435.P987859063130525978

namespace A103435

/-- `Δ[2*A014335(n)]` -/
def P987859063130525978.Spec : Prop :=
  ∀ n, P987859063130525978.a n = A103435 n

end A103435

/-! ## A103435.P13626276465533280384

`abs(A086344(n+1)/2)`
-/

namespace A103435.P13626276465533280384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A086344 (n + 1) : ℚ) / 2|

end

end A103435.P13626276465533280384

namespace A103435

/-- `abs(A086344(n+1)/2)` -/
def P13626276465533280384.Spec : Prop :=
  ∀ n, P13626276465533280384.a n = (A103435 n : ℚ)

end A103435

/-! ## A103435.P4387122914845975835

`Δ[2^n/5*A000032(n)]`
-/

namespace A103435.P4387122914845975835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 5 * (A000032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103435.P4387122914845975835

namespace A103435

/-- `Δ[2^n/5*A000032(n)]` -/
def P4387122914845975835.Spec : Prop :=
  ∀ n, P4387122914845975835.a n = (A103435 n : ℚ)

end A103435

/-! ## A103435.P7858340642479685530

`A063782(n)-A084057(n)`
-/

namespace A103435.P7858340642479685530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n - A084057 n

end

end A103435.P7858340642479685530

namespace A103435

/-- `A063782(n)-A084057(n)` -/
def P7858340642479685530.Spec : Prop :=
  ∀ n, P7858340642479685530.a n = A103435 n

end A103435

/-! ## A103435.P11442474782229414929

`A093043(n+1)+A093042(n)`
-/

namespace A103435.P11442474782229414929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 (n + 1) + A093042 n

end

end A103435.P11442474782229414929

namespace A103435

/-- `A093043(n+1)+A093042(n)` -/
def P11442474782229414929.Spec : Prop :=
  ∀ n, P11442474782229414929.a n = A103435 n

end A103435

/-! ## A103435.P10612064008431118427

`A093045(n)+A093044(n+1)`
-/

namespace A103435.P10612064008431118427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093045 n + A093044 (n + 1)

end

end A103435.P10612064008431118427

namespace A103435

/-- `A093045(n)+A093044(n+1)` -/
def P10612064008431118427.Spec : Prop :=
  ∀ n, P10612064008431118427.a n = A103435 n

end A103435

/-! ## A103435.P5675118769624708178

`A014334(n+1)-A014334(n)`
-/

namespace A103435.P5675118769624708178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 (n + 1) - A014334 n

end

end A103435.P5675118769624708178

namespace A103435

/-- `A014334(n+1)-A014334(n)` -/
def P5675118769624708178.Spec : Prop :=
  ∀ n, P5675118769624708178.a n = A103435 n

end A103435

/-! ## A103435.P6341720605706409486

`A063727(n)+A063727(n)-A087131(n)`
-/

namespace A103435.P6341720605706409486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n + (A063727 n - A087131 n)

end

end A103435.P6341720605706409486

namespace A103435

/-- `A063727(n)+A063727(n)-A087131(n)` -/
def P6341720605706409486.Spec : Prop :=
  ∀ n, P6341720605706409486.a n = A103435 n

end A103435

/-! ## A103435.P10802591675390782828

`A000045(n)+A000045(n)*A000225(n)`
-/

namespace A103435.P10802591675390782828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000045 n * A000225 n

end

end A103435.P10802591675390782828

namespace A103435

/-- `A000045(n)+A000045(n)*A000225(n)` -/
def P10802591675390782828.Spec : Prop :=
  ∀ n, P10802591675390782828.a n = A103435 n

theorem P10802591675390782828.correct : P10802591675390782828.Spec := by
  intro n
  simp only [A103435, Nat.add_sub_cancel, A103435.P10802591675390782828.a, A103435.P5733607655013083088.a, A000045, A000045.P11838749114346432762.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103435

/-! ## A103435.P2272477363137634362

`A000045(n)*A000051(n)-A000045(n)`
-/

namespace A103435.P2272477363137634362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000051 n - A000045 n

end

end A103435.P2272477363137634362

namespace A103435

/-- `A000045(n)*A000051(n)-A000045(n)` -/
def P2272477363137634362.Spec : Prop :=
  ∀ n, P2272477363137634362.a n = A103435 n

theorem P2272477363137634362.correct : P2272477363137634362.Spec := by
  intro n
  simp only [A103435, Nat.add_sub_cancel, A103435.P2272477363137634362.a, A103435.P5733607655013083088.a, A000045, A000045.P11838749114346432762.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103435

/-! ## A103435.P16359629158527037135

`A000079(n)*A001611(n)-A000079(n)`
-/

namespace A103435.P16359629158527037135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001611 n - A000079 n

end

end A103435.P16359629158527037135

namespace A103435

/-- `A000079(n)*A001611(n)-A000079(n)` -/
def P16359629158527037135.Spec : Prop :=
  ∀ n, P16359629158527037135.a n = A103435 n

theorem P16359629158527037135.correct : P16359629158527037135.Spec := by
  intro n
  simp only [A103435, Nat.add_sub_cancel, A103435.P16359629158527037135.a, A103435.P5733607655013083088.a, A000045, A000045.P11838749114346432762.a, A000079, A000079.P10855139691139572931.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103435

/-! ## A103435.P12862091859429346037

`A000225(n)*A001611(n)-A228078(n)`
-/

namespace A103435.P12862091859429346037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A001611 n - A228078 n

end

end A103435.P12862091859429346037

namespace A103435

/-- `A000225(n)*A001611(n)-A228078(n)` -/
def P12862091859429346037.Spec : Prop :=
  ∀ n, P12862091859429346037.a n = A103435 n

theorem P12862091859429346037.correct : P12862091859429346037.Spec := by
  intro n
  simp only [A103435, Nat.add_sub_cancel, A103435.P12862091859429346037.a, A103435.P5733607655013083088.a, A000045, A000045.P11838749114346432762.a, A000225, A000225.P6535533121115206393.a, A001611, A001611.P16593652898942925329.a, A228078, A228078.P6171950031239297971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103435

/-!
# A103436: a(n) = Sum_{i>=1} i^n*Fibonacci(i)/2^i.

The programs for A103436, there is no canonical definition to state claims against.
-/

/-! ## A103436.P12697941296676123781

`2*A098799(n)`
-/

namespace A103436.P12697941296676123781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098799 n

end

end A103436.P12697941296676123781

/-! ## A103436.P9136652288505972566

`lcm(A010700(n), A098799(n))`
-/

namespace A103436.P9136652288505972566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010700 n) (A098799 n)

end

end A103436.P9136652288505972566

/-! ## A103436.P15777867586517696581

`A103437(n)-2*A302922(n)`
-/

namespace A103436.P15777867586517696581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103437 n - 2 * A302922 n

end

end A103436.P15777867586517696581

/-! ## A103436.P17960898584495155475

`lcm(2, A098799(A008554(n+1)))`
-/

namespace A103436.P17960898584495155475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A098799 (A008554 (n + 1)).toNat)

end

end A103436.P17960898584495155475

/-! ## A103436.P6910476079599380472

`A098799(A008554(n+1))+A098799(n)`
-/

namespace A103436.P6910476079599380472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098799 (A008554 (n + 1)).toNat + A098799 n

end

end A103436.P6910476079599380472

/-!
# A103437: Sum_{i>=1} (i^n*Lucas(i)/2^i).

The programs for A103437, there is no canonical definition to state claims against.
-/

/-! ## A103437.P1046630013100221831

`A302926(n%a(n-1)+1)` with `a(0)=4`
-/

namespace A103437.P1046630013100221831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A302926 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A103437.P1046630013100221831

/-! ## A103437.P659031808072000252

`A302926(n+1)-A000038(n)`
-/

namespace A103437.P659031808072000252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302926 (n + 1) - A000038 n

end

end A103437.P659031808072000252

/-! ## A103437.P2870197535774664319

`A302926(n+1)-2*A000007(n)`
-/

namespace A103437.P2870197535774664319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302926 (n + 1) - 2 * A000007 n

end

end A103437.P2870197535774664319

/-! ## A103437.P16681993124593099504

`A302926(n+1)+A000038(n)*A156706(n+1)`
-/

namespace A103437.P16681993124593099504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302926 (n + 1) + A000038 n * A156706 (n + 1)

end

end A103437.P16681993124593099504

/-! ## A103437.P15484245128230709499

`A302926(n+1)+(-A000038(n))^A000201(n+1)`
-/

namespace A103437.P15484245128230709499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302926 (n + 1) : ℚ) + (-A000038 n : ℚ) ^ (A000201 (n + 1) : ℤ)

end

end A103437.P15484245128230709499

/-!
# A103438: Square array T(m,n) read by antidiagonals: Sum_{k=1..n} k^m.

The programs for A103438, there is no canonical definition to state claims against.
-/

/-! ## A103438.P845507758100553138

`A192001(A038722(n+1))-A009998(n)`
-/

namespace A103438.P845507758100553138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192001 (A038722 (n + 1)).toNat - A009998 n

end

end A103438.P845507758100553138

/-! ## A103438.P5246807480606356962

`A192001(A185869(n+1)-A016777(n))-A009998(n)`
-/

namespace A103438.P5246807480606356962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192001 (A185869 (n + 1) - A016777 n).toNat - A009998 n

end

end A103438.P5246807480606356962

/-! ## A103438.P11610069236615263750

`A074909(n)-A000120(A157154(n))`
-/

namespace A103438.P11610069236615263750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A000120 (A157154 n).toNat

end

end A103438.P11610069236615263750

/-! ## A103438.P11114946993240789300

`A106604(A291556(n))%17`
-/

namespace A103438.P11114946993240789300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106604 (A291556 n).toNat) 17

end

end A103438.P11114946993240789300

/-! ## A103438.P422012745589004150

`A108611(A211399(n))+A002262(n)`
-/

namespace A103438.P422012745589004150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A211399 n).toNat + A002262 n

end

end A103438.P422012745589004150

/-!
# A103439: a(n) = Sum_{i=0..n-1} Sum_{j=0..i} (i-j+1)^j.

The programs for A103439, there is no canonical definition to state claims against.
-/

/-! ## A103439.P6376564585352673670

`A104879(n)-1`
-/

namespace A103439.P6376564585352673670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n - 1

end

end A103439.P6376564585352673670

/-! ## A103439.P31309643731982021

`∑[A101494(∑[n])]-1`
-/

namespace A103439.P31309643731982021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103439.P31309643731982021

/-! ## A103439.P18333241329179825193

`A026898(n-1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A103439.P18333241329179825193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A026898 (n - 1) + a (n - 1)

end

end A103439.P18333241329179825193

/-! ## A103439.P14399755442496118947

`∑[A026898(n)]-A026898(n)`
-/

namespace A103439.P14399755442496118947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026898 n

end

end A103439.P14399755442496118947

/-! ## A103439.P1403031438984519287

`∑[A026898(n)]%Δ[A104879(n)]`
-/

namespace A103439.P1403031438984519287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A103439.P1403031438984519287

/-! ## A103439.P4974277504294614315

`∑[A003101(n)+1]%A026898(n)`
-/

namespace A103439.P4974277504294614315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A026898 n)

end

end A103439.P4974277504294614315

/-! ## A103439.P15722245383164423962

`∑[A101494(∑[n+1])]%A026898(n)`
-/

namespace A103439.P15722245383164423962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A026898 n)

end

end A103439.P15722245383164423962

/-! ## A103439.P13273740455707741049

`∑[(A062810(n+1)+1)/2]%A026898(n)`
-/

namespace A103439.P13273740455707741049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062810 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A026898 n)

end

end A103439.P13273740455707741049

/-! ## A103439.P14852215598428562417

`∑[A287216(∑[n+2]-1)]-1`
-/

namespace A103439.P14852215598428562417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103439.P14852215598428562417

/-!
# A103440: a(n) = Sum[d|n, d==1 (mod 3), d^2] - Sum[d|n, d==2 (mod 3), d^2].

The programs for A103440, the canonical program `A103440.P2264346228062661877` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103440 has offset 1).

The definition of A103440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103440.P6843424723590353035

`-(A109041(n+1)/9)`
-/

namespace A103440.P6843424723590353035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A109041 (n + 1) : ℚ) / 9)

end

end A103440.P6843424723590353035

namespace A103440

/-- `-(A109041(n+1)/9)` -/
def P6843424723590353035.Spec : Prop :=
  ∀ n, P6843424723590353035.a n = (A103440 (n + 1) : ℚ)

end A103440

/-! ## A103440.P2264346228062661877

`∑{d}[n+1, #*A162397(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103440

/-- `∑{d}[n+1, #*A162397(#)]` -/
def P2264346228062661877.Spec : Prop :=
  ∀ n, P2264346228062661877.a n = A103440 (n + 1)

theorem P2264346228062661877.correct : P2264346228062661877.Spec := by
  intro n
  simp only [A103440, Nat.add_sub_cancel]

end A103440

/-! ## A103440.P12328873729021952504

`A103637(n+1)-A103638(n+1)`
-/

namespace A103440.P12328873729021952504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103637 (n + 1) - A103638 (n + 1)

end

end A103440.P12328873729021952504

namespace A103440

/-- `A103637(n+1)-A103638(n+1)` -/
def P12328873729021952504.Spec : Prop :=
  ∀ n, P12328873729021952504.a n = A103440 (n + 1)

theorem P12328873729021952504.correct : P12328873729021952504.Spec := by
  intro n
  simp only [A103440, Nat.add_sub_cancel, A103440.P12328873729021952504.a, A103440.P2264346228062661877.f1, A103440.P2264346228062661877.a, A103637, A103637.P8644165102707501571.f1, A103637.P8644165102707501571.a, A103638, A103638.P17610773162151623303.a, A162397, A162397.P17892200127642729839.a, A102283, A102283.P18218274576938374007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103440

/-! ## A103440.P11663595600223318039

`A109041(n+1)/A109041(ceil(1/(n+1)))`
-/

namespace A103440.P11663595600223318039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 (n + 1) : ℚ) / (A109041 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A103440.P11663595600223318039

namespace A103440

/-- `A109041(n+1)/A109041(ceil(1/(n+1)))` -/
def P11663595600223318039.Spec : Prop :=
  ∀ n, P11663595600223318039.a n = (A103440 (n + 1) : ℚ)

end A103440

/-! ## A103440.P5360588016775410336

`∑{d}[n+1, A111661(#)*A209229((n+1)/#)]`
-/

namespace A103440.P5360588016775410336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111661 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A103440.P5360588016775410336

namespace A103440

/-- `∑{d}[n+1, A111661(#)*A209229((n+1)/#)]` -/
def P5360588016775410336.Spec : Prop :=
  ∀ n, P5360588016775410336.a n = A103440 (n + 1)

end A103440

/-! ## A103440.P1320684252859581795

`∑{d}[n+1, A036987(#-1)*A111661((n+1)/#)]`
-/

namespace A103440.P1320684252859581795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A111661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A103440.P1320684252859581795

namespace A103440

/-- `∑{d}[n+1, A036987(#-1)*A111661((n+1)/#)]` -/
def P1320684252859581795.Spec : Prop :=
  ∀ n, P1320684252859581795.a n = A103440 (n + 1)

end A103440

/-! ## A103440.P15249082963207732023

`∑{d}[n+1, #²*A102283(#)]`
-/

namespace A103440.P15249082963207732023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A102283 d

end

end A103440.P15249082963207732023

namespace A103440

/-- `∑{d}[n+1, #²*A102283(#)]` -/
def P15249082963207732023.Spec : Prop :=
  ∀ n, P15249082963207732023.a n = A103440 (n + 1)

end A103440

/-! ## A103440.P1817264814162919019

`A181905(A038502(n+1))`
-/

namespace A103440.P1817264814162919019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181905 (A038502 (n + 1)).toNat

end

end A103440.P1817264814162919019

namespace A103440

/-- `A181905(A038502(n+1))` -/
def P1817264814162919019.Spec : Prop :=
  ∀ n, P1817264814162919019.a n = A103440 (n + 1)

end A103440

/-!
# A103441: Triangle read by rows: T(n,k) = number of bracelets of n beads (necklaces that can be flipped over) with exactly two colors and k white beads for which the set of distances among the white beads are different.

The programs for A103441, there is no canonical definition to state claims against.
-/

/-! ## A103441.P18408446086321488715

`A326492(A077028(n)%A093608(n))`
-/

namespace A103441.P18408446086321488715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 (Int.tmod (A077028 n) (A093608 n)).toNat

end

end A103441.P18408446086321488715

/-! ## A103441.P14750293934704840781

`A326492(A077028(n))%A141214(n)`
-/

namespace A103441.P14750293934704840781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326492 (A077028 n).toNat) (A141214 n)

end

end A103441.P14750293934704840781

/-! ## A103441.P16323347976580835586

`A224697(lt[1, A174039(n)])`
-/

namespace A103441.P16323347976580835586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A103441.P16323347976580835586

/-! ## A103441.P18319458730051941490

`A110591(3^A180980(n+1))`
-/

namespace A103441.P18319458730051941490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A180980 (n + 1) : ℤ))).toNat

end

end A103441.P18319458730051941490

/-! ## A103441.P410170329112595187

`A033265(A088635(A131402(n)))`
-/

namespace A103441.P410170329112595187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A088635 (A131402 n).toNat).toNat

end

end A103441.P410170329112595187

/-!
# A103442: Row sums of A103441. Number of two-colored bracelets of n beads with different sets of distances among the white beads.

The programs for A103442, there is no canonical definition to state claims against.
-/

/-! ## A103442.P14842404524737606396

`A055086(n)+A002024(A307062(n))`
-/

namespace A103442.P14842404524737606396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + A002024 (A307062 n).toNat

end

end A103442.P14842404524737606396

/-! ## A103442.P14483264587807516134

`A257639(A060925(n))+A000720(n+1)`
-/

namespace A103442.P14483264587807516134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A060925 n).toNat + A000720 (n + 1)

end

end A103442.P14483264587807516134

/-! ## A103442.P12018540931307288323

`A079643(∑[A282732(n)])`
-/

namespace A103442.P12018540931307288323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103442.P12018540931307288323

/-! ## A103442.P15139411867387601774

`A004526(n)+A000194(A291000(n))`
-/

namespace A103442.P15139411867387601774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A000194 (A291000 n).toNat

end

end A103442.P15139411867387601774

/-!
# A103444: Triangle read by rows: T(n,k) is number of unitary divisors of C(n,k), 0<=k<=n.

The programs for A103444, the canonical program `A103444.P17671933729630594425` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103444 has offset 0).

The definition of A103444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103444.P17671933729630594425

`2^A001221(C(row(n), col(n)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103444

/-- `2^A001221(C(row(n), col(n)))` -/
def P17671933729630594425.Spec : Prop :=
  ∀ n, P17671933729630594425.a n = (A103444 n : ℚ)

end A103444

/-! ## A103444.P333998683801514431

`2^A048571(n)`
-/

namespace A103444.P333998683801514431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048571 n : ℤ)

end

end A103444.P333998683801514431

namespace A103444

/-- `2^A048571(n)` -/
def P333998683801514431.Spec : Prop :=
  ∀ n, P333998683801514431.a n = (A103444 n : ℚ)

end A103444

/-! ## A103444.P1647931111292523615

`A000079(A048571(n))`
-/

namespace A103444.P1647931111292523615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048571 n).toNat

end

end A103444.P1647931111292523615

namespace A103444

/-- `A000079(A048571(n))` -/
def P1647931111292523615.Spec : Prop :=
  ∀ n, P1647931111292523615.a n = A103444 n

end A103444

/-! ## A103444.P165523934591358535

`∏{p}[A007318(n), ceil(atan(#))]`
-/

namespace A103444.P165523934591358535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌈Real.arctan (p : ℝ)⌉

end

end A103444.P165523934591358535

namespace A103444

/-- `∏{p}[A007318(n), ceil(atan(#))]` -/
def P165523934591358535.Spec : Prop :=
  ∀ n, P165523934591358535.a n = A103444 n

end A103444

/-! ## A103444.P8765227581923557542

`∏{p}[A117440(n), ceil(atan(#))]`
-/

namespace A103444.P8765227581923557542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌈Real.arctan (p : ℝ)⌉

end

end A103444.P8765227581923557542

namespace A103444

/-- `∏{p}[A117440(n), ceil(atan(#))]` -/
def P8765227581923557542.Spec : Prop :=
  ∀ n, P8765227581923557542.a n = A103444 n

end A103444

/-! ## A103444.P12287372172356161828

`∏{p}[A007318(abs(1-n)+1), 2%#²]`
-/

namespace A103444.P12287372172356161828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 % p ^ 2

end

end A103444.P12287372172356161828

namespace A103444

/-- `∏{p}[A007318(abs(1-n)+1), 2%#²]` -/
def P12287372172356161828.Spec : Prop :=
  ∀ n, (P12287372172356161828.a n : ℤ) = A103444 n

end A103444

/-! ## A103444.P17771377852984998666

`∏{e}[A080396(n), A000040(#)]`
-/

namespace A103444.P17771377852984998666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A103444.P17771377852984998666

namespace A103444

/-- `∏{e}[A080396(n), A000040(#)]` -/
def P17771377852984998666.Spec : Prop :=
  ∀ n, P17771377852984998666.a n = A103444 n

end A103444

/-! ## A103444.P10649292764532669272

`∏{p}[A007318(n), A001222(#²)]`
-/

namespace A103444.P10649292764532669272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (p ^ 2)

end

end A103444.P10649292764532669272

namespace A103444

/-- `∏{p}[A007318(n), A001222(#²)]` -/
def P10649292764532669272.Spec : Prop :=
  ∀ n, P10649292764532669272.a n = A103444 n

end A103444

/-! ## A103444.P3766047609116204210

`∏{p}[A007318(n), A319786(#²)]`
-/

namespace A103444.P3766047609116204210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A319786 (p ^ 2)

end

end A103444.P3766047609116204210

namespace A103444

/-- `∏{p}[A007318(n), A319786(#²)]` -/
def P3766047609116204210.Spec : Prop :=
  ∀ n, P3766047609116204210.a n = A103444 n

end A103444

/-! ## A103444.P4759558001659810469

`A000005(A080396(n))`
-/

namespace A103444.P4759558001659810469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080396 n).toNat

end

end A103444.P4759558001659810469

namespace A103444

/-- `A000005(A080396(n))` -/
def P4759558001659810469.Spec : Prop :=
  ∀ n, P4759558001659810469.a n = A103444 n

end A103444

/-! ## A103444.P6513063468154311760

`A000005(∏{p}[A007318(n), #])`
-/

namespace A103444.P6513063468154311760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A103444.P6513063468154311760

namespace A103444

/-- `A000005(∏{p}[A007318(n), #])` -/
def P6513063468154311760.Spec : Prop :=
  ∀ n, P6513063468154311760.a n = A103444 n

end A103444

/-! ## A103444.P2647614777173710148

`∑{d}[A007318(n), abs(A008683(#))]`
-/

namespace A103444.P2647614777173710148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, |A008683 d|

end

end A103444.P2647614777173710148

namespace A103444

/-- `∑{d}[A007318(n), abs(A008683(#))]` -/
def P2647614777173710148.Spec : Prop :=
  ∀ n, P2647614777173710148.a n = A103444 n

end A103444

/-! ## A103444.P14031158802038780370

`A034444(A007318(n))`
-/

namespace A103444.P14031158802038780370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A007318 n).toNat

end

end A103444.P14031158802038780370

namespace A103444

/-- `A034444(A007318(n))` -/
def P14031158802038780370.Spec : Prop :=
  ∀ n, P14031158802038780370.a n = A103444 n

end A103444

/-! ## A103444.P3528295049982101465

`A086669(A131112(n))`
-/

namespace A103444.P3528295049982101465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A131112 n).toNat

end

end A103444.P3528295049982101465

namespace A103444

/-- `A086669(A131112(n))` -/
def P3528295049982101465.Spec : Prop :=
  ∀ n, P3528295049982101465.a n = A103444 n

end A103444

/-! ## A103444.P5573905756296980366

`A086669(A132200(n))`
-/

namespace A103444.P5573905756296980366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A132200 n).toNat

end

end A103444.P5573905756296980366

namespace A103444

/-- `A086669(A132200(n))` -/
def P5573905756296980366.Spec : Prop :=
  ∀ n, P5573905756296980366.a n = A103444 n

end A103444

/-! ## A103444.P7473237002013941916

`A086669(A134065(n))`
-/

namespace A103444.P7473237002013941916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A134065 n).toNat

end

end A103444.P7473237002013941916

namespace A103444

/-- `A086669(A134065(n))` -/
def P7473237002013941916.Spec : Prop :=
  ∀ n, P7473237002013941916.a n = A103444 n

end A103444

/-! ## A103444.P3913735975441358328

`A264782(A132046(n))`
-/

namespace A103444.P3913735975441358328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (A132046 n).toNat

end

end A103444.P3913735975441358328

namespace A103444

/-- `A264782(A132046(n))` -/
def P3913735975441358328.Spec : Prop :=
  ∀ n, P3913735975441358328.a n = A103444 n

end A103444

/-!
# A103445: Sum of the numbers of unitary divisors of the binomial coefficients C(n,k), k=0..n.

The programs for A103445, there is no canonical definition to state claims against.
-/

/-! ## A103445.P15577468840901054546

`∑[and(A003418(n), A245879(n+1))]`
-/

namespace A103445.P15577468840901054546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003418 n) (A245879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103445.P15577468840901054546

/-! ## A103445.P2503566591814774440

`A027383(n-A057427(A056492(n+3)))`
-/

namespace A103445.P2503566591814774440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 ((n : ℤ) - A057427 (A056492 (n + 3)).toNat).toNat

end

end A103445.P2503566591814774440

/-! ## A103445.P17384695218401878666

`or(A173068(A000041(n)), A191113(n+1))`
-/

namespace A103445.P17384695218401878666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173068 (A000041 n).toNat) (A191113 (n + 1))

end

end A103445.P17384695218401878666

/-! ## A103445.P1678767374756062129

`or(A100143(n+1), A111894(A242362(n)))`
-/

namespace A103445.P1678767374756062129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100143 (n + 1)) (A111894 (A242362 n).toNat)

end

end A103445.P1678767374756062129

/-! ## A103445.P11474956659082914328

`or(A049797(n+1), A330878(A049792(n+1)))`
-/

namespace A103445.P11474956659082914328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049797 (n + 1)) (A330878 (A049792 (n + 1)).toNat)

end

end A103445.P11474956659082914328

/-!
# A103446: Unlabeled analog of A025168.

The programs for A103446, there is no canonical definition to state claims against.
-/

/-! ## A103446.P10297088515311428500

`A218482(n)-A000007(n)`
-/

namespace A103446.P10297088515311428500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218482 n - A000007 n

end

end A103446.P10297088515311428500

/-! ## A103446.P17381973459897628603

`A057427(n)*A218482(n)`
-/

namespace A103446.P17381973459897628603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A218482 n

end

end A103446.P17381973459897628603

/-! ## A103446.P5378381797023436796

`and(A057428(n), A218482(n))`
-/

namespace A103446.P5378381797023436796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A218482 n)

end

end A103446.P5378381797023436796

/-! ## A103446.P11452877496599537837

`and(A134824(n), A218482(n))`
-/

namespace A103446.P11452877496599537837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A218482 n)

end

end A103446.P11452877496599537837

/-! ## A103446.P2903934801871675987

`A218482(n)-A326956(2*n+1)`
-/

namespace A103446.P2903934801871675987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218482 n - A326956 (2 * n + 1)

end

end A103446.P2903934801871675987

/-! ## A103446.P13208433669616073195

`Δ[A218481(log2(ceil(2^(n-1))))]`
-/

namespace A103446.P13208433669616073195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103446.P13208433669616073195

/-! ## A103446.P3723133002215740473

`record[Δ[A218481(floor(3*n/5))]]`
-/

namespace A103446.P3723133002215740473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 ⌊3 * ((n : ℚ) / 5)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103446.P3723133002215740473

/-! ## A103446.P11548829436731791280

`A218482(n)%A002409(n)`
-/

namespace A103446.P11548829436731791280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218482 n) (A002409 n)

end

end A103446.P11548829436731791280

/-! ## A103446.P2722903773996631672

`and(A024036(n), A218482(n))`
-/

namespace A103446.P2722903773996631672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A218482 n)

end

end A103446.P2722903773996631672

/-! ## A103446.P17596880604205966738

`and(A198693(n), A218482(n))`
-/

namespace A103446.P17596880604205966738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198693 n) (A218482 n)

end

end A103446.P17596880604205966738

/-! ## A103446.P12946225854425580215

`and(A114569(n), A218482(n))`
-/

namespace A103446.P12946225854425580215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114569 n) (A218482 n)

end

end A103446.P12946225854425580215

/-! ## A103446.P12971867182300027003

`and(A156760(n), A218482(n))`
-/

namespace A103446.P12971867182300027003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156760 n) (A218482 n)

end

end A103446.P12971867182300027003

/-! ## A103446.P12182195724499252028

`and(A198694(n), A218482(n))`
-/

namespace A103446.P12182195724499252028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198694 n) (A218482 n)

end

end A103446.P12182195724499252028

/-! ## A103446.P15818527453156284504

`and(A198695(n), A218482(n))`
-/

namespace A103446.P15818527453156284504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198695 n) (A218482 n)

end

end A103446.P15818527453156284504

/-!
# A103447: Triangle read by rows: T(n,k) = Moebius(binomial(n,k)) (0 <= k <= n).

The programs for A103447, the canonical program `A103447.P16192378896202134082` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103447 has offset 0).

The definition of A103447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103447.P16192378896202134082

`A008683(C(row(n), col(n)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A103447

/-- `A008683(C(row(n), col(n)))` -/
def P16192378896202134082.Spec : Prop :=
  ∀ n, P16192378896202134082.a n = A103447 n

theorem P16192378896202134082.correct : P16192378896202134082.Spec := by
  intro n
  simp only [A103447]

end A103447

/-! ## A103447.P9174891763122253944

`A008683(A007318(n))`
-/

namespace A103447.P9174891763122253944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007318 n).toNat

end

end A103447.P9174891763122253944

namespace A103447

/-- `A008683(A007318(n))` -/
def P9174891763122253944.Spec : Prop :=
  ∀ n, P9174891763122253944.a n = A103447 n

end A103447

/-! ## A103447.P11379799568232321678

`∏{e}[A007318(n), A001221(#)-1]`
-/

namespace A103447.P11379799568232321678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001221 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A103447.P11379799568232321678

namespace A103447

/-- `∏{e}[A007318(n), A001221(#)-1]` -/
def P11379799568232321678.Spec : Prop :=
  ∀ n, P11379799568232321678.a n = A103447 n

end A103447

/-! ## A103447.P6487820958350946940

`∏{e}[A007318(n), A103221(#)-1]`
-/

namespace A103447.P6487820958350946940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A103221 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A103447.P6487820958350946940

namespace A103447

/-- `∏{e}[A007318(n), A103221(#)-1]` -/
def P6487820958350946940.Spec : Prop :=
  ∀ n, P6487820958350946940.a n = A103447 n

end A103447

/-! ## A103447.P17816424595869146610

`∏{e}[A007318(n), #-A014692(#)]`
-/

namespace A103447.P17816424595869146610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A014692 (Nat.factorization (f1 n).natAbs p))

end

end A103447.P17816424595869146610

namespace A103447

/-- `∏{e}[A007318(n), #-A014692(#)]` -/
def P17816424595869146610.Spec : Prop :=
  ∀ n, P17816424595869146610.a n = A103447 n

end A103447

/-! ## A103447.P3420049198157427858

`∏{e}[A007318(n), A000005(A000005(#))-2]`
-/

namespace A103447.P3420049198157427858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 (A000005 (Nat.factorization (f1 n).natAbs p)).toNat - 2)

end

end A103447.P3420049198157427858

namespace A103447

/-- `∏{e}[A007318(n), A000005(A000005(#))-2]` -/
def P3420049198157427858.Spec : Prop :=
  ∀ n, P3420049198157427858.a n = A103447 n

end A103447

/-! ## A103447.P14422363612297862189

`∏{e}[A007318(n), A007318(#)-A323231(#)]`
-/

namespace A103447.P14422363612297862189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A007318 (Nat.factorization (f1 n).natAbs p) - A323231 (Nat.factorization (f1 n).natAbs p))

end

end A103447.P14422363612297862189

namespace A103447

/-- `∏{e}[A007318(n), A007318(#)-A323231(#)]` -/
def P14422363612297862189.Spec : Prop :=
  ∀ n, P14422363612297862189.a n = A103447 n

end A103447

/-! ## A103447.P17411528244548199978

`∏{e}[A007318(n), A131818(A002620(#)+1)-2]`
-/

namespace A103447.P17411528244548199978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A131818 (A002620 (Nat.factorization (f1 n).natAbs p) + 1).toNat - 2)

end

end A103447.P17411528244548199978

namespace A103447

/-- `∏{e}[A007318(n), A131818(A002620(#)+1)-2]` -/
def P17411528244548199978.Spec : Prop :=
  ∀ n, P17411528244548199978.a n = A103447 n

end A103447

/-! ## A103447.P10353416786932338055

`A008683(A278218(n))`
-/

namespace A103447.P10353416786932338055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278218 n).toNat

end

end A103447.P10353416786932338055

namespace A103447

/-- `A008683(A278218(n))` -/
def P10353416786932338055.Spec : Prop :=
  ∀ n, P10353416786932338055.a n = A103447 n

end A103447

/-! ## A103447.P15396568332326766101

`A008683(abs(A108086(n)))`
-/

namespace A103447.P15396568332326766101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A108086 n|.toNat

end

end A103447.P15396568332326766101

namespace A103447

/-- `A008683(abs(A108086(n)))` -/
def P15396568332326766101.Spec : Prop :=
  ∀ n, P15396568332326766101.a n = A103447 n

end A103447

/-! ## A103447.P8974429080968397233

`A008683(abs(A117440(n)))`
-/

namespace A103447.P8974429080968397233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A117440 n|.toNat

end

end A103447.P8974429080968397233

namespace A103447

/-- `A008683(abs(A117440(n)))` -/
def P8974429080968397233.Spec : Prop :=
  ∀ n, P8974429080968397233.a n = A103447 n

end A103447

/-! ## A103447.P11394931120038141723

`A008683(abs(A130595(n)))`
-/

namespace A103447.P11394931120038141723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A130595 n|.toNat

end

end A103447.P11394931120038141723

namespace A103447

/-- `A008683(abs(A130595(n)))` -/
def P11394931120038141723.Spec : Prop :=
  ∀ n, P11394931120038141723.a n = A103447 n

end A103447

/-! ## A103447.P16815598072661710215

`A008683(sqrt(A008459(n)))`
-/

namespace A103447.P16815598072661710215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A103447.P16815598072661710215

namespace A103447

/-- `A008683(sqrt(A008459(n)))` -/
def P16815598072661710215.Spec : Prop :=
  ∀ n, P16815598072661710215.a n = A103447 n

end A103447

/-! ## A103447.P6843315727006718999

`A008683(Δ[A102363(n)])`
-/

namespace A103447.P6843315727006718999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A103447.P6843315727006718999

namespace A103447

/-- `A008683(Δ[A102363(n)])` -/
def P6843315727006718999.Spec : Prop :=
  ∀ n, P6843315727006718999.a n = A103447 n

end A103447

/-! ## A103447.P3159664929156647939

`A008683(A014473(n)+1)`
-/

namespace A103447.P3159664929156647939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014473 n + 1).toNat

end

end A103447.P3159664929156647939

namespace A103447

/-- `A008683(A014473(n)+1)` -/
def P3159664929156647939.Spec : Prop :=
  ∀ n, P3159664929156647939.a n = A103447 n

end A103447

/-! ## A103447.P13805646061955847701

`A008683(A028326(n)/2)`
-/

namespace A103447.P13805646061955847701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A103447.P13805646061955847701

namespace A103447

/-- `A008683(A028326(n)/2)` -/
def P13805646061955847701.Spec : Prop :=
  ∀ n, P13805646061955847701.a n = A103447 n

end A103447

/-! ## A103447.P14219566484620332436

`A008683(ceil(A109128(n)/2))`
-/

namespace A103447.P14219566484620332436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈(A109128 n : ℚ) / 2⌉.toNat

end

end A103447.P14219566484620332436

namespace A103447

/-- `A008683(ceil(A109128(n)/2))` -/
def P14219566484620332436.Spec : Prop :=
  ∀ n, P14219566484620332436.a n = A103447 n

end A103447

/-! ## A103447.P2226044093199473766

`A008683(ceil(A132047(n)/3))`
-/

namespace A103447.P2226044093199473766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈(A132047 n : ℚ) / 3⌉.toNat

end

end A103447.P2226044093199473766

namespace A103447

/-- `A008683(ceil(A132047(n)/3))` -/
def P2226044093199473766.Spec : Prop :=
  ∀ n, P2226044093199473766.a n = A103447 n

end A103447

/-! ## A103447.P15999313119678447481

`A008683(ceil(A134059(n)/3))`
-/

namespace A103447.P15999313119678447481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈(A134059 n : ℚ) / 3⌉.toNat

end

end A103447.P15999313119678447481

namespace A103447

/-- `A008683(ceil(A134059(n)/3))` -/
def P15999313119678447481.Spec : Prop :=
  ∀ n, P15999313119678447481.a n = A103447 n

end A103447

/-! ## A103447.P16465566978698828275

`A008683(ceil(A135087(n)/4))`
-/

namespace A103447.P16465566978698828275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈(A135087 n : ℚ) / 4⌉.toNat

end

end A103447.P16465566978698828275

namespace A103447

/-- `A008683(ceil(A135087(n)/4))` -/
def P16465566978698828275.Spec : Prop :=
  ∀ n, P16465566978698828275.a n = A103447 n

end A103447

/-!
# A103449: Values of k such that Sum_{m=0..k} Moebius(binomial(k,m)) = 0.

The programs for A103449, there is no canonical definition to state claims against.
-/

/-! ## A103449.P15821363235425661569

`eq[0, A103448(n)]`
-/

namespace A103449.P15821363235425661569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103449.P15821363235425661569

/-! ## A103449.P17189730274144085904

`lt[A074206(A103448(n)²), 1]`
-/

namespace A103449.P17189730274144085904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A103448 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103449.P17189730274144085904

/-! ## A103449.P9811938975796883386

`lt[A103448(A103448(n)²), 2]`
-/

namespace A103449.P9811938975796883386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103448 (A103448 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103449.P9811938975796883386

/-! ## A103449.P3957806593742437690

`lt[A103448(n)^2, A249442(2*n+4)]`
-/

namespace A103449.P3957806593742437690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103448 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (2 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103449.P3957806593742437690

/-!
# A103450: A figurate number triangle read by rows.

The programs for A103450, the canonical program `A103450.P15759975905584063005` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103450 has offset 0).

The definition of A103450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103450.P14195077820138628138

`A127954(n+2)-Δ[A097805(n)]`
-/

namespace A103450.P14195077820138628138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127954 (n + 2) - (f1 (n + 1) - f1 n)

end

end A103450.P14195077820138628138

namespace A103450

/-- `A127954(n+2)-Δ[A097805(n)]` -/
def P14195077820138628138.Spec : Prop :=
  ∀ n, P14195077820138628138.a n = A103450 n

end A103450

/-! ## A103450.P8967674513939407448

`A007318(n)+A155865(n)-A103451(n)`
-/

namespace A103450.P8967674513939407448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A155865 n - A103451 n)

end

end A103450.P8967674513939407448

namespace A103450

/-- `A007318(n)+A155865(n)-A103451(n)` -/
def P8967674513939407448.Spec : Prop :=
  ∀ n, P8967674513939407448.a n = A103450 n

end A103450

/-! ## A103450.P15759975905584063005

`A007318(n)+A025581(n)*A097805(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103450

/-- `A007318(n)+A025581(n)*A097805(n)` -/
def P15759975905584063005.Spec : Prop :=
  ∀ n, P15759975905584063005.a n = A103450 n

theorem P15759975905584063005.correct : P15759975905584063005.Spec := by
  intro n
  simp only [A103450]

end A103450

/-! ## A103450.P4829708970718093671

`A007318(n)+A155865(n)%A155863(n)`
-/

namespace A103450.P4829708970718093671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A155865 n) (A155863 n)

end

end A103450.P4829708970718093671

namespace A103450

/-- `A007318(n)+A155865(n)%A155863(n)` -/
def P4829708970718093671.Spec : Prop :=
  ∀ n, P4829708970718093671.a n = A103450 n

end A103450

/-! ## A103450.P6469223436163840233

`A128710(n)-(A127954(n+1)+A097805(n+1))`
-/

namespace A103450.P6469223436163840233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - (A127954 (n + 1) + A097805 (n + 1))

end

end A103450.P6469223436163840233

namespace A103450

/-- `A128710(n)-(A127954(n+1)+A097805(n+1))` -/
def P6469223436163840233.Spec : Prop :=
  ∀ n, P6469223436163840233.a n = A103450 n

end A103450

/-! ## A103450.P10690653472292678408

`A097805(n)+A002260(n+1)*A097805(n+1)`
-/

namespace A103450.P10690653472292678408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A002260 (n + 1) * A097805 (n + 1)

end

end A103450.P10690653472292678408

namespace A103450

/-- `A097805(n)+A002260(n+1)*A097805(n+1)` -/
def P10690653472292678408.Spec : Prop :=
  ∀ n, P10690653472292678408.a n = A103450 n

end A103450

/-! ## A103450.P1724038417865943505

`A097805(n)+A002262(n+1)*A097805(n+1)`
-/

namespace A103450.P1724038417865943505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A002262 (n + 1) * A097805 (n + 1)

end

end A103450.P1724038417865943505

namespace A103450

/-- `A097805(n)+A002262(n+1)*A097805(n+1)` -/
def P1724038417865943505.Spec : Prop :=
  ∀ n, P1724038417865943505.a n = A103450 n

end A103450

/-! ## A103450.P11392994569764567865

`A127954(n+2)+A097805(n)-A097805(n+1)`
-/

namespace A103450.P11392994569764567865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127954 (n + 2) + (A097805 n - A097805 (n + 1))

end

end A103450.P11392994569764567865

namespace A103450

/-- `A127954(n+2)+A097805(n)-A097805(n+1)` -/
def P11392994569764567865.Spec : Prop :=
  ∀ n, P11392994569764567865.a n = A103450 n

end A103450

/-! ## A103450.P6661404764610044759

`A097805(A014132(n+1))+A025581(n)*A097805(n)`
-/

namespace A103450.P6661404764610044759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A014132 (n + 1)).toNat + A025581 n * A097805 n

end

end A103450.P6661404764610044759

namespace A103450

/-- `A097805(A014132(n+1))+A025581(n)*A097805(n)` -/
def P6661404764610044759.Spec : Prop :=
  ∀ n, P6661404764610044759.a n = A103450 n

end A103450

/-!
# A103451: Triangular array T read by rows: T(n, 0) = T(n, n) = 1, T(n, k) = 0 for 0 < k < n.

The programs for A103451, the canonical program `A103451.P2977452712529643699` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103451 has offset 0).

The definition of A103451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103451.P1635691106719301772

`char[∑[gcd(n, floor(n/2))]]`
-/

namespace A103451.P1635691106719301772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A103451.P1635691106719301772

namespace A103451

/-- `char[∑[gcd(n, floor(n/2))]]` -/
def P1635691106719301772.Spec : Prop :=
  ∀ n, (P1635691106719301772.a n : ℤ) = A103451 n

end A103451

/-! ## A103451.P2034061719038011661

`char[∪[∑[n+2], ∑[n]]]`
-/

namespace A103451.P2034061719038011661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A103451.P2034061719038011661

namespace A103451

/-- `char[∪[∑[n+2], ∑[n]]]` -/
def P2034061719038011661.Spec : Prop :=
  ∀ n, (P2034061719038011661.a n : ℤ) = A103451 n

end A103451

/-! ## A103451.P12742553670171981712

`char[∑[n+2]]+char[∑[n]]`
-/

namespace A103451.P12742553670171981712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)

end

end A103451.P12742553670171981712

namespace A103451

/-- `char[∑[n+2]]+char[∑[n]]` -/
def P12742553670171981712.Spec : Prop :=
  ∀ n, (P12742553670171981712.a n : ℤ) = A103451 n

end A103451

/-! ## A103451.P2890393495917489247

`C(col(n)², col(n)*row(n))`
-/

namespace A103451.P2890393495917489247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n ^ 2) (SequenceMachineLib.triCol n * SequenceMachineLib.triRow n)

end

end A103451.P2890393495917489247

namespace A103451

/-- `C(col(n)², col(n)*row(n))` -/
def P2890393495917489247.Spec : Prop :=
  ∀ n, (P2890393495917489247.a n : ℤ) = A103451 n

end A103451

/-! ## A103451.P3854408425765594081

`Δ[∪[2*n, n²+1+n]]%2`
-/

namespace A103451.P3854408425765594081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A103451.P3854408425765594081

namespace A103451

/-- `Δ[∪[2*n, n²+1+n]]%2` -/
def P3854408425765594081.Spec : Prop :=
  ∀ n, P3854408425765594081.a n = A103451 n

end A103451

/-! ## A103451.P1075114471603828382

`and(1, Δ[∪[2*n, n²+1+n]])`
-/

namespace A103451.P1075114471603828382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A103451.P1075114471603828382

namespace A103451

/-- `and(1, Δ[∪[2*n, n²+1+n]])` -/
def P1075114471603828382.Spec : Prop :=
  ∀ n, P1075114471603828382.a n = A103451 n

end A103451

/-! ## A103451.P2977452712529643699

`abs(A103452(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103451

/-- `abs(A103452(n))` -/
def P2977452712529643699.Spec : Prop :=
  ∀ n, P2977452712529643699.a n = A103451 n

theorem P2977452712529643699.correct : P2977452712529643699.Spec := by
  intro n
  simp only [A103451]

end A103451

/-! ## A103451.P613172401460604969

`A103444(n)%2`
-/

namespace A103451.P613172401460604969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103444 n) 2

end

end A103451.P613172401460604969

namespace A103451

/-- `A103444(n)%2` -/
def P613172401460604969.Spec : Prop :=
  ∀ n, P613172401460604969.a n = A103451 n

end A103451

/-! ## A103451.P1123205331205974153

`A132046(n)%2`
-/

namespace A103451.P1123205331205974153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132046 n) 2

end

end A103451.P1123205331205974153

namespace A103451

/-- `A132046(n)%2` -/
def P1123205331205974153.Spec : Prop :=
  ∀ n, P1123205331205974153.a n = A103451 n

end A103451

/-! ## A103451.P1798383178228720727

`A132731(n)%2`
-/

namespace A103451.P1798383178228720727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132731 n) 2

end

end A103451.P1798383178228720727

namespace A103451

/-- `A132731(n)%2` -/
def P1798383178228720727.Spec : Prop :=
  ∀ n, P1798383178228720727.a n = A103451 n

end A103451

/-! ## A103451.P2911819285848751469

`A144464(n)%2`
-/

namespace A103451.P2911819285848751469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144464 n) 2

end

end A103451.P2911819285848751469

namespace A103451

/-- `A144464(n)%2` -/
def P2911819285848751469.Spec : Prop :=
  ∀ n, P2911819285848751469.a n = A103451 n

end A103451

/-! ## A103451.P4214356628343457326

`C(2, A028326(n))`
-/

namespace A103451.P4214356628343457326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A028326 n).toNat

end

end A103451.P4214356628343457326

namespace A103451

/-- `C(2, A028326(n))` -/
def P4214356628343457326.Spec : Prop :=
  ∀ n, (P4214356628343457326.a n : ℤ) = A103451 n

end A103451

/-! ## A103451.P1386245316185259430

`and(1, A157654(n))`
-/

namespace A103451.P1386245316185259430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A157654 n)

end

end A103451.P1386245316185259430

namespace A103451

/-- `and(1, A157654(n))` -/
def P1386245316185259430.Spec : Prop :=
  ∀ n, P1386245316185259430.a n = A103451 n

end A103451

/-! ## A103451.P11712982521005545872

`and(1, A193791(n))`
-/

namespace A103451.P11712982521005545872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A193791 n)

end

end A103451.P11712982521005545872

namespace A103451

/-- `and(1, A193791(n))` -/
def P11712982521005545872.Spec : Prop :=
  ∀ n, P11712982521005545872.a n = A103451 n

end A103451

/-! ## A103451.P2277029947078400477

`Δ[A073423(n)]²`
-/

namespace A103451.P2277029947078400477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A103451.P2277029947078400477

namespace A103451

/-- `Δ[A073423(n)]²` -/
def P2277029947078400477.Spec : Prop :=
  ∀ n, P2277029947078400477.a n = A103451 n

end A103451

/-! ## A103451.P5921418043854731511

`char[∑[A255563(n+3)]]`
-/

namespace A103451.P5921418043854731511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103451.P5921418043854731511

namespace A103451

/-- `char[∑[A255563(n+3)]]` -/
def P5921418043854731511.Spec : Prop :=
  ∀ n, (P5921418043854731511.a n : ℤ) = A103451 n

end A103451

/-! ## A103451.P10950523429672054927

`char[∑[A242602(2*n+1)]]`
-/

namespace A103451.P10950523429672054927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103451.P10950523429672054927

namespace A103451

/-- `char[∑[A242602(2*n+1)]]` -/
def P10950523429672054927.Spec : Prop :=
  ∀ n, (P10950523429672054927.a n : ℤ) = A103451 n

end A103451

/-!
# A103452: Inverse of number triangle A103451.

The programs for A103452, the canonical program `A103452.P9591001737205339396` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103452 has offset 0).

The definition of A103452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103452.P17902322507749477253

`char[∑[n-1]]-char[∑[n+1]]`
-/

namespace A103452.P17902322507749477253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A103452.P17902322507749477253

namespace A103452

/-- `char[∑[n-1]]-char[∑[n+1]]` -/
def P17902322507749477253.Spec : Prop :=
  ∀ n, P17902322507749477253.a n = A103452 n

end A103452

/-! ## A103452.P9591001737205339396

`Δ[A073424(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103452

/-- `Δ[A073424(n)]` -/
def P9591001737205339396.Spec : Prop :=
  ∀ n, P9591001737205339396.a n = A103452 n

theorem P9591001737205339396.correct : P9591001737205339396.Spec := by
  intro n
  simp only [A103452]

end A103452

/-! ## A103452.P399141972968303224

`Δ[-A123110(n)]`
-/

namespace A103452.P399141972968303224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103452.P399141972968303224

namespace A103452

/-- `Δ[-A123110(n)]` -/
def P399141972968303224.Spec : Prop :=
  ∀ n, P399141972968303224.a n = A103452 n

end A103452

/-! ## A103452.P7641735008686723733

`ceil(3/A141620(n))`
-/

namespace A103452.P7641735008686723733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (A141620 n : ℚ)⌉

end

end A103452.P7641735008686723733

namespace A103452

/-- `ceil(3/A141620(n))` -/
def P7641735008686723733.Spec : Prop :=
  ∀ n, P7641735008686723733.a n = A103452 n

end A103452

/-! ## A103452.P286792439328685827

`-A167374(abs(1-n))`
-/

namespace A103452.P286792439328685827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A167374 |1 - (n : ℤ)|.toNat

end

end A103452.P286792439328685827

namespace A103452

/-- `-A167374(abs(1-n))` -/
def P286792439328685827.Spec : Prop :=
  ∀ n, P286792439328685827.a n = A103452 n

end A103452

/-! ## A103452.P13420397721491172783

`Δ[A023531(abs(1-n))]`
-/

namespace A103452.P13420397721491172783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103452.P13420397721491172783

namespace A103452

/-- `Δ[A023531(abs(1-n))]` -/
def P13420397721491172783.Spec : Prop :=
  ∀ n, P13420397721491172783.a n = A103452 n

end A103452

/-! ## A103452.P13698323091676109338

`floor(acot(A029635(n)-2))`
-/

namespace A103452.P13698323091676109338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A029635 n - 2 : ℝ)⌋

end

end A103452.P13698323091676109338

namespace A103452

/-- `floor(acot(A029635(n)-2))` -/
def P13698323091676109338.Spec : Prop :=
  ∀ n, P13698323091676109338.a n = A103452 n

end A103452

/-! ## A103452.P3785485400391231598

`round(1/(A095666(n)-2))`
-/

namespace A103452.P3785485400391231598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A095666 n - 2 : ℚ))

end

end A103452.P3785485400391231598

namespace A103452

/-- `round(1/(A095666(n)-2))` -/
def P3785485400391231598.Spec : Prop :=
  ∀ n, P3785485400391231598.a n = A103452 n

end A103452

/-! ## A103452.P10690844438286948191

`Δ[C(2, A155112(n)+2)]`
-/

namespace A103452.P10690844438286948191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A155112 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103452.P10690844438286948191

namespace A103452

/-- `Δ[C(2, A155112(n)+2)]` -/
def P10690844438286948191.Spec : Prop :=
  ∀ n, P10690844438286948191.a n = A103452 n

end A103452

/-! ## A103452.P10115857540608285197

`Δ[ceil(A010054(n)-acot(n))]`
-/

namespace A103452.P10115857540608285197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010054 n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103452.P10115857540608285197

namespace A103452

/-- `Δ[ceil(A010054(n)-acot(n))]` -/
def P10115857540608285197.Spec : Prop :=
  ∀ n, P10115857540608285197.a n = A103452 n

end A103452

/-! ## A103452.P3750755285866423968

`A100218(n)*A103451(n)`
-/

namespace A103452.P3750755285866423968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A103451 n

end

end A103452.P3750755285866423968

namespace A103452

/-- `A100218(n)*A103451(n)` -/
def P3750755285866423968.Spec : Prop :=
  ∀ n, P3750755285866423968.a n = A103452 n

end A103452

/-! ## A103452.P12207772136496935033

`A103451(n)*A104967(n)`
-/

namespace A103452.P12207772136496935033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A104967 n

end

end A103452.P12207772136496935033

namespace A103452

/-- `A103451(n)*A104967(n)` -/
def P12207772136496935033.Spec : Prop :=
  ∀ n, P12207772136496935033.a n = A103452 n

end A103452

/-! ## A103452.P5174864959518893457

`A100218(n)*A114000(n)`
-/

namespace A103452.P5174864959518893457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A114000 n

end

end A103452.P5174864959518893457

namespace A103452

/-- `A100218(n)*A114000(n)` -/
def P5174864959518893457.Spec : Prop :=
  ∀ n, P5174864959518893457.a n = A103452 n

end A103452

/-! ## A103452.P11354386004507318176

`A103451(n)*A112467(n)`
-/

namespace A103452.P11354386004507318176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A112467 n

end

end A103452.P11354386004507318176

namespace A103452

/-- `A103451(n)*A112467(n)` -/
def P11354386004507318176.Spec : Prop :=
  ∀ n, P11354386004507318176.a n = A103452 n

end A103452

/-! ## A103452.P16667390167968147701

`A100218(n)*A164925(n)`
-/

namespace A103452.P16667390167968147701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A164925 n

end

end A103452.P16667390167968147701

namespace A103452

/-- `A100218(n)*A164925(n)` -/
def P16667390167968147701.Spec : Prop :=
  ∀ n, P16667390167968147701.a n = A103452 n

end A103452

/-! ## A103452.P4775772486980080288

`A103451(n)*A177767(n)`
-/

namespace A103452.P4775772486980080288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A177767 n

end

end A103452.P4775772486980080288

namespace A103452

/-- `A103451(n)*A177767(n)` -/
def P4775772486980080288.Spec : Prop :=
  ∀ n, P4775772486980080288.a n = A103452 n

end A103452

/-! ## A103452.P12798095982525400133

`A100218(n)*A284441(n)`
-/

namespace A103452.P12798095982525400133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A284441 n

end

end A103452.P12798095982525400133

namespace A103452

/-- `A100218(n)*A284441(n)` -/
def P12798095982525400133.Spec : Prop :=
  ∀ n, P12798095982525400133.a n = A103452 n

end A103452

/-! ## A103452.P1680864323444374662

`Δ[A035214(A000038(n)+n)]`
-/

namespace A103452.P1680864323444374662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103452.P1680864323444374662

namespace A103452

/-- `Δ[A035214(A000038(n)+n)]` -/
def P1680864323444374662.Spec : Prop :=
  ∀ n, P1680864323444374662.a n = A103452 n

end A103452

/-! ## A103452.P14534492755776895473

`A103451(n)*A154990(n+1)`
-/

namespace A103452.P14534492755776895473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A154990 (n + 1)

end

end A103452.P14534492755776895473

namespace A103452

/-- `A103451(n)*A154990(n+1)` -/
def P14534492755776895473.Spec : Prop :=
  ∀ n, P14534492755776895473.a n = A103452 n

end A103452

/-! ## A103452.P16844849301935125518

`and(A100218(n), A155076(n+1))`
-/

namespace A103452.P16844849301935125518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100218 n) (A155076 (n + 1))

end

end A103452.P16844849301935125518

namespace A103452

/-- `and(A100218(n), A155076(n+1))` -/
def P16844849301935125518.Spec : Prop :=
  ∀ n, P16844849301935125518.a n = A103452 n

end A103452

/-!
# A103453: a(n) = 0^n + 3^n - 1.

The programs for A103453, the canonical program `A103453.P259737519639379403` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103453 has offset 0).

The definition of A103453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^n+3^n-1` (program `A103453.P259737519639379403`, by `A103453.P259737519639379403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103453.P259737519639379403

`0^n+3^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103453

/-- `0^n+3^n-1` -/
def P259737519639379403.Spec : Prop :=
  ∀ n, P259737519639379403.a n = A103453 n

theorem P259737519639379403.correct : P259737519639379403.Spec := by
  intro n
  simp only [A103453]

end A103453

/-! ## A103453.P110242269175698656

`floor(3^n-sin(n)²)`
-/

namespace A103453.P110242269175698656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℝ) - Real.sin (n : ℝ) ^ 2⌋

end

end A103453.P110242269175698656

namespace A103453

/-- `floor(3^n-sin(n)²)` -/
def P110242269175698656.Spec : Prop :=
  ∀ n, P110242269175698656.a n = A103453 n

end A103453

/-! ## A103453.P7566306039467804343

`abs(3^n-ceil(acot(n)))`
-/

namespace A103453.P7566306039467804343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉|

end

end A103453.P7566306039467804343

namespace A103453

/-- `abs(3^n-ceil(acot(n)))` -/
def P7566306039467804343.Spec : Prop :=
  ∀ n, P7566306039467804343.a n = A103453 n

end A103453

/-! ## A103453.P6522339909017792944

`xor(3^n, ceil(abs(sin(n))))`
-/

namespace A103453.P6522339909017792944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) ⌈|Real.sin (n : ℝ)|⌉

end

end A103453.P6522339909017792944

namespace A103453

/-- `xor(3^n, ceil(abs(sin(n))))` -/
def P6522339909017792944.Spec : Prop :=
  ∀ n, P6522339909017792944.a n = A103453 n

end A103453

/-! ## A103453.P15935825516898610564

`xor(3^n, ceil(sin(n)²))`
-/

namespace A103453.P15935825516898610564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103453.P15935825516898610564

namespace A103453

/-- `xor(3^n, ceil(sin(n)²))` -/
def P15935825516898610564.Spec : Prop :=
  ∀ n, P15935825516898610564.a n = A103453 n

end A103453

/-! ## A103453.P5331501523594929083

`round(3^n-atan(atan(n)))`
-/

namespace A103453.P5331501523594929083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℝ) - Real.arctan (Real.arctan (n : ℝ)))

end

end A103453.P5331501523594929083

namespace A103453

/-- `round(3^n-atan(atan(n)))` -/
def P5331501523594929083.Spec : Prop :=
  ∀ n, P5331501523594929083.a n = A103453 n

end A103453

/-! ## A103453.P12873519465806168230

`ogf((1-2x+3x^2)/(1-4x+3x^2))`
-/

namespace A103453.P12873519465806168230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -4, 3] n

end

end A103453.P12873519465806168230

namespace A103453

/-- `ogf((1-2x+3x^2)/(1-4x+3x^2))` -/
def P12873519465806168230.Spec : Prop :=
  ∀ n, P12873519465806168230.a n = A103453 n

end A103453

/-! ## A103453.P13748624670022383383

`∑[3*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A103453.P13748624670022383383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103453.P13748624670022383383

namespace A103453

/-- `∑[3*a(n-1)]` -/
def P13748624670022383383.Spec : Prop :=
  ∀ n, (P13748624670022383383.a n : ℤ) = A103453 n

end A103453

/-! ## A103453.P17540170791594718252

`xor(1, 3*floor(3^(n-1)))`
-/

namespace A103453.P17540170791594718252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋)

end

end A103453.P17540170791594718252

namespace A103453

/-- `xor(1, 3*floor(3^(n-1)))` -/
def P17540170791594718252.Spec : Prop :=
  ∀ n, P17540170791594718252.a n = A103453 n

end A103453

/-! ## A103453.P14852595361333391161

`∏{d}[n, A019321(#)]`
-/

namespace A103453.P14852595361333391161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A019321 d

end

end A103453.P14852595361333391161

namespace A103453

/-- `∏{d}[n, A019321(#)]` -/
def P14852595361333391161.Spec : Prop :=
  ∀ n, P14852595361333391161.a n = A103453 n

end A103453

/-! ## A103453.P17440266725598066378

`A030439(A004277(n))`
-/

namespace A103453.P17440266725598066378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A004277 n).toNat

end

end A103453.P17440266725598066378

namespace A103453

/-- `A030439(A004277(n))` -/
def P17440266725598066378.Spec : Prop :=
  ∀ n, P17440266725598066378.a n = A103453 n

end A103453

/-! ## A103453.P4614551345284551953

`A030439(A004275(n+1))`
-/

namespace A103453.P4614551345284551953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A004275 (n + 1)).toNat

end

end A103453.P4614551345284551953

namespace A103453

/-- `A030439(A004275(n+1))` -/
def P4614551345284551953.Spec : Prop :=
  ∀ n, P4614551345284551953.a n = A103453 n

end A103453

/-! ## A103453.P5923058464651870840

`A112027(A111284(n+1))`
-/

namespace A103453.P5923058464651870840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112027 (A111284 (n + 1)).toNat

end

end A103453.P5923058464651870840

namespace A103453

/-- `A112027(A111284(n+1))` -/
def P5923058464651870840.Spec : Prop :=
  ∀ n, P5923058464651870840.a n = A103453 n

end A103453

/-! ## A103453.P10907568128136765545

`A062318(A004280(n+2))`
-/

namespace A103453.P10907568128136765545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (A004280 (n + 2)).toNat

end

end A103453.P10907568128136765545

namespace A103453

/-- `A062318(A004280(n+2))` -/
def P10907568128136765545.Spec : Prop :=
  ∀ n, P10907568128136765545.a n = A103453 n

end A103453

/-! ## A103453.P14770985037287084721

`and(A000244(n), A084182(n))`
-/

namespace A103453.P14770985037287084721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000244 n) (A084182 n)

end

end A103453.P14770985037287084721

namespace A103453

/-- `and(A000244(n), A084182(n))` -/
def P14770985037287084721.Spec : Prop :=
  ∀ n, P14770985037287084721.a n = A103453 n

end A103453

/-! ## A103453.P5152772015097506936

`and(A084182(n), A168609(n))`
-/

namespace A103453.P5152772015097506936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084182 n) (A168609 n)

end

end A103453.P5152772015097506936

namespace A103453

/-- `and(A084182(n), A168609(n))` -/
def P5152772015097506936.Spec : Prop :=
  ∀ n, P5152772015097506936.a n = A103453 n

end A103453

/-! ## A103453.P8798677554458588082

`∩[A030439(n), A167051(n+1)]`
-/

namespace A103453.P8798677554458588082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103453.P8798677554458588082

namespace A103453

/-- `∩[A030439(n), A167051(n+1)]` -/
def P8798677554458588082.Spec : Prop :=
  ∀ n, (P8798677554458588082.a n : ℤ) = A103453 n

end A103453

/-! ## A103453.P16263113883080729854

`∩[A062318(n+1), A167051(n+1)]`
-/

namespace A103453.P16263113883080729854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103453.P16263113883080729854

namespace A103453

/-- `∩[A062318(n+1), A167051(n+1)]` -/
def P16263113883080729854.Spec : Prop :=
  ∀ n, (P16263113883080729854.a n : ℤ) = A103453 n

end A103453

/-! ## A103453.P7382248895931550308

`A099856(n)%A034472(n)`
-/

namespace A103453.P7382248895931550308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099856 n) (A034472 n)

end

end A103453.P7382248895931550308

namespace A103453

/-- `A099856(n)%A034472(n)` -/
def P7382248895931550308.Spec : Prop :=
  ∀ n, P7382248895931550308.a n = A103453 n

end A103453

/-! ## A103453.P17136611635343632446

`A198635(n)%A178674(n)`
-/

namespace A103453.P17136611635343632446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198635 n) (A178674 n)

end

end A103453.P17136611635343632446

namespace A103453

/-- `A198635(n)%A178674(n)` -/
def P17136611635343632446.Spec : Prop :=
  ∀ n, P17136611635343632446.a n = A103453 n

end A103453

/-!
# A103454: a(n) = 0^n + 4^n - 1.

The programs for A103454, the canonical program `A103454.P9944020970169822377` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103454 has offset 0).

The definition of A103454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^n+4^n-1` (program `A103454.P9944020970169822377`, by `A103454.P9944020970169822377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103454.P9944020970169822377

`0^n+4^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103454

/-- `0^n+4^n-1` -/
def P9944020970169822377.Spec : Prop :=
  ∀ n, P9944020970169822377.a n = A103454 n

theorem P9944020970169822377.correct : P9944020970169822377.Spec := by
  intro n
  simp only [A103454]

end A103454

/-! ## A103454.P5747391613257525212

`or(1, 4^n-1)`
-/

namespace A103454.P5747391613257525212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 ^ n : ℤ) - 1)

end

end A103454.P5747391613257525212

namespace A103454

/-- `or(1, 4^n-1)` -/
def P5747391613257525212.Spec : Prop :=
  ∀ n, P5747391613257525212.a n = A103454 n

end A103454

/-! ## A103454.P1570434255863114526

`abs(or(1, -4^n))`
-/

namespace A103454.P1570434255863114526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(4 ^ n : ℤ))|

end

end A103454.P1570434255863114526

namespace A103454

/-- `abs(or(1, -4^n))` -/
def P1570434255863114526.Spec : Prop :=
  ∀ n, P1570434255863114526.a n = A103454 n

end A103454

/-! ## A103454.P4534467416153647897

`-or(1, -4^n)`
-/

namespace A103454.P4534467416153647897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(4 ^ n : ℤ))

end

end A103454.P4534467416153647897

namespace A103454

/-- `-or(1, -4^n)` -/
def P4534467416153647897.Spec : Prop :=
  ∀ n, P4534467416153647897.a n = A103454 n

end A103454

/-! ## A103454.P12438887315816920882

`ogf((1-2x+4x^2)/(1-5x+4x^2))`
-/

namespace A103454.P12438887315816920882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -5, 4] n

end

end A103454.P12438887315816920882

namespace A103454

/-- `ogf((1-2x+4x^2)/(1-5x+4x^2))` -/
def P12438887315816920882.Spec : Prop :=
  ∀ n, P12438887315816920882.a n = A103454 n

end A103454

/-! ## A103454.P18063964665663981990

`xor(3, 4*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A103454.P18063964665663981990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A103454.P18063964665663981990

namespace A103454

/-- `xor(3, 4*a(n-1))` -/
def P18063964665663981990.Spec : Prop :=
  ∀ n, (P18063964665663981990.a n : ℤ) = A103454 n

end A103454

/-! ## A103454.P714212632973525187

`∑[4*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=12`
-/

namespace A103454.P714212632973525187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 12] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103454.P714212632973525187

namespace A103454

/-- `∑[4*a(n-1)]` -/
def P714212632973525187.Spec : Prop :=
  ∀ n, (P714212632973525187.a n : ℤ) = A103454 n

end A103454

/-! ## A103454.P15416699759727079659

`4*(1-(1/4-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A103454.P15416699759727079659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (1 - ((1 : ℚ) / 4 - a (n - 1)))

end

end A103454.P15416699759727079659

namespace A103454

/-- `4*(1-(1/4-a(n-1)))` -/
def P15416699759727079659.Spec : Prop :=
  ∀ n, P15416699759727079659.a n = (A103454 n : ℚ)

theorem P15416699759727079659.correct : P15416699759727079659.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A103454, Nat.add_sub_cancel, A103454.P15416699759727079659.a, A103454.P9944020970169822377.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A103454, Nat.add_sub_cancel, A103454.P15416699759727079659.a, A103454.P9944020970169822377.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103454

/-! ## A103454.P12482684716044360283

`record[A277936(n)]`
-/

namespace A103454.P12482684716044360283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P12482684716044360283

namespace A103454

/-- `record[A277936(n)]` -/
def P12482684716044360283.Spec : Prop :=
  ∀ n, P12482684716044360283.a n = A103454 n

end A103454

/-! ## A103454.P45564234563324331

`record[A282124(n)]`
-/

namespace A103454.P45564234563324331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P45564234563324331

namespace A103454

/-- `record[A282124(n)]` -/
def P45564234563324331.Spec : Prop :=
  ∀ n, P45564234563324331.a n = A103454 n

end A103454

/-! ## A103454.P10650777430373804856

`record[A285542(n)]`
-/

namespace A103454.P10650777430373804856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P10650777430373804856

namespace A103454

/-- `record[A285542(n)]` -/
def P10650777430373804856.Spec : Prop :=
  ∀ n, P10650777430373804856.a n = A103454 n

end A103454

/-! ## A103454.P14320821035258897987

`record[A285562(n)]`
-/

namespace A103454.P14320821035258897987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P14320821035258897987

namespace A103454

/-- `record[A285562(n)]` -/
def P14320821035258897987.Spec : Prop :=
  ∀ n, P14320821035258897987.a n = A103454 n

end A103454

/-! ## A103454.P5360809646482604492

`record[A285822(n)]`
-/

namespace A103454.P5360809646482604492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P5360809646482604492

namespace A103454

/-- `record[A285822(n)]` -/
def P5360809646482604492.Spec : Prop :=
  ∀ n, P5360809646482604492.a n = A103454 n

end A103454

/-! ## A103454.P15122503157204002544

`record[A285834(n)]`
-/

namespace A103454.P15122503157204002544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P15122503157204002544

namespace A103454

/-- `record[A285834(n)]` -/
def P15122503157204002544.Spec : Prop :=
  ∀ n, P15122503157204002544.a n = A103454 n

end A103454

/-! ## A103454.P13659338801545566131

`record[A285843(n)]`
-/

namespace A103454.P13659338801545566131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P13659338801545566131

namespace A103454

/-- `record[A285843(n)]` -/
def P13659338801545566131.Spec : Prop :=
  ∀ n, P13659338801545566131.a n = A103454 n

end A103454

/-! ## A103454.P8427997701437464753

`record[A285947(n)]`
-/

namespace A103454.P8427997701437464753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P8427997701437464753

namespace A103454

/-- `record[A285947(n)]` -/
def P8427997701437464753.Spec : Prop :=
  ∀ n, P8427997701437464753.a n = A103454 n

end A103454

/-! ## A103454.P10642954895476677127

`record[A286024(n)]`
-/

namespace A103454.P10642954895476677127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P10642954895476677127

namespace A103454

/-- `record[A286024(n)]` -/
def P10642954895476677127.Spec : Prop :=
  ∀ n, P10642954895476677127.a n = A103454 n

end A103454

/-! ## A103454.P5449553103035660192

`record[A286080(n)]`
-/

namespace A103454.P5449553103035660192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P5449553103035660192

namespace A103454

/-- `record[A286080(n)]` -/
def P5449553103035660192.Spec : Prop :=
  ∀ n, P5449553103035660192.a n = A103454 n

end A103454

/-! ## A103454.P3757307015079743482

`record[A286114(n)]`
-/

namespace A103454.P3757307015079743482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P3757307015079743482

namespace A103454

/-- `record[A286114(n)]` -/
def P3757307015079743482.Spec : Prop :=
  ∀ n, P3757307015079743482.a n = A103454 n

end A103454

/-! ## A103454.P4760295417612097515

`record[A286206(n)]`
-/

namespace A103454.P4760295417612097515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103454.P4760295417612097515

namespace A103454

/-- `record[A286206(n)]` -/
def P4760295417612097515.Spec : Prop :=
  ∀ n, P4760295417612097515.a n = A103454 n

end A103454

/-!
# A103455: a(n) = 0^n + 5^n - 1.

The programs for A103455, the canonical program `A103455.P10477490954289158756` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103455 has offset 0).

The definition of A103455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^n+5^n-1` (program `A103455.P10477490954289158756`, by `A103455.P10477490954289158756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103455.P10477490954289158756

`0^n+5^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103455

/-- `0^n+5^n-1` -/
def P10477490954289158756.Spec : Prop :=
  ∀ n, P10477490954289158756.a n = A103455 n

theorem P10477490954289158756.correct : P10477490954289158756.Spec := by
  intro n
  simp only [A103455]

end A103455

/-! ## A103455.P18076015853810655565

`abs(5^n-ceil(acot(n)))`
-/

namespace A103455.P18076015853810655565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉|

end

end A103455.P18076015853810655565

namespace A103455

/-- `abs(5^n-ceil(acot(n)))` -/
def P18076015853810655565.Spec : Prop :=
  ∀ n, P18076015853810655565.a n = A103455 n

end A103455

/-! ## A103455.P15244708614387469108

`xor(5^n, ceil(abs(sin(n))))`
-/

namespace A103455.P15244708614387469108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) ⌈|Real.sin (n : ℝ)|⌉

end

end A103455.P15244708614387469108

namespace A103455

/-- `xor(5^n, ceil(abs(sin(n))))` -/
def P15244708614387469108.Spec : Prop :=
  ∀ n, P15244708614387469108.a n = A103455 n

end A103455

/-! ## A103455.P1138361274023048894

`xor(5^n, ceil(sin(n)²))`
-/

namespace A103455.P1138361274023048894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103455.P1138361274023048894

namespace A103455

/-- `xor(5^n, ceil(sin(n)²))` -/
def P1138361274023048894.Spec : Prop :=
  ∀ n, P1138361274023048894.a n = A103455 n

end A103455

/-! ## A103455.P12152446654201658939

`ogf((1-2x+5x^2)/(1-6x+5x^2))`
-/

namespace A103455.P12152446654201658939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5] [1, -6, 5] n

end

end A103455.P12152446654201658939

namespace A103455

/-- `ogf((1-2x+5x^2)/(1-6x+5x^2))` -/
def P12152446654201658939.Spec : Prop :=
  ∀ n, P12152446654201658939.a n = A103455 n

end A103455

/-! ## A103455.P8230612770980832952

`xor(5^n, floor(atan(n+1)))`
-/

namespace A103455.P8230612770980832952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A103455.P8230612770980832952

namespace A103455

/-- `xor(5^n, floor(atan(n+1)))` -/
def P8230612770980832952.Spec : Prop :=
  ∀ n, P8230612770980832952.a n = A103455 n

end A103455

/-! ## A103455.P10170004445143997038

`∑[5*a(n-1)]` with `a(0)=1, a(1)=3, a(2)=20`
-/

namespace A103455.P10170004445143997038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 20] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103455.P10170004445143997038

namespace A103455

/-- `∑[5*a(n-1)]` -/
def P10170004445143997038.Spec : Prop :=
  ∀ n, (P10170004445143997038.a n : ℤ) = A103455 n

end A103455

/-! ## A103455.P4269411106793381959

`xor(1, 5*floor(5^(n-1)))`
-/

namespace A103455.P4269411106793381959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋)

end

end A103455.P4269411106793381959

namespace A103455

/-- `xor(1, 5*floor(5^(n-1)))` -/
def P4269411106793381959.Spec : Prop :=
  ∀ n, P4269411106793381959.a n = A103455 n

end A103455

/-! ## A103455.P7109999546901435731

`∏{d}[n, A019323(#)]`
-/

namespace A103455.P7109999546901435731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A019323 d

end

end A103455.P7109999546901435731

namespace A103455

/-- `∏{d}[n, A019323(#)]` -/
def P7109999546901435731.Spec : Prop :=
  ∀ n, P7109999546901435731.a n = A103455 n

end A103455

/-! ## A103455.P16906387571441589109

`A048330(A008574(n))`
-/

namespace A103455.P16906387571441589109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (A008574 n).toNat

end

end A103455.P16906387571441589109

namespace A103455

/-- `A048330(A008574(n))` -/
def P16906387571441589109.Spec : Prop :=
  ∀ n, P16906387571441589109.a n = A103455 n

end A103455

/-! ## A103455.P7862330181730724869

`A188531(A134227(n+1))`
-/

namespace A103455.P7862330181730724869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188531 (A134227 (n + 1)).toNat

end

end A103455.P7862330181730724869

namespace A103455

/-- `A188531(A134227(n+1))` -/
def P7862330181730724869.Spec : Prop :=
  ∀ n, P7862330181730724869.a n = A103455 n

end A103455

/-! ## A103455.P12896279472557324233

`floor((tanh(n)+4)^n)`
-/

namespace A103455.P12896279472557324233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tanh (n : ℝ) + 4) ^ n⌋

end

end A103455.P12896279472557324233

namespace A103455

/-- `floor((tanh(n)+4)^n)` -/
def P12896279472557324233.Spec : Prop :=
  ∀ n, P12896279472557324233.a n = A103455 n

end A103455

/-! ## A103455.P15430325729792759898

`floor(5^n-tanh(n))`
-/

namespace A103455.P15430325729792759898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℝ) - Real.tanh (n : ℝ)⌋

end

end A103455.P15430325729792759898

namespace A103455

/-- `floor(5^n-tanh(n))` -/
def P15430325729792759898.Spec : Prop :=
  ∀ n, P15430325729792759898.a n = A103455 n

end A103455

/-! ## A103455.P5335261530658549541

`round(5^n-tanh(n))`
-/

namespace A103455.P5335261530658549541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n : ℝ) - Real.tanh (n : ℝ))

end

end A103455.P5335261530658549541

namespace A103455

/-- `round(5^n-tanh(n))` -/
def P5335261530658549541.Spec : Prop :=
  ∀ n, P5335261530658549541.a n = A103455 n

end A103455

/-!
# A103456: a(n) = 0^n + 10^n - 1.

The programs for A103456, the canonical program `A103456.P11252445265459271757` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103456 has offset 0).

The definition of A103456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^n+10^n-1` (program `A103456.P11252445265459271757`, by `A103456.P11252445265459271757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103456.P11252445265459271757

`0^n+10^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103456

/-- `0^n+10^n-1` -/
def P11252445265459271757.Spec : Prop :=
  ∀ n, P11252445265459271757.a n = A103456 n

theorem P11252445265459271757.correct : P11252445265459271757.Spec := by
  intro n
  simp only [A103456]

end A103456

/-! ## A103456.P13134415476728166895

`or(1, 10^n-1)`
-/

namespace A103456.P13134415476728166895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((10 ^ n : ℤ) - 1)

end

end A103456.P13134415476728166895

namespace A103456

/-- `or(1, 10^n-1)` -/
def P13134415476728166895.Spec : Prop :=
  ∀ n, P13134415476728166895.a n = A103456 n

end A103456

/-! ## A103456.P10501142301876544258

`abs(or(1, -10^n))`
-/

namespace A103456.P10501142301876544258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(10 ^ n : ℤ))|

end

end A103456.P10501142301876544258

namespace A103456

/-- `abs(or(1, -10^n))` -/
def P10501142301876544258.Spec : Prop :=
  ∀ n, P10501142301876544258.a n = A103456 n

end A103456

/-! ## A103456.P10697060920548510867

`-or(1, -10^n)`
-/

namespace A103456.P10697060920548510867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(10 ^ n : ℤ))

end

end A103456.P10697060920548510867

namespace A103456

/-- `-or(1, -10^n)` -/
def P10697060920548510867.Spec : Prop :=
  ∀ n, P10697060920548510867.a n = A103456 n

end A103456

/-! ## A103456.P765717419504393374

`floor(10^n-tanh(n))`
-/

namespace A103456.P765717419504393374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℝ) - Real.tanh (n : ℝ)⌋

end

end A103456.P765717419504393374

namespace A103456

/-- `floor(10^n-tanh(n))` -/
def P765717419504393374.Spec : Prop :=
  ∀ n, P765717419504393374.a n = A103456 n

end A103456

/-! ## A103456.P2925747786665522383

`round(10^n-tanh(n))`
-/

namespace A103456.P2925747786665522383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 ^ n : ℝ) - Real.tanh (n : ℝ))

end

end A103456.P2925747786665522383

namespace A103456

/-- `round(10^n-tanh(n))` -/
def P2925747786665522383.Spec : Prop :=
  ∀ n, P2925747786665522383.a n = A103456 n

end A103456

/-! ## A103456.P14255899543810160506

`ogf((1-2x+10x^2)/(1-11x+10x^2))`
-/

namespace A103456.P14255899543810160506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 10] [1, -11, 10] n

end

end A103456.P14255899543810160506

namespace A103456

/-- `ogf((1-2x+10x^2)/(1-11x+10x^2))` -/
def P14255899543810160506.Spec : Prop :=
  ∀ n, P14255899543810160506.a n = A103456 n

end A103456

/-! ## A103456.P14709144745418044491

`A256162(Δ[n²])`
-/

namespace A103456.P14709144745418044491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103456.P14709144745418044491

namespace A103456

/-- `A256162(Δ[n²])` -/
def P14709144745418044491.Spec : Prop :=
  ∀ n, P14709144745418044491.a n = A103456 n

end A103456

/-! ## A103456.P10232065640944301361

`∏{d}[n, A019328(#)]`
-/

namespace A103456.P10232065640944301361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A019328 d

end

end A103456.P10232065640944301361

namespace A103456

/-- `∏{d}[n, A019328(#)]` -/
def P10232065640944301361.Spec : Prop :=
  ∀ n, P10232065640944301361.a n = A103456 n

end A103456

/-! ## A103456.P5603476108093969132

`abs(1-A178500(n))`
-/

namespace A103456.P5603476108093969132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A178500 n|

end

end A103456.P5603476108093969132

namespace A103456

/-- `abs(1-A178500(n))` -/
def P5603476108093969132.Spec : Prop :=
  ∀ n, P5603476108093969132.a n = A103456 n

end A103456

/-! ## A103456.P778133917627286967

`record[abs(1-A178501(n))]`
-/

namespace A103456.P778133917627286967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A178501 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103456.P778133917627286967

namespace A103456

/-- `record[abs(1-A178501(n))]` -/
def P778133917627286967.Spec : Prop :=
  ∀ n, P778133917627286967.a n = A103456 n

end A103456

/-! ## A103456.P14917882751271199750

`A114322(A008574(n))`
-/

namespace A103456.P14917882751271199750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (A008574 n).toNat

end

end A103456.P14917882751271199750

namespace A103456

/-- `A114322(A008574(n))` -/
def P14917882751271199750.Spec : Prop :=
  ∀ n, P14917882751271199750.a n = A103456 n

end A103456

/-! ## A103456.P2258665441748772565

`A114323(A008706(n))`
-/

namespace A103456.P2258665441748772565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114323 (A008706 n).toNat

end

end A103456.P2258665441748772565

namespace A103456

/-- `A114323(A008706(n))` -/
def P2258665441748772565.Spec : Prop :=
  ∀ n, P2258665441748772565.a n = A103456 n

end A103456

/-! ## A103456.P6624744156468661918

`A331788(A122709(n))`
-/

namespace A103456.P6624744156468661918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (A122709 n).toNat

end

end A103456.P6624744156468661918

namespace A103456

/-- `A331788(A122709(n))` -/
def P6624744156468661918.Spec : Prop :=
  ∀ n, P6624744156468661918.a n = A103456 n

end A103456

/-! ## A103456.P2354482063080981400

`∩[A010785(n), A181607(n+1)]`
-/

namespace A103456.P2354482063080981400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103456.P2354482063080981400

namespace A103456

/-- `∩[A010785(n), A181607(n+1)]` -/
def P2354482063080981400.Spec : Prop :=
  ∀ n, (P2354482063080981400.a n : ℤ) = A103456 n

end A103456

/-! ## A103456.P12042030258491637266

`∩[A051885(n), A145875(n+1)]`
-/

namespace A103456.P12042030258491637266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103456.P12042030258491637266

namespace A103456

/-- `∩[A051885(n), A145875(n+1)]` -/
def P12042030258491637266.Spec : Prop :=
  ∀ n, (P12042030258491637266.a n : ℤ) = A103456 n

end A103456

/-! ## A103456.P10642655374756311727

`∩[A061219(n+1), A145875(n+1)]`
-/

namespace A103456.P10642655374756311727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103456.P10642655374756311727

namespace A103456

/-- `∩[A061219(n+1), A145875(n+1)]` -/
def P10642655374756311727.Spec : Prop :=
  ∀ n, (P10642655374756311727.a n : ℤ) = A103456 n

end A103456

/-! ## A103456.P15372095353322516167

`∩[A061219(n+1), A181607(n+1)]`
-/

namespace A103456.P15372095353322516167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103456.P15372095353322516167

namespace A103456

/-- `∩[A061219(n+1), A181607(n+1)]` -/
def P15372095353322516167.Spec : Prop :=
  ∀ n, (P15372095353322516167.a n : ℤ) = A103456 n

end A103456

/-! ## A103456.P17454456817436957206

`∩[A114322(n+1), A145875(n+1)]`
-/

namespace A103456.P17454456817436957206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103456.P17454456817436957206

namespace A103456

/-- `∩[A114322(n+1), A145875(n+1)]` -/
def P17454456817436957206.Spec : Prop :=
  ∀ n, (P17454456817436957206.a n : ℤ) = A103456 n

end A103456

/-! ## A103456.P154146119138098301

`∩[A114323(n+1), A145875(n+1)]`
-/

namespace A103456.P154146119138098301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103456.P154146119138098301

namespace A103456

/-- `∩[A114323(n+1), A145875(n+1)]` -/
def P154146119138098301.Spec : Prop :=
  ∀ n, (P154146119138098301.a n : ℤ) = A103456 n

end A103456

/-!
# A103457: a(n) = 3^n + 1 - 0^n.

The programs for A103457, the canonical program `A103457.P18126289584890092929` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103457 has offset 0).

The definition of A103457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+1-0^n` (program `A103457.P18126289584890092929`, by `A103457.P18126289584890092929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103457.P18126289584890092929

`3^n+1-0^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103457

/-- `3^n+1-0^n` -/
def P18126289584890092929.Spec : Prop :=
  ∀ n, P18126289584890092929.a n = A103457 n

theorem P18126289584890092929.correct : P18126289584890092929.Spec := by
  intro n
  simp only [A103457]

end A103457

/-! ## A103457.P5252913580110409034

`ceil(3^n+abs(sin(n)))`
-/

namespace A103457.P5252913580110409034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A103457.P5252913580110409034

namespace A103457

/-- `ceil(3^n+abs(sin(n)))` -/
def P5252913580110409034.Spec : Prop :=
  ∀ n, P5252913580110409034.a n = A103457 n

end A103457

/-! ## A103457.P11966263776358683580

`ceil(3^n+sin(n)²)`
-/

namespace A103457.P11966263776358683580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A103457.P11966263776358683580

namespace A103457

/-- `ceil(3^n+sin(n)²)` -/
def P11966263776358683580.Spec : Prop :=
  ∀ n, P11966263776358683580.a n = A103457 n

end A103457

/-! ## A103457.P16346192169488584059

`round(atan(atan(n))+3^n)`
-/

namespace A103457.P16346192169488584059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ)) + (3 ^ n : ℝ))

end

end A103457.P16346192169488584059

namespace A103457

/-- `round(atan(atan(n))+3^n)` -/
def P16346192169488584059.Spec : Prop :=
  ∀ n, P16346192169488584059.a n = A103457 n

end A103457

/-! ## A103457.P3577555758428303902

`ogf((1-3x^2)/(1-4x+3x^2))`
-/

namespace A103457.P3577555758428303902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 3] n

end

end A103457.P3577555758428303902

namespace A103457

/-- `ogf((1-3x^2)/(1-4x+3x^2))` -/
def P3577555758428303902.Spec : Prop :=
  ∀ n, P3577555758428303902.a n = A103457 n

end A103457

/-! ## A103457.P759592108152751165

`∑[record[3*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A103457.P759592108152751165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103457.P759592108152751165

namespace A103457

/-- `∑[record[3*a(n-1)]]` -/
def P759592108152751165.Spec : Prop :=
  ∀ n, (P759592108152751165.a n : ℤ) = A103457 n

end A103457

/-! ## A103457.P16857530242919144694

`∑[(3-char[2])*a(n-1)]` with `a(0)=1`
-/

namespace A103457.P16857530242919144694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103457.P16857530242919144694

namespace A103457

/-- `∑[(3-char[2])*a(n-1)]` -/
def P16857530242919144694.Spec : Prop :=
  ∀ n, P16857530242919144694.a n = A103457 n

end A103457

/-! ## A103457.P14347322622254637567

`∑{d}[-a(n-1), #^n]` with `a(0)=1, a(1)=3`
-/

namespace A103457.P14347322622254637567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A103457.P14347322622254637567

namespace A103457

/-- `∑{d}[-a(n-1), #^n]` -/
def P14347322622254637567.Spec : Prop :=
  ∀ n, (P14347322622254637567.a n : ℤ) = A103457 n

end A103457

/-! ## A103457.P11048774314817506071

`floor(a(n-1)+a(n-1)+a(n-1)-2)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A103457.P11048774314817506071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 2))

end

end A103457.P11048774314817506071

namespace A103457

/-- `floor(a(n-1)+a(n-1)+a(n-1)-2)` -/
def P11048774314817506071.Spec : Prop :=
  ∀ n, P11048774314817506071.a n = A103457 n

theorem P11048774314817506071.correct : P11048774314817506071.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A103457, Nat.add_sub_cancel, A103457.P11048774314817506071.a, A103457.P18126289584890092929.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A103457, Nat.add_sub_cancel, A103457.P11048774314817506071.a, A103457.P18126289584890092929.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103457

/-! ## A103457.P10246656068630630727

`floor(a(n-1)-(2-a(n-1)-a(n-1)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A103457.P10246656068630630727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1))

end

end A103457.P10246656068630630727

namespace A103457

/-- `floor(a(n-1)-(2-a(n-1)-a(n-1)))` -/
def P10246656068630630727.Spec : Prop :=
  ∀ n, P10246656068630630727.a n = A103457 n

theorem P10246656068630630727.correct : P10246656068630630727.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A103457, Nat.add_sub_cancel, A103457.P10246656068630630727.a, A103457.P18126289584890092929.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A103457, Nat.add_sub_cancel, A103457.P10246656068630630727.a, A103457.P18126289584890092929.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103457

/-! ## A103457.P15358787348171251632

`record[Δ[A074324(n)]+1]`
-/

namespace A103457.P15358787348171251632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103457.P15358787348171251632

namespace A103457

/-- `record[Δ[A074324(n)]+1]` -/
def P15358787348171251632.Spec : Prop :=
  ∀ n, P15358787348171251632.a n = A103457 n

end A103457

/-! ## A103457.P12703511963052493756

`∑[A025192(n)+char[1]]`
-/

namespace A103457.P12703511963052493756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103457.P12703511963052493756

namespace A103457

/-- `∑[A025192(n)+char[1]]` -/
def P12703511963052493756.Spec : Prop :=
  ∀ n, P12703511963052493756.a n = A103457 n

end A103457

/-! ## A103457.P9579190851320706548

`∑[A202337(n+2)/2]`
-/

namespace A103457.P9579190851320706548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202337 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103457.P9579190851320706548

namespace A103457

/-- `∑[A202337(n+2)/2]` -/
def P9579190851320706548.Spec : Prop :=
  ∀ n, P9579190851320706548.a n = (A103457 n : ℚ)

end A103457

/-! ## A103457.P16879593149819604674

`record[A254006(n+1)+1]`
-/

namespace A103457.P16879593149819604674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103457.P16879593149819604674

namespace A103457

/-- `record[A254006(n+1)+1]` -/
def P16879593149819604674.Spec : Prop :=
  ∀ n, P16879593149819604674.a n = A103457 n

end A103457

/-! ## A103457.P575531739017856250

`A094388((n+1)%(2*n+1))`
-/

namespace A103457.P575531739017856250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 ((n + 1) % (2 * n + 1))

end

end A103457.P575531739017856250

namespace A103457

/-- `A094388((n+1)%(2*n+1))` -/
def P575531739017856250.Spec : Prop :=
  ∀ n, P575531739017856250.a n = A103457 n

end A103457

/-! ## A103457.P4091235630818619830

`∏{e}[A006530(n+1), 3^n+#]`
-/

namespace A103457.P4091235630818619830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (3 ^ n + Nat.factorization (f1 n).natAbs p)

end

end A103457.P4091235630818619830

namespace A103457

/-- `∏{e}[A006530(n+1), 3^n+#]` -/
def P4091235630818619830.Spec : Prop :=
  ∀ n, (P4091235630818619830.a n : ℤ) = A103457 n

end A103457

/-! ## A103457.P8464906604714663344

`A167051(A008486(n))`
-/

namespace A103457.P8464906604714663344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167051 (A008486 n).toNat

end

end A103457.P8464906604714663344

namespace A103457

/-- `A167051(A008486(n))` -/
def P8464906604714663344.Spec : Prop :=
  ∀ n, P8464906604714663344.a n = A103457 n

end A103457

/-! ## A103457.P12325164514347514741

`A076270(A350102(n))`
-/

namespace A103457.P12325164514347514741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076270 (A350102 n).toNat

end

end A103457.P12325164514347514741

namespace A103457

/-- `A076270(A350102(n))` -/
def P12325164514347514741.Spec : Prop :=
  ∀ n, P12325164514347514741.a n = A103457 n

end A103457

/-! ## A103457.P17304609036419350515

`A094388(A087156(n+1))`
-/

namespace A103457.P17304609036419350515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (A087156 (n + 1)).toNat

end

end A103457.P17304609036419350515

namespace A103457

/-- `A094388(A087156(n+1))` -/
def P17304609036419350515.Spec : Prop :=
  ∀ n, P17304609036419350515.a n = A103457 n

end A103457

/-! ## A103457.P6019166834808251390

`A365390(A140475(n+1))`
-/

namespace A103457.P6019166834808251390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365390 (A140475 (n + 1)).toNat

end

end A103457.P6019166834808251390

namespace A103457

/-- `A365390(A140475(n+1))` -/
def P6019166834808251390.Spec : Prop :=
  ∀ n, P6019166834808251390.a n = A103457 n

end A103457

/-!
# A103458: a(n) = 7^n + 1 - 0^n.

The programs for A103458, the canonical program `A103458.P15873924745184383422` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103458 has offset 0).

The definition of A103458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+1-0^n` (program `A103458.P15873924745184383422`, by `A103458.P15873924745184383422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103458.P15873924745184383422

`7^n+1-0^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103458

/-- `7^n+1-0^n` -/
def P15873924745184383422.Spec : Prop :=
  ∀ n, P15873924745184383422.a n = A103458 n

theorem P15873924745184383422.correct : P15873924745184383422.Spec := by
  intro n
  simp only [A103458]

end A103458

/-! ## A103458.P4338096288924598755

`ogf((1-7x^2)/(1-8x+7x^2))`
-/

namespace A103458.P4338096288924598755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -7] [1, -8, 7] n

end

end A103458.P4338096288924598755

namespace A103458

/-- `ogf((1-7x^2)/(1-8x+7x^2))` -/
def P4338096288924598755.Spec : Prop :=
  ∀ n, P4338096288924598755.a n = A103458 n

end A103458

/-! ## A103458.P2529389010426856935

`floor(atan(n+1)+7^n)`
-/

namespace A103458.P2529389010426856935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (7 ^ n : ℝ)⌋

end

end A103458.P2529389010426856935

namespace A103458

/-- `floor(atan(n+1)+7^n)` -/
def P2529389010426856935.Spec : Prop :=
  ∀ n, P2529389010426856935.a n = A103458 n

end A103458

/-! ## A103458.P18209156938078839386

`7*(a(n-1)-6/7)` with `a(0)=1, a(1)=8`
-/

namespace A103458.P18209156938078839386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 * (a (n - 1) - (6 : ℚ) / 7)

end

end A103458.P18209156938078839386

namespace A103458

/-- `7*(a(n-1)-6/7)` -/
def P18209156938078839386.Spec : Prop :=
  ∀ n, P18209156938078839386.a n = (A103458 n : ℚ)

theorem P18209156938078839386.correct : P18209156938078839386.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A103458, Nat.add_sub_cancel, A103458.P18209156938078839386.a, A103458.P15873924745184383422.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A103458, Nat.add_sub_cancel, A103458.P18209156938078839386.a, A103458.P15873924745184383422.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103458

/-! ## A103458.P7403414241443565423

`∑[A055272(n)+char[1]]`
-/

namespace A103458.P7403414241443565423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103458.P7403414241443565423

namespace A103458

/-- `∑[A055272(n)+char[1]]` -/
def P7403414241443565423.Spec : Prop :=
  ∀ n, P7403414241443565423.a n = A103458 n

end A103458

/-! ## A103458.P145149864194628455

`A076286(A350102(n))`
-/

namespace A103458.P145149864194628455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076286 (A350102 n).toNat

end

end A103458.P145149864194628455

namespace A103458

/-- `A076286(A350102(n))` -/
def P145149864194628455.Spec : Prop :=
  ∀ n, P145149864194628455.a n = A103458 n

end A103458

/-! ## A103458.P15018703508659307624

`ceil(tanh(n)+7^n)`
-/

namespace A103458.P15018703508659307624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n : ℝ) + (7 ^ n : ℝ)⌉

end

end A103458.P15018703508659307624

namespace A103458

/-- `ceil(tanh(n)+7^n)` -/
def P15018703508659307624.Spec : Prop :=
  ∀ n, P15018703508659307624.a n = A103458 n

end A103458

/-! ## A103458.P16630155241847164207

`round(tanh(n)+7^n)`
-/

namespace A103458.P16630155241847164207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (n : ℝ) + (7 ^ n : ℝ))

end

end A103458.P16630155241847164207

namespace A103458

/-- `round(tanh(n)+7^n)` -/
def P16630155241847164207.Spec : Prop :=
  ∀ n, P16630155241847164207.a n = A103458 n

end A103458

/-! ## A103458.P5354280337151704388

`ceil(sqrt(A155590(2*n)))`
-/

namespace A103458.P5354280337151704388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A155590 (2 * n) : ℝ)⌉

end

end A103458.P5354280337151704388

namespace A103458

/-- `ceil(sqrt(A155590(2*n)))` -/
def P5354280337151704388.Spec : Prop :=
  ∀ n, P5354280337151704388.a n = A103458 n

end A103458

/-! ## A103458.P9181420480888352465

`ceil(sqrt(A221909(2*n)))`
-/

namespace A103458.P9181420480888352465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A221909 (2 * n) : ℝ)⌉

end

end A103458.P9181420480888352465

namespace A103458

/-- `ceil(sqrt(A221909(2*n)))` -/
def P9181420480888352465.Spec : Prop :=
  ∀ n, P9181420480888352465.a n = A103458 n

end A103458

/-!
# A103459: a(n) = 8^n + 1 - 0^n.

The programs for A103459, the canonical program `A103459.P1140883576184880885` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103459 has offset 0).

The definition of A103459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+1-0^n` (program `A103459.P1140883576184880885`, by `A103459.P1140883576184880885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103459.P1140883576184880885

`8^n+1-0^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103459

/-- `8^n+1-0^n` -/
def P1140883576184880885.Spec : Prop :=
  ∀ n, P1140883576184880885.a n = A103459 n

theorem P1140883576184880885.correct : P1140883576184880885.Spec := by
  intro n
  simp only [A103459]

end A103459

/-! ## A103459.P7799375069321422338

`or(1, 8^n)`
-/

namespace A103459.P7799375069321422338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 ^ n)

end

end A103459.P7799375069321422338

namespace A103459

/-- `or(1, 8^n)` -/
def P7799375069321422338.Spec : Prop :=
  ∀ n, (P7799375069321422338.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P8450094870067410058

`xor(8^n, ceil(sin(n)²))`
-/

namespace A103459.P8450094870067410058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103459.P8450094870067410058

namespace A103459

/-- `xor(8^n, ceil(sin(n)²))` -/
def P8450094870067410058.Spec : Prop :=
  ∀ n, P8450094870067410058.a n = A103459 n

end A103459

/-! ## A103459.P5917625322033695416

`ogf((1-8x^2)/(1-9x+8x^2))`
-/

namespace A103459.P5917625322033695416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -8] [1, -9, 8] n

end

end A103459.P5917625322033695416

namespace A103459

/-- `ogf((1-8x^2)/(1-9x+8x^2))` -/
def P5917625322033695416.Spec : Prop :=
  ∀ n, P5917625322033695416.a n = A103459 n

end A103459

/-! ## A103459.P15020271242534219849

`floor(atan(n+1)+8^n)`
-/

namespace A103459.P15020271242534219849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (8 ^ n : ℝ)⌋

end

end A103459.P15020271242534219849

namespace A103459

/-- `floor(atan(n+1)+8^n)` -/
def P15020271242534219849.Spec : Prop :=
  ∀ n, P15020271242534219849.a n = A103459 n

end A103459

/-! ## A103459.P7437550837070439511

`xor(8^n, (n+2)%(n+1))`
-/

namespace A103459.P7437550837070439511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (8 ^ n) ((n + 2) % (n + 1))

end

end A103459.P7437550837070439511

namespace A103459

/-- `xor(8^n, (n+2)%(n+1))` -/
def P7437550837070439511.Spec : Prop :=
  ∀ n, (P7437550837070439511.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P17981902943489102116

`A083318(3*n)`
-/

namespace A103459.P17981902943489102116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (3 * n)

end

end A103459.P17981902943489102116

namespace A103459

/-- `A083318(3*n)` -/
def P17981902943489102116.Spec : Prop :=
  ∀ n, P17981902943489102116.a n = A103459 n

end A103459

/-! ## A103459.P3140914850345943742

`record[or(1, A094014(n))]`
-/

namespace A103459.P3140914850345943742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094014 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103459.P3140914850345943742

namespace A103459

/-- `record[or(1, A094014(n))]` -/
def P3140914850345943742.Spec : Prop :=
  ∀ n, P3140914850345943742.a n = A103459 n

end A103459

/-! ## A103459.P18344803834343465135

`A127904(3*n+1)`
-/

namespace A103459.P18344803834343465135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (3 * n + 1)

end

end A103459.P18344803834343465135

namespace A103459

/-- `A127904(3*n+1)` -/
def P18344803834343465135.Spec : Prop :=
  ∀ n, P18344803834343465135.a n = A103459 n

end A103459

/-! ## A103459.P9987501290167317742

`A143096(3*n+1)`
-/

namespace A103459.P9987501290167317742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143096 (3 * n + 1)

end

end A103459.P9987501290167317742

namespace A103459

/-- `A143096(3*n+1)` -/
def P9987501290167317742.Spec : Prop :=
  ∀ n, P9987501290167317742.a n = A103459 n

end A103459

/-! ## A103459.P4083526639197597380

`A174316(3*(n+1))/2`
-/

namespace A103459.P4083526639197597380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174316 (3 * (n + 1)) : ℚ) / 2

end

end A103459.P4083526639197597380

namespace A103459

/-- `A174316(3*(n+1))/2` -/
def P4083526639197597380.Spec : Prop :=
  ∀ n, P4083526639197597380.a n = (A103459 n : ℚ)

end A103459

/-! ## A103459.P4001981820896155131

`A052552(A008458(n))`
-/

namespace A103459.P4001981820896155131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A008458 n).toNat

end

end A103459.P4001981820896155131

namespace A103459

/-- `A052552(A008458(n))` -/
def P4001981820896155131.Spec : Prop :=
  ∀ n, P4001981820896155131.a n = A103459 n

end A103459

/-! ## A103459.P14308802150796396183

`A076287(A350102(n))`
-/

namespace A103459.P14308802150796396183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (A350102 n).toNat

end

end A103459.P14308802150796396183

namespace A103459

/-- `A076287(A350102(n))` -/
def P14308802150796396183.Spec : Prop :=
  ∀ n, P14308802150796396183.a n = A103459 n

end A103459

/-! ## A103459.P9904642954797025247

`A062395(n)/A054977(n)`
-/

namespace A103459.P9904642954797025247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062395 n : ℚ) / (A054977 n : ℚ)

end

end A103459.P9904642954797025247

namespace A103459

/-- `A062395(n)/A054977(n)` -/
def P9904642954797025247.Spec : Prop :=
  ∀ n, P9904642954797025247.a n = (A103459 n : ℚ)

end A103459

/-! ## A103459.P16723522309973223696

`∩[A076287(n+1), A083318(n)]`
-/

namespace A103459.P16723522309973223696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103459.P16723522309973223696

namespace A103459

/-- `∩[A076287(n+1), A083318(n)]` -/
def P16723522309973223696.Spec : Prop :=
  ∀ n, (P16723522309973223696.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P14119580976727198859

`∩[A076287(n+1), A094373(n)]`
-/

namespace A103459.P14119580976727198859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103459.P14119580976727198859

namespace A103459

/-- `∩[A076287(n+1), A094373(n)]` -/
def P14119580976727198859.Spec : Prop :=
  ∀ n, (P14119580976727198859.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P7768939689481413031

`∩[A076287(n+1), A107684(n)]`
-/

namespace A103459.P7768939689481413031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103459.P7768939689481413031

namespace A103459

/-- `∩[A076287(n+1), A107684(n)]` -/
def P7768939689481413031.Spec : Prop :=
  ∀ n, (P7768939689481413031.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P14336933606463776684

`∩[A076287(n+1), A127904(n)]`
-/

namespace A103459.P14336933606463776684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103459.P14336933606463776684

namespace A103459

/-- `∩[A076287(n+1), A127904(n)]` -/
def P14336933606463776684.Spec : Prop :=
  ∀ n, (P14336933606463776684.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P11587592437566834182

`∩[A076287(n+1), A200947(n)]`
-/

namespace A103459.P11587592437566834182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200947 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103459.P11587592437566834182

namespace A103459

/-- `∩[A076287(n+1), A200947(n)]` -/
def P11587592437566834182.Spec : Prop :=
  ∀ n, (P11587592437566834182.a n : ℤ) = A103459 n

end A103459

/-! ## A103459.P5291656302917294223

`∩[A064386(n+1), A076287(n+1)]`
-/

namespace A103459.P5291656302917294223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103459.P5291656302917294223

namespace A103459

/-- `∩[A064386(n+1), A076287(n+1)]` -/
def P5291656302917294223.Spec : Prop :=
  ∀ n, (P5291656302917294223.a n : ℤ) = A103459 n

end A103459

/-!
# A103460: a(n) = 9^n + 1 - 0^n.

The programs for A103460, the canonical program `A103460.P16120955606914587622` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103460 has offset 0).

The definition of A103460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+1-0^n` (program `A103460.P16120955606914587622`, by `A103460.P16120955606914587622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103460.P16120955606914587622

`9^n+1-0^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103460

/-- `9^n+1-0^n` -/
def P16120955606914587622.Spec : Prop :=
  ∀ n, P16120955606914587622.a n = A103460 n

theorem P16120955606914587622.correct : P16120955606914587622.Spec := by
  intro n
  simp only [A103460]

end A103460

/-! ## A103460.P8713274023058148299

`ogf((1-9x^2)/(1-10x+9x^2))`
-/

namespace A103460.P8713274023058148299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -9] [1, -10, 9] n

end

end A103460.P8713274023058148299

namespace A103460

/-- `ogf((1-9x^2)/(1-10x+9x^2))` -/
def P8713274023058148299.Spec : Prop :=
  ∀ n, P8713274023058148299.a n = A103460 n

end A103460

/-! ## A103460.P12128193983991441885

`xor(9^n, 3%(n+3))`
-/

namespace A103460.P12128193983991441885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (9 ^ n) (3 % (n + 3))

end

end A103460.P12128193983991441885

namespace A103460

/-- `xor(9^n, 3%(n+3))` -/
def P12128193983991441885.Spec : Prop :=
  ∀ n, (P12128193983991441885.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P10063808249270527149

`floor(atan(n+1)+9^n)`
-/

namespace A103460.P10063808249270527149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (9 ^ n : ℝ)⌋

end

end A103460.P10063808249270527149

namespace A103460

/-- `floor(atan(n+1)+9^n)` -/
def P10063808249270527149.Spec : Prop :=
  ∀ n, P10063808249270527149.a n = A103460 n

end A103460

/-! ## A103460.P9385585693650193020

`A084182(2*n)`
-/

namespace A103460.P9385585693650193020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 (2 * n)

end

end A103460.P9385585693650193020

namespace A103460

/-- `A084182(2*n)` -/
def P9385585693650193020.Spec : Prop :=
  ∀ n, P9385585693650193020.a n = A103460 n

end A103460

/-! ## A103460.P2271897313501806453

`A103457(2*n)`
-/

namespace A103460.P2271897313501806453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 (2 * n)

end

end A103460.P2271897313501806453

namespace A103460

/-- `A103457(2*n)` -/
def P2271897313501806453.Spec : Prop :=
  ∀ n, P2271897313501806453.a n = A103460 n

end A103460

/-! ## A103460.P3500631679125305071

`∑[A055275(n)+char[1]]`
-/

namespace A103460.P3500631679125305071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103460.P3500631679125305071

namespace A103460

/-- `∑[A055275(n)+char[1]]` -/
def P3500631679125305071.Spec : Prop :=
  ∀ n, P3500631679125305071.a n = A103460 n

end A103460

/-! ## A103460.P6588344822499299486

`A167051(A008458(n))`
-/

namespace A103460.P6588344822499299486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167051 (A008458 n).toNat

end

end A103460.P6588344822499299486

namespace A103460

/-- `A167051(A008458(n))` -/
def P6588344822499299486.Spec : Prop :=
  ∀ n, P6588344822499299486.a n = A103460 n

end A103460

/-! ## A103460.P10807404502563076508

`A076288(A350102(n))`
-/

namespace A103460.P10807404502563076508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076288 (A350102 n).toNat

end

end A103460.P10807404502563076508

namespace A103460

/-- `A076288(A350102(n))` -/
def P10807404502563076508.Spec : Prop :=
  ∀ n, P10807404502563076508.a n = A103460 n

end A103460

/-! ## A103460.P4322256580977810698

`∩[A084182(n), A103457(n)]`
-/

namespace A103460.P4322256580977810698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103460.P4322256580977810698

namespace A103460

/-- `∩[A084182(n), A103457(n)]` -/
def P4322256580977810698.Spec : Prop :=
  ∀ n, (P4322256580977810698.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P9789179673934706196

`∩[A076270(n+1), A084182(n)]`
-/

namespace A103460.P9789179673934706196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103460.P9789179673934706196

namespace A103460

/-- `∩[A076270(n+1), A084182(n)]` -/
def P9789179673934706196.Spec : Prop :=
  ∀ n, (P9789179673934706196.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P17917821002608825798

`∩[A076288(n+1), A084182(n)]`
-/

namespace A103460.P17917821002608825798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103460.P17917821002608825798

namespace A103460

/-- `∩[A076288(n+1), A084182(n)]` -/
def P17917821002608825798.Spec : Prop :=
  ∀ n, (P17917821002608825798.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P8386135265377884358

`∩[A076288(n+1), A094388(n)]`
-/

namespace A103460.P8386135265377884358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103460.P8386135265377884358

namespace A103460

/-- `∩[A076288(n+1), A094388(n)]` -/
def P8386135265377884358.Spec : Prop :=
  ∀ n, (P8386135265377884358.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P8458409623906643621

`∩[A076288(n+1), A103457(n)]`
-/

namespace A103460.P8458409623906643621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103460.P8458409623906643621

namespace A103460

/-- `∩[A076288(n+1), A103457(n)]` -/
def P8458409623906643621.Spec : Prop :=
  ∀ n, (P8458409623906643621.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P16018877683257840434

`A007051(2*n)*A280193(2*n)`
-/

namespace A103460.P16018877683257840434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n) * A280193 (2 * n)

end

end A103460.P16018877683257840434

namespace A103460

/-- `A007051(2*n)*A280193(2*n)` -/
def P16018877683257840434.Spec : Prop :=
  ∀ n, P16018877683257840434.a n = A103460 n

end A103460

/-! ## A103460.P14564127293475415786

`∩[A076288(n+1), A167051(n+1)]`
-/

namespace A103460.P14564127293475415786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103460.P14564127293475415786

namespace A103460

/-- `∩[A076288(n+1), A167051(n+1)]` -/
def P14564127293475415786.Spec : Prop :=
  ∀ n, (P14564127293475415786.a n : ℤ) = A103460 n

end A103460

/-! ## A103460.P14292050710591005486

`ceil(tanh(n)+9^n)`
-/

namespace A103460.P14292050710591005486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n : ℝ) + (9 ^ n : ℝ)⌉

end

end A103460.P14292050710591005486

namespace A103460

/-- `ceil(tanh(n)+9^n)` -/
def P14292050710591005486.Spec : Prop :=
  ∀ n, P14292050710591005486.a n = A103460 n

end A103460

/-! ## A103460.P7759226968553916072

`round(tanh(n)+9^n)`
-/

namespace A103460.P7759226968553916072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (n : ℝ) + (9 ^ n : ℝ))

end

end A103460.P7759226968553916072

namespace A103460

/-- `round(tanh(n)+9^n)` -/
def P7759226968553916072.Spec : Prop :=
  ∀ n, P7759226968553916072.a n = A103460 n

end A103460

/-!
# A103461: a(n) = (-10)^n + 1 - 0^n.

The programs for A103461, the canonical program `A103461.P2425211347882231955` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103461 has offset 0).

The definition of A103461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-10)^n+1-0^n` (program `A103461.P2425211347882231955`, by `A103461.P2425211347882231955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103461.P2425211347882231955

`(-10)^n+1-0^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103461

/-- `(-10)^n+1-0^n` -/
def P2425211347882231955.Spec : Prop :=
  ∀ n, P2425211347882231955.a n = A103461 n

theorem P2425211347882231955.correct : P2425211347882231955.Spec := by
  intro n
  simp only [A103461]

end A103461

/-! ## A103461.P16645134995885624755

`or(1, (-10)^n)`
-/

namespace A103461.P16645134995885624755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-10) ^ n)

end

end A103461.P16645134995885624755

namespace A103461

/-- `or(1, (-10)^n)` -/
def P16645134995885624755.Spec : Prop :=
  ∀ n, P16645134995885624755.a n = A103461 n

end A103461

/-! ## A103461.P13891340637672058124

`∑[ogf((1+10x^2)/(1+10x))]`
-/

namespace A103461.P13891340637672058124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 10] [1, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103461.P13891340637672058124

namespace A103461

/-- `∑[ogf((1+10x^2)/(1+10x))]` -/
def P13891340637672058124.Spec : Prop :=
  ∀ n, P13891340637672058124.a n = A103461 n

end A103461

/-! ## A103461.P4831491220359424986

`ogf((1+10x^2)/(1+9x-10x^2))`
-/

namespace A103461.P4831491220359424986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 10] [1, 9, -10] n

end

end A103461.P4831491220359424986

namespace A103461

/-- `ogf((1+10x^2)/(1+9x-10x^2))` -/
def P4831491220359424986.Spec : Prop :=
  ∀ n, P4831491220359424986.a n = A103461 n

end A103461

/-! ## A103461.P7579756699128571111

`∑[10*(char[2]-a(n-1))]` with `a(0)=1`
-/

namespace A103461.P7579756699128571111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103461.P7579756699128571111

namespace A103461

/-- `∑[10*(char[2]-a(n-1))]` -/
def P7579756699128571111.Spec : Prop :=
  ∀ n, P7579756699128571111.a n = A103461 n

end A103461

/-! ## A103461.P9497536518026461174

`xor(1, (-10)^n*ceil(sin(n)²))`
-/

namespace A103461.P9497536518026461174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((-10) ^ n * ⌈Real.sin (n : ℝ) ^ 2⌉)

end

end A103461.P9497536518026461174

namespace A103461

/-- `xor(1, (-10)^n*ceil(sin(n)²))` -/
def P9497536518026461174.Spec : Prop :=
  ∀ n, P9497536518026461174.a n = A103461 n

end A103461

/-! ## A103461.P2044094568018319240

`xor((-10)^n, a(floor(acot(n)²)))` with `a(0)=1`
-/

namespace A103461.P2044094568018319240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ((-10) ^ n) (a ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋.toNat)

end

end A103461.P2044094568018319240

namespace A103461

/-- `xor((-10)^n, a(floor(acot(n)²)))` -/
def P2044094568018319240.Spec : Prop :=
  ∀ n, P2044094568018319240.a n = A103461 n

end A103461

/-!
# A103462: A triangle with palindromic cubes, read by rows.

The programs for A103462, the canonical program `A103462.P8764215070307129193` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103462 has offset 0).

The definition of A103462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103462.P234011587849132013

`char[comp[∑[n-1]]]+(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A103462.P234011587849132013
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A103462.P234011587849132013

namespace A103462

/-- `char[comp[∑[n-1]]]+(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P234011587849132013.Spec : Prop :=
  ∀ n, P234011587849132013.a n = (A103462 n : ℚ)

end A103462

/-! ## A103462.P3831463494199242455

`A004248(n)+char[comp[∑[n-1]]]`
-/

namespace A103462.P3831463494199242455
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
  A004248 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A103462.P3831463494199242455

namespace A103462

/-- `A004248(n)+char[comp[∑[n-1]]]` -/
def P3831463494199242455.Spec : Prop :=
  ∀ n, P3831463494199242455.a n = A103462 n

end A103462

/-! ## A103462.P8764215070307129193

`A023532(n)+A004248(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103462

/-- `A023532(n)+A004248(n)` -/
def P8764215070307129193.Spec : Prop :=
  ∀ n, P8764215070307129193.a n = A103462 n

theorem P8764215070307129193.correct : P8764215070307129193.Spec := by
  intro n
  simp only [A103462]

end A103462

/-! ## A103462.P12549418844842648708

`A123110(n+1)+A004248(n)`
-/

namespace A103462.P12549418844842648708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 (n + 1) + A004248 n

end

end A103462.P12549418844842648708

namespace A103462

/-- `A123110(n+1)+A004248(n)` -/
def P12549418844842648708.Spec : Prop :=
  ∀ n, P12549418844842648708.a n = A103462 n

end A103462

/-! ## A103462.P16240774569551328187

`A004248(n)+1-Δ[A003056(n)]`
-/

namespace A103462.P16240774569551328187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n + 1 - (f1 (n + 1) - f1 n)

end

end A103462.P16240774569551328187

namespace A103462

/-- `A004248(n)+1-Δ[A003056(n)]` -/
def P16240774569551328187.Spec : Prop :=
  ∀ n, P16240774569551328187.a n = A103462 n

theorem P16240774569551328187.correct : P16240774569551328187.Spec := by
  intro n
  simp only [A103462, Nat.add_sub_cancel, A103462.P16240774569551328187.f1, A103462.P16240774569551328187.a, A103462.P8764215070307129193.a, A003056, A003056.P5318256527314048597.a, A004248, A004248.P16023718882041671071.a, A023532, A023532.P12646681522116481213.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A103462

/-! ## A103462.P13641709950075967289

`A003992(∑[2*n]%comp[∑[n]])+char[comp[∑[n-1]]]`
-/

namespace A103462.P13641709950075967289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A103462.P13641709950075967289

namespace A103462

/-- `A003992(∑[2*n]%comp[∑[n]])+char[comp[∑[n-1]]]` -/
def P13641709950075967289.Spec : Prop :=
  ∀ n, P13641709950075967289.a n = A103462 n

end A103462

/-!
# A103464: Number of polyominoes consisting of n regular unit heptagons.

The programs for A103464, there is no canonical definition to state claims against.
-/

/-! ## A103464.P5268533961227902528

`A103465(n+1)+A069905(A014381(n))`
-/

namespace A103464.P5268533961227902528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103465 (n + 1) + A069905 (A014381 n).toNat

end

end A103464.P5268533961227902528

/-! ## A103464.P10630581344016088250

`A103465(n+1)+A019472(A014376(3*n))`
-/

namespace A103464.P10630581344016088250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103465 (n + 1) + A019472 (A014376 (3 * n)).toNat

end

end A103464.P10630581344016088250

/-! ## A103464.P10831032771083431746

`A069905(A014381(n))+A003074(A105484(n+4))+1`
-/

namespace A103464.P10831032771083431746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A014381 n).toNat + (A003074 (A105484 (n + 4)).toNat + 1)

end

end A103464.P10831032771083431746

/-!
# A103465: Number of polyominoes that can be formed from n regular unit pentagons (or polypents of order n).

The programs for A103465, there is no canonical definition to state claims against.
-/

/-! ## A103465.P14476701872338318397

`A003074(A105484(n+4))+1`
-/

namespace A103465.P14476701872338318397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A105484 (n + 4)).toNat + 1

end

end A103465.P14476701872338318397

/-! ## A103465.P11460371735875192219

`A360665(A113984(n))+A356933(n)`
-/

namespace A103465.P11460371735875192219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360665 (A113984 n).toNat + A356933 n

end

end A103465.P11460371735875192219

/-! ## A103465.P5257358417630126650

`∑[A133430(A086581(n)+A045931(n))]`
-/

namespace A103465.P5257358417630126650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (A086581 n + A045931 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103465.P5257358417630126650

/-!
# A103466: Number of polyominoes consisting of n regular unit octagons.

The programs for A103466, there is no canonical definition to state claims against.
-/

/-! ## A103466.P7612181184464354169

`A008619(A165489(n+2)-A098479(n))`
-/

namespace A103466.P7612181184464354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A165489 (n + 2) - A098479 n).toNat

end

end A103466.P7612181184464354169

/-! ## A103466.P14385332678164566685

`floor(root(A005893(n^n), 3))`
-/

namespace A103466.P14385332678164566685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005893 (n ^ n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A103466.P14385332678164566685

/-!
# A103467: Number of polyominoes consisting of n regular unit 9-gons.

The programs for A103467, there is no canonical definition to state claims against.
-/

/-! ## A103467.P2004888887639370418

`A195072(A270229(n))`
-/

namespace A103467.P2004888887639370418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A270229 n).toNat

end

end A103467.P2004888887639370418

/-! ## A103467.P17188967242555604734

`A193231(A386452(n))`
-/

namespace A103467.P17188967242555604734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A386452 n).toNat

end

end A103467.P17188967242555604734

/-!
# A103468: Number of polyominoes consisting of n regular unit 10-gons.

The programs for A103468, there is no canonical definition to state claims against.
-/

/-! ## A103468.P1269287365878128104

`A002264(or(3, A307442(n))+n)`
-/

namespace A103468.P1269287365878128104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 3 (A307442 n) + (n : ℤ)).toNat

end

end A103468.P1269287365878128104

/-! ## A103468.P8424859419551749999

`A138999(∑[∑[A020063(n+4)]+1]+1)`
-/

namespace A103468.P8424859419551749999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A103468.P8424859419551749999

/-!
# A103469: Number of polyominoes consisting of 3 regular unit n-gons.

The programs for A103469, the canonical program `A103469.P5517077262006689846` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103469 has offset 3).

The definition of A103469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103469.P5517077262006689846

`floor((n+1)/2)-floor((n+2)/6)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103469

/-- `floor((n+1)/2)-floor((n+2)/6)+1` -/
def P5517077262006689846.Spec : Prop :=
  ∀ n, P5517077262006689846.a n = A103469 (n + 3)

theorem P5517077262006689846.correct : P5517077262006689846.Spec := by
  intro n
  simp only [A103469, Nat.add_sub_cancel]

end A103469

/-! ## A103469.P12131619552912531356

`ceil(xor(1, n+3)/3)`
-/

namespace A103469.P12131619552912531356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 3) : ℚ) / 3⌉

end

end A103469.P12131619552912531356

namespace A103469

/-- `ceil(xor(1, n+3)/3)` -/
def P12131619552912531356.Spec : Prop :=
  ∀ n, P12131619552912531356.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P1306497533297857288

`floor(xor(1, n+5)/3)`
-/

namespace A103469.P1306497533297857288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 5) : ℚ) / 3⌋

end

end A103469.P1306497533297857288

namespace A103469

/-- `floor(xor(1, n+5)/3)` -/
def P1306497533297857288.Spec : Prop :=
  ∀ n, P1306497533297857288.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P8788538668003027437

`floor(∑[2-a(n-1)]/3)` with `a(0)=4, a(1)=3`
-/

namespace A103469.P8788538668003027437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A103469.P8788538668003027437

namespace A103469

/-- `floor(∑[2-a(n-1)]/3)` -/
def P8788538668003027437.Spec : Prop :=
  ∀ n, P8788538668003027437.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P192677319160644496

`ceil((2*and(1, n)+n+2)/3)`
-/

namespace A103469.P192677319160644496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.land 1 n + (n + 2) : ℚ) / 3⌉

end

end A103469.P192677319160644496

namespace A103469

/-- `ceil((2*and(1, n)+n+2)/3)` -/
def P192677319160644496.Spec : Prop :=
  ∀ n, P192677319160644496.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P11314792214065046806

`floor(n+2-2*or(1, n)/3)`
-/

namespace A103469.P11314792214065046806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) - (2 * Nat.lor 1 n : ℚ) / 3⌋

end

end A103469.P11314792214065046806

namespace A103469

/-- `floor(n+2-2*or(1, n)/3)` -/
def P11314792214065046806.Spec : Prop :=
  ∀ n, P11314792214065046806.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P3278486724085099503

`round((2*and(1, n)+n+3)/3)`
-/

namespace A103469.P3278486724085099503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * Nat.land 1 n + (n + 3) : ℚ) / 3)

end

end A103469.P3278486724085099503

namespace A103469

/-- `round((2*and(1, n)+n+3)/3)` -/
def P3278486724085099503.Spec : Prop :=
  ∀ n, P3278486724085099503.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P4259197334946410494

`round(n+2-or(3, 2*n)/3)`
-/

namespace A103469.P4259197334946410494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) - (Nat.lor 3 (2 * n) : ℚ) / 3)

end

end A103469.P4259197334946410494

namespace A103469

/-- `round(n+2-or(3, 2*n)/3)` -/
def P4259197334946410494.Spec : Prop :=
  ∀ n, P4259197334946410494.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P2005791058481370185

`floor((and(3, 2*n+1)+n+3)/3)`
-/

namespace A103469.P2005791058481370185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 3 (2 * n + 1) + (n + 3) : ℚ) / 3⌋

end

end A103469.P2005791058481370185

namespace A103469

/-- `floor((and(3, 2*n+1)+n+3)/3)` -/
def P2005791058481370185.Spec : Prop :=
  ∀ n, P2005791058481370185.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P7207802322761262077

`A086161(xor(1, n+1))`
-/

namespace A103469.P7207802322761262077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (Nat.xor 1 (n + 1))

end

end A103469.P7207802322761262077

namespace A103469

/-- `A086161(xor(1, n+1))` -/
def P7207802322761262077.Spec : Prop :=
  ∀ n, P7207802322761262077.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P3722619191777544398

`Δ[∑[A285870(n)]+n]`
-/

namespace A103469.P3722619191777544398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103469.P3722619191777544398

namespace A103469

/-- `Δ[∑[A285870(n)]+n]` -/
def P3722619191777544398.Spec : Prop :=
  ∀ n, P3722619191777544398.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P1220684932639454594

`A086161(A004442(n+1))`
-/

namespace A103469.P1220684932639454594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A004442 (n + 1)).toNat

end

end A103469.P1220684932639454594

namespace A103469

/-- `A086161(A004442(n+1))` -/
def P1220684932639454594.Spec : Prop :=
  ∀ n, P1220684932639454594.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P8220686656759815540

`A086161(A065190(n+1))`
-/

namespace A103469.P8220686656759815540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A065190 (n + 1)).toNat

end

end A103469.P8220686656759815540

namespace A103469

/-- `A086161(A065190(n+1))` -/
def P8220686656759815540.Spec : Prop :=
  ∀ n, P8220686656759815540.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P10556408840731754054

`A086161(A131717(n+1))`
-/

namespace A103469.P10556408840731754054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A131717 (n + 1)).toNat

end

end A103469.P10556408840731754054

namespace A103469

/-- `A086161(A131717(n+1))` -/
def P10556408840731754054.Spec : Prop :=
  ∀ n, P10556408840731754054.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P16235146722260377302

`A008619(A285872(n+1))`
-/

namespace A103469.P16235146722260377302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285872 (n + 1)).toNat

end

end A103469.P16235146722260377302

namespace A103469

/-- `A008619(A285872(n+1))` -/
def P16235146722260377302.Spec : Prop :=
  ∀ n, P16235146722260377302.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P2198735105413463472

`A008620(A103889(n+2))`
-/

namespace A103469.P2198735105413463472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A103889 (n + 2)).toNat

end

end A103469.P2198735105413463472

namespace A103469

/-- `A008620(A103889(n+2))` -/
def P2198735105413463472.Spec : Prop :=
  ∀ n, P2198735105413463472.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P4242967428788602658

`A008620(A114112(n+2))`
-/

namespace A103469.P4242967428788602658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A114112 (n + 2)).toNat

end

end A103469.P4242967428788602658

namespace A103469

/-- `A008620(A114112(n+2))` -/
def P4242967428788602658.Spec : Prop :=
  ∀ n, P4242967428788602658.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P17073524777810834927

`A008620(A004442(n+1)+1)`
-/

namespace A103469.P17073524777810834927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004442 (n + 1) + 1).toNat

end

end A103469.P17073524777810834927

namespace A103469

/-- `A008620(A004442(n+1)+1)` -/
def P17073524777810834927.Spec : Prop :=
  ∀ n, P17073524777810834927.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P16065992406040636128

`A086161(A373546(n+1))`
-/

namespace A103469.P16065992406040636128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A373546 (n + 1)).toNat

end

end A103469.P16065992406040636128

namespace A103469

/-- `A086161(A373546(n+1))` -/
def P16065992406040636128.Spec : Prop :=
  ∀ n, P16065992406040636128.a n = A103469 (n + 3)

end A103469

/-! ## A103469.P11598028350394928356

`A341307(n+3)`
-/

namespace A103469.P11598028350394928356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (n + 3)

end

end A103469.P11598028350394928356

namespace A103469

/-- `A341307(n+3)` -/
def P11598028350394928356.Spec : Prop :=
  ∀ n, P11598028350394928356.a n = A103469 (n + 3)

end A103469

/-!
# A103474: Numerators of the raw moments of the distribution of areas for triangles picked at random in a triangle of unit area.

The programs for A103474, there is no canonical definition to state claims against.
-/

/-! ## A103474.P1848652925817657999

`A008364(floor(n*gcd(2, n%3)/3)^∑{d}[n, #%#²])`
-/

namespace A103474.P1848652925817657999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (⌊(n : ℚ) * ((Nat.gcd 2 (n % 3) : ℚ) / 3)⌋ ^ (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2)).toNat

end

end A103474.P1848652925817657999

/-!
# A103477: Positive integers k for which 1 + 3*2^(k+2) divides the Fermat number 1 + 2^(2^k).

The programs for A103477, there is no canonical definition to state claims against.
-/

/-! ## A103477.P10365148502474669733

`A204620(A006254(n+1))-2`
-/

namespace A103477.P10365148502474669733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204620 (A006254 (n + 1)).toNat - 2

end

end A103477.P10365148502474669733

/-!
# A103478: Positive integers k for which 1 + 5*2^(k+2) divides the Fermat number 1 + 2^2^k.

The programs for A103478, there is no canonical definition to state claims against.
-/

/-! ## A103478.P14681952933141537660

`A226366(A047317(n+1))-2`
-/

namespace A103478.P14681952933141537660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226366 (A047317 (n + 1)).toNat - 2

end

end A103478.P14681952933141537660

/-!
# A103480: Row sums of A103462.

The programs for A103480, there is no canonical definition to state claims against.
-/

/-! ## A103480.P4552002222552469260

`A101494(∑[n])+n`
-/

namespace A103480.P4552002222552469260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A103480.P4552002222552469260

/-! ## A103480.P6586952599376713757

`A026898(log2(ceil(2^(n-1))))+n`
-/

namespace A103480.P6586952599376713757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat + (n : ℤ)

end

end A103480.P6586952599376713757

/-! ## A103480.P5307493520301093531

`A003101(record[lcm(2, n)/2]-n)+n+1`
-/

namespace A103480.P5307493520301093531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ))).toNat + (n + 1 : ℤ)

end

end A103480.P5307493520301093531

/-! ## A103480.P4777997428290300033

`A003101(A289207(n+1))+n+1`
-/

namespace A103480.P4777997428290300033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (A289207 (n + 1)).toNat + (n + 1 : ℤ)

end

end A103480.P4777997428290300033

/-! ## A103480.P8973528650780007170

`A287216(∑[n+2]-1)+n`
-/

namespace A103480.P8973528650780007170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ)

end

end A103480.P8973528650780007170

/-! ## A103480.P13653580822048793746

`A351339(A165157(2*n+1))+n`
-/

namespace A103480.P13653580822048793746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (A165157 (2 * n + 1)).toNat + (n : ℤ)

end

end A103480.P13653580822048793746

/-!
# A103481: Diagonal sums of A103462.

The programs for A103481, there is no canonical definition to state claims against.
-/

/-! ## A103481.P17143299057850597047

`ceil(A104872(n)+n/2)`
-/

namespace A103481.P17143299057850597047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104872 n : ℚ) + (n : ℚ) / 2⌉

end

end A103481.P17143299057850597047

/-! ## A103481.P3378938215893010997

`A110654(n)+A104872(n)`
-/

namespace A103481.P3378938215893010997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A104872 n

end

end A103481.P3378938215893010997

/-! ## A103481.P12104982350442575850

`A104872(n)+abs(A001057(n))`
-/

namespace A103481.P12104982350442575850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n + |A001057 n|

end

end A103481.P12104982350442575850

/-! ## A103481.P9477367368119671376

`A104872(n)+log2(A060546(n))`
-/

namespace A103481.P9477367368119671376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104872 n : ℝ) + Real.logb 2 (A060546 n : ℝ)

end

end A103481.P9477367368119671376

/-! ## A103481.P8989855989068261171

`A104872(n)+∑[A000035(n)]`
-/

namespace A103481.P8989855989068261171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103481.P8989855989068261171

/-!
# A103484: Triangle read by rows: T(n,k) is the coefficient of t^k (k >= 1) in the polynomial P[n,t] defined by P[1,t] = P[2,t] = t, P[n,t] = P[n-1,t] + P^2[n-2,t].

The programs for A103484, there is no canonical definition to state claims against.
-/

/-! ## A103484.P13217899323566496051

`A090418(A027561(n))+A047130(n)`
-/

namespace A103484.P13217899323566496051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 (A027561 n).toNat + A047130 n

end

end A103484.P13217899323566496051

/-! ## A103484.P15440827382210311976

`A233836(A119468(n)+A001045(n))`
-/

namespace A103484.P15440827382210311976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233836 (A119468 n + A001045 n).toNat

end

end A103484.P15440827382210311976

/-! ## A103484.P13373159002721161444

`gcd(A088975(A329141(n+1)), A153199(n))`
-/

namespace A103484.P13373159002721161444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088975 (A329141 (n + 1)).toNat) (A153199 n)

end

end A103484.P13373159002721161444

/-! ## A103484.P5306228687504949003

`A202853(or(A202816(n+1), A202853(n+1)))`
-/

namespace A103484.P5306228687504949003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202853 (Int.lor (A202816 (n + 1)) (A202853 (n + 1))).toNat

end

end A103484.P5306228687504949003

/-!
# A103485: Expansion of (7 +4*x -5*x^2 -7*x^3) / ((1-x)*(1-x^2-x^3)).

The programs for A103485, the canonical program `A103485.P11977516538508407299` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103485 has offset 0).

The definition of A103485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((7+4x-5x^2-7x^3)/(1-x-x^2+x^4))` (program `A103485.P11977516538508407299`, by `A103485.P11977516538508407299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103485.P11977516538508407299

`ogf((7+4x-5x^2-7x^3)/(1-x-x^2+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103485

/-- `ogf((7+4x-5x^2-7x^3)/(1-x-x^2+x^4))` -/
def P11977516538508407299.Spec : Prop :=
  ∀ n, P11977516538508407299.a n = A103485 n

theorem P11977516538508407299.correct : P11977516538508407299.Spec := by
  intro n
  simp only [A103485]

end A103485

/-! ## A103485.P1394639557926019150

`a(n-2)+a(n-3)-1` with `a(0)=7, a(1)=11, a(2)=13`
-/

namespace A103485.P1394639557926019150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11, 13] fun n a =>
  a (n - 2) + a (n - 3) - 1

end

end A103485.P1394639557926019150

namespace A103485

/-- `a(n-2)+a(n-3)-1` -/
def P1394639557926019150.Spec : Prop :=
  ∀ n, P1394639557926019150.a n = A103485 n

end A103485

/-! ## A103485.P14606937127113438196

`A020720(n)+Δ[A182097(n)]+1`
-/

namespace A103485.P14606937127113438196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 n + (f1 (n + 1) - f1 n + 1)

end

end A103485.P14606937127113438196

namespace A103485

/-- `A020720(n)+Δ[A182097(n)]+1` -/
def P14606937127113438196.Spec : Prop :=
  ∀ n, P14606937127113438196.a n = A103485 n

end A103485

/-! ## A103485.P15394089823415516292

`A052954(n+10)+Δ[A052954(n)]`
-/

namespace A103485.P15394089823415516292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 10) + (f1 (n + 1) - f1 n)

end

end A103485.P15394089823415516292

namespace A103485

/-- `A052954(n+10)+Δ[A052954(n)]` -/
def P15394089823415516292.Spec : Prop :=
  ∀ n, P15394089823415516292.a n = A103485 n

end A103485

/-! ## A103485.P306949937179597049

`A078027(n+1)+A020720(n)+1`
-/

namespace A103485.P306949937179597049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1) + (A020720 n + 1)

end

end A103485.P306949937179597049

namespace A103485

/-- `A078027(n+1)+A020720(n)+1` -/
def P306949937179597049.Spec : Prop :=
  ∀ n, P306949937179597049.a n = A103485 n

end A103485

/-! ## A103485.P10805313324964589633

`A001608(n+7)+1-A000931(n)`
-/

namespace A103485.P10805313324964589633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 7) + (1 - A000931 n)

end

end A103485.P10805313324964589633

namespace A103485

/-- `A001608(n+7)+1-A000931(n)` -/
def P10805313324964589633.Spec : Prop :=
  ∀ n, P10805313324964589633.a n = A103485 n

end A103485

/-! ## A103485.P14472890496994010243

`A078027(n+1)+A096231(n+3)+1`
-/

namespace A103485.P14472890496994010243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1) + (A096231 (n + 3) + 1)

end

end A103485.P14472890496994010243

namespace A103485

/-- `A078027(n+1)+A096231(n+3)+1` -/
def P14472890496994010243.Spec : Prop :=
  ∀ n, P14472890496994010243.a n = A103485 n

end A103485

/-!
# A103486: a(0)=7, a(1)=11, a(2)=13, a(3)=17; then a(n) = a(n-1)+a(n-3)-a(n-4).

The programs for A103486, the canonical program `A103486.P13901029985404694274` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103486 has offset 0).

The definition of A103486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)-a(n-4)` (program `A103486.P13901029985404694274`, by `A103486.P13901029985404694274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103486.P13901029985404694274

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=11, a(2)=13, a(3)=17`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103486

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P13901029985404694274.Spec : Prop :=
  ∀ n, P13901029985404694274.a n = A103486 n

theorem P13901029985404694274.correct : P13901029985404694274.Spec := by
  intro n
  simp only [A103486]

end A103486

/-! ## A103486.P15837417945564131320

`a(n-3)+10` with `a(0)=7, a(1)=11, a(2)=13`
-/

namespace A103486.P15837417945564131320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 11, 13] fun n a =>
  a (n - 3) + 10

end

end A103486.P15837417945564131320

namespace A103486

/-- `a(n-3)+10` -/
def P15837417945564131320.Spec : Prop :=
  ∀ n, (P15837417945564131320.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P14941705017120582032

`∑[4/(n%3)!]+3`
-/

namespace A103486.P14941705017120582032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.factorial (n % 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A103486.P14941705017120582032

namespace A103486

/-- `∑[4/(n%3)!]+3` -/
def P14941705017120582032.Spec : Prop :=
  ∀ n, P14941705017120582032.a n = (A103486 n : ℚ)

end A103486

/-! ## A103486.P6851172864420678760

`∑[abs(a(n-3))]` with `a(0)=7, a(1)=4, a(2)=2, a(3)=4`
-/

namespace A103486.P6851172864420678760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103486.P6851172864420678760

namespace A103486

/-- `∑[abs(a(n-3))]` -/
def P6851172864420678760.Spec : Prop :=
  ∀ n, (P6851172864420678760.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P17172488233866926675

`∑[dr(a(n-3))]` with `a(0)=7, a(1)=4, a(2)=2, a(3)=4`
-/

namespace A103486.P17172488233866926675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 2, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103486.P17172488233866926675

namespace A103486

/-- `∑[dr(a(n-3))]` -/
def P17172488233866926675.Spec : Prop :=
  ∀ n, (P17172488233866926675.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P8962134993245774000

`∑[floor(a(n-3))]` with `a(0)=7, a(1)=4, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A103486.P8962134993245774000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103486.P8962134993245774000

namespace A103486

/-- `∑[floor(a(n-3))]` -/
def P8962134993245774000.Spec : Prop :=
  ∀ n, (P8962134993245774000.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P8806986759522650798

`∑[ceil(a(n-3))]` with `a(0)=7, a(1)=4, a(2)=2, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A103486.P8806986759522650798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103486.P8806986759522650798

namespace A103486

/-- `∑[ceil(a(n-3))]` -/
def P8806986759522650798.Spec : Prop :=
  ∀ n, (P8806986759522650798.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P1876126399559754141

`∑[5-gcd(3, n+1)]+3`
-/

namespace A103486.P1876126399559754141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A103486.P1876126399559754141

namespace A103486

/-- `∑[5-gcd(3, n+1)]+3` -/
def P1876126399559754141.Spec : Prop :=
  ∀ n, P1876126399559754141.a n = A103486 n

end A103486

/-! ## A103486.P12514785082109047689

`or(1, floor(10*(n+2)/3))`
-/

namespace A103486.P12514785082109047689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊10 * ((n + 2 : ℚ) / 3)⌋

end

end A103486.P12514785082109047689

namespace A103486

/-- `or(1, floor(10*(n+2)/3))` -/
def P12514785082109047689.Spec : Prop :=
  ∀ n, P12514785082109047689.a n = A103486 n

end A103486

/-! ## A103486.P10580135921091674924

`∑[gcd(4, a(n-3))]` with `a(0)=7, a(1)=4, a(2)=2, a(3)=4`
-/

namespace A103486.P10580135921091674924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 2, 4] fun n f1 =>
  Nat.gcd 4 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103486.P10580135921091674924

namespace A103486

/-- `∑[gcd(4, a(n-3))]` -/
def P10580135921091674924.Spec : Prop :=
  ∀ n, (P10580135921091674924.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P13087048090791482620

`∑[a(n-3)%5]` with `a(0)=7, a(1)=4, a(2)=2, a(3)=4`
-/

namespace A103486.P13087048090791482620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 2, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103486.P13087048090791482620

namespace A103486

/-- `∑[a(n-3)%5]` -/
def P13087048090791482620.Spec : Prop :=
  ∀ n, (P13087048090791482620.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P15857436049223628954

`2*∑[((n+1)²+1)%3]+3`
-/

namespace A103486.P15857436049223628954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A103486.P15857436049223628954

namespace A103486

/-- `2*∑[((n+1)²+1)%3]+3` -/
def P15857436049223628954.Spec : Prop :=
  ∀ n, (P15857436049223628954.a n : ℤ) = A103486 n

end A103486

/-! ## A103486.P11556329971176318415

`Δ[ogf((1+4x+4x^2+x^3)/(1-2x+x^2-x^3+2x^4-x^5))]+2`
-/

namespace A103486.P11556329971176318415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 1] [1, -2, 1, -1, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A103486.P11556329971176318415

namespace A103486

/-- `Δ[ogf((1+4x+4x^2+x^3)/(1-2x+x^2-x^3+2x^4-x^5))]+2` -/
def P11556329971176318415.Spec : Prop :=
  ∀ n, P11556329971176318415.a n = A103486 n

end A103486

/-! ## A103486.P6530599022980325127

`2*(2*(n+1)-ceil((n-1)/3))+3`
-/

namespace A103486.P6530599022980325127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (n + 1) : ℤ) - ⌈((n : ℤ) - 1 : ℚ) / 3⌉) + 3

end

end A103486.P6530599022980325127

namespace A103486

/-- `2*(2*(n+1)-ceil((n-1)/3))+3` -/
def P6530599022980325127.Spec : Prop :=
  ∀ n, P6530599022980325127.a n = A103486 n

end A103486

/-! ## A103486.P13944327642143681767

`A045572(A042965(n+2)+2)`
-/

namespace A103486.P13944327642143681767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A042965 (n + 2) + 2).toNat

end

end A103486.P13944327642143681767

namespace A103486

/-- `A045572(A042965(n+2)+2)` -/
def P13944327642143681767.Spec : Prop :=
  ∀ n, P13944327642143681767.a n = A103486 n

end A103486

/-! ## A103486.P9856608456198097734

`A020742(A047222(n+1))`
-/

namespace A103486.P9856608456198097734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A047222 (n + 1)).toNat

end

end A103486.P9856608456198097734

namespace A103486

/-- `A020742(A047222(n+1))` -/
def P9856608456198097734.Spec : Prop :=
  ∀ n, P9856608456198097734.a n = A103486 n

end A103486

/-! ## A103486.P4770548762891033831

`A005818(A047212(n+2))`
-/

namespace A103486.P4770548762891033831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A047212 (n + 2)).toNat

end

end A103486.P4770548762891033831

namespace A103486

/-- `A005818(A047212(n+2))` -/
def P4770548762891033831.Spec : Prop :=
  ∀ n, P4770548762891033831.a n = A103486 n

end A103486

/-! ## A103486.P2949602676303004096

`A005408(A005408(n+1)-A002264(n+1))`
-/

namespace A103486.P2949602676303004096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 (n + 1) - A002264 (n + 1)).toNat

end

end A103486.P2949602676303004096

namespace A103486

/-- `A005408(A005408(n+1)-A002264(n+1))` -/
def P2949602676303004096.Spec : Prop :=
  ∀ n, P2949602676303004096.a n = A103486 n

end A103486

/-! ## A103486.P8792582676398971320

`A130773(A047399(n+2)-n)`
-/

namespace A103486.P8792582676398971320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A047399 (n + 2) - (n : ℤ)).toNat

end

end A103486.P8792582676398971320

namespace A103486

/-- `A130773(A047399(n+2)-n)` -/
def P8792582676398971320.Spec : Prop :=
  ∀ n, P8792582676398971320.a n = A103486 n

end A103486

/-! ## A103486.P9987618786504167589

`A004273(A103517(n+1)-A002264(n+1))`
-/

namespace A103486.P9987618786504167589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103517 (n + 1) - A002264 (n + 1)).toNat

end

end A103486.P9987618786504167589

namespace A103486

/-- `A004273(A103517(n+1)-A002264(n+1))` -/
def P9987618786504167589.Spec : Prop :=
  ∀ n, P9987618786504167589.a n = A103486 n

end A103486

/-!
# A103487: a(0)=7; a(1)=11; a(2)=13; a(3)=17; a(n) = |a(n-2)+a(n-3)-a(n-4)|.

The programs for A103487, the canonical program `A103487.P5387944213616529390` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103487 has offset 0).

The definition of A103487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103487.P5387944213616529390

`abs(a(n-2)+a(n-3)-a(n-4))` with `a(0)=7, a(1)=11, a(2)=13, a(3)=17`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103487

/-- `abs(a(n-2)+a(n-3)-a(n-4))` -/
def P5387944213616529390.Spec : Prop :=
  ∀ n, P5387944213616529390.a n = A103487 n

theorem P5387944213616529390.correct : P5387944213616529390.Spec := by
  intro n
  simp only [A103487]

end A103487

/-!
# A103488: a(n) = 2^(n^2-1).

The programs for A103488, the canonical program `A103488.P11156896087871937604` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103488 has offset 1).

The definition of A103488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103488.P13924551596896609229

`2^((n+1)²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A103488.P13924551596896609229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((n + 1) ^ 2 : ℤ) - 1 : ℤ)

end

end A103488.P13924551596896609229

namespace A103488

/-- `2^((n+1)²-1)` -/
def P13924551596896609229.Spec : Prop :=
  ∀ n, P13924551596896609229.a n = (A103488 (n + 1) : ℚ)

end A103488

/-! ## A103488.P11156896087871937604

`A000079(A005563(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103488

/-- `A000079(A005563(n))` -/
def P11156896087871937604.Spec : Prop :=
  ∀ n, P11156896087871937604.a n = A103488 (n + 1)

theorem P11156896087871937604.correct : P11156896087871937604.Spec := by
  intro n
  simp only [A103488, Nat.add_sub_cancel]

end A103488

/-! ## A103488.P2590496127356672667

`A011782(A000290(n+1))`
-/

namespace A103488.P2590496127356672667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000290 (n + 1)).toNat

end

end A103488.P2590496127356672667

namespace A103488

/-- `A011782(A000290(n+1))` -/
def P2590496127356672667.Spec : Prop :=
  ∀ n, P2590496127356672667.a n = A103488 (n + 1)

end A103488

/-! ## A103488.P18323633172769888585

`record[2^(n*(n-2))]`
-/

namespace A103488.P18323633172769888585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103488.P18323633172769888585

namespace A103488

/-- `record[2^(n*(n-2))]` -/
def P18323633172769888585.Spec : Prop :=
  ∀ n, P18323633172769888585.a n = (A103488 (n + 1) : ℚ)

end A103488

/-! ## A103488.P12172509205521266725

`2^ratio[n!²]/2`
-/

namespace A103488.P12172509205521266725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ) / 2

end

end A103488.P12172509205521266725

namespace A103488

/-- `2^ratio[n!²]/2` -/
def P12172509205521266725.Spec : Prop :=
  ∀ n, P12172509205521266725.a n = (A103488 (n + 1) : ℝ)

end A103488

/-!
# A103489: Multiplicative suborder of 3 (mod n) = sord(3, n).

The programs for A103489, there is no canonical definition to state claims against.
-/

/-! ## A103489.P1212438481127651692

`A001222(A203074(n))*A070679(A257088(n))`
-/

namespace A103489.P1212438481127651692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A203074 n).toNat * A070679 (A257088 n).toNat

end

end A103489.P1212438481127651692

/-! ## A103489.P12979578120556292812

`A070679(A257088(n))+A000007(A020753(n+1))`
-/

namespace A103489.P12979578120556292812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A257088 n).toNat + A000007 (A020753 (n + 1)).toNat

end

end A103489.P12979578120556292812

/-! ## A103489.P6366592749394578192

`A001221(A074323(2*n+1))*A070679(A257088(n))`
-/

namespace A103489.P6366592749394578192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A074323 (2 * n + 1)).toNat * A070679 (A257088 n).toNat

end

end A103489.P6366592749394578192

/-! ## A103489.P5824648598211290318

`A057526(A214246(2*(n+2))^A057526(n+1))`
-/

namespace A103489.P5824648598211290318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (SequenceMachineLib.roundAway ((A214246 (2 * (n + 2)) : ℚ) ^ (A057526 (n + 1) : ℤ))).toNat

end

end A103489.P5824648598211290318

/-! ## A103489.P8686641502877641660

`A005385(n+1)%A372433(A121340(n))`
-/

namespace A103489.P8686641502877641660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A372433 (A121340 n).toNat)

end

end A103489.P8686641502877641660

/-!
# A103490: Smallest integer greater than or equal to imaginary part of zeros of Riemann zeta function which is prime.

The programs for A103490, there is no canonical definition to state claims against.
-/

/-! ## A103490.P17733243071330579915

`p?[A092783(n+1)]`
-/

namespace A103490.P17733243071330579915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103490.P17733243071330579915

/-! ## A103490.P14584641645336828374

`p?[A013629(n+1)+1]`
-/

namespace A103490.P14584641645336828374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103490.P14584641645336828374

/-! ## A103490.P5286224834992136377

`p?[A004442(A013629(n+1))]`
-/

namespace A103490.P5286224834992136377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A013629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103490.P5286224834992136377

/-! ## A103490.P17557043724595518483

`p?[A011760(A013629(n+2))]`
-/

namespace A103490.P17557043724595518483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A013629 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103490.P17557043724595518483

/-! ## A103490.P12879388850505558555

`p?[A139693(A013629(n+3))]`
-/

namespace A103490.P12879388850505558555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (A013629 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103490.P12879388850505558555

/-! ## A103490.P2314569918745641032

`filter[A092783(n+1), A010051(#)]`
-/

namespace A103490.P2314569918745641032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A103490.P2314569918745641032

/-! ## A103490.P17256053622454464425

`filter[A092783(n+1), A080339(#)]`
-/

namespace A103490.P17256053622454464425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A103490.P17256053622454464425

/-! ## A103490.P15428941525926767010

`filter[A092783(n+1), A080545(#)]`
-/

namespace A103490.P15428941525926767010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A103490.P15428941525926767010

/-! ## A103490.P17689365240084357527

`filter[A092783(n+1), A171387(#)]`
-/

namespace A103490.P17689365240084357527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A103490.P17689365240084357527

/-! ## A103490.P1279460991096222027

`p?[floor(A342756(n+1)/A000040(n+1))+1]`
-/

namespace A103490.P1279460991096222027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103490.P1279460991096222027

/-!
# A103491: Multiplicative suborder of 5 (mod n) = sord(5, n).

The programs for A103491, there is no canonical definition to state claims against.
-/

/-! ## A103491.P7066354588709275038

`A277171(A003959(n+1))%A008619(n)`
-/

namespace A103491.P7066354588709275038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277171 (A003959 (n + 1)).toNat) (A008619 n)

end

end A103491.P7066354588709275038

/-! ## A103491.P8368766423165705590

`A000267(A296273(n))%A008619(n)`
-/

namespace A103491.P8368766423165705590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000267 (A296273 n).toNat) (A008619 n)

end

end A103491.P8368766423165705590

/-! ## A103491.P17232688840890282619

`A194784(A067330(n))%A122765(n+1)`
-/

namespace A103491.P17232688840890282619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194784 (A067330 n).toNat) (A122765 (n + 1))

end

end A103491.P17232688840890282619

/-! ## A103491.P12505793973034951690

`A293810(A110536(n+1))%A005378(n)`
-/

namespace A103491.P12505793973034951690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293810 (A110536 (n + 1)).toNat) (A005378 n)

end

end A103491.P12505793973034951690

/-!
# A103492: Multiplicative suborder of 6 (mod 2n+1) = sord(6, 2n+1).

The programs for A103492, there is no canonical definition to state claims against.
-/

/-! ## A103492.P2109548143916390574

`A026741(A070681(n)%A000112(n))`
-/

namespace A103492.P2109548143916390574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A070681 n) (A000112 n)).toNat

end

end A103492.P2109548143916390574

/-! ## A103492.P3145395429302306097

`A000265(2^n)*A026741(A070681(n))`
-/

namespace A103492.P3145395429302306097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A026741 (A070681 n).toNat

end

end A103492.P3145395429302306097

/-! ## A103492.P1026441541108910166

`and(A000203(2^(n+1)), A026741(A070681(n)))`
-/

namespace A103492.P1026441541108910166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (2 ^ (n + 1))) (A026741 (A070681 n).toNat)

end

end A103492.P1026441541108910166

/-! ## A103492.P10682537300844569002

`A026741(A070681(n))%A000040(A003407(n))`
-/

namespace A103492.P10682537300844569002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A070681 n).toNat) (A000040 (A003407 n).toNat)

end

end A103492.P10682537300844569002

/-!
# A103493: Multiplicative suborder of 7 (mod n) = sord(7, n).

The programs for A103493, there is no canonical definition to state claims against.
-/

/-! ## A103493.P931345995374196576

`floor(A253624(2^n+2)%(n+1)/2)`
-/

namespace A103493.P931345995374196576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A253624 (2 ^ n + 2)) (n + 1 : ℤ) : ℚ) / 2⌋

end

end A103493.P931345995374196576

/-! ## A103493.P8082635500777874803

`A356225(A325393(n)+A088314(n))`
-/

namespace A103493.P8082635500777874803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A325393 n + A088314 n).toNat

end

end A103493.P8082635500777874803

/-! ## A103493.P5168392313061125532

`A139351(lcm(A056960(n), A059927(n)))`
-/

namespace A103493.P5168392313061125532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.lcm (A056960 n) (A059927 n))

end

end A103493.P5168392313061125532

/-! ## A103493.P17177766273131152633

`A163351(∑[A002262(A051885(2*n))])`
-/

namespace A103493.P17177766273131152633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A051885 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103493.P17177766273131152633

/-! ## A103493.P2557599611703194809

`A217308(n)%A046799(A319908(n+1))`
-/

namespace A103493.P2557599611703194809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217308 n) (A046799 (A319908 (n + 1)).toNat)

end

end A103493.P2557599611703194809

/-!
# A103495: Multiplicative suborder of 9 (mod n) = sord(9, n).

The programs for A103495, there is no canonical definition to state claims against.
-/

/-! ## A103495.P7046379802508460678

`lcm(2, A103489(n))/2`
-/

namespace A103495.P7046379802508460678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A103489 n) : ℚ) / 2

end

end A103495.P7046379802508460678

/-! ## A103495.P12507746509491193474

`A026741(A103489(n))`
-/

namespace A103495.P12507746509491193474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A103489 n).toNat

end

end A103495.P12507746509491193474

/-! ## A103495.P11369717737523320484

`A026730(4*A103489(n))`
-/

namespace A103495.P11369717737523320484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (4 * A103489 n).toNat

end

end A103495.P11369717737523320484

/-! ## A103495.P62435724849246323

`A106609(4*A103489(n))`
-/

namespace A103495.P62435724849246323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A103489 n).toNat

end

end A103495.P62435724849246323

/-! ## A103495.P14830448053650324176

`A051724(6*A103489(n))`
-/

namespace A103495.P14830448053650324176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A103489 n).toNat

end

end A103495.P14830448053650324176

/-! ## A103495.P2785771225406558082

`A001281(lcm(2, A103489(n)))`
-/

namespace A103495.P2785771225406558082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A103489 n))

end

end A103495.P2785771225406558082

/-! ## A103495.P16771388526130826108

`A103489(n)/A040001(A103489(n)²)`
-/

namespace A103495.P16771388526130826108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103489 n : ℚ) / (A040001 (A103489 n ^ 2).toNat : ℚ)

end

end A103495.P16771388526130826108

/-!
# A103496: Multiplicative suborder of 10 (mod 2n+1) = sord(10, 2n+1).

The programs for A103496, there is no canonical definition to state claims against.
-/

/-! ## A103496.P9830068402140243045

`A216415(n+1)-A216416(n+1)`
-/

namespace A103496.P9830068402140243045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (n + 1) - A216416 (n + 1)

end

end A103496.P9830068402140243045

/-! ## A103496.P13787215217914491356

`A216415(n+1)-A069531(Δ[n²])`
-/

namespace A103496.P13787215217914491356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (n + 1) - A069531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103496.P13787215217914491356

/-! ## A103496.P3090250391524416370

`A084680(Δ[n²])-A216416(n+1)`
-/

namespace A103496.P3090250391524416370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A216416 (n + 1)

end

end A103496.P3090250391524416370

/-! ## A103496.P11323263020296258669

`A084680(2*n+1)-A069531(Δ[n²])`
-/

namespace A103496.P11323263020296258669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * n + 1) - A069531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103496.P11323263020296258669

/-! ## A103496.P13381503861294908441

`A216415(n+1)-A069531(2*n+1)%99`
-/

namespace A103496.P13381503861294908441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (n + 1) - Int.tmod (A069531 (2 * n + 1)) 99

end

end A103496.P13381503861294908441

/-! ## A103496.P6843119098323214983

`gcd(A216415(n+1), A216416(n+1))%A005728(n)`
-/

namespace A103496.P6843119098323214983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A216415 (n + 1)) (A216416 (n + 1)) : ℤ) (A005728 n)

end

end A103496.P6843119098323214983

/-!
# A103498: Multiplicative suborder of 12 (mod 2n+1) = sord(12, 2n+1).

The programs for A103498, there is no canonical definition to state claims against.
-/

/-! ## A103498.P8826025093738901792

`A026741(A070683(n))%A342222(n+3)`
-/

namespace A103498.P8826025093738901792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A070683 n).toNat) (A342222 (n + 3))

end

end A103498.P8826025093738901792

/-! ## A103498.P3953042384088603111

`A026741(A070683(n)%A015870(n+1))`
-/

namespace A103498.P3953042384088603111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A070683 n) (A015870 (n + 1))).toNat

end

end A103498.P3953042384088603111

/-! ## A103498.P7578696163905766078

`A070683(n)/A128269(A001223(A120477(n)))`
-/

namespace A103498.P7578696163905766078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070683 n : ℚ) / (A128269 (A001223 (A120477 n).toNat).toNat : ℚ)

end

end A103498.P7578696163905766078

/-! ## A103498.P17509761159817957210

`A070683(n)/A000034(A306847(n+2))`
-/

namespace A103498.P17509761159817957210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070683 n : ℚ) / (A000034 (A306847 (n + 2)).toNat : ℚ)

end

end A103498.P17509761159817957210

/-! ## A103498.P10402654140810928345

`A026741(A070683(n)%A335710(n))`
-/

namespace A103498.P10402654140810928345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A070683 n) (A335710 n)).toNat

end

end A103498.P10402654140810928345

