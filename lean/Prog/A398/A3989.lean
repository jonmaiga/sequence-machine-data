import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A398903: Number of partitions of {1,...,3*n} into 3-element subsets {x,y,z} satisfying x+y<=z.

The programs for A398903, there is no canonical definition to state claims against.
-/

/-! ## A398903.P8707860552229336137

`A087011((n+1)*C(n², n)+1)`
-/

namespace A398903.P8707860552229336137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 ((n + 1) * Nat.choose (n ^ 2) n + 1)

end

end A398903.P8707860552229336137

/-!
# A398904: Number of partitions of {1,...,3*n} into 3-element subsets {x,y,z} satisfying x+y>=z, where z is the largest element.

The programs for A398904, there is no canonical definition to state claims against.
-/

/-! ## A398904.P5422300524189150494

`A210436(C(2*n!-2, 2)+n)`
-/

namespace A398904.P5422300524189150494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210436 (Nat.choose ((2 * Nat.factorial n : ℤ) - 2).toNat 2 + n)

end

end A398904.P5422300524189150494

/-!
# A398905: Numbers k > 1 such that k^3 - k has no divisors d with k + 1 < d < 2*k - 2.

The programs for A398905, there is no canonical definition to state claims against.
-/

/-! ## A398905.P8254202351812201716

`∩[A164836(n+1), A174219(n+1)]`
-/

namespace A398905.P8254202351812201716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398905.P8254202351812201716

/-! ## A398905.P2075247843512849332

`eq[A046640(n+1), A093032(n)]`
-/

namespace A398905.P2075247843512849332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398905.P2075247843512849332

/-! ## A398905.P10858630842375922869

`eq[A062790(n+1), A093032(n)]`
-/

namespace A398905.P10858630842375922869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398905.P10858630842375922869

/-! ## A398905.P3879244502144495677

`eq[A093032(n), A349741(n+1)]`
-/

namespace A398905.P3879244502144495677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398905.P3879244502144495677

/-! ## A398905.P7010663064163905500

`∩[A174219(n+1), A397791(n+1)]`
-/

namespace A398905.P7010663064163905500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398905.P7010663064163905500

/-!
# A398913: Table read by rows: the number of functions f: [n] -> [n] where the longest initial run of strictly increasing values has length k.

The programs for A398913, the canonical program `A398913.P9418002320819438425` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398913 has offset 0).

The definition of A398913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398913.P9418002320819438425

