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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268400: Number of North-East lattice paths from (0,0) to (n,n) that bounce off the diagonal y = x to the right exactly twice.

The programs for A268400, there is no canonical definition to state claims against.
-/

/-! ## A268400.P12619180231541031691

`A188513(∑[n+2]+3)`
-/

namespace A268400.P12619180231541031691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188513 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A268400.P12619180231541031691

/-! ## A268400.P16757674631729668909

`A014245(A171477(n)+1)`
-/

namespace A268400.P16757674631729668909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A171477 n + 1).toNat

end

end A268400.P16757674631729668909

/-!
# A268401: Number of North-East lattice paths from (0,0) to (n,n) that bounce off the diagonal y = x to the right exactly three times.

The programs for A268401, there is no canonical definition to state claims against.
-/

/-! ## A268401.P4734234483849504394

`∑[A000463(∑[A272050(n)])]`
-/

namespace A268401.P4734234483849504394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272050 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268401.P4734234483849504394

/-! ## A268401.P10936332142351367965

`∑[A001057(∑[A272050(n)])]`
-/

namespace A268401.P10936332142351367965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272050 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268401.P10936332142351367965

/-!
# A268402: Number of North-East lattice paths from (0,0) to (n,n) that bounce off the diagonal y = x to the right exactly four times.

The programs for A268402, there is no canonical definition to state claims against.
-/

/-! ## A268402.P9094142053923360378

`A152123(n+3)-A096231(A330394(n))`
-/

namespace A268402.P9094142053923360378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152123 (n + 3) - A096231 (A330394 n).toNat

end

end A268402.P9094142053923360378

/-!
# A268403: Partial sums of A080715.

The programs for A268403, there is no canonical definition to state claims against.
-/

/-! ## A268403.P14239374015864427145

`∑[A080715(n+1)]`
-/

namespace A268403.P14239374015864427145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P14239374015864427145

/-! ## A268403.P13309643336122892213

`∑[record[A080715(A328399(n))]]`
-/

namespace A268403.P13309643336122892213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P13309643336122892213

/-! ## A268403.P15378842843932453882

`∑[record[A080715(A344180(n))]]`
-/

namespace A268403.P15378842843932453882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P15378842843932453882

/-! ## A268403.P4840182726082561490

`∑[record[A080715(A152271(n))]]`
-/

namespace A268403.P4840182726082561490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P4840182726082561490

/-! ## A268403.P14293407579475563933

`∑[record[A080715(A117910(n))]]`
-/

namespace A268403.P14293407579475563933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P14293407579475563933

/-! ## A268403.P8622786854548472529

`∑[record[A080715(A286552(n))]]`
-/

namespace A268403.P8622786854548472529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (A286552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P8622786854548472529

/-! ## A268403.P1474650323463031964

`∑[record[A080715(A262519(n))]]`
-/

namespace A268403.P1474650323463031964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P1474650323463031964

/-! ## A268403.P2454816530061938047

`∑[A000027(A080715(-xor(n, -1)))]`
-/

namespace A268403.P2454816530061938047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A080715 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268403.P2454816530061938047

/-! ## A268403.P16087593930355971651

`a(n-1)+A080715(n+1)%A024023(n)` with `a(0)=1, a(1)=3`
-/

namespace A268403.P16087593930355971651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + Int.tmod (A080715 (n + 1)) (A024023 n)

end

end A268403.P16087593930355971651

/-! ## A268403.P3640944934291758965

`A000027(a(n-1))+A080715(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A268403.P3640944934291758965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000027 (a (n - 1)).toNat + A080715 (n + 1)

end

end A268403.P3640944934291758965

/-!
# A268404: Number of fixed polyominoes that have a width and height of n.

The programs for A268404, there is no canonical definition to state claims against.
-/

/-! ## A268404.P7541493741450004236

`A292357(2*(n+1)²-2*(n+1)+1)`
-/

namespace A268404.P7541493741450004236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A268404.P7541493741450004236

/-! ## A268404.P13230278179530504494

`or(1, A292357(A001844(n)))`
-/

namespace A268404.P13230278179530504494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A292357 (A001844 n).toNat)

end

end A268404.P13230278179530504494

/-! ## A268404.P2348344518550855576

`record[A003982(n)*A292357(n+1)]`
-/

namespace A268404.P2348344518550855576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A292357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268404.P2348344518550855576

/-! ## A268404.P1856441332303492127

`record[gcd(A114327(n), A292357(n+1))]`
-/

namespace A268404.P1856441332303492127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A292357 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268404.P1856441332303492127

/-! ## A268404.P3575771290565836295

`record[root(A292357(n+1), A059897(n+1))]`
-/

namespace A268404.P3575771290565836295
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A292357 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268404.P3575771290565836295

/-!
# A268407: Number of North-East lattice paths that do not bounce off the diagonal y = x to the right.

The programs for A268407, the canonical program `A268407.P14441244389955032681` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268407 has offset 0).

The definition of A268407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268407.P991918940715667244

`A109262(n)+A081696(n)`
-/

namespace A268407.P991918940715667244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109262 n + A081696 n

end

end A268407.P991918940715667244

namespace A268407

/-- `A109262(n)+A081696(n)` -/
def P991918940715667244.Spec : Prop :=
  ∀ n, P991918940715667244.a n = A268407 n

theorem P991918940715667244.correct : P991918940715667244.Spec := by
  intro n
  simp only [A268407, Nat.add_sub_cancel, A268407.P991918940715667244.a, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A081696, A081696.P144682512311677634.a, A109262, A109262.P3635105755243385556.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A000984, A000984.P7946844122574426130.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268407

/-! ## A268407.P14441244389955032681

`A109263(n+1)+A000108(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A268407

/-- `A109263(n+1)+A000108(n)` -/
def P14441244389955032681.Spec : Prop :=
  ∀ n, P14441244389955032681.a n = A268407 n

theorem P14441244389955032681.correct : P14441244389955032681.Spec := by
  intro n
  simp only [A268407]

end A268407

/-! ## A268407.P11521754506330877615

`A109262(n+1)+A109262(n)-A109263(n+1)`
-/

namespace A268407.P11521754506330877615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109262 (n + 1) + (A109262 n - A109263 (n + 1))

end

end A268407.P11521754506330877615

namespace A268407

/-- `A109262(n+1)+A109262(n)-A109263(n+1)` -/
def P11521754506330877615.Spec : Prop :=
  ∀ n, P11521754506330877615.a n = A268407 n

end A268407

/-! ## A268407.P2429253225505349079

`A000984(n)-A010756(3*n)`
-/

namespace A268407.P2429253225505349079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A010756 (3 * n)

end

end A268407.P2429253225505349079

namespace A268407

/-- `A000984(n)-A010756(3*n)` -/
def P2429253225505349079.Spec : Prop :=
  ∀ n, P2429253225505349079.a n = A268407 n

end A268407

/-! ## A268407.P15572963583630851259

`record[A126869(n)]-A010756(A008486(n))`
-/

namespace A268407.P15572963583630851259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010756 (A008486 n).toNat

end

end A268407.P15572963583630851259

namespace A268407

/-- `record[A126869(n)]-A010756(A008486(n))` -/
def P15572963583630851259.Spec : Prop :=
  ∀ n, P15572963583630851259.a n = A268407 n

end A268407

/-! ## A268407.P1500666981240145562

`A126869(2*n)-A010756(A008486(n))`
-/

namespace A268407.P1500666981240145562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A010756 (A008486 n).toNat

end

end A268407.P1500666981240145562

namespace A268407

/-- `A126869(2*n)-A010756(A008486(n))` -/
def P1500666981240145562.Spec : Prop :=
  ∀ n, P1500666981240145562.a n = A268407 n

end A268407

/-! ## A268407.P3294887290275959306

`A028329(n)-A108081(n)`
-/

namespace A268407.P3294887290275959306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A108081 n

end

end A268407.P3294887290275959306

namespace A268407

/-- `A028329(n)-A108081(n)` -/
def P3294887290275959306.Spec : Prop :=
  ∀ n, P3294887290275959306.a n = A268407 n

theorem P3294887290275959306.correct : P3294887290275959306.Spec := by
  intro n
  simp only [A268407, Nat.add_sub_cancel, A268407.P3294887290275959306.a, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A028329, A028329.P2723209719397665586.a, A108081, A108081.P10199581490510874834.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A000984, A000984.P7946844122574426130.a, A081696, A081696.P144682512311677634.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268407

/-! ## A268407.P3078548453932232381

`2*A000984(n)-A108081(n)`
-/

namespace A268407.P3078548453932232381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A108081 n

end

end A268407.P3078548453932232381

namespace A268407

/-- `2*A000984(n)-A108081(n)` -/
def P3078548453932232381.Spec : Prop :=
  ∀ n, P3078548453932232381.a n = A268407 n

theorem P3078548453932232381.correct : P3078548453932232381.Spec := by
  intro n
  simp only [A268407, Nat.add_sub_cancel, A268407.P3078548453932232381.a, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A028329, A028329.P2723209719397665586.a, A081696, A081696.P144682512311677634.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268407

/-! ## A268407.P9135667186071118385

`A000984(n)+A176085(n)-A257838(n)`
-/

namespace A268407.P9135667186071118385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A176085 n - A257838 n)

end

end A268407.P9135667186071118385

namespace A268407

/-- `A000984(n)+A176085(n)-A257838(n)` -/
def P9135667186071118385.Spec : Prop :=
  ∀ n, P9135667186071118385.a n = A268407 n

theorem P9135667186071118385.correct : P9135667186071118385.Spec := by
  intro n
  simp only [A268407, Nat.add_sub_cancel, A268407.P9135667186071118385.a, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A000984, A000984.P7946844122574426130.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A081696, A081696.P144682512311677634.a, A108081, A108081.P10199581490510874834.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A268407

/-! ## A268407.P12237517244024476772

`A109267(∑[n])+A109262(n)`
-/

namespace A268407.P12237517244024476772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 (∑ j ∈ Finset.range (n + 1), f1 j) + A109262 n

end

end A268407.P12237517244024476772

namespace A268407

/-- `A109267(∑[n])+A109262(n)` -/
def P12237517244024476772.Spec : Prop :=
  ∀ n, P12237517244024476772.a n = A268407 n

end A268407

/-!
# A268409: a(n) = 4*a(n - 1) + 2*a(n - 2) for n>1, a(0)=3, a(1)=5.

The programs for A268409, the canonical program `A268409.P9332720077736115415` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268409 has offset 0).

The definition of A268409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*a(n-2)` (program `A268409.P9332720077736115415`, by `A268409.P9332720077736115415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268409.P9332720077736115415

`4*a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268409

/-- `4*a(n-1)+2*a(n-2)` -/
def P9332720077736115415.Spec : Prop :=
  ∀ n, (P9332720077736115415.a n : ℤ) = A268409 n

theorem P9332720077736115415.correct : P9332720077736115415.Spec := by
  intro n
  simp only [A268409]

end A268409

/-! ## A268409.P8499285578696834121

`3*A090017(n+1)-7*A090017(n)`
-/

namespace A268409.P8499285578696834121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090017 (n + 1) - 7 * A090017 n

end

end A268409.P8499285578696834121

namespace A268409

/-- `3*A090017(n+1)-7*A090017(n)` -/
def P8499285578696834121.Spec : Prop :=
  ∀ n, P8499285578696834121.a n = A268409 n

end A268409

/-! ## A268409.P3214985013900937670

`((18+sqrt(6))*(2-sqrt(6))^n-(sqrt(6)-18)*(2+sqrt(6))^n)/12`
-/

namespace A268409.P3214985013900937670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((18 + Real.sqrt (6 : ℝ)) * (2 - Real.sqrt (6 : ℝ)) ^ n - (Real.sqrt (6 : ℝ) - 18) * (2 + Real.sqrt (6 : ℝ)) ^ n) / 12

end

end A268409.P3214985013900937670

namespace A268409

/-- `((18+sqrt(6))*(2-sqrt(6))^n-(sqrt(6)-18)*(2+sqrt(6))^n)/12` -/
def P3214985013900937670.Spec : Prop :=
  ∀ n, P3214985013900937670.a n = (A268409 n : ℝ)

theorem P3214985013900937670.correct : P3214985013900937670.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A268409, Nat.add_sub_cancel, A268409.P3214985013900937670.a, A268409.P9332720077736115415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A268409, Nat.add_sub_cancel, A268409.P3214985013900937670.a, A268409.P9332720077736115415.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A268409

/-! ## A268409.P6211080860051024467

`ogf((-3+7x)/(-1+4x+2x^2))`
-/

namespace A268409.P6211080860051024467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -4, -2] n

end

end A268409.P6211080860051024467

namespace A268409

/-- `ogf((-3+7x)/(-1+4x+2x^2))` -/
def P6211080860051024467.Spec : Prop :=
  ∀ n, P6211080860051024467.a n = A268409 n

end A268409

/-! ## A268409.P10739602904609689029

`2*(2-(2*(1-a(n-1))-a(n-2)))` with `a(0)=3, a(1)=5`
-/

namespace A268409.P10739602904609689029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  2 * (2 - (2 * (1 - a (n - 1)) - a (n - 2)))

end

end A268409.P10739602904609689029

namespace A268409

/-- `2*(2-(2*(1-a(n-1))-a(n-2)))` -/
def P10739602904609689029.Spec : Prop :=
  ∀ n, P10739602904609689029.a n = A268409 n

end A268409

/-! ## A268409.P15784833927321528037

`3*A084059(n)-A090017(n)`
-/

namespace A268409.P15784833927321528037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A084059 n - A090017 n

end

end A268409.P15784833927321528037

namespace A268409

/-- `3*A084059(n)-A090017(n)` -/
def P15784833927321528037.Spec : Prop :=
  ∀ n, P15784833927321528037.a n = A268409 n

end A268409

/-! ## A268409.P511561653331752947

`Δ[A123348(n)]-4*A090017(n)`
-/

namespace A268409.P511561653331752947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4 * A090017 n

end

end A268409.P511561653331752947

namespace A268409

/-- `Δ[A123348(n)]-4*A090017(n)` -/
def P511561653331752947.Spec : Prop :=
  ∀ n, P511561653331752947.a n = A268409 n

end A268409

/-!
# A268410: a(n) = a(n - 1) + a(n - 2) + a(n - 3) for n>2, a(0)=5, a(1)=7, a(2)=9.

The programs for A268410, the canonical program `A268410.P11526591654573897075` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268410 has offset 0).

The definition of A268410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A268410.P11526591654573897075`, by `A268410.P11526591654573897075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268410.P11526591654573897075

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=5, a(1)=7, a(2)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268410

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P11526591654573897075.Spec : Prop :=
  ∀ n, (P11526591654573897075.a n : ℤ) = A268410 n

theorem P11526591654573897075.correct : P11526591654573897075.Spec := by
  intro n
  simp only [A268410]

end A268410

/-! ## A268410.P5284686794340173512

`ogf((-5-2x+3x^2)/(-1+x+x^2+x^3))`
-/

namespace A268410.P5284686794340173512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, -3] [1, -1, -1, -1] n

end

end A268410.P5284686794340173512

namespace A268410

/-- `ogf((-5-2x+3x^2)/(-1+x+x^2+x^3))` -/
def P5284686794340173512.Spec : Prop :=
  ∀ n, P5284686794340173512.a n = A268410 n

end A268410

/-! ## A268410.P14142650932853768038

`A280308(n)+A145027(n+1)`
-/

namespace A268410.P14142650932853768038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280308 n + A145027 (n + 1)

end

end A268410.P14142650932853768038

namespace A268410

/-- `A280308(n)+A145027(n+1)` -/
def P14142650932853768038.Spec : Prop :=
  ∀ n, P14142650932853768038.a n = A268410 n

end A268410

/-! ## A268410.P10420163879785639030

`A001644(n)+2*A214825(n)`
-/

namespace A268410.P10420163879785639030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + 2 * A214825 n

end

end A268410.P10420163879785639030

namespace A268410

/-- `A001644(n)+2*A214825(n)` -/
def P10420163879785639030.Spec : Prop :=
  ∀ n, P10420163879785639030.a n = A268410 n

end A268410

/-! ## A268410.P9006973052588657638

`2*A280308(n)-A000213(n)`
-/

namespace A268410.P9006973052588657638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280308 n - A000213 n

end

end A268410.P9006973052588657638

namespace A268410

/-- `2*A280308(n)-A000213(n)` -/
def P9006973052588657638.Spec : Prop :=
  ∀ n, P9006973052588657638.a n = A268410 n

end A268410

/-! ## A268410.P11627006916173829699

`A000213(n)+2*A145027(n+1)`
-/

namespace A268410.P11627006916173829699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + 2 * A145027 (n + 1)

end

end A268410.P11627006916173829699

namespace A268410

/-- `A000213(n)+2*A145027(n+1)` -/
def P11627006916173829699.Spec : Prop :=
  ∀ n, P11627006916173829699.a n = A268410 n

end A268410

/-! ## A268410.P6355585482509980882

`A073728(n)+A073728(n)-A141523(n+1)`
-/

namespace A268410.P6355585482509980882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073728 n + (A073728 n - A141523 (n + 1))

end

end A268410.P6355585482509980882

namespace A268410

/-- `A073728(n)+A073728(n)-A141523(n+1)` -/
def P6355585482509980882.Spec : Prop :=
  ∀ n, P6355585482509980882.a n = A268410 n

end A268410

/-! ## A268410.P9163016488142418690

`A214827(n+1)+A214825(n)-A141523(n+1)`
-/

namespace A268410.P9163016488142418690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 (n + 1) + (A214825 n - A141523 (n + 1))

end

end A268410.P9163016488142418690

namespace A268410

/-- `A214827(n+1)+A214825(n)-A141523(n+1)` -/
def P9163016488142418690.Spec : Prop :=
  ∀ n, P9163016488142418690.a n = A268410 n

end A268410

/-! ## A268410.P3400604328336371318

`A214828(n+1)+A276658(n)-A275778(n+1)`
-/

namespace A268410.P3400604328336371318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 (n + 1) + (A276658 n - A275778 (n + 1))

end

end A268410.P3400604328336371318

namespace A268410

/-- `A214828(n+1)+A276658(n)-A275778(n+1)` -/
def P3400604328336371318.Spec : Prop :=
  ∀ n, P3400604328336371318.a n = A268410 n

end A268410

/-!
# A268411: Parity of number of runs of 1's in binary representation of n.

The programs for A268411, the canonical program `A268411.P10692776799510792898` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268411 has offset 0).

The definition of A268411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268411.P16528911258908594222

`A092248(A005940(1+n))`
-/

namespace A268411.P16528911258908594222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (A005940 (1 + n)).toNat

end

end A268411.P16528911258908594222

namespace A268411

/-- `A092248(A005940(1+n))` -/
def P16528911258908594222.Spec : Prop :=
  ∀ n, P16528911258908594222.a n = A268411 n

end A268411

/-! ## A268411.P10692776799510792898

`floor(∑[Δ[xor(n, 2*n-1)]%2]/2)%2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268411

/-- `floor(∑[Δ[xor(n, 2*n-1)]%2]/2)%2` -/
def P10692776799510792898.Spec : Prop :=
  ∀ n, P10692776799510792898.a n = A268411 n

theorem P10692776799510792898.correct : P10692776799510792898.Spec := by
  intro n
  simp only [A268411]

end A268411

/-! ## A268411.P11990317722995750697

`A069010(n)%2`
-/

namespace A268411.P11990317722995750697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n) 2

end

end A268411.P11990317722995750697

namespace A268411

/-- `A069010(n)%2` -/
def P11990317722995750697.Spec : Prop :=
  ∀ n, P11990317722995750697.a n = A268411 n

end A268411

/-! ## A268411.P2276793395904693958

`A264596(n)%2`
-/

namespace A268411.P2276793395904693958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264596 n) 2

end

end A268411.P2276793395904693958

namespace A268411

/-- `A264596(n)%2` -/
def P2276793395904693958.Spec : Prop :=
  ∀ n, P2276793395904693958.a n = A268411 n

end A268411

/-! ## A268411.P37613335621462020

`floor(log(A106826(n)))`
-/

namespace A268411.P37613335621462020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A106826 n : ℝ)⌋

end

end A268411.P37613335621462020

namespace A268411

/-- `floor(log(A106826(n)))` -/
def P37613335621462020.Spec : Prop :=
  ∀ n, P37613335621462020.a n = A268411 n

end A268411

/-! ## A268411.P13842846947167166370

`char[comp[A268412(n)]]`
-/

namespace A268411.P13842846947167166370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A268411.P13842846947167166370

namespace A268411

/-- `char[comp[A268412(n)]]` -/
def P13842846947167166370.Spec : Prop :=
  ∀ n, (P13842846947167166370.a n : ℤ) = A268411 n

end A268411

/-! ## A268411.P463085784624812007

`log2(A277561(n))%2`
-/

namespace A268411.P463085784624812007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A277561 n : ℝ))) 2

end

end A268411.P463085784624812007

namespace A268411

/-- `log2(A277561(n))%2` -/
def P463085784624812007.Spec : Prop :=
  ∀ n, P463085784624812007.a n = A268411 n

end A268411

/-! ## A268411.P8300496937304602020

`char[A268415(n+1)]`
-/

namespace A268411.P8300496937304602020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A268411.P8300496937304602020

