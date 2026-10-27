import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A162100: Number of n X n binary arrays with rows and columns, considered as binary numbers, in strictly increasing order.

The programs for A162100, there is no canonical definition to state claims against.
-/

/-! ## A162100.P6137269751472964828

`A180984(∑[4*n]+1)`
-/

namespace A162100.P6137269751472964828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180984 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A162100.P6137269751472964828

/-! ## A162100.P11624561606713099885

`lcm(A033999(n), A180984(A001844(n)))`
-/

namespace A162100.P11624561606713099885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A180984 (A001844 n).toNat)

end

end A162100.P11624561606713099885

/-! ## A162100.P13519080657354060616

`A180989(n+1)+A180984(A001844(n))`
-/

namespace A162100.P13519080657354060616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (n + 1) + A180984 (A001844 n).toNat

end

end A162100.P13519080657354060616

/-! ## A162100.P12865579367522537311

`A180995(n+1)+A180984(A001844(n))`
-/

namespace A162100.P12865579367522537311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180995 (n + 1) + A180984 (A001844 n).toNat

end

end A162100.P12865579367522537311

/-! ## A162100.P2838339630156752143

`A181009(n+1)+A180984(A001844(n))`
-/

namespace A162100.P2838339630156752143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181009 (n + 1) + A180984 (A001844 n).toNat

end

end A162100.P2838339630156752143

/-!
# A162101: Number of n X n binary arrays with rows and columns, considered as binary numbers, in strictly increasing order, and no more than 2 ones in any row or column.

The programs for A162101, there is no canonical definition to state claims against.
-/

/-! ## A162101.P6464500218757357593

`A004525(A001003(n)*A300273(n+3))`
-/

namespace A162101.P6464500218757357593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001003 n * A300273 (n + 3)).toNat

end

end A162101.P6464500218757357593

/-!
# A162102: Number of n X n binary arrays with rows and columns, considered as binary numbers, in strictly increasing order, and no more than 3 ones in any row or column.

The programs for A162102, there is no canonical definition to state claims against.
-/

/-! ## A162102.P4264485447928366739

`A250469(A266402(n*a(n-1)))` with `a(0)=2`
-/

namespace A162102.P4264485447928366739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A250469 (A266402 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A162102.P4264485447928366739

/-!
# A162109: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in strictly increasing order.

The programs for A162109, there is no canonical definition to state claims against.
-/

/-! ## A162109.P8177182862128538935

`A162117(A199344(n))`
-/

namespace A162109.P8177182862128538935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162117 (A199344 n).toNat

end

end A162109.P8177182862128538935

/-! ## A162109.P15547563179902516686

`A162117(record[A222210(n)])`
-/

namespace A162109.P15547563179902516686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162109.P15547563179902516686

/-! ## A162109.P12479716068350695361

`A162117(A032559(n+1))`
-/

namespace A162109.P12479716068350695361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162117 (A032559 (n + 1)).toNat

end

end A162109.P12479716068350695361

/-! ## A162109.P11518413342212945468

`A162117(A032888(n+1))`
-/

namespace A162109.P11518413342212945468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162117 (A032888 (n + 1)).toNat

end

end A162109.P11518413342212945468

/-! ## A162109.P13508560845898693676

`A162117(A033088(n+1))`
-/

namespace A162109.P13508560845898693676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162117 (A033088 (n + 1)).toNat

end

end A162109.P13508560845898693676

/-!
# A162110: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in strictly increasing order, and no more than 2 ones in any row or column.

The programs for A162110, there is no canonical definition to state claims against.
-/

/-! ## A162110.P8666592435408819303

`A323622(A017992(n))+A000041(n)`
-/

namespace A162110.P8666592435408819303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323622 (A017992 n).toNat + A000041 n

end

end A162110.P8666592435408819303

/-! ## A162110.P4857194031816465867

`A001462(A352862(n))+A000084(n+1)`
-/

namespace A162110.P4857194031816465867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A352862 n).toNat + A000084 (n + 1)

end

end A162110.P4857194031816465867

/-! ## A162110.P519245534903380115

`A007733(A208529(n+2))+A002426(n+1)`
-/

namespace A162110.P519245534903380115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A208529 (n + 2)).toNat + A002426 (n + 1)

end

end A162110.P519245534903380115

/-!
# A162111: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in strictly increasing order, and no more than 3 ones in any row or column.

The programs for A162111, there is no canonical definition to state claims against.
-/

/-! ## A162111.P8740288681275786719

`A030451(A214087(n+3)-A131504(n+1))`
-/

namespace A162111.P8740288681275786719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A214087 (n + 3) - A131504 (n + 1)).toNat

end

end A162111.P8740288681275786719

/-!
# A162112: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in strictly increasing order, and no more than 4 ones in any row or column.

The programs for A162112, there is no canonical definition to state claims against.
-/

/-! ## A162112.P3943741541479563037

`A348356(A078222(n+1))`
-/

namespace A162112.P3943741541479563037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348356 (A078222 (n + 1)).toNat

end

end A162112.P3943741541479563037

/-!
# A162118: Number of n X n binary arrays with rows and columns, considered as graycode numbers, in strictly increasing order.

The programs for A162118, there is no canonical definition to state claims against.
-/

/-! ## A162118.P5534792267294367767

`A162125(comp[xor(n, 2*n)²])`
-/

namespace A162118.P5534792267294367767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162118.P5534792267294367767

/-! ## A162118.P7817361274858665247

`A162125(A010353(n+1))`
-/

namespace A162118.P7817361274858665247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162125 (A010353 (n + 1)).toNat

end

end A162118.P7817361274858665247

/-!
# A162119: Number of n X n binary arrays with rows and columns, considered as graycode numbers, in strictly increasing order, and no more than 2 ones in any row or column.

The programs for A162119, there is no canonical definition to state claims against.
-/

/-! ## A162119.P6376121080732924980

`A360026(n)+A063882(A360057(n))`
-/

namespace A162119.P6376121080732924980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360026 n + A063882 (A360057 n).toNat

end

end A162119.P6376121080732924980

/-!
# A162120: Number of n X n binary arrays with rows and columns, considered as graycode numbers, in strictly increasing order, and no more than 3 ones in any row or column.

The programs for A162120, there is no canonical definition to state claims against.
-/

/-! ## A162120.P9061142765939299247

`A089352(A219534(n)+A049862(n+1))`
-/

namespace A162120.P9061142765939299247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (A219534 n + A049862 (n + 1)).toNat

end

end A162120.P9061142765939299247

/-!
# A162127: Number of n X n symmetric 0..2 arrays with rows, considered as 3-ary numbers, in strictly increasing order.

The programs for A162127, there is no canonical definition to state claims against.
-/

/-! ## A162127.P8998965349089427401

`A113089(n+1)+A113089(n)`
-/

namespace A162127.P8998965349089427401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113089 (n + 1) + A113089 n

end

end A162127.P8998965349089427401

/-!
# A162128: Number of n X n symmetric 0..3 arrays with rows, considered as 4-ary numbers, in strictly increasing order.

The programs for A162128, there is no canonical definition to state claims against.
-/

/-! ## A162128.P16156902546852799006

`A113100(n+1)+A113100(n)`
-/

namespace A162128.P16156902546852799006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113100 (n + 1) + A113100 n

end

end A162128.P16156902546852799006

/-!
# A162129: Number of n X n symmetric 0..4 arrays with rows, considered as 5-ary numbers, in strictly increasing order.

The programs for A162129, there is no canonical definition to state claims against.
-/

/-! ## A162129.P3333919781823170239

`A113113(n+1)+A113113(n)`
-/

namespace A162129.P3333919781823170239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113113 (n + 1) + A113113 n

end

end A162129.P3333919781823170239

/-!
# A162142: Numbers that are the cube of a product of two distinct primes (p^3*q^3).

The programs for A162142, the canonical program `A162142.P17462580010541351734` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162142 has offset 1).

The definition of A162142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162142.P17462580010541351734

