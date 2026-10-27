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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A274500: The odd integers in the sequence appear in blocks and the successive sizes of these blocks are given by the sequence itself.

The programs for A274500, there is no canonical definition to state claims against.
-/

/-! ## A274500.P5699971337529628080

`A203554(n)+A022171(A283666(n+1))`
-/

namespace A274500.P5699971337529628080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203554 n + A022171 (A283666 (n + 1)).toNat

end

end A274500.P5699971337529628080

/-! ## A274500.P912309734544778732

`A203554(n)+A015070(n)!`
-/

namespace A274500.P912309734544778732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203554 n + (Nat.factorial (A015070 n).toNat : ℤ)

end

end A274500.P912309734544778732

/-! ## A274500.P3867306504965165860

`A203554(n)+A093411(2^n)`
-/

namespace A274500.P3867306504965165860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203554 n + A093411 (2 ^ n)

end

end A274500.P3867306504965165860

/-! ## A274500.P10195956476880908783

`(A203554(n)+1)%A122979(n+2)`
-/

namespace A274500.P10195956476880908783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203554 n + 1) (A122979 (n + 2))

end

end A274500.P10195956476880908783

/-! ## A274500.P14899395399523054451

`A203554(n)+A052409(A007283(n))`
-/

namespace A274500.P14899395399523054451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203554 n + A052409 (A007283 n).toNat

end

end A274500.P14899395399523054451

/-!
# A274501: a(n) = 25*binomial(n-1,6) + binomial(n-1,5).

The programs for A274501, the canonical program `A274501.P16695846723949124546` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274501 has offset 5).

The definition of A274501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*C(n+4, 6)+C(n+4, 5)` (program `A274501.P16695846723949124546`, by `A274501.P16695846723949124546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274501.P16695846723949124546

`25*C(n+4, 6)+C(n+4, 5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274501

/-- `25*C(n+4, 6)+C(n+4, 5)` -/
def P16695846723949124546.Spec : Prop :=
  ∀ n, (P16695846723949124546.a n : ℤ) = A274501 (n + 5)

theorem P16695846723949124546.correct : P16695846723949124546.Spec := by
  intro n
  simp only [A274501, Nat.add_sub_cancel]

end A274501

/-! ## A274501.P99218251193467606

`(n+4)*(n+3)*(n+2)*(n+1)*n*(25*(n+5)-144)/720`
-/

namespace A274501.P99218251193467606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 4) * (n + 3) * (n + 2) * (n + 1) * n : ℤ) * ((25 * (n + 5) : ℤ) - 144) : ℚ) / 720

end

end A274501.P99218251193467606

namespace A274501

/-- `(n+4)*(n+3)*(n+2)*(n+1)*n*(25*(n+5)-144)/720` -/
def P99218251193467606.Spec : Prop :=
  ∀ n, P99218251193467606.a n = (A274501 (n + 5) : ℚ)

theorem P99218251193467606.correct : P99218251193467606.Spec := by
  intro n
  simp only [A274501, Nat.add_sub_cancel, A274501.P99218251193467606.a, A274501.P16695846723949124546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A274501

/-! ## A274501.P11011128503039195483

`∑[∑[∑[A256647(n)]]]`
-/

namespace A274501.P11011128503039195483
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274501.P11011128503039195483

namespace A274501

/-- `∑[∑[∑[A256647(n)]]]` -/
def P11011128503039195483.Spec : Prop :=
  ∀ n, P11011128503039195483.a n = A274501 (n + 5)

end A274501

/-! ## A274501.P6002196377136542471

`∑[n*∑[∑[A147875(n)-1]]]`
-/

namespace A274501.P6002196377136542471
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274501.P6002196377136542471

namespace A274501

/-- `∑[n*∑[∑[A147875(n)-1]]]` -/
def P6002196377136542471.Spec : Prop :=
  ∀ n, P6002196377136542471.a n = A274501 (n + 5)

end A274501

/-! ## A274501.P1181922654065602221

`∑[n*∑[A162148(n)-(n+1)]]`
-/

namespace A274501.P1181922654065602221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274501.P1181922654065602221

namespace A274501

/-- `∑[n*∑[A162148(n)-(n+1)]]` -/
def P1181922654065602221.Spec : Prop :=
  ∀ n, P1181922654065602221.a n = A274501 (n + 5)

end A274501

/-! ## A274501.P12536876857405768892

`A293611(n)-A266732(n)`
-/

namespace A274501.P12536876857405768892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293611 n - A266732 n

end

end A274501.P12536876857405768892

namespace A274501

/-- `A293611(n)-A266732(n)` -/
def P12536876857405768892.Spec : Prop :=
  ∀ n, P12536876857405768892.a n = A274501 (n + 5)

end A274501

/-! ## A274501.P1144868653829593069

`∑[n*∑[∑[A326725(n+1)]]]`
-/

namespace A274501.P1144868653829593069
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274501.P1144868653829593069

namespace A274501

/-- `∑[n*∑[∑[A326725(n+1)]]]` -/
def P1144868653829593069.Spec : Prop :=
  ∀ n, P1144868653829593069.a n = A274501 (n + 5)

end A274501

/-!
# A274502: a(n) = 90*binomial(n-1,7) + 9*binomial(n-1,6).

The programs for A274502, the canonical program `A274502.P8684571268019988792` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274502 has offset 5).

The definition of A274502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `90*C(n+4, 7)+9*C(n+4, 6)` (program `A274502.P8684571268019988792`, by `A274502.P8684571268019988792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274502.P8684571268019988792

`90*C(n+4, 7)+9*C(n+4, 6)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274502

/-- `90*C(n+4, 7)+9*C(n+4, 6)` -/
def P8684571268019988792.Spec : Prop :=
  ∀ n, (P8684571268019988792.a n : ℤ) = A274502 (n + 5)

theorem P8684571268019988792.correct : P8684571268019988792.Spec := by
  intro n
  simp only [A274502, Nat.add_sub_cancel]

end A274502

/-! ## A274502.P17661440651955078149

`(n+4)*(n+3)*(n+2)*(n+1)*n*(n-1)*(10*(n+5)-63)/560`
-/

namespace A274502.P17661440651955078149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 4) * (n + 3) * (n + 2) * (n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((10 * (n + 5) : ℤ) - 63) : ℚ) / 560

end

end A274502.P17661440651955078149

namespace A274502

/-- `(n+4)*(n+3)*(n+2)*(n+1)*n*(n-1)*(10*(n+5)-63)/560` -/
def P17661440651955078149.Spec : Prop :=
  ∀ n, P17661440651955078149.a n = (A274502 (n + 5) : ℚ)

theorem P17661440651955078149.correct : P17661440651955078149.Spec := by
  intro n
  simp only [A274502, Nat.add_sub_cancel, A274502.P17661440651955078149.a, A274502.P8684571268019988792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A274502

/-!
# A274503: a(n) = 301*binomial(n-1,8)+52*binomial(n-1,7)+binomial(n-1,6).

The programs for A274503, the canonical program `A274503.P586187680615243057` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274503 has offset 5).

The definition of A274503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `301*C(n+4, 8)+52*C(n+4, 7)+C(n+4, 6)` (program `A274503.P586187680615243057`, by `A274503.P586187680615243057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274503.P586187680615243057

`301*C(n+4, 8)+52*C(n+4, 7)+C(n+4, 6)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274503

/-- `301*C(n+4, 8)+52*C(n+4, 7)+C(n+4, 6)` -/
def P586187680615243057.Spec : Prop :=
  ∀ n, (P586187680615243057.a n : ℤ) = A274503 (n + 5)

theorem P586187680615243057.correct : P586187680615243057.Spec := by
  intro n
  simp only [A274503, Nat.add_sub_cancel]

end A274503

/-!
# A274504: Primes with Kronecker symbol (p|14) != 1.

The programs for A274504, there is no canonical definition to state claims against.
-/

/-! ## A274504.P11958244547765923082

`∪[A153089(n+1), A191061(n+1)]`
-/

namespace A274504.P11958244547765923082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274504.P11958244547765923082

/-! ## A274504.P17076903422314839479

`p?[lt[A192006(n), 2]]`
-/

namespace A274504.P17076903422314839479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A274504.P17076903422314839479

/-! ## A274504.P16510592658774611459

`p?[n*A116416(A192006(n)+1)]`
-/

namespace A274504.P16510592658774611459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116416 (A192006 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274504.P16510592658774611459

/-! ## A274504.P5510311433905051742

`p?[n*A192006(A192006(n)+1)]`
-/

namespace A274504.P5510311433905051742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A192006 (A192006 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274504.P5510311433905051742

/-! ## A274504.P5133048020706377866

`eq[A003415(A192006(n))+1, A003415(n)]`
-/

namespace A274504.P5133048020706377866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A192006 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274504.P5133048020706377866

/-! ## A274504.P16939862492685487145

`eq[A005127(n), A005127(A192006(n)+2)]`
-/

namespace A274504.P16939862492685487145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A192006 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274504.P16939862492685487145

/-! ## A274504.P14967587586262534421

`eq[A005128(n), A005128(A192006(n)+2)]`
-/

namespace A274504.P14967587586262534421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A192006 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274504.P14967587586262534421

/-! ## A274504.P13797242095454235162

`eq[A322366(A192006(n)+2), A322366(n)]`
-/

namespace A274504.P13797242095454235162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 (A192006 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274504.P13797242095454235162

/-! ## A274504.P6852781961108956654

`eq[A007012(n), A007012(A192006(n)+2)]`
-/

namespace A274504.P6852781961108956654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 (A192006 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274504.P6852781961108956654

/-! ## A274504.P11901491768598191056

`eq[A053204(n), A053204(A192006(n)+2)]`
-/

namespace A274504.P11901491768598191056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A192006 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274504.P11901491768598191056

/-!
# A274505: Primes p such that 3*p-10 and 3*p+10 are prime numbers.

The programs for A274505, the canonical program `A274505.P2443972878676266277` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274505 has offset 1).

The definition of A274505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274505.P2443972878676266277

`∩[A023211(n+1), A230227(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A274505

/-- `∩[A023211(n+1), A230227(n+1)]` -/
def P2443972878676266277.Spec : Prop :=
  ∀ n, (P2443972878676266277.a n : ℤ) = A274505 (n + 1)

theorem P2443972878676266277.correct : P2443972878676266277.Spec := by
  intro n
  simp only [A274505, Nat.add_sub_cancel]

end A274505

/-! ## A274505.P11014283798862710487

`p?[floor(A087683(n+1)/3)]`
-/

namespace A274505.P11014283798862710487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087683 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274505.P11014283798862710487

namespace A274505

/-- `p?[floor(A087683(n+1)/3)]` -/
def P11014283798862710487.Spec : Prop :=
  ∀ n, P11014283798862710487.a n = A274505 (n + 1)

end A274505

/-! ## A274505.P16093287163357058294

`record[A006530(A087683(n+2))]`
-/

namespace A274505.P16093287163357058294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274505.P16093287163357058294

namespace A274505

/-- `record[A006530(A087683(n+2))]` -/
def P16093287163357058294.Spec : Prop :=
  ∀ n, P16093287163357058294.a n = A274505 (n + 1)

end A274505

/-! ## A274505.P15453244976233803043

`p?[A004396(A088770(n+1))]`
-/

namespace A274505.P15453244976233803043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A088770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274505.P15453244976233803043

namespace A274505

/-- `p?[A004396(A088770(n+1))]` -/
def P15453244976233803043.Spec : Prop :=
  ∀ n, P15453244976233803043.a n = A274505 (n + 1)

end A274505

/-! ## A274505.P3441818956726529136

`p?[A322982(A087683(n+1))]`
-/

namespace A274505.P3441818956726529136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A087683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274505.P3441818956726529136

namespace A274505

/-- `p?[A322982(A087683(n+1))]` -/
def P3441818956726529136.Spec : Prop :=
  ∀ n, P3441818956726529136.a n = A274505 (n + 1)

end A274505

/-! ## A274505.P1575335380060845042

`p?[A008620(A087683(n+1)-2)]`
-/

namespace A274505.P1575335380060845042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A087683 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274505.P1575335380060845042

namespace A274505

/-- `p?[A008620(A087683(n+1)-2)]` -/
def P1575335380060845042.Spec : Prop :=
  ∀ n, P1575335380060845042.a n = A274505 (n + 1)

end A274505

/-! ## A274505.P13298911587306453836

`p?[A032742(A087683(A000027(n+1)))]`
-/

namespace A274505.P13298911587306453836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A087683 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274505.P13298911587306453836

namespace A274505

/-- `p?[A032742(A087683(A000027(n+1)))]` -/
def P13298911587306453836.Spec : Prop :=
  ∀ n, P13298911587306453836.a n = A274505 (n + 1)

end A274505

/-!
# A274506: Primes one less than the sum over a pair of prime numbers that differ by 8.

The programs for A274506, there is no canonical definition to state claims against.
-/

/-! ## A274506.P14357901491203504041

`p?[2*A087680(n+1)-1]`
-/

namespace A274506.P14357901491203504041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087680 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274506.P14357901491203504041

/-! ## A274506.P5742280291569635914

`p?[4*A088764(n+1)+1]`
-/

namespace A274506.P5742280291569635914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088764 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274506.P5742280291569635914

/-! ## A274506.P1330981559718370310

`p?[2*A092402(n+1)-9]`
-/

namespace A274506.P1330981559718370310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092402 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274506.P1330981559718370310

/-! ## A274506.P5282126855958934196

`p?[2*(A023202(n+1)+3)+1]`
-/

namespace A274506.P5282126855958934196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023202 (n + 1) + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274506.P5282126855958934196

/-! ## A274506.P3651149657952005893

`record[A090368(A087680(n+1))]`
-/

namespace A274506.P3651149657952005893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A087680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274506.P3651149657952005893

/-! ## A274506.P13613731070492126831

`p?[A020742(A023202(n+1))]`
-/

namespace A274506.P13613731070492126831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A023202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274506.P13613731070492126831

/-! ## A274506.P3104952970723882667

`record[A020639(2*A087680(n+1)-1)]`
-/

namespace A274506.P3104952970723882667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A087680 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274506.P3104952970723882667

/-! ## A274506.P16998644538174554411

`record[A006530(8*A088764(n+1)+2)]`
-/

namespace A274506.P16998644538174554411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * A088764 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274506.P16998644538174554411

/-! ## A274506.P17667606684835610531

`record[A020639(lcm(2, A087680(n+1))-1)]`
-/

namespace A274506.P17667606684835610531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm 2 (A087680 (n + 1)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274506.P17667606684835610531

/-! ## A274506.P10175477448270145307

`record[A006530(2*(A023202(n+1)+3)+1)]`
-/

namespace A274506.P10175477448270145307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (A023202 (n + 1) + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274506.P10175477448270145307

/-!
# A274507: Primes one more than the sum over a pair of prime numbers that differ by 8.

The programs for A274507, there is no canonical definition to state claims against.
-/

/-! ## A274507.P8932015108758520426

`p?[2*A087680(n+1)+1]`
-/

namespace A274507.P8932015108758520426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087680 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274507.P8932015108758520426

/-! ## A274507.P17926711764376060807

`p?[4*A088764(n+1)+3]`
-/

namespace A274507.P17926711764376060807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088764 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274507.P17926711764376060807

/-! ## A274507.P13254409930071403894

`p?[2*A092402(n+1)-7]`
-/

namespace A274507.P13254409930071403894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092402 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274507.P13254409930071403894

/-! ## A274507.P8269020305784552893

`p?[2*(A023202(n+1)+3)+3]`
-/

namespace A274507.P8269020305784552893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023202 (n + 1) + 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274507.P8269020305784552893

/-! ## A274507.P10129959696840892254

`p?[A020742(A023202(n+1)+1)]`
-/

namespace A274507.P10129959696840892254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A023202 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274507.P10129959696840892254

/-!
# A274512: a(n) is the only number m such that 10^(2^m) + 1 is divisible by A072982(n+1).

The programs for A274512, there is no canonical definition to state claims against.
-/

/-! ## A274512.P8165017120257944384

`A197224(n+2)-1`
-/

namespace A274512.P8165017120257944384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197224 (n + 2) - 1

end

end A274512.P8165017120257944384

/-! ## A274512.P1588478281586957595

`∑[ceil(n/(n+1))*Δ[A197224(n+1)]]`
-/

namespace A274512.P1588478281586957595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274512.P1588478281586957595

/-! ## A274512.P3265816932840148075

`A023443(A197224(n+2))`
-/

namespace A274512.P3265816932840148075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A197224 (n + 2)).toNat

end

end A274512.P3265816932840148075

/-! ## A274512.P13357896817102931182

`A289207(A197224(n+2)+1)`
-/

namespace A274512.P13357896817102931182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A197224 (n + 2) + 1).toNat

end

end A274512.P13357896817102931182

/-! ## A274512.P14751815469275187404

`A065423(2*A197224(n+2))`
-/

namespace A274512.P14751815469275187404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A197224 (n + 2)).toNat

end

end A274512.P14751815469275187404

/-!
# A274515: a(n) is the number of times that the value of ternary n when read as hyperbinary occurs in the set of hyperbinary representations.

The programs for A274515, the canonical program `A274515.P13101901733059160930` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274515 has offset 0).

The definition of A274515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274515.P13101901733059160930