namespace A268411

/-- `char[A268415(n+1)]` -/
def P8300496937304602020.Spec : Prop :=
  ∀ n, (P8300496937304602020.a n : ℤ) = A268411 n

end A268411

/-! ## A268411.P5507794622985327632

`and(2, A088748(n))/2`
-/

namespace A268411.P5507794622985327632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A088748 n) : ℚ) / 2

end

end A268411.P5507794622985327632

namespace A268411

/-- `and(2, A088748(n))/2` -/
def P5507794622985327632.Spec : Prop :=
  ∀ n, P5507794622985327632.a n = (A268411 n : ℚ)

end A268411

/-! ## A268411.P18246724839247652861

`and(2, A105500(n))/2`
-/

namespace A268411.P18246724839247652861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A105500 n) : ℚ) / 2

end

end A268411.P18246724839247652861

namespace A268411

/-- `and(2, A105500(n))/2` -/
def P18246724839247652861.Spec : Prop :=
  ∀ n, P18246724839247652861.a n = (A268411 n : ℚ)

end A268411

/-! ## A268411.P2754483049975457050

`and(1, A239904(n)+n)`
-/

namespace A268411.P2754483049975457050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A239904 n + (n : ℤ))

end

end A268411.P2754483049975457050

namespace A268411

/-- `and(1, A239904(n)+n)` -/
def P2754483049975457050.Spec : Prop :=
  ∀ n, P2754483049975457050.a n = A268411 n

end A268411

/-! ## A268411.P18126512110334278145

`and(2, ∑[A300867(n)])/2`
-/

namespace A268411.P18126512110334278145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300867 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A268411.P18126512110334278145

namespace A268411

/-- `and(2, ∑[A300867(n)])/2` -/
def P18126512110334278145.Spec : Prop :=
  ∀ n, P18126512110334278145.a n = (A268411 n : ℚ)

end A268411

/-! ## A268411.P5362021646841136028

`(A088371(n+1)-1)%2`
-/

namespace A268411.P5362021646841136028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088371 (n + 1) - 1) 2

end

end A268411.P5362021646841136028

namespace A268411

/-- `(A088371(n+1)-1)%2` -/
def P5362021646841136028.Spec : Prop :=
  ∀ n, P5362021646841136028.a n = A268411 n

end A268411

/-! ## A268411.P5858419470305322334

`A010060(A090077(n))`
-/

namespace A268411.P5858419470305322334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090077 n).toNat

end

end A268411.P5858419470305322334

namespace A268411

/-- `A010060(A090077(n))` -/
def P5858419470305322334.Spec : Prop :=
  ∀ n, P5858419470305322334.a n = A268411 n

end A268411

/-! ## A268411.P8884420402204061966

`A010060(A090079(n))`
-/

namespace A268411.P8884420402204061966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090079 n).toNat

end

end A268411.P8884420402204061966

namespace A268411

/-- `A010060(A090079(n))` -/
def P8884420402204061966.Spec : Prop :=
  ∀ n, P8884420402204061966.a n = A268411 n

end A268411

/-! ## A268411.P16007515906123510635

`A021913(A088748(n))`
-/

namespace A268411.P16007515906123510635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A088748 n).toNat

end

end A268411.P16007515906123510635

namespace A268411

/-- `A021913(A088748(n))` -/
def P16007515906123510635.Spec : Prop :=
  ∀ n, P16007515906123510635.a n = A268411 n

end A268411

/-! ## A268411.P12841144216578668352

`A010060(A229763(n))`
-/

namespace A268411.P12841144216578668352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A229763 n).toNat

end

end A268411.P12841144216578668352

namespace A268411

/-- `A010060(A229763(n))` -/
def P12841144216578668352.Spec : Prop :=
  ∀ n, P12841144216578668352.a n = A268411 n

end A268411

/-! ## A268411.P12610398585487441437

`A000035(A264596(n))`
-/

namespace A268411.P12610398585487441437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264596 n).toNat

end

end A268411.P12610398585487441437

namespace A268411

/-- `A000035(A264596(n))` -/
def P12610398585487441437.Spec : Prop :=
  ∀ n, P12610398585487441437.a n = A268411 n

end A268411

/-! ## A268411.P14849003315637211966

`A377415(A277561(n)+1)`
-/

namespace A268411.P14849003315637211966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377415 (A277561 n + 1).toNat

end

end A268411.P14849003315637211966

namespace A268411

/-- `A377415(A277561(n)+1)` -/
def P14849003315637211966.Spec : Prop :=
  ∀ n, P14849003315637211966.a n = A268411 n

end A268411

/-!
# A268412: Balanced evil numbers: numbers with an even number of runs of 1's in their binary expansion.

The programs for A268412, the canonical program `A268412.P6473001848089326556` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268412 has offset 0).

The definition of A268412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268412.P6473001848089326556

`comp[A268415(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268412

/-- `comp[A268415(n+1)]` -/
def P6473001848089326556.Spec : Prop :=
  ∀ n, (P6473001848089326556.a n : ℤ) = A268412 n

theorem P6473001848089326556.correct : P6473001848089326556.Spec := by
  intro n
  simp only [A268412]

end A268412

/-! ## A268412.P18069659258220552845

`lt[0, A323915(n)]`
-/

namespace A268412.P18069659258220552845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268412.P18069659258220552845

namespace A268412

/-- `lt[0, A323915(n)]` -/
def P18069659258220552845.Spec : Prop :=
  ∀ n, (P18069659258220552845.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P17638576964009745149

`eq[0, A069010(n)%2]`
-/

namespace A268412.P17638576964009745149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P17638576964009745149

namespace A268412

/-- `eq[0, A069010(n)%2]` -/
def P17638576964009745149.Spec : Prop :=
  ∀ n, (P17638576964009745149.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P4321515422454861831

`eq[3*n%2, A246960(n)]`
-/

namespace A268412.P4321515422454861831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P4321515422454861831

namespace A268412

/-- `eq[3*n%2, A246960(n)]` -/
def P4321515422454861831.Spec : Prop :=
  ∀ n, (P4321515422454861831.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P17103120698988524383

`eq[2, A020639(A088371(n+1)+1)]`
-/

namespace A268412.P17103120698988524383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088371 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P17103120698988524383

namespace A268412

/-- `eq[2, A020639(A088371(n+1)+1)]` -/
def P17103120698988524383.Spec : Prop :=
  ∀ n, (P17103120698988524383.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P4608441016321070048

`eq[0, A000035(A264596(n))]`
-/

namespace A268412.P4608441016321070048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264596 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P4608441016321070048

namespace A268412

/-- `eq[0, A000035(A264596(n))]` -/
def P4608441016321070048.Spec : Prop :=
  ∀ n, (P4608441016321070048.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P4132452519307583491

`eq[0, A268411(n)]`
-/

namespace A268412.P4132452519307583491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P4132452519307583491

namespace A268412

/-- `eq[0, A268411(n)]` -/
def P4132452519307583491.Spec : Prop :=
  ∀ n, (P4132452519307583491.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P9006952752804705763

`lt[A106826(n), 3]`
-/

namespace A268412.P9006952752804705763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268412.P9006952752804705763

namespace A268412

/-- `lt[A106826(n), 3]` -/
def P9006952752804705763.Spec : Prop :=
  ∀ n, (P9006952752804705763.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P10492353473923147120

`eq[0, A277516(A277561(n))]`
-/

namespace A268412.P10492353473923147120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277516 (A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P10492353473923147120

namespace A268412

/-- `eq[0, A277516(A277561(n))]` -/
def P10492353473923147120.Spec : Prop :=
  ∀ n, (P10492353473923147120.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P13103735752353012803

`eq[A010060(n), A020987(n)]`
-/

namespace A268412.P13103735752353012803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268412.P13103735752353012803

namespace A268412

/-- `eq[A010060(n), A020987(n)]` -/
def P13103735752353012803.Spec : Prop :=
  ∀ n, (P13103735752353012803.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P9021732035317185737

`eq[A010685(n), A105500(n)]`
-/

namespace A268412.P9021732035317185737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268412.P9021732035317185737

namespace A268412

/-- `eq[A010685(n), A105500(n)]` -/
def P9021732035317185737.Spec : Prop :=
  ∀ n, (P9021732035317185737.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P15672027691251210547

`eq[A020985(n), A106400(n)]`
-/

namespace A268412.P15672027691251210547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268412.P15672027691251210547

namespace A268412

/-- `eq[A020985(n), A106400(n)]` -/
def P15672027691251210547.Spec : Prop :=
  ∀ n, (P15672027691251210547.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P251090888986153666

`eq[A010674(n), A246960(n)]`
-/

namespace A268412.P251090888986153666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268412.P251090888986153666

namespace A268412

/-- `eq[A010674(n), A246960(n)]` -/
def P251090888986153666.Spec : Prop :=
  ∀ n, (P251090888986153666.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P3364418526052923505

`eq[A033999(n), A393435(n)]`
-/

namespace A268412.P3364418526052923505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268412.P3364418526052923505

namespace A268412

/-- `eq[A033999(n), A393435(n)]` -/
def P3364418526052923505.Spec : Prop :=
  ∀ n, (P3364418526052923505.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P5116575391690834484

`eq[A081729(n), A393435(n)]`
-/

namespace A268412.P5116575391690834484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268412.P5116575391690834484

namespace A268412

/-- `eq[A081729(n), A393435(n)]` -/
def P5116575391690834484.Spec : Prop :=
  ∀ n, (P5116575391690834484.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P9302829705897823170

`eq[1, A050603(A005811(n)+1)]`
-/

namespace A268412.P9302829705897823170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P9302829705897823170

namespace A268412

/-- `eq[1, A050603(A005811(n)+1)]` -/
def P9302829705897823170.Spec : Prop :=
  ∀ n, (P9302829705897823170.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P7507698233770692597

`eq[1, A136480(A005811(n)+2)]`
-/

namespace A268412.P7507698233770692597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A005811 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P7507698233770692597

namespace A268412

/-- `eq[1, A136480(A005811(n)+2)]` -/
def P7507698233770692597.Spec : Prop :=
  ∀ n, (P7507698233770692597.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P2963834189410418748

`lt[1, A277534(2*A277561(n))]`
-/

namespace A268412.P2963834189410418748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277534 (2 * A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268412.P2963834189410418748

namespace A268412

/-- `lt[1, A277534(2*A277561(n))]` -/
def P2963834189410418748.Spec : Prop :=
  ∀ n, (P2963834189410418748.a n : ℤ) = A268412 n

end A268412

/-! ## A268412.P8524513189767827069

`eq[0, A246960(2*n)]`
-/

namespace A268412.P8524513189767827069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268412.P8524513189767827069

namespace A268412

/-- `eq[0, A246960(2*n)]` -/
def P8524513189767827069.Spec : Prop :=
  ∀ n, (P8524513189767827069.a n : ℤ) = A268412 n

end A268412

/-!
# A268413: a(n) = Sum_{k = 0..n} (-1)^k*14^k.

The programs for A268413, the canonical program `A268413.P2982516966690581822` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268413 has offset 0).

The definition of A268413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268413.P2982516966690581822

`1-14*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268413

/-- `1-14*a(n-1)` -/
def P2982516966690581822.Spec : Prop :=
  ∀ n, P2982516966690581822.a n = A268413 n

theorem P2982516966690581822.correct : P2982516966690581822.Spec := by
  intro n
  simp only [A268413]

end A268413

/-! ## A268413.P3380907876702748551

`((-1)^n*14^(n+1)+1)/15`
-/

namespace A268413.P3380907876702748551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (14 ^ (n + 1) : ℤ) + 1 : ℚ) / 15

end

end A268413.P3380907876702748551

namespace A268413

/-- `((-1)^n*14^(n+1)+1)/15` -/
def P3380907876702748551.Spec : Prop :=
  ∀ n, P3380907876702748551.a n = (A268413 n : ℚ)

theorem P3380907876702748551.correct : P3380907876702748551.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A268413, Nat.add_sub_cancel, A268413.P3380907876702748551.a, A268413.P2982516966690581822.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A268413, Nat.add_sub_cancel, A268413.P3380907876702748551.a, A268413.P2982516966690581822.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268413

/-! ## A268413.P3232264172374303971

`∑[ogf(1/(1+14x))]`
-/

namespace A268413.P3232264172374303971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 14] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268413.P3232264172374303971

namespace A268413

/-- `∑[ogf(1/(1+14x))]` -/
def P3232264172374303971.Spec : Prop :=
  ∀ n, P3232264172374303971.a n = A268413 n

end A268413

/-! ## A268413.P6857957779675923319

`ogf(1/(1+13x-14x^2))`
-/

namespace A268413.P6857957779675923319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 13, -14] n

end

end A268413.P6857957779675923319

namespace A268413

/-- `ogf(1/(1+13x-14x^2))` -/
def P6857957779675923319.Spec : Prop :=
  ∀ n, P6857957779675923319.a n = A268413 n

end A268413

/-! ## A268413.P12874786734742016272

`a(n-1)+(-14)^n` with `a(0)=1`
-/

namespace A268413.P12874786734742016272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-14) ^ n

end

end A268413.P12874786734742016272

namespace A268413

/-- `a(n-1)+(-14)^n` -/
def P12874786734742016272.Spec : Prop :=
  ∀ n, P12874786734742016272.a n = A268413 n

end A268413

/-! ## A268413.P13447613781861857976

`(-14)^n-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A268413.P13447613781861857976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-14) ^ n - (-a (n - 1))

end

end A268413.P13447613781861857976

namespace A268413

/-- `(-14)^n-floor(-a(n-1))` -/
def P13447613781861857976.Spec : Prop :=
  ∀ n, P13447613781861857976.a n = A268413 n

end A268413

/-!
# A268414: a(n) = 5*a(n-1) - 2*n for n > 0, a(0) = 1.

The programs for A268414, the canonical program `A268414.P10868904978115026120` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268414 has offset 0).

The definition of A268414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*n` (program `A268414.P10868904978115026120`, by `A268414.P10868904978115026120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268414.P10868904978115026120

`5*a(n-1)-2*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268414

/-- `5*a(n-1)-2*n` -/
def P10868904978115026120.Spec : Prop :=
  ∀ n, P10868904978115026120.a n = A268414 n

theorem P10868904978115026120.correct : P10868904978115026120.Spec := by
  intro n
  simp only [A268414]

end A268414

/-! ## A268414.P7380329773224480529

`(4*n+3*5^n+5)/8`
-/

namespace A268414.P7380329773224480529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 * 5 ^ n + 5 : ℚ) / 8

end

end A268414.P7380329773224480529

namespace A268414

/-- `(4*n+3*5^n+5)/8` -/
def P7380329773224480529.Spec : Prop :=
  ∀ n, P7380329773224480529.a n = (A268414 n : ℚ)

theorem P7380329773224480529.correct : P7380329773224480529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A268414, Nat.add_sub_cancel, A268414.P7380329773224480529.a, A268414.P10868904978115026120.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A268414, Nat.add_sub_cancel, A268414.P7380329773224480529.a, A268414.P10868904978115026120.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268414

/-! ## A268414.P9699671617916030547

`∑[ogf((1-4x+x^2)/(1-6x+5x^2))]`
-/

namespace A268414.P9699671617916030547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 1] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268414.P9699671617916030547

namespace A268414

/-- `∑[ogf((1-4x+x^2)/(1-6x+5x^2))]` -/
def P9699671617916030547.Spec : Prop :=
  ∀ n, P9699671617916030547.a n = A268414 n

end A268414

/-! ## A268414.P17824136346069019361

`∑[lcm(5, a(n-1))-2]` with `a(0)=1, a(1)=2`
-/

namespace A268414.P17824136346069019361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268414.P17824136346069019361

namespace A268414

/-- `∑[lcm(5, a(n-1))-2]` -/
def P17824136346069019361.Spec : Prop :=
  ∀ n, P17824136346069019361.a n = A268414 n

end A268414

/-! ## A268414.P11666534139824795483

`a(n-1)/(1-4/5)-n-n` with `a(0)=1`
-/

namespace A268414.P11666534139824795483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - (n : ℚ) - (n : ℚ)

end

end A268414.P11666534139824795483

namespace A268414

/-- `a(n-1)/(1-4/5)-n-n` -/
def P11666534139824795483.Spec : Prop :=
  ∀ n, P11666534139824795483.a n = (A268414 n : ℚ)

end A268414

/-! ## A268414.P4242043942137682554

`ceil((A083065(n)+n)/2)`
-/

namespace A268414.P4242043942137682554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083065 n + (n : ℤ) : ℚ) / 2⌉

end

end A268414.P4242043942137682554

namespace A268414

/-- `ceil((A083065(n)+n)/2)` -/
def P4242043942137682554.Spec : Prop :=
  ∀ n, P4242043942137682554.a n = A268414 n

end A268414

/-! ## A268414.P3045796608462636568

`A294566(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A268414.P3045796608462636568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294566 (2 * n) + a (n - 1)

end

end A268414.P3045796608462636568

namespace A268414

/-- `A294566(2*n)+a(n-1)` -/
def P3045796608462636568.Spec : Prop :=
  ∀ n, P3045796608462636568.a n = A268414 n

end A268414

/-! ## A268414.P16726670719995569830

`A000351(n)-A185055(n+1)`
-/

namespace A268414.P16726670719995569830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A185055 (n + 1)

end

end A268414.P16726670719995569830

namespace A268414

/-- `A000351(n)-A185055(n+1)` -/
def P16726670719995569830.Spec : Prop :=
  ∀ n, P16726670719995569830.a n = A268414 n

end A268414

/-! ## A268414.P2423816182288291565

`A000351(n)-∑[A121177(n+1)]`
-/

namespace A268414.P2423816182288291565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268414.P2423816182288291565

namespace A268414

/-- `A000351(n)-∑[A121177(n+1)]` -/
def P2423816182288291565.Spec : Prop :=
  ∀ n, P2423816182288291565.a n = A268414 n

end A268414

/-! ## A268414.P318103744306285761

`floor((A120613(n+1)+A083065(n))/2)+1`
-/

namespace A268414.P318103744306285761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120613 (n + 1) + A083065 n : ℚ) / 2⌋ + 1

end

end A268414.P318103744306285761

namespace A268414

/-- `floor((A120613(n+1)+A083065(n))/2)+1` -/
def P318103744306285761.Spec : Prop :=
  ∀ n, P318103744306285761.a n = A268414 n

end A268414

/-! ## A268414.P18196174084980115507

`∑[A057651(n)+1]-A057651(n)`
-/

namespace A268414.P18196174084980115507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057651 n

end

end A268414.P18196174084980115507

namespace A268414

/-- `∑[A057651(n)+1]-A057651(n)` -/
def P18196174084980115507.Spec : Prop :=
  ∀ n, P18196174084980115507.a n = A268414 n

end A268414

/-! ## A268414.P9689786412065996880

`A020729(n)/2-∑[A121177(n+1)]`
-/

namespace A268414.P9689786412065996880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020729 n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A268414.P9689786412065996880

namespace A268414

/-- `A020729(n)/2-∑[A121177(n+1)]` -/
def P9689786412065996880.Spec : Prop :=
  ∀ n, P9689786412065996880.a n = (A268414 n : ℚ)

end A268414

/-!
# A268415: Balanced odious numbers: numbers with an odd number of runs of 1's in their binary expansion.

The programs for A268415, the canonical program `A268415.P13580893866302977043` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268415 has offset 1).

The definition of A268415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268415.P13580893866302977043

`A043726(n+1)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268415

/-- `A043726(n+1)/2` -/
def P13580893866302977043.Spec : Prop :=
  ∀ n, P13580893866302977043.a n = (A268415 (n + 1) : ℚ)

end A268415

/-! ## A268415.P3369358403936967675

`∪[A043725(n+1), A043726(n+1)]`
-/

namespace A268415.P3369358403936967675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268415.P3369358403936967675

namespace A268415