`A006881(n+1)^3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A162142

/-- `A006881(n+1)^3` -/
def P17462580010541351734.Spec : Prop :=
  ∀ n, P17462580010541351734.a n = A162142 (n + 1)

theorem P17462580010541351734.correct : P17462580010541351734.Spec := by
  intro n
  simp only [A162142, Nat.add_sub_cancel]

end A162142

/-! ## A162142.P11670565588497050382

`A000578(A006881(n+1))`
-/

namespace A162142.P11670565588497050382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A006881 (n + 1)).toNat

end

end A162142.P11670565588497050382

namespace A162142

/-- `A000578(A006881(n+1))` -/
def P11670565588497050382.Spec : Prop :=
  ∀ n, P11670565588497050382.a n = A162142 (n + 1)

end A162142

/-! ## A162142.P1760884963928773891

`sqrt(A085986(n+1)^3)`
-/

namespace A162142.P1760884963928773891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085986 (n + 1) ^ 3 : ℝ)

end

end A162142.P1760884963928773891

namespace A162142

/-- `sqrt(A085986(n+1)^3)` -/
def P1760884963928773891.Spec : Prop :=
  ∀ n, P1760884963928773891.a n = (A162142 (n + 1) : ℝ)

end A162142

/-! ## A162142.P2177625706625653691

`(eq[1, A281116(n+1)]+1)^3`
-/

namespace A162142.P2177625706625653691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A162142.P2177625706625653691

namespace A162142

/-- `(eq[1, A281116(n+1)]+1)^3` -/
def P2177625706625653691.Spec : Prop :=
  ∀ n, (P2177625706625653691.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P5832667578391752251

`(eq[2, A046645(n+1)]+1)^3`
-/

namespace A162142.P5832667578391752251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A162142.P5832667578391752251

namespace A162142

/-- `(eq[2, A046645(n+1)]+1)^3` -/
def P5832667578391752251.Spec : Prop :=
  ∀ n, (P5832667578391752251.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P11339809569715391074

`A006881(n+1)*A085986(n+1)`
-/

namespace A162142.P11339809569715391074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) * A085986 (n + 1)

end

end A162142.P11339809569715391074

namespace A162142

/-- `A006881(n+1)*A085986(n+1)` -/
def P11339809569715391074.Spec : Prop :=
  ∀ n, P11339809569715391074.a n = A162142 (n + 1)

theorem P11339809569715391074.correct : P11339809569715391074.Spec := by
  intro n
  simp only [A162142, Nat.add_sub_cancel, A162142.P11339809569715391074.a, A162142.P17462580010541351734.a, A006881, A006881.P8515618879267886084.a, A085986, A085986.P3066413001146269465.a, A065475, A065475.P2637304413385993180.a, A161918, A161918.P17534431257680054511.f1, A161918.P17534431257680054511.a, A030513, A030513.P1414838510973468407.a, A353627, A353627.P16518077331837195055.a, A007422, A007422.P2892307068334706217.f1, A007422.P2892307068334706217.a, A209635, A209635.P16478505308631433079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162142

/-! ## A162142.P1649031421440179635

`A189991(n+1)/A006881(n+1)`
-/

namespace A162142.P1649031421440179635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189991 (n + 1) : ℚ) / (A006881 (n + 1) : ℚ)

end

end A162142.P1649031421440179635

namespace A162142

/-- `A189991(n+1)/A006881(n+1)` -/
def P1649031421440179635.Spec : Prop :=
  ∀ n, P1649031421440179635.a n = (A162142 (n + 1) : ℚ)

end A162142

/-! ## A162142.P2510468392684395446

`A190465(n+1)/A085986(n+1)`
-/

namespace A162142.P2510468392684395446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190465 (n + 1) : ℚ) / (A085986 (n + 1) : ℚ)

end

end A162142.P2510468392684395446

namespace A162142

/-- `A190465(n+1)/A085986(n+1)` -/
def P2510468392684395446.Spec : Prop :=
  ∀ n, P2510468392684395446.a n = (A162142 (n + 1) : ℚ)

end A162142

/-! ## A162142.P4598753025897382827

`∏{e}[A007304(n+1), A006881(#+n)]`
-/

namespace A162142.P4598753025897382827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006881 (Nat.factorization (f1 n).natAbs p + n)

end

end A162142.P4598753025897382827

namespace A162142

/-- `∏{e}[A007304(n+1), A006881(#+n)]` -/
def P4598753025897382827.Spec : Prop :=
  ∀ n, P4598753025897382827.a n = A162142 (n + 1)

end A162142

/-! ## A162142.P12073568618467530551

`A190465(n+1)/A006881(n+1)²`
-/

namespace A162142.P12073568618467530551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190465 (n + 1) : ℚ) / (A006881 (n + 1) ^ 2 : ℚ)

end

end A162142.P12073568618467530551

namespace A162142

/-- `A190465(n+1)/A006881(n+1)²` -/
def P12073568618467530551.Spec : Prop :=
  ∀ n, P12073568618467530551.a n = (A162142 (n + 1) : ℚ)

end A162142

/-! ## A162142.P3132377842567413999

`record[∏{p}[A325230(n+1), #*A325230(n+1)]]`
-/

namespace A162142.P3132377842567413999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (p : ℤ) * A325230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162142.P3132377842567413999

namespace A162142

/-- `record[∏{p}[A325230(n+1), #*A325230(n+1)]]` -/
def P3132377842567413999.Spec : Prop :=
  ∀ n, P3132377842567413999.a n = A162142 (n + 1)

end A162142

/-! ## A162142.P16191831637865537574

`(eq[3, A292587(n+1)]+1)^3`
-/

namespace A162142.P16191831637865537574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A162142.P16191831637865537574

namespace A162142

/-- `(eq[3, A292587(n+1)]+1)^3` -/
def P16191831637865537574.Spec : Prop :=
  ∀ n, (P16191831637865537574.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P8779791896094168859

`A270437(sqrt(A085986(n+1)))`
-/

namespace A162142.P8779791896094168859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A162142.P8779791896094168859

namespace A162142

/-- `A270437(sqrt(A085986(n+1)))` -/
def P8779791896094168859.Spec : Prop :=
  ∀ n, P8779791896094168859.a n = A162142 (n + 1)

end A162142

/-! ## A162142.P6637206491492246323

`eq[2, ∑{e}[n, #²]]^3`
-/

namespace A162142.P6637206491492246323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A162142.P6637206491492246323

namespace A162142

/-- `eq[2, ∑{e}[n, #²]]^3` -/
def P6637206491492246323.Spec : Prop :=
  ∀ n, (P6637206491492246323.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P17799257724481797705

`eq[2, A066882(n)]^3`
-/

namespace A162142.P17799257724481797705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A162142.P17799257724481797705

namespace A162142

/-- `eq[2, A066882(n)]^3` -/
def P17799257724481797705.Spec : Prop :=
  ∀ n, (P17799257724481797705.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P14320212787539084040

`A000578(eq[4, A077462(n)])`
-/

namespace A162142.P14320212787539084040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162142.P14320212787539084040

namespace A162142

/-- `A000578(eq[4, A077462(n)])` -/
def P14320212787539084040.Spec : Prop :=
  ∀ n, P14320212787539084040.a n = A162142 (n + 1)

end A162142

/-! ## A162142.P17874482118205280853

`∩[A062838(n+1), A391896(n+1)]`
-/

namespace A162142.P17874482118205280853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162142.P17874482118205280853

namespace A162142

/-- `∩[A062838(n+1), A391896(n+1)]` -/
def P17874482118205280853.Spec : Prop :=
  ∀ n, (P17874482118205280853.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P14971224790146188836

`∩[A177493(n+1), A391896(n+1)]`
-/

namespace A162142.P14971224790146188836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162142.P14971224790146188836

namespace A162142

/-- `∩[A177493(n+1), A391896(n+1)]` -/
def P14971224790146188836.Spec : Prop :=
  ∀ n, (P14971224790146188836.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P9815577293530030717

`∩[A062838(n+1), A303661(n+1)]`
-/

namespace A162142.P9815577293530030717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162142.P9815577293530030717

namespace A162142

/-- `∩[A062838(n+1), A303661(n+1)]` -/
def P9815577293530030717.Spec : Prop :=
  ∀ n, (P9815577293530030717.a n : ℤ) = A162142 (n + 1)

end A162142

/-! ## A162142.P3635170088139087548

`∩[A153147(n+1), A303661(n+1)]`
-/

namespace A162142.P3635170088139087548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162142.P3635170088139087548

namespace A162142

/-- `∩[A153147(n+1), A303661(n+1)]` -/
def P3635170088139087548.Spec : Prop :=
  ∀ n, (P3635170088139087548.a n : ℤ) = A162142 (n + 1)

end A162142

/-!
# A162143: Numbers that are the squares of the product of three distinct primes.

The programs for A162143, the canonical program `A162143.P2076456533087592741` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162143 has offset 1).

The definition of A162143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162143.P2076456533087592741

`A007304(n+1)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A162143

/-- `A007304(n+1)²` -/
def P2076456533087592741.Spec : Prop :=
  ∀ n, P2076456533087592741.a n = A162143 (n + 1)

theorem P2076456533087592741.correct : P2076456533087592741.Spec := by
  intro n
  simp only [A162143, Nat.add_sub_cancel]

end A162143

/-! ## A162143.P14422676550609174653

`root(A162144(n+1), 3)²`
-/

namespace A162143.P14422676550609174653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A162144 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2

end

end A162143.P14422676550609174653

namespace A162143

/-- `root(A162144(n+1), 3)²` -/
def P14422676550609174653.Spec : Prop :=
  ∀ n, P14422676550609174653.a n = (A162143 (n + 1) : ℝ)

end A162143

/-! ## A162143.P3138780829358080835

`A007304(A000027(n+1))^2`
-/

namespace A162143.P3138780829358080835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (A000027 (n + 1)).toNat ^ 2

end

end A162143.P3138780829358080835

namespace A162143

/-- `A007304(A000027(n+1))^2` -/
def P3138780829358080835.Spec : Prop :=
  ∀ n, P3138780829358080835.a n = A162143 (n + 1)

end A162143

/-! ## A162143.P16766596296457773626

`A162144(n+1)/A007304(n+1)`
-/

namespace A162143.P16766596296457773626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162144 (n + 1) : ℚ) / (A007304 (n + 1) : ℚ)

end

end A162143.P16766596296457773626

namespace A162143

/-- `A162144(n+1)/A007304(n+1)` -/
def P16766596296457773626.Spec : Prop :=
  ∀ n, P16766596296457773626.a n = (A162143 (n + 1) : ℚ)

end A162143

/-! ## A162143.P3265823420175223487

`∏{e}[A006881(n+1), A007304(#+n)]`
-/

namespace A162143.P3265823420175223487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007304 (Nat.factorization (f1 n).natAbs p + n)

end

end A162143.P3265823420175223487

namespace A162143

/-- `∏{e}[A006881(n+1), A007304(#+n)]` -/
def P3265823420175223487.Spec : Prop :=
  ∀ n, P3265823420175223487.a n = A162143 (n + 1)

end A162143

/-! ## A162143.P14572226489733152586

`A007304(n+1)^A020639(2*(n+1))`
-/

namespace A162143.P14572226489733152586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A162143.P14572226489733152586

namespace A162143

/-- `A007304(n+1)^A020639(2*(n+1))` -/
def P14572226489733152586.Spec : Prop :=
  ∀ n, P14572226489733152586.a n = (A162143 (n + 1) : ℚ)

end A162143

/-! ## A162143.P11306381767545412577

`A007304(n+1)^ceil(sqrt(1/A010686(n)+1))`
-/

namespace A162143.P11306381767545412577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 1) : ℚ) ^ (⌈Real.sqrt (1 / (A010686 n : ℚ) + 1 : ℝ)⌉ : ℤ)

end

end A162143.P11306381767545412577

namespace A162143

/-- `A007304(n+1)^ceil(sqrt(1/A010686(n)+1))` -/
def P11306381767545412577.Spec : Prop :=
  ∀ n, P11306381767545412577.a n = (A162143 (n + 1) : ℚ)

end A162143

/-! ## A162143.P2334522595751623897

`A007304(n+1)^A001222(A001358(n+1))`
-/

namespace A162143.P2334522595751623897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A162143.P2334522595751623897

namespace A162143

/-- `A007304(n+1)^A001222(A001358(n+1))` -/
def P2334522595751623897.Spec : Prop :=
  ∀ n, P2334522595751623897.a n = (A162143 (n + 1) : ℚ)

end A162143

/-! ## A162143.P13324405199884135014

`A000007(n+1)+A007304(n+1)*A007304(n+1)`
-/

namespace A162143.P13324405199884135014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A007304 (n + 1) * A007304 (n + 1)

end

end A162143.P13324405199884135014

namespace A162143

/-- `A000007(n+1)+A007304(n+1)*A007304(n+1)` -/
def P13324405199884135014.Spec : Prop :=
  ∀ n, P13324405199884135014.a n = A162143 (n + 1)

end A162143

/-! ## A162143.P16007976673635686149

`(A007304(n+2)-A239656(n+1))*A007304(n+1)`
-/

namespace A162143.P16007976673635686149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 2) - A239656 (n + 1)) * A007304 (n + 1)

end

end A162143.P16007976673635686149

namespace A162143

/-- `(A007304(n+2)-A239656(n+1))*A007304(n+1)` -/
def P16007976673635686149.Spec : Prop :=
  ∀ n, P16007976673635686149.a n = A162143 (n + 1)

end A162143

/-! ## A162143.P14994556437166204882

`(eq[1, A354926(n+1)]+1)²`
-/

namespace A162143.P14994556437166204882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A162143.P14994556437166204882

namespace A162143

/-- `(eq[1, A354926(n+1)]+1)²` -/
def P14994556437166204882.Spec : Prop :=
  ∀ n, (P14994556437166204882.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P18206687053647126428

`∩[A014612(n+1), A030059(n+1)]²`
-/

namespace A162143.P18206687053647126428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P18206687053647126428

namespace A162143

/-- `∩[A014612(n+1), A030059(n+1)]²` -/
def P18206687053647126428.Spec : Prop :=
  ∀ n, (P18206687053647126428.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P7321450482527320251

`∩[A014612(n+1), A026416(n+1)]²`
-/

namespace A162143.P7321450482527320251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P7321450482527320251

namespace A162143

/-- `∩[A014612(n+1), A026416(n+1)]²` -/
def P7321450482527320251.Spec : Prop :=
  ∀ n, (P7321450482527320251.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P18401853624733966637

`∩[A000469(n+1), A014612(n+1)]²`
-/

namespace A162143.P18401853624733966637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P18401853624733966637

namespace A162143

/-- `∩[A000469(n+1), A014612(n+1)]²` -/
def P18401853624733966637.Spec : Prop :=
  ∀ n, (P18401853624733966637.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P17298579554290019711

`∩[A000469(n+1), A030626(n+1)]²`
-/

namespace A162143.P17298579554290019711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P17298579554290019711

namespace A162143

/-- `∩[A000469(n+1), A030626(n+1)]²` -/
def P17298579554290019711.Spec : Prop :=
  ∀ n, (P17298579554290019711.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P7064648570312334081

`∩[A000469(n+1), A033992(n+1)]²`
-/

namespace A162143.P7064648570312334081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P7064648570312334081

namespace A162143

/-- `∩[A000469(n+1), A033992(n+1)]²` -/
def P7064648570312334081.Spec : Prop :=
  ∀ n, (P7064648570312334081.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P18178017074803994342

`∩[A000977(n+1), A014612(n+1)]²`
-/

namespace A162143.P18178017074803994342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P18178017074803994342

namespace A162143

/-- `∩[A000977(n+1), A014612(n+1)]²` -/
def P18178017074803994342.Spec : Prop :=
  ∀ n, (P18178017074803994342.a n : ℤ) = A162143 (n + 1)

end A162143

/-! ## A162143.P17967752764030395870

`∩[A000028(n+1), A014612(n+1)]²`
-/

namespace A162143.P17967752764030395870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A162143.P17967752764030395870

namespace A162143

/-- `∩[A000028(n+1), A014612(n+1)]²` -/
def P17967752764030395870.Spec : Prop :=
  ∀ n, (P17967752764030395870.a n : ℤ) = A162143 (n + 1)

end A162143

/-!
# A162144: Products of cubes of 3 distinct primes.

The programs for A162144, the canonical program `A162144.P1786924221262426532` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162144 has offset 1).

The definition of A162144 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162144.P1786924221262426532

`A007304(n+1)^3`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A162144

/-- `A007304(n+1)^3` -/
def P1786924221262426532.Spec : Prop :=
  ∀ n, P1786924221262426532.a n = A162144 (n + 1)

theorem P1786924221262426532.correct : P1786924221262426532.Spec := by
  intro n
  simp only [A162144, Nat.add_sub_cancel]

end A162144

/-! ## A162144.P8807472194706502363

`sqrt(A162143(n+1)^3)`
-/

namespace A162144.P8807472194706502363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A162143 (n + 1) ^ 3 : ℝ)

end

end A162144.P8807472194706502363

namespace A162144

/-- `sqrt(A162143(n+1)^3)` -/
def P8807472194706502363.Spec : Prop :=
  ∀ n, P8807472194706502363.a n = (A162144 (n + 1) : ℝ)

end A162144

/-! ## A162144.P17468124898663127398

`A007304(n+1)*A162143(n+1)`
-/

namespace A162144.P17468124898663127398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) * A162143 (n + 1)

end

end A162144.P17468124898663127398

namespace A162144

/-- `A007304(n+1)*A162143(n+1)` -/
def P17468124898663127398.Spec : Prop :=
  ∀ n, P17468124898663127398.a n = A162144 (n + 1)

end A162144

/-! ## A162144.P5476521982746397817

`∏{e}[A007304(n+1), A007304(#+n)]`
-/

namespace A162144.P5476521982746397817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007304 (Nat.factorization (f1 n).natAbs p + n)

end

end A162144.P5476521982746397817

namespace A162144

/-- `∏{e}[A007304(n+1), A007304(#+n)]` -/
def P5476521982746397817.Spec : Prop :=
  ∀ n, P5476521982746397817.a n = A162144 (n + 1)

end A162144

/-! ## A162144.P8302350745253367757

`A007304(A000027(n+1))²²/A007304(n+1)`
-/

namespace A162144.P8302350745253367757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007304 (A000027 (n + 1)).toNat ^ 2) ^ 2 : ℚ) / (A007304 (n + 1) : ℚ)

end

end A162144.P8302350745253367757

namespace A162144

/-- `A007304(A000027(n+1))²²/A007304(n+1)` -/
def P8302350745253367757.Spec : Prop :=
  ∀ n, P8302350745253367757.a n = (A162144 (n + 1) : ℚ)

end A162144

/-! ## A162144.P18093130792085395600

`A000578(A007304(n+1))`
-/

namespace A162144.P18093130792085395600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007304 (n + 1)).toNat

end

end A162144.P18093130792085395600

namespace A162144

/-- `A000578(A007304(n+1))` -/
def P18093130792085395600.Spec : Prop :=
  ∀ n, P18093130792085395600.a n = A162144 (n + 1)

end A162144

/-! ## A162144.P12115829747492123109

`A034828(2*A007304(n+1))`
-/

namespace A162144.P12115829747492123109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A007304 (n + 1)).toNat

end

end A162144.P12115829747492123109

namespace A162144

/-- `A034828(2*A007304(n+1))` -/
def P12115829747492123109.Spec : Prop :=
  ∀ n, P12115829747492123109.a n = A162144 (n + 1)

end A162144

/-! ## A162144.P8904947734854309162

`A002620(2*A007304(n+1))*A007304(n+1)`
-/

namespace A162144.P8904947734854309162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A007304 (n + 1)).toNat * A007304 (n + 1)

end

end A162144.P8904947734854309162

namespace A162144

/-- `A002620(2*A007304(n+1))*A007304(n+1)` -/
def P8904947734854309162.Spec : Prop :=
  ∀ n, P8904947734854309162.a n = A162144 (n + 1)

end A162144

/-! ## A162144.P7622090761783819425

`∏{p}[A162143(n+1), A006530(#)]*A162143(n+1)`
-/

namespace A162144.P7622090761783819425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p) * A162143 (n + 1)

end

end A162144.P7622090761783819425

namespace A162144

/-- `∏{p}[A162143(n+1), A006530(#)]*A162143(n+1)` -/
def P7622090761783819425.Spec : Prop :=
  ∀ n, P7622090761783819425.a n = A162144 (n + 1)

end A162144

/-!
# A162145: a(n) = the number of noncomposites (primes or 1) that are n digits long when written in binary.

The programs for A162145, there is no canonical definition to state claims against.
-/

/-! ## A162145.P6518938517251634818

`A036378(char[1]+n)`
-/

namespace A162145.P6518938517251634818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A162145.P6518938517251634818

/-! ## A162145.P7893387097625519642

`char[1]+Δ[A007053(n)]`
-/

namespace A162145.P7893387097625519642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A162145.P7893387097625519642

/-! ## A162145.P7179910561597723017

`C(2, n)!*A036378(n)`
-/

namespace A162145.P7179910561597723017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 n) : ℤ) * A036378 n

end

end A162145.P7179910561597723017

/-! ## A162145.P1878536199899999909

`char[1]+Δ[A060967(2*n)]`
-/

namespace A162145.P1878536199899999909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A162145.P1878536199899999909

/-! ## A162145.P1119013505643486570

`char[1]+Δ[A060969(3*n)]`
-/

namespace A162145.P1119013505643486570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060969 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A162145.P1119013505643486570

/-!
# A162146: a(n) = the smallest positive integer divisible by exactly n distinct primes, where each of these primes has the same number of digits when written in binary.

The programs for A162146, there is no canonical definition to state claims against.
-/

/-! ## A162146.P10448895894699599305

`A055773(A000225(n)*A130321(n))`
-/

namespace A162146.P10448895894699599305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (A000225 n * A130321 n).toNat

end

end A162146.P10448895894699599305

/-! ## A162146.P757935458591715163

`A055773(lt[A239217(2*(n+1)), A257587(3*n)])`
-/

namespace A162146.P757935458591715163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162146.P757935458591715163

/-!
# A162147: a(n) = n*(n+1)*(5*n + 4)/6.

The programs for A162147, the canonical program `A162147.P15035152424134388892` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162147 has offset 0).