`A002487(A065361(n)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A274515

/-- `A002487(A065361(n)+1)` -/
def P13101901733059160930.Spec : Prop :=
  ∀ n, P13101901733059160930.a n = A274515 n

theorem P13101901733059160930.correct : P13101901733059160930.Spec := by
  intro n
  simp only [A274515]

end A274515

/-! ## A274515.P15226830234701488982

`A070990(4*A065361(n))`
-/

namespace A274515.P15226830234701488982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (4 * A065361 n).toNat

end

end A274515.P15226830234701488982

namespace A274515

/-- `A070990(4*A065361(n))` -/
def P15226830234701488982.Spec : Prop :=
  ∀ n, P15226830234701488982.a n = A274515 n

end A274515

/-! ## A274515.P17858317617625116833

`A295515(2*(A065361(n)+1))`
-/

namespace A274515.P17858317617625116833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * (A065361 n + 1)).toNat

end

end A274515.P17858317617625116833

namespace A274515

/-- `A295515(2*(A065361(n)+1))` -/
def P17858317617625116833.Spec : Prop :=
  ∀ n, P17858317617625116833.a n = A274515 n

end A274515

/-! ## A274515.P9025089504299933226

`A295515(A065361(n)+A065361(n)+2)`
-/

namespace A274515.P9025089504299933226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A065361 n + (A065361 n + 2)).toNat

end

end A274515.P9025089504299933226

namespace A274515

/-- `A295515(A065361(n)+A065361(n)+2)` -/
def P9025089504299933226.Spec : Prop :=
  ∀ n, P9025089504299933226.a n = A274515 n

end A274515

/-! ## A274515.P14875249780481287905

`A002487(A065361(A016789(n)))`
-/

namespace A274515.P14875249780481287905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A065361 (A016789 n).toNat).toNat

end

end A274515.P14875249780481287905

namespace A274515

/-- `A002487(A065361(A016789(n)))` -/
def P14875249780481287905.Spec : Prop :=
  ∀ n, P14875249780481287905.a n = A274515 n

end A274515

/-! ## A274515.P4321159781619612066

`A295515(A065361(A017221(n)))`
-/

namespace A274515.P4321159781619612066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A065361 (A017221 n).toNat).toNat

end

end A274515.P4321159781619612066

namespace A274515

/-- `A295515(A065361(A017221(n)))` -/
def P4321159781619612066.Spec : Prop :=
  ∀ n, P4321159781619612066.a n = A274515 n

end A274515

/-! ## A274515.P14055046264775162211

`A275992(A006288(n))`
-/

namespace A274515.P14055046264775162211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275992 (A006288 n).toNat

end

end A274515.P14055046264775162211

namespace A274515

/-- `A275992(A006288(n))` -/
def P14055046264775162211.Spec : Prop :=
  ∀ n, P14055046264775162211.a n = A274515 n

end A274515

/-!
# A274517: Number T(n,k) of integer partitions of n with exactly k distinct primes.

The programs for A274517, there is no canonical definition to state claims against.
-/

/-! ## A274517.P13521193934565375174

`gcd(A334483(n+1), A334492(A000295(n)))`
-/

namespace A274517.P13521193934565375174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334483 (n + 1)) (A334492 (A000295 n).toNat)

end

end A274517.P13521193934565375174

/-!
# A274520: a(n) = ((1 + sqrt(7))^n - (1 - sqrt(7))^n)/sqrt(7).

The programs for A274520, the canonical program `A274520.P9716390320391314937` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274520 has offset 0).

The definition of A274520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274520.P9716390320391314937

`2*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274520

/-- `2*a(n-1)+6*a(n-2)` -/
def P9716390320391314937.Spec : Prop :=
  ∀ n, (P9716390320391314937.a n : ℤ) = A274520 n

theorem P9716390320391314937.correct : P9716390320391314937.Spec := by
  intro n
  simp only [A274520]

end A274520

/-! ## A274520.P1800442228413957404

`2*A083099(n)`
-/

namespace A274520.P1800442228413957404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083099 n

end

end A274520.P1800442228413957404

namespace A274520

/-- `2*A083099(n)` -/
def P1800442228413957404.Spec : Prop :=
  ∀ n, P1800442228413957404.a n = A274520 n

end A274520

/-! ## A274520.P14061212777650532614

`ogf(2x/(1-2x-6x^2))`
-/

namespace A274520.P14061212777650532614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -6] n

end

end A274520.P14061212777650532614

namespace A274520

/-- `ogf(2x/(1-2x-6x^2))` -/
def P14061212777650532614.Spec : Prop :=
  ∀ n, P14061212777650532614.a n = A274520 n

end A274520

/-! ## A274520.P11103550113342019262

`((1+sqrt(7))^n-(1-sqrt(7))^n)/sqrt(7)`
-/

namespace A274520.P11103550113342019262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (7 : ℝ)) ^ n - (1 - Real.sqrt (7 : ℝ)) ^ n) / Real.sqrt (7 : ℝ)

end

end A274520.P11103550113342019262

namespace A274520

/-- `((1+sqrt(7))^n-(1-sqrt(7))^n)/sqrt(7)` -/
def P11103550113342019262.Spec : Prop :=
  ∀ n, P11103550113342019262.a n = (A274520 n : ℝ)

theorem P11103550113342019262.correct : P11103550113342019262.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A274520, Nat.add_sub_cancel, A274520.P11103550113342019262.a, A274520.P9716390320391314937.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A274520, Nat.add_sub_cancel, A274520.P11103550113342019262.a, A274520.P9716390320391314937.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A274520

/-! ## A274520.P1549102423069264520

`2*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=2`
-/

namespace A274520.P1549102423069264520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A274520.P1549102423069264520

namespace A274520