/-- `∪[A043725(n+1), A043726(n+1)]` -/
def P3369358403936967675.Spec : Prop :=
  ∀ n, (P3369358403936967675.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P9512015711740791754

`comp[A268412(n)]`
-/

namespace A268415.P9512015711740791754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268415.P9512015711740791754

namespace A268415

/-- `comp[A268412(n)]` -/
def P9512015711740791754.Spec : Prop :=
  ∀ n, (P9512015711740791754.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P13376524643751778137

`lt[A323915(n), 0]`
-/

namespace A268415.P13376524643751778137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323915 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268415.P13376524643751778137

namespace A268415

/-- `lt[A323915(n), 0]` -/
def P13376524643751778137.Spec : Prop :=
  ∀ n, (P13376524643751778137.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P12140210631694153306

`eq[1, A069010(n)%2]`
-/

namespace A268415.P12140210631694153306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P12140210631694153306

namespace A268415

/-- `eq[1, A069010(n)%2]` -/
def P12140210631694153306.Spec : Prop :=
  ∀ n, (P12140210631694153306.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P7951869940764282

`eq[2, and(2, A088748(n))]`
-/

namespace A268415.P7951869940764282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P7951869940764282

namespace A268415

/-- `eq[2, and(2, A088748(n))]` -/
def P7951869940764282.Spec : Prop :=
  ∀ n, (P7951869940764282.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P3584328755701016658

`eq[A040001(n), A246960(n)]`
-/

namespace A268415.P3584328755701016658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268415.P3584328755701016658

namespace A268415

/-- `eq[A040001(n), A246960(n)]` -/
def P3584328755701016658.Spec : Prop :=
  ∀ n, (P3584328755701016658.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P17659283738032641466

`eq[2, A020639(A088371(n+1))]`
-/

namespace A268415.P17659283738032641466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P17659283738032641466

namespace A268415

/-- `eq[2, A020639(A088371(n+1))]` -/
def P17659283738032641466.Spec : Prop :=
  ∀ n, (P17659283738032641466.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P12199485409957757656

`eq[1, A000035(A264596(n))]`
-/

namespace A268415.P12199485409957757656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A264596 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P12199485409957757656

namespace A268415

/-- `eq[1, A000035(A264596(n))]` -/
def P12199485409957757656.Spec : Prop :=
  ∀ n, (P12199485409957757656.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P4361849363172051133

`eq[2, and(2, A005811(n)+1)]`
-/

namespace A268415.P4361849363172051133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A005811 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P4361849363172051133

namespace A268415

/-- `eq[2, and(2, A005811(n)+1)]` -/
def P4361849363172051133.Spec : Prop :=
  ∀ n, (P4361849363172051133.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P8598618242894100078

`eq[A010059(n), A020987(n)]`
-/

namespace A268415.P8598618242894100078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268415.P8598618242894100078

namespace A268415

/-- `eq[A010059(n), A020987(n)]` -/
def P8598618242894100078.Spec : Prop :=
  ∀ n, (P8598618242894100078.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P16308348529005013798

`eq[1, A020987(n)+A010060(n)]`
-/

namespace A268415.P16308348529005013798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n + A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P16308348529005013798

namespace A268415

/-- `eq[1, A020987(n)+A010060(n)]` -/
def P16308348529005013798.Spec : Prop :=
  ∀ n, (P16308348529005013798.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P6220857125990155525

`lt[1, A010060(xor(n, A020987(n)))+1]`
-/

namespace A268415.P6220857125990155525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A020987 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268415.P6220857125990155525

namespace A268415

/-- `lt[1, A010060(xor(n, A020987(n)))+1]` -/
def P6220857125990155525.Spec : Prop :=
  ∀ n, (P6220857125990155525.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P12765516865986070340

`eq[1, A268411(n)]`
-/

namespace A268415.P12765516865986070340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P12765516865986070340

namespace A268415

/-- `eq[1, A268411(n)]` -/
def P12765516865986070340.Spec : Prop :=
  ∀ n, (P12765516865986070340.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P4646901255795657886

`lt[2, A106826(n)]`
-/

namespace A268415.P4646901255795657886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268415.P4646901255795657886

namespace A268415

/-- `lt[2, A106826(n)]` -/
def P4646901255795657886.Spec : Prop :=
  ∀ n, (P4646901255795657886.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P7535907218899339788

`eq[2, and(2, A105500(n))]`
-/

namespace A268415.P7535907218899339788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A105500 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268415.P7535907218899339788

namespace A268415

/-- `eq[2, and(2, A105500(n))]` -/
def P7535907218899339788.Spec : Prop :=
  ∀ n, (P7535907218899339788.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P8704476385989376575

`eq[A105500(n), A176059(n)]`
-/

namespace A268415.P8704476385989376575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268415.P8704476385989376575

namespace A268415

/-- `eq[A105500(n), A176059(n)]` -/
def P8704476385989376575.Spec : Prop :=
  ∀ n, (P8704476385989376575.a n : ℤ) = A268415 (n + 1)

end A268415

/-! ## A268415.P11557167070945317956

`eq[A062157(n), A393435(n)]`
-/

namespace A268415.P11557167070945317956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268415.P11557167070945317956

namespace A268415

/-- `eq[A062157(n), A393435(n)]` -/
def P11557167070945317956.Spec : Prop :=
  ∀ n, (P11557167070945317956.a n : ℤ) = A268415 (n + 1)

end A268415

/-!
# A268416: Number of aligned free polyominoes that will fit in a square of size n X n.

The programs for A268416, there is no canonical definition to state claims against.
-/

/-! ## A268416.P11075082586781827283

`record[∑[A268371(n+1)]/A268371(n+2)]`
-/

namespace A268416.P11075082586781827283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268371 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A268371 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268416.P11075082586781827283

/-!
# A268418: Numbers other than prime powers divisible by the sum, the sum of squares and the sum of cubes of their prime divisors.

The programs for A268418, there is no canonical definition to state claims against.
-/

/-! ## A268418.P3893909579144026886

`∩[A268373(n+1), A268417(n+1)]`
-/

namespace A268418.P3893909579144026886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268418.P3893909579144026886

/-!
# A268419: Number of n X 1 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268419, there is no canonical definition to state claims against.
-/

/-! ## A268419.P12667009252526872406

`A268423(∑[n+1])`
-/

namespace A268419.P12667009252526872406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268419.P12667009252526872406

/-! ## A268419.P6990118780300225289

`record[A268423(A130270(n+1))]`
-/

namespace A268419.P6990118780300225289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268419.P6990118780300225289

/-! ## A268419.P15215714426699488383

`A000027(A268423(C(n+2, 2)))`
-/

namespace A268419.P15215714426699488383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A268423 (Nat.choose (n + 2) 2)).toNat

end

end A268419.P15215714426699488383

/-! ## A268419.P9886849107934568757

`record[A023531(n)*A268423(n+1)]`
-/

namespace A268419.P9886849107934568757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A268423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268419.P9886849107934568757

/-! ## A268419.P2542571068170172749

`record[A103452(n)*A268423(n+1)]`
-/

namespace A268419.P2542571068170172749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A268423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268419.P2542571068170172749

/-!
# A268420: Number of nX2 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268420, there is no canonical definition to state claims against.
-/

/-! ## A268420.P16077096841205682875

`A268423(∑[n+2])`
-/

namespace A268420.P16077096841205682875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268420.P16077096841205682875

/-! ## A268420.P12489244047730969976

`record[A268423(abs(A201163(n)))]`
-/

namespace A268420.P12489244047730969976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268420.P12489244047730969976

/-! ## A268420.P431496397599401400

`record[A268423(Δ[A003453(n+5)])]`
-/

namespace A268420.P431496397599401400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268420.P431496397599401400

/-! ## A268420.P4462692240125257158

`record[gcd(A268423(n+2), A268435(n+3))]`
-/

namespace A268420.P4462692240125257158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268423 (n + 2)) (A268435 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268420.P4462692240125257158

/-! ## A268420.P13537359496640529962

`A353495(n)+A268423(A000096(n+1))`
-/

namespace A268420.P13537359496640529962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n + A268423 (A000096 (n + 1)).toNat

end

end A268420.P13537359496640529962

/-!
# A268421: Number of nX4 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268421, there is no canonical definition to state claims against.
-/

/-! ## A268421.P1104944521560429453

`A268423(A141214(n+1))`
-/

namespace A268421.P1104944521560429453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A141214 (n + 1)).toNat

end

end A268421.P1104944521560429453

/-! ## A268421.P5478077066738194242

`A268423(A027379(n+2))`
-/

namespace A268421.P5478077066738194242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A027379 (n + 2)).toNat

end

end A268421.P5478077066738194242

/-! ## A268421.P8380946314610560746

`A268423(A055998(n+2))`
-/

namespace A268421.P8380946314610560746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A055998 (n + 2)).toNat

end

end A268421.P8380946314610560746

/-!
# A268422: Number of nX5 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268422, there is no canonical definition to state claims against.
-/

/-! ## A268422.P8527907071539856081

`A268423(∑[n+5]+6)`
-/

namespace A268422.P8527907071539856081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A268422.P8527907071539856081

/-!
# A268423: T(n,k)=Number of nXk 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268423, there is no canonical definition to state claims against.
-/

/-! ## A268423.P11692182544375970061

`A325648(A079031(n))+A204685(n+1)`
-/

namespace A268423.P11692182544375970061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325648 (A079031 n).toNat + A204685 (n + 1)

end

end A268423.P11692182544375970061

/-! ## A268423.P14870146141526027089

`A325648(A079031(n))+A205161(n+1)`
-/

namespace A268423.P14870146141526027089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325648 (A079031 n).toNat + A205161 (n + 1)

end

end A268423.P14870146141526027089

/-! ## A268423.P11137571196381900780

`A325648(A079031(n))+A205310(n+1)`
-/

namespace A268423.P11137571196381900780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325648 (A079031 n).toNat + A205310 (n + 1)

end

end A268423.P11137571196381900780

/-! ## A268423.P9871602096313265488

`A325648(A079031(n))+A268073(n+1)`
-/

namespace A268423.P9871602096313265488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325648 (A079031 n).toNat + A268073 (n + 1)

end

end A268423.P9871602096313265488

/-!
# A268424: Number of 4Xn 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268424, there is no canonical definition to state claims against.
-/

/-! ## A268424.P3335696586186628540

`A268423(∑[n+3]+7)`
-/

namespace A268424.P3335696586186628540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A268424.P3335696586186628540

/-! ## A268424.P2037387097298658405

`or(A000007(n+1), A268423(A052905(n)+9))`
-/

namespace A268424.P2037387097298658405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (n + 1)) (A268423 (A052905 n + 9).toNat)

end

end A268424.P2037387097298658405

/-! ## A268424.P16250395450866808442

`A000007(A208848(n))*A268423(A052905(n)+9)`
-/

namespace A268424.P16250395450866808442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A208848 n).toNat * A268423 (A052905 n + 9).toNat

end

end A268424.P16250395450866808442

/-!
# A268425: Number of 5Xn 0..3 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268425, there is no canonical definition to state claims against.
-/

/-! ## A268425.P919838825706915919

`A268423(A056000(n)+15)`
-/

namespace A268425.P919838825706915919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A056000 n + 15).toNat

end

end A268425.P919838825706915919

/-!
# A268426: Primes of the form p^2 + 12*q^2, p, q primes.

The programs for A268426, there is no canonical definition to state claims against.
-/

/-! ## A268426.P10819477328746973274

`A068228(A269861(n+1)%A005820(n+1))`
-/

namespace A268426.P10819477328746973274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (Int.tmod (A269861 (n + 1)) (A005820 (n + 1))).toNat

end

end A268426.P10819477328746973274

/-!
# A268428: a(n) = (3*(n^2+n+99)+cos(Pi*n/2)-sin(Pi*n/2))/2.

The programs for A268428, the canonical program `A268428.P13060965828343863757` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268428 has offset 0).

The definition of A268428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268428.P13060965828343863757

`2*floor(3*n*(n+1)/4)+149`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268428

/-- `2*floor(3*n*(n+1)/4)+149` -/
def P13060965828343863757.Spec : Prop :=
  ∀ n, P13060965828343863757.a n = A268428 n

theorem P13060965828343863757.correct : P13060965828343863757.Spec := by
  intro n
  simp only [A268428]

end A268428

/-! ## A268428.P9290823907598574356

`(3*(n²+n+99)+(-1)^C(n+1, 2))/2`
-/

namespace A268428.P9290823907598574356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n ^ 2 + n + 99) : ℤ) + (-1) ^ Nat.choose (n + 1) 2 : ℚ) / 2

end

end A268428.P9290823907598574356

namespace A268428

/-- `(3*(n²+n+99)+(-1)^C(n+1, 2))/2` -/
def P9290823907598574356.Spec : Prop :=
  ∀ n, P9290823907598574356.a n = (A268428 n : ℚ)

end A268428

/-! ## A268428.P6552456372706272713

`(3*(n²+n+99)+cos(π*n/2)-sin(π*n/2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268428.P6552456372706272713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * (n ^ 2 + n + 99) : ℝ) + Real.cos (Real.pi * (n : ℝ) / 2) - Real.sin (Real.pi * (n : ℝ) / 2)) / 2

end

end A268428.P6552456372706272713

namespace A268428

/-- `(3*(n²+n+99)+cos(π*n/2)-sin(π*n/2))/2` -/
def P6552456372706272713.Spec : Prop :=
  ∀ n, P6552456372706272713.a n = (A268428 n : ℝ)

end A268428

/-! ## A268428.P2637780124605576044

`A007310(n*(n+1)/2+50)`
-/

namespace A268428.P2637780124605576044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2 + 50)).toNat

end

end A268428.P2637780124605576044

namespace A268428

/-- `A007310(n*(n+1)/2+50)` -/
def P2637780124605576044.Spec : Prop :=
  ∀ n, P2637780124605576044.a n = A268428 n

end A268428

/-! ## A268428.P9535527208039687988

`A000027(149+and(∑[3*n], -2))`
-/

namespace A268428.P9535527208039687988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)).toNat

end

end A268428.P9535527208039687988

namespace A268428

/-- `A000027(149+and(∑[3*n], -2))` -/
def P9535527208039687988.Spec : Prop :=
  ∀ n, P9535527208039687988.a n = A268428 n

end A268428

/-! ## A268428.P10813542363338473560

`A000027(149+∑[∑[and(2, n)+2]-2])`
-/

namespace A268428.P10813542363338473560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268428.P10813542363338473560

namespace A268428

/-- `A000027(149+∑[∑[and(2, n)+2]-2])` -/
def P10813542363338473560.Spec : Prop :=
  ∀ n, P10813542363338473560.a n = A268428 n

end A268428

/-! ## A268428.P15502793749058413222

`A000027(149+∑[3*n]-∑[n]%2)`
-/

namespace A268428.P15502793749058413222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ))).toNat

end

end A268428.P15502793749058413222

namespace A268428

/-- `A000027(149+∑[3*n]-∑[n]%2)` -/
def P15502793749058413222.Spec : Prop :=
  ∀ n, P15502793749058413222.a n = A268428 n

end A268428

/-! ## A268428.P5991250411366925534

`A000027(149+∑[∑[and(2, n)]+n+n])`
-/

namespace A268428.P5991250411366925534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268428.P5991250411366925534

namespace A268428

/-- `A000027(149+∑[∑[and(2, n)]+n+n])` -/
def P5991250411366925534.Spec : Prop :=
  ∀ n, P5991250411366925534.a n = A268428 n

end A268428

/-! ## A268428.P15955430295378237292

`A000027(149+∑[A276283(n)-1])`
-/

namespace A268428.P15955430295378237292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268428.P15955430295378237292

namespace A268428

/-- `A000027(149+∑[A276283(n)-1])` -/
def P15955430295378237292.Spec : Prop :=
  ∀ n, P15955430295378237292.a n = A268428 n

end A268428

/-! ## A268428.P14258469068054223379

`A000027(149+∑[A047538(n+1)+n])`
-/

namespace A268428.P14258469068054223379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268428.P14258469068054223379

namespace A268428

/-- `A000027(149+∑[A047538(n+1)+n])` -/
def P14258469068054223379.Spec : Prop :=
  ∀ n, P14258469068054223379.a n = A268428 n

end A268428

/-! ## A268428.P18168237310190059083

`A000027(149+A301292(n)-A213484(n))`
-/

namespace A268428.P18168237310190059083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + (A301292 n - A213484 n)).toNat

end

end A268428.P18168237310190059083

namespace A268428

/-- `A000027(149+A301292(n)-A213484(n))` -/
def P18168237310190059083.Spec : Prop :=
  ∀ n, P18168237310190059083.a n = A268428 n

end A268428

/-! ## A268428.P3191104095225100883

`A000027(149+A047401(n+1)+A000326(n))`
-/

namespace A268428.P3191104095225100883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (149 + (A047401 (n + 1) + A000326 n)).toNat

end

end A268428.P3191104095225100883

namespace A268428

/-- `A000027(149+A047401(n+1)+A000326(n))` -/
def P3191104095225100883.Spec : Prop :=
  ∀ n, P3191104095225100883.a n = A268428 n

end A268428

/-! ## A268428.P15179049658016654292

`A038179(∑[n]+51)`
-/

namespace A268428.P15179049658016654292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (∑ j ∈ Finset.range (n + 1), f1 j + 51)

end

end A268428.P15179049658016654292

namespace A268428

/-- `A038179(∑[n]+51)` -/
def P15179049658016654292.Spec : Prop :=
  ∀ n, P15179049658016654292.a n = A268428 n

end A268428

/-! ## A268428.P2353191395232665507

`or(1, A007310(A000217(n)+50))`
-/

namespace A268428.P2353191395232665507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007310 (A000217 n + 50).toNat)

end

end A268428.P2353191395232665507

namespace A268428

/-- `or(1, A007310(A000217(n)+50))` -/
def P2353191395232665507.Spec : Prop :=
  ∀ n, P2353191395232665507.a n = A268428 n

end A268428

/-! ## A268428.P198651103897844302

`A000027(A007310(A000217(n)+50))`
-/

namespace A268428.P198651103897844302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007310 (A000217 n + 50).toNat).toNat

end

end A268428.P198651103897844302

namespace A268428

/-- `A000027(A007310(A000217(n)+50))` -/
def P198651103897844302.Spec : Prop :=
  ∀ n, P198651103897844302.a n = A268428 n

end A268428

/-! ## A268428.P16242542821959802452

`A007310(A000217(n)+50)%A157330(A017017(n))`
-/

namespace A268428.P16242542821959802452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007310 (A000217 n + 50).toNat) (A157330 (A017017 n).toNat)

end

end A268428.P16242542821959802452

namespace A268428

/-- `A007310(A000217(n)+50)%A157330(A017017(n))` -/
def P16242542821959802452.Spec : Prop :=
  ∀ n, P16242542821959802452.a n = A268428 n

end A268428

/-! ## A268428.P16258111570224123050

`A005408(A281026(n)+74)`
-/

namespace A268428.P16258111570224123050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281026 n + 74).toNat

end

end A268428.P16258111570224123050

namespace A268428

/-- `A005408(A281026(n)+74)` -/
def P16258111570224123050.Spec : Prop :=
  ∀ n, P16258111570224123050.a n = A268428 n

end A268428

/-!
# A268429: Number of North-East lattice paths from (0,0) to (n,n) that bounce off the diagonal y = x to the right exactly once.

The programs for A268429, there is no canonical definition to state claims against.
-/

/-! ## A268429.P4757480966161779381

`A239557(2*(n+1))+A110620(A239557(2*(n+1)))`
-/

namespace A268429.P4757480966161779381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239557 (2 * (n + 1)) + A110620 (A239557 (2 * (n + 1))).toNat

end

end A268429.P4757480966161779381

/-! ## A268429.P844748096811483263

`A213219(A176085(n+1))`
-/

namespace A268429.P844748096811483263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (A176085 (n + 1)).toNat

end

end A268429.P844748096811483263

/-!
# A268430: Number of North-East paths from (0,0) to (n,n) that have even number of times bounce off y = x to the right.

The programs for A268430, there is no canonical definition to state claims against.
-/

/-! ## A268430.P16733256363230868424

`A149960(n)-A159632(A033995(n))`
-/

namespace A268430.P16733256363230868424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149960 n - A159632 (A033995 n).toNat

end

end A268430.P16733256363230868424

/-! ## A268430.P7500189299166412567

`xor(A025461(A246382(n)), A127498(n))`
-/

namespace A268430.P7500189299166412567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025461 (A246382 n).toNat) (A127498 n)

end

end A268430.P7500189299166412567

/-! ## A268430.P173080771894366068

`A077767(A084480(n))+Δ[A148365(n)]`
-/

namespace A268430.P173080771894366068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A084480 n).toNat + (f1 (n + 1) - f1 n)

end

end A268430.P173080771894366068

/-!
# A268431: Number of North-East paths from (0,0) to (n,n) that have odd number of times bounce off y = x to the right.

The programs for A268431, there is no canonical definition to state claims against.
-/

/-! ## A268431.P15621375165809277712

`C(2*(n+2), n+2)-A268430(n+2)`
-/

namespace A268431.P15621375165809277712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) (n + 2) : ℤ) - A268430 (n + 2)

end

end A268431.P15621375165809277712

/-! ## A268431.P8680288522735037800

`A156665((n+1)²+(n+2)²)`
-/

namespace A268431.P8680288522735037800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A268431.P8680288522735037800

/-! ## A268431.P17730779705721200651

`record[A156665(A156679(n+1))]`
-/

namespace A268431.P17730779705721200651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (A156679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268431.P17730779705721200651

/-! ## A268431.P10956427795499146558

`record[A156665(A156678(n+1)+1)]`
-/

namespace A268431.P10956427795499146558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (A156678 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268431.P10956427795499146558

/-! ## A268431.P10920918081656173557

`A235501(A268581(n)+4)`
-/

namespace A268431.P10920918081656173557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235501 (A268581 n + 4).toNat

end

end A268431.P10920918081656173557

/-!
# A268432: a(n) = Pochhammer(n+1, n)/Clausen(n, 1) = A001813(n) / A160014(n, 1).

The programs for A268432, there is no canonical definition to state claims against.
-/

/-! ## A268432.P4144461051029894678

`A001813(n)/A141056(n)`
-/

namespace A268432.P4144461051029894678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / (A141056 n : ℚ)

end

end A268432.P4144461051029894678

/-! ## A268432.P1326711232323516596

`A081125(2*n)/A141056(n)`
-/

namespace A268432.P1326711232323516596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 (2 * n) : ℚ) / (A141056 n : ℚ)

end

end A268432.P1326711232323516596

/-! ## A268432.P6558361224019738890

`∏[record[A266303(n)]]/A141056(n)`
-/

namespace A268432.P6558361224019738890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A141056 n : ℚ)

end

end A268432.P6558361224019738890

/-! ## A268432.P8695687870901483301

`∏[A111284(n+1)]/A141056(n)`
-/

namespace A268432.P8695687870901483301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A141056 n : ℚ)

end

end A268432.P8695687870901483301

/-! ## A268432.P5813498133985609623

`A008279(A046092(n))/A141056(n)`
-/

namespace A268432.P5813498133985609623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 (A046092 n).toNat : ℚ) / (A141056 n : ℚ)

end

end A268432.P5813498133985609623

/-!
# A268433: a(n) = A106184(n) / A001316(n).

The programs for A268433, there is no canonical definition to state claims against.
-/

/-! ## A268433.P3857290095671948613

`A106184(n)/A001316(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268433.P3857290095671948613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℚ) / (A001316 n : ℚ)

end

end A268433.P3857290095671948613

/-! ## A268433.P7018851770354200495

`A106184(n)/sqrt(A102376(n))`
-/

namespace A268433.P7018851770354200495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A268433.P7018851770354200495

/-! ## A268433.P11644637733305402553

`A106184(n)/Δ[A006046(n)]`
-/

namespace A268433.P11644637733305402553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A268433.P11644637733305402553

/-! ## A268433.P13894770227614363441

`A106184(n)/A060632(2*n)`
-/

namespace A268433.P13894770227614363441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℚ) / (A060632 (2 * n) : ℚ)

end

end A268433.P13894770227614363441

/-! ## A268433.P4151056955837233793

`A106184(n)/A000079(A000120(n))`
-/

namespace A268433.P4151056955837233793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A268433.P4151056955837233793

/-! ## A268433.P15921304081108499956

`A106184(n)/A006519(A335063(n+1))`
-/

namespace A268433.P15921304081108499956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℚ) / (A006519 (A335063 (n + 1)).toNat : ℚ)

end

end A268433.P15921304081108499956

/-! ## A268433.P80865200207081304

`A106184(n)/A000005(A019565(n))`
-/

namespace A268433.P80865200207081304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106184 n : ℚ) / (A000005 (A019565 n).toNat : ℚ)

end

end A268433.P80865200207081304

/-!
# A268434: Triangle read by rows, Lah numbers of order 2, T(n,n) = 1, T(n,k) = 0 if k<0 or k>n, otherwise T(n,k) = T(n-1,k-1)+((n-1)^2+k^2)*T(n-1,k), for n>=0 and 0<=k<=n.

The programs for A268434, the canonical program `A268434.P14588526688602039649` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268434 has offset 0).