`A135278(n)*A232006(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398913

/-- `A135278(n)*A232006(n)` -/
def P9418002320819438425.Spec : Prop :=
  ∀ n, P9418002320819438425.a n = A398913 n

theorem P9418002320819438425.correct : P9418002320819438425.Spec := by
  intro n
  simp only [A398913]

end A398913

/-! ## A398913.P10729984267952656061

`A153861(n)*A232006(n)`
-/

namespace A398913.P10729984267952656061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n * A232006 n

end

end A398913.P10729984267952656061

namespace A398913

/-- `A153861(n)*A232006(n)` -/
def P10729984267952656061.Spec : Prop :=
  ∀ n, P10729984267952656061.a n = A398913 n

end A398913

/-! ## A398913.P6360769954181654831

`A184049(n)*A232006(n)`
-/

namespace A398913.P6360769954181654831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184049 n * A232006 n

end

end A398913.P6360769954181654831

namespace A398913

/-- `A184049(n)*A232006(n)` -/
def P6360769954181654831.Spec : Prop :=
  ∀ n, P6360769954181654831.a n = A398913 n

end A398913

/-! ## A398913.P10097989895279628720

`A130301(n+1)*A232006(n)`
-/

namespace A398913.P10097989895279628720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130301 (n + 1) * A232006 n

end

end A398913.P10097989895279628720

namespace A398913

/-- `A130301(n+1)*A232006(n)` -/
def P10097989895279628720.Spec : Prop :=
  ∀ n, P10097989895279628720.a n = A398913 n

end A398913

/-! ## A398913.P3108008303094729632

`A243203(n)/A008279(n)*A184049(n)`
-/

namespace A398913.P3108008303094729632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) / (A008279 n : ℚ) * (A184049 n : ℚ)

end

end A398913.P3108008303094729632

namespace A398913

/-- `A243203(n)/A008279(n)*A184049(n)` -/
def P3108008303094729632.Spec : Prop :=
  ∀ n, P3108008303094729632.a n = (A398913 n : ℚ)

end A398913

/-!
# A398914: a(n) = n * (n + 2) * binomial(2*n + 1, n + 1).

The programs for A398914, the canonical program `A398914.P5120649322330680519` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398914 has offset 0).

The definition of A398914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*C(2*n+1, n)` (program `A398914.P5120649322330680519`, by `A398914.P5120649322330680519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398914.P5120649322330680519

`n*(n+2)*C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398914

/-- `n*(n+2)*C(2*n+1, n)` -/
def P5120649322330680519.Spec : Prop :=
  ∀ n, (P5120649322330680519.a n : ℤ) = A398914 n

theorem P5120649322330680519.correct : P5120649322330680519.Spec := by
  intro n
  simp only [A398914]

end A398914

/-! ## A398914.P15143735534167947314

`n*(n+2)*C(2*n+1, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398914.P15143735534167947314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) * Nat.choose (2 * n + 1) (n + 1)

end

end A398914.P15143735534167947314

namespace A398914

/-- `n*(n+2)*C(2*n+1, n+1)` -/
def P15143735534167947314.Spec : Prop :=
  ∀ n, (P15143735534167947314.a n : ℤ) = A398914 n

theorem P15143735534167947314.correct : P15143735534167947314.Spec := by
  intro n
  simp only [A398914, Nat.add_sub_cancel, A398914.P15143735534167947314.a, A398914.P5120649322330680519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A398914

/-! ## A398914.P731208330124817654

`n*A097070(n+2)`
-/

namespace A398914.P731208330124817654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097070 (n + 2)

end

end A398914.P731208330124817654

namespace A398914

/-- `n*A097070(n+2)` -/
def P731208330124817654.Spec : Prop :=
  ∀ n, P731208330124817654.a n = A398914 n

end A398914

/-! ## A398914.P2420246904026877694

`n*A189911(Δ[n²])`
-/

namespace A398914.P2420246904026877694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A398914.P2420246904026877694

namespace A398914

/-- `n*A189911(Δ[n²])` -/
def P2420246904026877694.Spec : Prop :=
  ∀ n, P2420246904026877694.a n = A398914 n

end A398914

/-! ## A398914.P16625654277929714618

`n*A275329(Δ[n²])`
-/

namespace A398914.P16625654277929714618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A275329 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A398914.P16625654277929714618

namespace A398914

/-- `n*A275329(Δ[n²])` -/
def P16625654277929714618.Spec : Prop :=
  ∀ n, P16625654277929714618.a n = A398914 n

end A398914

/-! ## A398914.P15761623220680469408

`(n+2)*A191527(2*n+1)`
-/

namespace A398914.P15761623220680469408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A191527 (2 * n + 1)

end

end A398914.P15761623220680469408

namespace A398914

/-- `(n+2)*A191527(2*n+1)` -/
def P15761623220680469408.Spec : Prop :=
  ∀ n, P15761623220680469408.a n = A398914 n

end A398914

/-! ## A398914.P12459348442622556585

`(n+2)*A237884(2*n+1)`
-/

namespace A398914.P12459348442622556585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A237884 (2 * n + 1)

end

end A398914.P12459348442622556585

namespace A398914

/-- `(n+2)*A237884(2*n+1)` -/
def P12459348442622556585.Spec : Prop :=
  ∀ n, P12459348442622556585.a n = A398914 n

end A398914

/-! ## A398914.P18171528506002081890

`A002544(n)-A001700(n)`
-/

namespace A398914.P18171528506002081890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002544 n - A001700 n

end

end A398914.P18171528506002081890

namespace A398914

/-- `A002544(n)-A001700(n)` -/
def P18171528506002081890.Spec : Prop :=
  ∀ n, P18171528506002081890.a n = A398914 n

theorem P18171528506002081890.correct : P18171528506002081890.Spec := by
  intro n
  simp only [A398914, Nat.add_sub_cancel, A398914.P18171528506002081890.a, A398914.P5120649322330680519.a, A001700, A001700.P11212155124506223364.a, A002544, A002544.P16587238265721360612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A398914

/-! ## A398914.P4782896572732314667

`A001700(n)*A005563(n)`
-/

namespace A398914.P4782896572732314667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A005563 n

end

end A398914.P4782896572732314667

namespace A398914

/-- `A001700(n)*A005563(n)` -/
def P4782896572732314667.Spec : Prop :=
  ∀ n, P4782896572732314667.a n = A398914 n

theorem P4782896572732314667.correct : P4782896572732314667.Spec := by
  intro n
  simp only [A398914, Nat.add_sub_cancel, A398914.P4782896572732314667.a, A398914.P5120649322330680519.a, A001700, A001700.P11212155124506223364.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A398914

/-! ## A398914.P695325085354067136

`A002544(n)-A088218(n+1)`
-/

namespace A398914.P695325085354067136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002544 n - A088218 (n + 1)

end

end A398914.P695325085354067136

namespace A398914

/-- `A002544(n)-A088218(n+1)` -/
def P695325085354067136.Spec : Prop :=
  ∀ n, P695325085354067136.a n = A398914 n

end A398914

/-! ## A398914.P8167927307717689816

`A001700(n)*A024206(2*n+1)`
-/

namespace A398914.P8167927307717689816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A024206 (2 * n + 1)

end

end A398914.P8167927307717689816

namespace A398914

/-- `A001700(n)*A024206(2*n+1)` -/
def P8167927307717689816.Spec : Prop :=
  ∀ n, P8167927307717689816.a n = A398914 n

end A398914

/-! ## A398914.P16882440881874523185

`A014107(n+2)*A037952(2*n)`
-/

namespace A398914.P16882440881874523185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (n + 2) * A037952 (2 * n)

end

end A398914.P16882440881874523185

namespace A398914

/-- `A014107(n+2)*A037952(2*n)` -/
def P16882440881874523185.Spec : Prop :=
  ∀ n, P16882440881874523185.a n = A398914 n

end A398914

/-! ## A398914.P10331211076852036030

`A107231(2*n)-A001405(2*n+1)`
-/

namespace A398914.P10331211076852036030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107231 (2 * n) - A001405 (2 * n + 1)

end

end A398914.P10331211076852036030

namespace A398914

/-- `A107231(2*n)-A001405(2*n+1)` -/
def P10331211076852036030.Spec : Prop :=
  ∀ n, P10331211076852036030.a n = A398914 n

end A398914

/-! ## A398914.P15149824997981332669

`(A000984(n)+A000108(n))*A014105(n)`
-/

namespace A398914.P15149824997981332669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000984 n + A000108 n) * A014105 n

end

end A398914.P15149824997981332669

namespace A398914

/-- `(A000984(n)+A000108(n))*A014105(n)` -/
def P15149824997981332669.Spec : Prop :=
  ∀ n, P15149824997981332669.a n = A398914 n

end A398914

/-! ## A398914.P12408956894188190689

`(A055112(n)+A014105(n))*A000108(n)`
-/

namespace A398914.P12408956894188190689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055112 n + A014105 n) * A000108 n

end

end A398914.P12408956894188190689

namespace A398914

/-- `(A055112(n)+A014105(n))*A000108(n)` -/
def P12408956894188190689.Spec : Prop :=
  ∀ n, P12408956894188190689.a n = A398914 n

end A398914

/-! ## A398914.P17444692574132057102

`A001700(n)+A001700(n)*A008865(n+1)`
-/

namespace A398914.P17444692574132057102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A001700 n * A008865 (n + 1)

end

end A398914.P17444692574132057102

namespace A398914

/-- `A001700(n)+A001700(n)*A008865(n+1)` -/
def P17444692574132057102.Spec : Prop :=
  ∀ n, P17444692574132057102.a n = A398914 n

theorem P17444692574132057102.correct : P17444692574132057102.Spec := by
  intro n
  simp only [A398914, Nat.add_sub_cancel, A398914.P17444692574132057102.a, A398914.P5120649322330680519.a, A001700, A001700.P11212155124506223364.a, A008865, A008865.P16699731729816255732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A398914

/-! ## A398914.P18259282245363868262

`A000290(n+1)*A001700(n)-A001700(n)`
-/

namespace A398914.P18259282245363868262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A001700 n - A001700 n

end

end A398914.P18259282245363868262

namespace A398914

/-- `A000290(n+1)*A001700(n)-A001700(n)` -/
def P18259282245363868262.Spec : Prop :=
  ∀ n, P18259282245363868262.a n = A398914 n

theorem P18259282245363868262.correct : P18259282245363868262.Spec := by
  intro n
  simp only [A398914, Nat.add_sub_cancel, A398914.P18259282245363868262.a, A398914.P5120649322330680519.a, A000290, A000290.P12206242496348924484.a, A001700, A001700.P11212155124506223364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A398914

/-! ## A398914.P8712637421769520585

`(A371036(n+2)-A352027(n+2))*A001700(n)`
-/

namespace A398914.P8712637421769520585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A371036 (n + 2) - A352027 (n + 2)) * A001700 n

end

end A398914.P8712637421769520585

namespace A398914

/-- `(A371036(n+2)-A352027(n+2))*A001700(n)` -/
def P8712637421769520585.Spec : Prop :=
  ∀ n, P8712637421769520585.a n = A398914 n

end A398914

/-!
# A398915: Antidiagonal sums of the binomial matrix of the Catalan numbers (A399000).

The programs for A398915, there is no canonical definition to state claims against.
-/

/-! ## A398915.P4043562134613966925

`A260734(A148874(n+1))`
-/

namespace A398915.P4043562134613966925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A148874 (n + 1)).toNat

end

end A398915.P4043562134613966925

/-! ## A398915.P3684610700600062055

`A001462(A343353(n))+n`
-/

namespace A398915.P3684610700600062055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A343353 n).toNat + (n : ℤ)

end

end A398915.P3684610700600062055

/-!
# A398916: a(n) is the Grundy value of "Bit Deletion" game at state n (see comments).

The programs for A398916, there is no canonical definition to state claims against.
-/

/-! ## A398916.P12012511137218231828

`A352822(A250120(2*n+3)*A317927(n+1))`
-/

namespace A398916.P12012511137218231828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A250120 (2 * n + 3) * A317927 (n + 1)).toNat

end

end A398916.P12012511137218231828

/-! ## A398916.P4370468332270748670

`A153800(n+1)%A198789(A005101(n+1))`
-/

namespace A398916.P4370468332270748670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153800 (n + 1)) (A198789 (A005101 (n + 1)).toNat)

end

end A398916.P4370468332270748670

/-! ## A398916.P13143512446415465863

`A102677(A071389(n+1))+A102677(3*(n+1))`
-/

namespace A398916.P13143512446415465863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A071389 (n + 1)).toNat + A102677 (3 * (n + 1))

end

end A398916.P13143512446415465863

/-! ## A398916.P8637360214927310837

`and(1+A061398(n+1), A000720(A127103(n+1)))`
-/

namespace A398916.P8637360214927310837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 + A061398 (n + 1)) (A000720 (A127103 (n + 1)).toNat)

end

end A398916.P8637360214927310837

/-! ## A398916.P18148981914113545278

`A217218(A121315(3*n+1))%A232098(2*(n+1))`
-/

namespace A398916.P18148981914113545278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217218 (A121315 (3 * n + 1)).toNat) (A232098 (2 * (n + 1)))

end

end A398916.P18148981914113545278

/-!
# A398917: Number of regular (asymmetric) orbits of chord diagrams on 2n vertices under the action of the dihedral group D_(2n).

The programs for A398917, there is no canonical definition to state claims against.
-/

/-! ## A398917.P4452268538063159780

`A241512(A030077(n+2))`
-/

namespace A398917.P4452268538063159780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 (A030077 (n + 2)).toNat

end

end A398917.P4452268538063159780

/-! ## A398917.P13509652013053412935

`A241010(A216246(n))-1`
-/

namespace A398917.P13509652013053412935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241010 (A216246 n).toNat - 1

end

end A398917.P13509652013053412935

/-!
# A398919: Number of nonempty sets of pairwise commuting derangements of [n].

The programs for A398919, there is no canonical definition to state claims against.
-/

/-! ## A398919.P14005107305731236891

`A229950(A027243(n))`
-/

namespace A398919.P14005107305731236891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A027243 n).toNat

end

end A398919.P14005107305731236891

/-!
# A398920: Number of solutions of the Diophantine inequality a*b+b*c+c*d <= n, with a,b,c >= 1.

The programs for A398920, there is no canonical definition to state claims against.
-/

/-! ## A398920.P4091287442710156285

`∑[A002133(1+n)]`
-/

namespace A398920.P4091287442710156285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002133 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P4091287442710156285

/-! ## A398920.P11487361302023534314

`∑[∑{d}[1+n, A274108(#)]]`
-/

namespace A398920.P11487361302023534314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A274108 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P11487361302023534314

/-! ## A398920.P4625727658642577307

`A002133(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A398920.P4625727658642577307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002133 (n + 1) + a (n - 1)

end

end A398920.P4625727658642577307

/-! ## A398920.P7592226829820528958

`A274629(n+1)-A222548(n+1)`
-/

namespace A398920.P7592226829820528958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274629 (n + 1) - A222548 (n + 1)

end

end A398920.P7592226829820528958

/-! ## A398920.P1080640379087827848

`∑[A265250(n+1)-Δ[A006218(n)]]`
-/

namespace A398920.P1080640379087827848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265250 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P1080640379087827848

/-! ## A398920.P8504224453138455194

`∑[A059819(n+1)-A000203(n+1)]`
-/

namespace A398920.P8504224453138455194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059819 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P8504224453138455194

/-! ## A398920.P8124967013738876915

`∑[A265250(n+1)-A000005(n+1)]`
-/

namespace A398920.P8124967013738876915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265250 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P8124967013738876915

/-! ## A398920.P16841032180052244308

`∑[A274628(n+1)]-A222548(n+1)`
-/

namespace A398920.P16841032180052244308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A222548 (n + 1)

end

end A398920.P16841032180052244308

/-! ## A398920.P5432774855374198107

`∑[2*A270060(n+1)-A100073(n+1)]`
-/

namespace A398920.P5432774855374198107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270060 (n + 1) - A100073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P5432774855374198107

/-! ## A398920.P18169168290511717304

`∑[A238130(A000096(n)+2)/2]`
-/

namespace A398920.P18169168290511717304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238130 (A000096 n + 2).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398920.P18169168290511717304

/-!
# A398921: Number of solutions of the Diophantine inequality (a+c)*(b+d) <= n with a,b,c,d >= 1.

The programs for A398921, the canonical program `A398921.P360374842109008967` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398921 has offset 1).

The definition of A398921 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398921.P360374842109008967

`A006218(n+1)+A143127(n+1)-2*A024916(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398921

/-- `A006218(n+1)+A143127(n+1)-2*A024916(n+1)` -/
def P360374842109008967.Spec : Prop :=
  ∀ n, P360374842109008967.a n = A398921 (n + 1)

theorem P360374842109008967.correct : P360374842109008967.Spec := by
  intro n
  simp only [A398921, Nat.add_sub_cancel]

end A398921

/-! ## A398921.P12438662020880980539

`∑[∑{d}[n+1, n+2-2*#]]`
-/

namespace A398921.P12438662020880980539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n + 2 : ℤ) - (2 * d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398921.P12438662020880980539

namespace A398921

/-- `∑[∑{d}[n+1, n+2-2*#]]` -/
def P12438662020880980539.Spec : Prop :=
  ∀ n, P12438662020880980539.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P5636053878848675282

`∑[abs(∑{d}[n+1, #-(n+2)+#])]`
-/

namespace A398921.P5636053878848675282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - (n + 2 : ℤ) + (d : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398921.P5636053878848675282

namespace A398921

/-- `∑[abs(∑{d}[n+1, #-(n+2)+#])]` -/
def P5636053878848675282.Spec : Prop :=
  ∀ n, P5636053878848675282.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P16035915856546338725

`∑[∑{d}[n+1, n+1-#]-∑{d}[n+1, #-1]]`
-/

namespace A398921.P16035915856546338725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n + 1 : ℤ) - (d : ℤ)) - ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398921.P16035915856546338725

namespace A398921

/-- `∑[∑{d}[n+1, n+1-#]-∑{d}[n+1, #-1]]` -/
def P16035915856546338725.Spec : Prop :=
  ∀ n, P16035915856546338725.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P15162220513038195837

`∑[A374969(1+n)]`
-/

namespace A398921.P15162220513038195837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374969 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398921.P15162220513038195837

namespace A398921

/-- `∑[A374969(1+n)]` -/
def P15162220513038195837.Spec : Prop :=
  ∀ n, P15162220513038195837.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P12795685704114582799

`A143127(n+1)-A222548(n+1)`
-/

namespace A398921.P12795685704114582799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143127 (n + 1) - A222548 (n + 1)

end

end A398921.P12795685704114582799

namespace A398921

/-- `A143127(n+1)-A222548(n+1)` -/
def P12795685704114582799.Spec : Prop :=
  ∀ n, P12795685704114582799.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P15563171446851187419

`∑[A081307(n+1)-A000203(n+1)]`
-/

namespace A398921.P15563171446851187419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398921.P15563171446851187419

namespace A398921

/-- `∑[A081307(n+1)-A000203(n+1)]` -/
def P15563171446851187419.Spec : Prop :=
  ∀ n, P15563171446851187419.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P16051676219486394635

`∑[A094471(n+1)-A065608(n+1)]`
-/

namespace A398921.P16051676219486394635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) - A065608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398921.P16051676219486394635

namespace A398921

/-- `∑[A094471(n+1)-A065608(n+1)]` -/
def P16051676219486394635.Spec : Prop :=
  ∀ n, P16051676219486394635.a n = A398921 (n + 1)

end A398921

/-! ## A398921.P17764151787688585542

`∑[A386012(n+1)/(n+1)²]-∑[A129235(n+1)]`
-/

namespace A398921.P17764151787688585542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386012 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A398921.P17764151787688585542

namespace A398921

/-- `∑[A386012(n+1)/(n+1)²]-∑[A129235(n+1)]` -/
def P17764151787688585542.Spec : Prop :=
  ∀ n, P17764151787688585542.a n = (A398921 (n + 1) : ℚ)

end A398921

/-!
# A398922: Number of distinct acute lattice trapezia of area n/2 with horizontal base.

The programs for A398922, the canonical program `A398922.P11315198121938335182` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398922 has offset 1).

The definition of A398922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398922.P9239168708655878965

`∑{d}[n+1, floor(((#-2)/2)²)]`
-/

namespace A398922.P9239168708655878965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(((d : ℤ) - 2 : ℚ) / 2) ^ 2⌋

end

end A398922.P9239168708655878965

namespace A398922

/-- `∑{d}[n+1, floor(((#-2)/2)²)]` -/
def P9239168708655878965.Spec : Prop :=
  ∀ n, P9239168708655878965.a n = A398922 (n + 1)

end A398922

/-! ## A398922.P11315198121938335182

`A346759(n+1)-A065608(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A398922

/-- `A346759(n+1)-A065608(n+1)` -/
def P11315198121938335182.Spec : Prop :=
  ∀ n, P11315198121938335182.a n = A398922 (n + 1)

theorem P11315198121938335182.correct : P11315198121938335182.Spec := by
  intro n
  simp only [A398922, Nat.add_sub_cancel]

end A398922

/-!
# A398923: Number of distinct acute lattice trapezia of area at most n/2 with horizontal base.

The programs for A398923, the canonical program `A398923.P3360523914965098453` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398923 has offset 1).

The definition of A398923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398923.P3360523914965098453

`∑[A398922(1+n)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A398923

/-- `∑[A398922(1+n)]` -/
def P3360523914965098453.Spec : Prop :=
  ∀ n, P3360523914965098453.a n = A398923 (n + 1)

theorem P3360523914965098453.correct : P3360523914965098453.Spec := by
  intro n
  simp only [A398923, Nat.add_sub_cancel]

end A398923

/-! ## A398923.P1830603844354750830

`a(n-1)+A346759(n+1)-A065608(n+1)` with `a(0)=0`
-/

namespace A398923.P1830603844354750830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A346759 (n + 1) - A065608 (n + 1))

end

end A398923.P1830603844354750830

namespace A398923

/-- `a(n-1)+A346759(n+1)-A065608(n+1)` -/
def P1830603844354750830.Spec : Prop :=
  ∀ n, P1830603844354750830.a n = A398923 (n + 1)

end A398923

/-! ## A398923.P14188754090650020095

`∑[∑[∑{e}[A241175(n+1)-(n+2), #]]]`
-/

namespace A398923.P14188754090650020095
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241175 (n + 1) - (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398923.P14188754090650020095

namespace A398923

/-- `∑[∑[∑{e}[A241175(n+1)-(n+2), #]]]` -/
def P14188754090650020095.Spec : Prop :=
  ∀ n, (P14188754090650020095.a n : ℤ) = A398923 (n + 1)

end A398923

/-! ## A398923.P301340588877726923

`A123580(A271370(n))`
-/

namespace A398923.P301340588877726923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A271370 n).toNat

end

end A398923.P301340588877726923

namespace A398923

/-- `A123580(A271370(n))` -/
def P301340588877726923.Spec : Prop :=
  ∀ n, P301340588877726923.a n = A398923 (n + 1)

end A398923

/-! ## A398923.P11408132740304782947

`A393289(A355135(n))`
-/

namespace A398923.P11408132740304782947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393289 (A355135 n).toNat

end

end A398923.P11408132740304782947

namespace A398923

/-- `A393289(A355135(n))` -/
def P11408132740304782947.Spec : Prop :=
  ∀ n, P11408132740304782947.a n = A398923 (n + 1)

end A398923

/-!
# A398926: Number of strict T1 closure systems on n labeled points with a fixed extreme point.

The programs for A398926, there is no canonical definition to state claims against.
-/

/-! ## A398926.P711989318145618340

`A334255(n)-A398927(n)`
-/

namespace A398926.P711989318145618340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334255 n - A398927 n

end

end A398926.P711989318145618340

/-! ## A398926.P14616060033201482335

`A334254(char[1]+n)-A398927(n)`
-/

namespace A398926.P14616060033201482335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334254 ((if ∃ j, f1 j = n then 1 else 0) + n) - A398927 n

end

end A398926.P14616060033201482335

/-! ## A398926.P388955394600500069

`A334254(n)-char[1]-A398927(n)`
-/

namespace A398926.P388955394600500069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334254 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A398927 n

end

end A398926.P388955394600500069

/-!
# A398927: Number of strict T1 closure systems on n labeled points with a fixed non-extreme point.

The programs for A398927, there is no canonical definition to state claims against.
-/

/-! ## A398927.P4343103248946192555

`A334255(n)-A398926(n)`
-/

namespace A398927.P4343103248946192555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334255 n - A398926 n

end

end A398927.P4343103248946192555

/-! ## A398927.P5061302878770669737

`A334254(n)^floor(A398503(n)/2)-A398926(n)`
-/

namespace A398927.P5061302878770669737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334254 n : ℚ) ^ (⌊(A398503 n : ℚ) / 2⌋ : ℤ) - (A398926 n : ℚ)

end

end A398927.P5061302878770669737

/-!
# A398928: a(n) = numerator of Sum_{k = 1..n} 2^ceiling(log_2(k))/k.

The programs for A398928, there is no canonical definition to state claims against.
-/

/-! ## A398928.P11364542628799390666

`A165084(∑[A201648(n+2)])`
-/

namespace A398928.P11364542628799390666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201648 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165084 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A398928.P11364542628799390666

/-! ## A398928.P2573764232736425333

`A225645(round(A134864(2*(n+1))^(A000720(n+1)/5)))`
-/

namespace A398928.P2573764232736425333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (SequenceMachineLib.roundAway ((A134864 (2 * (n + 1)) : ℝ) ^ ((A000720 (n + 1) : ℚ) / 5 : ℝ))).toNat

end

end A398928.P2573764232736425333

/-!
# A398929: Number of sets R(k) that contain n, where R(k) is the set of k consecutive integers centered at k (excluding k if k is even, including k if k is odd).

The programs for A398929, the canonical program `A398929.P15101211080941894914` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398929 has offset 1).