/-- `2*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P1549102423069264520.Spec : Prop :=
  ∀ n, P1549102423069264520.a n = A274520 n

end A274520

/-! ## A274520.P15092561628680716602

`∏[gcd(2, n)]*A002536(n)`
-/

namespace A274520.P15092561628680716602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002536 n

end

end A274520.P15092561628680716602

namespace A274520

/-- `∏[gcd(2, n)]*A002536(n)` -/
def P15092561628680716602.Spec : Prop :=
  ∀ n, P15092561628680716602.a n = A274520 n

end A274520

/-! ## A274520.P9773584279794957562

`A384711(n)-A083098(n)`
-/

namespace A274520.P9773584279794957562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 n - A083098 n

end

end A274520.P9773584279794957562

namespace A274520

/-- `A384711(n)-A083098(n)` -/
def P9773584279794957562.Spec : Prop :=
  ∀ n, P9773584279794957562.a n = A274520 n

end A274520

/-! ## A274520.P3638826819971853907

`A060546(n)*A174988(n)`
-/

namespace A274520.P3638826819971853907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A174988 n

end

end A274520.P3638826819971853907

namespace A274520

/-- `A060546(n)*A174988(n)` -/
def P3638826819971853907.Spec : Prop :=
  ∀ n, P3638826819971853907.a n = A274520 n

end A274520

/-! ## A274520.P3223840724314417748

`A002536(n)*A016116(n+2)`
-/

namespace A274520.P3223840724314417748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A016116 (n + 2)

end

end A274520.P3223840724314417748

namespace A274520

/-- `A002536(n)*A016116(n+2)` -/
def P3223840724314417748.Spec : Prop :=
  ∀ n, P3223840724314417748.a n = A274520 n

end A274520

/-! ## A274520.P13774143947449131095

`A002536(n)*A131572(n+2)`
-/

namespace A274520.P13774143947449131095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A131572 (n + 2)

end

end A274520.P13774143947449131095

namespace A274520

/-- `A002536(n)*A131572(n+2)` -/
def P13774143947449131095.Spec : Prop :=
  ∀ n, P13774143947449131095.a n = A274520 n

end A274520

/-! ## A274520.P4840361412674214623

`2*A002536(n)*A016116(n)`
-/

namespace A274520.P4840361412674214623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002536 n * A016116 n)

end

end A274520.P4840361412674214623

namespace A274520

/-- `2*A002536(n)*A016116(n)` -/
def P4840361412674214623.Spec : Prop :=
  ∀ n, P4840361412674214623.a n = A274520 n

end A274520

/-! ## A274520.P13936476519659333066

`2*A002536(n)*A131572(n)`
-/

namespace A274520.P13936476519659333066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002536 n * A131572 n)

end

end A274520.P13936476519659333066

namespace A274520

/-- `2*A002536(n)*A131572(n)` -/
def P13936476519659333066.Spec : Prop :=
  ∀ n, P13936476519659333066.a n = A274520 n

end A274520

/-! ## A274520.P13501139705322518898

`A083099(round(sqrt(n²+n)))+A083099(n)`
-/

namespace A274520.P13501139705322518898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + n : ℝ))).toNat + A083099 n

end

end A274520.P13501139705322518898

namespace A274520

/-- `A083099(round(sqrt(n²+n)))+A083099(n)` -/
def P13501139705322518898.Spec : Prop :=
  ∀ n, P13501139705322518898.a n = A274520 n

end A274520

/-! ## A274520.P7569163326468035098

`A000079(A004526(n)+1)*A002536(n)`
-/

namespace A274520.P7569163326468035098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n + 1).toNat * A002536 n

end

end A274520.P7569163326468035098

namespace A274520

/-- `A000079(A004526(n)+1)*A002536(n)` -/
def P7569163326468035098.Spec : Prop :=
  ∀ n, P7569163326468035098.a n = A274520 n

end A274520

/-! ## A274520.P11684507469122692483

`A083099(n+1)+A083099(n)-A083098(n)`
-/

namespace A274520.P11684507469122692483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) + (A083099 n - A083098 n)

end

end A274520.P11684507469122692483

namespace A274520

/-- `A083099(n+1)+A083099(n)-A083098(n)` -/
def P11684507469122692483.Spec : Prop :=
  ∀ n, P11684507469122692483.a n = A274520 n

end A274520

/-! ## A274520.P16367931656277224064

`A083099(n)+A384711(n)-A083099(n+1)`
-/

namespace A274520.P16367931656277224064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 n + (A384711 n - A083099 (n + 1))

end

end A274520.P16367931656277224064

namespace A274520

/-- `A083099(n)+A384711(n)-A083099(n+1)` -/
def P16367931656277224064.Spec : Prop :=
  ∀ n, P16367931656277224064.a n = A274520 n

end A274520

/-! ## A274520.P5297378407976003492

`A083099(n+1)+A083099(n+1)-A127226(n)`
-/

namespace A274520.P5297378407976003492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) + (A083099 (n + 1) - A127226 n)

end

end A274520.P5297378407976003492

namespace A274520

/-- `A083099(n+1)+A083099(n+1)-A127226(n)` -/
def P5297378407976003492.Spec : Prop :=
  ∀ n, P5297378407976003492.a n = A274520 n

end A274520

/-! ## A274520.P2120438839955066493

`A307469(n)-A384711(n)`
-/

namespace A274520.P2120438839955066493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307469 n - A384711 n

end

end A274520.P2120438839955066493

namespace A274520

/-- `A307469(n)-A384711(n)` -/
def P2120438839955066493.Spec : Prop :=
  ∀ n, P2120438839955066493.a n = A274520 n

end A274520

/-! ## A274520.P10985992234275045778

`∑[A127226(n)]-A127226(n)`
-/

namespace A274520.P10985992234275045778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127226 n

end

end A274520.P10985992234275045778

namespace A274520

/-- `∑[A127226(n)]-A127226(n)` -/
def P10985992234275045778.Spec : Prop :=
  ∀ n, P10985992234275045778.a n = A274520 n

end A274520

/-! ## A274520.P4263334030704749650

`A384712(n)-A083099(n+1)`
-/

namespace A274520.P4263334030704749650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384712 n - A083099 (n + 1)

end

end A274520.P4263334030704749650

namespace A274520

/-- `A384712(n)-A083099(n+1)` -/
def P4263334030704749650.Spec : Prop :=
  ∀ n, P4263334030704749650.a n = A274520 n

end A274520

/-!
# A274521: Number of odd partitions in the multiset of intersections of the set of partitions of n with itself; also number of distinct partitions in that multiset.

The programs for A274521, there is no canonical definition to state claims against.
-/

/-! ## A274521.P858357589017426810

`A081386(A008619(n)*A022812(n))`
-/

namespace A274521.P858357589017426810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A008619 n * A022812 n).toNat

end

end A274521.P858357589017426810

/-! ## A274521.P11661893419018221191

`A081386(A022812(n)*A157271(n+1))`
-/

namespace A274521.P11661893419018221191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A022812 n * A157271 (n + 1)).toNat

end

end A274521.P11661893419018221191

/-! ## A274521.P16156500611880058981

`A179852(A115324(n))`
-/

namespace A274521.P16156500611880058981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179852 (A115324 n).toNat

end

end A274521.P16156500611880058981

/-!
# A274523: Number of integer partitions of n whose Durfee square has sides of even size.

The programs for A274523, there is no canonical definition to state claims against.
-/

/-! ## A274523.P4883975069076422832

`A006918(A014081(A239678(n)))`
-/

namespace A274523.P4883975069076422832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A014081 (A239678 n).toNat).toNat

end

end A274523.P4883975069076422832

/-! ## A274523.P3229704844738307149

`A330640(A259481(A000217(n)))-n`
-/

namespace A274523.P3229704844738307149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 (A259481 (A000217 n).toNat).toNat - (n : ℤ)

end

end A274523.P3229704844738307149

/-! ## A274523.P6833410644461185310

`A239241(lt[A239239(n), A240142(n)])`
-/

namespace A274523.P6833410644461185310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240142 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274523.P6833410644461185310

/-! ## A274523.P18003667757387945659

`A330640(n)-A118759(A262545(n+1))`
-/

namespace A274523.P18003667757387945659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A118759 (A262545 (n + 1)).toNat

end

end A274523.P18003667757387945659

/-! ## A274523.P7943042192305662838

`A239241(2*(n+1))+A063524(A018001(n))`
-/

namespace A274523.P7943042192305662838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 (2 * (n + 1)) + A063524 (A018001 n).toNat

end

end A274523.P7943042192305662838

/-!
# A274524: Numbers n such that both ror(n) and rol(n) are squares, where ror(x)=A038572(x) is x rotated one binary place to the right, rol(x)=A006257(x) is x rotated one binary place to the left.

The programs for A274524, there is no canonical definition to state claims against.
-/

/-! ## A274524.P11458830789495468226

`A243109(∑[A009289(n)]²)`
-/

namespace A274524.P11458830789495468226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A274524.P11458830789495468226

/-! ## A274524.P14439964101456199550

`record[A060789(A091977(n)²)]`
-/

namespace A274524.P14439964101456199550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A091977 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274524.P14439964101456199550

/-! ## A274524.P359522421235073125

`record[A078898(A247023(n)²)]`
-/

namespace A274524.P359522421235073125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A247023 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274524.P359522421235073125

/-! ## A274524.P5883689152029079882

`record[A252463(A247023(n)²)]`
-/

namespace A274524.P5883689152029079882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A247023 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274524.P5883689152029079882

/-!
# A274525: Prime numbers p such that p - 2, p^2 - p - 1, p^2 - p + 1 are prime numbers.

The programs for A274525, there is no canonical definition to state claims against.
-/

/-! ## A274525.P6824245711930513658

`∩[A001359(n+2)+2, A286319(n+2)]`
-/

namespace A274525.P6824245711930513658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P6824245711930513658

/-! ## A274525.P14289949542667061920

`∩[A006512(n+1), A120364(n+1)]`
-/

namespace A274525.P14289949542667061920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P14289949542667061920

/-! ## A274525.P6375520075952178000

`∩[A120364(n+1), A172057(n+1)]`
-/

namespace A274525.P6375520075952178000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P6375520075952178000

/-! ## A274525.P17542586092072766025

`∩[A172057(n+1), A286319(n+1)]`
-/

namespace A274525.P17542586092072766025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P17542586092072766025

/-! ## A274525.P4429069501104974881

`∩[A065508(n+1), A153414(n+1)]`
-/

namespace A274525.P4429069501104974881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P4429069501104974881

/-! ## A274525.P4188807915714990448

`∩[A120364(n+1), A153414(n+1)]`
-/

namespace A274525.P4188807915714990448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P4188807915714990448

/-! ## A274525.P6067852521518172134

`∩[A006512(n+1), A131530(n+1)]`
-/

namespace A274525.P6067852521518172134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P6067852521518172134

/-! ## A274525.P15074317426800753362

`∩[A120364(n+1), A171688(n+1)]`
-/

namespace A274525.P15074317426800753362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274525.P15074317426800753362

/-!
# A274526: a(n) = ((1 + sqrt(11))^n - (1 - sqrt(11))^n)/sqrt(11).

The programs for A274526, the canonical program `A274526.P7205059878583090779` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274526 has offset 0).

The definition of A274526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((1+sqrt(11))^n-(1-sqrt(11))^n)/sqrt(11)` (program `A274526.P14576297382819462129`, by `A274526.P14576297382819462129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274526.P7205059878583090779

`2*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274526

/-- `2*a(n-1)+10*a(n-2)` -/
def P7205059878583090779.Spec : Prop :=
  ∀ n, (P7205059878583090779.a n : ℤ) = A274526 n

theorem P7205059878583090779.correct : P7205059878583090779.Spec := by
  intro n
  simp only [A274526]

end A274526

/-! ## A274526.P14576297382819462129

`((1+sqrt(11))^n-(1-sqrt(11))^n)/sqrt(11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274526.P14576297382819462129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (11 : ℝ)) ^ n - (1 - Real.sqrt (11 : ℝ)) ^ n) / Real.sqrt (11 : ℝ)

end

end A274526.P14576297382819462129

namespace A274526

/-- `((1+sqrt(11))^n-(1-sqrt(11))^n)/sqrt(11)` -/
def P14576297382819462129.Spec : Prop :=
  ∀ n, P14576297382819462129.a n = (A274526 n : ℝ)

theorem P14576297382819462129.correct : P14576297382819462129.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A274526, Nat.add_sub_cancel, A274526.P14576297382819462129.a, A274526.P7205059878583090779.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A274526, Nat.add_sub_cancel, A274526.P14576297382819462129.a, A274526.P7205059878583090779.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A274526

/-! ## A274526.P11151585235811221550

`ogf(2x/(1-2x-10x^2))`
-/

namespace A274526.P11151585235811221550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -10] n

end

end A274526.P11151585235811221550

namespace A274526

/-- `ogf(2x/(1-2x-10x^2))` -/
def P11151585235811221550.Spec : Prop :=
  ∀ n, P11151585235811221550.a n = A274526 n

end A274526

/-! ## A274526.P2090057115410060915

`∑[A127261(n)]-A127261(n)`
-/

namespace A274526.P2090057115410060915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127261 n

end

end A274526.P2090057115410060915

namespace A274526

/-- `∑[A127261(n)]-A127261(n)` -/
def P2090057115410060915.Spec : Prop :=
  ∀ n, P2090057115410060915.a n = A274526 n

end A274526

/-! ## A274526.P15553687515144486196

`2*A083102(n)-A127261(n)`
-/

namespace A274526.P15553687515144486196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083102 n - A127261 n

end

end A274526.P15553687515144486196

namespace A274526

/-- `2*A083102(n)-A127261(n)` -/
def P15553687515144486196.Spec : Prop :=
  ∀ n, P15553687515144486196.a n = A274526 n

end A274526

/-! ## A274526.P14849106906437504491

`2*(A083102(n)-A133294(n))`
-/

namespace A274526.P14849106906437504491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083102 n - A133294 n)

end

end A274526.P14849106906437504491

namespace A274526

/-- `2*(A083102(n)-A133294(n))` -/
def P14849106906437504491.Spec : Prop :=
  ∀ n, P14849106906437504491.a n = A274526 n

end A274526

/-! ## A274526.P7002816726610883459

`Δ[A127261(n)/11]`
-/

namespace A274526.P7002816726610883459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127261 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274526.P7002816726610883459

namespace A274526

/-- `Δ[A127261(n)/11]` -/
def P7002816726610883459.Spec : Prop :=
  ∀ n, P7002816726610883459.a n = (A274526 n : ℚ)

end A274526

/-!
# A274528: Square array read by antidiagonals upwards: T(n,k) = A269526(n+1,k+1) - 1, n>=0, k>=0.

The programs for A274528, there is no canonical definition to state claims against.
-/

/-! ## A274528.P4007273370117258798

`A269526(n+1)-1`
-/

namespace A274528.P4007273370117258798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (n + 1) - 1

end

end A274528.P4007273370117258798

/-! ## A274528.P6355730983799159388

`A023443(A269526(n+1))`
-/

namespace A274528.P6355730983799159388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A269526 (n + 1)).toNat

end

end A274528.P6355730983799159388

/-! ## A274528.P1969111625542277144

`A249738(2*A269526(n+1))`
-/

namespace A274528.P1969111625542277144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A269526 (n + 1)).toNat

end

end A274528.P1969111625542277144

/-! ## A274528.P10415232929721209337

`A288530(C(A269526(n+1), 2))`
-/

namespace A274528.P10415232929721209337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288530 (Nat.choose (A269526 (n + 1)).toNat 2)

end

end A274528.P10415232929721209337

/-! ## A274528.P12992528214414289799

`(A269526(n+1)+n)%A000027(n+1)`
-/

namespace A274528.P12992528214414289799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (n + 1) + (n : ℤ)) (A000027 (n + 1))

end

end A274528.P12992528214414289799

/-! ## A274528.P16757789655127684657

`(A269526(n+1)+A134824(n))%(n+1)`
-/

namespace A274528.P16757789655127684657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (n + 1) + A134824 n) (n + 1 : ℤ)

end

end A274528.P16757789655127684657

/-! ## A274528.P2529188283116648884

`(A269526(n+1)+A004442(A004442(n)))%(n+1)`
-/

namespace A274528.P2529188283116648884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (n + 1) + A004442 (A004442 n).toNat) (n + 1 : ℤ)

end

end A274528.P2529188283116648884

/-! ## A274528.P14116571361134829428

`abs(A269526(n+1)+A008683(A338018(n+2)))`
-/

namespace A274528.P14116571361134829428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269526 (n + 1) + A008683 (A338018 (n + 2)).toNat|

end

end A274528.P14116571361134829428

/-! ## A274528.P12157453945950583772

`A070198(n)%A269526(n+1)`
-/

namespace A274528.P12157453945950583772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A269526 (n + 1))

end

end A274528.P12157453945950583772

/-! ## A274528.P2909848636740115905

`A079782(n+1)%A269526(n+1)`
-/

namespace A274528.P2909848636740115905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A269526 (n + 1))

end

end A274528.P2909848636740115905

/-! ## A274528.P10160500379800187546

`A083685(n+1)%A269526(n+1)`
-/

namespace A274528.P10160500379800187546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A269526 (n + 1))

end

end A274528.P10160500379800187546

/-! ## A274528.P4411543054920709855

`A121934(n+1)%A269526(n+1)`
-/

namespace A274528.P4411543054920709855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A269526 (n + 1))

end

end A274528.P4411543054920709855

/-! ## A274528.P5049308864985622013

`A030494(n+1)%A269526(n+1)`
-/

namespace A274528.P5049308864985622013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A269526 (n + 1))

end

end A274528.P5049308864985622013

/-! ## A274528.P6033430539194471972

`A072828(n+1)%A269526(n+1)`
-/

namespace A274528.P6033430539194471972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A269526 (n + 1))

end

end A274528.P6033430539194471972

/-!
# A274529: Total number of distinct numbers in the first n antidiagonals of infinite Sudoku-type array A269526.

The programs for A274529, there is no canonical definition to state claims against.
-/

/-! ## A274529.P16872613481949363325

`∑[A341685(record[A356152(2*(n+1))])]`
-/

namespace A274529.P16872613481949363325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356152 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341685 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274529.P16872613481949363325

/-! ## A274529.P1964712637856259706

`A076837(A193092(n))+ceil(3*n/2)`
-/

namespace A274529.P1964712637856259706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076837 (A193092 n).toNat + ⌈3 * ((n : ℚ) / 2)⌉

end

end A274529.P1964712637856259706

/-! ## A274529.P7020566292380207795

`A074840(n+1)+A000523(A001037(n+4))`
-/

namespace A274529.P7020566292380207795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (n + 1) + A000523 (A001037 (n + 4)).toNat

end

end A274529.P7020566292380207795

/-! ## A274529.P7679191900755979565

`A162351(∑[dr(A133546(n+1))])`
-/

namespace A274529.P7679191900755979565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A133546 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274529.P7679191900755979565

/-!
# A274530: Sum of the n-th antidiagonal of infinite Sudoku-type array A269526.

The programs for A274530, there is no canonical definition to state claims against.
-/

/-! ## A274530.P15101883788450258055

`A274652(n)+n+1`
-/

namespace A274530.P15101883788450258055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274652 n + (n + 1 : ℤ)

end

end A274530.P15101883788450258055

/-! ## A274530.P11191613257921873889

`1-(A001489(n)-A274652(n))`
-/

namespace A274530.P11191613257921873889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A274652 n)

end

end A274530.P11191613257921873889

/-! ## A274530.P1519131655618364229

`A020705(n)-(3-A274652(n))`
-/

namespace A274530.P1519131655618364229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - (3 - A274652 n)

end

end A274530.P1519131655618364229

/-! ## A274530.P11220379228180857181

`A005408(n)-(n-A274652(n))`
-/

namespace A274530.P11220379228180857181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A274652 n)

end

end A274530.P11220379228180857181

/-! ## A274530.P17346265212411982841

`n-(A008683(A062584(n))-A274652(n))`
-/

namespace A274530.P17346265212411982841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A008683 (A062584 n).toNat - A274652 n)

end

end A274530.P17346265212411982841

/-!
# A274531: Irregular triangle read by rows: T(n,k) = sum of the elements of the k-th row of the absolute difference table of the divisors of n.

The programs for A274531, there is no canonical definition to state claims against.
-/

/-! ## A274531.P10923520662165505093

`lcm(A151810(n)!, A273261(n+1))`
-/

namespace A274531.P10923520662165505093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A151810 n).toNat : ℤ) (A273261 (n + 1))

end

end A274531.P10923520662165505093

/-! ## A274531.P6142284150699827497

`abs(A273261(n+1))%A066539(A113988(n))`
-/

namespace A274531.P6142284150699827497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A273261 (n + 1)| (A066539 (A113988 n).toNat)

end

end A274531.P6142284150699827497

/-! ## A274531.P14383477033403078874

`A010872(A214497(n+1))+abs(A273261(n+1))`
-/

namespace A274531.P14383477033403078874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A214497 (n + 1)).toNat + |A273261 (n + 1)|

end

end A274531.P14383477033403078874

/-! ## A274531.P18418528154006101032

`A000038(A263008(n+1))+abs(A273261(n+1))`
-/

namespace A274531.P18418528154006101032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A263008 (n + 1)).toNat + |A273261 (n + 1)|

end

end A274531.P18418528154006101032

/-!
# A274532: Irregular triangle read by rows: T(n,k) = sum of the elements of the k-th antidiagonal of the absolute difference table of the divisors of n.

The programs for A274532, there is no canonical definition to state claims against.
-/

/-! ## A274532.P9788250758020828185

`A273262(n+1)+A004524(A010894(n))`
-/

namespace A274532.P9788250758020828185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273262 (n + 1) + A004524 (A010894 (n + 21)).toNat

end

end A274532.P9788250758020828185

/-!
# A274534: Irregular triangle read by rows: T(n,k) = total number of k's in the first n antidiagonals of infinite Sudoku-type array A269526.

The programs for A274534, there is no canonical definition to state claims against.
-/

/-! ## A274534.P6351242991553088659

`A064372(A316154(n+1)+A178252(n+2))`
-/

namespace A274534.P6351242991553088659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A316154 (n + 1) + A178252 (n + 2)).toNat

end

end A274534.P6351242991553088659

/-!
# A274535: a(n) = 5*sigma(n).

The programs for A274535, the canonical program `A274535.P4233430454223343819` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274535 has offset 1).

The definition of A274535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000203(n+1)` (program `A274535.P4233430454223343819`, by `A274535.P4233430454223343819.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274535.P4233430454223343819

`5*A000203(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274535

/-- `5*A000203(n+1)` -/
def P4233430454223343819.Spec : Prop :=
  ∀ n, P4233430454223343819.a n = A274535 (n + 1)

theorem P4233430454223343819.correct : P4233430454223343819.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel]

end A274535

/-! ## A274535.P6193631984972191874

`A000203(n+1)+A239050(n+1)`
-/

namespace A274535.P6193631984972191874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A239050 (n + 1)

end

end A274535.P6193631984972191874

namespace A274535

/-- `A000203(n+1)+A239050(n+1)` -/
def P6193631984972191874.Spec : Prop :=
  ∀ n, P6193631984972191874.a n = A274535 (n + 1)

theorem P6193631984972191874.correct : P6193631984972191874.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P6193631984972191874.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P17034205374104452888

`A074400(n+1)+A272027(n+1)`
-/

namespace A274535.P17034205374104452888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A272027 (n + 1)

end

end A274535.P17034205374104452888

namespace A274535

/-- `A074400(n+1)+A272027(n+1)` -/
def P17034205374104452888.Spec : Prop :=
  ∀ n, P17034205374104452888.a n = A274535 (n + 1)

theorem P17034205374104452888.correct : P17034205374104452888.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P17034205374104452888.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P15134367117545646003

`5*∑{d}[n+1, #]`
-/

namespace A274535.P15134367117545646003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A274535.P15134367117545646003

namespace A274535

/-- `5*∑{d}[n+1, #]` -/
def P15134367117545646003.Spec : Prop :=
  ∀ n, (P15134367117545646003.a n : ℤ) = A274535 (n + 1)

theorem P15134367117545646003.correct : P15134367117545646003.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P15134367117545646003.f1, A274535.P15134367117545646003.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P921741508828148732

`∑{d}[xor(n, -1), 5*#]`
-/

namespace A274535.P921741508828148732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 5 * d

end

end A274535.P921741508828148732

namespace A274535

/-- `∑{d}[xor(n, -1), 5*#]` -/
def P921741508828148732.Spec : Prop :=
  ∀ n, (P921741508828148732.a n : ℤ) = A274535 (n + 1)

end A274535

/-! ## A274535.P3916776968880585724

`5/∑{d}[n+1, #]^-1`
-/

namespace A274535.P3916776968880585724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A274535.P3916776968880585724

namespace A274535

/-- `5/∑{d}[n+1, #]^-1` -/
def P3916776968880585724.Spec : Prop :=
  ∀ n, P3916776968880585724.a n = (A274535 (n + 1) : ℚ)

end A274535

/-! ## A274535.P14034245460600107813

`∑{d}[2*n-(n-1), 5*#]`
-/

namespace A274535.P14034245460600107813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 5 * d

end

end A274535.P14034245460600107813

namespace A274535

/-- `∑{d}[2*n-(n-1), 5*#]` -/
def P14034245460600107813.Spec : Prop :=
  ∀ n, (P14034245460600107813.a n : ℤ) = A274535 (n + 1)

end A274535

/-! ## A274535.P16242768772309129520

`Δ[5*A160664(n)]`
-/

namespace A274535.P16242768772309129520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274535.P16242768772309129520

namespace A274535

/-- `Δ[5*A160664(n)]` -/
def P16242768772309129520.Spec : Prop :=
  ∀ n, P16242768772309129520.a n = A274535 (n + 1)

end A274535

/-! ## A274535.P12529024027418844199

`A326122(n+1)/2`
-/

namespace A274535.P12529024027418844199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326122 (n + 1) : ℚ) / 2

end

end A274535.P12529024027418844199

namespace A274535

/-- `A326122(n+1)/2` -/
def P12529024027418844199.Spec : Prop :=
  ∀ n, P12529024027418844199.a n = (A274535 (n + 1) : ℚ)

theorem P12529024027418844199.correct : P12529024027418844199.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P12529024027418844199.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326122, A326122.P5183926465066856116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P7141570519282396669

`5*sqrt(A072861(n+1))`
-/

namespace A274535.P7141570519282396669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A274535.P7141570519282396669

namespace A274535

/-- `5*sqrt(A072861(n+1))` -/
def P7141570519282396669.Spec : Prop :=
  ∀ n, P7141570519282396669.a n = (A274535 (n + 1) : ℝ)

end A274535

/-! ## A274535.P9282387808749403411

`5*(A088580(n+1)-1)`
-/

namespace A274535.P9282387808749403411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A088580 (n + 1) - 1)

end

end A274535.P9282387808749403411

namespace A274535

/-- `5*(A088580(n+1)-1)` -/
def P9282387808749403411.Spec : Prop :=
  ∀ n, P9282387808749403411.a n = A274535 (n + 1)

theorem P9282387808749403411.correct : P9282387808749403411.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P9282387808749403411.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P8244284842172492867

`5*A245092(2*n+1)`
-/

namespace A274535.P8244284842172492867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A245092 (2 * n + 1)

end

end A274535.P8244284842172492867

namespace A274535

/-- `5*A245092(2*n+1)` -/
def P8244284842172492867.Spec : Prop :=
  ∀ n, P8244284842172492867.a n = A274535 (n + 1)

end A274535

/-! ## A274535.P16577659357544142106

`5/2*A074400(n+1)`
-/

namespace A274535.P16577659357544142106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A274535.P16577659357544142106

namespace A274535

/-- `5/2*A074400(n+1)` -/
def P16577659357544142106.Spec : Prop :=
  ∀ n, P16577659357544142106.a n = (A274535 (n + 1) : ℚ)

theorem P16577659357544142106.correct : P16577659357544142106.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P16577659357544142106.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P8396256100172794901

`5/3*A272027(n+1)`
-/

namespace A274535.P8396256100172794901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A272027 (n + 1) : ℚ)

end

end A274535.P8396256100172794901

namespace A274535

/-- `5/3*A272027(n+1)` -/
def P8396256100172794901.Spec : Prop :=
  ∀ n, P8396256100172794901.a n = (A274535 (n + 1) : ℚ)

theorem P8396256100172794901.correct : P8396256100172794901.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P8396256100172794901.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P3142043959265891603

`5/4*A239050(n+1)`
-/

namespace A274535.P3142043959265891603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A239050 (n + 1) : ℚ)

end

end A274535.P3142043959265891603

namespace A274535

/-- `5/4*A239050(n+1)` -/
def P3142043959265891603.Spec : Prop :=
  ∀ n, P3142043959265891603.a n = (A274535 (n + 1) : ℚ)

theorem P3142043959265891603.correct : P3142043959265891603.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P3142043959265891603.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P5243273352163856459

`5*(A001065(n+1)+n+1)`
-/

namespace A274535.P5243273352163856459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A001065 (n + 1) + (n + 1 : ℤ))

end

end A274535.P5243273352163856459

namespace A274535

/-- `5*(A001065(n+1)+n+1)` -/
def P5243273352163856459.Spec : Prop :=
  ∀ n, P5243273352163856459.a n = A274535 (n + 1)

theorem P5243273352163856459.correct : P5243273352163856459.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P5243273352163856459.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P11767447971035515125

`5*(A155085(n+1)-(n+1))`
-/

namespace A274535.P11767447971035515125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A155085 (n + 1) - (n + 1 : ℤ))

end

end A274535.P11767447971035515125

namespace A274535

/-- `5*(A155085(n+1)-(n+1))` -/
def P11767447971035515125.Spec : Prop :=
  ∀ n, P11767447971035515125.a n = A274535 (n + 1)

theorem P11767447971035515125.correct : P11767447971035515125.Spec := by
  intro n
  simp only [A274535, Nat.add_sub_cancel, A274535.P11767447971035515125.a, A274535.P4233430454223343819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274535

/-! ## A274535.P9401397127420583382

`5/(n+1)*A064987(n+1)`
-/

namespace A274535.P9401397127420583382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (n + 1 : ℚ) * (A064987 (n + 1) : ℚ)

end

end A274535.P9401397127420583382

namespace A274535

/-- `5/(n+1)*A064987(n+1)` -/
def P9401397127420583382.Spec : Prop :=
  ∀ n, P9401397127420583382.a n = (A274535 (n + 1) : ℚ)

end A274535

/-! ## A274535.P11538260425999480063

`lcm(5, 5*A000203(2*n-(n-1)))`
-/

namespace A274535.P11538260425999480063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (5 * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A274535.P11538260425999480063

namespace A274535

/-- `lcm(5, 5*A000203(2*n-(n-1)))` -/
def P11538260425999480063.Spec : Prop :=
  ∀ n, (P11538260425999480063.a n : ℤ) = A274535 (n + 1)

end A274535

/-! ## A274535.P10277070830202357469

`A076835(n+1)%A350051(n)`
-/

namespace A274535.P10277070830202357469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076835 (n + 1)) (A350051 n)

end

end A274535.P10277070830202357469

namespace A274535

/-- `A076835(n+1)%A350051(n)` -/
def P10277070830202357469.Spec : Prop :=
  ∀ n, P10277070830202357469.a n = A274535 (n + 1)

end A274535

/-!
# A274536: a(n) = 6 * sigma(n).

The programs for A274536, the canonical program `A274536.P12250643141026633019` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274536 has offset 1).