The definition of A268434 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+((row(n)-1)²+col(n)²)*T(n-1,k)` (program `A268434.P14588526688602039649`, by `A268434.P14588526688602039649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268434.P14588526688602039649

`T(n-1,k-1)+((row(n)-1)²+col(n)²)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268434

/-- `T(n-1,k-1)+((row(n)-1)²+col(n)²)*T(n-1,k)` -/
def P14588526688602039649.Spec : Prop :=
  ∀ n, P14588526688602039649.a n = A268434 n

theorem P14588526688602039649.correct : P14588526688602039649.Spec := by
  intro n
  simp only [A268434]

end A268434

/-! ## A268434.P14894927791238834866

`A160719(A266042(n+2))`
-/

namespace A268434.P14894927791238834866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160719 (A266042 (n + 2)).toNat

end

end A268434.P14894927791238834866

namespace A268434

/-- `A160719(A266042(n+2))` -/
def P14894927791238834866.Spec : Prop :=
  ∀ n, P14894927791238834866.a n = A268434 n

end A268434

/-! ## A268434.P15027544008095241284

`A060773(A099594(n))*A205574(n)`
-/

namespace A268434.P15027544008095241284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (A099594 n).toNat * A205574 n

end

end A268434.P15027544008095241284

namespace A268434

/-- `A060773(A099594(n))*A205574(n)` -/
def P15027544008095241284.Spec : Prop :=
  ∀ n, P15027544008095241284.a n = A268434 n

end A268434

/-!
# A268435: Triangle read by rows, T(n,k) = RF(n-k+1,n-k)*S2(n,k) where RF denotes the rising factorial and S2 the Stirling set numbers, for n>=0 and 0<=k<=n.

The programs for A268435, the canonical program `A268435.P14958959519372401851` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268435 has offset 0).

The definition of A268435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268435.P14958959519372401851

`A001813(A025581(n))*A048993(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268435

/-- `A001813(A025581(n))*A048993(n)` -/
def P14958959519372401851.Spec : Prop :=
  ∀ n, P14958959519372401851.a n = A268435 n

theorem P14958959519372401851.correct : P14958959519372401851.Spec := by
  intro n
  simp only [A268435]

end A268435

/-! ## A268435.P16026071225726661557

`A001813(A025581(n))*A106800(A061579(n))`
-/

namespace A268435.P16026071225726661557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (A025581 n).toNat * A106800 (A061579 n).toNat

end

end A268435.P16026071225726661557

namespace A268435

/-- `A001813(A025581(n))*A106800(A061579(n))` -/
def P16026071225726661557.Spec : Prop :=
  ∀ n, P16026071225726661557.a n = A268435 n

end A268435

/-! ## A268435.P12972307674220459946

`A001813(A025581(n))*A106800(A038722(n+2))`
-/

namespace A268435.P12972307674220459946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (A025581 n).toNat * A106800 (A038722 (n + 2)).toNat

end

end A268435.P12972307674220459946

namespace A268435

/-- `A001813(A025581(n))*A106800(A038722(n+2))` -/
def P12972307674220459946.Spec : Prop :=
  ∀ n, P12972307674220459946.a n = A268435 n

end A268435

/-! ## A268435.P295646405425120031

`(A154844(n)-A106800(n))*A001813(A025581(n))`
-/

namespace A268435.P295646405425120031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154844 n - A106800 n) * A001813 (A025581 n).toNat

end

end A268435.P295646405425120031

namespace A268435

/-- `(A154844(n)-A106800(n))*A001813(A025581(n))` -/
def P295646405425120031.Spec : Prop :=
  ∀ n, P295646405425120031.a n = A268435 n

theorem P295646405425120031.correct : P295646405425120031.Spec := by
  intro n
  simp only [A268435, Nat.add_sub_cancel, A268435.P295646405425120031.a, A268435.P14958959519372401851.a, A001813, A001813.P1021000417690398378.a, A025581, A025581.P16112744757063613497.a, A048993, A048993.P5967751111624356245.a, A106800, A106800.P14175807766356579995.a, A154844, A154844.P6166470427133278355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268435

/-! ## A268435.P9885174488408055054

`A001813(A025581(n))/A007318(n)*A090683(n)`
-/

namespace A268435.P9885174488408055054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat : ℚ) / (A007318 n : ℚ) * (A090683 n : ℚ)

end

end A268435.P9885174488408055054

namespace A268435

/-- `A001813(A025581(n))/A007318(n)*A090683(n)` -/
def P9885174488408055054.Spec : Prop :=
  ∀ n, P9885174488408055054.a n = (A268435 n : ℚ)

end A268435

/-! ## A268435.P12591234497719972889

`A001813(A025581(n))/A008279(n)*A090657(n)`
-/

namespace A268435.P12591234497719972889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat : ℚ) / (A008279 n : ℚ) * (A090657 n : ℚ)

end

end A268435.P12591234497719972889

namespace A268435

/-- `A001813(A025581(n))/A008279(n)*A090657(n)` -/
def P12591234497719972889.Spec : Prop :=
  ∀ n, P12591234497719972889.a n = (A268435 n : ℚ)

end A268435

/-! ## A268435.P17608379971472740232

`A001813(A025581(n))/A098361(n)*A156815(n)`
-/

namespace A268435.P17608379971472740232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat : ℚ) / (A098361 n : ℚ) * (A156815 n : ℚ)

end

end A268435.P17608379971472740232

namespace A268435

/-- `A001813(A025581(n))/A098361(n)*A156815(n)` -/
def P17608379971472740232.Spec : Prop :=
  ∀ n, P17608379971472740232.a n = (A268435 n : ℚ)

end A268435

/-! ## A268435.P1779758395218243486

`A131689(n)/A233543(n)*A001813(A025581(n))`
-/

namespace A268435.P1779758395218243486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A233543 n : ℚ) * (A001813 (A025581 n).toNat : ℚ)

end

end A268435.P1779758395218243486

namespace A268435

/-- `A131689(n)/A233543(n)*A001813(A025581(n))` -/
def P1779758395218243486.Spec : Prop :=
  ∀ n, P1779758395218243486.a n = (A268435 n : ℚ)

end A268435

/-! ## A268435.P18217327128092963229

`A001813(A025581(n))/A168256(n)*A253180(n)`
-/

namespace A268435.P18217327128092963229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat : ℚ) / (A168256 n : ℚ) * (A253180 n : ℚ)

end

end A268435.P18217327128092963229

namespace A268435

/-- `A001813(A025581(n))/A168256(n)*A253180(n)` -/
def P18217327128092963229.Spec : Prop :=
  ∀ n, P18217327128092963229.a n = (A268435 n : ℚ)

end A268435

/-! ## A268435.P11785494106452719220

`A001813(A025581(n))*A090683(n)/A132749(n)`
-/

namespace A268435.P11785494106452719220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat * A090683 n : ℚ) / (A132749 n : ℚ)

end

end A268435.P11785494106452719220

namespace A268435

/-- `A001813(A025581(n))*A090683(n)/A132749(n)` -/
def P11785494106452719220.Spec : Prop :=
  ∀ n, P11785494106452719220.a n = (A268435 n : ℚ)

end A268435

/-! ## A268435.P7099195591788989225

`A001813(A025581(n))*A090683(n)/A135227(n)`
-/

namespace A268435.P7099195591788989225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat * A090683 n : ℚ) / (A135227 n : ℚ)

end

end A268435.P7099195591788989225

namespace A268435

/-- `A001813(A025581(n))*A090683(n)/A135227(n)` -/
def P7099195591788989225.Spec : Prop :=
  ∀ n, P7099195591788989225.a n = (A268435 n : ℚ)

end A268435

/-!
# A268436: Triangle read by rows, T(n,k) = RF(n-k+1, n-k) * S1(n,k) where RF denotes the rising factorial and S1 the Stirling cycle numbers, for n>=0 and 0<=k<=n.

The programs for A268436, the canonical program `A268436.P8542834231434746933` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268436 has offset 0).

The definition of A268436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268436.P8542834231434746933

`A001813(A025581(n))*A132393(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268436

/-- `A001813(A025581(n))*A132393(n)` -/
def P8542834231434746933.Spec : Prop :=
  ∀ n, P8542834231434746933.a n = A268436 n

theorem P8542834231434746933.correct : P8542834231434746933.Spec := by
  intro n
  simp only [A268436]

end A268436

/-! ## A268436.P13579451480596739750

`abs(A001813(A025581(n))*A048994(n))`
-/

namespace A268436.P13579451480596739750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001813 (A025581 n).toNat * A048994 n|

end

end A268436.P13579451480596739750

namespace A268436

/-- `abs(A001813(A025581(n))*A048994(n))` -/
def P13579451480596739750.Spec : Prop :=
  ∀ n, P13579451480596739750.a n = A268436 n

end A268436

/-! ## A268436.P2643003817781871868

`A225479(n)/A233543(n)*A001813(A025581(n))`
-/

namespace A268436.P2643003817781871868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225479 n : ℚ) / (A233543 n : ℚ) * (A001813 (A025581 n).toNat : ℚ)

end

end A268436.P2643003817781871868

namespace A268436

/-- `A225479(n)/A233543(n)*A001813(A025581(n))` -/
def P2643003817781871868.Spec : Prop :=
  ∀ n, P2643003817781871868.a n = (A268436 n : ℚ)

end A268436

/-! ## A268436.P9353835332485458854

`A180013(n+1)/A002024(n+1)*A001813(A025581(n))`
-/

namespace A268436.P9353835332485458854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A001813 (A025581 n).toNat : ℚ)

end

end A268436.P9353835332485458854

namespace A268436

/-- `A180013(n+1)/A002024(n+1)*A001813(A025581(n))` -/
def P9353835332485458854.Spec : Prop :=
  ∀ n, P9353835332485458854.a n = (A268436 n : ℚ)

end A268436

/-! ## A268436.P17561837262853514987

`A001813(A025581(n))/A130534(n)*A187558(n)`
-/

namespace A268436.P17561837262853514987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (A025581 n).toNat : ℚ) / (A130534 n : ℚ) * (A187558 n : ℚ)

end

end A268436.P17561837262853514987

namespace A268436

/-- `A001813(A025581(n))/A130534(n)*A187558(n)` -/
def P17561837262853514987.Spec : Prop :=
  ∀ n, P17561837262853514987.a n = (A268436 n : ℚ)

end A268436

/-! ## A268436.P2692087915542092680

`lcm(A001813(A025581(n))*A048994(n), A014963(40*(n+1)))`
-/

namespace A268436.P2692087915542092680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001813 (A025581 n).toNat * A048994 n) (A014963 (40 * (n + 1)))

end

end A268436.P2692087915542092680

namespace A268436

/-- `lcm(A001813(A025581(n))*A048994(n), A014963(40*(n+1)))` -/
def P2692087915542092680.Spec : Prop :=
  ∀ n, (P2692087915542092680.a n : ℤ) = A268436 n

end A268436

/-!
# A268437: Triangle read by rows, T(n,k) = (-1)^k*(2*n)!*P[n,k](1/(n+1)) where P is the P-transform, for n>=0 and 0<=k<=n.

The programs for A268437, the canonical program `A268437.P10753366001924145829` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268437 has offset 0).

The definition of A268437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268437.P12727968191264785513

`A098361(n)*A268439(n)`
-/

namespace A268437.P12727968191264785513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A268439 n

end

end A268437.P12727968191264785513

namespace A268437

/-- `A098361(n)*A268439(n)` -/
def P12727968191264785513.Spec : Prop :=
  ∀ n, P12727968191264785513.a n = A268437 n

end A268437

/-! ## A268437.P10753366001924145829

`A269939(n)*A357013(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268437

/-- `A269939(n)*A357013(n)` -/
def P10753366001924145829.Spec : Prop :=
  ∀ n, P10753366001924145829.a n = A268437 n

theorem P10753366001924145829.correct : P10753366001924145829.Spec := by
  intro n
  simp only [A268437]

end A268437

/-! ## A268437.P8585548279744202617

`A094527(n)*A098361(n)*A269939(n)`
-/

namespace A268437.P8585548279744202617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A098361 n * A269939 n

end

end A268437.P8585548279744202617

namespace A268437

/-- `A094527(n)*A098361(n)*A269939(n)` -/
def P8585548279744202617.Spec : Prop :=
  ∀ n, P8585548279744202617.a n = A268437 n

end A268437

/-! ## A268437.P482119629935746281

`A112624(A036561(n))*A268439(n)`
-/

namespace A268437.P482119629935746281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A036561 n).toNat * A268439 n

end

end A268437.P482119629935746281

namespace A268437

/-- `A112624(A036561(n))*A268439(n)` -/
def P482119629935746281.Spec : Prop :=
  ∀ n, P482119629935746281.a n = A268437 n

end A268437

/-! ## A268437.P13750755302814896664

`A112624(A175840(n))*A268439(n)`
-/

namespace A268437.P13750755302814896664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A175840 n).toNat * A268439 n

end

end A268437.P13750755302814896664

namespace A268437

/-- `A112624(A175840(n))*A268439(n)` -/
def P13750755302814896664.Spec : Prop :=
  ∀ n, P13750755302814896664.a n = A268437 n

end A268437

/-!
# A268438: Triangle read by rows, T(n,k) = (-1)^k*(2*n)!*P[n,k](n/(n+1)) where P is the P-transform, for n>=0 and 0<=k<=n.

The programs for A268438, the canonical program `A268438.P6453878173920205538` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268438 has offset 0).

The definition of A268438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268438.P9711886237879681380

`A098361(n)*A268440(n)`
-/

namespace A268438.P9711886237879681380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A268440 n

end

end A268438.P9711886237879681380

namespace A268438

/-- `A098361(n)*A268440(n)` -/
def P9711886237879681380.Spec : Prop :=
  ∀ n, P9711886237879681380.a n = A268438 n

end A268438

/-! ## A268438.P6453878173920205538

`A269940(n)*A357013(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268438

/-- `A269940(n)*A357013(n)` -/
def P6453878173920205538.Spec : Prop :=
  ∀ n, P6453878173920205538.a n = A268438 n

theorem P6453878173920205538.correct : P6453878173920205538.Spec := by
  intro n
  simp only [A268438]

end A268438

/-! ## A268438.P11692359401420923633

`A094527(n)*A098361(n)*A269940(n)`
-/

namespace A268438.P11692359401420923633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A098361 n * A269940 n

end

end A268438.P11692359401420923633

namespace A268438

/-- `A094527(n)*A098361(n)*A269940(n)` -/
def P11692359401420923633.Spec : Prop :=
  ∀ n, P11692359401420923633.a n = A268438 n

end A268438

/-! ## A268438.P9485024447153189458

`A112624(A036561(n))*A268440(n)`
-/

namespace A268438.P9485024447153189458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A036561 n).toNat * A268440 n

end

end A268438.P9485024447153189458

namespace A268438

/-- `A112624(A036561(n))*A268440(n)` -/
def P9485024447153189458.Spec : Prop :=
  ∀ n, P9485024447153189458.a n = A268438 n

end A268438

/-! ## A268438.P7803965011379945038

`A112624(A175840(n))*A268440(n)`
-/

namespace A268438.P7803965011379945038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A175840 n).toNat * A268440 n

end

end A268438.P7803965011379945038

namespace A268438

/-- `A112624(A175840(n))*A268440(n)` -/
def P7803965011379945038.Spec : Prop :=
  ∀ n, P7803965011379945038.a n = A268438 n

end A268438

/-!
# A268439: Triangle read by rows, T(n,k) = C(2*n,n+k)*Sum_{m=0..k} (-1)^(m+k)*C(n+k,n+m)* Stirling2(n+m,m), for n>=0 and 0<=k<=n.

The programs for A268439, the canonical program `A268439.P17514518992778533156` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268439 has offset 0).

The definition of A268439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268439.P17514518992778533156

`A094527(n)*A269939(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268439

/-- `A094527(n)*A269939(n)` -/
def P17514518992778533156.Spec : Prop :=
  ∀ n, P17514518992778533156.a n = A268439 n

theorem P17514518992778533156.correct : P17514518992778533156.Spec := by
  intro n
  simp only [A268439]

end A268439

/-! ## A268439.P6300802588213359126

`A269939(n)*A380113(n)`
-/

namespace A268439.P6300802588213359126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269939 n * A380113 n

end

end A268439.P6300802588213359126

namespace A268439

/-- `A269939(n)*A380113(n)` -/
def P6300802588213359126.Spec : Prop :=
  ∀ n, P6300802588213359126.a n = A268439 n

end A268439

/-! ## A268439.P2638660399640008747

`A269939(n)/A098361(n)*A357013(n)`
-/

namespace A268439.P2638660399640008747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269939 n : ℚ) / (A098361 n : ℚ) * (A357013 n : ℚ)

end

end A268439.P2638660399640008747

namespace A268439

/-- `A269939(n)/A098361(n)*A357013(n)` -/
def P2638660399640008747.Spec : Prop :=
  ∀ n, P2638660399640008747.a n = (A268439 n : ℚ)

end A268439

/-! ## A268439.P15824171772023730867

`A268437(n)/A098361(n)`
-/

namespace A268439.P15824171772023730867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268437 n : ℚ) / (A098361 n : ℚ)

end

end A268439.P15824171772023730867

namespace A268439

/-- `A268437(n)/A098361(n)` -/
def P15824171772023730867.Spec : Prop :=
  ∀ n, P15824171772023730867.a n = (A268439 n : ℚ)

end A268439

/-! ## A268439.P4636684192615298845

`A130191(n)*A270488(A053532(n))`
-/

namespace A268439.P4636684192615298845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 n * A270488 (A053532 n).toNat

end

end A268439.P4636684192615298845

namespace A268439

/-- `A130191(n)*A270488(A053532(n))` -/
def P4636684192615298845.Spec : Prop :=
  ∀ n, P4636684192615298845.a n = A268439 n

end A268439

/-!
# A268440: Triangle read by rows, T(n,k) = C(2*n,n+k)*Sum_{m=0..k} (-1)^(m+k)*C(n+k,n+m)* Stirling1(n+m,m), for n>=0 and 0<=k<=n.

The programs for A268440, the canonical program `A268440.P17355036467535128514` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268440 has offset 0).

The definition of A268440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268440.P17355036467535128514