The definition of A162147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(5*n+4)/6` (program `A162147.P11044687061626126277`, by `A162147.P11044687061626126277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162147.P11044687061626126277

`n*(n+1)*(5*n+4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162147.P11044687061626126277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (5 * n + 4) : ℚ) / 6

end

end A162147.P11044687061626126277

namespace A162147

/-- `n*(n+1)*(5*n+4)/6` -/
def P11044687061626126277.Spec : Prop :=
  ∀ n, P11044687061626126277.a n = (A162147 n : ℚ)

theorem P11044687061626126277.correct : P11044687061626126277.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162147, Nat.add_sub_cancel, A162147.P11044687061626126277.a, A162147.P15035152424134388892.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162147, Nat.add_sub_cancel, A162147.P11044687061626126277.a, A162147.P15035152424134388892.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A162147

/-! ## A162147.P15035152424134388892

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=14, a(3)=38`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162147

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15035152424134388892.Spec : Prop :=
  ∀ n, P15035152424134388892.a n = A162147 n

theorem P15035152424134388892.correct : P15035152424134388892.Spec := by
  intro n
  simp only [A162147]

end A162147

/-! ## A162147.P5684040729508926307

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=3`
-/

namespace A162147.P5684040729508926307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P5684040729508926307

namespace A162147

/-- `∑[∑[a(n-1)+5]]` -/
def P5684040729508926307.Spec : Prop :=
  ∀ n, (P5684040729508926307.a n : ℤ) = A162147 n

end A162147

/-! ## A162147.P3354214482820902201

`lcm(n, (n+1)²)-∑[∑[n]]`
-/

namespace A162147.P3354214482820902201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162147.P3354214482820902201

namespace A162147

/-- `lcm(n, (n+1)²)-∑[∑[n]]` -/
def P3354214482820902201.Spec : Prop :=
  ∀ n, P3354214482820902201.a n = A162147 n

end A162147

/-! ## A162147.P17141824194646709286

`∑[∑[ogf((3x+2x^2)/(1-2x+x^2))]]`
-/

namespace A162147.P17141824194646709286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P17141824194646709286

namespace A162147

/-- `∑[∑[ogf((3x+2x^2)/(1-2x+x^2))]]` -/
def P17141824194646709286.Spec : Prop :=
  ∀ n, P17141824194646709286.a n = A162147 n

end A162147

/-! ## A162147.P5165915866260878920

`ogf((3x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162147.P5165915866260878920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -4, 6, -4, 1] n

end

end A162147.P5165915866260878920

namespace A162147

/-- `ogf((3x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5165915866260878920.Spec : Prop :=
  ∀ n, P5165915866260878920.a n = A162147 n

end A162147

/-! ## A162147.P18381491080619245912

`∑[2-∑[a(n-1)-5]]` with `a(0)=2`
-/

namespace A162147.P18381491080619245912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P18381491080619245912

namespace A162147

/-- `∑[2-∑[a(n-1)-5]]` -/
def P18381491080619245912.Spec : Prop :=
  ∀ n, P18381491080619245912.a n = A162147 n

end A162147

/-! ## A162147.P6123899104690338231

`5*C(n+2, 3)-∑[2*n]`
-/

namespace A162147.P6123899104690338231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (n + 2) 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162147.P6123899104690338231

namespace A162147

/-- `5*C(n+2, 3)-∑[2*n]` -/
def P6123899104690338231.Spec : Prop :=
  ∀ n, P6123899104690338231.a n = A162147 n

end A162147

/-! ## A162147.P17493612253728856911

`n*(n+1)²-C(n+2, 3)`
-/

namespace A162147.P17493612253728856911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

end

end A162147.P17493612253728856911

namespace A162147

/-- `n*(n+1)²-C(n+2, 3)` -/
def P17493612253728856911.Spec : Prop :=
  ∀ n, P17493612253728856911.a n = A162147 n

end A162147

/-! ## A162147.P7910691766061126749

`∑[∑[2*n]]+n*C(n+1, 2)`
-/

namespace A162147.P7910691766061126749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * Nat.choose (n + 1) 2

end

end A162147.P7910691766061126749

namespace A162147

/-- `∑[∑[2*n]]+n*C(n+1, 2)` -/
def P7910691766061126749.Spec : Prop :=
  ∀ n, (P7910691766061126749.a n : ℤ) = A162147 n

end A162147

/-! ## A162147.P16644027110659026202

`∑[lcm(2*n+1, 2*n)]-∑[∑[3*n]]`
-/

namespace A162147.P16644027110659026202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A162147.P16644027110659026202

namespace A162147

/-- `∑[lcm(2*n+1, 2*n)]-∑[∑[3*n]]` -/
def P16644027110659026202.Spec : Prop :=
  ∀ n, P16644027110659026202.a n = A162147 n

end A162147

/-! ## A162147.P4548180244534014477

`∑[A005475(n)]`
-/

namespace A162147.P4548180244534014477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P4548180244534014477

namespace A162147

/-- `∑[A005475(n)]` -/
def P4548180244534014477.Spec : Prop :=
  ∀ n, P4548180244534014477.a n = A162147 n

end A162147

/-! ## A162147.P16863236133095247659

`∑[A116668(n)-1]`
-/

namespace A162147.P16863236133095247659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P16863236133095247659

namespace A162147

/-- `∑[A116668(n)-1]` -/
def P16863236133095247659.Spec : Prop :=
  ∀ n, P16863236133095247659.a n = A162147 n

end A162147

/-! ## A162147.P2643989508043950794

`∑[A202803(n)/2]`
-/

namespace A162147.P2643989508043950794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202803 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P2643989508043950794

namespace A162147

/-- `∑[A202803(n)/2]` -/
def P2643989508043950794.Spec : Prop :=
  ∀ n, P2643989508043950794.a n = (A162147 n : ℚ)

end A162147

/-! ## A162147.P5983777809896386511

`∑[A144312(n)/5]`
-/

namespace A162147.P5983777809896386511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144312 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P5983777809896386511

namespace A162147

/-- `∑[A144312(n)/5]` -/
def P5983777809896386511.Spec : Prop :=
  ∀ n, P5983777809896386511.a n = (A162147 n : ℚ)

end A162147

/-! ## A162147.P13476754767181189775

`A203551(n)+n²`
-/

namespace A162147.P13476754767181189775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n + (n ^ 2 : ℤ)

end

end A162147.P13476754767181189775

namespace A162147

/-- `A203551(n)+n²` -/
def P13476754767181189775.Spec : Prop :=
  ∀ n, P13476754767181189775.a n = A162147 n

end A162147

/-! ## A162147.P7452825686719329622

`∑[A005476(n)+n]`
-/

namespace A162147.P7452825686719329622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P7452825686719329622

namespace A162147

/-- `∑[A005476(n)+n]` -/
def P7452825686719329622.Spec : Prop :=
  ∀ n, P7452825686719329622.a n = A162147 n

end A162147

/-! ## A162147.P13046671555879334367

`∑[A147875(n)-n]`
-/

namespace A162147.P13046671555879334367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P13046671555879334367

namespace A162147

/-- `∑[A147875(n)-n]` -/
def P13046671555879334367.Spec : Prop :=
  ∀ n, P13046671555879334367.a n = A162147 n

end A162147

/-! ## A162147.P11415851717430620075

`A162148(n)-∑[n]`
-/

namespace A162147.P11415851717430620075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162147.P11415851717430620075

namespace A162147

/-- `A162148(n)-∑[n]` -/
def P11415851717430620075.Spec : Prop :=
  ∀ n, P11415851717430620075.a n = A162147 n

end A162147

/-! ## A162147.P15578222990532881724

`∑[A005449(n)+n²]`
-/

namespace A162147.P15578222990532881724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162147.P15578222990532881724

namespace A162147

/-- `∑[A005449(n)+n²]` -/
def P15578222990532881724.Spec : Prop :=
  ∀ n, P15578222990532881724.a n = A162147 n

end A162147

/-!
# A162148: a(n) = n*(n+1)*(5*n+7)/6.

The programs for A162148, the canonical program `A162148.P5430377255311413739` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162148 has offset 0).

The definition of A162148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(5*n+7)/6` (program `A162148.P9184921999363331058`, by `A162148.P9184921999363331058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162148.P12843480839833451870

`4*C(n+2, 3)+C(n+1, 3)`
-/

namespace A162148.P12843480839833451870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 2) 3 + Nat.choose (n + 1) 3

end

end A162148.P12843480839833451870

namespace A162148

/-- `4*C(n+2, 3)+C(n+1, 3)` -/
def P12843480839833451870.Spec : Prop :=
  ∀ n, (P12843480839833451870.a n : ℤ) = A162148 n

end A162148

/-! ## A162148.P9184921999363331058

`n*(n+1)*(5*n+7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162148.P9184921999363331058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (5 * n + 7) : ℚ) / 6

end

end A162148.P9184921999363331058

namespace A162148

/-- `n*(n+1)*(5*n+7)/6` -/
def P9184921999363331058.Spec : Prop :=
  ∀ n, P9184921999363331058.a n = (A162148 n : ℚ)

theorem P9184921999363331058.correct : P9184921999363331058.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A162148, Nat.add_sub_cancel, A162148.P9184921999363331058.a, A162148.P5430377255311413739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A162148, Nat.add_sub_cancel, A162148.P9184921999363331058.a, A162148.P5430377255311413739.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A162148

/-! ## A162148.P5430377255311413739

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=17, a(3)=44`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162148

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5430377255311413739.Spec : Prop :=
  ∀ n, P5430377255311413739.a n = A162148 n

theorem P5430377255311413739.correct : P5430377255311413739.Spec := by
  intro n
  simp only [A162148]

end A162148

/-! ## A162148.P3000611349172514682

`A162147(n)+A000217(n)`
-/

namespace A162148.P3000611349172514682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n + A000217 n

end

end A162148.P3000611349172514682

namespace A162148

/-- `A162147(n)+A000217(n)` -/
def P3000611349172514682.Spec : Prop :=
  ∀ n, P3000611349172514682.a n = A162148 n

end A162148

/-! ## A162148.P12052965505563640239

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=4`
-/

namespace A162148.P12052965505563640239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P12052965505563640239

namespace A162148

/-- `∑[∑[a(n-1)+5]]` -/
def P12052965505563640239.Spec : Prop :=
  ∀ n, (P12052965505563640239.a n : ℤ) = A162148 n

end A162148

/-! ## A162148.P13823976347525224819

`∑[∑[ogf((4x+x^2)/(1-2x+x^2))]]`
-/

namespace A162148.P13823976347525224819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P13823976347525224819

namespace A162148

/-- `∑[∑[ogf((4x+x^2)/(1-2x+x^2))]]` -/
def P13823976347525224819.Spec : Prop :=
  ∀ n, P13823976347525224819.a n = A162148 n

end A162148

/-! ## A162148.P3365111685848265866

`ogf((4x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A162148.P3365111685848265866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -4, 6, -4, 1] n

end

end A162148.P3365111685848265866

namespace A162148

/-- `ogf((4x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3365111685848265866.Spec : Prop :=
  ∀ n, P3365111685848265866.a n = A162148 n

end A162148

/-! ## A162148.P12429941477308736439

`(n+1)^3-C(n+3, 3)`
-/

namespace A162148.P12429941477308736439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (Nat.choose (n + 3) 3 : ℤ)

end

end A162148.P12429941477308736439

namespace A162148

/-- `(n+1)^3-C(n+3, 3)` -/
def P12429941477308736439.Spec : Prop :=
  ∀ n, P12429941477308736439.a n = A162148 n

end A162148

/-! ## A162148.P1251549954917171477

`∑[1-∑[a(n-1)-5]]` with `a(0)=1`
-/

namespace A162148.P1251549954917171477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P1251549954917171477

namespace A162148

/-- `∑[1-∑[a(n-1)-5]]` -/
def P1251549954917171477.Spec : Prop :=
  ∀ n, P1251549954917171477.a n = A162148 n

end A162148

/-! ## A162148.P4549710321521531223

`∑[n²]+n*C(n+2, 2)`
-/

namespace A162148.P4549710321521531223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * Nat.choose (n + 2) 2

end

end A162148.P4549710321521531223

namespace A162148

/-- `∑[n²]+n*C(n+2, 2)` -/
def P4549710321521531223.Spec : Prop :=
  ∀ n, (P4549710321521531223.a n : ℤ) = A162148 n

end A162148

/-! ## A162148.P2020518818447792443

`lcm(n, (n+1)²)-∑[C(n, 2)]`
-/

namespace A162148.P2020518818447792443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162148.P2020518818447792443

namespace A162148

/-- `lcm(n, (n+1)²)-∑[C(n, 2)]` -/
def P2020518818447792443.Spec : Prop :=
  ∀ n, P2020518818447792443.a n = A162148 n

end A162148

/-! ## A162148.P13595177737872815632

`∑[C(2*n+1, 2)]+∑[∑[n]]`
-/

namespace A162148.P13595177737872815632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A162148.P13595177737872815632

namespace A162148

/-- `∑[C(2*n+1, 2)]+∑[∑[n]]` -/
def P13595177737872815632.Spec : Prop :=
  ∀ n, (P13595177737872815632.a n : ℤ) = A162148 n

end A162148

/-! ## A162148.P1730253861025369904

`∑[A147875(n)]`
-/

namespace A162148.P1730253861025369904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P1730253861025369904

namespace A162148

/-- `∑[A147875(n)]` -/
def P1730253861025369904.Spec : Prop :=
  ∀ n, P1730253861025369904.a n = A162148 n

end A162148

/-! ## A162148.P11968925362820257388

`∑[A005475(n)+n]`
-/

namespace A162148.P11968925362820257388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P11968925362820257388

namespace A162148

/-- `∑[A005475(n)+n]` -/
def P11968925362820257388.Spec : Prop :=
  ∀ n, P11968925362820257388.a n = A162148 n

end A162148

/-! ## A162148.P9292627239457284707

`∑[A028895(n)-n]`
-/

namespace A162148.P9292627239457284707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P9292627239457284707

namespace A162148

/-- `∑[A028895(n)-n]` -/
def P9292627239457284707.Spec : Prop :=
  ∀ n, P9292627239457284707.a n = A162148 n

end A162148

/-! ## A162148.P8295964039630673732

`A134481(n)-∑[n]`
-/

namespace A162148.P8295964039630673732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162148.P8295964039630673732

namespace A162148

/-- `A134481(n)-∑[n]` -/
def P8295964039630673732.Spec : Prop :=
  ∀ n, P8295964039630673732.a n = A162148 n

end A162148

/-! ## A162148.P8679459016995088765

`A114211(n)-1+n`
-/

namespace A162148.P8679459016995088765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114211 n - 1 + (n : ℤ)

end

end A162148.P8679459016995088765

namespace A162148

/-- `A114211(n)-1+n` -/
def P8679459016995088765.Spec : Prop :=
  ∀ n, P8679459016995088765.a n = A162148 n

end A162148

/-! ## A162148.P9209878248684271989

`A027480(n)+∑[n²]`
-/

namespace A162148.P9209878248684271989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162148.P9209878248684271989

namespace A162148

/-- `A027480(n)+∑[n²]` -/
def P9209878248684271989.Spec : Prop :=
  ∀ n, P9209878248684271989.a n = A162148 n

end A162148

/-! ## A162148.P119833656604431193

`∑[A045943(n)+n²]`
-/

namespace A162148.P119833656604431193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P119833656604431193

namespace A162148

/-- `∑[A045943(n)+n²]` -/
def P119833656604431193.Spec : Prop :=
  ∀ n, P119833656604431193.a n = A162148 n

end A162148

/-! ## A162148.P16518621526560077470

`∑[A186029(n)-n²]`
-/

namespace A162148.P16518621526560077470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162148.P16518621526560077470

namespace A162148

/-- `∑[A186029(n)-n²]` -/
def P16518621526560077470.Spec : Prop :=
  ∀ n, P16518621526560077470.a n = A162148 n

end A162148

/-!
# A162152: Numbers of the form x(x-1) + y(y-1) with x^2 + y^2 being a prime, x,y >= 0.

The programs for A162152, there is no canonical definition to state claims against.
-/

/-! ## A162152.P12396802425968336398

`record[A000040(n+1)-A080088(n+1)]`
-/

namespace A162152.P12396802425968336398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A080088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P12396802425968336398

/-! ## A162152.P2906183658184165465

`record[A008472(n+1)-A078908(n+1)]`
-/

namespace A162152.P2906183658184165465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A078908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P2906183658184165465

/-! ## A162152.P11062798552375703933

`record[A008578(n+2)-A080088(n+1)]`
-/

namespace A162152.P11062798552375703933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A080088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P11062798552375703933

/-! ## A162152.P1229091424404815899

`record[A065091(n+1)-A080088(n+2)]`
-/

namespace A162152.P1229091424404815899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A080088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P1229091424404815899

/-! ## A162152.P13380085866764206460

`record[A006530(n+2)-A078908(n+2)]`
-/

namespace A162152.P13380085866764206460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - A078908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P13380085866764206460

/-! ## A162152.P11991091358221053318

`record[A014963(n+2)-A078908(n+2)]`
-/

namespace A162152.P11991091358221053318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - A078908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P11991091358221053318

/-! ## A162152.P17990828850533029077

`record[A020639(n+2)-A078908(n+2)]`
-/

namespace A162152.P17990828850533029077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A078908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P17990828850533029077

/-! ## A162152.P565382042825378305

`record[A103222(2*n+1)%A103223(4*n+2)]`
-/

namespace A162152.P565382042825378305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103222 (2 * n + 1)) (A103223 (4 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P565382042825378305

/-! ## A162152.P16387679670251069440

`record[A002313(n+1)-(A002331(n+1)+A002330(n+1))]`
-/

namespace A162152.P16387679670251069440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - (A002331 (n + 1) + A002330 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162152.P16387679670251069440

/-!
# A162153: Differences between the sum of consecutive composites and the prime that precedes them.

The programs for A162153, the canonical program `A162153.P5732949919012923603` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162153 has offset 1).

The definition of A162153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162153.P5732949919012923603

`A054265(n+2)-A000040(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162153

/-- `A054265(n+2)-A000040(n+2)` -/
def P5732949919012923603.Spec : Prop :=
  ∀ n, P5732949919012923603.a n = A162153 (n + 1)

theorem P5732949919012923603.correct : P5732949919012923603.Spec := by
  intro n
  simp only [A162153, Nat.add_sub_cancel]

end A162153

/-! ## A162153.P14534386475736600409

`(A000040(n+3)²-A000040(n+2)²-A000040(n+3)-3*A000040(n+2))/2`
-/

namespace A162153.P14534386475736600409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) ^ 2 - A000040 (n + 2) ^ 2 - A000040 (n + 3) - 3 * A000040 (n + 2) : ℚ) / 2

end

end A162153.P14534386475736600409

namespace A162153

/-- `(A000040(n+3)²-A000040(n+2)²-A000040(n+3)-3*A000040(n+2))/2` -/
def P14534386475736600409.Spec : Prop :=
  ∀ n, P14534386475736600409.a n = (A162153 (n + 1) : ℚ)

end A162153

/-! ## A162153.P7280941260116249711

`A054265(n+2)-A065091(n+1)`
-/

namespace A162153.P7280941260116249711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 2) - A065091 (n + 1)

end

end A162153.P7280941260116249711

namespace A162153

/-- `A054265(n+2)-A065091(n+1)` -/
def P7280941260116249711.Spec : Prop :=
  ∀ n, P7280941260116249711.a n = A162153 (n + 1)

end A162153

/-! ## A162153.P3260229188856548325

`A060325(n+3)+A001223(n+2)`
-/

namespace A162153.P3260229188856548325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060325 (n + 3) + A001223 (n + 2)

end

end A162153.P3260229188856548325

namespace A162153

/-- `A060325(n+3)+A001223(n+2)` -/
def P3260229188856548325.Spec : Prop :=
  ∀ n, P3260229188856548325.a n = A162153 (n + 1)

theorem P3260229188856548325.correct : P3260229188856548325.Spec := by
  intro n
  simp only [A162153, Nat.add_sub_cancel, A162153.P3260229188856548325.a, A162153.P5732949919012923603.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A054265, A054265.P10084973758466375610.a, A060325, A060325.P9919999057588717172.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162153

/-! ## A162153.P11619056941561326200

`A054265(n+1)+A054265(n+2)-A138383(n+1)`
-/

namespace A162153.P11619056941561326200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) + (A054265 (n + 2) - A138383 (n + 1))

end

end A162153.P11619056941561326200

namespace A162153

/-- `A054265(n+1)+A054265(n+2)-A138383(n+1)` -/
def P11619056941561326200.Spec : Prop :=
  ∀ n, P11619056941561326200.a n = A162153 (n + 1)

end A162153

/-! ## A162153.P12801883577459990438

`A054265(n+2)+A060325(n+2)-A054265(n+1)`
-/

namespace A162153.P12801883577459990438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 2) + (A060325 (n + 2) - A054265 (n + 1))

end

end A162153.P12801883577459990438

namespace A162153

/-- `A054265(n+2)+A060325(n+2)-A054265(n+1)` -/
def P12801883577459990438.Spec : Prop :=
  ∀ n, P12801883577459990438.a n = A162153 (n + 1)

theorem P12801883577459990438.correct : P12801883577459990438.Spec := by
  intro n
  simp only [A162153, Nat.add_sub_cancel, A162153.P12801883577459990438.a, A162153.P5732949919012923603.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054265, A054265.P10084973758466375610.a, A060325, A060325.P9919999057588717172.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162153

/-! ## A162153.P5674040319294025265

`A062046(n+2)+A062047(n+2)-A000040(n+2)`
-/

namespace A162153.P5674040319294025265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062046 (n + 2) + (A062047 (n + 2) - A000040 (n + 2))

end

end A162153.P5674040319294025265

namespace A162153

/-- `A062046(n+2)+A062047(n+2)-A000040(n+2)` -/
def P5674040319294025265.Spec : Prop :=
  ∀ n, P5674040319294025265.a n = A162153 (n + 1)

theorem P5674040319294025265.correct : P5674040319294025265.Spec := by
  intro n
  simp only [A162153, Nat.add_sub_cancel, A162153.P5674040319294025265.a, A162153.P5732949919012923603.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054265, A054265.P10084973758466375610.a, A062046, A062046.P5666097150901793030.a, A062047, A062047.P9752423036722782838.a, A162735, A162735.P15250219322694002563.a, A162800, A162800.P4495527545912003925.a, A001057, A001057.P5698194758103254717.a, A162345, A162345.P16599755805380939880.f1, A162345.P16599755805380939880.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162153

/-! ## A162153.P3196792368402229428

`A065091(n+2)+A060325(n+3)-A065091(n+1)`
-/

namespace A162153.P3196792368402229428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + (A060325 (n + 3) - A065091 (n + 1))

end

end A162153.P3196792368402229428

namespace A162153

/-- `A065091(n+2)+A060325(n+3)-A065091(n+1)` -/
def P3196792368402229428.Spec : Prop :=
  ∀ n, P3196792368402229428.a n = A162153 (n + 1)

theorem P3196792368402229428.correct : P3196792368402229428.Spec := by
  intro n
  simp only [A162153, Nat.add_sub_cancel, A162153.P3196792368402229428.a, A162153.P5732949919012923603.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054265, A054265.P10084973758466375610.a, A060325, A060325.P9919999057588717172.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162153

/-! ## A162153.P4245781681625128725

`Δ[A079725(n+2)]-A000040(n+2)`
-/

namespace A162153.P4245781681625128725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 2)

end

end A162153.P4245781681625128725

namespace A162153

/-- `Δ[A079725(n+2)]-A000040(n+2)` -/
def P4245781681625128725.Spec : Prop :=
  ∀ n, P4245781681625128725.a n = A162153 (n + 1)

end A162153

/-! ## A162153.P6901056115502919129

`A054265(n+2)-A063934(2*(n+1))`
-/

namespace A162153.P6901056115502919129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 2) - A063934 (2 * (n + 1))

end

end A162153.P6901056115502919129

namespace A162153

/-- `A054265(n+2)-A063934(2*(n+1))` -/
def P6901056115502919129.Spec : Prop :=
  ∀ n, P6901056115502919129.a n = A162153 (n + 1)

end A162153

/-! ## A162153.P5326664490038329972

`Δ[A051352(A000040(n+2)+1)]`
-/

namespace A162153.P5326664490038329972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162153.P5326664490038329972

namespace A162153

/-- `Δ[A051352(A000040(n+2)+1)]` -/
def P5326664490038329972.Spec : Prop :=
  ∀ n, P5326664490038329972.a n = A162153 (n + 1)

end A162153

/-!
# A162154: Odd-indexed terms are the number of consecutive prime numbers until a composite, even-indexed terms are the number of consecutive composite numbers until a prime.

The programs for A162154, the canonical program `A162154.P2090983927440829256` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162154 has offset 1).

The definition of A162154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162154.P5247854366101021484

`A211005(n+2)`
-/

namespace A162154.P5247854366101021484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 2)

end

end A162154.P5247854366101021484

namespace A162154

/-- `A211005(n+2)` -/
def P5247854366101021484.Spec : Prop :=
  ∀ n, P5247854366101021484.a n = A162154 (n + 1)

end A162154

/-! ## A162154.P2090983927440829256

`Δ[A111688(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162154

/-- `Δ[A111688(n+1)]` -/
def P2090983927440829256.Spec : Prop :=
  ∀ n, P2090983927440829256.a n = A162154 (n + 1)

theorem P2090983927440829256.correct : P2090983927440829256.Spec := by
  intro n
  simp only [A162154, Nat.add_sub_cancel]

end A162154

/-!
# A162161: E.g.f. satisfies: A(x) = exp(x + x^2 + x^3*A(x)).

The programs for A162161, there is no canonical definition to state claims against.
-/

/-! ## A162161.P16650659459812222765

`A162697(n+2)/A083392(2*(n+1))`
-/

namespace A162161.P16650659459812222765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162697 (n + 2) : ℚ) / (A083392 (2 * (n + 1)) : ℚ)

end

end A162161.P16650659459812222765

/-!
# A162162: G.f. satisfies: A(x) = Catalan(x + x^2 + x^3*A(x)) where Catalan(x) = (1-sqrt(1-4*x))/(2x) is the g.f. of A000108.

The programs for A162162, there is no canonical definition to state claims against.
-/

/-! ## A162162.P9185410830714647755

`A220658(A150881(n))`
-/

namespace A162162.P9185410830714647755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150881 n).toNat

end

end A162162.P9185410830714647755

/-! ## A162162.P17734394707409422887

`A187183(A149438(n+1))`
-/

namespace A162162.P17734394707409422887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A149438 (n + 1)).toNat

end

end A162162.P17734394707409422887

/-! ## A162162.P11783390241722799586

`A248183(A367415(n+1))`
-/

namespace A162162.P11783390241722799586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A367415 (n + 1)).toNat

end

end A162162.P11783390241722799586

/-!
# A162163: Primes p such that p-1 and p+1 can individually be written as a sum of 2 and also as a sum of 3 distinct nonzero squares.

The programs for A162163, there is no canonical definition to state claims against.
-/

/-! ## A162163.P3234935833608237731

`p?[A029204(n)*A162164(n+1)]`
-/

namespace A162163.P3234935833608237731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 n * A162164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162163.P3234935833608237731

/-!
# A162167: E.g.f. satisfies: A(x) = exp(x*exp(2*x*exp(3*x*A(x)))).

The programs for A162167, there is no canonical definition to state claims against.
-/

/-! ## A162167.P17085965137731870116

`A098906(A048456(n))`
-/

namespace A162167.P17085965137731870116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098906 (A048456 n).toNat

end

end A162167.P17085965137731870116

/-!
# A162168: Number of reduced words of length n in the Weyl group B_39.

The programs for A162168, there is no canonical definition to state claims against.
-/

/-! ## A162168.P4964289839833797530

`∑[∏{e}[A000230(n), A162166(n)^#]]`
-/

namespace A162168.P4964289839833797530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A162166 n ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162168.P4964289839833797530

/-!
# A162169: Exponential series expansion of (cos(x) - sin(x))*cosh(t*x) + sinh(t*x).

The programs for A162169, there is no canonical definition to state claims against.
-/

/-! ## A162169.P2826508706604441584

`A070909(n)*A108086(n)`
-/

namespace A162169.P2826508706604441584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A108086 n

end

end A162169.P2826508706604441584

/-! ## A162169.P7734697870139680287

`A009998(n)%2*A108086(n)`
-/

namespace A162169.P7734697870139680287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 n) 2 * A108086 n

end

end A162169.P7734697870139680287

/-! ## A162169.P9420808962922980359

`and(1, A128227(n))*A108086(n)`
-/

namespace A162169.P9420808962922980359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A128227 n) * A108086 n

end

end A162169.P9420808962922980359

/-! ## A162169.P190623320505497158

`floor(sqrt(A169590(n)))*A108086(n)`
-/

namespace A162169.P190623320505497158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A169590 n) * A108086 n