The definition of A274536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*A000203(n+1)` (program `A274536.P12250643141026633019`, by `A274536.P12250643141026633019.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274536.P15978769108737800431

`2*A272027(n+1)`
-/

namespace A274536.P15978769108737800431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272027 (n + 1)

end

end A274536.P15978769108737800431

namespace A274536

/-- `2*A272027(n+1)` -/
def P15978769108737800431.Spec : Prop :=
  ∀ n, P15978769108737800431.a n = A274536 (n + 1)

theorem P15978769108737800431.correct : P15978769108737800431.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P15978769108737800431.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P10198598394008493460

`3*A074400(n+1)`
-/

namespace A274536.P10198598394008493460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074400 (n + 1)

end

end A274536.P10198598394008493460

namespace A274536

/-- `3*A074400(n+1)` -/
def P10198598394008493460.Spec : Prop :=
  ∀ n, P10198598394008493460.a n = A274536 (n + 1)

theorem P10198598394008493460.correct : P10198598394008493460.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P10198598394008493460.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P12250643141026633019

`6*A000203(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274536

/-- `6*A000203(n+1)` -/
def P12250643141026633019.Spec : Prop :=
  ∀ n, P12250643141026633019.a n = A274536 (n + 1)

theorem P12250643141026633019.correct : P12250643141026633019.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel]

end A274536

/-! ## A274536.P17536796531683928223

`A000203(n+1)+A274535(n+1)`
-/

namespace A274536.P17536796531683928223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A274535 (n + 1)

end

end A274536.P17536796531683928223

namespace A274536

/-- `A000203(n+1)+A274535(n+1)` -/
def P17536796531683928223.Spec : Prop :=
  ∀ n, P17536796531683928223.a n = A274536 (n + 1)

theorem P17536796531683928223.correct : P17536796531683928223.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P17536796531683928223.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274535, A274535.P4233430454223343819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P12133117682837473698

`A074400(n+1)+A239050(n+1)`
-/

namespace A274536.P12133117682837473698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A239050 (n + 1)

end

end A274536.P12133117682837473698

namespace A274536

/-- `A074400(n+1)+A239050(n+1)` -/
def P12133117682837473698.Spec : Prop :=
  ∀ n, P12133117682837473698.a n = A274536 (n + 1)

theorem P12133117682837473698.correct : P12133117682837473698.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P12133117682837473698.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P15681986153588254264

`6*∑{d}[n+1, #]`
-/

namespace A274536.P15681986153588254264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A274536.P15681986153588254264

namespace A274536

/-- `6*∑{d}[n+1, #]` -/
def P15681986153588254264.Spec : Prop :=
  ∀ n, (P15681986153588254264.a n : ℤ) = A274536 (n + 1)

theorem P15681986153588254264.correct : P15681986153588254264.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P15681986153588254264.f1, A274536.P15681986153588254264.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P9370600867275251743

`∑{d}[2*n-(n-1), 6*#]`
-/

namespace A274536.P9370600867275251743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 6 * d

end

end A274536.P9370600867275251743

namespace A274536

/-- `∑{d}[2*n-(n-1), 6*#]` -/
def P9370600867275251743.Spec : Prop :=
  ∀ n, (P9370600867275251743.a n : ℤ) = A274536 (n + 1)

end A274536

/-! ## A274536.P14632280729272602990

`Δ[6*A160664(n)]`
-/

namespace A274536.P14632280729272602990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274536.P14632280729272602990

namespace A274536

/-- `Δ[6*A160664(n)]` -/
def P14632280729272602990.Spec : Prop :=
  ∀ n, P14632280729272602990.a n = A274536 (n + 1)

end A274536

/-! ## A274536.P5044752329896297639

`3*(A002659(n+1)+1)`
-/

namespace A274536.P5044752329896297639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002659 (n + 1) + 1)

end

end A274536.P5044752329896297639

namespace A274536

/-- `3*(A002659(n+1)+1)` -/
def P5044752329896297639.Spec : Prop :=
  ∀ n, P5044752329896297639.a n = A274536 (n + 1)

theorem P5044752329896297639.correct : P5044752329896297639.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P5044752329896297639.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P15617763913230167296

`3*A326136(2*(n+1))`
-/

namespace A274536.P15617763913230167296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A326136 (2 * (n + 1))

end

end A274536.P15617763913230167296

namespace A274536

/-- `3*A326136(2*(n+1))` -/
def P15617763913230167296.Spec : Prop :=
  ∀ n, P15617763913230167296.a n = A274536 (n + 1)

end A274536

/-! ## A274536.P5862116117059551150

`3/2*A239050(n+1)`
-/

namespace A274536.P5862116117059551150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A239050 (n + 1) : ℚ)

end

end A274536.P5862116117059551150

namespace A274536

/-- `3/2*A239050(n+1)` -/
def P5862116117059551150.Spec : Prop :=
  ∀ n, P5862116117059551150.a n = (A274536 (n + 1) : ℚ)

theorem P5862116117059551150.correct : P5862116117059551150.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P5862116117059551150.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P11006379626162439988

`2/3*A325299(n+1)`
-/

namespace A274536.P11006379626162439988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A325299 (n + 1) : ℚ)

end

end A274536.P11006379626162439988

namespace A274536

/-- `2/3*A325299(n+1)` -/
def P11006379626162439988.Spec : Prop :=
  ∀ n, P11006379626162439988.a n = (A274536 (n + 1) : ℚ)

theorem P11006379626162439988.correct : P11006379626162439988.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P11006379626162439988.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A325299, A325299.P10354057562905532224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P10967107210988537289

`6*A245092(2*n+1)`
-/

namespace A274536.P10967107210988537289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A245092 (2 * n + 1)

end

end A274536.P10967107210988537289

namespace A274536

/-- `6*A245092(2*n+1)` -/
def P10967107210988537289.Spec : Prop :=
  ∀ n, P10967107210988537289.a n = A274536 (n + 1)

end A274536

/-! ## A274536.P13250104517162939381

`3/4*A319528(n+1)`
-/

namespace A274536.P13250104517162939381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A319528 (n + 1) : ℚ)

end

end A274536.P13250104517162939381

namespace A274536

/-- `3/4*A319528(n+1)` -/
def P13250104517162939381.Spec : Prop :=
  ∀ n, P13250104517162939381.a n = (A274536 (n + 1) : ℚ)

theorem P13250104517162939381.correct : P13250104517162939381.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P13250104517162939381.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A319528, A319528.P5610714732727847470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P13459353143058199374

`3/5*A326122(n+1)`
-/

namespace A274536.P13459353143058199374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A326122 (n + 1) : ℚ)

end

end A274536.P13459353143058199374

namespace A274536

/-- `3/5*A326122(n+1)` -/
def P13459353143058199374.Spec : Prop :=
  ∀ n, P13459353143058199374.a n = (A274536 (n + 1) : ℚ)

theorem P13459353143058199374.correct : P13459353143058199374.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P13459353143058199374.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326122, A326122.P5183926465066856116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P5234539988026385160

`6*(A001065(n+1)+1+n)`
-/

namespace A274536.P5234539988026385160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A001065 (n + 1) + 1 + (n : ℤ))

end

end A274536.P5234539988026385160

namespace A274536

/-- `6*(A001065(n+1)+1+n)` -/
def P5234539988026385160.Spec : Prop :=
  ∀ n, P5234539988026385160.a n = A274536 (n + 1)

theorem P5234539988026385160.correct : P5234539988026385160.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P5234539988026385160.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P1656494035066765667

`A076835(n+1)/(4*(n+1))`
-/

namespace A274536.P1656494035066765667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076835 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A274536.P1656494035066765667

namespace A274536

/-- `A076835(n+1)/(4*(n+1))` -/
def P1656494035066765667.Spec : Prop :=
  ∀ n, P1656494035066765667.a n = (A274536 (n + 1) : ℚ)

theorem P1656494035066765667.correct : P1656494035066765667.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P1656494035066765667.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A076835, A076835.P15410372118314724071.a, A064987, A064987.P14181610018234257040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P6603464064752570543

`6*(A155085(n+1)-(n+1))`
-/

namespace A274536.P6603464064752570543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A155085 (n + 1) - (n + 1 : ℤ))

end

end A274536.P6603464064752570543

namespace A274536

/-- `6*(A155085(n+1)-(n+1))` -/
def P6603464064752570543.Spec : Prop :=
  ∀ n, P6603464064752570543.a n = A274536 (n + 1)

theorem P6603464064752570543.correct : P6603464064752570543.Spec := by
  intro n
  simp only [A274536, Nat.add_sub_cancel, A274536.P6603464064752570543.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274536

/-! ## A274536.P5052630228781122805

`6*A064987(n+1)/(n+1)`
-/

namespace A274536.P5052630228781122805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A274536.P5052630228781122805

namespace A274536

/-- `6*A064987(n+1)/(n+1)` -/
def P5052630228781122805.Spec : Prop :=
  ∀ n, P5052630228781122805.a n = (A274536 (n + 1) : ℚ)

end A274536

/-! ## A274536.P17365981815929221690

`a(n-1)+6*A053222(n)` with `a(0)=6`
-/

namespace A274536.P17365981815929221690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 6 * A053222 n

end

end A274536.P17365981815929221690

namespace A274536

/-- `a(n-1)+6*A053222(n)` -/
def P17365981815929221690.Spec : Prop :=
  ∀ n, P17365981815929221690.a n = A274536 (n + 1)

theorem P17365981815929221690.correct : P17365981815929221690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A274536, Nat.add_sub_cancel, A274536.P17365981815929221690.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053222, A053222.P10935068220858784370.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A274536, Nat.add_sub_cancel, A274536.P17365981815929221690.a, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053222, A053222.P10935068220858784370.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A274536

/-!
# A274537: Number T(n,k) of set partitions of [n] into k blocks such that each element is contained in a block whose index parity coincides with the parity of the element; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A274537, there is no canonical definition to state claims against.
-/

/-! ## A274537.P3253360723284374421

`A001878(3*A265373(n+1))`
-/

namespace A274537.P3253360723284374421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (3 * A265373 (n + 1)).toNat

end

end A274537.P3253360723284374421

/-! ## A274537.P14759308728510766106

`A102669(9*A265373(n+1))`
-/

namespace A274537.P14759308728510766106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (9 * A265373 (n + 1)).toNat

end

end A274537.P14759308728510766106

/-! ## A274537.P1392840429673191002

`A001878(lcm(3, A265373(n+1)))`
-/

namespace A274537.P1392840429673191002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (Int.lcm 3 (A265373 (n + 1)))

end

end A274537.P1392840429673191002

/-! ## A274537.P12869058806982197655

`A102675(28*A265373(n+1))`
-/

namespace A274537.P12869058806982197655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (28 * A265373 (n + 1)).toNat

end

end A274537.P12869058806982197655

/-! ## A274537.P2509127227100667830

`A007895(A320606(n+1))`
-/

namespace A274537.P2509127227100667830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A320606 (n + 1)).toNat

end

end A274537.P2509127227100667830

/-!
# A274538: Number of set partitions of [n] such that each element is contained in a block whose index parity coincides with the parity of the element.

The programs for A274538, there is no canonical definition to state claims against.
-/

/-! ## A274538.P15599329740386347490

`A274835(∑[n+3])`
-/

namespace A274538.P15599329740386347490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274538.P15599329740386347490

/-! ## A274538.P2914782391685260086

`A274835(A027379(n+1))+and(2, char[1])`
-/

namespace A274538.P2914782391685260086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A027379 (n + 1)).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A274538.P2914782391685260086

/-! ## A274538.P7131610744553951113

`gcd(A263013(n), A274835(A027379(n+1)))`
-/

namespace A274538.P7131610744553951113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263013 n) (A274835 (A027379 (n + 1)).toNat)

end

end A274538.P7131610744553951113

/-! ## A274538.P11801999097741566394

`A274835(A027379(n+1))+A000007(n+1)`
-/

namespace A274538.P11801999097741566394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A274538.P11801999097741566394

/-! ## A274538.P9055676897373395417

`A274835(A027379(n+1))^A014963(A002378(n+1))`
-/

namespace A274538.P9055676897373395417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274835 (A027379 (n + 1)).toNat : ℚ) ^ (A014963 (A002378 (n + 1)).toNat : ℤ)

end

end A274538.P9055676897373395417

/-!
# A274539: E.g.f.: exp(sum(bell(n)*z^n/n, n=1..infinity)).

The programs for A274539, there is no canonical definition to state claims against.
-/

/-! ## A274539.P167806310089029709

`A128280(A110501(n+1)+1)`
-/

namespace A274539.P167806310089029709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A110501 (n + 1) + 1).toNat

end

end A274539.P167806310089029709

/-! ## A274539.P9009056221801079169

`A055265(A110501(n+1)+1)-1`
-/

namespace A274539.P9009056221801079169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A110501 (n + 1) + 1).toNat - 1

end

end A274539.P9009056221801079169

/-!
# A274544: Values of k such that 2*k-1 and 5*k-1 are both perfect squares.

The programs for A274544, there is no canonical definition to state claims against.
-/

/-! ## A274544.P8041604218148053542

`ceil(A221874(n+1)²/2)`
-/

namespace A274544.P8041604218148053542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221874 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A274544.P8041604218148053542

/-! ## A274544.P8929287879791011312

`ceil((2*A129556(n+1)+1)²/2)`
-/

namespace A274544.P8929287879791011312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * A129556 (n + 1) + 1) ^ 2 : ℚ) / 2⌉

end

end A274544.P8929287879791011312

/-! ## A274544.P13549621031873390356

`ceil((1-2*A254332(n+1))²/2)`
-/

namespace A274544.P13549621031873390356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - 2 * A254332 (n + 1)) ^ 2 : ℚ) / 2⌉

end

end A274544.P13549621031873390356

/-! ## A274544.P14157321485963246893

`ceil(A031150(A047346(n+1))²/2)`
-/

namespace A274544.P14157321485963246893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031150 (A047346 (n + 1)).toNat ^ 2 : ℚ) / 2⌉

end

end A274544.P14157321485963246893

/-! ## A274544.P2003661321573955182

`ceil(A295334(A047241(n+1))²/2)`
-/

namespace A274544.P2003661321573955182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295334 (A047241 (n + 1)).toNat ^ 2 : ℚ) / 2⌉

end

end A274544.P2003661321573955182

/-! ## A274544.P2818641616836489714

`A129556(n+1)²+A254332(n+1)²`
-/

namespace A274544.P2818641616836489714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129556 (n + 1) ^ 2 + A254332 (n + 1) ^ 2

end

end A274544.P2818641616836489714

/-! ## A274544.P9195298460443100231

`A221874(n+1)+2*A129556(n+1)²`
-/

namespace A274544.P9195298460443100231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221874 (n + 1) + 2 * A129556 (n + 1) ^ 2

end

end A274544.P9195298460443100231

/-! ## A274544.P17906989046718616148

`2*A254332(n+1)²-A221874(n+1)`
-/

namespace A274544.P17906989046718616148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254332 (n + 1) ^ 2 - A221874 (n + 1)

end

end A274544.P17906989046718616148

/-!
# A274545: Values of k such that 5*k-1 and 10*k-1 are both perfect squares.

The programs for A274545, there is no canonical definition to state claims against.
-/

/-! ## A274545.P7620468784169388925

`A076218(A008619(3*n)+2)/5`
-/

namespace A274545.P7620468784169388925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076218 (A008619 (3 * n) + 2).toNat : ℚ) / 5

end

end A274545.P7620468784169388925

/-! ## A274545.P10098094429380528820

`A195538(A047241(n+1))/5`
-/

namespace A274545.P10098094429380528820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195538 (A047241 (n + 1)).toNat : ℚ) / 5

end

end A274545.P10098094429380528820

/-! ## A274545.P15519446267847162001

`5^A008683(A005384(n+1))*A195538(A047241(n+1))`
-/

namespace A274545.P15519446267847162001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A008683 (A005384 (n + 1)).toNat : ℤ) * (A195538 (A047241 (n + 1)).toNat : ℚ)

end

end A274545.P15519446267847162001

/-!
# A274546: Numbers m such that 5*m is squarefree.

The programs for A274546, the canonical program `A274546.P10366663639167439236` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274546 has offset 1).

The definition of A274546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274546.P3354928151169330820

`eq[1, abs(A008683(5*(n+1)))]+1`
-/

namespace A274546.P3354928151169330820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (5 * (n + 1))|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274546.P3354928151169330820

namespace A274546