`A094527(n)*A269940(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268440

/-- `A094527(n)*A269940(n)` -/
def P17355036467535128514.Spec : Prop :=
  ∀ n, P17355036467535128514.a n = A268440 n

theorem P17355036467535128514.correct : P17355036467535128514.Spec := by
  intro n
  simp only [A268440]

end A268440

/-! ## A268440.P4329706200011966485

`A269940(n)*A380113(n)`
-/

namespace A268440.P4329706200011966485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 n * A380113 n

end

end A268440.P4329706200011966485

namespace A268440

/-- `A269940(n)*A380113(n)` -/
def P4329706200011966485.Spec : Prop :=
  ∀ n, P4329706200011966485.a n = A268440 n

end A268440

/-! ## A268440.P5740139883169202811

`A008311(A061885(n))*A269940(n)`
-/

namespace A268440.P5740139883169202811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A061885 n).toNat * A269940 n

end

end A268440.P5740139883169202811

namespace A268440

/-- `A008311(A061885(n))*A269940(n)` -/
def P5740139883169202811.Spec : Prop :=
  ∀ n, P5740139883169202811.a n = A268440 n

end A268440

/-! ## A268440.P1455964041616794471

`A062344(A061579(n))*A269940(n)`
-/

namespace A268440.P1455964041616794471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A061579 n).toNat * A269940 n

end

end A268440.P1455964041616794471

namespace A268440

/-- `A062344(A061579(n))*A269940(n)` -/
def P1455964041616794471.Spec : Prop :=
  ∀ n, P1455964041616794471.a n = A268440 n

end A268440

/-! ## A268440.P10924255227332426934

`A268438(n)/A098361(n)`
-/

namespace A268440.P10924255227332426934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268438 n : ℚ) / (A098361 n : ℚ)

end

end A268440.P10924255227332426934

namespace A268440

/-- `A268438(n)/A098361(n)` -/
def P10924255227332426934.Spec : Prop :=
  ∀ n, P10924255227332426934.a n = (A268440 n : ℚ)

end A268440

/-!
# A268441: Triangle read by rows, the coefficients of the Bell polynomials.

The programs for A268441, there is no canonical definition to state claims against.
-/

/-! ## A268441.P4819438316902067917

`A101894(n*a(n-1))%A059268(n)` with `a(0)=1`
-/

namespace A268441.P4819438316902067917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A101894 ((n : ℤ) * a (n - 1)).toNat) (A059268 n)

end

end A268441.P4819438316902067917

/-! ## A268441.P14047575916378750969

`∑{e}[A331474(A257783(n)), #]`
-/

namespace A268441.P14047575916378750969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331474 (A257783 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A268441.P14047575916378750969

/-! ## A268441.P5764077295750202035

`A330058(A208758(n+1))%6`
-/

namespace A268441.P5764077295750202035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330058 (A208758 (n + 1)).toNat) 6

end

end A268441.P5764077295750202035

/-! ## A268441.P15255930053403558259

`and(A001122(2^n), A048993(n))`
-/

namespace A268441.P15255930053403558259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001122 (2 ^ n)) (A048993 n)

end

end A268441.P15255930053403558259

/-! ## A268441.P8120798323841706705

`and(A048993(n), A344138(2^n))`
-/

namespace A268441.P8120798323841706705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048993 n) (A344138 (2 ^ n))

end

end A268441.P8120798323841706705

/-!
# A268443: a(n) = (A005705(n) - A268444(n))/4.

The programs for A268443, the canonical program `A268443.P9208057385295223950` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268443 has offset 0).

The definition of A268443 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268443.P9208057385295223950

`(A005705(n)-A268444(n))/4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A268443

/-- `(A005705(n)-A268444(n))/4` -/
def P9208057385295223950.Spec : Prop :=
  ∀ n, P9208057385295223950.a n = (A268443 n : ℚ)

end A268443

/-! ## A268443.P15605899246512512165

`A002265(A005705(n)-A268444(n))`
-/

namespace A268443.P15605899246512512165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005705 n - A268444 n).toNat

end

end A268443.P15605899246512512165

namespace A268443

/-- `A002265(A005705(n)-A268444(n))` -/
def P15605899246512512165.Spec : Prop :=
  ∀ n, P15605899246512512165.a n = A268443 n

end A268443

/-! ## A268443.P8127340600439890984

`A130845(A005705(n)-A268444(n))`
-/

namespace A268443.P8127340600439890984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A005705 n - A268444 n).toNat

end

end A268443.P8127340600439890984

namespace A268443

/-- `A130845(A005705(n)-A268444(n))` -/
def P8127340600439890984.Spec : Prop :=
  ∀ n, P8127340600439890984.a n = A268443 n

end A268443

/-! ## A268443.P4275528495501540904

`A131508(A005705(n)-A268444(n))`
-/

namespace A268443.P4275528495501540904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A005705 n - A268444 n).toNat

end

end A268443.P4275528495501540904

namespace A268443

/-- `A131508(A005705(n)-A268444(n))` -/
def P4275528495501540904.Spec : Prop :=
  ∀ n, P4275528495501540904.a n = A268443 n

end A268443

/-! ## A268443.P536243044015750191

`A008624(A005705(n)+1-A268444(n))`
-/

namespace A268443.P536243044015750191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A005705 n + (1 - A268444 n)).toNat

end

end A268443.P536243044015750191

namespace A268443

/-- `A008624(A005705(n)+1-A268444(n))` -/
def P536243044015750191.Spec : Prop :=
  ∀ n, P536243044015750191.a n = A268443 n

end A268443

/-! ## A268443.P9043634316449920069

`A008624(1-(A268444(n)-A005705(n)))`
-/

namespace A268443.P9043634316449920069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (1 - (A268444 n - A005705 n)).toNat

end

end A268443.P9043634316449920069

namespace A268443

/-- `A008624(1-(A268444(n)-A005705(n)))` -/
def P9043634316449920069.Spec : Prop :=
  ∀ n, P9043634316449920069.a n = A268443 n

end A268443

/-! ## A268443.P1476133463119307047

`A008621(A005705(n)-A268444(n))-1`
-/

namespace A268443.P1476133463119307047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A005705 n - A268444 n).toNat - 1

end

end A268443.P1476133463119307047

namespace A268443

/-- `A008621(A005705(n)-A268444(n))-1` -/
def P1476133463119307047.Spec : Prop :=
  ∀ n, P1476133463119307047.a n = A268443 n

end A268443

/-!
# A268444: a(n) = Product_{i=0..k}(n_i+1) where n = Sum_{i=0..k}n_i*4^i is the base-4 representation of n.

The programs for A268444, the canonical program `A268444.P5634643260865107777` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268444 has offset 0).

The definition of A268444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268444.P5634643260865107777

`∏{digits}[A007090(n), #+1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268444

/-- `∏{digits}[A007090(n), #+1]` -/
def P5634643260865107777.Spec : Prop :=
  ∀ n, (P5634643260865107777.a n : ℤ) = A268444 n

theorem P5634643260865107777.correct : P5634643260865107777.Spec := by
  intro n
  simp only [A268444]

end A268444

/-! ## A268444.P10994528278694917803

`A194459(A020654(n+1))`
-/

namespace A268444.P10994528278694917803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 (A020654 (n + 1)).toNat

end

end A268444.P10994528278694917803

namespace A268444

/-- `A194459(A020654(n+1))` -/
def P10994528278694917803.Spec : Prop :=
  ∀ n, P10994528278694917803.a n = A268444 n

end A268444

/-! ## A268444.P4232955852603361631

`filter[A194459(n), A011558(#)]`
-/

namespace A268444.P4232955852603361631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A268444.P4232955852603361631

namespace A268444

/-- `filter[A194459(n), A011558(#)]` -/
def P4232955852603361631.Spec : Prop :=
  ∀ n, P4232955852603361631.a n = A268444 n

end A268444

/-! ## A268444.P5631190254469741265

`filter[A194459(n), A065333(#)]`
-/

namespace A268444.P5631190254469741265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A268444.P5631190254469741265

namespace A268444

/-- `filter[A194459(n), A065333(#)]` -/
def P5631190254469741265.Spec : Prop :=
  ∀ n, P5631190254469741265.a n = A268444 n

end A268444

/-! ## A268444.P12396852457276056408

`filter[A194459(n), A358847(#)]`
-/

namespace A268444.P12396852457276056408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A268444.P12396852457276056408

namespace A268444

/-- `filter[A194459(n), A358847(#)]` -/
def P12396852457276056408.Spec : Prop :=
  ∀ n, P12396852457276056408.a n = A268444 n

end A268444

/-! ## A268444.P7705608414773735249

`filter[A194459(n), A364252(#)]`
-/

namespace A268444.P7705608414773735249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A268444.P7705608414773735249

namespace A268444

/-- `filter[A194459(n), A364252(#)]` -/
def P7705608414773735249.Spec : Prop :=
  ∀ n, P7705608414773735249.a n = A268444 n

end A268444

/-! ## A268444.P17394739636339033544

`A194459(record[n/gcd(5, A194459(n))])`
-/

namespace A268444.P17394739636339033544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd 5 (A194459 n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A268444.P17394739636339033544

namespace A268444

/-- `A194459(record[n/gcd(5, A194459(n))])` -/
def P17394739636339033544.Spec : Prop :=
  ∀ n, P17394739636339033544.a n = A268444 n

end A268444

/-! ## A268444.P7632482511333043546

`A338803(A023725(n+1))`
-/

namespace A268444.P7632482511333043546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338803 (A023725 (n + 1)).toNat

end

end A268444.P7632482511333043546

namespace A268444

/-- `A338803(A023725(n+1))` -/
def P7632482511333043546.Spec : Prop :=
  ∀ n, P7632482511333043546.a n = A268444 n

end A268444

/-! ## A268444.P11604734880370222231

`A089898(A007090(n))`
-/

namespace A268444.P11604734880370222231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A007090 n).toNat

end

end A268444.P11604734880370222231

namespace A268444

/-- `A089898(A007090(n))` -/
def P11604734880370222231.Spec : Prop :=
  ∀ n, P11604734880370222231.a n = A268444 n

end A268444

/-! ## A268444.P993061464371996914

`∏{digits}[A104155(n+1), #]`
-/

namespace A268444.P993061464371996914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A268444.P993061464371996914

namespace A268444

/-- `∏{digits}[A104155(n+1), #]` -/
def P993061464371996914.Spec : Prop :=
  ∀ n, (P993061464371996914.a n : ℤ) = A268444 n

end A268444

/-!
# A268445: Integers n such that A005897(n) is the sum of two nonzero squares.

The programs for A268445, there is no canonical definition to state claims against.
-/

/-! ## A268445.P16234216245583903247

`lt[A000038(n), A122865(n²)]`
-/

namespace A268445.P16234216245583903247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268445.P16234216245583903247

/-! ## A268445.P11663321099092655257

`lt[A079978(n), A122865(n²)]`
-/

namespace A268445.P11663321099092655257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268445.P11663321099092655257

/-! ## A268445.P1000884337494060870

`lt[A320841(n), A122865(n²)]`
-/

namespace A268445.P1000884337494060870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268445.P1000884337494060870

/-! ## A268445.P918909366650691395

`lt[A010054(n+1), A122865(n²)]`
-/

namespace A268445.P918909366650691395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268445.P918909366650691395

/-! ## A268445.P16979890181157835791

`lt[A189298(n+1), A122865(n²)]`
-/

namespace A268445.P16979890181157835791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268445.P16979890181157835791

/-!
# A268446: Number of North-East lattice paths from (0,0) to (n,n) that cross the diagonal y = x horizontally exactly three times.

The programs for A268446, the canonical program `A268446.P5990949856966788863` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268446 has offset 6).

The definition of A268446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268446.P5990949856966788863

`14*C(2*(n+6)+1, n)/(n+14)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268446

/-- `14*C(2*(n+6)+1, n)/(n+14)` -/
def P5990949856966788863.Spec : Prop :=
  ∀ n, P5990949856966788863.a n = (A268446 (n + 6) : ℚ)

end A268446

/-! ## A268446.P17274451033583182033

`A000590(n+7)-(A000590(n+6)+A000589(n+6))`
-/

namespace A268446.P17274451033583182033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000590 (n + 7) - (A000590 (n + 6) + A000589 (n + 6))

end

end A268446.P17274451033583182033

namespace A268446

/-- `A000590(n+7)-(A000590(n+6)+A000589(n+6))` -/
def P17274451033583182033.Spec : Prop :=
  ∀ n, P17274451033583182033.a n = A268446 (n + 6)

end A268446

/-! ## A268446.P4586334938346884956

`A039598(A052905(n+3)+11)`
-/

namespace A268446.P4586334938346884956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A052905 (n + 3) + 11).toNat

end

end A268446.P4586334938346884956

namespace A268446

/-- `A039598(A052905(n+3)+11)` -/
def P4586334938346884956.Spec : Prop :=
  ∀ n, P4586334938346884956.a n = A268446 (n + 6)

end A268446

/-! ## A268446.P6084045024557518408

`A039598(Δ[A023551(n+1)]+12)`
-/

namespace A268446.P6084045024557518408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (f1 (n + 1) - f1 n + 12).toNat

end

end A268446.P6084045024557518408

namespace A268446

/-- `A039598(Δ[A023551(n+1)]+12)` -/
def P6084045024557518408.Spec : Prop :=
  ∀ n, P6084045024557518408.a n = A268446 (n + 6)

end A268446

/-! ## A268446.P11042694651021878948

`A050166(Δ[A026054(n+4)]-1)`
-/

namespace A268446.P11042694651021878948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (f1 (n + 1) - f1 n - 1).toNat

end

end A268446.P11042694651021878948

namespace A268446

/-- `A050166(Δ[A026054(n+4)]-1)` -/
def P11042694651021878948.Spec : Prop :=
  ∀ n, P11042694651021878948.a n = A268446 (n + 6)

end A268446

/-! ## A268446.P9192271867573349122

`A009766(eq[13, A025581(n)])`
-/

namespace A268446.P9192271867573349122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268446.P9192271867573349122

namespace A268446

/-- `A009766(eq[13, A025581(n)])` -/
def P9192271867573349122.Spec : Prop :=
  ∀ n, P9192271867573349122.a n = A268446 (n + 6)

end A268446

/-! ## A268446.P17662214039299539960

`A009766(eq[14, A193739(n)])`
-/

namespace A268446.P17662214039299539960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268446.P17662214039299539960

namespace A268446

/-- `A009766(eq[14, A193739(n)])` -/
def P17662214039299539960.Spec : Prop :=
  ∀ n, P17662214039299539960.a n = A268446 (n + 6)

end A268446

/-! ## A268446.P11649925760629644056

`record[A053121(A173036(2*n+1))]`
-/

namespace A268446.P11649925760629644056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A173036 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268446.P11649925760629644056

namespace A268446

/-- `record[A053121(A173036(2*n+1))]` -/
def P11649925760629644056.Spec : Prop :=
  ∀ n, P11649925760629644056.a n = A268446 (n + 6)

end A268446

/-!
# A268447: Number of North-East lattice paths from (0,0) to (n,n) that cross the diagonal y = x horizontally exactly four times.

The programs for A268447, the canonical program `A268447.P7684583934776672033` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268447 has offset 8).

The definition of A268447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268447.P7684583934776672033

`A128899(A000124(n+9)+8)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268447

/-- `A128899(A000124(n+9)+8)` -/
def P7684583934776672033.Spec : Prop :=
  ∀ n, P7684583934776672033.a n = A268447 (n + 8)

theorem P7684583934776672033.correct : P7684583934776672033.Spec := by
  intro n
  simp only [A268447, Nat.add_sub_cancel]

end A268447

/-! ## A268447.P8456486884217919940

`A128899(A046691(n+7)+13)`
-/

namespace A268447.P8456486884217919940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A046691 (n + 7) + 13).toNat

end

end A268447.P8456486884217919940

namespace A268447

/-- `A128899(A046691(n+7)+13)` -/
def P8456486884217919940.Spec : Prop :=
  ∀ n, P8456486884217919940.a n = A268447 (n + 8)

end A268447

/-! ## A268447.P1930331429874945259

`A039598(A000217(n+8)+8)`
-/

namespace A268447.P1930331429874945259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A000217 (n + 8) + 8).toNat

end

end A268447.P1930331429874945259

namespace A268447

/-- `A039598(A000217(n+8)+8)` -/
def P1930331429874945259.Spec : Prop :=
  ∀ n, P1930331429874945259.a n = A268447 (n + 8)

end A268447

/-! ## A268447.P11844903751850472750

`A050166(A000217(n+9)-9)`
-/

namespace A268447.P11844903751850472750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A000217 (n + 9) - 9).toNat

end

end A268447.P11844903751850472750

namespace A268447

/-- `A050166(A000217(n+9)-9)` -/
def P11844903751850472750.Spec : Prop :=
  ∀ n, P11844903751850472750.a n = A268447 (n + 8)

end A268447

/-! ## A268447.P16770934559133744422

`A008315((n+9)²+n)`
-/

namespace A268447.P16770934559133744422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((n + 9) ^ 2 + n)

end

end A268447.P16770934559133744422

namespace A268447

/-- `A008315((n+9)²+n)` -/
def P16770934559133744422.Spec : Prop :=
  ∀ n, P16770934559133744422.a n = A268447 (n + 8)

end A268447

/-!
# A268448: Numbers k such that (35*10^k - 11)/3 is prime.

The programs for A268448, there is no canonical definition to state claims against.
-/

/-! ## A268448.P546361261420456938

`lt[A115994(3*n+4)/A161904(2*(n+2)), 2]`
-/

namespace A268448.P546361261420456938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115994 (3 * n + 4) : ℚ) / (A161904 (2 * (n + 2)) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A268448.P546361261420456938

/-!
# A268450: Number of length-n 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268450, there is no canonical definition to state claims against.
-/

/-! ## A268450.P12204543960961871009

`A268457((n+1)²+n²)`
-/

namespace A268450.P12204543960961871009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 ((n + 1) ^ 2 + n ^ 2)

end

end A268450.P12204543960961871009

/-! ## A268450.P7548785988479268883

`record[gcd(A003987(n), A268457(n+1))]`
-/

namespace A268450.P7548785988479268883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A268457 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268450.P7548785988479268883

/-! ## A268450.P16224873520202499989

`A268457(A001844(n))+A025469(n)`
-/

namespace A268450.P16224873520202499989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A001844 n).toNat + A025469 n

end

end A268450.P16224873520202499989

/-! ## A268450.P9844369074282199039

`A007318(∑[n])*A268457(A001844(n))`
-/

namespace A268450.P9844369074282199039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A268457 (A001844 n).toNat

end

end A268450.P9844369074282199039

/-! ## A268450.P11422701864296042201

`A322437(n+1)+A268457(A001844(n))`
-/

namespace A268450.P11422701864296042201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (n + 1) + A268457 (A001844 n).toNat

end

end A268450.P11422701864296042201

/-!
# A268451: Number of length-n 0..2 arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268451, there is no canonical definition to state claims against.
-/

/-! ## A268451.P5291280484296196720

`A268457(∑[n+2])`
-/

namespace A268451.P5291280484296196720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268451.P5291280484296196720

/-! ## A268451.P14677062798055686414

`record[A268457(A000096(A133310(n)))]`
-/

namespace A268451.P14677062798055686414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268451.P14677062798055686414

/-! ## A268451.P11019033269779830035

`record[A268457(A000096(A002260(n+1)))]`
-/

namespace A268451.P11019033269779830035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268451.P11019033269779830035

/-! ## A268451.P17716528307288827565

`record[A268457(A000096(A003602(n+1)))]`
-/

namespace A268451.P17716528307288827565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268451.P17716528307288827565

/-! ## A268451.P10466309086843435671

`record[A268457(A000096(A004736(n+1)))]`
-/

namespace A268451.P10466309086843435671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268451.P10466309086843435671

/-!
# A268452: Number of length-n 0..3 arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268452, there is no canonical definition to state claims against.
-/

/-! ## A268452.P6635967853151431867

`A268457(∑[n+3]+1)`
-/

namespace A268452.P6635967853151431867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268452.P6635967853151431867

/-! ## A268452.P10583779520588043630

`A268457(Δ[A008778(n)])%A041994(n)`
-/

namespace A268452.P10583779520588043630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268457 (f1 (n + 1) - f1 n).toNat) (A041994 n)

end

end A268452.P10583779520588043630

/-! ## A268452.P12441119275152880508

`A268457(A034856(n+2))+A000007(n+1)`
-/

namespace A268452.P12441119275152880508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A268452.P12441119275152880508

/-! ## A268452.P12675162248091812064

`A178334(n+1)*A268457(A034856(n+2))`
-/

namespace A268452.P12675162248091812064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A268457 (A034856 (n + 2)).toNat

end

end A268452.P12675162248091812064

/-! ## A268452.P7881511887593104357

`A007318(A071187(n+1))*A268457(A034856(n+2))`
-/

namespace A268452.P7881511887593104357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A071187 (n + 1)).toNat * A268457 (A034856 (n + 2)).toNat

end

end A268452.P7881511887593104357

/-!
# A268453: Number of length-n 0..4 arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268453, there is no canonical definition to state claims against.
-/

/-! ## A268453.P6468324398343926191

`A268457(A141214(n+1))`
-/

namespace A268453.P6468324398343926191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A141214 (n + 1)).toNat

end

end A268453.P6468324398343926191

/-! ## A268453.P13676171475766763081

`A268457(A027379(n+2))`
-/

namespace A268453.P13676171475766763081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A027379 (n + 2)).toNat

end

end A268453.P13676171475766763081

/-! ## A268453.P7683634149522985713

`A268457(A055998(n+2))`
-/

namespace A268453.P7683634149522985713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A055998 (n + 2)).toNat

end

end A268453.P7683634149522985713

/-! ## A268453.P3791147036419247075