end

end A162169.P190623320505497158

/-! ## A162169.P7419149883155227409

`A255812(n+1)%2*A108086(n)`
-/

namespace A162169.P7419149883155227409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255812 (n + 1)) 2 * A108086 n

end

end A162169.P7419149883155227409

/-! ## A162169.P18158372171286517725

`A000035(A128227(n))*A108086(n)`
-/

namespace A162169.P18158372171286517725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A128227 n).toNat * A108086 n

end

end A162169.P18158372171286517725

/-! ## A162169.P7713959425363964815

`A097325(A099884(n))*A108086(n)`
-/

namespace A162169.P7713959425363964815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A099884 n).toNat * A108086 n

end

end A162169.P7713959425363964815

/-! ## A162169.P13150656369411582454

`A108086(n)*A166486(A113413(n))`
-/

namespace A162169.P13150656369411582454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A166486 (A113413 n).toNat

end

end A162169.P13150656369411582454

/-! ## A162169.P17058606760012608359

`A108086(n)*A266502(A061885(n))`
-/

namespace A162169.P17058606760012608359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A266502 (A061885 n).toNat

end

end A162169.P17058606760012608359

/-! ## A162169.P658509027943027212

`A108086(n)%(A162170(n+1)+1)`
-/

namespace A162169.P658509027943027212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108086 n) (A162170 (n + 1) + 1)