/-- `eq[1, abs(A008683(5*(n+1)))]+1` -/
def P3354928151169330820.Spec : Prop :=
  ∀ n, (P3354928151169330820.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P10366663639167439236

`filter[A005117(n+1), A011558(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A274546

/-- `filter[A005117(n+1), A011558(#)]` -/
def P10366663639167439236.Spec : Prop :=
  ∀ n, P10366663639167439236.a n = A274546 (n + 1)

theorem P10366663639167439236.correct : P10366663639167439236.Spec := by
  intro n
  simp only [A274546, Nat.add_sub_cancel]

end A274546

/-! ## A274546.P8539166319844728790

`eq[A079998(n), A105570(n)]`
-/

namespace A274546.P8539166319844728790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P8539166319844728790

namespace A274546

/-- `eq[A079998(n), A105570(n)]` -/
def P8539166319844728790.Spec : Prop :=
  ∀ n, (P8539166319844728790.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P16498505192784140520

`filter[A193304(n+1), A011558(#)]`
-/

namespace A274546.P16498505192784140520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A274546.P16498505192784140520

namespace A274546

/-- `filter[A193304(n+1), A011558(#)]` -/
def P16498505192784140520.Spec : Prop :=
  ∀ n, P16498505192784140520.a n = A274546 (n + 1)

end A274546

/-! ## A274546.P16720752534865708304

`eq[0, A087049(5*n)]`
-/

namespace A274546.P16720752534865708304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274546.P16720752534865708304

namespace A274546

/-- `eq[0, A087049(5*n)]` -/
def P16720752534865708304.Spec : Prop :=
  ∀ n, (P16720752534865708304.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P8387301791243667306

`filter[A047201(n+1), A008966(#)]`
-/

namespace A274546.P8387301791243667306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A274546.P8387301791243667306

namespace A274546

/-- `filter[A047201(n+1), A008966(#)]` -/
def P8387301791243667306.Spec : Prop :=
  ∀ n, P8387301791243667306.a n = A274546 (n + 1)

end A274546

/-! ## A274546.P16161716154389479892

`∩[A047201(n+1), A005117(n+1)]`
-/

namespace A274546.P16161716154389479892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274546.P16161716154389479892

namespace A274546

/-- `∩[A047201(n+1), A005117(n+1)]` -/
def P16161716154389479892.Spec : Prop :=
  ∀ n, (P16161716154389479892.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P4535393884199336221

`∩[A193304(n+1), A047201(n+1)]`
-/

namespace A274546.P4535393884199336221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274546.P4535393884199336221

namespace A274546

/-- `∩[A193304(n+1), A047201(n+1)]` -/
def P4535393884199336221.Spec : Prop :=
  ∀ n, (P4535393884199336221.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P6614198768896147390

`filter[A382744(n+1), A008966(#)]`
-/

namespace A274546.P6614198768896147390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A274546.P6614198768896147390

namespace A274546

/-- `filter[A382744(n+1), A008966(#)]` -/
def P6614198768896147390.Spec : Prop :=
  ∀ n, P6614198768896147390.a n = A274546 (n + 1)

end A274546

/-! ## A274546.P5590930907143450385

`eq[5*n, ∏{p}[5*n, #]]`
-/

namespace A274546.P5590930907143450385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P5590930907143450385

namespace A274546

/-- `eq[5*n, ∏{p}[5*n, #]]` -/
def P5590930907143450385.Spec : Prop :=
  ∀ n, (P5590930907143450385.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P15278641837323847776

`record[∏{p}[5*(n+1), #]/5]`
-/

namespace A274546.P15278641837323847776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274546.P15278641837323847776

namespace A274546

/-- `record[∏{p}[5*(n+1), #]/5]` -/
def P15278641837323847776.Spec : Prop :=
  ∀ n, P15278641837323847776.a n = (A274546 (n + 1) : ℚ)

end A274546

/-! ## A274546.P15125316980239026842

`record[∏{p}[5*(n-1), #]]/5`
-/

namespace A274546.P15125316980239026842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 5

end

end A274546.P15125316980239026842

namespace A274546

/-- `record[∏{p}[5*(n-1), #]]/5` -/
def P15125316980239026842.Spec : Prop :=
  ∀ n, P15125316980239026842.a n = (A274546 (n + 1) : ℚ)

end A274546

/-! ## A274546.P4239772991554050013

`record[(n+1)/∏{e}[5*(n+1), #]]`
-/

namespace A274546.P4239772991554050013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274546.P4239772991554050013

namespace A274546

/-- `record[(n+1)/∏{e}[5*(n+1), #]]` -/
def P4239772991554050013.Spec : Prop :=
  ∀ n, P4239772991554050013.a n = (A274546 (n + 1) : ℚ)

end A274546

/-! ## A274546.P5172254126404133311

`eq[A089814(n), A105570(n)]`
-/

namespace A274546.P5172254126404133311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P5172254126404133311

namespace A274546

/-- `eq[A089814(n), A105570(n)]` -/
def P5172254126404133311.Spec : Prop :=
  ∀ n, (P5172254126404133311.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P2063506126642996745

`eq[A010152(n), A255326(n)]`
-/

namespace A274546.P2063506126642996745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P2063506126642996745

namespace A274546

/-- `eq[A010152(n), A255326(n)]` -/
def P2063506126642996745.Spec : Prop :=
  ∀ n, (P2063506126642996745.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P16859736765534792681

`eq[A010227(n), A255326(n)]`
-/

namespace A274546.P16859736765534792681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P16859736765534792681

namespace A274546

/-- `eq[A010227(n), A255326(n)]` -/
def P16859736765534792681.Spec : Prop :=
  ∀ n, (P16859736765534792681.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P11437063504392454668

`eq[A010208(n), A284345(n)]`
-/

namespace A274546.P11437063504392454668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P11437063504392454668

namespace A274546

/-- `eq[A010208(n), A284345(n)]` -/
def P11437063504392454668.Spec : Prop :=
  ∀ n, (P11437063504392454668.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P12813784785836629967

`eq[A010227(n), A284345(n)]`
-/

namespace A274546.P12813784785836629967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P12813784785836629967

namespace A274546

/-- `eq[A010227(n), A284345(n)]` -/
def P12813784785836629967.Spec : Prop :=
  ∀ n, (P12813784785836629967.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P8123371125274914436

`eq[A040327(n), A255326(n)]`
-/

namespace A274546.P8123371125274914436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P8123371125274914436

namespace A274546

/-- `eq[A040327(n), A255326(n)]` -/
def P8123371125274914436.Spec : Prop :=
  ∀ n, (P8123371125274914436.a n : ℤ) = A274546 (n + 1)

end A274546

/-! ## A274546.P12305306609455914441

`eq[A040533(n), A255326(n)]`
-/

namespace A274546.P12305306609455914441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274546.P12305306609455914441

namespace A274546

/-- `eq[A040533(n), A255326(n)]` -/
def P12305306609455914441.Spec : Prop :=
  ∀ n, (P12305306609455914441.a n : ℤ) = A274546 (n + 1)

end A274546

/-!
# A274547: Number of set partitions of [n] with alternating parity of elements.

The programs for A274547, there is no canonical definition to state claims against.
-/

/-! ## A274547.P12045267538258368456

`A274859(∑[n+3])`
-/

namespace A274547.P12045267538258368456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274547.P12045267538258368456

/-! ## A274547.P13266328089091787935

`A363519(∑[n])`
-/

namespace A274547.P13266328089091787935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274547.P13266328089091787935

/-! ## A274547.P271923141667511389

`and(-1, A363519(A000217(n)))`
-/

namespace A274547.P271923141667511389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A363519 (A000217 n).toNat)

end

end A274547.P271923141667511389

/-! ## A274547.P18080834294431027405

`A363519(A000217(n))%A153371(n+1)`
-/

namespace A274547.P18080834294431027405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363519 (A000217 n).toNat) (A153371 (n + 1))

end

end A274547.P18080834294431027405

/-! ## A274547.P3565762144605915590

`A363519(A000217(n))+A000007(3*n+1)`
-/

namespace A274547.P3565762144605915590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363519 (A000217 n).toNat + A000007 (3 * n + 1)

end

end A274547.P3565762144605915590

/-!
# A274555: Nonsquare n such that n*(n+1)/2 is the sum of two nonzero squares.

The programs for A274555, the canonical program `A274555.P2558607527214522533` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274555 has offset 1).

The definition of A274555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274555.P7959335663066716148

`∩[A140612(n+1), A180161(n+1)]`
-/

namespace A274555.P7959335663066716148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P7959335663066716148

namespace A274555

/-- `∩[A140612(n+1), A180161(n+1)]` -/
def P7959335663066716148.Spec : Prop :=
  ∀ n, (P7959335663066716148.a n : ℤ) = A274555 (n + 1)

end A274555

/-! ## A274555.P2558607527214522533

`∩[A140612(n+1), A000415(n+5)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274555

/-- `∩[A140612(n+1), A000415(n+5)]` -/
def P2558607527214522533.Spec : Prop :=
  ∀ n, (P2558607527214522533.a n : ℤ) = A274555 (n + 1)

theorem P2558607527214522533.correct : P2558607527214522533.Spec := by
  intro n
  simp only [A274555, Nat.add_sub_cancel]

end A274555

/-! ## A274555.P718052189864139056

`∩[A007916(n+1), A140612(n+1)]`
-/

namespace A274555.P718052189864139056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P718052189864139056

namespace A274555

/-- `∩[A007916(n+1), A140612(n+1)]` -/
def P718052189864139056.Spec : Prop :=
  ∀ n, (P718052189864139056.a n : ℤ) = A274555 (n + 1)

end A274555

/-! ## A274555.P14926081984299091211

`∩[A094784(n+1), A140612(n+1)]`
-/

namespace A274555.P14926081984299091211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P14926081984299091211

namespace A274555

/-- `∩[A094784(n+1), A140612(n+1)]` -/
def P14926081984299091211.Spec : Prop :=
  ∀ n, (P14926081984299091211.a n : ℤ) = A274555 (n + 1)

end A274555

/-! ## A274555.P7900969467339798656

`filter[A140612(n+3), A132350(#)]`
-/

namespace A274555.P7900969467339798656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A274555.P7900969467339798656

namespace A274555

/-- `filter[A140612(n+3), A132350(#)]` -/
def P7900969467339798656.Spec : Prop :=
  ∀ n, P7900969467339798656.a n = A274555 (n + 1)

end A274555

/-!
# A274557: Numbers k such that sigma(k) == 0 (mod k+6).

The programs for A274557, the canonical program `A274557.P17532992235864728573` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274557 has offset 1).

The definition of A274557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274557.P17532992235864728573

`lt[A000203(n+1)%(n+7), 1]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274557

/-- `lt[A000203(n+1)%(n+7), 1]+1` -/
def P17532992235864728573.Spec : Prop :=
  ∀ n, (P17532992235864728573.a n : ℤ) = A274557 (n + 1)

theorem P17532992235864728573.correct : P17532992235864728573.Spec := by
  intro n
  simp only [A274557, Nat.add_sub_cancel]

end A274557

/-! ## A274557.P7202583847309208507

`eq[n, (A039653(n)+1+n)%(n+6)]`
-/

namespace A274557.P7202583847309208507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n + 1 + (n : ℤ)) (n + 6 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274557.P7202583847309208507

namespace A274557

/-- `eq[n, (A039653(n)+1+n)%(n+6)]` -/
def P7202583847309208507.Spec : Prop :=
  ∀ n, (P7202583847309208507.a n : ℤ) = A274557 (n + 1)

end A274557

/-! ## A274557.P7838270824653953493

`lt[A104887(A000217(n+6)+A000203(n+1)), 5]+1`
-/

namespace A274557.P7838270824653953493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (A000217 (n + 6) + A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274557.P7838270824653953493

namespace A274557

/-- `lt[A104887(A000217(n+6)+A000203(n+1)), 5]+1` -/
def P7838270824653953493.Spec : Prop :=
  ∀ n, (P7838270824653953493.a n : ℤ) = A274557 (n + 1)

end A274557

/-!
# A274559: Numbers k such that sigma(k) == 0 (mod k+7).

The programs for A274559, there is no canonical definition to state claims against.
-/

/-! ## A274559.P3432113250716936340

`A141546(n%a(n-1))` with `a(0)=8`
-/

namespace A274559.P3432113250716936340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A141546 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A274559.P3432113250716936340

/-! ## A274559.P3252802064393610411

`A141546(and(n, a(floor(n/2))+n))` with `a(0)=8`
-/

namespace A274559.P3252802064393610411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A141546 (Int.land (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))).toNat

end

end A274559.P3252802064393610411

/-! ## A274559.P1513244456832117922

`A141546(A097546(n+4))%A078271(n+1)`
-/

namespace A274559.P1513244456832117922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141546 (A097546 (n + 4)).toNat) (A078271 (n + 1))

end

end A274559.P1513244456832117922

/-!
# A274560: Numbers k such that sigma(k) == 0 (mod k-7).

The programs for A274560, there is no canonical definition to state claims against.
-/

/-! ## A274560.P15126766643892081744

`eq[A120529(n+1), A232463(n+1)]`
-/

namespace A274560.P15126766643892081744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274560.P15126766643892081744

/-! ## A274560.P943551370286762468

`eq[A232463(n+1), A358847(n+1)]`
-/

namespace A274560.P943551370286762468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274560.P943551370286762468

/-!
# A274564: Numbers k such that sigma(k) == 0 (mod k-9).

The programs for A274564, there is no canonical definition to state claims against.
-/

/-! ## A274564.P2899592824002615364

`A196098(A363740(n+5))-A196098(n+1)`
-/

namespace A274564.P2899592824002615364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196098 (A363740 (n + 5)).toNat - A196098 (n + 1)

end

end A274564.P2899592824002615364

/-!
# A274565: Numbers k such that sigma(k) == 0 (mod k+10).

The programs for A274565, there is no canonical definition to state claims against.
-/

/-! ## A274565.P2987148093666228490

`A223611(A028310(n))%A236775(n+1)`
-/

namespace A274565.P2987148093666228490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223611 (A028310 n).toNat) (A236775 (n + 1))

end

end A274565.P2987148093666228490

/-!
# A274567: Least number k such that k^2-1 is the sum of two nonzero squares in exactly n ways.

The programs for A274567, there is no canonical definition to state claims against.
-/

/-! ## A274567.P1088779712337720991

`A005408(A274686(n+1)^A055640(n))`
-/

namespace A274567.P1088779712337720991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A274686 (n + 1) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A274567.P1088779712337720991

/-! ## A274567.P18315494040655090017

`A005408(A274686(n+1)^A276134(n))`
-/

namespace A274567.P18315494040655090017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A274686 (n + 1) : ℚ) ^ (A276134 n : ℤ))).toNat

end

end A274567.P18315494040655090017

/-!
# A274570: Triangle, read by rows, that transforms diagonals in the array A274390 of coefficients in successive iterations of Euler's tree function (A000169).

The programs for A274570, there is no canonical definition to state claims against.
-/

/-! ## A274570.P12305382433551078494

`A184097(A000491(n))`
-/

namespace A274570.P12305382433551078494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184097 (A000491 n).toNat

end

end A274570.P12305382433551078494

/-! ## A274570.P280770896310901584

`A212045(A048870(n))`
-/

namespace A274570.P280770896310901584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212045 (A048870 n).toNat

end

end A274570.P280770896310901584

/-! ## A274570.P2174352113625400389

`A280753(A286718(n))`
-/

namespace A274570.P2174352113625400389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280753 (A286718 n).toNat

end

end A274570.P2174352113625400389

/-!
# A274571: Column 0 of triangle A274570.

The programs for A274571, there is no canonical definition to state claims against.
-/

/-! ## A274571.P6422495620598568472

`A274570(∑[n])`
-/

namespace A274571.P6422495620598568472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274571.P6422495620598568472

/-! ## A274571.P10097815233370545062

`or(1, A274570(A000217(n)))`
-/

namespace A274571.P10097815233370545062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274570 (A000217 n).toNat)

end

end A274571.P10097815233370545062

/-! ## A274571.P11495637619046292576

`or(1, A274570(A179865(n+1)))`
-/

namespace A274571.P11495637619046292576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274570 (A179865 (n + 1)).toNat)

end

end A274571.P11495637619046292576

/-! ## A274571.P993510564456552345

`record[A274570(n)+A114327(n)]-n`
-/

namespace A274571.P993510564456552345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 n + A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A274571.P993510564456552345

/-! ## A274571.P14309917829775929390

`A274570(A000217(n))^A011626(n²)`
-/

namespace A274571.P14309917829775929390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274570 (A000217 n).toNat : ℚ) ^ (A011626 (n ^ 2) : ℤ)

end

end A274571.P14309917829775929390

/-!
# A274572: Column 1 of triangle A274570.

The programs for A274572, there is no canonical definition to state claims against.
-/

/-! ## A274572.P6975075666696771301

`A274570(∑[n+1]+1)`
-/

namespace A274572.P6975075666696771301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274572.P6975075666696771301

/-! ## A274572.P68421860293626936

`record[A274570(A014132(n+1))]`
-/

namespace A274572.P68421860293626936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274572.P68421860293626936

/-! ## A274572.P8368365445284099650

`record[A274570(gcd(n, A010816(n)))]`
-/

namespace A274572.P8368365445284099650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (Int.gcd (n : ℤ) (A010816 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274572.P8368365445284099650

/-! ## A274572.P8414004029840328270

`record[gcd(A274570(n+1), A274581(n))]`
-/

namespace A274572.P8414004029840328270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274570 (n + 1)) (A274581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274572.P8414004029840328270

/-! ## A274572.P4828757958540989178

`record[A274570(n)^A087960(A222043(n+1))]`
-/

namespace A274572.P4828757958540989178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274570 n : ℚ) ^ (A087960 (A222043 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274572.P4828757958540989178

/-!
# A274573: Column 2 of triangle A274570.

The programs for A274573, there is no canonical definition to state claims against.
-/

/-! ## A274573.P8560641707792981075

`A274570(∑[n+2]+3)`
-/

namespace A274573.P8560641707792981075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A274573.P8560641707792981075

/-! ## A274573.P1725342719310442711

`record[A274570(eq[0, A145677(n)]+1)]`
-/

namespace A274573.P1725342719310442711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274573.P1725342719310442711

/-! ## A274573.P9189167242944046095

`record[gcd(A274570(n+4), A274581(n+2))]`
-/

namespace A274573.P9189167242944046095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274570 (n + 4)) (A274581 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274573.P9189167242944046095

/-!
# A274574: Central terms of triangle A274570.

The programs for A274574, there is no canonical definition to state claims against.
-/

/-! ## A274574.P10042246178276214894

`A274570(∑[4*n])`
-/

namespace A274574.P10042246178276214894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274574.P10042246178276214894

/-! ## A274574.P18130193261893656231

`record[A274570(n*A027656(n))]`
-/

namespace A274574.P18130193261893656231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 ((n : ℤ) * A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274574.P18130193261893656231

/-! ## A274574.P17597109623336653250

`record[gcd(A114327(n), A274570(n))]`
-/

namespace A274574.P17597109623336653250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A274570 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274574.P17597109623336653250

/-! ## A274574.P15274793563131301283

`record[A274570(lcm(n, A286100(n+1)))]`
-/

namespace A274574.P15274793563131301283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274570 (Int.lcm (n : ℤ) (A286100 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274574.P15274793563131301283

/-! ## A274574.P7253976828280696829

`lcm(A087960(n), A274570(A046092(n)))`
-/

namespace A274574.P7253976828280696829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A274570 (A046092 n).toNat)

end

end A274574.P7253976828280696829

/-!
# A274575: For m=1,2,3,... write all the 2^m binary vectors of length m in increasing order, and replace each vector with (number of 1's) - (number of 0's). Start with an initial 0 for the empty vector.

The programs for A274575, the canonical program `A274575.P18445276803397930196` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274575 has offset 0).

The definition of A274575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274575.P18312359359122537387

`A000120(n+1)-A023416(n+1)-1`
-/

namespace A274575.P18312359359122537387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A023416 (n + 1) - 1

end

end A274575.P18312359359122537387

namespace A274575

/-- `A000120(n+1)-A023416(n+1)-1` -/
def P18312359359122537387.Spec : Prop :=
  ∀ n, P18312359359122537387.a n = A274575 n

end A274575

/-! ## A274575.P18445276803397930196

`A000120(n+1)-A008687(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A274575

/-- `A000120(n+1)-A008687(n+2)` -/
def P18445276803397930196.Spec : Prop :=
  ∀ n, P18445276803397930196.a n = A274575 n

theorem P18445276803397930196.correct : P18445276803397930196.Spec := by
  intro n
  simp only [A274575]

end A274575

/-! ## A274575.P2884926651838970212

`a(floor((n-1)/2))+(-1)^n` with `a(0)=0`
-/

namespace A274575.P2884926651838970212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (-1) ^ n

end

end A274575.P2884926651838970212

namespace A274575

/-- `a(floor((n-1)/2))+(-1)^n` -/
def P2884926651838970212.Spec : Prop :=
  ∀ n, P2884926651838970212.a n = A274575 n

end A274575

/-! ## A274575.P1249210229926849485

`2*(n-∑[val(n+1, 2)])-floor(log2(n+1))`
-/

namespace A274575.P1249210229926849485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - (Nat.log 2 (n + 1) : ℤ)

end

end A274575.P1249210229926849485

namespace A274575

/-- `2*(n-∑[val(n+1, 2)])-floor(log2(n+1))` -/
def P1249210229926849485.Spec : Prop :=
  ∀ n, P1249210229926849485.a n = A274575 n

end A274575

/-! ## A274575.P17628876016242526548

`log2(gcd(2, n))-(n%2-a(floor((n-1)/2)))` with `a(0)=0`
-/

namespace A274575.P17628876016242526548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) - (((n % 2 : ℕ) : ℝ) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A274575.P17628876016242526548

namespace A274575

/-- `log2(gcd(2, n))-(n%2-a(floor((n-1)/2)))` -/
def P17628876016242526548.Spec : Prop :=
  ∀ n, P17628876016242526548.a n = (A274575 n : ℝ)

end A274575

/-! ## A274575.P7382184011442297642

`Δ[-A296062(n)]`
-/

namespace A274575.P7382184011442297642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A296062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274575.P7382184011442297642

namespace A274575

/-- `Δ[-A296062(n)]` -/
def P7382184011442297642.Spec : Prop :=
  ∀ n, P7382184011442297642.a n = A274575 n

end A274575

/-! ## A274575.P3120779082185623546

`Δ[A268289(n)]-1`
-/

namespace A274575.P3120779082185623546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A274575.P3120779082185623546

namespace A274575

/-- `Δ[A268289(n)]-1` -/
def P3120779082185623546.Spec : Prop :=
  ∀ n, P3120779082185623546.a n = A274575 n

end A274575

/-! ## A274575.P1061023872956294199

`A145037(n+1)-1`
-/

namespace A274575.P1061023872956294199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (n + 1) - 1

end

end A274575.P1061023872956294199

namespace A274575

/-- `A145037(n+1)-1` -/
def P1061023872956294199.Spec : Prop :=
  ∀ n, P1061023872956294199.a n = A274575 n

end A274575

/-! ## A274575.P7497531847578681325

`-(A037861(n+1)+1)`
-/

namespace A274575.P7497531847578681325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A037861 (n + 1) + 1)

end

end A274575.P7497531847578681325

namespace A274575

/-- `-(A037861(n+1)+1)` -/
def P7497531847578681325.Spec : Prop :=
  ∀ n, P7497531847578681325.a n = A274575 n

end A274575

/-! ## A274575.P1571106044917609309

`∑[A269735(n+1)]-1`
-/

namespace A274575.P1571106044917609309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A274575.P1571106044917609309

namespace A274575

/-- `∑[A269735(n+1)]-1` -/
def P1571106044917609309.Spec : Prop :=
  ∀ n, P1571106044917609309.a n = A274575 n

end A274575

/-! ## A274575.P10599024960973509648

`A370884(n)-A370883(n)`
-/

namespace A274575.P10599024960973509648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 n - A370883 n

end

end A274575.P10599024960973509648

namespace A274575

/-- `A370884(n)-A370883(n)` -/
def P10599024960973509648.Spec : Prop :=
  ∀ n, P10599024960973509648.a n = A274575 n

end A274575

/-! ## A274575.P13985793808277691883

`A124754(A003188(n+1))-1`
-/

namespace A274575.P13985793808277691883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 (n + 1)).toNat - 1

end

end A274575.P13985793808277691883

namespace A274575

/-- `A124754(A003188(n+1))-1` -/
def P13985793808277691883.Spec : Prop :=
  ∀ n, P13985793808277691883.a n = A274575 n

end A274575

/-! ## A274575.P17791096213826359264

`A048881(n)-A023416(n+1)`
-/

namespace A274575.P17791096213826359264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n - A023416 (n + 1)

end

end A274575.P17791096213826359264

namespace A274575

/-- `A048881(n)-A023416(n+1)` -/
def P17791096213826359264.Spec : Prop :=
  ∀ n, P17791096213826359264.a n = A274575 n

end A274575

/-! ## A274575.P5060805872394961223

`A048881(n)-A080791(n+1)`
-/

namespace A274575.P5060805872394961223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n - A080791 (n + 1)

end

end A274575.P5060805872394961223

namespace A274575

/-- `A048881(n)-A080791(n+1)` -/
def P5060805872394961223.Spec : Prop :=
  ∀ n, P5060805872394961223.a n = A274575 n

end A274575

/-! ## A274575.P16501056513924435588

`A296062(n)-A296062(n+1)`
-/

namespace A274575.P16501056513924435588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 n - A296062 (n + 1)

end

end A274575.P16501056513924435588

namespace A274575

/-- `A296062(n)-A296062(n+1)` -/
def P16501056513924435588.Spec : Prop :=
  ∀ n, P16501056513924435588.a n = A274575 n

end A274575

/-! ## A274575.P476981955622703178

`A117123(n+1)-A113474(n+1)`
-/

namespace A274575.P476981955622703178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (n + 1) - A113474 (n + 1)

end

end A274575.P476981955622703178

namespace A274575

/-- `A117123(n+1)-A113474(n+1)` -/
def P476981955622703178.Spec : Prop :=
  ∀ n, P476981955622703178.a n = A274575 n

end A274575

/-! ## A274575.P16911502598137678365

`A000120(n+1)-A290251(n+1)`
-/

namespace A274575.P16911502598137678365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A290251 (n + 1)

end

end A274575.P16911502598137678365

namespace A274575

/-- `A000120(n+1)-A290251(n+1)` -/
def P16911502598137678365.Spec : Prop :=
  ∀ n, P16911502598137678365.a n = A274575 n

end A274575

/-! ## A274575.P16542837011877022254

`A337319(n+1)-A001511(n+1)`
-/

namespace A274575.P16542837011877022254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337319 (n + 1) - A001511 (n + 1)

end

end A274575.P16542837011877022254

namespace A274575

/-- `A337319(n+1)-A001511(n+1)` -/
def P16542837011877022254.Spec : Prop :=
  ∀ n, P16542837011877022254.a n = A274575 n

end A274575

/-! ## A274575.P14769484805586772333

`Δ[A301336(n)]-1`
-/

namespace A274575.P14769484805586772333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A274575.P14769484805586772333

namespace A274575

/-- `Δ[A301336(n)]-1` -/
def P14769484805586772333.Spec : Prop :=
  ∀ n, P14769484805586772333.a n = A274575 n

end A274575

/-! ## A274575.P17961634368344108044

`Δ[∑[A145037(n)]-n]`
-/

namespace A274575.P17961634368344108044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274575.P17961634368344108044

namespace A274575

/-- `Δ[∑[A145037(n)]-n]` -/
def P17961634368344108044.Spec : Prop :=
  ∀ n, P17961634368344108044.a n = A274575 n

end A274575

/-!
# A274576: a(2n) = floor(n/2), a(2n+1) = a(n), a(0)=0.

The programs for A274576, the canonical program `A274576.P1245879407448078090` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274576 has offset 0).

The definition of A274576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274576.P15154562237618580903

`floor(n/2^(val(n+1, 2)+2))`
-/

namespace A274576.P15154562237618580903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 2) : ℚ)⌋

end

end A274576.P15154562237618580903

namespace A274576

/-- `floor(n/2^(val(n+1, 2)+2))` -/
def P15154562237618580903.Spec : Prop :=
  ∀ n, P15154562237618580903.a n = A274576 n

end A274576

/-! ## A274576.P1245879407448078090

`floor(n/∑[2*Δ[xor(n, n-1)]])`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274576

/-- `floor(n/∑[2*Δ[xor(n, n-1)]])` -/
def P1245879407448078090.Spec : Prop :=
  ∀ n, P1245879407448078090.a n = A274576 n

theorem P1245879407448078090.correct : P1245879407448078090.Spec := by
  intro n
  simp only [A274576]

end A274576

/-! ## A274576.P6498686795248159946

`floor(n/∑[2*Δ[-xor(n, -n)]])`
-/

namespace A274576.P6498686795248159946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A274576.P6498686795248159946

namespace A274576

/-- `floor(n/∑[2*Δ[-xor(n, -n)]])` -/
def P6498686795248159946.Spec : Prop :=
  ∀ n, P6498686795248159946.a n = A274576 n

end A274576

/-! ## A274576.P6695131427311740197

`floor(floor(n/2)/(xor(n, n+1)+1))`
-/

namespace A274576.P6695131427311740197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A274576.P6695131427311740197

namespace A274576

/-- `floor(floor(n/2)/(xor(n, n+1)+1))` -/
def P6695131427311740197.Spec : Prop :=
  ∀ n, P6695131427311740197.a n = A274576 n

end A274576

/-! ## A274576.P1760986998502953314

`floor(floor(n/(or(n, n+1)-n))/4)`
-/

namespace A274576.P1760986998502953314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋ : ℚ) / 4⌋

end

end A274576.P1760986998502953314

namespace A274576

/-- `floor(floor(n/(or(n, n+1)-n))/4)` -/
def P1760986998502953314.Spec : Prop :=
  ∀ n, P1760986998502953314.a n = A274576 n

end A274576

/-! ## A274576.P13101236895736870095

`floor(floor(n/4)/and(n+1, -(n+1)))`
-/

namespace A274576.P13101236895736870095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 4⌋ : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A274576.P13101236895736870095

namespace A274576

/-- `floor(floor(n/4)/and(n+1, -(n+1)))` -/
def P13101236895736870095.Spec : Prop :=
  ∀ n, P13101236895736870095.a n = A274576 n

end A274576

/-! ## A274576.P7897361223841180428

`floor(floor(n/(1-and(n, n+1)+n))/4)`
-/

namespace A274576.P7897361223841180428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ)⌋ : ℚ) / 4⌋

end

end A274576.P7897361223841180428

namespace A274576

/-- `floor(floor(n/(1-and(n, n+1)+n))/4)` -/
def P7897361223841180428.Spec : Prop :=
  ∀ n, P7897361223841180428.a n = A274576 n

end A274576

/-! ## A274576.P9662828108111125965

`floor(floor(n/abs(or(n+1, -(n+1))))/4)`
-/

namespace A274576.P9662828108111125965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / (|Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| : ℚ)⌋ : ℚ) / 4⌋

end

end A274576.P9662828108111125965

namespace A274576

/-- `floor(floor(n/abs(or(n+1, -(n+1))))/4)` -/
def P9662828108111125965.Spec : Prop :=
  ∀ n, P9662828108111125965.a n = A274576 n

end A274576

/-! ## A274576.P8211922727595910450

`round((n-1)%((n+1)/and(n+1, -(n+1)))/4)`
-/

namespace A274576.P8211922727595910450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) : ℚ) / 4)