The definition of A398929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398929.P15101211080941894914

`ogf((2+2x+3x^2+x^3)/(1-x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398929

/-- `ogf((2+2x+3x^2+x^3)/(1-x^2-x^3+x^5))` -/
def P15101211080941894914.Spec : Prop :=
  ∀ n, P15101211080941894914.a n = A398929 (n + 1)

theorem P15101211080941894914.correct : P15101211080941894914.Spec := by
  intro n
  simp only [A398929, Nat.add_sub_cancel]

end A398929

/-! ## A398929.P2684916258102758408

`n+1+floor((n+1)/3)+(n+1)%2`
-/

namespace A398929.P2684916258102758408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n + 1 : ℚ) / 3⌋ + (((n + 1) % 2 : ℕ) : ℤ)

end

end A398929.P2684916258102758408

namespace A398929

/-- `n+1+floor((n+1)/3)+(n+1)%2` -/
def P2684916258102758408.Spec : Prop :=
  ∀ n, P2684916258102758408.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P17155614357491267762

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=2, a(2)=5, a(3)=5, a(4)=7`
-/

namespace A398929.P17155614357491267762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 5, 5, 7] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A398929.P17155614357491267762

namespace A398929

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P17155614357491267762.Spec : Prop :=
  ∀ n, P17155614357491267762.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P2293016342614227278