end

end A162169.P658509027943027212

/-!
# A162170: Matrix inverse of A162169.

The programs for A162170, there is no canonical definition to state claims against.
-/

/-! ## A162170.P5957721624653804461

`A070909(n)*A109449(n)`
-/

namespace A162170.P5957721624653804461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A109449 n

end

end A162170.P5957721624653804461

/-! ## A162170.P18369585740134498364

`abs(A070909(n)*A247453(n))`
-/

namespace A162170.P18369585740134498364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070909 n * A247453 n|

end

end A162170.P18369585740134498364

/-! ## A162170.P9343367836016913356

`lcm(A109449(n), A162169(n+1))`
-/

namespace A162170.P9343367836016913356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109449 n) (A162169 (n + 1))

end

end A162170.P9343367836016913356

/-! ## A162170.P6276437582003928320

`A125790(n)%2*A109449(n)`
-/

namespace A162170.P6276437582003928320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125790 n) 2 * A109449 n

end

end A162170.P6276437582003928320

/-! ## A162170.P2480089422916012500

`lcm(abs(A162169(n+1)), A247453(n))`
-/

namespace A162170.P2480089422916012500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm |A162169 (n + 1)| (A247453 n)

end

end A162170.P2480089422916012500

/-! ## A162170.P14627512298612512195

`A097325(A099884(n))*A109449(n)`
-/

namespace A162170.P14627512298612512195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A099884 n).toNat * A109449 n

end

end A162170.P14627512298612512195

/-! ## A162170.P11999087224652662629

`A109449(n)*A166486(A113413(n))`
-/

namespace A162170.P11999087224652662629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A166486 (A113413 n).toNat

end

end A162170.P11999087224652662629

/-! ## A162170.P14315726681162317895

`A109449(n)*A266502(A061885(n))`
-/

namespace A162170.P14315726681162317895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A266502 (A061885 n).toNat

end

end A162170.P14315726681162317895

/-! ## A162170.P10630272005991057029

`A363393(n+1)/A363394(n+1)*A109449(n)`
-/

namespace A162170.P10630272005991057029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363393 (n + 1) : ℚ) / (A363394 (n + 1) : ℚ) * (A109449 n : ℚ)

end

end A162170.P10630272005991057029

/-!
# A162171: Third column of A162170.

The programs for A162171, there is no canonical definition to state claims against.
-/

/-! ## A162171.P9888454338981567456

`A104345(∑[n+3])`
-/

namespace A162171.P9888454338981567456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162171.P9888454338981567456

/-! ## A162171.P5327585615978217216

`A109449(∑[n+2]+3)`
-/

namespace A162171.P5327585615978217216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A162171.P5327585615978217216

/-! ## A162171.P4019609962504780750

`∑[n+1]*A000111(n)`
-/

namespace A162171.P4019609962504780750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000111 n

end

end A162171.P4019609962504780750

/-! ## A162171.P9668194721531543312

`abs(A346838(n))*∑[n+1]`
-/

namespace A162171.P9668194721531543312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162171.P9668194721531543312

/-! ## A162171.P5663598159836723418

`∑[n+1]*A147315(C(n, 2))`
-/

namespace A162171.P5663598159836723418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A147315 (Nat.choose n 2)

end

end A162171.P5663598159836723418

/-!
# A162172: Absolute value of ( numerator + denominator of Bernoulli(2*n)).

The programs for A162172, there is no canonical definition to state claims against.
-/

/-! ## A162172.P553234666796807195

`abs(A002445(n)+A000367(n))`
-/

namespace A162172.P553234666796807195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002445 n + A000367 n|

end

end A162172.P553234666796807195

/-! ## A162172.P3591372715476198636

`abs(A027642(2*n)+A000367(n))`
-/

namespace A162172.P3591372715476198636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027642 (2 * n) + A000367 n|

end

end A162172.P3591372715476198636

/-! ## A162172.P11273364314453190644

`abs(A027641(2*n)+A002445(n))`
-/

namespace A162172.P11273364314453190644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027641 (2 * n) + A002445 n|

end

end A162172.P11273364314453190644

/-! ## A162172.P16538400352800678801

`abs(A106458(2*n)+A000367(n))`
-/

namespace A162172.P16538400352800678801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106458 (2 * n) + A000367 n|

end

end A162172.P16538400352800678801

/-! ## A162172.P6087330017129087399

`abs(A141056(2*n)+A000367(n))`
-/

namespace A162172.P6087330017129087399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141056 (2 * n) + A000367 n|

end

end A162172.P6087330017129087399

/-! ## A162172.P10611898026868830877

`abs(A164020(2*n)+A000367(n))`
-/

namespace A162172.P10611898026868830877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164020 (2 * n) + A000367 n|

end

end A162172.P10611898026868830877

/-! ## A162172.P10645850293814857772

`abs(A164555(2*n)+A002445(n))`
-/

namespace A162172.P10645850293814857772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164555 (2 * n) + A002445 n|

end

end A162172.P10645850293814857772

/-! ## A162172.P2731302434406281395

`abs(A176289(2*n)+A000367(n))`
-/

namespace A162172.P2731302434406281395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176289 (2 * n) + A000367 n|

end

end A162172.P2731302434406281395

/-! ## A162172.P9991333624132916000

`abs(A176591(2*n)+A000367(n))`
-/

namespace A162172.P9991333624132916000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176591 (2 * n) + A000367 n|

end

end A162172.P9991333624132916000

/-! ## A162172.P3107241186696258066

`abs(A176327(2*n)+A002445(n))`
-/

namespace A162172.P3107241186696258066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176327 (2 * n) + A002445 n|

end

end A162172.P3107241186696258066

/-!
# A162173: Absolute difference of numerator and denominator of Bernoulli(2*n), n >= 0.

The programs for A162173, there is no canonical definition to state claims against.
-/

/-! ## A162173.P16620622431403430676

`abs(A000367(n)-A002445(n))`
-/

namespace A162173.P16620622431403430676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 n - A002445 n|

end

end A162173.P16620622431403430676

/-! ## A162173.P10850645845994725498

`abs(A027642(2*n)-A000367(n))`
-/

namespace A162173.P10850645845994725498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027642 (2 * n) - A000367 n|

end

end A162173.P10850645845994725498

/-! ## A162173.P6192270103539868243

`abs(A027641(2*n)-A002445(n))`
-/

namespace A162173.P6192270103539868243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027641 (2 * n) - A002445 n|

end

end A162173.P6192270103539868243

/-! ## A162173.P7238669720777783559

`abs(A106458(2*n)-A000367(n))`
-/

namespace A162173.P7238669720777783559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106458 (2 * n) - A000367 n|

end

end A162173.P7238669720777783559

/-! ## A162173.P9651362051573897997

`abs(A141056(2*n)-A000367(n))`
-/

namespace A162173.P9651362051573897997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141056 (2 * n) - A000367 n|

end

end A162173.P9651362051573897997

/-! ## A162173.P9952149313331935852

`abs(A164020(2*n)-A000367(n))`
-/

namespace A162173.P9952149313331935852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164020 (2 * n) - A000367 n|

end

end A162173.P9952149313331935852

/-! ## A162173.P12845996656608629485

`abs(A164555(2*n)-A002445(n))`
-/

namespace A162173.P12845996656608629485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164555 (2 * n) - A002445 n|

end

end A162173.P12845996656608629485

/-! ## A162173.P15665524289857638210

`abs(A176289(2*n)-A000367(n))`
-/

namespace A162173.P15665524289857638210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176289 (2 * n) - A000367 n|

end

end A162173.P15665524289857638210

/-! ## A162173.P16263409920849139012

`abs(A176591(2*n)-A000367(n))`
-/

namespace A162173.P16263409920849139012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176591 (2 * n) - A000367 n|

end

end A162173.P16263409920849139012

/-! ## A162173.P9136466223570066077

`abs(A176327(2*n)-A002445(n))`
-/

namespace A162173.P9136466223570066077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176327 (2 * n) - A002445 n|

end

end A162173.P9136466223570066077

/-!
# A162174: Primes classified by level.

The programs for A162174, there is no canonical definition to state claims against.
-/

/-! ## A162174.P17732961240946825107

`A045344(lt[A000720(n+1), A117078(n+1)])`
-/

namespace A162174.P17732961240946825107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162174.P17732961240946825107

/-! ## A162174.P9719250020814693103

`A065091(lt[A000720(n+1), A117078(n+1)])`
-/

namespace A162174.P9719250020814693103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162174.P9719250020814693103

/-! ## A162174.P7912492200227480618

`A045344(lt[A117563(n+1), A117078(n+1)])`
-/

namespace A162174.P7912492200227480618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162174.P7912492200227480618

/-! ## A162174.P4736266989877897958

`A065091(lt[A117563(n+1), A117078(n+1)])`
-/

namespace A162174.P4736266989877897958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162174.P4736266989877897958

/-! ## A162174.P10019001418210757396

`A045344(lt[A045344(n+1), A117078(n+1)²])`
-/

namespace A162174.P10019001418210757396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162174.P10019001418210757396

/-! ## A162174.P15092385666398296932

`A065091(lt[A065091(n+1), A117078(n+1)²])`
-/

namespace A162174.P15092385666398296932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162174.P15092385666398296932

/-! ## A162174.P4339504215996311432

`A000040(lt[A000720(n+1), A117078(n+1)]+1)`
-/

namespace A162174.P4339504215996311432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A162174.P4339504215996311432

/-!
# A162175: Primes classified by weight.

The programs for A162175, there is no canonical definition to state claims against.
-/

/-! ## A162175.P11078384711357521493

`A045319(lt[A001223(n+1), A117563(n+1)])`
-/

namespace A162175.P11078384711357521493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P11078384711357521493

/-! ## A162175.P8575427014201986485

`A045344(lt[A001223(n+1), A117563(n+1)])`
-/

namespace A162175.P8575427014201986485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P8575427014201986485

/-! ## A162175.P17762623247937996708

`A065091(lt[A001223(n+1), A117563(n+1)])`
-/

namespace A162175.P17762623247937996708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P17762623247937996708

/-! ## A162175.P11235701634416612204

`A065091(lt[A046933(n+1), A117563(n+1)])`
-/

namespace A162175.P11235701634416612204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P11235701634416612204

/-! ## A162175.P2861939119474494363

`A065091(lt[A141042(n+1), n*A117563(n+1)])`
-/

namespace A162175.P2861939119474494363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P2861939119474494363

/-! ## A162175.P17951558694655085616

`A065091(lt[A141042(n+1)/(n+1), A117563(n+1)])`
-/

namespace A162175.P17951558694655085616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A162175.P17951558694655085616

/-! ## A162175.P5613677819133385161

`A065091(lt[A075526(n+1), A117563(n+1)])`
-/

namespace A162175.P5613677819133385161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P5613677819133385161

/-! ## A162175.P3581183492982450296

`A065091(lt[A054541(n+2), A117563(n+1)])`
-/

namespace A162175.P3581183492982450296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P3581183492982450296

/-! ## A162175.P4259807145310908628

`A065091(lt[A076368(n+2)-1, A117563(n+1)])`
-/

namespace A162175.P4259807145310908628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162175.P4259807145310908628

/-!
# A162177: a(n) is the number of composite numbers that are smaller than A008578(n).

The programs for A162177, the canonical program `A162177.P8282933836838632122` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162177 has offset 1).

The definition of A162177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162177.P10745684263426137159

`A008578(n+1)-(n+1)`
-/

namespace A162177.P10745684263426137159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (n + 1 : ℤ)

end

end A162177.P10745684263426137159

namespace A162177

/-- `A008578(n+1)-(n+1)` -/
def P10745684263426137159.Spec : Prop :=
  ∀ n, P10745684263426137159.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P8282933836838632122