end

end A274576.P8211922727595910450

namespace A274576

/-- `round((n-1)%((n+1)/and(n+1, -(n+1)))/4)` -/
def P8211922727595910450.Spec : Prop :=
  ∀ n, P8211922727595910450.a n = A274576 n

end A274576

/-! ## A274576.P262799762624693795

`floor(A025480(n)/2)`
-/

namespace A274576.P262799762624693795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025480 n : ℚ) / 2⌋

end

end A274576.P262799762624693795

namespace A274576

/-- `floor(A025480(n)/2)` -/
def P262799762624693795.Spec : Prop :=
  ∀ n, P262799762624693795.a n = A274576 n

end A274576

/-! ## A274576.P7361547677705876201

`floor(A153733(n)/4)`
-/

namespace A274576.P7361547677705876201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153733 n : ℚ) / 4⌋

end

end A274576.P7361547677705876201

namespace A274576

/-- `floor(A153733(n)/4)` -/
def P7361547677705876201.Spec : Prop :=
  ∀ n, P7361547677705876201.a n = A274576 n

end A274576

/-! ## A274576.P3766274919298944803

`floor(A000265(n+1)/4)`
-/

namespace A274576.P3766274919298944803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (n + 1) : ℚ) / 4⌋

end

end A274576.P3766274919298944803

namespace A274576

/-- `floor(A000265(n+1)/4)` -/
def P3766274919298944803.Spec : Prop :=
  ∀ n, P3766274919298944803.a n = A274576 n

end A274576

/-! ## A274576.P13700774534369144812

`floor(A166466(n+1)/12)`
-/

namespace A274576.P13700774534369144812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166466 (n + 1) : ℚ) / 12⌋

end

end A274576.P13700774534369144812

namespace A274576

/-- `floor(A166466(n+1)/12)` -/
def P13700774534369144812.Spec : Prop :=
  ∀ n, P13700774534369144812.a n = A274576 n

end A274576

/-! ## A274576.P4722776005918325422

`floor(n/A059159(n+1))`
-/

namespace A274576.P4722776005918325422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A059159 (n + 1) : ℚ)⌋

end

end A274576.P4722776005918325422

namespace A274576

/-- `floor(n/A059159(n+1))` -/
def P4722776005918325422.Spec : Prop :=
  ∀ n, P4722776005918325422.a n = A274576 n

end A274576

/-! ## A274576.P6014906015291978231

`A004526(A025480(n))`
-/

namespace A274576.P6014906015291978231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A025480 n).toNat

end

end A274576.P6014906015291978231

namespace A274576

/-- `A004526(A025480(n))` -/
def P6014906015291978231.Spec : Prop :=
  ∀ n, P6014906015291978231.a n = A274576 n

end A274576

/-! ## A274576.P13006951278456351979

`A002265(A153733(n))`
-/

namespace A274576.P13006951278456351979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A153733 n).toNat

end

end A274576.P13006951278456351979

namespace A274576

/-- `A002265(A153733(n))` -/
def P13006951278456351979.Spec : Prop :=
  ∀ n, P13006951278456351979.a n = A274576 n

end A274576

/-! ## A274576.P2095979495632852458

`A004526(A295041(n))`
-/

namespace A274576.P2095979495632852458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A295041 n).toNat

end

end A274576.P2095979495632852458

namespace A274576

/-- `A004526(A295041(n))` -/
def P2095979495632852458.Spec : Prop :=
  ∀ n, P2095979495632852458.a n = A274576 n

end A274576

/-! ## A274576.P3911365033824048692

`A002265(A000265(n+1))`
-/

namespace A274576.P3911365033824048692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000265 (n + 1)).toNat

end

end A274576.P3911365033824048692

namespace A274576

/-- `A002265(A000265(n+1))` -/
def P3911365033824048692.Spec : Prop :=
  ∀ n, P3911365033824048692.a n = A274576 n

end A274576

/-! ## A274576.P8896428590673674456

`A004526(A101279(n+1))`
-/

namespace A274576.P8896428590673674456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A101279 (n + 1)).toNat

end

end A274576.P8896428590673674456

namespace A274576

/-- `A004526(A101279(n+1))` -/
def P8896428590673674456.Spec : Prop :=
  ∀ n, P8896428590673674456.a n = A274576 n

end A274576

/-! ## A274576.P12442308201372887823

`A002265(A322250(n+1))`
-/

namespace A274576.P12442308201372887823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A322250 (n + 1)).toNat

end

end A274576.P12442308201372887823

namespace A274576

/-- `A002265(A322250(n+1))` -/
def P12442308201372887823.Spec : Prop :=
  ∀ n, P12442308201372887823.a n = A274576 n

end A274576

/-!
# A274577: Numbers n such that n is the sum of two nonzero squares while A006530(n) is not.

The programs for A274577, there is no canonical definition to state claims against.
-/

/-! ## A274577.P17946269051637720919

`∩[A000404(n+1), A071822(n+1)]`
-/

namespace A274577.P17946269051637720919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274577.P17946269051637720919

/-! ## A274577.P8324788876060477370

`∩[A018821(n+1), A071822(n+1)]`
-/

namespace A274577.P8324788876060477370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274577.P8324788876060477370

/-! ## A274577.P1883625783351598808

`∩[A071822(n+1), A085989(n+1)]`
-/

namespace A274577.P1883625783351598808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274577.P1883625783351598808