`A268457(A056000(n)+7)`
-/

namespace A268453.P3791147036419247075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A056000 n + 7).toNat

end

end A268453.P3791147036419247075

/-! ## A268453.P5873550081389280462

`A268457(A052905(n+1)+2)`
-/

namespace A268453.P5873550081389280462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A052905 (n + 1) + 2).toNat

end

end A268453.P5873550081389280462

/-!
# A268454: Number of length-n 0..5 arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268454, there is no canonical definition to state claims against.
-/

/-! ## A268454.P7985838231065584841

`A268457(A046691(n+3))`
-/

namespace A268454.P7985838231065584841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A046691 (n + 3)).toNat

end

end A268454.P7985838231065584841

/-! ## A268454.P4725244860535867442

`A268457(Δ[A023545(n+1)])`
-/

namespace A268454.P4725244860535867442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (f1 (n + 1) - f1 n).toNat

end

end A268454.P4725244860535867442

/-! ## A268454.P17331393857504852276

`A268457(A027379(n+2)+n+4)`
-/

namespace A268454.P17331393857504852276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A027379 (n + 2) + (n + 4 : ℤ)).toNat

end

end A268454.P17331393857504852276

/-! ## A268454.P6047379816608648249

`A268457(A000217(n+6)-(n+10))`
-/

namespace A268454.P6047379816608648249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A268454.P6047379816608648249

/-! ## A268454.P4931966280830471380

`A268457(A000124(n+6)-(n+11))`
-/

namespace A268454.P4931966280830471380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000124 (n + 6) - (n + 11 : ℤ)).toNat

end

end A268454.P4931966280830471380

/-!
# A268455: Number of length-n 0..6 arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268455, there is no canonical definition to state claims against.
-/

/-! ## A268455.P18073743842608151110

`A268457(A052905(n+3))`
-/

namespace A268455.P18073743842608151110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A052905 (n + 3)).toNat

end

end A268455.P18073743842608151110

/-! ## A268455.P5377884730743465090

`A268457(A000096(n+5)-4)`
-/

namespace A268455.P5377884730743465090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000096 (n + 5) - 4).toNat

end

end A268455.P5377884730743465090

/-! ## A268455.P15897294889765340801

`A268457(A000217(n+6)-5)`
-/

namespace A268455.P15897294889765340801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000217 (n + 6) - 5).toNat

end

end A268455.P15897294889765340801

/-! ## A268455.P14728566182926107021

`A268457(A000124(n+6)-6)`
-/

namespace A268455.P14728566182926107021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000124 (n + 6) - 6).toNat

end

end A268455.P14728566182926107021

/-! ## A268455.P3721461259180369566

`A268457(Δ[Δ[A006504(n+1)]])`
-/

namespace A268455.P3721461259180369566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (f1 (n + 1) - f1 n).toNat

end

end A268455.P3721461259180369566

/-!
# A268456: Number of length-n 0..7 arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268456, there is no canonical definition to state claims against.
-/

/-! ## A268456.P12269867567615077997

`A268457(A055999(n+4))`
-/

namespace A268456.P12269867567615077997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A055999 (n + 4)).toNat

end

end A268456.P12269867567615077997

/-! ## A268456.P10619204988935750366

`A268457(Δ[A023551(n+2)])`
-/

namespace A268456.P10619204988935750366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (f1 (n + 1) - f1 n).toNat

end

end A268456.P10619204988935750366

/-! ## A268456.P10387087827674594496

`A268457(A000217(n+7)-6)`
-/

namespace A268456.P10387087827674594496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000217 (n + 7) - 6).toNat

end

end A268456.P10387087827674594496

/-! ## A268456.P944256769050722718

`A268457(A000124(n+7)-7)`
-/

namespace A268456.P944256769050722718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000124 (n + 7) - 7).toNat

end

end A268456.P944256769050722718

/-! ## A268456.P16784874582830985746

`A268457(2*n+A167499(n+4)+2)`
-/

namespace A268456.P16784874582830985746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 ((2 * n : ℤ) + (A167499 (n + 4) + 2)).toNat

end

end A268456.P16784874582830985746

/-!
# A268457: T(n,k)=Number of length-n 0..k arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268457, there is no canonical definition to state claims against.
-/

/-! ## A268457.P6280257406658062282

`A269467(n+1)+A011685(A166350(n+1)²)`
-/

namespace A268457.P6280257406658062282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (n + 1) + A011685 (A166350 (n + 1) ^ 2).toNat

end

end A268457.P6280257406658062282

/-! ## A268457.P5524789852770009364

`A269678(n+1)+A011685(A166350(n+1)²)`
-/

namespace A268457.P5524789852770009364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (n + 1) + A011685 (A166350 (n + 1) ^ 2).toNat

end

end A268457.P5524789852770009364

/-! ## A268457.P5089244879645162148

`A269606(n+1)+A007814(A286331(n))`
-/

namespace A268457.P5089244879645162148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (n + 1) + A007814 (A286331 n).toNat

end

end A268457.P5089244879645162148

/-! ## A268457.P11212622119710638599

`A269467(n+1)+A225654(A135313(n))`
-/

namespace A268457.P11212622119710638599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (n + 1) + A225654 (A135313 n).toNat

end

end A268457.P11212622119710638599

/-! ## A268457.P1940838493810347325

`A269537(n+1)+A225654(A135313(n))`
-/

namespace A268457.P1940838493810347325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) + A225654 (A135313 n).toNat

end

end A268457.P1940838493810347325

/-!
# A268458: Number of length-4 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268458, the canonical program `A268458.P12081710619936426125` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268458 has offset 1).

The definition of A268458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268458.P12081710619936426125

`(n+1)^4+4*(n+1)^3+4*(n+1)²+n+1+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268458

/-- `(n+1)^4+4*(n+1)^3+4*(n+1)²+n+1+1` -/
def P12081710619936426125.Spec : Prop :=
  ∀ n, (P12081710619936426125.a n : ℤ) = A268458 (n + 1)

theorem P12081710619936426125.correct : P12081710619936426125.Spec := by
  intro n
  simp only [A268458, Nat.add_sub_cancel]

end A268458

/-! ## A268458.P12731941552729306384

`or(1, ((n+1)*(n+3))²+n+1)`
-/

namespace A268458.P12731941552729306384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (((n + 1) * (n + 3)) ^ 2 + (n + 1))

end

end A268458.P12731941552729306384

namespace A268458

/-- `or(1, ((n+1)*(n+3))²+n+1)` -/
def P12731941552729306384.Spec : Prop :=
  ∀ n, (P12731941552729306384.a n : ℤ) = A268458 (n + 1)

end A268458

/-! ## A268458.P16756406902340430864

`xor(1, ((n+1)*(n+3))²+n+1)`
-/

namespace A268458.P16756406902340430864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (((n + 1) * (n + 3)) ^ 2 + (n + 1))

end

end A268458.P16756406902340430864

namespace A268458

/-- `xor(1, ((n+1)*(n+3))²+n+1)` -/
def P16756406902340430864.Spec : Prop :=
  ∀ n, (P16756406902340430864.a n : ℤ) = A268458 (n + 1)

end A268458

/-! ## A268458.P12824872711670801462

`∑[(∑[8*n+10]+floor(acot(n)))*(n+1)]`
-/

namespace A268458.P12824872711670801462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268458.P12824872711670801462

namespace A268458

/-- `∑[(∑[8*n+10]+floor(acot(n)))*(n+1)]` -/
def P12824872711670801462.Spec : Prop :=
  ∀ n, P12824872711670801462.a n = A268458 (n + 1)

end A268458

/-! ## A268458.P1972547448721792837

`∑[A000007(n)+∑[A135453(n+1)-2]]`
-/

namespace A268458.P1972547448721792837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268458.P1972547448721792837

namespace A268458

/-- `∑[A000007(n)+∑[A135453(n+1)-2]]` -/
def P1972547448721792837.Spec : Prop :=
  ∀ n, P1972547448721792837.a n = A268458 (n + 1)

end A268458

/-! ## A268458.P10946326807102439049

`∑[A033931(2*(n+1))-A103517(n)]`
-/

namespace A268458.P10946326807102439049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (2 * (n + 1)) - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268458.P10946326807102439049

namespace A268458

/-- `∑[A033931(2*(n+1))-A103517(n)]` -/
def P10946326807102439049.Spec : Prop :=
  ∀ n, P10946326807102439049.a n = A268458 (n + 1)

end A268458

/-! ## A268458.P6329538875522612335

`record[A165447(n+2)+A003057(n+2)]`
-/

namespace A268458.P6329538875522612335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165447 (n + 2) + A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268458.P6329538875522612335

namespace A268458

/-- `record[A165447(n+2)+A003057(n+2)]` -/
def P6329538875522612335.Spec : Prop :=
  ∀ n, P6329538875522612335.a n = A268458 (n + 1)

end A268458

/-!
# A268459: Number of length-5 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268459, the canonical program `A268459.P1944635422954414379` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268459 has offset 1).

The definition of A268459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268459.P11405769397145264030

`(n+1)^5+5*(n+1)^4+7*(n+1)^3+(n+1)²+2*(n+1)`
-/

namespace A268459.P11405769397145264030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 + 5 * (n + 1) ^ 4 + 7 * (n + 1) ^ 3 + (n + 1) ^ 2 + 2 * (n + 1)

end

end A268459.P11405769397145264030

namespace A268459

/-- `(n+1)^5+5*(n+1)^4+7*(n+1)^3+(n+1)²+2*(n+1)` -/
def P11405769397145264030.Spec : Prop :=
  ∀ n, (P11405769397145264030.a n : ℤ) = A268459 (n + 1)

theorem P11405769397145264030.correct : P11405769397145264030.Spec := by
  intro n
  simp only [A268459, Nat.add_sub_cancel, A268459.P11405769397145264030.a, A268459.P1944635422954414379.a, A061222, A061222.P12905291855604016356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A268459

/-! ## A268459.P1944635422954414379

`(n+1)*(A061222(n)-(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268459

/-- `(n+1)*(A061222(n)-(n+1))` -/
def P1944635422954414379.Spec : Prop :=
  ∀ n, P1944635422954414379.a n = A268459 (n + 1)

theorem P1944635422954414379.correct : P1944635422954414379.Spec := by
  intro n
  simp only [A268459, Nat.add_sub_cancel]

end A268459

/-! ## A268459.P2325261983886625145

`A269659(n+1)%A269658(n+1)`
-/

namespace A268459.P2325261983886625145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269659 (n + 1)) (A269658 (n + 1))

end

end A268459.P2325261983886625145

namespace A268459

/-- `A269659(n+1)%A269658(n+1)` -/
def P2325261983886625145.Spec : Prop :=
  ∀ n, P2325261983886625145.a n = A268459 (n + 1)

end A268459

/-! ## A268459.P2189823531025136686

`∑[4*A145995(∑[n+1]+1)]`
-/

namespace A268459.P2189823531025136686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A145995 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268459.P2189823531025136686

namespace A268459

/-- `∑[4*A145995(∑[n+1]+1)]` -/
def P2189823531025136686.Spec : Prop :=
  ∀ n, P2189823531025136686.a n = A268459 (n + 1)

end A268459

/-!
# A268460: Number of length-6 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268460, the canonical program `A268460.P871386938295548115` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268460 has offset 1).

The definition of A268460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268460.P871386938295548115

`(n+1)^6+6*(n+1)^5+11*(n+1)^4+2*(n+1)^3+6*(n+1)-4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268460

/-- `(n+1)^6+6*(n+1)^5+11*(n+1)^4+2*(n+1)^3+6*(n+1)-4` -/
def P871386938295548115.Spec : Prop :=
  ∀ n, P871386938295548115.a n = A268460 (n + 1)

theorem P871386938295548115.correct : P871386938295548115.Spec := by
  intro n
  simp only [A268460, Nat.add_sub_cancel]

end A268460

/-! ## A268460.P6764452003755569472

`A268457(A000124(n+5)+5)`
-/

namespace A268460.P6764452003755569472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000124 (n + 5) + 5).toNat

end

end A268460.P6764452003755569472

namespace A268460

/-- `A268457(A000124(n+5)+5)` -/
def P6764452003755569472.Spec : Prop :=
  ∀ n, P6764452003755569472.a n = A268460 (n + 1)

end A268460

/-! ## A268460.P4124255124108810328

`A268457(A000217(n+5)+6)`
-/

namespace A268460.P4124255124108810328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000217 (n + 5) + 6).toNat

end

end A268460.P4124255124108810328

namespace A268460

/-- `A268457(A000217(n+5)+6)` -/
def P4124255124108810328.Spec : Prop :=
  ∀ n, P4124255124108810328.a n = A268460 (n + 1)

end A268460

/-! ## A268460.P4734958908592179793

`A268457(A046691(n+3)+10)`
-/

namespace A268460.P4734958908592179793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A046691 (n + 3) + 10).toNat

end

end A268460.P4734958908592179793

namespace A268460

/-- `A268457(A046691(n+3)+10)` -/
def P4734958908592179793.Spec : Prop :=
  ∀ n, P4734958908592179793.a n = A268460 (n + 1)

end A268460

/-! ## A268460.P1365983897430262689

`A268457(A267872(n+8)+A034856(n+2))`
-/

namespace A268460.P1365983897430262689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A267872 (n + 8) + A034856 (n + 2)).toNat

end

end A268460.P1365983897430262689

namespace A268460

/-- `A268457(A267872(n+8)+A034856(n+2))` -/
def P1365983897430262689.Spec : Prop :=
  ∀ n, P1365983897430262689.a n = A268460 (n + 1)

end A268460

/-!
# A268461: Number of length-7 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

The programs for A268461, there is no canonical definition to state claims against.
-/

/-! ## A268461.P15195453049458473871

`A268457(A000124(n+6)+6)`
-/

namespace A268461.P15195453049458473871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000124 (n + 6) + 6).toNat

end

end A268461.P15195453049458473871

/-! ## A268461.P13119643260401340172

`A268457(A000217(n+6)+7)`
-/

namespace A268461.P13119643260401340172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A000217 (n + 6) + 7).toNat

end

end A268461.P13119643260401340172

/-! ## A268461.P8576002860295314996

`A268457(A055998(n+4)+10)`
-/

namespace A268461.P8576002860295314996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A055998 (n + 4) + 10).toNat

end

end A268461.P8576002860295314996

/-! ## A268461.P3945494539483604546

`A268457(A046691(n+6)-A004277(n+2))`
-/

namespace A268461.P3945494539483604546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A046691 (n + 6) - A004277 (n + 2)).toNat

end

end A268461.P3945494539483604546

/-! ## A268461.P14612786143682420731

`A268457(A061925(n+8)-A001651(n+4))`
-/

namespace A268461.P14612786143682420731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (A061925 (n + 8) - A001651 (n + 4)).toNat

end

end A268461.P14612786143682420731

/-!
# A268462: Expansion of (2 x^4*(5 - 12*x + 8*x^2))/(1 - 2*x)^4.

The programs for A268462, the canonical program `A268462.P14055655153126389097` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268462 has offset 0).

The definition of A268462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((10x^4-24x^5+16x^6)/(1-8x+24x^2-32x^3+16x^4))` (program `A268462.P14055655153126389097`, by `A268462.P14055655153126389097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268462.P14055655153126389097

`ogf((10x^4-24x^5+16x^6)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268462

/-- `ogf((10x^4-24x^5+16x^6)/(1-8x+24x^2-32x^3+16x^4))` -/
def P14055655153126389097.Spec : Prop :=
  ∀ n, P14055655153126389097.a n = A268462 n

theorem P14055655153126389097.correct : P14055655153126389097.Spec := by
  intro n
  simp only [A268462]

end A268462

/-! ## A268462.P16873885661279850353

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=10, a(5)=56, a(6)=224`
-/

namespace A268462.P16873885661279850353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 10, 56, 224] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A268462.P16873885661279850353

namespace A268462

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P16873885661279850353.Spec : Prop :=
  ∀ n, P16873885661279850353.a n = A268462 n

end A268462

/-! ## A268462.P11396630370351116004

`floor(2^(n-3))*∑[∑[n-1]]`
-/

namespace A268462.P11396630370351116004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268462.P11396630370351116004

namespace A268462

/-- `floor(2^(n-3))*∑[∑[n-1]]` -/
def P11396630370351116004.Spec : Prop :=
  ∀ n, P11396630370351116004.a n = A268462 n

end A268462

/-! ## A268462.P5088342953411654202

`abs(floor(2^(n-3))*A254749(n+1))`
-/

namespace A268462.P5088342953411654202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋ * A254749 (n + 1)|

end

end A268462.P5088342953411654202

namespace A268462

/-- `abs(floor(2^(n-3))*A254749(n+1))` -/
def P5088342953411654202.Spec : Prop :=
  ∀ n, P5088342953411654202.a n = A268462 n

end A268462

/-! ## A268462.P16079741474444104908

`A005843(A268598(n)+A268587(n))`
-/

namespace A268462.P16079741474444104908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A268598 n + A268587 n).toNat

end

end A268462.P16079741474444104908

namespace A268462

/-- `A005843(A268598(n)+A268587(n))` -/
def P16079741474444104908.Spec : Prop :=
  ∀ n, P16079741474444104908.a n = A268462 n

end A268462

/-!
# A268465: Primes of the form m*prime(m) + (m + 1)*prime(m + 1) + (m + 2)*prime(m + 2).

The programs for A268465, there is no canonical definition to state claims against.
-/

/-! ## A268465.P17422399154240320169

`p?[A152117(n+2)+A033286(n+1)]`
-/

namespace A268465.P17422399154240320169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 2) + A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268465.P17422399154240320169

/-!
# A268466: Smallest m > 1 such that m^m == 1 (mod n).

The programs for A268466, there is no canonical definition to state claims against.
-/

/-! ## A268466.P1605991660872159646

`A275987(n+1)+A165326(A000129(n))`
-/

namespace A268466.P1605991660872159646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (n + 1) + A165326 (A000129 n).toNat

end

end A268466.P1605991660872159646

/-! ## A268466.P5449778854262552984

`A275987(n+1)+A033999(A275970(n))`
-/

namespace A268466.P5449778854262552984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (n + 1) + A033999 (A275970 n).toNat

end

end A268466.P5449778854262552984

/-!
# A268470: Number of nX2 arrays containing 2 copies of 0..n-1 with column sums equal.

The programs for A268470, there is no canonical definition to state claims against.
-/

/-! ## A268470.P7632523246317678271

`A268472(∑[n+2])`
-/

namespace A268470.P7632523246317678271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268470.P7632523246317678271

/-! ## A268470.P10643327033009754603

`record[A268472(gcd(n, A003992(n)))]`
-/

namespace A268470.P10643327033009754603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (Int.gcd (n : ℤ) (A003992 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268470.P10643327033009754603

/-! ## A268470.P15707398150914216443

`record[A268472(A130297(n+1)+1)]`
-/

namespace A268470.P15707398150914216443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A130297 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268470.P15707398150914216443

/-! ## A268470.P18147835613279839537

`record[A268472(A198954(n)+1+n)]`
-/

namespace A268470.P18147835613279839537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A198954 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268470.P18147835613279839537

/-!
# A268471: Number of nX3 arrays containing 3 copies of 0..n-1 with column sums equal.

The programs for A268471, there is no canonical definition to state claims against.
-/

/-! ## A268471.P16000516860569226804

`A268472(∑[n+3]+1)`
-/

namespace A268471.P16000516860569226804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268471.P16000516860569226804

/-! ## A268471.P4819252633730636131

`record[A268472(A130297(n+1))]`
-/

namespace A268471.P4819252633730636131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268471.P4819252633730636131

/-! ## A268471.P4075602994234003097

`record[A268472(A198464(n+1))]`
-/

namespace A268471.P4075602994234003097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268471.P4075602994234003097

/-!
# A268472: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with column sums equal.

The programs for A268472, there is no canonical definition to state claims against.
-/

/-! ## A268472.P4174242871883957340

`∏{d}[A108056(n+1), A192006(#)]`
-/

namespace A268472.P4174242871883957340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A192006 d

end

end A268472.P4174242871883957340

/-! ## A268472.P13576780471215499167

`A103880(A099375(n)+A004896(n+1))`
-/

namespace A268472.P13576780471215499167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103880 (A099375 n + A004896 (n + 1)).toNat

end

end A268472.P13576780471215499167

/-! ## A268472.P4661898560365619547

`A001221(A066117(n+1))!^A193592(n)`
-/

namespace A268472.P4661898560365619547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (A066117 (n + 1)).toNat).toNat : ℚ) ^ (A193592 n : ℤ)

end

end A268472.P4661898560365619547

/-! ## A268472.P5132689412276828002

`A001221(A066117(n+1))!^A193739(n)`
-/

namespace A268472.P5132689412276828002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (A066117 (n + 1)).toNat).toNat : ℚ) ^ (A193739 n : ℤ)

end

end A268472.P5132689412276828002

/-! ## A268472.P6488504604308052075

`A001221(A066117(n+1))!^A004736(n+1)`
-/

namespace A268472.P6488504604308052075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (A066117 (n + 1)).toNat).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A268472.P6488504604308052075

/-!
# A268473: Number of 4Xn arrays containing n copies of 0..4-1 with column sums equal.

The programs for A268473, there is no canonical definition to state claims against.
-/