`A158611(n+2)-(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162177

/-- `A158611(n+2)-(n+1)` -/
def P8282933836838632122.Spec : Prop :=
  ∀ n, P8282933836838632122.a n = A162177 (n + 1)

theorem P8282933836838632122.correct : P8282933836838632122.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel]

end A162177

/-! ## A162177.P10351010969701485160

`A028815(n)-(n+2)`
-/

namespace A162177.P10351010969701485160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - (n + 2 : ℤ)

end

end A162177.P10351010969701485160

namespace A162177

/-- `A028815(n)-(n+2)` -/
def P10351010969701485160.Spec : Prop :=
  ∀ n, P10351010969701485160.a n = A162177 (n + 1)

theorem P10351010969701485160.correct : P10351010969701485160.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P10351010969701485160.a, A162177.P8282933836838632122.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P12988129745368399515

`A167136(n+1)-Δ[n²]`
-/

namespace A162177.P12988129745368399515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A162177.P12988129745368399515

namespace A162177

/-- `A167136(n+1)-Δ[n²]` -/
def P12988129745368399515.Spec : Prop :=
  ∀ n, P12988129745368399515.a n = A162177 (n + 1)

theorem P12988129745368399515.correct : P12988129745368399515.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P12988129745368399515.f1, A162177.P12988129745368399515.a, A162177.P8282933836838632122.a, A158611, A158611.P9275629407611603775.a, A167136, A167136.P17162096113252504066.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P8365891136831643592

`A014689(abs(1-n)+1)-1`
-/

namespace A162177.P8365891136831643592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A162177.P8365891136831643592

namespace A162177

/-- `A014689(abs(1-n)+1)-1` -/
def P8365891136831643592.Spec : Prop :=
  ∀ n, P8365891136831643592.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P7314284573205143348

`sqrt(A280076(n+1))-(n+1)`
-/

namespace A162177.P7314284573205143348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A162177.P7314284573205143348

namespace A162177

/-- `sqrt(A280076(n+1))-(n+1)` -/
def P7314284573205143348.Spec : Prop :=
  ∀ n, P7314284573205143348.a n = (A162177 (n + 1) : ℝ)

end A162177

/-! ## A162177.P50937336941853619

`record[A259153(n+1)]-(n+1)`
-/

namespace A162177.P50937336941853619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A162177.P50937336941853619

namespace A162177

/-- `record[A259153(n+1)]-(n+1)` -/
def P50937336941853619.Spec : Prop :=
  ∀ n, P50937336941853619.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P11302920276020911711

`A090178(n+1)-2*(n+1)`
-/

namespace A162177.P11302920276020911711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - (2 * (n + 1) : ℤ)

end

end A162177.P11302920276020911711

namespace A162177

/-- `A090178(n+1)-2*(n+1)` -/
def P11302920276020911711.Spec : Prop :=
  ∀ n, P11302920276020911711.a n = A162177 (n + 1)

theorem P11302920276020911711.correct : P11302920276020911711.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P11302920276020911711.a, A162177.P8282933836838632122.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P9241909535144606910

`A001747(n+1)/2-(n+1)`
-/

namespace A162177.P9241909535144606910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A162177.P9241909535144606910

namespace A162177

/-- `A001747(n+1)/2-(n+1)` -/
def P9241909535144606910.Spec : Prop :=
  ∀ n, P9241909535144606910.a n = (A162177 (n + 1) : ℚ)

theorem P9241909535144606910.correct : P9241909535144606910.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P9241909535144606910.a, A162177.P8282933836838632122.a, A001747, A001747.P198467477273308856.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P9982870972481615715

`A112773(n+1)/3-(n+1)`
-/

namespace A162177.P9982870972481615715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112773 (n + 1) : ℚ) / 3 - (n + 1 : ℚ)

end

end A162177.P9982870972481615715

namespace A162177

/-- `A112773(n+1)/3-(n+1)` -/
def P9982870972481615715.Spec : Prop :=
  ∀ n, P9982870972481615715.a n = (A162177 (n + 1) : ℚ)

theorem P9982870972481615715.correct : P9982870972481615715.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P9982870972481615715.a, A162177.P8282933836838632122.a, A112773, A112773.P44553575666953962.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P2253349227956079939

`5*(n+1)-A158635(n+1)`
-/

namespace A162177.P2253349227956079939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A158635 (n + 1)

end

end A162177.P2253349227956079939

namespace A162177

/-- `5*(n+1)-A158635(n+1)` -/
def P2253349227956079939.Spec : Prop :=
  ∀ n, P2253349227956079939.a n = A162177 (n + 1)

theorem P2253349227956079939.correct : P2253349227956079939.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P2253349227956079939.a, A162177.P8282933836838632122.a, A158611, A158611.P9275629407611603775.a, A158635, A158635.P13253286712983529006.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P17982984518204542747

`A164931(n+1)/(n+1)-(n+1)`
-/

namespace A162177.P17982984518204542747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A162177.P17982984518204542747

namespace A162177

/-- `A164931(n+1)/(n+1)-(n+1)` -/
def P17982984518204542747.Spec : Prop :=
  ∀ n, P17982984518204542747.a n = (A162177 (n + 1) : ℚ)

end A162177

/-! ## A162177.P9434022853360189638

`Δ[a(n-1)+A000040(n-1)-n]` with `a(0)=0, a(1)=0`
-/

namespace A162177.P9434022853360189638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (A000040 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162177.P9434022853360189638

namespace A162177

/-- `Δ[a(n-1)+A000040(n-1)-n]` -/
def P9434022853360189638.Spec : Prop :=
  ∀ n, P9434022853360189638.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P17537240922874158252

`A000040(gcd(n, n*a(n-1)))-(n+1)` with `a(0)=0`
-/

namespace A162177.P17537240922874158252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1))) - (n + 1 : ℤ)

end

end A162177.P17537240922874158252

namespace A162177

/-- `A000040(gcd(n, n*a(n-1)))-(n+1)` -/
def P17537240922874158252.Spec : Prop :=
  ∀ n, P17537240922874158252.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P4304983127596231870

`A065890(A028310(n))`
-/

namespace A162177.P4304983127596231870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A028310 n).toNat

end

end A162177.P4304983127596231870

namespace A162177

/-- `A065890(A028310(n))` -/
def P4304983127596231870.Spec : Prop :=
  ∀ n, P4304983127596231870.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P16722521171527163081

`A073170(n+1)-A157928(n)`
-/

namespace A162177.P16722521171527163081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (n + 1) - A157928 n

end

end A162177.P16722521171527163081

namespace A162177

/-- `A073170(n+1)-A157928(n)` -/
def P16722521171527163081.Spec : Prop :=
  ∀ n, P16722521171527163081.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P6498987787430990733

`A073169(n+1)+A014238(n+1)`
-/

namespace A162177.P6498987787430990733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + A014238 (n + 1)

end

end A162177.P6498987787430990733

namespace A162177

/-- `A073169(n+1)+A014238(n+1)` -/
def P6498987787430990733.Spec : Prop :=
  ∀ n, P6498987787430990733.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P12397834410209566201

`A001747(n+1)-A090178(n+1)`
-/

namespace A162177.P12397834410209566201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - A090178 (n + 1)

end

end A162177.P12397834410209566201

namespace A162177

/-- `A001747(n+1)-A090178(n+1)` -/
def P12397834410209566201.Spec : Prop :=
  ∀ n, P12397834410209566201.a n = A162177 (n + 1)

theorem P12397834410209566201.correct : P12397834410209566201.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P12397834410209566201.a, A162177.P8282933836838632122.a, A001747, A001747.P198467477273308856.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-! ## A162177.P11893205900623758852

`A163248(n+1)-A002808(n+1)`
-/

namespace A162177.P11893205900623758852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163248 (n + 1) - A002808 (n + 1)

end

end A162177.P11893205900623758852

namespace A162177

/-- `A163248(n+1)-A002808(n+1)` -/
def P11893205900623758852.Spec : Prop :=
  ∀ n, P11893205900623758852.a n = A162177 (n + 1)

end A162177

/-! ## A162177.P16304826085888925658

`A164653(n+1)-A173137(n+1)`
-/

namespace A162177.P16304826085888925658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) - A173137 (n + 1)

end

end A162177.P16304826085888925658

namespace A162177

/-- `A164653(n+1)-A173137(n+1)` -/
def P16304826085888925658.Spec : Prop :=
  ∀ n, P16304826085888925658.a n = A162177 (n + 1)

theorem P16304826085888925658.correct : P16304826085888925658.Spec := by
  intro n
  simp only [A162177, Nat.add_sub_cancel, A162177.P16304826085888925658.a, A162177.P8282933836838632122.a, A158611, A158611.P9275629407611603775.a, A164653, A164653.P11870517180537955334.a, A173137, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162177

/-!
# A162186: Number of reduced words of length n in the Weyl group B_46.

The programs for A162186, there is no canonical definition to state claims against.
-/

/-! ## A162186.P368693728747766278

`∑[A162183(n)%A208087(3*n+2)]`
-/

namespace A162186.P368693728747766278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162183 n) (A208087 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162186.P368693728747766278

/-! ## A162186.P2914753486754887849

`∑[A162183(n)^A029635(A161680(2*n))]`
-/

namespace A162186.P2914753486754887849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162183 n : ℚ) ^ (A029635 (A161680 (2 * n)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162186.P2914753486754887849

/-!
# A162188: Numbers k such that A001223(k) > A000005(k).

The programs for A162188, the canonical program `A162188.P9451871027428952620` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162188 has offset 1).

The definition of A162188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162188.P2696889987265976196

`lt[A000005(n+1), A001223(n+1)]+1`
-/

namespace A162188.P2696889987265976196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162188.P2696889987265976196

namespace A162188

/-- `lt[A000005(n+1), A001223(n+1)]+1` -/
def P2696889987265976196.Spec : Prop :=
  ∀ n, (P2696889987265976196.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P9451871027428952620

`lt[∏{e}[n, #+1], A076368(n+1)-1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A162188

/-- `lt[∏{e}[n, #+1], A076368(n+1)-1]` -/
def P9451871027428952620.Spec : Prop :=
  ∀ n, (P9451871027428952620.a n : ℤ) = A162188 (n + 1)

theorem P9451871027428952620.correct : P9451871027428952620.Spec := by
  intro n
  simp only [A162188, Nat.add_sub_cancel]

end A162188

/-! ## A162188.P17072606052956666085

`lt[0, A161911(A028310(n))]`
-/

namespace A162188.P17072606052956666085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162188.P17072606052956666085

namespace A162188

/-- `lt[0, A161911(A028310(n))]` -/
def P17072606052956666085.Spec : Prop :=
  ∀ n, (P17072606052956666085.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P11291026794113119762

`lt[Δ[A006218(n)], A001223(n+1)]+1`
-/

namespace A162188.P11291026794113119762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A162188.P11291026794113119762

namespace A162188

/-- `lt[Δ[A006218(n)], A001223(n+1)]+1` -/
def P11291026794113119762.Spec : Prop :=
  ∀ n, (P11291026794113119762.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P6193543173857351630

`lt[A000005(n+1), Δ[A000040(n+1)]]+1`
-/

namespace A162188.P6193543173857351630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162188.P6193543173857351630

namespace A162188

/-- `lt[A000005(n+1), Δ[A000040(n+1)]]+1` -/
def P6193543173857351630.Spec : Prop :=
  ∀ n, (P6193543173857351630.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P16357544814461964440

`lt[A000005(n+1), Δ[A006093(n+1)]]+1`
-/

namespace A162188.P16357544814461964440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162188.P16357544814461964440

namespace A162188

/-- `lt[A000005(n+1), Δ[A006093(n+1)]]+1` -/
def P16357544814461964440.Spec : Prop :=
  ∀ n, (P16357544814461964440.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P8408861783053856343

`lt[A000005(n+1), Δ[A040976(n+1)]]+1`
-/

namespace A162188.P8408861783053856343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162188.P8408861783053856343

namespace A162188

/-- `lt[A000005(n+1), Δ[A040976(n+1)]]+1` -/
def P8408861783053856343.Spec : Prop :=
  ∀ n, (P8408861783053856343.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P9511803730251887313

`A020725(lt[A032741(n+1)+1, A001223(n+1)])`
-/

namespace A162188.P9511803730251887313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162188.P9511803730251887313

namespace A162188

/-- `A020725(lt[A032741(n+1)+1, A001223(n+1)])` -/
def P9511803730251887313.Spec : Prop :=
  ∀ n, P9511803730251887313.a n = A162188 (n + 1)

end A162188

/-! ## A162188.P11498908038345636411

`A065475(lt[A032741(n+1)+1, A001223(n+1)])`
-/

namespace A162188.P11498908038345636411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162188.P11498908038345636411

namespace A162188

/-- `A065475(lt[A032741(n+1)+1, A001223(n+1)])` -/
def P11498908038345636411.Spec : Prop :=
  ∀ n, P11498908038345636411.a n = A162188 (n + 1)

end A162188

/-! ## A162188.P11905380221052228147

`A065475(lt[A334954(n+1), A001223(n+1)+1])`
-/

namespace A162188.P11905380221052228147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162188.P11905380221052228147

namespace A162188

/-- `A065475(lt[A334954(n+1), A001223(n+1)+1])` -/
def P11905380221052228147.Spec : Prop :=
  ∀ n, P11905380221052228147.a n = A162188 (n + 1)

end A162188

/-! ## A162188.P3877440245969183575

`eq[n+1, A000720(A000040(n+1)+A000005(n+1))]+1`
-/

namespace A162188.P3877440245969183575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162188.P3877440245969183575

namespace A162188

/-- `eq[n+1, A000720(A000040(n+1)+A000005(n+1))]+1` -/
def P3877440245969183575.Spec : Prop :=
  ∀ n, (P3877440245969183575.a n : ℤ) = A162188 (n + 1)

end A162188

/-! ## A162188.P8443210223527317869

`lt[A000005(A233583(n+1)), A054541(n+1)]`
-/

namespace A162188.P8443210223527317869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162188.P8443210223527317869

namespace A162188

/-- `lt[A000005(A233583(n+1)), A054541(n+1)]` -/
def P8443210223527317869.Spec : Prop :=
  ∀ n, (P8443210223527317869.a n : ℤ) = A162188 (n + 1)

end A162188

/-!
# A162189: Numbers k such that A001223(k) < A000005(k).

The programs for A162189, the canonical program `A162189.P6510354814338670986` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162189 has offset 1).

The definition of A162189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162189.P6510354814338670986

`lt[A001223(n+1), A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162189

/-- `lt[A001223(n+1), A000005(n+1)]+1` -/
def P6510354814338670986.Spec : Prop :=
  ∀ n, (P6510354814338670986.a n : ℤ) = A162189 (n + 1)

theorem P6510354814338670986.correct : P6510354814338670986.Spec := by
  intro n
  simp only [A162189, Nat.add_sub_cancel]

end A162189

/-! ## A162189.P4348410076187671606

`lt[A161911(A028310(n)), 0]`
-/

namespace A162189.P4348410076187671606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162189.P4348410076187671606

namespace A162189

/-- `lt[A161911(A028310(n)), 0]` -/
def P4348410076187671606.Spec : Prop :=
  ∀ n, (P4348410076187671606.a n : ℤ) = A162189 (n + 1)

end A162189

/-! ## A162189.P2977172324930766896

`lt[A001223(n+1), Δ[A006218(n)]]+1`
-/

namespace A162189.P2977172324930766896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162189.P2977172324930766896

namespace A162189

/-- `lt[A001223(n+1), Δ[A006218(n)]]+1` -/
def P2977172324930766896.Spec : Prop :=
  ∀ n, (P2977172324930766896.a n : ℤ) = A162189 (n + 1)

end A162189

/-! ## A162189.P9231391241157141840

`A020725(lt[A001223(n+1), A032741(n+1)+1])`
-/

namespace A162189.P9231391241157141840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162189.P9231391241157141840

namespace A162189

/-- `A020725(lt[A001223(n+1), A032741(n+1)+1])` -/
def P9231391241157141840.Spec : Prop :=
  ∀ n, P9231391241157141840.a n = A162189 (n + 1)

end A162189

/-! ## A162189.P8854608175387908257

`A065475(lt[A001223(n+1), A032741(n+1)+1])`
-/

namespace A162189.P8854608175387908257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162189.P8854608175387908257

namespace A162189

/-- `A065475(lt[A001223(n+1), A032741(n+1)+1])` -/
def P8854608175387908257.Spec : Prop :=
  ∀ n, P8854608175387908257.a n = A162189 (n + 1)

end A162189

/-! ## A162189.P3971021762082925334

`A065475(lt[A001223(n+1)+1, A334954(n+1)])`
-/

namespace A162189.P3971021762082925334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162189.P3971021762082925334

namespace A162189

/-- `A065475(lt[A001223(n+1)+1, A334954(n+1)])` -/
def P3971021762082925334.Spec : Prop :=
  ∀ n, P3971021762082925334.a n = A162189 (n + 1)

end A162189

/-! ## A162189.P6759485879840585219

`lt[Δ[A000040(n+1)], A000005(n+1)]+1`
-/

namespace A162189.P6759485879840585219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A162189.P6759485879840585219

namespace A162189

/-- `lt[Δ[A000040(n+1)], A000005(n+1)]+1` -/
def P6759485879840585219.Spec : Prop :=
  ∀ n, (P6759485879840585219.a n : ℤ) = A162189 (n + 1)

theorem P6759485879840585219.correct : P6759485879840585219.Spec := by
  intro n
  simp only [A162189, Nat.add_sub_cancel, A162189.P6759485879840585219.f2, A162189.P6759485879840585219.f1, A162189.P6759485879840585219.f3, A162189.P6759485879840585219.a, A162189.P6510354814338670986.f1, A162189.P6510354814338670986.f2, A162189.P6510354814338670986.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162189

/-! ## A162189.P15003711526079086718

`lt[Δ[A006093(n+1)], A000005(n+1)]+1`
-/

namespace A162189.P15003711526079086718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A162189.P15003711526079086718

namespace A162189

/-- `lt[Δ[A006093(n+1)], A000005(n+1)]+1` -/
def P15003711526079086718.Spec : Prop :=
  ∀ n, (P15003711526079086718.a n : ℤ) = A162189 (n + 1)

theorem P15003711526079086718.correct : P15003711526079086718.Spec := by
  intro n
  simp only [A162189, Nat.add_sub_cancel, A162189.P15003711526079086718.f2, A162189.P15003711526079086718.f1, A162189.P15003711526079086718.f3, A162189.P15003711526079086718.a, A162189.P6510354814338670986.f1, A162189.P6510354814338670986.f2, A162189.P6510354814338670986.a, A000005, A000005.P16091521709108585461.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162189

/-! ## A162189.P8093053209643128210

`lt[Δ[A040976(n+1)], A000005(n+1)]+1`
-/

namespace A162189.P8093053209643128210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A162189.P8093053209643128210

namespace A162189

/-- `lt[Δ[A040976(n+1)], A000005(n+1)]+1` -/
def P8093053209643128210.Spec : Prop :=
  ∀ n, (P8093053209643128210.a n : ℤ) = A162189 (n + 1)

theorem P8093053209643128210.correct : P8093053209643128210.Spec := by
  intro n
  simp only [A162189, Nat.add_sub_cancel, A162189.P8093053209643128210.f2, A162189.P8093053209643128210.f1, A162189.P8093053209643128210.f3, A162189.P8093053209643128210.a, A162189.P6510354814338670986.f1, A162189.P6510354814338670986.f2, A162189.P6510354814338670986.a, A000005, A000005.P16091521709108585461.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162189

/-! ## A162189.P16586075568060889589

`lt[A054541(n+1), A000005(A028310(n))]`
-/

namespace A162189.P16586075568060889589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162189.P16586075568060889589

namespace A162189

/-- `lt[A054541(n+1), A000005(A028310(n))]` -/
def P16586075568060889589.Spec : Prop :=
  ∀ n, (P16586075568060889589.a n : ℤ) = A162189 (n + 1)

end A162189

/-!
# A162190: Triangle read by rows in which row n lists the divisors of n, the n-th prime and the consecutive composites that are greater than the n-th prime, with a(0)=1.

The programs for A162190, there is no canonical definition to state claims against.
-/

/-! ## A162190.P9425121003407896221

`A162192(lt[1, A162192(n+1)])`
-/

namespace A162190.P9425121003407896221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A162190.P9425121003407896221

/-! ## A162190.P6043267108441908653

`A162192(lt[1, A162192(n)]-1)`
-/

namespace A162190.P6043267108441908653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A162190.P6043267108441908653

/-!
# A162193: Number of reduced words of length n in the Weyl group B_48.

The programs for A162193, there is no canonical definition to state claims against.
-/

/-! ## A162193.P11552668325604973629

`∑[A162191(n)%A208087(3*n+2)]`
-/

namespace A162193.P11552668325604973629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162191 n) (A208087 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162193.P11552668325604973629

/-!
# A162194: Sum of divisors of nonprime number A018252(n).

The programs for A162194, the canonical program `A162194.P3478823718084409657` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162194 has offset 1).

The definition of A162194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162194.P3478823718084409657

`A000203(A018252(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162194

/-- `A000203(A018252(n+1))` -/
def P3478823718084409657.Spec : Prop :=
  ∀ n, P3478823718084409657.a n = A162194 (n + 1)

theorem P3478823718084409657.correct : P3478823718084409657.Spec := by
  intro n
  simp only [A162194, Nat.add_sub_cancel]

end A162194

/-! ## A162194.P2424887900717713738

`∑{d}[A141468(n+2), #]`
-/

namespace A162194.P2424887900717713738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162194.P2424887900717713738

namespace A162194

/-- `∑{d}[A141468(n+2), #]` -/
def P2424887900717713738.Spec : Prop :=
  ∀ n, (P2424887900717713738.a n : ℤ) = A162194 (n + 1)

end A162194

/-! ## A162194.P1371015995093134611

`∑{d}[A222307(2*n+1), #]`
-/

namespace A162194.P1371015995093134611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162194.P1371015995093134611

namespace A162194

/-- `∑{d}[A222307(2*n+1), #]` -/
def P1371015995093134611.Spec : Prop :=
  ∀ n, (P1371015995093134611.a n : ℤ) = A162194 (n + 1)

end A162194

/-! ## A162194.P4040907143990862306

`A000203(Δ[A051349(n)])`
-/

namespace A162194.P4040907143990862306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A162194.P4040907143990862306

namespace A162194

/-- `A000203(Δ[A051349(n)])` -/
def P4040907143990862306.Spec : Prop :=
  ∀ n, P4040907143990862306.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P8217881895241379591

`A000203(A141468(n+2))`
-/

namespace A162194.P8217881895241379591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A141468 (n + 2)).toNat

end

end A162194.P8217881895241379591

namespace A162194

/-- `A000203(A141468(n+2))` -/
def P8217881895241379591.Spec : Prop :=
  ∀ n, P8217881895241379591.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P10890386611001807663

`A000203(sqrt(A062312(n+1)))`
-/

namespace A162194.P10890386611001807663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A162194.P10890386611001807663

namespace A162194

/-- `A000203(sqrt(A062312(n+1)))` -/
def P10890386611001807663.Spec : Prop :=
  ∀ n, P10890386611001807663.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P12992468865750764555

`A000203(∑[A054546(n+1)])`
-/

namespace A162194.P12992468865750764555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162194.P12992468865750764555

namespace A162194

/-- `A000203(∑[A054546(n+1)])` -/
def P12992468865750764555.Spec : Prop :=
  ∀ n, P12992468865750764555.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P15108709290651797890

`A000203(A222307(2*n+1))`
-/

namespace A162194.P15108709290651797890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A222307 (2 * n + 1)).toNat

end

end A162194.P15108709290651797890

namespace A162194

/-- `A000203(A222307(2*n+1))` -/
def P15108709290651797890.Spec : Prop :=
  ∀ n, P15108709290651797890.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P2440778856163864763

`A000203(A139270(n+1)/2)`
-/

namespace A162194.P2440778856163864763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A139270 (n + 1) : ℚ) / 2)).toNat

end

end A162194.P2440778856163864763

namespace A162194

/-- `A000203(A139270(n+1)/2)` -/
def P2440778856163864763.Spec : Prop :=
  ∀ n, P2440778856163864763.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P7538951566818483339

`A000203(A073425(n)+1+n)`
-/

namespace A162194.P7538951566818483339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A073425 n + 1 + (n : ℤ)).toNat

end

end A162194.P7538951566818483339

namespace A162194

/-- `A000203(A073425(n)+1+n)` -/
def P7538951566818483339.Spec : Prop :=
  ∀ n, P7538951566818483339.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P8669516318140968610

`A162195(n+1)+A018252(n+1)`
-/

namespace A162194.P8669516318140968610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 1) + A018252 (n + 1)

end

end A162194.P8669516318140968610

namespace A162194

/-- `A162195(n+1)+A018252(n+1)` -/
def P8669516318140968610.Spec : Prop :=
  ∀ n, P8669516318140968610.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P15855841886593320070

`A000203(A171504(n+1)-(n+1))`
-/

namespace A162194.P15855841886593320070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A171504 (n + 1) - (n + 1 : ℤ)).toNat