/-! ## A274577.P10217421118479488302

`∩[A071822(n+1), A100829(n+1)]`
-/

namespace A274577.P10217421118479488302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274577.P10217421118479488302

/-!
# A274579: Values of k such that 2*k+1 and 5*k+1 are both triangular numbers.

The programs for A274579, there is no canonical definition to state claims against.
-/

/-! ## A274579.P7633218901093054509

`∩[A074377(n), A085787(n)]`
-/

namespace A274579.P7633218901093054509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274579.P7633218901093054509

/-!
# A274580: Digital difference of n: the most significant decimal digit of n minus the sum of the other digits.

The programs for A274580, there is no canonical definition to state claims against.
-/

/-! ## A274580.P14098115419148013035

`A225693(n+1)`
-/

namespace A274580.P14098115419148013035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (n + 1)

end

end A274580.P14098115419148013035

/-! ## A274580.P488730221577139779

`∑[Δ[A225693(n)]%11]`
-/

namespace A274580.P488730221577139779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274580.P488730221577139779

/-! ## A274580.P471463383093181583

`9-A040997(10*n+19)`
-/

namespace A274580.P471463383093181583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A040997 (10 * n + 19)

end

end A274580.P471463383093181583

/-! ## A274580.P4962030358142179754

`A225693(1-(n-2*n))%10`
-/

namespace A274580.P4962030358142179754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225693 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) 10

end

end A274580.P4962030358142179754

/-! ## A274580.P5624895157079372367

`A055017(A004086(n+1))`
-/

namespace A274580.P5624895157079372367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 (n + 1)).toNat

end

end A274580.P5624895157079372367

/-! ## A274580.P9586866468781735131

`A055017(A345110(n+1))`
-/

namespace A274580.P9586866468781735131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A345110 (n + 1)).toNat

end

end A274580.P9586866468781735131

/-! ## A274580.P7508992838818992330

`∑[Δ[A225693(n)]^A062157(n)]`
-/

namespace A274580.P7508992838818992330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274580.P7508992838818992330

/-! ## A274580.P15003022239839635823

`A000030(n+1)-A217657(n+1)`
-/

namespace A274580.P15003022239839635823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1) - A217657 (n + 1)

end

end A274580.P15003022239839635823

/-! ## A274580.P14964501047893955014

`A177895(n+1)-A053392(n+1)`
-/

namespace A274580.P14964501047893955014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177895 (n + 1) - A053392 (n + 1)

end

end A274580.P14964501047893955014

/-! ## A274580.P6368659760967625193

`A182324(n+1)-A067082(n+1)`
-/

namespace A274580.P6368659760967625193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (n + 1) - A067082 (n + 1)

end

end A274580.P6368659760967625193

/-!
# A274581: Number T(n,k) of set partitions of [n] with alternating parity of elements and exactly k blocks; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A274581, there is no canonical definition to state claims against.
-/

/-! ## A274581.P605213230581377344

`A180160(A283666(n+1))+A097805(n)`
-/

namespace A274581.P605213230581377344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A283666 (n + 1)).toNat + A097805 n

end

end A274581.P605213230581377344

/-! ## A274581.P6147179882817963874

`A180160(A283666(n+1))+A096940(n)-A095666(n)`
-/

namespace A274581.P6147179882817963874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A283666 (n + 1)).toNat + (A096940 n - A095666 n)

end

end A274581.P6147179882817963874

/-! ## A274581.P14791825040211089393

`A034463(A048993(n)+1)`
-/

namespace A274581.P14791825040211089393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A048993 n + 1).toNat

end

end A274581.P14791825040211089393

/-! ## A274581.P3361158872199739179

`A034463(A151511(n)+1)`
-/

namespace A274581.P3361158872199739179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A151511 n + 1).toNat

end

end A274581.P3361158872199739179

/-! ## A274581.P16429305837242217577

`or(A097805(n), A217956(A260340(n)))`
-/

namespace A274581.P16429305837242217577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A217956 (A260340 n).toNat)

end

end A274581.P16429305837242217577

/-!
# A274582: Number of ways to remove n oranges from an infinite stack of oranges whose m-th layer is an m X m square.

The programs for A274582, there is no canonical definition to state claims against.
-/

/-! ## A274582.P4995126224037611846

`A005041(A051960(n))-A008792(n+1)`
-/

namespace A274582.P4995126224037611846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A051960 n).toNat - A008792 (n + 1)

end

end A274582.P4995126224037611846

/-! ## A274582.P15414885281783198386

`A000006(∑[A000041(n)]*A199883(n+1))`
-/

namespace A274582.P15414885281783198386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 ((∑ j ∈ Finset.range (n + 1), f1 j) * A199883 (n + 1)).toNat

end

end A274582.P15414885281783198386

/-! ## A274582.P17387062655752801101

`A054404(A280069(2*(n+2))+A262380(n))`
-/

namespace A274582.P17387062655752801101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A280069 (2 * (n + 2)) + A262380 n).toNat

end

end A274582.P17387062655752801101

/-! ## A274582.P13889017115879693522

`A000006(∑[A000065(n)+1]*A199883(n+1))`
-/

namespace A274582.P13889017115879693522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 ((∑ j ∈ Finset.range (n + 1), f1 j) * A199883 (n + 1)).toNat

end

end A274582.P13889017115879693522

/-!
# A274583: Expansion of (1 + x + x^2 - x^3 - x^4 + x^6)/((1 - x)^3*(1 + x + x^2)^2).

The programs for A274583, the canonical program `A274583.P18292181948172514908` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274583 has offset 0).

The definition of A274583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2-x^3-x^4+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A274583.P18292181948172514908`, by `A274583.P18292181948172514908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274583.P18292181948172514908

`ogf((1+x+x^2-x^3-x^4+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274583

/-- `ogf((1+x+x^2-x^3-x^4+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P18292181948172514908.Spec : Prop :=
  ∀ n, P18292181948172514908.a n = A274583 n

theorem P18292181948172514908.correct : P18292181948172514908.Spec := by
  intro n
  simp only [A274583]

end A274583

/-! ## A274583.P9580976416706822753

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7, a(6)=9`
-/

namespace A274583.P9580976416706822753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 7, 9] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6) + a (n - 7)

end

end A274583.P9580976416706822753

namespace A274583

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P9580976416706822753.Spec : Prop :=
  ∀ n, P9580976416706822753.a n = A274583 n

end A274583

/-! ## A274583.P8536470353551013738

`∪[(n+1)², a(n-2)+n]` with `a(0)=1, a(1)=2`
-/

namespace A274583.P8536470353551013738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A274583.P8536470353551013738

namespace A274583

/-- `∪[(n+1)², a(n-2)+n]` -/
def P8536470353551013738.Spec : Prop :=
  ∀ n, (P8536470353551013738.a n : ℤ) = A274583 n

end A274583

/-! ## A274583.P9740625714488549256

`a(n-1)+gcd(1-a(n-1), ceil(n/3))` with `a(0)=1`
-/

namespace A274583.P9740625714488549256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd (1 - (a (n - 1) : ℤ)) ⌈(n : ℚ) / 3⌉

end

end A274583.P9740625714488549256

namespace A274583

/-- `a(n-1)+gcd(1-a(n-1), ceil(n/3))` -/
def P9740625714488549256.Spec : Prop :=
  ∀ n, (P9740625714488549256.a n : ℤ) = A274583 n

end A274583

/-! ## A274583.P10077032012205633946

`∪[(n+1)², A033638(n+1)]`
-/

namespace A274583.P10077032012205633946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274583.P10077032012205633946

namespace A274583

/-- `∪[(n+1)², A033638(n+1)]` -/
def P10077032012205633946.Spec : Prop :=
  ∀ n, (P10077032012205633946.a n : ℤ) = A274583 n

end A274583

/-! ## A274583.P5292809030735111917

`∪[A035106(n+1), n²]+1`
-/

namespace A274583.P5292809030735111917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A274583.P5292809030735111917

namespace A274583

/-- `∪[A035106(n+1), n²]+1` -/
def P5292809030735111917.Spec : Prop :=
  ∀ n, (P5292809030735111917.a n : ℤ) = A274583 n

end A274583

/-! ## A274583.P2091765029424921509

`∪[A137928(n+1), A200975(n+1)]`
-/

namespace A274583.P2091765029424921509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274583.P2091765029424921509

namespace A274583

/-- `∪[A137928(n+1), A200975(n+1)]` -/
def P2091765029424921509.Spec : Prop :=
  ∀ n, (P2091765029424921509.a n : ℤ) = A274583 n

end A274583

/-! ## A274583.P220952177511350895

`∪[A200975(n+1), A363283(n+1)]`
-/

namespace A274583.P220952177511350895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274583.P220952177511350895

namespace A274583

/-- `∪[A200975(n+1), A363283(n+1)]` -/
def P220952177511350895.Spec : Prop :=
  ∀ n, (P220952177511350895.a n : ℤ) = A274583 n

end A274583

/-! ## A274583.P2645980368025353060

`A057427(n)+A006446(A028310(n))`
-/

namespace A274583.P2645980368025353060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A006446 (A028310 n).toNat

end

end A274583.P2645980368025353060

namespace A274583

/-- `A057427(n)+A006446(A028310(n))` -/
def P2645980368025353060.Spec : Prop :=
  ∀ n, P2645980368025353060.a n = A274583 n

end A274583

/-! ## A274583.P7817205451292396913

`A011655(n)+A008620(n+1)*A008620(n)`
-/

namespace A274583.P7817205451292396913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + A008620 (n + 1) * A008620 n

end

end A274583.P7817205451292396913

namespace A274583

/-- `A011655(n)+A008620(n+1)*A008620(n)` -/
def P7817205451292396913.Spec : Prop :=
  ∀ n, P7817205451292396913.a n = A274583 n

end A274583

/-! ## A274583.P9176877436824548016

`A008133(n)+A004396(n+2)`
-/

namespace A274583.P9176877436824548016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n + A004396 (n + 2)

end

end A274583.P9176877436824548016

namespace A274583

/-- `A008133(n)+A004396(n+2)` -/
def P9176877436824548016.Spec : Prop :=
  ∀ n, P9176877436824548016.a n = A274583 n

end A274583

/-! ## A274583.P5708275745498589139

`A008620(n+2)+A008130(n+1)`
-/

namespace A274583.P5708275745498589139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 2) + A008130 (n + 1)

end

end A274583.P5708275745498589139

namespace A274583

/-- `A008620(n+2)+A008130(n+1)` -/
def P5708275745498589139.Spec : Prop :=
  ∀ n, P5708275745498589139.a n = A274583 n

end A274583

/-! ## A274583.P9956743830263433595

`A033638(A004523(n))+A004523(n+1)`
-/

namespace A274583.P9956743830263433595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A004523 n).toNat + A004523 (n + 1)

end

end A274583.P9956743830263433595

namespace A274583

/-- `A033638(A004523(n))+A004523(n+1)` -/
def P9956743830263433595.Spec : Prop :=
  ∀ n, P9956743830263433595.a n = A274583 n

end A274583

/-! ## A274583.P12512179913024708061

`A082667(n+2)-(A008130(n)+A002264(n))`
-/

namespace A274583.P12512179913024708061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 2) - (A008130 n + A002264 n)

end

end A274583.P12512179913024708061

namespace A274583

/-- `A082667(n+2)-(A008130(n)+A002264(n))` -/
def P12512179913024708061.Spec : Prop :=
  ∀ n, P12512179913024708061.a n = A274583 n

end A274583

/-! ## A274583.P5694407007697163238

`A086161(n+1)+A002264(n+1)*A008620(n)`
-/

namespace A274583.P5694407007697163238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (n + 1) + A002264 (n + 1) * A008620 n

end

end A274583.P5694407007697163238

namespace A274583

/-- `A086161(n+1)+A002264(n+1)*A008620(n)` -/
def P5694407007697163238.Spec : Prop :=
  ∀ n, P5694407007697163238.a n = A274583 n

end A274583

/-! ## A274583.P6608540551483140150

`A204418(n+1)+A008620(n+1)*A008620(n)`
-/

namespace A274583.P6608540551483140150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 1) + A008620 (n + 1) * A008620 n

end

end A274583.P6608540551483140150

namespace A274583

/-- `A204418(n+1)+A008620(n+1)*A008620(n)` -/
def P6608540551483140150.Spec : Prop :=
  ∀ n, P6608540551483140150.a n = A274583 n

end A274583

/-! ## A274583.P6279328009841527107

`A114209(n+2)+A321202(n+3)-A008611(n)`
-/

namespace A274583.P6279328009841527107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 2) + (A321202 (n + 3) - A008611 n)

end

end A274583.P6279328009841527107

namespace A274583

/-- `A114209(n+2)+A321202(n+3)-A008611(n)` -/
def P6279328009841527107.Spec : Prop :=
  ∀ n, P6279328009841527107.a n = A274583 n

end A274583

/-! ## A274583.P17741324310689932376

`record[A008133(n)+1-A103627(n)]`
-/

namespace A274583.P17741324310689932376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n + (1 - A103627 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274583.P17741324310689932376

namespace A274583

/-- `record[A008133(n)+1-A103627(n)]` -/
def P17741324310689932376.Spec : Prop :=
  ∀ n, P17741324310689932376.a n = A274583 n

end A274583

/-! ## A274583.P11443164473501757374

`A173151(A004773(n+1))`
-/

namespace A274583.P11443164473501757374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (A004773 (n + 1)).toNat

end

end A274583.P11443164473501757374

namespace A274583

/-- `A173151(A004773(n+1))` -/
def P11443164473501757374.Spec : Prop :=
  ∀ n, P11443164473501757374.a n = A274583 n

end A274583

/-! ## A274583.P15119841626388967239

`record[A194508(n+3)*A194509(n+1)+1]`
-/

namespace A274583.P15119841626388967239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (n + 3) * A194509 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274583.P15119841626388967239

namespace A274583

/-- `record[A194508(n+3)*A194509(n+1)+1]` -/
def P15119841626388967239.Spec : Prop :=
  ∀ n, P15119841626388967239.a n = A274583 n

end A274583

/-!
# A274584: Composite numbers n such that primitive part of Fibonacci(n) is prime.

The programs for A274584, there is no canonical definition to state claims against.
-/

/-! ## A274584.P3940746333411711842

`lt[A029408(A029390(2*(n+2))), A029431(n+2)]`
-/

namespace A274584.P3940746333411711842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (A029390 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274584.P3940746333411711842

/-!
# A274585: Total number of vertices formed by intersections among sides and straight "chords" in a right triangle when each side is divided by vertices into n equal segments.

The programs for A274585, there is no canonical definition to state claims against.
-/

/-! ## A274585.P4794600423772347536

`A092866(floor(sqrt(n²+1)))+A008486(n)`
-/

namespace A274585.P4794600423772347536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (Nat.sqrt (n ^ 2 + 1)) + A008486 n

end

end A274585.P4794600423772347536

/-! ## A274585.P11125976231472938575

`A092866(round(sqrt(n²+1)))-A112335(n)+2`
-/

namespace A274585.P11125976231472938575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A112335 n + 2

end

end A274585.P11125976231472938575

/-! ## A274585.P10426445231516725067

`A092866(A028310(n))+A028310(3*n)`
-/

namespace A274585.P10426445231516725067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (A028310 n).toNat + A028310 (3 * n)

end

end A274585.P10426445231516725067

/-! ## A274585.P1116788759267910324

`A092866(A065033(2*n))+record[A014682(n)+1]`
-/

namespace A274585.P1116788759267910324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (A065033 (2 * n)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274585.P1116788759267910324

/-! ## A274585.P3512410916173182804

`A092866(n^A178334(n))+record[A014682(n)+1]`
-/

namespace A274585.P3512410916173182804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274585.P3512410916173182804

/-!
# A274586: Number of edges formed by sides and straight "chords" in a right triangle when each side is divided by vertices into n equal segments.

The programs for A274586, there is no canonical definition to state claims against.
-/

/-! ## A274586.P12540549224782250047

`A274585(n+1)+A092867(n+1)-1`
-/

namespace A274586.P12540549224782250047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274585 (n + 1) + A092867 (n + 1) - 1

end

end A274586.P12540549224782250047

/-! ## A274586.P10385054546259103423

`A092866(n+1)+A092867(n+1)+3*(n+1)-1`
-/

namespace A274586.P10385054546259103423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (n + 1) + A092867 (n + 1) + (3 * (n + 1) : ℤ) - 1

end

end A274586.P10385054546259103423

/-! ## A274586.P9314856666675654757

`A092866(n+1)+A092867(n+1)+A016789(n)`
-/

namespace A274586.P9314856666675654757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092866 (n + 1) + (A092867 (n + 1) + A016789 n)

end

end A274586.P9314856666675654757

/-! ## A274586.P14935091241198477535

`A092867(n+1)+A066182(A274585(n+1))`
-/

namespace A274586.P14935091241198477535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092867 (n + 1) + A066182 (A274585 (n + 1)).toNat

end

end A274586.P14935091241198477535

/-! ## A274586.P15572404048464799759

`A367324(∑[n]+3)`
-/

namespace A274586.P15572404048464799759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367324 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A274586.P15572404048464799759

/-!
# A274587: Values of n such that 2*n-1 and 4*n-1 are both triangular numbers.

The programs for A274587, there is no canonical definition to state claims against.
-/

/-! ## A274587.P13174501050960147149

`∩[A174114(n+1), A213399(n)]`
-/

namespace A274587.P13174501050960147149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274587.P13174501050960147149

/-!
# A274588: Values of n such that 2*n-1 and 7*n-1 are both triangular numbers.

The programs for A274588, there is no canonical definition to state claims against.
-/

/-! ## A274588.P14985689040191879004

`A253447(n+1)²%A041096(2*n)`
-/

namespace A274588.P14985689040191879004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253447 (n + 1) ^ 2) (A041096 (2 * n))

end

end A274588.P14985689040191879004

/-! ## A274588.P3691582936222693066

`ceil(A157877(n+1)/2)²%A041096(2*n)`
-/

namespace A274588.P3691582936222693066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(A157877 (n + 1) : ℚ) / 2⌉ ^ 2) (A041096 (2 * n))

end

end A274588.P3691582936222693066

/-! ## A274588.P738171185925132960

`round(A041419(2*n)/2)²%A041096(2*n)`
-/

namespace A274588.P738171185925132960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A041419 (2 * n) : ℚ) / 2) ^ 2) (A041096 (2 * n))

end

end A274588.P738171185925132960

/-! ## A274588.P8600994532769495016

`((A041097(2*n)+1)/2)²%A041096(2*n)`
-/

namespace A274588.P8600994532769495016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A041097 (2 * n) + 1 : ℚ) / 2) ^ 2)) (A041096 (2 * n))

end

end A274588.P8600994532769495016

/-!
# A274589: Primes not of the form (prime+1)*2^k-1 with k>=1.

The programs for A274589, there is no canonical definition to state claims against.
-/

/-! ## A274589.P11131456197870614235

`p?[comp[A266233(n+1)]]`
-/

namespace A274589.P11131456197870614235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A274589.P11131456197870614235

/-! ## A274589.P12335025089921079534

`eq[A007814(n+1), A040081(A000265(n+1))]`
-/

namespace A274589.P12335025089921079534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274589.P12335025089921079534

/-! ## A274589.P4944399654913468119

`eq[n, A057026(A025480(n))]`
-/

namespace A274589.P4944399654913468119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057026 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274589.P4944399654913468119

/-! ## A274589.P7418349631761402403

`record[A038699(A057024(n+1))]`
-/

namespace A274589.P7418349631761402403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (A057024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274589.P7418349631761402403

/-! ## A274589.P2354228363983882892

`record[A038699(A000265(A008864(n+1)))]`
-/

namespace A274589.P2354228363983882892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (A000265 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274589.P2354228363983882892

/-!
# A274590: Numbers n such that n^2 - 1 is the average of two nonzero squares in exactly one way.

The programs for A274590, there is no canonical definition to state claims against.
-/

/-! ## A274590.P1228594395395140463

`eq[-(-1)^n, A025426(A001971(n))]`
-/

namespace A274590.P1228594395395140463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A001971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274590.P1228594395395140463

/-! ## A274590.P8685592539018250626

`eq[A025426(A001971(n)), A040019(n)]`
-/

namespace A274590.P8685592539018250626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A001971 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274590.P8685592539018250626

/-! ## A274590.P203572672239314955

`eq[A025426(A008795(n)), A158416(n)]`
-/

namespace A274590.P203572672239314955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A008795 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274590.P203572672239314955

/-! ## A274590.P13012918283769048735

`eq[A025441(A008795(n)), A040921(n)]`
-/

namespace A274590.P13012918283769048735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A008795 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274590.P13012918283769048735

/-! ## A274590.P17642202363805502642

`eq[A025441(A001971(n)), A176289(n)]`
-/

namespace A274590.P17642202363805502642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A001971 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274590.P17642202363805502642

/-!
# A274592: Sum of n-th powers of the roots of x^3 -31* x^2 - 25*x - 1.

The programs for A274592, there is no canonical definition to state claims against.
-/

/-! ## A274592.P778842815202928489

`A215828(3*n)`
-/

namespace A274592.P778842815202928489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215828 (3 * n)

end

end A274592.P778842815202928489

/-! ## A274592.P10261178989111603254

`or(1, A215828(A008585(n)))`
-/

namespace A274592.P10261178989111603254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215828 (A008585 n).toNat)

end

end A274592.P10261178989111603254

/-! ## A274592.P475109215878172833

`or(2, A215828(A008486(n)))`
-/

namespace A274592.P475109215878172833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A215828 (A008486 n).toNat)

end

end A274592.P475109215878172833

/-! ## A274592.P13084811947335926617

`record[A215828(n)/A169609(n)]`
-/

namespace A274592.P13084811947335926617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215828 n : ℚ) / (A169609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274592.P13084811947335926617

/-! ## A274592.P13025470728039008099

`record[A215828(n)^A049347(n)]`
-/

namespace A274592.P13025470728039008099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215828 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274592.P13025470728039008099

/-! ## A274592.P5944734741960542709

`A215828(A008486(n))+A000038(n)`
-/

namespace A274592.P5944734741960542709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215828 (A008486 n).toNat + A000038 n

end

end A274592.P5944734741960542709

/-!
# A274593: a(0) = 0; thereafter, a(2*n+1) = a(n)+2*n+1, otherwise a(n) = n.

The programs for A274593, the canonical program `A274593.P8766669261268767539` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274593 has offset 0).

The definition of A274593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274593.P9322086538797334652

`2*n+1-A007814(n+1)-A000265(n+1)`
-/

namespace A274593.P9322086538797334652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A007814 (n + 1) - A000265 (n + 1)

end

end A274593.P9322086538797334652

namespace A274593

/-- `2*n+1-A007814(n+1)-A000265(n+1)` -/
def P9322086538797334652.Spec : Prop :=
  ∀ n, P9322086538797334652.a n = A274593 n

end A274593

/-! ## A274593.P8766669261268767539

`(2^A001511(n+1)-1)*(2*A025480(n)+1)-A001511(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274593

/-- `(2^A001511(n+1)-1)*(2*A025480(n)+1)-A001511(n+1)` -/
def P8766669261268767539.Spec : Prop :=
  ∀ n, P8766669261268767539.a n = (A274593 n : ℚ)

end A274593

/-! ## A274593.P4689971235566295705

`a(n%∑[n%2])+n` with `a(0)=0`
-/

namespace A274593.P4689971235566295705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n % (∑ j ∈ Finset.range (n + 1), f1 j)) + n

end

end A274593.P4689971235566295705

namespace A274593

/-- `a(n%∑[n%2])+n` -/
def P4689971235566295705.Spec : Prop :=
  ∀ n, (P4689971235566295705.a n : ℤ) = A274593 n

end A274593

/-! ## A274593.P12971460602009506350

`2*n-A089265(n+1)`
-/

namespace A274593.P12971460602009506350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A089265 (n + 1)

end

end A274593.P12971460602009506350

namespace A274593

/-- `2*n-A089265(n+1)` -/
def P12971460602009506350.Spec : Prop :=
  ∀ n, P12971460602009506350.a n = A274593 n

end A274593

/-! ## A274593.P7976108717859560813

`Δ[n²]-A119674(n+1)`
-/

namespace A274593.P7976108717859560813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A119674 (n + 1)

end

end A274593.P7976108717859560813

namespace A274593

/-- `Δ[n²]-A119674(n+1)` -/
def P7976108717859560813.Spec : Prop :=
  ∀ n, P7976108717859560813.a n = A274593 n

end A274593

/-! ## A274593.P14445301774691976356

`A101921(n+1)-floor(n/and(n+1, -(n+1)))`
-/

namespace A274593.P14445301774691976356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101921 (n + 1) - ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A274593.P14445301774691976356

namespace A274593

/-- `A101921(n+1)-floor(n/and(n+1, -(n+1)))` -/
def P14445301774691976356.Spec : Prop :=
  ∀ n, P14445301774691976356.a n = A274593 n

end A274593

/-! ## A274593.P1823745652577114955

`A101921(n+1)-A153733(n)`
-/

namespace A274593.P1823745652577114955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101921 (n + 1) - A153733 n

end

end A274593.P1823745652577114955

namespace A274593

/-- `A101921(n+1)-A153733(n)` -/
def P1823745652577114955.Spec : Prop :=
  ∀ n, P1823745652577114955.a n = A274593 n

end A274593

/-! ## A274593.P2778748251445554486

`A005187(n)-A274716(n+1)`
-/

namespace A274593.P2778748251445554486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A274716 (n + 1)

end

end A274593.P2778748251445554486

namespace A274593

/-- `A005187(n)-A274716(n+1)` -/
def P2778748251445554486.Spec : Prop :=
  ∀ n, P2778748251445554486.a n = A274593 n

end A274593

/-! ## A274593.P5016771969072802569

`A129527(n+1)-A001511(n+1)`
-/

namespace A274593.P5016771969072802569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1) - A001511 (n + 1)

end

end A274593.P5016771969072802569

namespace A274593

/-- `A129527(n+1)-A001511(n+1)` -/
def P5016771969072802569.Spec : Prop :=
  ∀ n, P5016771969072802569.a n = A274593 n

end A274593

/-! ## A274593.P10712667836974417938

`A084432(n+1)-A366839(n+1)`
-/

namespace A274593.P10712667836974417938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084432 (n + 1) - A366839 (n + 1)

end

end A274593.P10712667836974417938

namespace A274593

/-- `A084432(n+1)-A366839(n+1)` -/
def P10712667836974417938.Spec : Prop :=
  ∀ n, P10712667836974417938.a n = A274593 n

end A274593

/-! ## A274593.P6456537519447555440

`A129527(n+1)-(A007814(n+1)+1)`
-/

namespace A274593.P6456537519447555440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1) - (A007814 (n + 1) + 1)