/-! ## A268473.P4711497586221089915

`A268472(A141214(n)+7)`
-/

namespace A268473.P4711497586221089915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A141214 n + 7).toNat

end

end A268473.P4711497586221089915

/-! ## A268473.P5541560468212280969

`A268472(A052905(n)+9)`
-/

namespace A268473.P5541560468212280969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A052905 n + 9).toNat

end

end A268473.P5541560468212280969

/-! ## A268473.P7022622743678075812

`A268472(A055999(n)+10)`
-/

namespace A268473.P7022622743678075812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A055999 n + 10).toNat

end

end A268473.P7022622743678075812

/-!
# A268474: Number of 5Xn arrays containing n copies of 0..5-1 with column sums equal.

The programs for A268474, there is no canonical definition to state claims against.
-/

/-! ## A268474.P14595050528466038826

`A268472(A167499(n+3))`
-/

namespace A268474.P14595050528466038826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A167499 (n + 3)).toNat

end

end A268474.P14595050528466038826

/-! ## A268474.P9576833304987023047

`A268472(A155212(n)+13)`
-/

namespace A268474.P9576833304987023047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (A155212 n + 13).toNat

end

end A268474.P9576833304987023047

/-!
# A268476: Balanced evil primes: primes with an even number of runs of 1's in their binary expansion.

The programs for A268476, the canonical program `A268476.P10167548556957758468` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268476 has offset 1).

The definition of A268476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268476.P10167548556957758468