`round(record[xor(6, n)/3])`
-/

namespace A398929.P2293016342614227278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A398929.P2293016342614227278

namespace A398929

/-- `round(record[xor(6, n)/3])` -/
def P2293016342614227278.Spec : Prop :=
  ∀ n, P2293016342614227278.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P8758283788130912894

`floor(record[or(6, n)+1]/3)`
-/

namespace A398929.P8758283788130912894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋

end

end A398929.P8758283788130912894

namespace A398929

/-- `floor(record[or(6, n)+1]/3)` -/
def P8758283788130912894.Spec : Prop :=
  ∀ n, P8758283788130912894.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P8822315217874506173

`ceil(record[or(6, n)-1]/3)`
-/

namespace A398929.P8822315217874506173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌉

end

end A398929.P8822315217874506173

namespace A398929

/-- `ceil(record[or(6, n)-1]/3)` -/
def P8822315217874506173.Spec : Prop :=
  ∀ n, P8822315217874506173.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P3868907138278511500

`∑[xor(2, a(n-3))]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A398929.P3868907138278511500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n f1 =>
  Nat.xor 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398929.P3868907138278511500

namespace A398929

/-- `∑[xor(2, a(n-3))]` -/
def P3868907138278511500.Spec : Prop :=
  ∀ n, (P3868907138278511500.a n : ℤ) = A398929 (n + 1)

end A398929

/-! ## A398929.P17280646609284306327

`ceil(or(1, n)+(n+2)/3)`
-/

namespace A398929.P17280646609284306327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) + (n + 2 : ℚ) / 3⌉

end

end A398929.P17280646609284306327

namespace A398929

/-- `ceil(or(1, n)+(n+2)/3)` -/
def P17280646609284306327.Spec : Prop :=
  ∀ n, P17280646609284306327.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P15556915838764488235

`round(or(1, n)+(n+3)/3)`
-/

namespace A398929.P15556915838764488235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) + (n + 3 : ℚ) / 3)

end

end A398929.P15556915838764488235

namespace A398929

/-- `round(or(1, n)+(n+3)/3)` -/
def P15556915838764488235.Spec : Prop :=
  ∀ n, P15556915838764488235.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P13740344762407775193

`floor(∑[8-a(n-1)]/3)` with `a(0)=7`
-/

namespace A398929.P13740344762407775193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A398929.P13740344762407775193

namespace A398929

/-- `floor(∑[8-a(n-1)]/3)` -/
def P13740344762407775193.Spec : Prop :=
  ∀ n, P13740344762407775193.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P17457648816667490748

`a(n-2)+gcd(2, n%3)+1` with `a(0)=2, a(1)=2`
-/

namespace A398929.P17457648816667490748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + Nat.gcd 2 (n % 3) + 1

end

end A398929.P17457648816667490748

namespace A398929

/-- `a(n-2)+gcd(2, n%3)+1` -/
def P17457648816667490748.Spec : Prop :=
  ∀ n, (P17457648816667490748.a n : ℤ) = A398929 (n + 1)

end A398929

/-! ## A398929.P13325753627885290304

`A051275(n)+n+1`
-/

namespace A398929.P13325753627885290304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n + (n + 1 : ℤ)

end

end A398929.P13325753627885290304

namespace A398929

/-- `A051275(n)+n+1` -/
def P13325753627885290304.Spec : Prop :=
  ∀ n, P13325753627885290304.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P1314672374982696063

`A047539(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A398929.P1314672374982696063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A047539 (n + 1) - a (n - 1)

end

end A398929.P1314672374982696063

namespace A398929

/-- `A047539(n+1)-a(n-1)` -/
def P1314672374982696063.Spec : Prop :=
  ∀ n, P1314672374982696063.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P5162314901044976189

`A109613(n)+A086161(n)`
-/

namespace A398929.P5162314901044976189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A086161 n

end

end A398929.P5162314901044976189

namespace A398929

/-- `A109613(n)+A086161(n)` -/
def P5162314901044976189.Spec : Prop :=
  ∀ n, P5162314901044976189.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P6011902702033933802

`A235451(n)+A008611(n)`
-/

namespace A398929.P6011902702033933802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 n + A008611 n

end

end A398929.P6011902702033933802

namespace A398929

/-- `A235451(n)+A008611(n)` -/
def P6011902702033933802.Spec : Prop :=
  ∀ n, P6011902702033933802.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P10063835969357001857

`A168056(n)+A117447(n)`
-/

namespace A398929.P10063835969357001857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A117447 n

end

end A398929.P10063835969357001857

namespace A398929

/-- `A168056(n)+A117447(n)` -/
def P10063835969357001857.Spec : Prop :=
  ∀ n, P10063835969357001857.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P6974318233343498234

`A267806(n)+A117571(n)`
-/

namespace A398929.P6974318233343498234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 n + A117571 n

end

end A398929.P6974318233343498234

namespace A398929

/-- `A267806(n)+A117571(n)` -/
def P6974318233343498234.Spec : Prop :=
  ∀ n, P6974318233343498234.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P754030292117321953

`A004773(n+1)+A000035(n+1)`
-/

namespace A398929.P754030292117321953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) + A000035 (n + 1)

end

end A398929.P754030292117321953

namespace A398929

/-- `A004773(n+1)+A000035(n+1)` -/
def P754030292117321953.Spec : Prop :=
  ∀ n, P754030292117321953.a n = A398929 (n + 1)

end A398929

/-! ## A398929.P14490687073718400962

`A042968(n+2)-A166486(2*n)`
-/

namespace A398929.P14490687073718400962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 2) - A166486 (2 * n)

end

end A398929.P14490687073718400962

namespace A398929

/-- `A042968(n+2)-A166486(2*n)` -/
def P14490687073718400962.Spec : Prop :=
  ∀ n, P14490687073718400962.a n = A398929 (n + 1)

end A398929

/-!
# A398933: Partial sums of A398929.

The programs for A398933, the canonical program `A398933.P3581238121888898672` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398933 has offset 1).

The definition of A398933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398933.P7536159571079323179

`floor(∑[record[or(6, n)]]/3)`
-/

namespace A398933.P7536159571079323179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398933.P7536159571079323179

namespace A398933

/-- `floor(∑[record[or(6, n)]]/3)` -/
def P7536159571079323179.Spec : Prop :=
  ∀ n, P7536159571079323179.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P4410748250816588049

`floor(∑[record[xor(6, n)/3]])`
-/

namespace A398933.P4410748250816588049
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398933.P4410748250816588049

namespace A398933

/-- `floor(∑[record[xor(6, n)/3]])` -/
def P4410748250816588049.Spec : Prop :=
  ∀ n, P4410748250816588049.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P3652717372227467842

`∑[round(record[xor(6, n)/3])]`
-/

namespace A398933.P3652717372227467842
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P3652717372227467842

namespace A398933

/-- `∑[round(record[xor(6, n)/3])]` -/
def P3652717372227467842.Spec : Prop :=
  ∀ n, P3652717372227467842.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P2582922196386240475

`∑[∑[∑{p}[n+4, floor(4/#)]]]`
-/