end

end A274593.P6456537519447555440

namespace A274593

/-- `A129527(n+1)-(A007814(n+1)+1)` -/
def P6456537519447555440.Spec : Prop :=
  ∀ n, P6456537519447555440.a n = A274593 n

end A274593

/-! ## A274593.P202453229065142104

`A331739(n+1)-A007814(n+1)+n`
-/

namespace A274593.P202453229065142104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) - A007814 (n + 1) + (n : ℤ)

end

end A274593.P202453229065142104

namespace A274593

/-- `A331739(n+1)-A007814(n+1)+n` -/
def P202453229065142104.Spec : Prop :=
  ∀ n, P202453229065142104.a n = A274593 n

end A274593

/-! ## A274593.P15840402623955072983

`∑{d}[n+1, A065608(#)*A087003((n+1)/#)]`
-/

namespace A274593.P15840402623955072983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065608 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A274593.P15840402623955072983

namespace A274593

/-- `∑{d}[n+1, A065608(#)*A087003((n+1)/#)]` -/
def P15840402623955072983.Spec : Prop :=
  ∀ n, P15840402623955072983.a n = A274593 n

end A274593

/-! ## A274593.P8183969896430146600

`∑{d}[n+1, A069914(#)*A326938((n+1)/#)]`
-/

namespace A274593.P8183969896430146600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069914 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A274593.P8183969896430146600

namespace A274593

/-- `∑{d}[n+1, A069914(#)*A326938((n+1)/#)]` -/
def P8183969896430146600.Spec : Prop :=
  ∀ n, P8183969896430146600.a n = A274593 n

end A274593

/-! ## A274593.P14517636291921945592

`∑{d}[n+1, A069913(#)*A327276((n+1)/#)]`
-/

namespace A274593.P14517636291921945592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069913 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A274593.P14517636291921945592

namespace A274593

/-- `∑{d}[n+1, A069913(#)*A327276((n+1)/#)]` -/
def P14517636291921945592.Spec : Prop :=
  ∀ n, P14517636291921945592.a n = A274593 n

end A274593

/-! ## A274593.P15950453199236772940

`∑{d}[n+1, A094471(#)*A349341((n+1)/#)]`
-/

namespace A274593.P15950453199236772940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A094471 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A274593.P15950453199236772940

namespace A274593

/-- `∑{d}[n+1, A094471(#)*A349341((n+1)/#)]` -/
def P15950453199236772940.Spec : Prop :=
  ∀ n, P15950453199236772940.a n = A274593 n

end A274593

/-! ## A274593.P12507230200293503247

`A005187(n)-A011371(floor(n/and(n+1, -(n+1))))`
-/

namespace A274593.P12507230200293503247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A011371 ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋.toNat

end

end A274593.P12507230200293503247

namespace A274593

/-- `A005187(n)-A011371(floor(n/and(n+1, -(n+1))))` -/
def P12507230200293503247.Spec : Prop :=
  ∀ n, P12507230200293503247.a n = A274593 n

end A274593

/-! ## A274593.P14433045471321190844

`A005187(n)-A011371((n+1)/and(n+1, -(n+1)))`
-/

namespace A274593.P14433045471321190844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A011371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A274593.P14433045471321190844

namespace A274593

/-- `A005187(n)-A011371((n+1)/and(n+1, -(n+1)))` -/
def P14433045471321190844.Spec : Prop :=
  ∀ n, P14433045471321190844.a n = A274593 n

end A274593

/-! ## A274593.P14723439516502571019

`A005187(n)-A005187(A025480(n))`
-/

namespace A274593.P14723439516502571019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A005187 (A025480 n).toNat

end

end A274593.P14723439516502571019

namespace A274593

/-- `A005187(n)-A005187(A025480(n))` -/
def P14723439516502571019.Spec : Prop :=
  ∀ n, P14723439516502571019.a n = A274593 n

end A274593

/-! ## A274593.P5247058346842341034

`A004277(n)-A028310(A089265(n+1))`
-/

namespace A274593.P5247058346842341034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A028310 (A089265 (n + 1)).toNat

end

end A274593.P5247058346842341034

namespace A274593

/-- `A004277(n)-A028310(A089265(n+1))` -/
def P5247058346842341034.Spec : Prop :=
  ∀ n, P5247058346842341034.a n = A274593 n

end A274593

/-!
# A274594: Number of ways to remove n oranges from an infinite stack of oranges whose m-th layer is an m X (m+1) rectangle.

The programs for A274594, there is no canonical definition to state claims against.
-/

/-! ## A274594.P15036081704958585107

`A121261(A011782(n))+∑[A000740(n+1)]`
-/

namespace A274594.P15036081704958585107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121261 (A011782 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274594.P15036081704958585107

/-! ## A274594.P15246860913266165652

`∑[A342194(2^n)]`
-/

namespace A274594.P15246860913266165652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274594.P15246860913266165652

/-! ## A274594.P223055320317072629

`A026819(A092688(n))`
-/

namespace A274594.P223055320317072629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A092688 n).toNat

end

end A274594.P223055320317072629

/-!
# A274595: Numbers n such that n^2 + 2 is the sum of two nonzero squares.

The programs for A274595, there is no canonical definition to state claims against.
-/

/-! ## A274595.P3203139443203742730

`sqrt(A329170(n+1)-2)`
-/

namespace A274595.P3203139443203742730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A329170 (n + 1) - 2 : ℝ)

end

end A274595.P3203139443203742730

/-! ## A274595.P9112993074563731074

`A087156(floor(sqrt(A329170(n+1))))`
-/

namespace A274595.P9112993074563731074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (Int.sqrt (A329170 (n + 1))).toNat

end

end A274595.P9112993074563731074

/-! ## A274595.P6173977683445078396

`A115659(floor(sqrt(A329170(n+1))))`
-/

namespace A274595.P6173977683445078396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115659 (Int.sqrt (A329170 (n + 1))).toNat

end

end A274595.P6173977683445078396

/-! ## A274595.P1158373705055757899

`A184985(floor(sqrt(A329170(n+1))))`
-/

namespace A274595.P1158373705055757899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (Int.sqrt (A329170 (n + 1))).toNat

end

end A274595.P1158373705055757899

/-! ## A274595.P12768793978367247038

`A237420(floor(sqrt(A329170(n+1))))`
-/

namespace A274595.P12768793978367247038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (Int.sqrt (A329170 (n + 1))).toNat

end

end A274595.P12768793978367247038

/-!
# A274596: Number of ways to remove n oranges from an infinite stack of oranges whose m-th layer is an m X (m+2) rectangle.

The programs for A274596, there is no canonical definition to state claims against.
-/

/-! ## A274596.P2792463686756411580

`A106733(A141253(n+2))`
-/

namespace A274596.P2792463686756411580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (A141253 (n + 2)).toNat

end

end A274596.P2792463686756411580

/-! ## A274596.P13702693235978113828

`A005041(A052913(n))+A002266(n)`
-/

namespace A274596.P13702693235978113828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A052913 n).toNat + A002266 n

end

end A274596.P13702693235978113828

/-! ## A274596.P2022255543314343179

`A282318(n)+A262689(A085373(n))`
-/

namespace A274596.P2022255543314343179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n + A262689 (A085373 n).toNat

end

end A274596.P2022255543314343179

/-!
# A274597: Number of ways to remove n oranges from an infinite stack of oranges whose m-th layer is an m X (m+3) rectangle.

The programs for A274597, there is no canonical definition to state claims against.
-/

/-! ## A274597.P9180009437032223268

`A035313(n)+A000120(A001563(n))`
-/

namespace A274597.P9180009437032223268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035313 n + A000120 (A001563 n).toNat

end

end A274597.P9180009437032223268

/-! ## A274597.P16159778643612936458

`A035313(n)+A001221(A098409(n))`
-/

namespace A274597.P16159778643612936458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035313 n + A001221 (A098409 n).toNat

end

end A274597.P16159778643612936458

/-! ## A274597.P11613787449619682939

`A341675(A214385(n+1))+A035313(n)`
-/

namespace A274597.P11613787449619682939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A214385 (n + 1)).toNat + A035313 n

end

end A274597.P11613787449619682939

/-!
# A274598: Number of ways to remove n oranges from an infinite stack of oranges whose m-th layer is an m X (m+4) rectangle.

The programs for A274598, there is no canonical definition to state claims against.
-/

/-! ## A274598.P5299656621570564877

`∑[A331935(∑[A006884(n+1)])]`
-/

namespace A274598.P5299656621570564877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006884 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274598.P5299656621570564877

/-! ## A274598.P15493516976262268870

`A080595(A081188(n)-A000295(n))`
-/

namespace A274598.P15493516976262268870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A081188 n - A000295 n).toNat

end

end A274598.P15493516976262268870

/-!
# A274599: Number of ways to remove n oranges from an infinite stack of oranges whose m-th layer is an m X (m+5) rectangle.

The programs for A274599, there is no canonical definition to state claims against.
-/

/-! ## A274599.P7485194122841123727

`floor(A110656(A000713(2*n+3))/ϕ)`
-/

namespace A274599.P7485194122841123727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110656 (A000713 (2 * n + 3)).toNat : ℝ) / Real.goldenRatio⌋

end

end A274599.P7485194122841123727