end

end A162194.P15855841886593320070

namespace A162194

/-- `A000203(A171504(n+1)-(n+1))` -/
def P15855841886593320070.Spec : Prop :=
  ∀ n, P15855841886593320070.a n = A162194 (n + 1)

theorem P15855841886593320070.correct : P15855841886593320070.Spec := by
  intro n
  simp only [A162194, Nat.add_sub_cancel, A162194.P15855841886593320070.a, A162194.P3478823718084409657.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A171504, A171504.P6118621284767366624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162194

/-! ## A162194.P11770436615352139862

`A000203(A171523(n+1)/(n+1))`
-/

namespace A162194.P11770436615352139862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A171523 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A162194.P11770436615352139862

namespace A162194

/-- `A000203(A171523(n+1)/(n+1))` -/
def P11770436615352139862.Spec : Prop :=
  ∀ n, P11770436615352139862.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P3617076235010713752

`A000203(comp[A040976(n+1)+1]+1)`
-/

namespace A162194.P3617076235010713752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162194.P3617076235010713752

namespace A162194

/-- `A000203(comp[A040976(n+1)+1]+1)` -/
def P3617076235010713752.Spec : Prop :=
  ∀ n, P3617076235010713752.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P7974451948312297452

`A000203(comp[A000040(n+1)-1]+1)`
-/

namespace A162194.P7974451948312297452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162194.P7974451948312297452

namespace A162194

/-- `A000203(comp[A000040(n+1)-1]+1)` -/
def P7974451948312297452.Spec : Prop :=
  ∀ n, P7974451948312297452.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P194003121209738334

`A000203(comp[A006530(n+1)%(n+1)])`
-/

namespace A162194.P194003121209738334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162194.P194003121209738334

namespace A162194

/-- `A000203(comp[A006530(n+1)%(n+1)])` -/
def P194003121209738334.Spec : Prop :=
  ∀ n, P194003121209738334.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P13080819129370024334

`A000203(comp[C(A006530(n+2), n+1)])`
-/

namespace A162194.P13080819129370024334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162194.P13080819129370024334

namespace A162194

/-- `A000203(comp[C(A006530(n+2), n+1)])` -/
def P13080819129370024334.Spec : Prop :=
  ∀ n, P13080819129370024334.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P7997874429820827560

`A000203(comp[C(A020639(n+2), n+1)])`
-/

namespace A162194.P7997874429820827560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162194.P7997874429820827560

namespace A162194

/-- `A000203(comp[C(A020639(n+2), n+1)])` -/
def P7997874429820827560.Spec : Prop :=
  ∀ n, P7997874429820827560.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P11654902392390372376

`A326065(A139270(n+1))`
-/

namespace A162194.P11654902392390372376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A139270 (n + 1)).toNat

end

end A162194.P11654902392390372376

namespace A162194

/-- `A326065(A139270(n+1))` -/
def P11654902392390372376.Spec : Prop :=
  ∀ n, P11654902392390372376.a n = A162194 (n + 1)

end A162194

/-! ## A162194.P15064085622407554800

`A326065(A176100(n+2))`
-/

namespace A162194.P15064085622407554800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A176100 (n + 2)).toNat

end

end A162194.P15064085622407554800

namespace A162194

/-- `A326065(A176100(n+2))` -/
def P15064085622407554800.Spec : Prop :=
  ∀ n, P15064085622407554800.a n = A162194 (n + 1)

end A162194

/-!
# A162195: Sum of proper divisors of n-th nonprime number A018252(n).

The programs for A162195, the canonical program `A162195.P12385339975544917785` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162195 has offset 1).

The definition of A162195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162195.P12385339975544917785

`A001065(A018252(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162195

/-- `A001065(A018252(n+1))` -/
def P12385339975544917785.Spec : Prop :=
  ∀ n, P12385339975544917785.a n = A162195 (n + 1)

theorem P12385339975544917785.correct : P12385339975544917785.Spec := by
  intro n
  simp only [A162195, Nat.add_sub_cancel]

end A162195

/-! ## A162195.P11961390816738161982

`A062825(n+1)+A057427(n)`
-/

namespace A162195.P11961390816738161982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062825 (n + 1) + A057427 n

end

end A162195.P11961390816738161982

namespace A162195

/-- `A062825(n+1)+A057427(n)` -/
def P11961390816738161982.Spec : Prop :=
  ∀ n, P11961390816738161982.a n = A162195 (n + 1)

theorem P11961390816738161982.correct : P11961390816738161982.Spec := by
  intro n
  simp only [A162195, Nat.add_sub_cancel, A162195.P11961390816738161982.a, A162195.P12385339975544917785.a, A001065, A001065.P4097147489331274860.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A057427, A057427.P3058147525557661423.a, A062825, A062825.P9883742102294151601.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057428, A057428.P2999489532230392221.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162195

/-! ## A162195.P9058661134282326061

`A062825(n+1)-A057428(n)`
-/

namespace A162195.P9058661134282326061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062825 (n + 1) - A057428 n

end

end A162195.P9058661134282326061

namespace A162195

/-- `A062825(n+1)-A057428(n)` -/
def P9058661134282326061.Spec : Prop :=
  ∀ n, P9058661134282326061.a n = A162195 (n + 1)

theorem P9058661134282326061.correct : P9058661134282326061.Spec := by
  intro n
  simp only [A162195, Nat.add_sub_cancel, A162195.P9058661134282326061.a, A162195.P12385339975544917785.a, A001065, A001065.P4097147489331274860.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A057428, A057428.P2999489532230392221.a, A062825, A062825.P9883742102294151601.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162195

/-! ## A162195.P10246940885884930207

`A162194(n+1)-A018252(n+1)`
-/

namespace A162195.P10246940885884930207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162194 (n + 1) - A018252 (n + 1)

end

end A162195.P10246940885884930207

namespace A162195

/-- `A162194(n+1)-A018252(n+1)` -/
def P10246940885884930207.Spec : Prop :=
  ∀ n, P10246940885884930207.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P17059469279304866985

`A162194(n+1)-A141468(n+2)`
-/

namespace A162195.P17059469279304866985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162194 (n + 1) - A141468 (n + 2)

end

end A162195.P17059469279304866985

namespace A162195

/-- `A162194(n+1)-A141468(n+2)` -/
def P17059469279304866985.Spec : Prop :=
  ∀ n, P17059469279304866985.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P15129509266386000477

`∑{d}[A018252(n+1), #-A000010(#)]`
-/

namespace A162195.P15129509266386000477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A162195.P15129509266386000477

namespace A162195

/-- `∑{d}[A018252(n+1), #-A000010(#)]` -/
def P15129509266386000477.Spec : Prop :=
  ∀ n, P15129509266386000477.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P1234208223948298899

`A000203(A018252(n+1))-∑[A054546(n+1)]`
-/

namespace A162195.P1234208223948298899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162195.P1234208223948298899

namespace A162195

/-- `A000203(A018252(n+1))-∑[A054546(n+1)]` -/
def P1234208223948298899.Spec : Prop :=
  ∀ n, P1234208223948298899.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P9040235145540383663

`A000203(A222307(2*n+1))-A222307(2*n+1)`
-/

namespace A162195.P9040235145540383663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A222307 (2 * n + 1)).toNat - A222307 (2 * n + 1)

end

end A162195.P9040235145540383663

namespace A162195

/-- `A000203(A222307(2*n+1))-A222307(2*n+1)` -/
def P9040235145540383663.Spec : Prop :=
  ∀ n, P9040235145540383663.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P15874260225419072779

`A000203(comp[A000040(n+1)-1]+1)-A018252(n+1)`
-/

namespace A162195.P15874260225419072779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - A018252 (n + 1)

end

end A162195.P15874260225419072779

namespace A162195

/-- `A000203(comp[A000040(n+1)-1]+1)-A018252(n+1)` -/
def P15874260225419072779.Spec : Prop :=
  ∀ n, P15874260225419072779.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P17528551259667581545

`A000203(A018252(n+1))-(comp[A006530(n+2)-1]+1)`
-/

namespace A162195.P17528551259667581545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A162195.P17528551259667581545

namespace A162195

/-- `A000203(A018252(n+1))-(comp[A006530(n+2)-1]+1)` -/
def P17528551259667581545.Spec : Prop :=
  ∀ n, P17528551259667581545.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P10974748889903456648

`A000203(A018252(n+1))-(comp[A020639(n+2)-1]+1)`
-/

namespace A162195.P10974748889903456648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A162195.P10974748889903456648

namespace A162195