namespace A398933.P2582922196386240475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ⌊4 / (p : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P2582922196386240475

namespace A398933

/-- `∑[∑[∑{p}[n+4, floor(4/#)]]]` -/
def P2582922196386240475.Spec : Prop :=
  ∀ n, P2582922196386240475.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P3581238121888898672

`∑[∑[xor(2, a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398933

/-- `∑[∑[xor(2, a(n-3))]]` -/
def P3581238121888898672.Spec : Prop :=
  ∀ n, (P3581238121888898672.a n : ℤ) = A398933 (n + 1)

theorem P3581238121888898672.correct : P3581238121888898672.Spec := by
  intro n
  simp only [A398933, Nat.add_sub_cancel]

end A398933

/-! ## A398933.P18138330275631787306

`round(∑[(8*(n+1)+1)/6])`
-/

namespace A398933.P18138330275631787306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) + 1 : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398933.P18138330275631787306

namespace A398933

/-- `round(∑[(8*(n+1)+1)/6])` -/
def P18138330275631787306.Spec : Prop :=
  ∀ n, P18138330275631787306.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P17725278106488725372

`∑[ceil((2+n)/3)+or(n, 1)]`
-/

namespace A398933.P17725278106488725372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 + n : ℚ) / 3⌉ + (Nat.lor n 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P17725278106488725372

namespace A398933

/-- `∑[ceil((2+n)/3)+or(n, 1)]` -/
def P17725278106488725372.Spec : Prop :=
  ∀ n, P17725278106488725372.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P6417209510959377845

`∑[comp[4*n-2]+gcd(2, n)]`
-/

namespace A398933.P6417209510959377845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P6417209510959377845

namespace A398933

/-- `∑[comp[4*n-2]+gcd(2, n)]` -/
def P6417209510959377845.Spec : Prop :=
  ∀ n, (P6417209510959377845.a n : ℤ) = A398933 (n + 1)

end A398933

/-! ## A398933.P10964820452586639013

`floor(∑[a(n-2)+8]/3)` with `a(0)=6, a(1)=7`
-/

namespace A398933.P10964820452586639013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398933.P10964820452586639013

namespace A398933

/-- `floor(∑[a(n-2)+8]/3)` -/
def P10964820452586639013.Spec : Prop :=
  ∀ n, P10964820452586639013.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P6642574755218175146

`∑[floor(∑[8-a(n-1)]/3)]` with `a(0)=7`
-/

namespace A398933.P6642574755218175146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P6642574755218175146

namespace A398933

/-- `∑[floor(∑[8-a(n-1)]/3)]` -/
def P6642574755218175146.Spec : Prop :=
  ∀ n, P6642574755218175146.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P11661723688671575971

`a(n-1)+floor(record[or(6, n)+1]/3)` with `a(0)=2`
-/

namespace A398933.P11661723688671575971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋

end

end A398933.P11661723688671575971

namespace A398933

/-- `a(n-1)+floor(record[or(6, n)+1]/3)` -/
def P11661723688671575971.Spec : Prop :=
  ∀ n, P11661723688671575971.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P9603083058838004428

`floor(C(2*n+3, 2)/3)+1+floor(n/2)`
-/

namespace A398933.P9603083058838004428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 3) 2 : ℚ) / 3⌋ + (1 + ⌊(n : ℚ) / 2⌋)

end

end A398933.P9603083058838004428

namespace A398933

/-- `floor(C(2*n+3, 2)/3)+1+floor(n/2)` -/
def P9603083058838004428.Spec : Prop :=
  ∀ n, P9603083058838004428.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P6350301360925603985

`∑[A398929(1+n)]`
-/

namespace A398933.P6350301360925603985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398929 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P6350301360925603985

namespace A398933

/-- `∑[A398929(1+n)]` -/
def P6350301360925603985.Spec : Prop :=
  ∀ n, P6350301360925603985.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P7734846247075793962

`∑[A051275(n)+n+1]`
-/

namespace A398933.P7734846247075793962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P7734846247075793962

namespace A398933

/-- `∑[A051275(n)+n+1]` -/
def P7734846247075793962.Spec : Prop :=
  ∀ n, P7734846247075793962.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P3184401298098791943

`A156040(n)+∑[n+1]`
-/

namespace A398933.P3184401298098791943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398933.P3184401298098791943

namespace A398933

/-- `A156040(n)+∑[n+1]` -/
def P3184401298098791943.Spec : Prop :=
  ∀ n, P3184401298098791943.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P13732464748502863945

`A397988(n)+2*(n+1)`
-/

namespace A398933.P13732464748502863945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397988 n + (2 * (n + 1) : ℤ)

end

end A398933.P13732464748502863945

namespace A398933

/-- `A397988(n)+2*(n+1)` -/
def P13732464748502863945.Spec : Prop :=
  ∀ n, P13732464748502863945.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P15616042835643319029

`A008619(n)+A000969(n)`
-/

namespace A398933.P15616042835643319029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A000969 n

end

end A398933.P15616042835643319029

namespace A398933

/-- `A008619(n)+A000969(n)` -/
def P15616042835643319029.Spec : Prop :=
  ∀ n, P15616042835643319029.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P5897721601745787661

`A111710(n+1)+A008731(n)`
-/

namespace A398933.P5897721601745787661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 1) + A008731 n

end

end A398933.P5897721601745787661

namespace A398933

/-- `A111710(n+1)+A008731(n)` -/
def P5897721601745787661.Spec : Prop :=
  ∀ n, P5897721601745787661.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P14760083215002164319

`A143978(n+1)+A103221(n)`
-/

namespace A398933.P14760083215002164319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1) + A103221 n

end

end A398933.P14760083215002164319

namespace A398933

/-- `A143978(n+1)+A103221(n)` -/
def P14760083215002164319.Spec : Prop :=
  ∀ n, P14760083215002164319.a n = A398933 (n + 1)

end A398933

/-! ## A398933.P13969276239639115458

`A281333(n)+A143975(n+1)`
-/

namespace A398933.P13969276239639115458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n + A143975 (n + 1)

end

end A398933.P13969276239639115458

namespace A398933

/-- `A281333(n)+A143975(n+1)` -/
def P13969276239639115458.Spec : Prop :=
  ∀ n, P13969276239639115458.a n = A398933 (n + 1)

end A398933

/-!
# A398936: Nonnegative integers k satisfying sin(k) > sin(k+1) > sin(k+2) > sin(k+3) > sin(k+4) < sin(k+5).

The programs for A398936, the canonical program `A398936.P16638885120004625840` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398936 has offset 1).

The definition of A398936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398936.P2681990721704640928

`A023453(A398486(n+1))`
-/

namespace A398936.P2681990721704640928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A398486 (n + 1)).toNat

end

end A398936.P2681990721704640928

namespace A398936

/-- `A023453(A398486(n+1))` -/
def P2681990721704640928.Spec : Prop :=
  ∀ n, P2681990721704640928.a n = A398936 (n + 1)

end A398936

/-! ## A398936.P16638885120004625840

`∩[A023444(A246298(n+1)), A246293(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398936

/-- `∩[A023444(A246298(n+1)), A246293(n+1)]` -/
def P16638885120004625840.Spec : Prop :=
  ∀ n, (P16638885120004625840.a n : ℤ) = A398936 (n + 1)

theorem P16638885120004625840.correct : P16638885120004625840.Spec := by
  intro n
  simp only [A398936, Nat.add_sub_cancel]

end A398936

/-! ## A398936.P15531339729426978475

`∩[A023444(A327139(2*(n+1))-1), A246293(n+1)]`
-/

namespace A398936.P15531339729426978475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A327139 (2 * (n + 1)) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398936.P15531339729426978475

namespace A398936

/-- `∩[A023444(A327139(2*(n+1))-1), A246293(n+1)]` -/
def P15531339729426978475.Spec : Prop :=
  ∀ n, (P15531339729426978475.a n : ℤ) = A398936 (n + 1)

end A398936

/-! ## A398936.P15923304261995801623

`A398486(n+1)-A000533(A287022(n))`
-/

namespace A398936.P15923304261995801623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398486 (n + 1) - A000533 (A287022 n).toNat

end

end A398936.P15923304261995801623

namespace A398936

/-- `A398486(n+1)-A000533(A287022(n))` -/
def P15923304261995801623.Spec : Prop :=
  ∀ n, P15923304261995801623.a n = A398936 (n + 1)

end A398936

/-!
# A398937: Nonnegative integers k satisfying cos(k) < cos(k+1) < cos(k+2) < cos(k+3) < cos(k+4) > cos(k+5).

The programs for A398937, there is no canonical definition to state claims against.
-/

/-! ## A398937.P9778762969931713380

`A246298(A211372(2*(n+1))-A000005(2*n+3))`
-/

namespace A398937.P9778762969931713380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246298 (A211372 (2 * (n + 1)) - A000005 (2 * n + 3)).toNat

end

end A398937.P9778762969931713380

/-!
# A398947: Numbers with ordered prime signature (1,1,1,2).

The programs for A398947, there is no canonical definition to state claims against.
-/

/-! ## A398947.P5885711472414676200

`∩[A390096(n+1), A398948(n+1)]`
-/

namespace A398947.P5885711472414676200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P5885711472414676200

/-! ## A398947.P5790808781585944627

`∩[A229027(n+1), A398948(n+1)]`
-/

namespace A398947.P5790808781585944627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P5790808781585944627

/-! ## A398947.P18170887278264846940

`∩[A189982(n+1), A229027(n+1)]`
-/

namespace A398947.P18170887278264846940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P18170887278264846940

/-! ## A398947.P13049904353451793880

`∩[A189982(n+1), A368780(n+1)]`
-/

namespace A398947.P13049904353451793880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P13049904353451793880

/-! ## A398947.P16958812380594020045

`∩[A189982(n+1), A388306(n+1)]`
-/

namespace A398947.P16958812380594020045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P16958812380594020045

/-! ## A398947.P14779830366562024960

`∩[A189982(n+1), A389145(n+1)]`
-/

namespace A398947.P14779830366562024960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P14779830366562024960

/-! ## A398947.P5812994026537411524

`∩[A189982(n+1), A390096(n+1)]`
-/

namespace A398947.P5812994026537411524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398947.P5812994026537411524

/-! ## A398947.P1856784676143104863

`filter[A398948(n+1), A066829(#)]`
-/

namespace A398947.P1856784676143104863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A398947.P1856784676143104863

/-! ## A398947.P18424908410008129126

`filter[A189982(n+1), A354868(#)]`
-/

namespace A398947.P18424908410008129126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A398947.P18424908410008129126

/-! ## A398947.P13034753663156175974

`filter[A229027(n+1), A358751(#)]`
-/

namespace A398947.P13034753663156175974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A398947.P13034753663156175974

/-!
# A398948: Numbers k of the form q(k) * rad(k), where rad = A007947, and q(k) the fourth smallest distinct prime factor of k.

The programs for A398948, there is no canonical definition to state claims against.
-/

/-! ## A398948.P6409302599750822214

`A398947(A077168(n))`
-/

namespace A398948.P6409302599750822214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398947 (A077168 n).toNat

end

end A398948.P6409302599750822214

/-! ## A398948.P18351997945742723873

`A053814(A398947(n+1))`
-/

namespace A398948.P18351997945742723873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053814 (A398947 (n + 1)).toNat

end

end A398948.P18351997945742723873

/-! ## A398948.P16084190450019010480

`A398947(n+1)%A398969(n+1)`
-/

namespace A398948.P16084190450019010480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398947 (n + 1)) (A398969 (n + 1))

end

end A398948.P16084190450019010480

/-! ## A398948.P6145747788332125228

`A398947(n+1)+A000007(A000079(n))`
-/

namespace A398948.P6145747788332125228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398947 (n + 1) + A000007 (A000079 n).toNat

end

end A398948.P6145747788332125228

/-! ## A398948.P677819244383234717

`A398947(n+1)+A000038(A287502(n))`
-/

namespace A398948.P677819244383234717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398947 (n + 1) + A000038 (A287502 n).toNat

end

end A398948.P677819244383234717

/-!
# A398950: Numbers k such that k, k+2, and k+4 are all squarefree.

The programs for A398950, the canonical program `A398950.P7122882423077720818` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398950 has offset 1).

The definition of A398950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398950.P4526112283832757648

`∩[A069977(n+1)-2, A005117(n+1)]`
-/

namespace A398950.P4526112283832757648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398950.P4526112283832757648

namespace A398950

/-- `∩[A069977(n+1)-2, A005117(n+1)]` -/
def P4526112283832757648.Spec : Prop :=
  ∀ n, (P4526112283832757648.a n : ℤ) = A398950 (n + 1)

end A398950

/-! ## A398950.P10567278755721722301

`∩[A056911(n+1)-4, A069977(n+1)]`
-/

namespace A398950.P10567278755721722301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398950.P10567278755721722301

namespace A398950

/-- `∩[A056911(n+1)-4, A069977(n+1)]` -/
def P10567278755721722301.Spec : Prop :=
  ∀ n, (P10567278755721722301.a n : ℤ) = A398950 (n + 1)

end A398950

/-! ## A398950.P7122882423077720818

`eq[A335341(n+4), A379971(n+1)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A398950

/-- `eq[A335341(n+4), A379971(n+1)]` -/
def P7122882423077720818.Spec : Prop :=
  ∀ n, (P7122882423077720818.a n : ℤ) = A398950 (n + 1)

theorem P7122882423077720818.correct : P7122882423077720818.Spec := by
  intro n
  simp only [A398950, Nat.add_sub_cancel]

end A398950

/-! ## A398950.P11479485184659918467

`eq[A089655(n+1), A344300(n+4)]`
-/

namespace A398950.P11479485184659918467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344300 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P11479485184659918467

namespace A398950

/-- `eq[A089655(n+1), A344300(n+4)]` -/
def P11479485184659918467.Spec : Prop :=
  ∀ n, (P11479485184659918467.a n : ℤ) = A398950 (n + 1)

end A398950

/-! ## A398950.P6281628605700819355

`eq[A087049(A005563(n+2)), A105570(n)]`
-/

namespace A398950.P6281628605700819355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A005563 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P6281628605700819355

namespace A398950

/-- `eq[A087049(A005563(n+2)), A105570(n)]` -/
def P6281628605700819355.Spec : Prop :=
  ∀ n, (P6281628605700819355.a n : ℤ) = A398950 (n + 1)

end A398950

/-! ## A398950.P4547763820419089758

`eq[A079115(n+1), A323239(A028347(n+2))]`
-/

namespace A398950.P4547763820419089758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A028347 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P4547763820419089758

namespace A398950

/-- `eq[A079115(n+1), A323239(A028347(n+2))]` -/
def P4547763820419089758.Spec : Prop :=
  ∀ n, (P4547763820419089758.a n : ℤ) = A398950 (n + 1)

end A398950

/-! ## A398950.P3943530207291322582

`eq[A323239(A028347(n+2)), A344756(n+2)]`
-/

namespace A398950.P3943530207291322582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A028347 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P3943530207291322582

namespace A398950

/-- `eq[A323239(A028347(n+2)), A344756(n+2)]` -/
def P3943530207291322582.Spec : Prop :=
  ∀ n, (P3943530207291322582.a n : ℤ) = A398950 (n + 1)

end A398950

/-!
# A398952: Smaller members in pairs of successive 5-rough numbers that are both squarefree numbers.

The programs for A398952, there is no canonical definition to state claims against.
-/

/-! ## A398952.P14550471203493605778

`A227157(n+3)-A083954(A151793(n+1))`
-/

namespace A398952.P14550471203493605778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227157 (n + 3) - A083954 (A151793 (n + 1)).toNat

end

end A398952.P14550471203493605778

/-! ## A398952.P2183208610641641322

`A227157(n+3)-A007426(A327347(3*n+1))`
-/

namespace A398952.P2183208610641641322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227157 (n + 3) - A007426 (A327347 (3 * n + 1)).toNat

end

end A398952.P2183208610641641322

/-! ## A398952.P5984703702634450077

`eq[A130543(A328592(n+1)), A304036(n)]-4`
-/

namespace A398952.P5984703702634450077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A328592 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 4

end

end A398952.P5984703702634450077

/-! ## A398952.P4989304118272275147

`A227157(n+3)-A083954(A111622(2*(n+1)))`
-/

namespace A398952.P4989304118272275147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227157 (n + 3) - A083954 (A111622 (2 * (n + 1))).toNat

end

end A398952.P4989304118272275147

/-! ## A398952.P7928965638351134918

`eq[A010126(n), A079724(n+1)]`
-/

namespace A398952.P7928965638351134918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398952.P7928965638351134918

/-!
# A398954: 7-rough squarefree numbers: squarefree numbers whose prime factors are all greater than 5.

The programs for A398954, the canonical program `A398954.P11143497039519897158` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398954 has offset 1).

The definition of A398954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398954.P4458577923629141006

`record[(n+1)/(2^val(n+1, 2)*5^val(n+1, 5))*A359377(n+1)]`
-/

namespace A398954.P4458577923629141006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ) * (A359377 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398954.P4458577923629141006

namespace A398954

/-- `record[(n+1)/(2^val(n+1, 2)*5^val(n+1, 5))*A359377(n+1)]` -/
def P4458577923629141006.Spec : Prop :=
  ∀ n, P4458577923629141006.a n = (A398954 (n + 1) : ℚ)

end A398954

/-! ## A398954.P11143497039519897158

`filter[A005117(n+1), A162289(#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A398954

/-- `filter[A005117(n+1), A162289(#)]` -/
def P11143497039519897158.Spec : Prop :=
  ∀ n, P11143497039519897158.a n = A398954 (n + 1)

theorem P11143497039519897158.correct : P11143497039519897158.Spec := by
  intro n
  simp only [A398954, Nat.add_sub_cancel]

end A398954

/-! ## A398954.P3292070058622861707

`filter[A007775(n+1), A008966(#)]`
-/

namespace A398954.P3292070058622861707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A398954.P3292070058622861707

namespace A398954

/-- `filter[A007775(n+1), A008966(#)]` -/
def P3292070058622861707.Spec : Prop :=
  ∀ n, P3292070058622861707.a n = A398954 (n + 1)

end A398954

/-! ## A398954.P2007880594400423044

`∩[A005117(n+1), A007775(n+1)]`
-/

namespace A398954.P2007880594400423044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P2007880594400423044

namespace A398954

/-- `∩[A005117(n+1), A007775(n+1)]` -/
def P2007880594400423044.Spec : Prop :=
  ∀ n, (P2007880594400423044.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P16173519617488786553

`filter[A056911(n+1), A162289(#)]`
-/

namespace A398954.P16173519617488786553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A398954.P16173519617488786553

namespace A398954

/-- `filter[A056911(n+1), A162289(#)]` -/
def P16173519617488786553.Spec : Prop :=
  ∀ n, P16173519617488786553.a n = A398954 (n + 1)

end A398954

/-! ## A398954.P8863977456059962644

`∩[A007775(n+1), A056911(n+1)]`
-/

namespace A398954.P8863977456059962644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P8863977456059962644

namespace A398954

/-- `∩[A007775(n+1), A056911(n+1)]` -/
def P8863977456059962644.Spec : Prop :=
  ∀ n, (P8863977456059962644.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P6842292374302377960

`∩[A007775(n+1), A091428(n+1)]`
-/

namespace A398954.P6842292374302377960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P6842292374302377960

namespace A398954

/-- `∩[A007775(n+1), A091428(n+1)]` -/
def P6842292374302377960.Spec : Prop :=
  ∀ n, (P6842292374302377960.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P2373368607074015631

`∩[A007775(n+1), A087246(n+1)]`
-/

namespace A398954.P2373368607074015631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P2373368607074015631

namespace A398954

/-- `∩[A007775(n+1), A087246(n+1)]` -/
def P2373368607074015631.Spec : Prop :=
  ∀ n, (P2373368607074015631.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P2135858662033227165

`filter[A064594(n+1), A162289(#)]`
-/

namespace A398954.P2135858662033227165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A398954.P2135858662033227165

namespace A398954

/-- `filter[A064594(n+1), A162289(#)]` -/
def P2135858662033227165.Spec : Prop :=
  ∀ n, P2135858662033227165.a n = A398954 (n + 1)

end A398954

/-! ## A398954.P16128259846655435470

`∩[A007775(n+1), A064594(n+1)]`
-/

namespace A398954.P16128259846655435470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P16128259846655435470

namespace A398954

/-- `∩[A007775(n+1), A064594(n+1)]` -/
def P16128259846655435470.Spec : Prop :=
  ∀ n, (P16128259846655435470.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P13929507858598079050

`∩[A007775(n+1), A078779(n+1)]`
-/

namespace A398954.P13929507858598079050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P13929507858598079050

namespace A398954

/-- `∩[A007775(n+1), A078779(n+1)]` -/
def P13929507858598079050.Spec : Prop :=
  ∀ n, (P13929507858598079050.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P6618955147366619484

`∩[A007775(n+1), A121684(n+1)]`
-/

namespace A398954.P6618955147366619484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P6618955147366619484

namespace A398954

/-- `∩[A007775(n+1), A121684(n+1)]` -/
def P6618955147366619484.Spec : Prop :=
  ∀ n, (P6618955147366619484.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P5054548683401140248

`∩[A007775(n+1), A121176(n+1)]`
-/

namespace A398954.P5054548683401140248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P5054548683401140248

namespace A398954

/-- `∩[A007775(n+1), A121176(n+1)]` -/
def P5054548683401140248.Spec : Prop :=
  ∀ n, (P5054548683401140248.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P7886833615787326191

`filter[A160186(n), A373154(#)]`
-/

namespace A398954.P7886833615787326191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A398954.P7886833615787326191

namespace A398954

/-- `filter[A160186(n), A373154(#)]` -/
def P7886833615787326191.Spec : Prop :=
  ∀ n, P7886833615787326191.a n = A398954 (n + 1)

end A398954

/-! ## A398954.P3670487106529013550

`∩[A007775(n+1), A122132(n+1)]`
-/

namespace A398954.P3670487106529013550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398954.P3670487106529013550

namespace A398954

/-- `∩[A007775(n+1), A122132(n+1)]` -/
def P3670487106529013550.Spec : Prop :=
  ∀ n, (P3670487106529013550.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P5048036772474747614

`eq[A070573(n), A284345(n)]`
-/

namespace A398954.P5048036772474747614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398954.P5048036772474747614

namespace A398954

/-- `eq[A070573(n), A284345(n)]` -/
def P5048036772474747614.Spec : Prop :=
  ∀ n, (P5048036772474747614.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P12859195245133362070

`eq[A220130(n), A323239(n)]`
-/

namespace A398954.P12859195245133362070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398954.P12859195245133362070

namespace A398954

/-- `eq[A220130(n), A323239(n)]` -/
def P12859195245133362070.Spec : Prop :=
  ∀ n, (P12859195245133362070.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P5950301463923111882

`eq[A220131(n), A323239(n)]`
-/

namespace A398954.P5950301463923111882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398954.P5950301463923111882

namespace A398954

/-- `eq[A220131(n), A323239(n)]` -/
def P5950301463923111882.Spec : Prop :=
  ∀ n, (P5950301463923111882.a n : ℤ) = A398954 (n + 1)

end A398954

/-! ## A398954.P5260659987594384412

`record[A160400(A007775(n+1))]`
-/

namespace A398954.P5260659987594384412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (A007775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398954.P5260659987594384412

namespace A398954

/-- `record[A160400(A007775(n+1))]` -/
def P5260659987594384412.Spec : Prop :=
  ∀ n, P5260659987594384412.a n = A398954 (n + 1)

end A398954

/-! ## A398954.P11449518969538945991

`filter[A000026(n+1), A162289(#)]`
-/

namespace A398954.P11449518969538945991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A398954.P11449518969538945991

namespace A398954

/-- `filter[A000026(n+1), A162289(#)]` -/
def P11449518969538945991.Spec : Prop :=
  ∀ n, P11449518969538945991.a n = A398954 (n + 1)

end A398954

/-!
# A398955: Numbers k such that k, k+1, and k+2 are all cubefree.

The programs for A398955, the canonical program `A398955.P9769639639659913676` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398955 has offset 1).

The definition of A398955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398955.P9769639639659913676

`∩[A340152(n+1)-1, A340152(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398955

/-- `∩[A340152(n+1)-1, A340152(n+1)]` -/
def P9769639639659913676.Spec : Prop :=
  ∀ n, (P9769639639659913676.a n : ℤ) = A398955 (n + 1)

theorem P9769639639659913676.correct : P9769639639659913676.Spec := by
  intro n
  simp only [A398955, Nat.add_sub_cancel]

end A398955

/-! ## A398955.P2540107370109066689

`∩[A023443(A340152(n+1)), A340152(n+1)]`
-/

namespace A398955.P2540107370109066689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A340152 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398955.P2540107370109066689

namespace A398955

/-- `∩[A023443(A340152(n+1)), A340152(n+1)]` -/
def P2540107370109066689.Spec : Prop :=
  ∀ n, (P2540107370109066689.a n : ℤ) = A398955 (n + 1)

end A398955

/-!
# A398956: Starts of runs of 26 consecutive odd numbers that are all cubefree.

The programs for A398956, there is no canonical definition to state claims against.
-/

/-! ## A398956.P17928390304685644414

`∩[A281546(n), A358196(n+1)]`
-/

namespace A398956.P17928390304685644414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398956.P17928390304685644414

/-!
# A398958: Number of one-sided polyforms with n cells in the Josehedron honeycomb.

The programs for A398958, there is no canonical definition to state claims against.
-/

/-! ## A398958.P3715982241549415122

`A028310(or(A002895(n), A130518(2*n)))`
-/

namespace A398958.P3715982241549415122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A002895 n) (A130518 (2 * n))).toNat

end

end A398958.P3715982241549415122

/-!
# A398959: Number of free polyforms with n cells in the Josehedron honeycomb.

The programs for A398959, there is no canonical definition to state claims against.
-/

/-! ## A398959.P15296826497555608043

`A249038(A398958(n+1)+n)`
-/

namespace A398959.P15296826497555608043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249038 (A398958 (n + 1) + (n : ℤ)).toNat

end

end A398959.P15296826497555608043

/-!
# A398960: Number of pairings {(b(1), c(1)), (b(2), c(2)), ..., (b(n), c(n))} of the first 2*n positive integers satisfying b(i) < c(i) and such that the 2*n numbers c(i)+b(i)-1 and c(i)-b(i) are all distinct.

The programs for A398960, there is no canonical definition to state claims against.
-/

/-! ## A398960.P14077868795303535455

`A260189(4*n)`
-/

namespace A398960.P14077868795303535455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260189 (4 * n)

end

end A398960.P14077868795303535455

/-! ## A398960.P14660972870655465654

`A033148(4*n)/2^n`
-/

namespace A398960.P14660972870655465654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (4 * n) : ℚ) / (2 ^ n : ℚ)

end

end A398960.P14660972870655465654

/-! ## A398960.P14856390365737017087

`A162978(A051801(n))%A392557(n+1)`
-/

namespace A398960.P14856390365737017087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162978 (A051801 n).toNat) (A392557 (n + 1))

end

end A398960.P14856390365737017087

/-!
# A398967: Number of Gauss diagrams of meander curves with 2n+1 crossings, counted up to rotation of the circle.

The programs for A398967, there is no canonical definition to state claims against.
-/

/-! ## A398967.P13648450470119035286

`∑[A194962(A002293(n))]`
-/

namespace A398967.P13648450470119035286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (A002293 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398967.P13648450470119035286

/-! ## A398967.P5626434864464052315

`row(∑[A111490(A321274(n+1))])`
-/

namespace A398967.P5626434864464052315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (A321274 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A398967.P5626434864464052315

/-!
# A398974: Number of 0's in the binary expansion of n^3.

The programs for A398974, the canonical program `A398974.P14447025700825235802` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398974 has offset 0).

The definition of A398974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398974.P14447025700825235802

`A023416(A000578(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398974

/-- `A023416(A000578(n))` -/
def P14447025700825235802.Spec : Prop :=
  ∀ n, P14447025700825235802.a n = A398974 n

theorem P14447025700825235802.correct : P14447025700825235802.Spec := by
  intro n
  simp only [A398974]

end A398974

/-! ## A398974.P9322259037112868128

`abs(A290251(n*n²)-1)`
-/

namespace A398974.P9322259037112868128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290251 (n * n ^ 2) - 1|

end

end A398974.P9322259037112868128

namespace A398974

/-- `abs(A290251(n*n²)-1)` -/
def P9322259037112868128.Spec : Prop :=
  ∀ n, P9322259037112868128.a n = A398974 n

end A398974

/-! ## A398974.P7176353652154496833

`A023416(n^3)`
-/

namespace A398974.P7176353652154496833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n ^ 3)

end

end A398974.P7176353652154496833

namespace A398974

/-- `A023416(n^3)` -/
def P7176353652154496833.Spec : Prop :=
  ∀ n, P7176353652154496833.a n = A398974 n

end A398974

/-! ## A398974.P15791579595617982909

`val(A176893(n^3), 2)`
-/

namespace A398974.P15791579595617982909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176893 (n ^ 3)).toNat 2

end

end A398974.P15791579595617982909

namespace A398974

/-- `val(A176893(n^3), 2)` -/
def P15791579595617982909.Spec : Prop :=
  ∀ n, (P15791579595617982909.a n : ℤ) = A398974 n

end A398974

/-! ## A398974.P7300418095675330469

`A023416(n*n²)%42`
-/

namespace A398974.P7300418095675330469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (n * n ^ 2)) 42

end

end A398974.P7300418095675330469

namespace A398974

/-- `A023416(n*n²)%42` -/
def P7300418095675330469.Spec : Prop :=
  ∀ n, P7300418095675330469.a n = A398974 n

end A398974

/-!
# A398976: Number of nonisomorphic rectangular g-dimonoids of order n.

The programs for A398976, there is no canonical definition to state claims against.
-/

/-! ## A398976.P10524806563719965809

`A359908(a(n-1))*n` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A398976.P10524806563719965809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A359908 (a (n - 1)).toNat * (n : ℤ)

end

end A398976.P10524806563719965809

/-!
# A398978: Expansion of e.g.f. 1/(1 - sin(x) - sin(x)^2).

The programs for A398978, there is no canonical definition to state claims against.
-/

/-! ## A398978.P17257449645035998678

`A004523(A111529(n)+A102726(n))`
-/

namespace A398978.P17257449645035998678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A111529 n + A102726 n).toNat

end

end A398978.P17257449645035998678

/-!
# A398979: Number of strict partitions of n such that if k is the number of parts then no part is divisible by k.

The programs for A398979, there is no canonical definition to state claims against.
-/

/-! ## A398979.P4580097281987261936

`A300228(A270929(3*(n+1))%A000040(n+1))`
-/

namespace A398979.P4580097281987261936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300228 (Int.tmod (A270929 (3 * (n + 1))) (A000040 (n + 1))).toNat

end

end A398979.P4580097281987261936

/-!
# A398981: a(n) is the number k such that 2*(k*n+v) = Sum_{d|n} (k*d+v), where k and v are coprime, not both are 0 and k*n+v>=0.

The programs for A398981, the canonical program `A398981.P1881830709133702135` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398981 has offset 1).

The definition of A398981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398981.P1881830709133702135

`(A000005(n+1)-2)/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398981

/-- `(A000005(n+1)-2)/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))` -/
def P1881830709133702135.Spec : Prop :=
  ∀ n, P1881830709133702135.a n = (A398981 (n + 1) : ℚ)

end A398981

/-! ## A398981.P240663228870330632

`A001222(n+1)-A079706(A134836(n+1))`
-/

namespace A398981.P240663228870330632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A079706 (A134836 (n + 1)).toNat

end

end A398981.P240663228870330632

namespace A398981

/-- `A001222(n+1)-A079706(A134836(n+1))` -/
def P240663228870330632.Spec : Prop :=
  ∀ n, P240663228870330632.a n = A398981 (n + 1)

end A398981

/-! ## A398981.P1289029790062911615

`∑{e}[A033999(A223104(n+1))+n, #]-1`
-/

namespace A398981.P1289029790062911615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A223104 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A398981.P1289029790062911615

namespace A398981

/-- `∑{e}[A033999(A223104(n+1))+n, #]-1` -/
def P1289029790062911615.Spec : Prop :=
  ∀ n, P1289029790062911615.a n = A398981 (n + 1)

end A398981

/-! ## A398981.P2654612489160741763

`∑{e}[n+1, #]-A381715(A008965(n+1))`
-/

namespace A398981.P2654612489160741763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A381715 (A008965 (n + 1)).toNat

end

end A398981.P2654612489160741763

namespace A398981

/-- `∑{e}[n+1, #]-A381715(A008965(n+1))` -/
def P2654612489160741763.Spec : Prop :=
  ∀ n, P2654612489160741763.a n = A398981 (n + 1)

end A398981

/-! ## A398981.P18218799209508161085

`A001222(n+1)-A010893(2*(n+1))!`
-/

namespace A398981.P18218799209508161085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (Nat.factorial (A010893 (2 * (n + 1) + 13)).toNat : ℤ)

end

end A398981.P18218799209508161085

namespace A398981

/-- `A001222(n+1)-A010893(2*(n+1))!` -/
def P18218799209508161085.Spec : Prop :=
  ∀ n, P18218799209508161085.a n = A398981 (n + 1)

end A398981

/-!
# A398982: a(n) is the number k such that 2*(u*n+k) = Sum_{d|n} (u*d+k), where u and k are coprime not both are 0, and u*n+k >= 0.

The programs for A398982, the canonical program `A398982.P10718508914280456224` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398982 has offset 1).

The definition of A398982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398982.P10718508914280456224

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398982

/-- `(2*(n+1)-A000203(n+1))/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))` -/
def P10718508914280456224.Spec : Prop :=
  ∀ n, P10718508914280456224.a n = (A398982 (n + 1) : ℚ)

end A398982

/-!
# A398983: Array read by ascending antidiagonals: A(n,k) = k*binomial((k+1)*n, n)/((k + 1)*n - 1), with k > 0.

The programs for A398983, there is no canonical definition to state claims against.
-/

/-! ## A398983.P11402800870534944167

`(col(n)+2)*A162382(n+1)`
-/

namespace A398983.P11402800870534944167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * A162382 (n + 1)

end

end A398983.P11402800870534944167

/-!
# A398984: Antidiagonal sums of the array A398983.

The programs for A398984, there is no canonical definition to state claims against.
-/

/-! ## A398984.P8528829034277125875

`A227590(1+2^n)+n`
-/

namespace A398984.P8528829034277125875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (1 + 2 ^ n) + (n : ℤ)

end

end A398984.P8528829034277125875

/-!
# A398985: a(n) = n*binomial(n*(n+1), n)/(2*(n^2 + n - 1)).

The programs for A398985, the canonical program `A398985.P578659765086379523` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398985 has offset 1).

The definition of A398985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398985.P578659765086379523

`(n+1)*C((n+1)*(n+2), n+1)/(2*((n+1)²+n+1-1))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398985

/-- `(n+1)*C((n+1)*(n+2), n+1)/(2*((n+1)²+n+1-1))` -/
def P578659765086379523.Spec : Prop :=
  ∀ n, P578659765086379523.a n = (A398985 (n + 1) : ℚ)

end A398985

/-! ## A398985.P8631411003108465716

`∑[n+1]*A182316(n)`
-/

namespace A398985.P8631411003108465716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A182316 n

end

end A398985.P8631411003108465716

namespace A398985

/-- `∑[n+1]*A182316(n)` -/
def P8631411003108465716.Spec : Prop :=
  ∀ n, P8631411003108465716.a n = A398985 (n + 1)

end A398985

/-!
# A398986: Antidiagonal sums of the binomial matrix of the factorial numbers.

The programs for A398986, there is no canonical definition to state claims against.
-/

/-! ## A398986.P9876996599351714569

`A191893(n²+A113774(n))+1`
-/

namespace A398986.P9876996599351714569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 ((n ^ 2 : ℤ) + A113774 n).toNat + 1

end

end A398986.P9876996599351714569

/-! ## A398986.P12656679534598953414

`A095773(A010844(n))-A007391(n+1)`
-/

namespace A398986.P12656679534598953414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A010844 n).toNat - A007391 (n + 1)

end

end A398986.P12656679534598953414

/-!
# A398989: The binomial matrix of the numbers of sets of ordered lists of an n-set (A000262). Square array read by ascending antidiagonals.

The programs for A398989, there is no canonical definition to state claims against.
-/

/-! ## A398989.P746074809424534084

`xor(A348648(A000225(n)), A398991(n))`
-/

namespace A398989.P746074809424534084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A348648 (A000225 n).toNat) (A398991 n)

end

end A398989.P746074809424534084

/-! ## A398989.P5119575041466481544

`A398991(n)-A124762(A285012(3*(n+1)))`
-/

namespace A398989.P5119575041466481544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398991 n - A124762 (A285012 (3 * (n + 1))).toNat

end

end A398989.P5119575041466481544

/-!
# A398993: The binomial matrix of the Bell numbers. Square array read by ascending antidiagonals.

The programs for A398993, there is no canonical definition to state claims against.
-/

/-! ## A398993.P4674620196454488278

`A399000(n)+A056170(A014551(n))`
-/

namespace A398993.P4674620196454488278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 n + A056170 (A014551 n).toNat

end

end A398993.P4674620196454488278

/-! ## A398993.P11142109478153540033

`A399000(n)+A070109(A165137(n))`
-/

namespace A398993.P11142109478153540033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 n + A070109 (A165137 n).toNat

end

end A398993.P11142109478153540033

/-! ## A398993.P9083328826573056668

`A399000(n)-A010815(A145127(n+1))`
-/

namespace A398993.P9083328826573056668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 n - A010815 (A145127 (n + 1)).toNat

end

end A398993.P9083328826573056668

/-! ## A398993.P13209966956507946112

`A399000(n)+A015227(A246547(2*(n+2)))`
-/

namespace A398993.P13209966956507946112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 n + A015227 (A246547 (2 * (n + 2))).toNat

end

end A398993.P13209966956507946112

/-! ## A398993.P10704416698310850850

`A399000(n)+A363854(A344592(n+2))`
-/

namespace A398993.P10704416698310850850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 n + A363854 (A344592 (n + 2)).toNat

end

end A398993.P10704416698310850850

/-!
# A398997: The binomial matrix of the number of involutions (A000085). Square array read by ascending antidiagonals.

The programs for A398997, there is no canonical definition to state claims against.
-/

/-! ## A398997.P6345531371194024424

`A110654(A399334(n)+A399000(n))`
-/

namespace A398997.P6345531371194024424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A399334 n + A399000 n).toNat

end

end A398997.P6345531371194024424