`p?[A043727(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A268476

/-- `p?[A043727(n+1)]` -/
def P10167548556957758468.Spec : Prop :=
  ∀ n, P10167548556957758468.a n = A268476 (n + 1)

theorem P10167548556957758468.correct : P10167548556957758468.Spec := by
  intro n
  simp only [A268476, Nat.add_sub_cancel]

end A268476

/-! ## A268476.P9834826796151024677

`filter[A043727(n+1), A010051(#)]`
-/

namespace A268476.P9834826796151024677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A268476.P9834826796151024677

namespace A268476

/-- `filter[A043727(n+1), A010051(#)]` -/
def P9834826796151024677.Spec : Prop :=
  ∀ n, P9834826796151024677.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P10564408741277538340

`filter[A043727(n+1), A323152(#)]`
-/

namespace A268476.P10564408741277538340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A268476.P10564408741277538340

namespace A268476

/-- `filter[A043727(n+1), A323152(#)]` -/
def P10564408741277538340.Spec : Prop :=
  ∀ n, P10564408741277538340.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P14028129647867089940

`filter[A043727(n+1), A323153(#)]`
-/

namespace A268476.P14028129647867089940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A268476.P14028129647867089940

namespace A268476

/-- `filter[A043727(n+1), A323153(#)]` -/
def P14028129647867089940.Spec : Prop :=
  ∀ n, P14028129647867089940.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P17300820937473866730

`filter[A043727(n+1), A340371(#)]`
-/

namespace A268476.P17300820937473866730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A268476.P17300820937473866730

namespace A268476

/-- `filter[A043727(n+1), A340371(#)]` -/
def P17300820937473866730.Spec : Prop :=
  ∀ n, P17300820937473866730.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P15203910569794795501

`filter[A043727(n+1), A353670(#)]`
-/

namespace A268476.P15203910569794795501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A268476.P15203910569794795501

namespace A268476

/-- `filter[A043727(n+1), A353670(#)]` -/
def P15203910569794795501.Spec : Prop :=
  ∀ n, P15203910569794795501.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P198099871898470307

`filter[A043727(n+1), A365716(#)]`
-/

namespace A268476.P198099871898470307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A268476.P198099871898470307

namespace A268476

/-- `filter[A043727(n+1), A365716(#)]` -/
def P198099871898470307.Spec : Prop :=
  ∀ n, P198099871898470307.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P3638881018469401386

`filter[A043727(n+1), A379969(#)]`
-/

namespace A268476.P3638881018469401386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A268476.P3638881018469401386

namespace A268476

/-- `filter[A043727(n+1), A379969(#)]` -/
def P3638881018469401386.Spec : Prop :=
  ∀ n, P3638881018469401386.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P14406927602305972005

`filter[A043727(n+1), A380467(#)]`
-/

namespace A268476.P14406927602305972005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A268476.P14406927602305972005

namespace A268476

/-- `filter[A043727(n+1), A380467(#)]` -/
def P14406927602305972005.Spec : Prop :=
  ∀ n, P14406927602305972005.a n = A268476 (n + 1)

end A268476

/-! ## A268476.P12428256076439354221

`∩[A000040(n+1), A043727(n+1)]`
-/

namespace A268476.P12428256076439354221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P12428256076439354221

namespace A268476

/-- `∩[A000040(n+1), A043727(n+1)]` -/
def P12428256076439354221.Spec : Prop :=
  ∀ n, (P12428256076439354221.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P4122915343806038724

`∩[A001751(n+1), A043727(n+1)]`
-/

namespace A268476.P4122915343806038724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P4122915343806038724

namespace A268476

/-- `∩[A001751(n+1), A043727(n+1)]` -/
def P4122915343806038724.Spec : Prop :=
  ∀ n, (P4122915343806038724.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P4745503864357091676

`∩[A006005(n+1), A043727(n+1)]`
-/

namespace A268476.P4745503864357091676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P4745503864357091676

namespace A268476

/-- `∩[A006005(n+1), A043727(n+1)]` -/
def P4745503864357091676.Spec : Prop :=
  ∀ n, (P4745503864357091676.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P8744227102241833072

`∩[A008578(n+1), A043727(n+1)]`
-/

namespace A268476.P8744227102241833072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P8744227102241833072

namespace A268476

/-- `∩[A008578(n+1), A043727(n+1)]` -/
def P8744227102241833072.Spec : Prop :=
  ∀ n, (P8744227102241833072.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P7355802204815789633

`∩[A038550(n+1), A043727(n+1)]`
-/

namespace A268476.P7355802204815789633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P7355802204815789633

namespace A268476

/-- `∩[A038550(n+1), A043727(n+1)]` -/
def P7355802204815789633.Spec : Prop :=
  ∀ n, (P7355802204815789633.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P1982612318831006723

`∩[A043727(n+1), A045344(n+1)]`
-/

namespace A268476.P1982612318831006723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P1982612318831006723

namespace A268476

/-- `∩[A043727(n+1), A045344(n+1)]` -/
def P1982612318831006723.Spec : Prop :=
  ∀ n, (P1982612318831006723.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P17372750581801020975

`∩[A043727(n+1), A046022(n+1)]`
-/

namespace A268476.P17372750581801020975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P17372750581801020975

namespace A268476

/-- `∩[A043727(n+1), A046022(n+1)]` -/
def P17372750581801020975.Spec : Prop :=
  ∀ n, (P17372750581801020975.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P2118098424481094842

`∩[A043727(n+1), A051948(n+1)]`
-/

namespace A268476.P2118098424481094842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P2118098424481094842

namespace A268476

/-- `∩[A043727(n+1), A051948(n+1)]` -/
def P2118098424481094842.Spec : Prop :=
  ∀ n, (P2118098424481094842.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P5893797760917989339

`∩[A043727(n+1), A053577(n+1)]`
-/

namespace A268476.P5893797760917989339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P5893797760917989339

namespace A268476

/-- `∩[A043727(n+1), A053577(n+1)]` -/
def P5893797760917989339.Spec : Prop :=
  ∀ n, (P5893797760917989339.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P3217928081311411647

`∩[A043727(n+1), A053813(n+1)]`
-/

namespace A268476.P3217928081311411647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P3217928081311411647

namespace A268476

/-- `∩[A043727(n+1), A053813(n+1)]` -/
def P3217928081311411647.Spec : Prop :=
  ∀ n, (P3217928081311411647.a n : ℤ) = A268476 (n + 1)

end A268476

/-! ## A268476.P6025342535607822635

`∩[A043727(n+1), A058363(n+1)]`
-/

namespace A268476.P6025342535607822635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268476.P6025342535607822635

namespace A268476

/-- `∩[A043727(n+1), A058363(n+1)]` -/
def P6025342535607822635.Spec : Prop :=
  ∀ n, (P6025342535607822635.a n : ℤ) = A268476 (n + 1)

end A268476

/-!
# A268477: Balanced odious primes: primes with an odd number of runs of 1's in their binary expansion.

The programs for A268477, the canonical program `A268477.P4055541825993668443` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268477 has offset 1).

The definition of A268477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268477.P4055541825993668443

`p?[A268415(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268477

/-- `p?[A268415(n+1)]` -/
def P4055541825993668443.Spec : Prop :=
  ∀ n, P4055541825993668443.a n = A268477 (n + 1)

theorem P4055541825993668443.correct : P4055541825993668443.Spec := by
  intro n
  simp only [A268477, Nat.add_sub_cancel]

end A268477

/-! ## A268477.P1918604487606007120

`record[A006530(A043726(n+1))]`
-/

namespace A268477.P1918604487606007120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043726 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268477.P1918604487606007120

namespace A268477

/-- `record[A006530(A043726(n+1))]` -/
def P1918604487606007120.Spec : Prop :=
  ∀ n, P1918604487606007120.a n = A268477 (n + 1)

end A268477

/-! ## A268477.P16175117023493558875

`record[A006530(A268415(n+2))]`
-/

namespace A268477.P16175117023493558875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A268415 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268477.P16175117023493558875

namespace A268477

/-- `record[A006530(A268415(n+2))]` -/
def P16175117023493558875.Spec : Prop :=
  ∀ n, P16175117023493558875.a n = A268477 (n + 1)

end A268477

/-! ## A268477.P11976645161208057638

`filter[A268415(n+1), A010051(#)]`
-/

namespace A268477.P11976645161208057638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A268477.P11976645161208057638

namespace A268477

/-- `filter[A268415(n+1), A010051(#)]` -/
def P11976645161208057638.Spec : Prop :=
  ∀ n, P11976645161208057638.a n = A268477 (n + 1)

end A268477

/-! ## A268477.P15002824837999400821

`∩[A000040(n+1), A268415(n+1)]`
-/

namespace A268477.P15002824837999400821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268477.P15002824837999400821

namespace A268477

/-- `∩[A000040(n+1), A268415(n+1)]` -/
def P15002824837999400821.Spec : Prop :=
  ∀ n, (P15002824837999400821.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P17148942911983492199

`∩[A045319(n+1), A268415(n+1)]`
-/

namespace A268477.P17148942911983492199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268477.P17148942911983492199

namespace A268477

/-- `∩[A045319(n+1), A268415(n+1)]` -/
def P17148942911983492199.Spec : Prop :=
  ∀ n, (P17148942911983492199.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P12239191726999848231

`∩[A182986(n+1), A268415(n+1)]`
-/

namespace A268477.P12239191726999848231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268477.P12239191726999848231

namespace A268477

/-- `∩[A182986(n+1), A268415(n+1)]` -/
def P12239191726999848231.Spec : Prop :=
  ∀ n, (P12239191726999848231.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P244738458782045986

`p?[lcm(n, A246960(n))]`
-/

namespace A268477.P244738458782045986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A246960 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A268477.P244738458782045986

namespace A268477

/-- `p?[lcm(n, A246960(n))]` -/
def P244738458782045986.Spec : Prop :=
  ∀ n, (P244738458782045986.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P7970783367011992883

`eq[A246960(n), A370482(n)]`
-/

namespace A268477.P7970783367011992883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268477.P7970783367011992883

namespace A268477

/-- `eq[A246960(n), A370482(n)]` -/
def P7970783367011992883.Spec : Prop :=
  ∀ n, (P7970783367011992883.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P15956530913463630494

`p?[eq[A246960(n), A247004(n)]]`
-/

namespace A268477.P15956530913463630494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247004 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A268477.P15956530913463630494

namespace A268477

/-- `p?[eq[A246960(n), A247004(n)]]` -/
def P15956530913463630494.Spec : Prop :=
  ∀ n, (P15956530913463630494.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P5038564855453314046

`p?[lt[2, A106826(n)]]`
-/

namespace A268477.P5038564855453314046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A268477.P5038564855453314046

namespace A268477

/-- `p?[lt[2, A106826(n)]]` -/
def P5038564855453314046.Spec : Prop :=
  ∀ n, (P5038564855453314046.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P6795322584367685872

`eq[A072721(n), A268411(n)]`
-/

namespace A268477.P6795322584367685872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268477.P6795322584367685872

namespace A268477

/-- `eq[A072721(n), A268411(n)]` -/
def P6795322584367685872.Spec : Prop :=
  ∀ n, (P6795322584367685872.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P17597304423994265506

`eq[A210442(n), A268411(n)]`
-/

namespace A268477.P17597304423994265506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268477.P17597304423994265506

namespace A268477

/-- `eq[A210442(n), A268411(n)]` -/
def P17597304423994265506.Spec : Prop :=
  ∀ n, (P17597304423994265506.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P3480691512557201646

`eq[A211110(n), A268411(n)]`
-/

namespace A268477.P3480691512557201646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268477.P3480691512557201646

namespace A268477

/-- `eq[A211110(n), A268411(n)]` -/
def P3480691512557201646.Spec : Prop :=
  ∀ n, (P3480691512557201646.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P608461856077930445

`eq[A268411(n), A284289(n)]`
-/

namespace A268477.P608461856077930445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268477.P608461856077930445

namespace A268477

/-- `eq[A268411(n), A284289(n)]` -/
def P608461856077930445.Spec : Prop :=
  ∀ n, (P608461856077930445.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P11536299915902174361

`eq[A268411(n), A322968(n)]`
-/

namespace A268477.P11536299915902174361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268477.P11536299915902174361

namespace A268477

/-- `eq[A268411(n), A322968(n)]` -/
def P11536299915902174361.Spec : Prop :=
  ∀ n, (P11536299915902174361.a n : ℤ) = A268477 (n + 1)

end A268477

/-! ## A268477.P3580027605086732309

`filter[A000040(n+1), A268411(#)]`
-/

namespace A268477.P3580027605086732309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268411 (f1 j).toNat = 1) n)

end

end A268477.P3580027605086732309

namespace A268477

/-- `filter[A000040(n+1), A268411(#)]` -/
def P3580027605086732309.Spec : Prop :=
  ∀ n, P3580027605086732309.a n = A268477 (n + 1)

end A268477

/-! ## A268477.P7651687715303330617

`filter[A045319(n+1), A268411(#)]`
-/

namespace A268477.P7651687715303330617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268411 (f1 j).toNat = 1) n)

end

end A268477.P7651687715303330617

namespace A268477

/-- `filter[A045319(n+1), A268411(#)]` -/
def P7651687715303330617.Spec : Prop :=
  ∀ n, P7651687715303330617.a n = A268477 (n + 1)

end A268477

/-! ## A268477.P618485607574968007

`filter[A063884(n+1), A268411(#)]`
-/

namespace A268477.P618485607574968007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268411 (f1 j).toNat = 1) n)

end

end A268477.P618485607574968007

namespace A268477

/-- `filter[A063884(n+1), A268411(#)]` -/
def P618485607574968007.Spec : Prop :=
  ∀ n, P618485607574968007.a n = A268477 (n + 1)

end A268477

/-! ## A268477.P7780010909754710799

`filter[A063904(n+1), A268411(#)]`
-/

namespace A268477.P7780010909754710799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268411 (f1 j).toNat = 1) n)

end

end A268477.P7780010909754710799

namespace A268477

/-- `filter[A063904(n+1), A268411(#)]` -/
def P7780010909754710799.Spec : Prop :=
  ∀ n, P7780010909754710799.a n = A268477 (n + 1)

end A268477

/-!
# A268478: L(p) modulo p^2, where p = prime(n) and L is a Lucas number (A000032).

The programs for A268478, the canonical program `A268478.P14026841174278803869` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268478 has offset 1).

The definition of A268478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268478.P14026841174278803869

`A180363(n+1)%A001248(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268478

/-- `A180363(n+1)%A001248(n+1)` -/
def P14026841174278803869.Spec : Prop :=
  ∀ n, P14026841174278803869.a n = A268478 (n + 1)

theorem P14026841174278803869.correct : P14026841174278803869.Spec := by
  intro n
  simp only [A268478, Nat.add_sub_cancel]

end A268478

/-! ## A268478.P11691747633073673779

`A000032(A000040(n+1))%A000040(n+1)²`
-/

namespace A268478.P11691747633073673779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (A000040 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

end

end A268478.P11691747633073673779

namespace A268478

/-- `A000032(A000040(n+1))%A000040(n+1)²` -/
def P11691747633073673779.Spec : Prop :=
  ∀ n, P11691747633073673779.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P10924547283194260702

`A000032(Δ[A007504(n)])%A001248(n+1)`
-/

namespace A268478.P10924547283194260702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (n + 1) - f1 n).toNat) (A001248 (n + 1))

end

end A268478.P10924547283194260702

namespace A268478

/-- `A000032(Δ[A007504(n)])%A001248(n+1)` -/
def P10924547283194260702.Spec : Prop :=
  ∀ n, P10924547283194260702.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P15135513916387945663

`A000032(p?[A014681(n)])%A001248(n+1)`
-/

namespace A268478.P15135513916387945663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A268478.P15135513916387945663

namespace A268478

/-- `A000032(p?[A014681(n)])%A001248(n+1)` -/
def P15135513916387945663.Spec : Prop :=
  ∀ n, P15135513916387945663.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P7141492067210318967

`A000032(p?[A056847(n)])%A001248(n+1)`
-/

namespace A268478.P7141492067210318967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A268478.P7141492067210318967

namespace A268478

/-- `A000032(p?[A056847(n)])%A001248(n+1)` -/
def P7141492067210318967.Spec : Prop :=
  ∀ n, P7141492067210318967.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P5501332635764944636

`A000032(p?[A080412(n)])%A001248(n+1)`
-/

namespace A268478.P5501332635764944636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A268478.P5501332635764944636

namespace A268478

/-- `A000032(p?[A080412(n)])%A001248(n+1)` -/
def P5501332635764944636.Spec : Prop :=
  ∀ n, P5501332635764944636.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P14804894009695445225

`A000032(p?[A080587(n)])%A001248(n+1)`
-/

namespace A268478.P14804894009695445225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A268478.P14804894009695445225

namespace A268478

/-- `A000032(p?[A080587(n)])%A001248(n+1)` -/
def P14804894009695445225.Spec : Prop :=
  ∀ n, P14804894009695445225.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P11452532720046173394

`A000032(p?[A259153(n)])%A001248(n+1)`
-/

namespace A268478.P11452532720046173394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A268478.P11452532720046173394

namespace A268478

/-- `A000032(p?[A259153(n)])%A001248(n+1)` -/
def P11452532720046173394.Spec : Prop :=
  ∀ n, P11452532720046173394.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P13943510600996357154

`A000032(A000040(n+1))%A001248(n+1)`
-/

namespace A268478.P13943510600996357154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (A000040 (n + 1)).toNat) (A001248 (n + 1))

end

end A268478.P13943510600996357154

namespace A268478

/-- `A000032(A000040(n+1))%A001248(n+1)` -/
def P13943510600996357154.Spec : Prop :=
  ∀ n, P13943510600996357154.a n = A268478 (n + 1)

end A268478

/-! ## A268478.P5819332087144957991

`A000032(p?[A018252(n+1)-7])%A001248(n+1)`
-/

namespace A268478.P5819332087144957991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A268478.P5819332087144957991

namespace A268478

/-- `A000032(p?[A018252(n+1)-7])%A001248(n+1)` -/
def P5819332087144957991.Spec : Prop :=
  ∀ n, P5819332087144957991.a n = A268478 (n + 1)

end A268478

/-!
# A268479: For p = prime(n), number of primes (including p) in the trajectory of p under the procedure in A244550, also allowing the Wieferich prime 2, that are not terms of a repeating cycle.

The programs for A268479, there is no canonical definition to state claims against.
-/

/-! ## A268479.P16045359841016072636

`A206479(A066349(n))`
-/

namespace A268479.P16045359841016072636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206479 (A066349 n).toNat

end

end A268479.P16045359841016072636

/-! ## A268479.P2510666502799778823

`A108234(A169740(n))`
-/

namespace A268479.P2510666502799778823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108234 (A169740 n).toNat

end

end A268479.P2510666502799778823

/-! ## A268479.P4268727379795404196

`A237453(A132196(n))`
-/

namespace A268479.P4268727379795404196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237453 (A132196 n).toNat

end

end A268479.P4268727379795404196

/-! ## A268479.P1014790986648741826

`A273107(A215526(n))`
-/

namespace A268479.P1014790986648741826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273107 (A215526 n).toNat

end

end A268479.P1014790986648741826

/-! ## A268479.P15534198628691757524

`A366900(A312859(n))`
-/

namespace A268479.P15534198628691757524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366900 (A312859 n).toNat

end

end A268479.P15534198628691757524

/-!
# A268481: Triangle that arise in the study of Fekete polynomials.

The programs for A268481, there is no canonical definition to state claims against.
-/

/-! ## A268481.P14085365419567280412

`A280033(eq[0, floor(2*sqrt(n))%2]+1)`
-/

namespace A268481.P14085365419567280412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A268481.P14085365419567280412

/-! ## A268481.P16896829923812220412

`A280033(A063656(n)+1)`
-/

namespace A268481.P16896829923812220412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280033 (A063656 n + 1).toNat

end

end A268481.P16896829923812220412

/-! ## A268481.P10241710867978749405

`A280033(A002260(n+1)+A003056(n)²)`
-/

namespace A268481.P10241710867978749405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280033 (A002260 (n + 1) + A003056 n ^ 2).toNat

end

end A268481.P10241710867978749405

/-!
# A268482: Triangle that arise in the study of Galois polynomials.

The programs for A268482, there is no canonical definition to state claims against.
-/

/-! ## A268482.P6782833991430286189

`A280040(A063656(n)+1)`
-/

namespace A268482.P6782833991430286189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280040 (A063656 n + 1).toNat

end

end A268482.P6782833991430286189

/-! ## A268482.P12666354118474764704

`A280040(A057944(n)+A038722(n+1))`
-/

namespace A268482.P12666354118474764704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280040 (A057944 n + A038722 (n + 1)).toNat

end

end A268482.P12666354118474764704

/-! ## A268482.P18042092327000915083

`A280040(A002260(n+1)+A003056(n)²)`
-/

namespace A268482.P18042092327000915083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280040 (A002260 (n + 1) + A003056 n ^ 2).toNat

end

end A268482.P18042092327000915083

/-! ## A268482.P11712960068099019329

`A280040(A348964(n+1)%A006126(n+2))`
-/

namespace A268482.P11712960068099019329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280040 (Int.tmod (A348964 (n + 1)) (A006126 (n + 2))).toNat

end

end A268482.P11712960068099019329

/-!
# A268483: Primes p such that the numbers of primes not exceeding p in A268476 and A268477 are equal.

The programs for A268483, there is no canonical definition to state claims against.
-/

/-! ## A268483.P9050193505539451584

`A340105(A005836(2*n+3)-A056239(n+1))`
-/

namespace A268483.P9050193505539451584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340105 (A005836 (2 * n + 3) - A056239 (n + 1)).toNat

end

end A268483.P9050193505539451584

/-!
# A268484: a(n) = (n + 1)*(4*n^2 + 14*n + 9)/3.

The programs for A268484, the canonical program `A268484.P11198061284244753852` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268484 has offset 0).

The definition of A268484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(4*n²+14*n+9)/3` (program `A268484.P1731718111071743203`, by `A268484.P1731718111071743203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268484.P1731718111071743203

`(n+1)*(4*n²+14*n+9)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268484.P1731718111071743203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (4 * n ^ 2 + 14 * n + 9) : ℚ) / 3

end

end A268484.P1731718111071743203

namespace A268484

/-- `(n+1)*(4*n²+14*n+9)/3` -/
def P1731718111071743203.Spec : Prop :=
  ∀ n, P1731718111071743203.a n = (A268484 n : ℚ)

theorem P1731718111071743203.correct : P1731718111071743203.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A268484, Nat.add_sub_cancel, A268484.P1731718111071743203.a, A268484.P11198061284244753852.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A268484, Nat.add_sub_cancel, A268484.P1731718111071743203.a, A268484.P11198061284244753852.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268484

/-! ## A268484.P3634863530721408749

`abs(∑[1-∑[xor(4, 8*n)]])`
-/

namespace A268484.P3634863530721408749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (8 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A268484.P3634863530721408749

namespace A268484

/-- `abs(∑[1-∑[xor(4, 8*n)]])` -/
def P3634863530721408749.Spec : Prop :=
  ∀ n, P3634863530721408749.a n = A268484 n

end A268484

/-! ## A268484.P3705705570051659157

`-∑[1-∑[xor(4, 8*n)]]`
-/

namespace A268484.P3705705570051659157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (8 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268484.P3705705570051659157

namespace A268484

/-- `-∑[1-∑[xor(4, 8*n)]]` -/
def P3705705570051659157.Spec : Prop :=
  ∀ n, P3705705570051659157.a n = A268484 n

end A268484

/-! ## A268484.P9333339180797034170

`∑[∑[ogf((3+6x-x^2)/(1-2x+x^2))]]`
-/

namespace A268484.P9333339180797034170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268484.P9333339180797034170

namespace A268484

/-- `∑[∑[ogf((3+6x-x^2)/(1-2x+x^2))]]` -/
def P9333339180797034170.Spec : Prop :=
  ∀ n, P9333339180797034170.a n = A268484 n

end A268484

/-! ## A268484.P7607995554758989779

`ogf((3+6x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A268484.P7607995554758989779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -1] [1, -4, 6, -4, 1] n

end

end A268484.P7607995554758989779

namespace A268484

/-- `ogf((3+6x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7607995554758989779.Spec : Prop :=
  ∀ n, P7607995554758989779.a n = A268484 n

end A268484

/-! ## A268484.P5035721169852220452

`C(2*(n+2), 3)-(n+1)`
-/

namespace A268484.P5035721169852220452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 3 : ℤ) - (n + 1 : ℤ)

end

end A268484.P5035721169852220452

namespace A268484

/-- `C(2*(n+2), 3)-(n+1)` -/
def P5035721169852220452.Spec : Prop :=
  ∀ n, P5035721169852220452.a n = A268484 n

end A268484

/-! ## A268484.P16621201266473018253

`∑[∑[a(n-1)+8]-1]` with `a(0)=4`
-/

namespace A268484.P16621201266473018253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268484.P16621201266473018253

namespace A268484

/-- `∑[∑[a(n-1)+8]-1]` -/
def P16621201266473018253.Spec : Prop :=
  ∀ n, P16621201266473018253.a n = A268484 n

end A268484

/-! ## A268484.P5758823524277045518

`xor(n, -1)+C(2*(n+2), 3)`
-/

namespace A268484.P5758823524277045518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (Nat.choose (2 * (n + 2)) 3 : ℤ)

end

end A268484.P5758823524277045518

namespace A268484

/-- `xor(n, -1)+C(2*(n+2), 3)` -/
def P5758823524277045518.Spec : Prop :=
  ∀ n, P5758823524277045518.a n = A268484 n

end A268484

/-! ## A268484.P12460126972784300002

`∑[Δ[lcm(n, n+1)]²]-(n+1)`
-/

namespace A268484.P12460126972784300002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A268484.P12460126972784300002

namespace A268484

/-- `∑[Δ[lcm(n, n+1)]²]-(n+1)` -/
def P12460126972784300002.Spec : Prop :=
  ∀ n, P12460126972784300002.a n = A268484 n

end A268484

/-! ## A268484.P1573189525328796663

`∑[lcm(2, (2*(n+1))²)]-(n+1)`
-/

namespace A268484.P1573189525328796663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * (n + 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A268484.P1573189525328796663

namespace A268484

/-- `∑[lcm(2, (2*(n+1))²)]-(n+1)` -/
def P1573189525328796663.Spec : Prop :=
  ∀ n, P1573189525328796663.a n = A268484 n

end A268484

/-! ## A268484.P9684036736365856901

`∑[(n+2+n)²]-C(n+1, n)`
-/

namespace A268484.P9684036736365856901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n + 1) n : ℤ)

end

end A268484.P9684036736365856901

namespace A268484

/-- `∑[(n+2+n)²]-C(n+1, n)` -/
def P9684036736365856901.Spec : Prop :=
  ∀ n, P9684036736365856901.a n = A268484 n

end A268484

/-! ## A268484.P11198061284244753852

`(2*(n+1))²+a(n-1)-1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268484

/-- `(2*(n+1))²+a(n-1)-1` -/
def P11198061284244753852.Spec : Prop :=
  ∀ n, P11198061284244753852.a n = A268484 n

theorem P11198061284244753852.correct : P11198061284244753852.Spec := by
  intro n
  simp only [A268484]

end A268484

/-! ## A268484.P6053282933952758721

`a(n-1)+(n+1)*4*(n+1)-1` with `a(0)=3`
-/

namespace A268484.P6053282933952758721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (((n + 1) * (4 * (n + 1)) : ℤ) - 1)

end

end A268484.P6053282933952758721

namespace A268484

/-- `a(n-1)+(n+1)*4*(n+1)-1` -/
def P6053282933952758721.Spec : Prop :=
  ∀ n, P6053282933952758721.a n = A268484 n

end A268484

/-! ## A268484.P10966847980379378563

`∑[C(2*n+1, 2)]+∑[(2*n+1)*(n+3)]`
-/

namespace A268484.P10966847980379378563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A268484.P10966847980379378563

namespace A268484

/-- `∑[C(2*n+1, 2)]+∑[(2*n+1)*(n+3)]` -/
def P10966847980379378563.Spec : Prop :=
  ∀ n, (P10966847980379378563.a n : ℤ) = A268484 n

end A268484

/-! ## A268484.P18224686086616023011

`∑[∑[A281813(n)]]`
-/

namespace A268484.P18224686086616023011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268484.P18224686086616023011

namespace A268484

/-- `∑[∑[A281813(n)]]` -/
def P18224686086616023011.Spec : Prop :=
  ∀ n, P18224686086616023011.a n = A268484 n

end A268484

/-! ## A268484.P13035545891213698735

`∑[A060626(n)+1]`
-/

namespace A268484.P13035545891213698735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268484.P13035545891213698735

namespace A268484

/-- `∑[A060626(n)+1]` -/
def P13035545891213698735.Spec : Prop :=
  ∀ n, P13035545891213698735.a n = A268484 n

end A268484

/-! ## A268484.P5223476418108407786

`∑[A082109(n)+2]`
-/

namespace A268484.P5223476418108407786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268484.P5223476418108407786

namespace A268484

/-- `∑[A082109(n)+2]` -/
def P5223476418108407786.Spec : Prop :=
  ∀ n, P5223476418108407786.a n = A268484 n

end A268484

/-! ## A268484.P11087372465818879597

`∑[A134582(n+1)+3]`
-/

namespace A268484.P11087372465818879597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134582 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268484.P11087372465818879597

namespace A268484

/-- `∑[A134582(n+1)+3]` -/
def P11087372465818879597.Spec : Prop :=
  ∀ n, P11087372465818879597.a n = A268484 n

end A268484

/-! ## A268484.P14667441854322535465

`A172482(n)+A002378(n)`
-/

namespace A268484.P14667441854322535465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172482 n + A002378 n

end

end A268484.P14667441854322535465

namespace A268484

/-- `A172482(n)+A002378(n)` -/
def P14667441854322535465.Spec : Prop :=
  ∀ n, P14667441854322535465.a n = A268484 n

end A268484

/-! ## A268484.P9781741266087698437

`A166911(n)+A014106(n)`
-/

namespace A268484.P9781741266087698437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 n + A014106 n

end

end A268484.P9781741266087698437

namespace A268484

/-- `A166911(n)+A014106(n)` -/
def P9781741266087698437.Spec : Prop :=
  ∀ n, P9781741266087698437.a n = A268484 n

end A268484

/-!
# A268485: Number of sequences with n copies each of 1,2,...,n and longest increasing subsequence of length n.

The programs for A268485, there is no canonical definition to state claims against.
-/

/-! ## A268485.P1414332401918991498

`A047909((1-n)²+n²)`
-/

namespace A268485.P1414332401918991498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A268485.P1414332401918991498

/-! ## A268485.P15209406178388069550

`A034841(n)-A268751(n)`
-/

namespace A268485.P15209406178388069550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n - A268751 n

end

end A268485.P15209406178388069550

/-!
# A268487: Numbers of equal electric charges for which the minimum-potential dislocation on a sphere has nonzero sum of position vectors.

The programs for A268487, there is no canonical definition to state claims against.
-/

/-! ## A268487.P4052582173928075732

`A205693(n+1)+A033265(A024210(n))`
-/

namespace A268487.P4052582173928075732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205693 (n + 1) + A033265 (A024210 n).toNat

end

end A268487.P4052582173928075732

/-! ## A268487.P10610159520423212710

`lt[A046523(3*n+4), A005811(A047920(n))]`
-/

namespace A268487.P10610159520423212710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A047920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268487.P10610159520423212710

/-!
# A268488: Least number k of the form k = n*(k % 10) + [k / 10], where k % 10 = last digit of k, [k / 10] = k without its last digit.

The programs for A268488, the canonical program `A268488.P8837082265760871604` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268488 has offset 1).

The definition of A268488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268488.P8837082265760871604

`lcm(18, 10*n+9)/18`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268488

/-- `lcm(18, 10*n+9)/18` -/
def P8837082265760871604.Spec : Prop :=
  ∀ n, P8837082265760871604.a n = (A268488 (n + 1) : ℚ)

end A268488

/-! ## A268488.P9226990298641591250

`(10*n+9)/gcd(n, 10*n+9)`
-/

namespace A268488.P9226990298641591250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n + 9 : ℚ) / (Nat.gcd n (10 * n + 9) : ℚ)

end

end A268488.P9226990298641591250

namespace A268488

/-- `(10*n+9)/gcd(n, 10*n+9)` -/
def P9226990298641591250.Spec : Prop :=
  ∀ n, P9226990298641591250.a n = (A268488 (n + 1) : ℚ)

end A268488

/-! ## A268488.P3200090857561619320

`(10*n+9)/A109012(n)`
-/

namespace A268488.P3200090857561619320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n + 9 : ℚ) / (A109012 n : ℚ)

end

end A268488.P3200090857561619320

namespace A268488

/-- `(10*n+9)/A109012(n)` -/
def P3200090857561619320.Spec : Prop :=
  ∀ n, P3200090857561619320.a n = (A268488 (n + 1) : ℚ)

end A268488

/-! ## A268488.P7407348534715526906

`1/A109012(n)*A017377(n)`
-/

namespace A268488.P7407348534715526906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A109012 n : ℚ) * (A017377 n : ℚ)

end

end A268488.P7407348534715526906

namespace A268488

/-- `1/A109012(n)*A017377(n)` -/
def P7407348534715526906.Spec : Prop :=
  ∀ n, P7407348534715526906.a n = (A268488 (n + 1) : ℚ)

end A268488

/-! ## A268488.P4710745483196265183

`A106610(10*n+9)`
-/

namespace A268488.P4710745483196265183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (10 * n + 9)

end

end A268488.P4710745483196265183

namespace A268488

/-- `A106610(10*n+9)` -/
def P4710745483196265183.Spec : Prop :=
  ∀ n, P4710745483196265183.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P857065533876303821

`A106610(A017377(n)+n)-A106610(n)`
-/

namespace A268488.P857065533876303821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A017377 n + (n : ℤ)).toNat - A106610 n

end

end A268488.P857065533876303821

namespace A268488

/-- `A106610(A017377(n)+n)-A106610(n)` -/
def P857065533876303821.Spec : Prop :=
  ∀ n, P857065533876303821.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P13443119647263941313

`A106619(10*n+9)`
-/

namespace A268488.P13443119647263941313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (10 * n + 9)

end

end A268488.P13443119647263941313

namespace A268488

/-- `A106619(10*n+9)` -/
def P13443119647263941313.Spec : Prop :=
  ∀ n, P13443119647263941313.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P5439392987123110128

`A106610(2*A017377(n))/2`
-/

namespace A268488.P5439392987123110128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106610 (2 * A017377 n).toNat : ℚ) / 2

end

end A268488.P5439392987123110128

namespace A268488

/-- `A106610(2*A017377(n))/2` -/
def P5439392987123110128.Spec : Prop :=
  ∀ n, P5439392987123110128.a n = (A268488 (n + 1) : ℚ)

end A268488

/-! ## A268488.P12725876991090709735

`A051724(A051724(10*n+9))`
-/

namespace A268488.P12725876991090709735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A051724 (10 * n + 9)).toNat

end

end A268488.P12725876991090709735

namespace A268488

/-- `A051724(A051724(10*n+9))` -/
def P12725876991090709735.Spec : Prop :=
  ∀ n, P12725876991090709735.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P8452553869947007476

`A051176(A051176(A017377(n)))`
-/

namespace A268488.P8452553869947007476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (A017377 n).toNat).toNat

end

end A268488.P8452553869947007476

namespace A268488

/-- `A051176(A051176(A017377(n)))` -/
def P8452553869947007476.Spec : Prop :=
  ∀ n, P8452553869947007476.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P17007251744560288605

`A060789(A146535(A016969(n)-n))`
-/

namespace A268488.P17007251744560288605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A146535 (A016969 n - (n : ℤ)).toNat).toNat

end

end A268488.P17007251744560288605

namespace A268488

/-- `A060789(A146535(A016969(n)-n))` -/
def P17007251744560288605.Spec : Prop :=
  ∀ n, P17007251744560288605.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P17248503843889155987

`A106616(A106616(A017377(2*n-n)))`
-/

namespace A268488.P17248503843889155987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A106616 (A017377 (2 * n - n)).toNat).toNat

end

end A268488.P17248503843889155987

namespace A268488

/-- `A106616(A106616(A017377(2*n-n)))` -/
def P17248503843889155987.Spec : Prop :=
  ∀ n, P17248503843889155987.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P17477182618777643179

`A060789(A329494(2*n+1)+A146535(n+2))`
-/

namespace A268488.P17477182618777643179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A329494 (2 * n + 1) + A146535 (n + 2)).toNat

end

end A268488.P17477182618777643179

namespace A268488

/-- `A060789(A329494(2*n+1)+A146535(n+2))` -/
def P17477182618777643179.Spec : Prop :=
  ∀ n, P17477182618777643179.a n = A268488 (n + 1)

end A268488

/-! ## A268488.P18195680137914746712

`A146307(A146307(10*n+9))`
-/

namespace A268488.P18195680137914746712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (A146307 (10 * n + 9)).toNat

end

end A268488.P18195680137914746712

namespace A268488

/-- `A146307(A146307(10*n+9))` -/
def P18195680137914746712.Spec : Prop :=
  ∀ n, P18195680137914746712.a n = A268488 (n + 1)

end A268488

/-!
# A268492: Orbit of 2 under the map A268488: n -> least number k of the form k = n*(last digit of k) + (k without its last digit).

The programs for A268492, there is no canonical definition to state claims against.
-/

/-! ## A268492.P8609882146935459836

`A268488(a(n-1))` with `a(0)=2`
-/

namespace A268492.P8609882146935459836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A268488 (a (n - 1)).toNat

end

end A268492.P8609882146935459836

/-! ## A268492.P273500663799032601

`A007913(10*a(n-1)-1)` with `a(0)=2`
-/

namespace A268492.P273500663799032601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007913 (10 * a (n - 1) - 1).toNat

end

end A268492.P273500663799032601

/-! ## A268492.P6005287353637031967

`record[A268488(a(A008611(n)))]` with `a(0)=2`
-/

namespace A268492.P6005287353637031967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A268488 (f1 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268492.P6005287353637031967

/-!
# A268493: Orbit of 3 under the map A268488: n -> least number k of the form k = n*(last digit of k) + (k without its last digit).

The programs for A268493, there is no canonical definition to state claims against.
-/

/-! ## A268493.P1121259260965494068

`A268488(a(n-1))` with `a(0)=3`
-/

namespace A268493.P1121259260965494068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A268488 (a (n - 1)).toNat

end

end A268493.P1121259260965494068

/-! ## A268493.P7268208036728913726

`A339966(10*a(n-1)-2)` with `a(0)=3`
-/

namespace A268493.P7268208036728913726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A339966 (10 * a (n - 1) - 2).toNat

end

end A268493.P7268208036728913726

/-!
# A268494: Indices n of "late birds" (a(n)<a(k) for all k>n) in A268630 (= a(n)^2+a(n+1) is prime).

The programs for A268494, there is no canonical definition to state claims against.
-/

/-! ## A268494.P7457657650900550121

`lt[A000217(A268630(n)), A118113(n)]`
-/

namespace A268494.P7457657650900550121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A268630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268494.P7457657650900550121

/-! ## A268494.P4278091175273658290

`lt[A195971(A268630(n)), A000041(n+1)]`
-/

namespace A268494.P4278091175273658290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (A268630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268494.P4278091175273658290

/-! ## A268494.P7861971097286409354

`lt[A340796(A268630(n)), A000040(3*n+1)]`
-/

namespace A268494.P7861971097286409354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340796 (A268630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268494.P7861971097286409354

/-! ## A268494.P11684501431983824995

`lt[A052905(A268630(n)+4)-2, A166311(n+1)]`
-/

namespace A268494.P11684501431983824995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A268630 n + 4).toNat - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268494.P11684501431983824995

/-!
# A268495: "Late birds" (a(n)<a(k) for all k>n) in A268630 (= a(n)^2+a(n+1) is prime).

The programs for A268495, there is no canonical definition to state claims against.
-/

/-! ## A268495.P10123592496513728807

`A268630(A268494(n))`
-/

namespace A268495.P10123592496513728807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268630 (A268494 n).toNat

end

end A268495.P10123592496513728807

/-!
# A268497: Records in A268630 (= a(n)^2+a(n+1) is prime).

The programs for A268497, there is no canonical definition to state claims against.
-/

/-! ## A268497.P3200849366542343943

`record[A268630(n)]`
-/

namespace A268497.P3200849366542343943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268497.P3200849366542343943

/-! ## A268497.P14744260607699745665

`A268630(A268496(n))`
-/

namespace A268497.P14744260607699745665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268630 (A268496 n).toNat

end

end A268497.P14744260607699745665

/-! ## A268497.P13856508159760814198

`record[A245627(A238395(n))]`
-/

namespace A268497.P13856508159760814198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245627 (A238395 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268497.P13856508159760814198