/-- `A000203(A018252(n+1))-(comp[A020639(n+2)-1]+1)` -/
def P10974748889903456648.Spec : Prop :=
  ∀ n, P10974748889903456648.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P17563566214451953322

`A062825(n+1)+A001222(A008578(n+1))`
-/

namespace A162195.P17563566214451953322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062825 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A162195.P17563566214451953322

namespace A162195

/-- `A062825(n+1)+A001222(A008578(n+1))` -/
def P17563566214451953322.Spec : Prop :=
  ∀ n, P17563566214451953322.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P12150977275591161030

`A001065(A141468(n+2))`
-/

namespace A162195.P12150977275591161030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A141468 (n + 2)).toNat

end

end A162195.P12150977275591161030

namespace A162195

/-- `A001065(A141468(n+2))` -/
def P12150977275591161030.Spec : Prop :=
  ∀ n, P12150977275591161030.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P17327481615890705167

`A001065(∑[A054546(n+1)])`
-/

namespace A162195.P17327481615890705167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162195.P17327481615890705167

namespace A162195

/-- `A001065(∑[A054546(n+1)])` -/
def P17327481615890705167.Spec : Prop :=
  ∀ n, P17327481615890705167.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P18092975858483692891

`A001065(comp[record[A000010(n+1)]]+1)`
-/

namespace A162195.P18092975858483692891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162195.P18092975858483692891

namespace A162195

/-- `A001065(comp[record[A000010(n+1)]]+1)` -/
def P18092975858483692891.Spec : Prop :=
  ∀ n, P18092975858483692891.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P14582395445077012670

`A001065(comp[A040976(n+1)+1]+1)`
-/

namespace A162195.P14582395445077012670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162195.P14582395445077012670

namespace A162195

/-- `A001065(comp[A040976(n+1)+1]+1)` -/
def P14582395445077012670.Spec : Prop :=
  ∀ n, P14582395445077012670.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P9558296330340666040

`A001065(comp[∑[A054541(n+1)]-1]+1)`
-/

namespace A162195.P9558296330340666040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162195.P9558296330340666040

namespace A162195

/-- `A001065(comp[∑[A054541(n+1)]-1]+1)` -/
def P9558296330340666040.Spec : Prop :=
  ∀ n, P9558296330340666040.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P8003243378621952411

`A001065(lt[A109606(n+1), abs(1-n)]+1)`
-/

namespace A162195.P8003243378621952411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A162195.P8003243378621952411

namespace A162195

/-- `A001065(lt[A109606(n+1), abs(1-n)]+1)` -/
def P8003243378621952411.Spec : Prop :=
  ∀ n, P8003243378621952411.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P784448035586374957

`A162196(n+1)+A032741(A018252(n+1))`
-/

namespace A162195.P784448035586374957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162196 (n + 1) + A032741 (A018252 (n + 1)).toNat

end

end A162195.P784448035586374957

namespace A162195

/-- `A162196(n+1)+A032741(A018252(n+1))` -/
def P784448035586374957.Spec : Prop :=
  ∀ n, P784448035586374957.a n = A162195 (n + 1)

end A162195

/-! ## A162195.P5984796696362749518

`A001065(comp[record[A014963(n+2)]-1]+1)`
-/

namespace A162195.P5984796696362749518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162195.P5984796696362749518

namespace A162195

/-- `A001065(comp[record[A014963(n+2)]-1]+1)` -/
def P5984796696362749518.Spec : Prop :=
  ∀ n, P5984796696362749518.a n = A162195 (n + 1)

end A162195

/-!
# A162196: Sum of proper divisors minus the number of proper divisors of nonprime number A018252(n).

The programs for A162196, the canonical program `A162196.P4903355078575306255` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162196 has offset 1).

The definition of A162196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162196.P4903355078575306255

`A152770(A018252(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162196

/-- `A152770(A018252(n+1))` -/
def P4903355078575306255.Spec : Prop :=
  ∀ n, P4903355078575306255.a n = A162196 (n + 1)

theorem P4903355078575306255.correct : P4903355078575306255.Spec := by
  intro n
  simp only [A162196, Nat.add_sub_cancel]

end A162196

/-! ## A162196.P5330732782556532426

`A152770(Δ[A051349(n)])`
-/

namespace A162196.P5330732782556532426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (f1 (n + 1) - f1 n).toNat

end

end A162196.P5330732782556532426

namespace A162196

/-- `A152770(Δ[A051349(n)])` -/
def P5330732782556532426.Spec : Prop :=
  ∀ n, P5330732782556532426.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P5403694687587864572

`A152770(A065090(n+2))`
-/

namespace A162196.P5403694687587864572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A065090 (n + 2)).toNat

end

end A162196.P5403694687587864572

namespace A162196

/-- `A152770(A065090(n+2))` -/
def P5403694687587864572.Spec : Prop :=
  ∀ n, P5403694687587864572.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P16876202241388028168

`A152770(A141468(n+2))`
-/

namespace A162196.P16876202241388028168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A141468 (n + 2)).toNat

end

end A162196.P16876202241388028168

namespace A162196

/-- `A152770(A141468(n+2))` -/
def P16876202241388028168.Spec : Prop :=
  ∀ n, P16876202241388028168.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P13789525607049534369

`A152770(A222307(Δ[n²]))`
-/

namespace A162196.P13789525607049534369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A162196.P13789525607049534369

namespace A162196

/-- `A152770(A222307(Δ[n²]))` -/
def P13789525607049534369.Spec : Prop :=
  ∀ n, P13789525607049534369.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P12499197386037148334

`A152770(A060462(n+1)+1)`
-/

namespace A162196.P12499197386037148334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A060462 (n + 1) + 1).toNat

end

end A162196.P12499197386037148334

namespace A162196

/-- `A152770(A060462(n+1)+1)` -/
def P12499197386037148334.Spec : Prop :=
  ∀ n, P12499197386037148334.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P12665247877839269114

`∑{d}[A018252(n+1), A016035(#)]`
-/

namespace A162196.P12665247877839269114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016035 d

end

end A162196.P12665247877839269114

namespace A162196

/-- `∑{d}[A018252(n+1), A016035(#)]` -/
def P12665247877839269114.Spec : Prop :=
  ∀ n, P12665247877839269114.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P15031856594112065366

`A152770(comp[record[A000010(n+1)]]+1)`
-/

namespace A162196.P15031856594112065366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162196.P15031856594112065366

namespace A162196

/-- `A152770(comp[record[A000010(n+1)]]+1)` -/
def P15031856594112065366.Spec : Prop :=
  ∀ n, P15031856594112065366.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P16515466471397816044

`A152770(comp[A000040(n+1)-1]+1)`
-/

namespace A162196.P16515466471397816044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162196.P16515466471397816044

namespace A162196

/-- `A152770(comp[A000040(n+1)-1]+1)` -/
def P16515466471397816044.Spec : Prop :=
  ∀ n, P16515466471397816044.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P14827899081446207816

`A152770(comp[eq[2, A000005(n+1)]]+1)`
-/

namespace A162196.P14827899081446207816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A162196.P14827899081446207816

namespace A162196

/-- `A152770(comp[eq[2, A000005(n+1)]]+1)` -/
def P14827899081446207816.Spec : Prop :=
  ∀ n, P14827899081446207816.a n = A162196 (n + 1)

end A162196

/-! ## A162196.P14914788785170962379

`A162195(n+1)-A032741(A018252(n+1))`
-/

namespace A162196.P14914788785170962379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 1) - A032741 (A018252 (n + 1)).toNat

end

end A162196.P14914788785170962379

namespace A162196

/-- `A162195(n+1)-A032741(A018252(n+1))` -/
def P14914788785170962379.Spec : Prop :=
  ∀ n, P14914788785170962379.a n = A162196 (n + 1)

end A162196

/-!
# A162197: a(n) = A161912(n) - A061358(n).

The programs for A162197, there is no canonical definition to state claims against.
-/

/-! ## A162197.P797128533422981654

`A161912(n)-A061358(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162197.P797128533422981654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n - A061358 n

end

end A162197.P797128533422981654

/-! ## A162197.P529926449338098479

`A040976(n+1)-A006218(n)-A061358(n)`
-/

namespace A162197.P529926449338098479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A006218 n - A061358 n

end

end A162197.P529926449338098479

/-! ## A162197.P18291945682640574406

`A161912(n)-A269801(n)/(n+2)`
-/

namespace A162197.P18291945682640574406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161912 n : ℚ) - (A269801 n : ℚ) / (n + 2 : ℚ)

end

end A162197.P18291945682640574406

/-! ## A162197.P8793092971289886392

`A000040(n+1)-(A006218(n)+2)-A061358(n)`
-/

namespace A162197.P8793092971289886392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A006218 n + 2) - A061358 n

end

end A162197.P8793092971289886392

/-! ## A162197.P2945961600898153114

`A000040(n+1)%∑[A000005(C(2, n)+n)]-A061358(n)`
-/

namespace A162197.P2945961600898153114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) - A061358 n

end

end A162197.P2945961600898153114

/-! ## A162197.P4376294718806314934

`record[A000010(n+1)]%∑[∏{e}[n, #+1]]-A061358(n)`
-/

namespace A162197.P4376294718806314934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A061358 n

end

end A162197.P4376294718806314934

/-! ## A162197.P13943912309407287297

`eq[1, A001222(n+1)]-∑[∏{e}[n, #+1]]-A061358(n)`
-/

namespace A162197.P13943912309407287297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - A061358 n

end

end A162197.P13943912309407287297

/-! ## A162197.P13931213885556805990

`eq[1, A001222(n+1)]-(A006218(n)+1)-A061358(n)`
-/

namespace A162197.P13931213885556805990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (A006218 n + 1) - A061358 n

end

end A162197.P13931213885556805990

/-! ## A162197.P14363306832595575377

`record[A002322(n+1)]-∑[∏{e}[n, #+1]]-A061358(n)`
-/

namespace A162197.P14363306832595575377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A061358 n

end

end A162197.P14363306832595575377

/-! ## A162197.P7445252720001671032

`A161912(n)+A347550(n)-A347739(n)`
-/

namespace A162197.P7445252720001671032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n + (A347550 n - A347739 n)

end

end A162197.P7445252720001671032

/-!
# A162198: Even cyclops numbers.

The programs for A162198, there is no canonical definition to state claims against.
-/

/-! ## A162198.P13166522136494036226

`A134808(A008486(n)-A057353(n))`
-/

namespace A162198.P13166522136494036226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A008486 n - A057353 n).toNat

end

end A162198.P13166522136494036226

/-! ## A162198.P10171174179769082838

`A134808(A004273(n)+A002265(n+7))`
-/

namespace A162198.P10171174179769082838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A004273 n + A002265 (n + 7)).toNat

end

end A162198.P10171174179769082838

/-! ## A162198.P637647356888423288

`A134808(A004275(n+1)+A002265(n+3))`
-/

namespace A162198.P637647356888423288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A004275 (n + 1) + A002265 (n + 3)).toNat

end

end A162198.P637647356888423288

/-! ## A162198.P11207165459990217754

`A134808(A057353(A008486(n)+1))`
-/

namespace A162198.P11207165459990217754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A057353 (A008486 n + 1).toNat).toNat

end

end A162198.P11207165459990217754

/-! ## A162198.P16863656835791816653

`∩[2*n, A134808(n+1)]`
-/

namespace A162198.P16863656835791816653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P16863656835791816653

/-! ## A162198.P13737320575476202986

`∩[A134808(n+1), A392181(n+1)]`
-/

namespace A162198.P13737320575476202986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P13737320575476202986

/-! ## A162198.P14782501164553701972

`A134808(A301291(n)-A123108(A301291(n)))`
-/

namespace A162198.P14782501164553701972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A301291 n - A123108 (A301291 n).toNat).toNat

end

end A162198.P14782501164553701972

/-! ## A162198.P8081320125817166645

`A134808(A123108(A301291(n)+1))`
-/

namespace A162198.P8081320125817166645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A123108 (A301291 n + 1).toNat).toNat

end

end A162198.P8081320125817166645

/-! ## A162198.P6877545549249444410

`∩[A134808(n+1), A004271(n)]`
-/

namespace A162198.P6877545549249444410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P6877545549249444410

/-! ## A162198.P8196936910408127989

`∩[A134808(n+1), A004272(n)]`
-/

namespace A162198.P8196936910408127989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P8196936910408127989

/-! ## A162198.P4121522989727710433

`∩[A134808(n+1), A004275(n)]`
-/

namespace A162198.P4121522989727710433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P4121522989727710433

/-! ## A162198.P8488138203205438915

`∩[A134808(n+1), A005843(n)]`
-/

namespace A162198.P8488138203205438915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P8488138203205438915

/-! ## A162198.P17226339833609086678

`∩[A134808(n+1), A163300(n+1)]`
-/

namespace A162198.P17226339833609086678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P17226339833609086678

/-! ## A162198.P11146345669665204265

`∩[A134808(n+1), A257282(n+1)]`
-/

namespace A162198.P11146345669665204265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P11146345669665204265

/-! ## A162198.P7899752485376869136

`∩[A134808(n+1), A257637(n+1)]`
-/

namespace A162198.P7899752485376869136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162198.P7899752485376869136

/-!
# A162199: Odd cyclops numbers.

The programs for A162199, there is no canonical definition to state claims against.
-/

/-! ## A162199.P8715761742606097346

`record[xor(1, A134808(n+2)-1)]`
-/

namespace A162199.P8715761742606097346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A134808 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162199.P8715761742606097346

/-! ## A162199.P9962809506731279594

`∩[2*n+1, A134808(n+1)]`
-/

namespace A162199.P9962809506731279594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P9962809506731279594

/-! ## A162199.P8754038401532147568

`record[A000265(A134808(n+2))]`
-/

namespace A162199.P8754038401532147568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A134808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162199.P8754038401532147568

/-! ## A162199.P15669151566108702904

`A134808(A008616(18*(n+1)))`
-/

namespace A162199.P15669151566108702904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (A008616 (18 * (n + 1))).toNat

end

end A162199.P15669151566108702904

/-! ## A162199.P4012504492293325615

`∩[A134808(n+1), A004281(n)]`
-/

namespace A162199.P4012504492293325615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P4012504492293325615

/-! ## A162199.P9953391150419983820

`∩[A134808(n+1), A020742(n)]`
-/

namespace A162199.P9953391150419983820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P9953391150419983820

/-! ## A162199.P6699777656147815558

`∩[A134808(n+1), A060747(n)]`
-/

namespace A162199.P6699777656147815558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P6699777656147815558

/-! ## A162199.P17497790640158232302

`∩[A134808(n+1), A138829(n+1)]`
-/

namespace A162199.P17497790640158232302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P17497790640158232302

/-! ## A162199.P8275323289930104408

`∩[A134808(n+1), A144396(n+1)]`
-/

namespace A162199.P8275323289930104408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P8275323289930104408

/-! ## A162199.P10839632719785720773

`∩[A134808(n+1), A201471(n+3)]`
-/

namespace A162199.P10839632719785720773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201471 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P10839632719785720773

/-! ## A162199.P10368578568871764254

`∩[A134808(n+1), A308602(n+3)]`
-/

namespace A162199.P10368578568871764254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308602 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162199.P10368578568871764254

