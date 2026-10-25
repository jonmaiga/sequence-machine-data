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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054000: a(n) = 2*n^2 - 2.

The programs for A054000, the canonical program `A054000.P17308049870375270601` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054000 has offset 1).

The definition of A054000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-2` (program `A054000.P17308049870375270601`, by `A054000.P17308049870375270601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054000.P17308049870375270601

`2*(n+1)²-2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054000

/-- `2*(n+1)²-2` -/
def P17308049870375270601.Spec : Prop :=
  ∀ n, P17308049870375270601.a n = A054000 (n + 1)

theorem P17308049870375270601.correct : P17308049870375270601.Spec := by
  intro n
  simp only [A054000, Nat.add_sub_cancel]

end A054000

/-! ## A054000.P11714155636286277205

`record[2*n*(n-2)]`
-/

namespace A054000.P11714155636286277205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054000.P11714155636286277205

namespace A054000

/-- `record[2*n*(n-2)]` -/
def P11714155636286277205.Spec : Prop :=
  ∀ n, P11714155636286277205.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P132566814929521371

`∑[a(n-1)+4]` with `a(0)=0, a(1)=6`
-/

namespace A054000.P132566814929521371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054000.P132566814929521371

namespace A054000

/-- `∑[a(n-1)+4]` -/
def P132566814929521371.Spec : Prop :=
  ∀ n, (P132566814929521371.a n : ℤ) = A054000 (n + 1)

end A054000

/-! ## A054000.P3799306272421686791

`∑[ogf((6x-2x^2)/(1-2x+x^2))]`
-/

namespace A054000.P3799306272421686791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054000.P3799306272421686791

namespace A054000

/-- `∑[ogf((6x-2x^2)/(1-2x+x^2))]` -/
def P3799306272421686791.Spec : Prop :=
  ∀ n, P3799306272421686791.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P7091383551726891735

`ogf((6x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A054000.P7091383551726891735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -2] [1, -3, 3, -1] n

end

end A054000.P7091383551726891735

namespace A054000

/-- `ogf((6x-2x^2)/(1-3x+3x^2-x^3))` -/
def P7091383551726891735.Spec : Prop :=
  ∀ n, P7091383551726891735.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P16051039482899109022

`floor(2/tan(1/(n+1))²)`
-/

namespace A054000.P16051039482899109022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.tan (1 / (n + 1 : ℚ) : ℝ) ^ 2⌋

end

end A054000.P16051039482899109022

namespace A054000

/-- `floor(2/tan(1/(n+1))²)` -/
def P16051039482899109022.Spec : Prop :=
  ∀ n, P16051039482899109022.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P13171103392361978869

`((n+1)²-1)/tan(acot(2))`
-/

namespace A054000.P13171103392361978869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 1 : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A054000.P13171103392361978869

namespace A054000

/-- `((n+1)²-1)/tan(acot(2))` -/
def P13171103392361978869.Spec : Prop :=
  ∀ n, P13171103392361978869.a n = (A054000 (n + 1) : ℝ)

end A054000

/-! ## A054000.P13347227446249052304

`((n+1)²-1)/cot(atan(2))`
-/

namespace A054000.P13347227446249052304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 1 : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A054000.P13347227446249052304

namespace A054000

/-- `((n+1)²-1)/cot(atan(2))` -/
def P13347227446249052304.Spec : Prop :=
  ∀ n, P13347227446249052304.a n = (A054000 (n + 1) : ℝ)

end A054000

/-! ## A054000.P5304820343860198459

`∑[8*n-a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A054000.P5304820343860198459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  (8 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054000.P5304820343860198459

namespace A054000

/-- `∑[8*n-a(n-1)]` -/
def P5304820343860198459.Spec : Prop :=
  ∀ n, P5304820343860198459.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P11876974606697772019

`(or(1, 2*n)-(n-1))*2*n`
-/

namespace A054000.P11876974606697772019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) : ℤ) - ((n : ℤ) - 1)) * (2 * n : ℤ)

end

end A054000.P11876974606697772019

namespace A054000

/-- `(or(1, 2*n)-(n-1))*2*n` -/
def P11876974606697772019.Spec : Prop :=
  ∀ n, P11876974606697772019.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P17641738585331047381

`(xor(1, 2*n)-(n-1))*2*n`
-/

namespace A054000.P17641738585331047381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) : ℤ) - ((n : ℤ) - 1)) * (2 * n : ℤ)

end

end A054000.P17641738585331047381

namespace A054000

/-- `(xor(1, 2*n)-(n-1))*2*n` -/
def P17641738585331047381.Spec : Prop :=
  ∀ n, P17641738585331047381.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P15343357391410986476

`2*n*(n+2)%((n+1)^10)`
-/

namespace A054000.P15343357391410986476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 2) % (n + 1) ^ 10)

end

end A054000.P15343357391410986476

namespace A054000

/-- `2*n*(n+2)%((n+1)^10)` -/
def P15343357391410986476.Spec : Prop :=
  ∀ n, (P15343357391410986476.a n : ℤ) = A054000 (n + 1)

end A054000

/-! ## A054000.P14110647297200845211

`C((n+1)², 2)/((n+1)/2)²`
-/

namespace A054000.P14110647297200845211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / ((n + 1 : ℚ) / 2) ^ 2

end

end A054000.P14110647297200845211

namespace A054000

/-- `C((n+1)², 2)/((n+1)/2)²` -/
def P14110647297200845211.Spec : Prop :=
  ∀ n, P14110647297200845211.a n = (A054000 (n + 1) : ℚ)

theorem P14110647297200845211.correct : P14110647297200845211.Spec := by
  intro n
  simp only [A054000, Nat.add_sub_cancel, A054000.P14110647297200845211.a, A054000.P17308049870375270601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054000

/-! ## A054000.P7593469364108312080

`Δ[a(n-1)-(2-2*n²)]` with `a(0)=0`
-/

namespace A054000.P7593469364108312080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (2 - (2 * n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054000.P7593469364108312080

namespace A054000

/-- `Δ[a(n-1)-(2-2*n²)]` -/
def P7593469364108312080.Spec : Prop :=
  ∀ n, P7593469364108312080.a n = A054000 (n + 1)

end A054000

/-! ## A054000.P13027023643183062366

`2*n*gcd(n+2, ((n+2)^5)²)`
-/

namespace A054000.P13027023643183062366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.gcd (n + 2) (((n + 2) ^ 5) ^ 2)

end

end A054000.P13027023643183062366

namespace A054000

/-- `2*n*gcd(n+2, ((n+2)^5)²)` -/
def P13027023643183062366.Spec : Prop :=
  ∀ n, (P13027023643183062366.a n : ℤ) = A054000 (n + 1)

end A054000

/-! ## A054000.P8298074645508578049

`(n+2)*∪[2*n, a(n-1)!]` with `a(0)=4`
-/

namespace A054000.P8298074645508578049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  Nat.factorial (f2 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A054000.P8298074645508578049

namespace A054000

/-- `(n+2)*∪[2*n, a(n-1)!]` -/
def P8298074645508578049.Spec : Prop :=
  ∀ n, (P8298074645508578049.a n : ℤ) = A054000 (n + 1)

end A054000

/-! ## A054000.P7217566025285721477

`(a(n-1)+2)/(1-2/(n+2))` with `a(0)=0`
-/

namespace A054000.P7217566025285721477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 2) / (1 - 2 / (n + 2 : ℚ))

end

end A054000.P7217566025285721477

namespace A054000

/-- `(a(n-1)+2)/(1-2/(n+2))` -/
def P7217566025285721477.Spec : Prop :=
  ∀ n, P7217566025285721477.a n = (A054000 (n + 1) : ℚ)

end A054000

/-! ## A054000.P11373261089329570908

`(n+2)*∪[2*n, 2^(2*n+1)!]`
-/

namespace A054000.P11373261089329570908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.factorial (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A054000.P11373261089329570908

namespace A054000

/-- `(n+2)*∪[2*n, 2^(2*n+1)!]` -/
def P11373261089329570908.Spec : Prop :=
  ∀ n, (P11373261089329570908.a n : ℤ) = A054000 (n + 1)

end A054000

/-! ## A054000.P4278522167587338802

`2*A005563(n)`
-/

namespace A054000.P4278522167587338802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005563 n

end

end A054000.P4278522167587338802

namespace A054000

/-- `2*A005563(n)` -/
def P4278522167587338802.Spec : Prop :=
  ∀ n, P4278522167587338802.a n = A054000 (n + 1)

theorem P4278522167587338802.correct : P4278522167587338802.Spec := by
  intro n
  simp only [A054000, Nat.add_sub_cancel, A054000.P4278522167587338802.a, A054000.P17308049870375270601.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054000

/-! ## A054000.P5381802220391253233

`A114444(n)/8`
-/

namespace A054000.P5381802220391253233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114444 n : ℚ) / 8

end

end A054000.P5381802220391253233

namespace A054000

/-- `A114444(n)/8` -/
def P5381802220391253233.Spec : Prop :=
  ∀ n, P5381802220391253233.a n = (A054000 (n + 1) : ℚ)

theorem P5381802220391253233.correct : P5381802220391253233.Spec := by
  intro n
  simp only [A054000, Nat.add_sub_cancel, A054000.P5381802220391253233.a, A054000.P17308049870375270601.a, A114444, A114444.P13670265799180391886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054000

/-!
# A054001: Differences between numbers k such that k and k+1 have the same sum of divisors.

The programs for A054001, there is no canonical definition to state claims against.
-/

/-! ## A054001.P12777728838591679349

`A002961(n+2)-A002961(n+1)`
-/

namespace A054001.P12777728838591679349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 2) - A002961 (n + 1)

end

end A054001.P12777728838591679349

/-! ## A054001.P4228067497506964219

`Δ[A002961(n+1)]`
-/

namespace A054001.P4228067497506964219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054001.P4228067497506964219

/-! ## A054001.P18255401423450116963

`Δ[A231546(n+1)]`
-/

namespace A054001.P18255401423450116963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054001.P18255401423450116963

/-! ## A054001.P17734132538319093496

`A231546(n+2)-A231546(n+1)`
-/

namespace A054001.P17734132538319093496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 2) - A231546 (n + 1)

end

end A054001.P17734132538319093496

/-! ## A054001.P7863185549250013706

`abs(Δ[A002961(A008619(2*n))])`
-/

namespace A054001.P7863185549250013706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A054001.P7863185549250013706

/-! ## A054001.P13643647948515771649

`Δ[A225757(Δ[n²])]`
-/

namespace A054001.P13643647948515771649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054001.P13643647948515771649

/-! ## A054001.P4249494890987321090

`abs(Δ[A225757(2*(n+1))])`
-/

namespace A054001.P4249494890987321090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A054001.P4249494890987321090

/-! ## A054001.P11672714028821431492

`-Δ[-A225757(2*n+2)]`
-/

namespace A054001.P11672714028821431492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A225757 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A054001.P11672714028821431492

/-! ## A054001.P14061516760088265176

`Δ[A225757(n+n+1)+A007318(C(3, n))]`
-/

namespace A054001.P14061516760088265176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + n + 1) + A007318 (Nat.choose 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054001.P14061516760088265176

/-! ## A054001.P10532744642667293801

`A225757(2*n+3)-A225757(2*n+1)`
-/

namespace A054001.P10532744642667293801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * n + 3) - A225757 (2 * n + 1)

end

end A054001.P10532744642667293801

/-!
# A054002: Number of divisors of n such that n and n-1 have the same sum of divisors.

The programs for A054002, there is no canonical definition to state claims against.
-/

/-! ## A054002.P15899683700873513514

`A054003(n+1)+A053249(n+1)`
-/

namespace A054002.P15899683700873513514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054003 (n + 1) + A053249 (n + 1)

end

end A054002.P15899683700873513514

/-! ## A054002.P13595660028124400236

`∏{e}[A231546(n+1), #+1]`
-/

namespace A054002.P13595660028124400236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054002.P13595660028124400236

/-! ## A054002.P5862806321665305466

`∏{e}[A002961(n+1)+1, #+1]`
-/

namespace A054002.P5862806321665305466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054002.P5862806321665305466

/-! ## A054002.P1102261053444476984

`∏{e}[A225757(2*(n+1)), #+1]`
-/

namespace A054002.P1102261053444476984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054002.P1102261053444476984

/-! ## A054002.P3823568020014730472

`∏{e}[A225757(Δ[n²])+1, #+1]`
-/

namespace A054002.P3823568020014730472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054002.P3823568020014730472

/-! ## A054002.P1917867808331335852

`∑{d}[A231546(n+1), gcd(#, A034947(n+1))]`
-/

namespace A054002.P1917867808331335852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A034947 (n + 1))

end

end A054002.P1917867808331335852

/-! ## A054002.P4698030780811101210

`∑{d}[A231546(n+1), A262079(n+1)^#]`
-/

namespace A054002.P4698030780811101210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A262079 (n + 1) ^ d

end

end A054002.P4698030780811101210

/-!
# A054003: tau(n+1) - tau(n) where n and n+1 have the same sum of divisors.

The programs for A054003, there is no canonical definition to state claims against.
-/

/-! ## A054003.P14694662824253309703

`A054002(n+1)-A053249(n+1)`
-/

namespace A054003.P14694662824253309703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054002 (n + 1) - A053249 (n + 1)

end

end A054003.P14694662824253309703

/-! ## A054003.P4332434121673808156

`A054002(n+1)-∏{e}[A002961(n+1), #+1]`
-/

namespace A054003.P4332434121673808156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054002 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)

end

end A054003.P4332434121673808156

/-! ## A054003.P11244098172308659439

`∏{e}[A231546(n+1), #+1]-A053249(n+1)`
-/

namespace A054003.P11244098172308659439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - A053249 (n + 1)

end

end A054003.P11244098172308659439

/-! ## A054003.P6185066592853362740

`A054002(n+1)-∏{e}[A225757(Δ[n²]), #+1]`
-/

namespace A054003.P6185066592853362740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054002 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)

end

end A054003.P6185066592853362740

/-! ## A054003.P11897786010976535978

`∏{e}[A002961(n+1)+1, #+1]-A053249(n+1)`
-/

namespace A054003.P11897786010976535978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - A053249 (n + 1)

end

end A054003.P11897786010976535978

/-! ## A054003.P9739691547537568815

`∏{e}[A231546(n+1), #+1]-∏{e}[A002961(n+1), #+1]`
-/

namespace A054003.P9739691547537568815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

end

end A054003.P9739691547537568815

/-!
# A054004: Numbers k such that k and k+1 have the same number and sum of divisors.

The programs for A054004, there is no canonical definition to state claims against.
-/

/-! ## A054004.P10479702479731317031

`record[gcd(A002961(n+1), A054003(n+1))]`
-/

namespace A054004.P10479702479731317031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002961 (n + 1)) (A054003 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P10479702479731317031

/-! ## A054004.P5294786976452100679

`∩[A002961(n+1), A238380(n+1)]`
-/

namespace A054004.P5294786976452100679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P5294786976452100679

/-! ## A054004.P14475130351069907548

`A225758(Δ[n²])`
-/

namespace A054004.P14475130351069907548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054004.P14475130351069907548

/-! ## A054004.P17135304008429036283

`A225758(2*(n+1))-1`
-/

namespace A054004.P17135304008429036283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (2 * (n + 1)) - 1

end

end A054004.P17135304008429036283

/-! ## A054004.P10031210582458456256

`record[A225758(abs(A097062(n)))]`
-/

namespace A054004.P10031210582458456256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 |A097062 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P10031210582458456256

/-! ## A054004.P5080743822190995450

`record[A225758(A230423(n)+1)]`
-/

namespace A054004.P5080743822190995450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (A230423 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P5080743822190995450

/-! ## A054004.P6221147082370767262

`record[A033999(n)*A225758(n+1)]`
-/

namespace A054004.P6221147082370767262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A225758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P6221147082370767262

/-! ## A054004.P16100794570165771310

`record[A225758(n+1)/A328580(n)]`
-/

namespace A054004.P16100794570165771310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225758 (n + 1) : ℚ) / (A328580 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P16100794570165771310

/-! ## A054004.P8344821902947036570

`∩[A002961(n+1), A225758(n+1)]`
-/

namespace A054004.P8344821902947036570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P8344821902947036570

/-! ## A054004.P16387752427451697483

`∩[A225758(n+1), A238380(n+1)]`
-/

namespace A054004.P16387752427451697483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P16387752427451697483

/-! ## A054004.P13395273325600554425

`record[A225758(n+1)-A007814(n+1)]`
-/

namespace A054004.P13395273325600554425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1) - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P13395273325600554425

/-! ## A054004.P986532045879070264

`record[A225758(n+1)/A001511(n+1)]`
-/

namespace A054004.P986532045879070264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225758 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P986532045879070264

/-! ## A054004.P17498775801619844718

`record[A225758(n+1)/(A097062(n)-n)]`
-/

namespace A054004.P17498775801619844718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225758 (n + 1) : ℚ) / (A097062 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054004.P17498775801619844718

/-! ## A054004.P2578630458991830491

`∩[A002961(n+1), A322256(n+1)]`
-/

namespace A054004.P2578630458991830491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P2578630458991830491

/-! ## A054004.P2722376945506775555

`∩[A225758(n+1), A322256(n+1)]`
-/

namespace A054004.P2722376945506775555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P2722376945506775555

/-! ## A054004.P773675218572845194

`∩[A238380(n+1), A322256(n+1)]`
-/

namespace A054004.P773675218572845194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P773675218572845194

/-! ## A054004.P13353793644808318168

`∩[A058072(n+1), A225758(n+1)]`
-/

namespace A054004.P13353793644808318168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P13353793644808318168

/-! ## A054004.P10769920078326126864

`∩[A058072(n+1), A322256(n+1)]`
-/

namespace A054004.P10769920078326126864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P10769920078326126864

/-! ## A054004.P4962756769482742497

`∩[A058073(n+1), A225758(n+1)]`
-/

namespace A054004.P4962756769482742497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P4962756769482742497

/-! ## A054004.P1983371441692624587

`∩[A058073(n+1), A322256(n+1)]`
-/

namespace A054004.P1983371441692624587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054004.P1983371441692624587

/-!
# A054005: Sum of divisors of k such that k and k+1 have the same number and sum of divisors.

The programs for A054005, there is no canonical definition to state claims against.
-/

/-! ## A054005.P12554467352996737882

`∑{d}[A054004(n+1), #]`
-/

namespace A054005.P12554467352996737882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A054005.P12554467352996737882

/-! ## A054005.P12552023251875356204

`∑{d}[A225758(Δ[n²]), #]`
-/

namespace A054005.P12552023251875356204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A054005.P12552023251875356204

/-! ## A054005.P9638027944367195583

`∑{d}[A225758(2*n+1)+1, #]`
-/

namespace A054005.P9638027944367195583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A054005.P9638027944367195583

/-! ## A054005.P10747677202719780193

`∑{d}[record[A225758(A230423(n)+1)], #]`
-/

namespace A054005.P10747677202719780193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (A230423 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A054005.P10747677202719780193

/-! ## A054005.P5253278140047615279

`∑{d}[A322256(comp[A000292(4*n)]), #]`
-/

namespace A054005.P5253278140047615279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (4 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322256 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A054005.P5253278140047615279

/-!
# A054006: Number of divisors of k and k+1 which have the same number and sum of divisors.

The programs for A054006, there is no canonical definition to state claims against.
-/

/-! ## A054006.P3727442385059143737

`∏{e}[A054004(n+1), #+1]`
-/

namespace A054006.P3727442385059143737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054006.P3727442385059143737

/-! ## A054006.P15368002729247048953

`∏{e}[A225758(2*n+1), #+1]`
-/

namespace A054006.P15368002729247048953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054006.P15368002729247048953

/-! ## A054006.P11704541116632975275

`∏{e}[record[A225758(A230423(n)+1)], #+1]`
-/

namespace A054006.P11704541116632975275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (A230423 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A054006.P11704541116632975275

/-! ## A054006.P16201375941451313605

`∏{e}[∩[A002961(n+1), A225758(n+1)], #+1]`
-/

namespace A054006.P16201375941451313605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A054006.P16201375941451313605

/-! ## A054006.P14711175981225596831

`∏{e}[∩[A225758(n+1), A238380(n+1)], #+1]`
-/

namespace A054006.P14711175981225596831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225758 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238380 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A054006.P14711175981225596831

/-!
# A054007: Numbers k such that k and k+1 have the same sum but an unequal number of divisors.

The programs for A054007, there is no canonical definition to state claims against.
-/

/-! ## A054007.P11993935756846479379

`filter[A002961(n+1), A104338(#)]`
-/

namespace A054007.P11993935756846479379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104338 (f1 j).toNat = 1) n)

end

end A054007.P11993935756846479379

/-!
# A054008: n read modulo (number of divisors of n).

The programs for A054008, the canonical program `A054008.P8577963668979964369` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054008 has offset 1).

The definition of A054008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054008.P8577963668979964369

`(n+1)%∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054008

/-- `(n+1)%∏{e}[n+1, #+1]` -/
def P8577963668979964369.Spec : Prop :=
  ∀ n, (P8577963668979964369.a n : ℤ) = A054008 (n + 1)

theorem P8577963668979964369.correct : P8577963668979964369.Spec := by
  intro n
  simp only [A054008, Nat.add_sub_cancel]

end A054008

/-! ## A054008.P15442662928558966053

`(2*n-(n-1))%∑{d}[n+1, gcd(n, #)]`
-/

namespace A054008.P15442662928558966053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - ((n : ℤ) - 1)) ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A054008.P15442662928558966053

namespace A054008

/-- `(2*n-(n-1))%∑{d}[n+1, gcd(n, #)]` -/
def P15442662928558966053.Spec : Prop :=
  ∀ n, P15442662928558966053.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P1484704715703639556

`(n+1)%Δ[A006218(n)]`
-/

namespace A054008.P1484704715703639556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A054008.P1484704715703639556

namespace A054008

/-- `(n+1)%Δ[A006218(n)]` -/
def P1484704715703639556.Spec : Prop :=
  ∀ n, P1484704715703639556.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P3669648888059599458

`-xor(n, -1)%Δ[A054519(n)]`
-/

namespace A054008.P3669648888059599458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor (n : ℤ) (-1)) (f1 (n + 1) - f1 n)

end

end A054008.P3669648888059599458

namespace A054008

/-- `-xor(n, -1)%Δ[A054519(n)]` -/
def P3669648888059599458.Spec : Prop :=
  ∀ n, P3669648888059599458.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P15115491118770784537

`abs(xor(n, -1)%A000005(n+1))`
-/

namespace A054008.P15115491118770784537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.xor (n : ℤ) (-1)) (A000005 (n + 1))|

end

end A054008.P15115491118770784537

namespace A054008

/-- `abs(xor(n, -1)%A000005(n+1))` -/
def P15115491118770784537.Spec : Prop :=
  ∀ n, P15115491118770784537.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P16253068451027104679

`A000027(n+1)%∑{d}[n+1, ceil(1/#)]`
-/

namespace A054008.P16253068451027104679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉)

end

end A054008.P16253068451027104679

namespace A054008

/-- `A000027(n+1)%∑{d}[n+1, ceil(1/#)]` -/
def P16253068451027104679.Spec : Prop :=
  ∀ n, P16253068451027104679.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P15786955530478946494

`A071262(n)%A000005(n+1)`
-/

namespace A054008.P15786955530478946494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071262 n) (A000005 (n + 1))

end

end A054008.P15786955530478946494

namespace A054008

/-- `A071262(n)%A000005(n+1)` -/
def P15786955530478946494.Spec : Prop :=
  ∀ n, P15786955530478946494.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P9816701644688421439

`A049820(n+1)%Δ[A054519(n)]`
-/

namespace A054008.P9816701644688421439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049820 (n + 1)) (f1 (n + 1) - f1 n)

end

end A054008.P9816701644688421439

namespace A054008

/-- `A049820(n+1)%Δ[A054519(n)]` -/
def P9816701644688421439.Spec : Prop :=
  ∀ n, P9816701644688421439.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P17120157666223674085

`A000027(n+1)%A000005(n+1)`
-/

namespace A054008.P17120157666223674085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A000005 (n + 1))

end

end A054008.P17120157666223674085

namespace A054008

/-- `A000027(n+1)%A000005(n+1)` -/
def P17120157666223674085.Spec : Prop :=
  ∀ n, P17120157666223674085.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P4305605960232426472

`A062249(n+1)%A000005(n+1)`
-/

namespace A054008.P4305605960232426472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062249 (n + 1)) (A000005 (n + 1))

end

end A054008.P4305605960232426472

namespace A054008

/-- `A062249(n+1)%A000005(n+1)` -/
def P4305605960232426472.Spec : Prop :=
  ∀ n, P4305605960232426472.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P12799169191478031523

`A087156(n+1)%A000005(n+1)`
-/

namespace A054008.P12799169191478031523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A000005 (n + 1))

end

end A054008.P12799169191478031523

namespace A054008

/-- `A087156(n+1)%A000005(n+1)` -/
def P12799169191478031523.Spec : Prop :=
  ∀ n, P12799169191478031523.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P7034217207740339482

`A028310(n+1)%A320111(2*(n+1))`
-/

namespace A054008.P7034217207740339482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A320111 (2 * (n + 1)))

end

end A054008.P7034217207740339482

namespace A054008

/-- `A028310(n+1)%A320111(2*(n+1))` -/
def P7034217207740339482.Spec : Prop :=
  ∀ n, P7034217207740339482.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P11541961365912642240

`n+1-A000005(n+1)*A078709(n+1)`
-/

namespace A054008.P11541961365912642240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A078709 (n + 1)

end

end A054008.P11541961365912642240

namespace A054008

/-- `n+1-A000005(n+1)*A078709(n+1)` -/
def P11541961365912642240.Spec : Prop :=
  ∀ n, P11541961365912642240.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P7872222001375565948

`-(-(n+1)%(A006218(n+1)-A006218(n)))`
-/

namespace A054008.P7872222001375565948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(n + 1 : ℤ)) (A006218 (n + 1) - A006218 n)

end

end A054008.P7872222001375565948

namespace A054008

/-- `-(-(n+1)%(A006218(n+1)-A006218(n)))` -/
def P7872222001375565948.Spec : Prop :=
  ∀ n, P7872222001375565948.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P10210043005603718894

`A000027(A000027(n+1))%(A038040(n+1)/(n+1))`
-/

namespace A054008.P10210043005603718894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A000027 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A054008.P10210043005603718894

namespace A054008

/-- `A000027(A000027(n+1))%(A038040(n+1)/(n+1))` -/
def P10210043005603718894.Spec : Prop :=
  ∀ n, P10210043005603718894.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P5174520542916462840

`1-A161654(n+1)+n`
-/

namespace A054008.P5174520542916462840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161654 (n + 1) + (n : ℤ)

end

end A054008.P5174520542916462840

namespace A054008

/-- `1-A161654(n+1)+n` -/
def P5174520542916462840.Spec : Prop :=
  ∀ n, P5174520542916462840.a n = A054008 (n + 1)

theorem P5174520542916462840.correct : P5174520542916462840.Spec := by
  intro n
  simp only [A054008, Nat.add_sub_cancel, A054008.P5174520542916462840.a, A054008.P8577963668979964369.f1, A054008.P8577963668979964369.a, A161654, A161654.P13899316953508437492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054008

/-! ## A054008.P12502224801451941895

`A195507(n+1)%A096737(n+1)`
-/

namespace A054008.P12502224801451941895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195507 (n + 1)) (A096737 (n + 1))

end

end A054008.P12502224801451941895

namespace A054008

/-- `A195507(n+1)%A096737(n+1)` -/
def P12502224801451941895.Spec : Prop :=
  ∀ n, P12502224801451941895.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P14372610862475675184

`A060401(n+1)%A000005(n+1)`
-/

namespace A054008.P14372610862475675184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A000005 (n + 1))

end

end A054008.P14372610862475675184

namespace A054008

/-- `A060401(n+1)%A000005(n+1)` -/
def P14372610862475675184.Spec : Prop :=
  ∀ n, P14372610862475675184.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P3135827368893435914

`A048158(A000005(n+1)+∑[n])`
-/

namespace A054008.P3135827368893435914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A000005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054008.P3135827368893435914

namespace A054008

/-- `A048158(A000005(n+1)+∑[n])` -/
def P3135827368893435914.Spec : Prop :=
  ∀ n, P3135827368893435914.a n = A054008 (n + 1)

end A054008

/-! ## A054008.P10613470226733293559

`A154234(∑[n+1])`
-/

namespace A054008.P10613470226733293559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054008.P10613470226733293559

namespace A054008

/-- `A154234(∑[n+1])` -/
def P10613470226733293559.Spec : Prop :=
  ∀ n, P10613470226733293559.a n = A054008 (n + 1)

end A054008

/-!
# A054009: n read modulo (number of proper divisors of n).

The programs for A054009, the canonical program `A054009.P17140610936238475492` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054009 has offset 2).

The definition of A054009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054009.P17140610936238475492

`(n+2)%∑{d}[n+2, (n+3)%#]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054009

/-- `(n+2)%∑{d}[n+2, (n+3)%#]` -/
def P17140610936238475492.Spec : Prop :=
  ∀ n, (P17140610936238475492.a n : ℤ) = A054009 (n + 2)

theorem P17140610936238475492.correct : P17140610936238475492.Spec := by
  intro n
  simp only [A054009, Nat.add_sub_cancel]

end A054009

/-! ## A054009.P11012986288670301737

`(n+2)%∑[A051950(n+2)]`
-/

namespace A054009.P11012986288670301737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054009.P11012986288670301737

namespace A054009

/-- `(n+2)%∑[A051950(n+2)]` -/
def P11012986288670301737.Spec : Prop :=
  ∀ n, P11012986288670301737.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P14306454750384082920

`(char[1]+2+n)%(1-A000005(n+2))`
-/

namespace A054009.P14306454750384082920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0) + 2 + n : ℕ) : ℤ) (1 - A000005 (n + 2))

end

end A054009.P14306454750384082920

namespace A054009

/-- `(char[1]+2+n)%(1-A000005(n+2))` -/
def P14306454750384082920.Spec : Prop :=
  ∀ n, P14306454750384082920.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P9318720761326836564

`(n+2)%A325765(n+1)`
-/

namespace A054009.P9318720761326836564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A325765 (n + 1))

end

end A054009.P9318720761326836564

namespace A054009

/-- `(n+2)%A325765(n+1)` -/
def P9318720761326836564.Spec : Prop :=
  ∀ n, P9318720761326836564.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P5804797049437631413

`A020725(n+1)%A032741(n+2)`
-/

namespace A054009.P5804797049437631413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (A032741 (n + 2))

end

end A054009.P5804797049437631413

namespace A054009

/-- `A020725(n+1)%A032741(n+2)` -/
def P5804797049437631413.Spec : Prop :=
  ∀ n, P5804797049437631413.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P1915480348569636291

`A065475(n+1)%Δ[A002541(n+1)]`
-/

namespace A054009.P1915480348569636291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065475 (n + 1)) (f1 (n + 1) - f1 n)

end

end A054009.P1915480348569636291

namespace A054009

/-- `A065475(n+1)%Δ[A002541(n+1)]` -/
def P1915480348569636291.Spec : Prop :=
  ∀ n, P1915480348569636291.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P11287481609352494583

`(A233583(n+2)+1)%A032741(n+2)`
-/

namespace A054009.P11287481609352494583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 2) + 1) (A032741 (n + 2))

end

end A054009.P11287481609352494583

namespace A054009

/-- `(A233583(n+2)+1)%A032741(n+2)` -/
def P11287481609352494583.Spec : Prop :=
  ∀ n, P11287481609352494583.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P12979977025608354250

`A048158(A032741(n+2)+∑[n+1])`
-/

namespace A054009.P12979977025608354250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A032741 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054009.P12979977025608354250

namespace A054009

/-- `A048158(A032741(n+2)+∑[n+1])` -/
def P12979977025608354250.Spec : Prop :=
  ∀ n, P12979977025608354250.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P13775143846623067180

`A048158(∑[Δ[A000005(n+1)]+n+1])`
-/

namespace A054009.P13775143846623067180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054009.P13775143846623067180

namespace A054009

/-- `A048158(∑[Δ[A000005(n+1)]+n+1])` -/
def P13775143846623067180.Spec : Prop :=
  ∀ n, P13775143846623067180.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P11141962467948086060

`A048158(A000096(n)+A000005(n+2))`
-/

namespace A054009.P11141962467948086060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A000096 n + A000005 (n + 2)).toNat

end

end A054009.P11141962467948086060

namespace A054009

/-- `A048158(A000096(n)+A000005(n+2))` -/
def P11141962467948086060.Spec : Prop :=
  ∀ n, P11141962467948086060.a n = A054009 (n + 2)

end A054009

/-! ## A054009.P14828030095516502219

`A048158(A253145(n)+A032741(n+2))`
-/

namespace A054009.P14828030095516502219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A253145 n + A032741 (n + 2)).toNat

end

end A054009.P14828030095516502219

namespace A054009

/-- `A048158(A253145(n)+A032741(n+2))` -/
def P14828030095516502219.Spec : Prop :=
  ∀ n, P14828030095516502219.a n = A054009 (n + 2)

end A054009

/-!
# A054010: Numbers n with property that n is divisible by the number of its proper divisors.

The programs for A054010, there is no canonical definition to state claims against.
-/

/-! ## A054010.P2247815634613247054

`∪[A000040(n+1), A055719(n+1)]`
-/

namespace A054010.P2247815634613247054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054010.P2247815634613247054

/-! ## A054010.P10928060445773950299

`∪[A055719(n+1), A116974(n+1)]`
-/

namespace A054010.P10928060445773950299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054010.P10928060445773950299

/-! ## A054010.P14014588886526652808

`eq[0, A054009(n+2)]+2`
-/

namespace A054010.P14014588886526652808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054010.P14014588886526652808

/-! ## A054010.P16656514717466730752

`eq[n+1, lcm(n+1, A032741(n+1))]+1`
-/

namespace A054010.P16656514717466730752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A032741 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054010.P16656514717466730752

/-! ## A054010.P1166336776813701946

`eq[lcm(n, A032741(n)), A028310(n)]`
-/

namespace A054010.P1166336776813701946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A032741 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054010.P1166336776813701946

/-! ## A054010.P16717736988880492734

`eq[A032741(n), A125168(A028310(n))]`
-/

namespace A054010.P16717736988880492734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125168 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054010.P16717736988880492734

/-! ## A054010.P17424054039250383806

`eq[A032741(n), A125168(A233583(n+1))]`
-/

namespace A054010.P17424054039250383806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125168 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054010.P17424054039250383806

/-!
# A054011: n is not divisible by the number of its proper divisors.

The programs for A054011, the canonical program `A054011.P1372442972230571596` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054011 has offset 1).

The definition of A054011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054011.P1372442972230571596

`lt[A032741(A054009(n+2)), A054009(n+2)]+2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054011

/-- `lt[A032741(A054009(n+2)), A054009(n+2)]+2` -/
def P1372442972230571596.Spec : Prop :=
  ∀ n, (P1372442972230571596.a n : ℤ) = A054011 (n + 1)

theorem P1372442972230571596.correct : P1372442972230571596.Spec := by
  intro n
  simp only [A054011, Nat.add_sub_cancel]

end A054011

/-! ## A054011.P12603667852590370108

`lt[n, lcm(n, A032741(n))]`
-/

namespace A054011.P12603667852590370108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A032741 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054011.P12603667852590370108

namespace A054011

/-- `lt[n, lcm(n, A032741(n))]` -/
def P12603667852590370108.Spec : Prop :=
  ∀ n, (P12603667852590370108.a n : ℤ) = A054011 (n + 1)

end A054011

/-! ## A054011.P5234392846790804020

`lt[gcd(2*n, ∑{d}[n, 2%(#+1)]), ∑{d}[n, 2%(#+1)]]`
-/

namespace A054011.P5234392846790804020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (∑ d ∈ Nat.divisors (f2 n), 2 % (d + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), 2 % (d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A054011.P5234392846790804020

namespace A054011

/-- `lt[gcd(2*n, ∑{d}[n, 2%(#+1)]), ∑{d}[n, 2%(#+1)]]` -/
def P5234392846790804020.Spec : Prop :=
  ∀ n, (P5234392846790804020.a n : ℤ) = A054011 (n + 1)

end A054011

/-! ## A054011.P3952678295699313499

`eq[char[A054010(n+1)], A130779(n)]`
-/

namespace A054011.P3952678295699313499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054011.P3952678295699313499

namespace A054011

/-- `eq[char[A054010(n+1)], A130779(n)]` -/
def P3952678295699313499.Spec : Prop :=
  ∀ n, (P3952678295699313499.a n : ℤ) = A054011 (n + 1)

end A054011

/-! ## A054011.P13631530301882905086

`eq[char[A054010(n+1)], A019590(n+1)]`
-/

namespace A054011.P13631530301882905086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054011.P13631530301882905086

namespace A054011

/-- `eq[char[A054010(n+1)], A019590(n+1)]` -/
def P13631530301882905086.Spec : Prop :=
  ∀ n, (P13631530301882905086.a n : ℤ) = A054011 (n + 1)

end A054011

/-! ## A054011.P16394496259182641804

`eq[char[A054010(n+1)], A182688(n+1)]`
-/

namespace A054011.P16394496259182641804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054011.P16394496259182641804

namespace A054011

/-- `eq[char[A054010(n+1)], A182688(n+1)]` -/
def P16394496259182641804.Spec : Prop :=
  ∀ n, (P16394496259182641804.a n : ℤ) = A054011 (n + 1)

end A054011

/-!
# A054012: Nonzero values of n read modulo (number of proper divisors of n).

The programs for A054012, the canonical program `A054012.P12555440370121058311` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054012 has offset 1).

The definition of A054012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054012.P12555440370121058311

`A054009(A054011(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054012

/-- `A054009(A054011(n+1))` -/
def P12555440370121058311.Spec : Prop :=
  ∀ n, P12555440370121058311.a n = A054012 (n + 1)

theorem P12555440370121058311.correct : P12555440370121058311.Spec := by
  intro n
  simp only [A054012, Nat.add_sub_cancel]

end A054012

/-! ## A054012.P17634015021572767083

`A054009(lt[n, lcm(n, A032741(n))])`
-/

namespace A054012.P17634015021572767083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A032741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054012.P17634015021572767083

namespace A054012

/-- `A054009(lt[n, lcm(n, A032741(n))])` -/
def P17634015021572767083.Spec : Prop :=
  ∀ n, P17634015021572767083.a n = A054012 (n + 1)

end A054012

/-! ## A054012.P17484692718827962221

`A054009(lt[gcd(2*n, ∑{d}[n, 2%(#+1)]), ∑{d}[n, 2%(#+1)]])`
-/

namespace A054012.P17484692718827962221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (∑ d ∈ Nat.divisors (f2 n), 2 % (d + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), 2 % (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A054012.P17484692718827962221

namespace A054012

/-- `A054009(lt[gcd(2*n, ∑{d}[n, 2%(#+1)]), ∑{d}[n, 2%(#+1)]])` -/
def P17484692718827962221.Spec : Prop :=
  ∀ n, P17484692718827962221.a n = A054012 (n + 1)

end A054012

/-! ## A054012.P17785875991459212755

`A054009(eq[char[A054010(n+1)], A130779(n)])`
-/

namespace A054012.P17785875991459212755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A054012.P17785875991459212755

namespace A054012

/-- `A054009(eq[char[A054010(n+1)], A130779(n)])` -/
def P17785875991459212755.Spec : Prop :=
  ∀ n, P17785875991459212755.a n = A054012 (n + 1)

end A054012

/-! ## A054012.P4508617957407672386

`A054009(eq[char[A054010(n+1)], A019590(n+1)])`
-/

namespace A054012.P4508617957407672386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A054012.P4508617957407672386

namespace A054012

/-- `A054009(eq[char[A054010(n+1)], A019590(n+1)])` -/
def P4508617957407672386.Spec : Prop :=
  ∀ n, P4508617957407672386.a n = A054012 (n + 1)

end A054012

/-! ## A054012.P12492378285892284805

`eq[char[A054010(n+1)], A130779(n)]%A032741(A054011(n+1))`
-/

namespace A054012.P12492378285892284805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n : ℤ) (A032741 (A054011 (n + 1)).toNat)

end

end A054012.P12492378285892284805

namespace A054012

/-- `eq[char[A054010(n+1)], A130779(n)]%A032741(A054011(n+1))` -/
def P12492378285892284805.Spec : Prop :=
  ∀ n, P12492378285892284805.a n = A054012 (n + 1)

end A054012

/-!
# A054013: Chowla function of n read modulo n.

The programs for A054013, the canonical program `A054013.P1088920809247585060` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054013 has offset 1).

The definition of A054013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054013.P1088920809247585060

`(∑{d}[n+1, #]-1)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054013

/-- `(∑{d}[n+1, #]-1)%(n+1)` -/
def P1088920809247585060.Spec : Prop :=
  ∀ n, P1088920809247585060.a n = A054013 (n + 1)

theorem P1088920809247585060.correct : P1088920809247585060.Spec := by
  intro n
  simp only [A054013, Nat.add_sub_cancel]

end A054013

/-! ## A054013.P14788739242405530855

`∑{d}[n+1, #%#²]%(n+1)`
-/

namespace A054013.P14788739242405530855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2) % (n + 1)

end

end A054013.P14788739242405530855

namespace A054013

/-- `∑{d}[n+1, #%#²]%(n+1)` -/
def P14788739242405530855.Spec : Prop :=
  ∀ n, (P14788739242405530855.a n : ℤ) = A054013 (n + 1)

end A054013

/-! ## A054013.P14992020183994683676

`A039653(n+1)%(n+1)`
-/

namespace A054013.P14992020183994683676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (n + 1)) (n + 1 : ℤ)

end

end A054013.P14992020183994683676

namespace A054013

/-- `A039653(n+1)%(n+1)` -/
def P14992020183994683676.Spec : Prop :=
  ∀ n, P14992020183994683676.a n = A054013 (n + 1)

end A054013

/-! ## A054013.P15909793425379947671

`A048050(n+1)%(n+1)`
-/

namespace A054013.P15909793425379947671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (n + 1 : ℤ)

end

end A054013.P15909793425379947671

namespace A054013

/-- `A048050(n+1)%(n+1)` -/
def P15909793425379947671.Spec : Prop :=
  ∀ n, P15909793425379947671.a n = A054013 (n + 1)

end A054013

/-! ## A054013.P2612889591807359298

`(Δ[A160664(n)]-1)%(n+1)`
-/

namespace A054013.P2612889591807359298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) (n + 1 : ℤ)

end

end A054013.P2612889591807359298

namespace A054013

/-- `(Δ[A160664(n)]-1)%(n+1)` -/
def P2612889591807359298.Spec : Prop :=
  ∀ n, P2612889591807359298.a n = A054013 (n + 1)

end A054013

/-! ## A054013.P17377558786442941249

`(A000203(n+1)-1)%(n+1)`
-/

namespace A054013.P17377558786442941249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - 1) (n + 1 : ℤ)

end

end A054013.P17377558786442941249

namespace A054013

/-- `(A000203(n+1)-1)%(n+1)` -/
def P17377558786442941249.Spec : Prop :=
  ∀ n, P17377558786442941249.a n = A054013 (n + 1)

end A054013

/-! ## A054013.P16553523437418218447

`(A000027(∑{d}[n+1, #])+n)%(n+1)`
-/

namespace A054013.P16553523437418218447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∑ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)) (n + 1 : ℤ)

end

end A054013.P16553523437418218447

namespace A054013

/-- `(A000027(∑{d}[n+1, #])+n)%(n+1)` -/
def P16553523437418218447.Spec : Prop :=
  ∀ n, P16553523437418218447.a n = A054013 (n + 1)

end A054013

/-! ## A054013.P8414615675606091604

`(A005563(n)+∑{d}[n+1, #])%(n+1)`
-/

namespace A054013.P8414615675606091604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A054013.P8414615675606091604

namespace A054013

/-- `(A005563(n)+∑{d}[n+1, #])%(n+1)` -/
def P8414615675606091604.Spec : Prop :=
  ∀ n, P8414615675606091604.a n = A054013 (n + 1)

end A054013

/-! ## A054013.P10305280147527551958

`A083266(n+1)%A005451(n+1)`
-/

namespace A054013.P10305280147527551958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083266 (n + 1)) (A005451 (n + 1))

end

end A054013.P10305280147527551958

namespace A054013

/-- `A083266(n+1)%A005451(n+1)` -/
def P10305280147527551958.Spec : Prop :=
  ∀ n, P10305280147527551958.a n = A054013 (n + 1)

end A054013

/-!
# A054014: Chowla function of n read modulo (the number of divisors of n).

The programs for A054014, the canonical program `A054014.P4378508901305366923` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054014 has offset 1).

The definition of A054014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054014.P4378508901305366923

`A048050(n+1)%Δ[A006218(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054014

/-- `A048050(n+1)%Δ[A006218(n)]` -/
def P4378508901305366923.Spec : Prop :=
  ∀ n, P4378508901305366923.a n = A054014 (n + 1)

theorem P4378508901305366923.correct : P4378508901305366923.Spec := by
  intro n
  simp only [A054014, Nat.add_sub_cancel]

end A054014

/-! ## A054014.P359305767693518889

`(A033880(n+1)+n)%Δ[A006218(n)]`
-/

namespace A054014.P359305767693518889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033880 (n + 1) + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A054014.P359305767693518889

namespace A054014

/-- `(A033880(n+1)+n)%Δ[A006218(n)]` -/
def P359305767693518889.Spec : Prop :=
  ∀ n, P359305767693518889.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P7269018839960248453

`(A001065(n+1)-1)%A000005(n+1)`
-/

namespace A054014.P7269018839960248453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) - 1) (A000005 (n + 1))

end

end A054014.P7269018839960248453

namespace A054014

/-- `(A001065(n+1)-1)%A000005(n+1)` -/
def P7269018839960248453.Spec : Prop :=
  ∀ n, P7269018839960248453.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P8782065729882977756

`(A039653(n+1)-(n+1))%A000005(n+1)`
-/

namespace A054014.P8782065729882977756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (n + 1) - (n + 1 : ℤ)) (A000005 (n + 1))

end

end A054014.P8782065729882977756

namespace A054014

/-- `(A039653(n+1)-(n+1))%A000005(n+1)` -/
def P8782065729882977756.Spec : Prop :=
  ∀ n, P8782065729882977756.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P8429661732439510972

`(A000203(n+1)-(n+2))%A000005(n+1)`
-/

namespace A054014.P8429661732439510972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - (n + 2 : ℤ)) (A000005 (n + 1))

end

end A054014.P8429661732439510972

namespace A054014

/-- `(A000203(n+1)-(n+2))%A000005(n+1)` -/
def P8429661732439510972.Spec : Prop :=
  ∀ n, P8429661732439510972.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P13231675539027423680

`(∑[A340793(n+1)-1]-1)%A000005(n+1)`
-/

namespace A054014.P13231675539027423680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A000005 (n + 1))

end

end A054014.P13231675539027423680

namespace A054014

/-- `(∑[A340793(n+1)-1]-1)%A000005(n+1)` -/
def P13231675539027423680.Spec : Prop :=
  ∀ n, P13231675539027423680.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P11452966104458491588

`A048050(A000027(n+1))%A000005(n+1)`
-/

namespace A054014.P11452966104458491588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (A000027 (n + 1)).toNat) (A000005 (n + 1))

end

end A054014.P11452966104458491588

namespace A054014

/-- `A048050(A000027(n+1))%A000005(n+1)` -/
def P11452966104458491588.Spec : Prop :=
  ∀ n, P11452966104458491588.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P565067384032264287

`(A237588(n+1)+A004273(n)-n)%A000005(n+1)`
-/

namespace A054014.P565067384032264287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237588 (n + 1) + A004273 n - (n : ℤ)) (A000005 (n + 1))

end

end A054014.P565067384032264287

namespace A054014

/-- `(A237588(n+1)+A004273(n)-n)%A000005(n+1)` -/
def P565067384032264287.Spec : Prop :=
  ∀ n, P565067384032264287.a n = A054014 (n + 1)

end A054014

/-! ## A054014.P3268138666137314325

`(gcd(n+1, A060681(n+1))+A318505(n+1)-1)%A000005(n+1)`
-/

namespace A054014.P3268138666137314325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℤ) + (A318505 (n + 1) - 1)) (A000005 (n + 1))

end

end A054014.P3268138666137314325

namespace A054014

/-- `(gcd(n+1, A060681(n+1))+A318505(n+1)-1)%A000005(n+1)` -/
def P3268138666137314325.Spec : Prop :=
  ∀ n, P3268138666137314325.a n = A054014 (n + 1)

end A054014

/-!
# A054015: a(n) is Chowla function of n read modulo (number of proper divisors of n), a(1) = 0 by convention.

The programs for A054015, the canonical program `A054015.P3785762614888052805` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054015 has offset 1).

The definition of A054015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054015.P3785762614888052805

`A048050(n+1)%A325765(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054015

/-- `A048050(n+1)%A325765(n)` -/
def P3785762614888052805.Spec : Prop :=
  ∀ n, P3785762614888052805.a n = A054015 (n + 1)

theorem P3785762614888052805.correct : P3785762614888052805.Spec := by
  intro n
  simp only [A054015, Nat.add_sub_cancel]

end A054015

/-! ## A054015.P16841490360666355890

`(A001065(n+1)-1)%A325765(n)`
-/

namespace A054015.P16841490360666355890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) - 1) (A325765 n)

end

end A054015.P16841490360666355890

namespace A054015

/-- `(A001065(n+1)-1)%A325765(n)` -/
def P16841490360666355890.Spec : Prop :=
  ∀ n, P16841490360666355890.a n = A054015 (n + 1)

end A054015

/-! ## A054015.P783958511278611404

`(A033880(n+1)+n)%A325765(n)`
-/

namespace A054015.P783958511278611404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033880 (n + 1) + (n : ℤ)) (A325765 n)

end

end A054015.P783958511278611404

namespace A054015

/-- `(A033880(n+1)+n)%A325765(n)` -/
def P783958511278611404.Spec : Prop :=
  ∀ n, P783958511278611404.a n = A054015 (n + 1)

end A054015

/-! ## A054015.P16112632207389642424

`(A051709(n+1)+A016035(n+1))%A325765(n)`
-/

namespace A054015.P16112632207389642424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051709 (n + 1) + A016035 (n + 1)) (A325765 n)

end

end A054015.P16112632207389642424

namespace A054015

/-- `(A051709(n+1)+A016035(n+1))%A325765(n)` -/
def P16112632207389642424.Spec : Prop :=
  ∀ n, P16112632207389642424.a n = A054015 (n + 1)

end A054015

/-! ## A054015.P13961901496063013136

`(A339423(n+1)+A333784(n+1))%A325765(n)`
-/

namespace A054015.P13961901496063013136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339423 (n + 1) + A333784 (n + 1)) (A325765 n)

end

end A054015.P13961901496063013136

namespace A054015

/-- `(A339423(n+1)+A333784(n+1))%A325765(n)` -/
def P13961901496063013136.Spec : Prop :=
  ∀ n, P13961901496063013136.a n = A054015 (n + 1)

end A054015

/-!
# A054016: a(n) = smallest nonnegative integer not the Nim sum of at most 4 earlier terms.

The programs for A054016, there is no canonical definition to state claims against.
-/

/-! ## A054016.P4043498305232336877

`∪[A000079(n), A075936(n)]`
-/

namespace A054016.P4043498305232336877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075936 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054016.P4043498305232336877

/-!
# A054017: Chowla's function of n modulo n is a square (excluding 0's).

The programs for A054017, there is no canonical definition to state claims against.
-/

/-! ## A054017.P11524974220780487639

`eq[2, A249111(A054024(n+1))]+1`
-/

namespace A054017.P11524974220780487639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (A054024 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054017.P11524974220780487639

/-!
# A054018: Squares mentioned in A054017.

The programs for A054018, there is no canonical definition to state claims against.
-/

/-! ## A054018.P14584662306283895127

`A054019(n+1)²`
-/

namespace A054018.P14584662306283895127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054019 (n + 1) ^ 2

end

end A054018.P14584662306283895127

/-! ## A054018.P9441623033930905989

`A054019(A000027(n+1))^2`
-/

namespace A054018.P9441623033930905989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054019 (A000027 (n + 1)).toNat ^ 2

end

end A054018.P9441623033930905989

/-! ## A054018.P6891875806378289727

`A054019(n+1)^A002954(gcd(n, n+1))`
-/

namespace A054018.P6891875806378289727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054019 (n + 1) : ℚ) ^ (A002954 (Nat.gcd n (n + 1)) : ℤ)

end

end A054018.P6891875806378289727

/-! ## A054018.P10832952003848059583

`A054019(A000027(n+1))*A054019(n+1)`
-/

namespace A054018.P10832952003848059583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054019 (A000027 (n + 1)).toNat * A054019 (n + 1)

end

end A054018.P10832952003848059583

/-! ## A054018.P6322992298179419146

`A054019(n+1)^A020639(A054002(n+1))`
-/

namespace A054018.P6322992298179419146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054019 (n + 1) : ℚ) ^ (A020639 (A054002 (n + 1)).toNat : ℤ)

end

end A054018.P6322992298179419146

/-! ## A054018.P13525048629324549677

`A279019(A054019(n+1)+5)-A054019(n+1)`
-/

namespace A054018.P13525048629324549677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (A054019 (n + 1) + 5).toNat - A054019 (n + 1)

end

end A054018.P13525048629324549677

/-! ## A054018.P1524588456390785960

`A054019(n+1)^A001221(A035019(A035019(n)))`
-/

namespace A054018.P1524588456390785960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054019 (n + 1) : ℚ) ^ (A001221 (A035019 (A035019 n).toNat).toNat : ℤ)

end

end A054018.P1524588456390785960

/-! ## A054018.P18135600073682230876

`A054019(n+1)^2^A001221(A065079(n+1))`
-/

namespace A054018.P18135600073682230876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054019 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A001221 (A065079 (n + 1)).toNat : ℤ) : ℝ)

end

end A054018.P18135600073682230876

/-! ## A054018.P16645946062374037342

`A054019(n+1)^A020639(A054006(n+1))`
-/

namespace A054018.P16645946062374037342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054019 (n + 1) : ℚ) ^ (A020639 (A054006 (n + 1)).toNat : ℤ)

end

end A054018.P16645946062374037342

/-! ## A054018.P5839870111105265388

`A054024(A054017(n+1))-1`
-/

namespace A054018.P5839870111105265388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A054017 (n + 1)).toNat - 1

end

end A054018.P5839870111105265388

/-! ## A054018.P16225880978381258940

`A054013(A054017(n+1))`
-/

namespace A054018.P16225880978381258940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054013 (A054017 (n + 1)).toNat

end

end A054018.P16225880978381258940

/-!
# A054019: Square roots of A054018.

The programs for A054019, there is no canonical definition to state claims against.
-/

/-! ## A054019.P2133967241377542483

`sqrt(A054018(n+1))`
-/

namespace A054019.P2133967241377542483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054018 (n + 1) : ℝ)

end

end A054019.P2133967241377542483

/-! ## A054019.P16076753135163500905

`root(A054018(n+1), A001316(A001316(n)))`
-/

namespace A054019.P16076753135163500905
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054018 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054019.P16076753135163500905

/-! ## A054019.P5601580632948740857

`root(A054018(n+1), 2%A005276(n+1))`
-/

namespace A054019.P5601580632948740857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054018 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A005276 (n + 1)) : ℝ))

end

end A054019.P5601580632948740857

/-! ## A054019.P14267877071861036110

`A162401(A054018(n+1)%A017128(n))`
-/

namespace A054019.P14267877071861036110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (Int.tmod (A054018 (n + 1)) (A017128 n)).toNat

end

end A054019.P14267877071861036110

/-! ## A054019.P6071241629615491170

`A162401(A054018(n+1))%A017200(n)`
-/

namespace A054019.P6071241629615491170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162401 (A054018 (n + 1)).toNat) (A017200 n)

end

end A054019.P6071241629615491170

/-! ## A054019.P4784051446303355658

`A162401(2*A054018(n+1)-A054018(n+1))`
-/

namespace A054019.P4784051446303355658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (2 * A054018 (n + 1) - A054018 (n + 1)).toNat

end

end A054019.P4784051446303355658

/-! ## A054019.P8378483015593590936

`(A054013(A054017(n+1))^(1/4))²`
-/

namespace A054019.P8378483015593590936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A054013 (A054017 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 4 : ℝ)) ^ 2

end

end A054019.P8378483015593590936

/-! ## A054019.P6607279923055715352

`A000196(A054018(n+1)+1)`
-/

namespace A054019.P6607279923055715352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A054018 (n + 1) + 1).toNat

end

end A054019.P6607279923055715352

/-! ## A054019.P634736810384456971

`A162401(2*A054018(n+1))`
-/

namespace A054019.P634736810384456971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (2 * A054018 (n + 1)).toNat

end

end A054019.P634736810384456971

/-! ## A054019.P727004682650889935

`A002260(2*A054018(n+1))`
-/

namespace A054019.P727004682650889935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A054018 (n + 1)).toNat

end

end A054019.P727004682650889935

/-! ## A054019.P7341211835236760778

`A306646(2*A054018(n+1))`
-/

namespace A054019.P7341211835236760778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (2 * A054018 (n + 1)).toNat

end

end A054019.P7341211835236760778

/-!
# A054020: Chowla's function of n is not divisible by the number of proper divisors of n.

The programs for A054020, the canonical program `A054020.P2226027343435845436` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054020 has offset 1).

The definition of A054020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054020.P2226027343435845436

`lt[1, A054015(n+1)+1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054020

/-- `lt[1, A054015(n+1)+1]+1` -/
def P2226027343435845436.Spec : Prop :=
  ∀ n, (P2226027343435845436.a n : ℤ) = A054020 (n + 1)

theorem P2226027343435845436.correct : P2226027343435845436.Spec := by
  intro n
  simp only [A054020, Nat.add_sub_cancel]

end A054020

/-! ## A054020.P17762977599610049841

`lt[1, A038221(A054015(n+1))]+1`
-/

namespace A054020.P17762977599610049841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 (A054015 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054020.P17762977599610049841

namespace A054020

/-- `lt[1, A038221(A054015(n+1))]+1` -/
def P17762977599610049841.Spec : Prop :=
  ∀ n, (P17762977599610049841.a n : ℤ) = A054020 (n + 1)

end A054020

/-! ## A054020.P8245454852956739685

`A065475(lt[0, A054015(n+1)])`
-/

namespace A054020.P8245454852956739685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054020.P8245454852956739685

namespace A054020

/-- `A065475(lt[0, A054015(n+1)])` -/
def P8245454852956739685.Spec : Prop :=
  ∀ n, P8245454852956739685.a n = A054020 (n + 1)

end A054020

/-! ## A054020.P9853784169883693712

`eq[char[A054021(n+1)], A130706(n)]`
-/

namespace A054020.P9853784169883693712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054020.P9853784169883693712

namespace A054020

/-- `eq[char[A054021(n+1)], A130706(n)]` -/
def P9853784169883693712.Spec : Prop :=
  ∀ n, (P9853784169883693712.a n : ℤ) = A054020 (n + 1)

end A054020

/-! ## A054020.P731129232476909968

`eq[char[A054021(n+1)], A130779(n)]`
-/

namespace A054020.P731129232476909968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054020.P731129232476909968

namespace A054020

/-- `eq[char[A054021(n+1)], A130779(n)]` -/
def P731129232476909968.Spec : Prop :=
  ∀ n, (P731129232476909968.a n : ℤ) = A054020 (n + 1)

end A054020

/-! ## A054020.P9876222941741381558

`eq[char[A054021(n+1)], A019590(n+1)]`
-/

namespace A054020.P9876222941741381558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054020.P9876222941741381558

namespace A054020

/-- `eq[char[A054021(n+1)], A019590(n+1)]` -/
def P9876222941741381558.Spec : Prop :=
  ∀ n, (P9876222941741381558.a n : ℤ) = A054020 (n + 1)

end A054020

/-! ## A054020.P6743331459955113719

`lt[0, A054015(A233583(n+1))]`
-/

namespace A054020.P6743331459955113719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054020.P6743331459955113719

namespace A054020

/-- `lt[0, A054015(A233583(n+1))]` -/
def P6743331459955113719.Spec : Prop :=
  ∀ n, (P6743331459955113719.a n : ℤ) = A054020 (n + 1)

end A054020

/-!
# A054021: Numbers n such that Chowla's function of n is divisible by the number of proper divisors of n.

The programs for A054021, the canonical program `A054021.P6429758712637015010` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054021 has offset 1).

The definition of A054021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054021.P6429758712637015010

`eq[0, A054015(n+2)]+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054021

/-- `eq[0, A054015(n+2)]+2` -/
def P6429758712637015010.Spec : Prop :=
  ∀ n, (P6429758712637015010.a n : ℤ) = A054021 (n + 1)

theorem P6429758712637015010.correct : P6429758712637015010.Spec := by
  intro n
  simp only [A054021, Nat.add_sub_cancel]

end A054021

/-! ## A054021.P13376829387418745568

`record[gcd(A020725(n+1), A054015(n+2))]`
-/

namespace A054021.P13376829387418745568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A054015 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054021.P13376829387418745568

namespace A054021

/-- `record[gcd(A020725(n+1), A054015(n+2))]` -/
def P13376829387418745568.Spec : Prop :=
  ∀ n, (P13376829387418745568.a n : ℤ) = A054021 (n + 1)

end A054021

/-! ## A054021.P11838203979721393751

`lt[A054015(n+1), A057427(n)]+1`
-/

namespace A054021.P11838203979721393751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054021.P11838203979721393751

namespace A054021

/-- `lt[A054015(n+1), A057427(n)]+1` -/
def P11838203979721393751.Spec : Prop :=
  ∀ n, (P11838203979721393751.a n : ℤ) = A054021 (n + 1)

end A054021

/-! ## A054021.P16543045835599801001

`record[gcd(A054015(n+1), A181440(n+1))]`
-/

namespace A054021.P16543045835599801001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054015 (n + 1)) (A181440 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054021.P16543045835599801001

namespace A054021

/-- `record[gcd(A054015(n+1), A181440(n+1))]` -/
def P16543045835599801001.Spec : Prop :=
  ∀ n, (P16543045835599801001.a n : ℤ) = A054021 (n + 1)

end A054021

/-! ## A054021.P14399898375095155517

`eq[char[A054020(n+1)], A019590(n+1)]`
-/

namespace A054021.P14399898375095155517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054021.P14399898375095155517

namespace A054021

/-- `eq[char[A054020(n+1)], A019590(n+1)]` -/
def P14399898375095155517.Spec : Prop :=
  ∀ n, (P14399898375095155517.a n : ℤ) = A054021 (n + 1)

end A054021

/-! ## A054021.P6161367766970251466

`eq[A054015(A028310(n)), A130706(n)]`
-/

namespace A054021.P6161367766970251466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054021.P6161367766970251466

namespace A054021

/-- `eq[A054015(A028310(n)), A130706(n)]` -/
def P6161367766970251466.Spec : Prop :=
  ∀ n, (P6161367766970251466.a n : ℤ) = A054021 (n + 1)

end A054021

/-!
# A054022: Chowla function of n is divisible by the number of divisors of n.

The programs for A054022, the canonical program `A054022.P4308669514195259819` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054022 has offset 1).

The definition of A054022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054022.P627801316437750336

`eq[0, A054014(n+1)]+1`
-/

namespace A054022.P627801316437750336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054022.P627801316437750336

namespace A054022

/-- `eq[0, A054014(n+1)]+1` -/
def P627801316437750336.Spec : Prop :=
  ∀ n, (P627801316437750336.a n : ℤ) = A054022 (n + 1)

end A054022

/-! ## A054022.P5535548809458118173

`record[gcd(A000027(n+1), A054014(n+1))]`
-/

namespace A054022.P5535548809458118173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A054014 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054022.P5535548809458118173

namespace A054022

/-- `record[gcd(A000027(n+1), A054014(n+1))]` -/
def P5535548809458118173.Spec : Prop :=
  ∀ n, (P5535548809458118173.a n : ℤ) = A054022 (n + 1)

end A054022

/-! ## A054022.P4308669514195259819

`record[gcd(n+1, A123108(A160550(n+1)))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054022

/-- `record[gcd(n+1, A123108(A160550(n+1)))]` -/
def P4308669514195259819.Spec : Prop :=
  ∀ n, (P4308669514195259819.a n : ℤ) = A054022 (n + 1)

theorem P4308669514195259819.correct : P4308669514195259819.Spec := by
  intro n
  simp only [A054022, Nat.add_sub_cancel]

end A054022

/-! ## A054022.P16592126240900537245

`eq[A057427(n), A160550(n+1)]+1`
-/

namespace A054022.P16592126240900537245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054022.P16592126240900537245

namespace A054022

/-- `eq[A057427(n), A160550(n+1)]+1` -/
def P16592126240900537245.Spec : Prop :=
  ∀ n, (P16592126240900537245.a n : ℤ) = A054022 (n + 1)

end A054022

/-! ## A054022.P1066094756281179449

`eq[A000007(n), A054014(A028310(n))]`
-/

namespace A054022.P1066094756281179449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054022.P1066094756281179449

namespace A054022

/-- `eq[A000007(n), A054014(A028310(n))]` -/
def P1066094756281179449.Spec : Prop :=
  ∀ n, (P1066094756281179449.a n : ℤ) = A054022 (n + 1)

end A054022

/-! ## A054022.P18284526233038441456

`eq[A000038(n), A054014(A028310(n))]`
-/

namespace A054022.P18284526233038441456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054022.P18284526233038441456

namespace A054022

/-- `eq[A000038(n), A054014(A028310(n))]` -/
def P18284526233038441456.Spec : Prop :=
  ∀ n, (P18284526233038441456.a n : ℤ) = A054022 (n + 1)

end A054022

/-! ## A054022.P5216245467373061984

`eq[A057427(n), A160550(A233583(n+1))]`
-/

namespace A054022.P5216245467373061984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054022.P5216245467373061984

namespace A054022

/-- `eq[A057427(n), A160550(A233583(n+1))]` -/
def P5216245467373061984.Spec : Prop :=
  ∀ n, (P5216245467373061984.a n : ℤ) = A054022 (n + 1)

end A054022

/-!
# A054023: Chowla function of n is not divisible by the number of divisors of n.

The programs for A054023, the canonical program `A054023.P16419217150835548806` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054023 has offset 1).

The definition of A054023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054023.P16419217150835548806

`comp[A054022(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054023

/-- `comp[A054022(n+1)-1]+1` -/
def P16419217150835548806.Spec : Prop :=
  ∀ n, (P16419217150835548806.a n : ℤ) = A054023 (n + 1)

theorem P16419217150835548806.correct : P16419217150835548806.Spec := by
  intro n
  simp only [A054023, Nat.add_sub_cancel]

end A054023

/-! ## A054023.P15248623002450682535

`lt[1, A054014(n+1)+1]+1`
-/

namespace A054023.P15248623002450682535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054023.P15248623002450682535

namespace A054023

/-- `lt[1, A054014(n+1)+1]+1` -/
def P15248623002450682535.Spec : Prop :=
  ∀ n, (P15248623002450682535.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P15308455039538063452

`lt[1, A038221(A054014(n+1))]+1`
-/

namespace A054023.P15308455039538063452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 (A054014 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054023.P15308455039538063452

namespace A054023

/-- `lt[1, A038221(A054014(n+1))]+1` -/
def P15308455039538063452.Spec : Prop :=
  ∀ n, (P15308455039538063452.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P16259388923238297331

`A020725(comp[A054022(n+1)-1])`
-/

namespace A054023.P16259388923238297331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A054023.P16259388923238297331

namespace A054023

/-- `A020725(comp[A054022(n+1)-1])` -/
def P16259388923238297331.Spec : Prop :=
  ∀ n, P16259388923238297331.a n = A054023 (n + 1)

end A054023

/-! ## A054023.P4625809016708948889

`eq[char[A054022(n+1)], A000007(n)]`
-/

namespace A054023.P4625809016708948889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054023.P4625809016708948889

namespace A054023

/-- `eq[char[A054022(n+1)], A000007(n)]` -/
def P4625809016708948889.Spec : Prop :=
  ∀ n, (P4625809016708948889.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P1272159880371435980

`eq[char[A054022(n+1)], A000038(n)]`
-/

namespace A054023.P1272159880371435980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054023.P1272159880371435980

namespace A054023

/-- `eq[char[A054022(n+1)], A000038(n)]` -/
def P1272159880371435980.Spec : Prop :=
  ∀ n, (P1272159880371435980.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P1110079852273515928

`eq[char[A054022(n+1)], A154955(n+1)]`
-/

namespace A054023.P1110079852273515928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054023.P1110079852273515928

namespace A054023

/-- `eq[char[A054022(n+1)], A154955(n+1)]` -/
def P1110079852273515928.Spec : Prop :=
  ∀ n, (P1110079852273515928.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P14234054319940134581

`eq[char[A054022(n+1)], A266220(2*n)]`
-/

namespace A054023.P14234054319940134581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A054023.P14234054319940134581

namespace A054023

/-- `eq[char[A054022(n+1)], A266220(2*n)]` -/
def P14234054319940134581.Spec : Prop :=
  ∀ n, (P14234054319940134581.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P8681697130966722408

`eq[A060546(n)%2, char[A054022(n+1)]]`
-/

namespace A054023.P8681697130966722408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060546 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A054023.P8681697130966722408

namespace A054023

/-- `eq[A060546(n)%2, char[A054022(n+1)]]` -/
def P8681697130966722408.Spec : Prop :=
  ∀ n, (P8681697130966722408.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P10650557871925167125

`eq[A125176(n+1)%4, char[A054022(n+1)]]`
-/

namespace A054023.P10650557871925167125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125176 (n + 1)) 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A054023.P10650557871925167125

namespace A054023

/-- `eq[A125176(n+1)%4, char[A054022(n+1)]]` -/
def P10650557871925167125.Spec : Prop :=
  ∀ n, (P10650557871925167125.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P15890037927605687354

`eq[A048487(n)%2, char[A054022(n+1)]]`
-/

namespace A054023.P15890037927605687354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048487 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A054023.P15890037927605687354

namespace A054023

/-- `eq[A048487(n)%2, char[A054022(n+1)]]` -/
def P15890037927605687354.Spec : Prop :=
  ∀ n, (P15890037927605687354.a n : ℤ) = A054023 (n + 1)

end A054023

/-! ## A054023.P9151580118646778599

`eq[A080040(n)%4, char[A054022(n+1)]]`
-/

namespace A054023.P9151580118646778599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080040 n) 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A054023.P9151580118646778599

namespace A054023

/-- `eq[A080040(n)%4, char[A054022(n+1)]]` -/
def P9151580118646778599.Spec : Prop :=
  ∀ n, (P9151580118646778599.a n : ℤ) = A054023 (n + 1)

end A054023

/-!
# A054024: Sum of the divisors of n reduced modulo n.

The programs for A054024, the canonical program `A054024.P14697700186009188705` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054024 has offset 1).

The definition of A054024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054024.P14697700186009188705

`∑{d}[n+1, #]%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054024

/-- `∑{d}[n+1, #]%(n+1)` -/
def P14697700186009188705.Spec : Prop :=
  ∀ n, (P14697700186009188705.a n : ℤ) = A054024 (n + 1)

theorem P14697700186009188705.correct : P14697700186009188705.Spec := by
  intro n
  simp only [A054024, Nat.add_sub_cancel]

end A054024

/-! ## A054024.P1126875499693768025

`Δ[A160664(n)]%(n+1)`
-/

namespace A054024.P1126875499693768025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A054024.P1126875499693768025

namespace A054024

/-- `Δ[A160664(n)]%(n+1)` -/
def P1126875499693768025.Spec : Prop :=
  ∀ n, P1126875499693768025.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P118057642486655144

`A000203(n+1)%(n+1)`
-/

namespace A054024.P118057642486655144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)

end

end A054024.P118057642486655144

namespace A054024

/-- `A000203(n+1)%(n+1)` -/
def P118057642486655144.Spec : Prop :=
  ∀ n, P118057642486655144.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P2267436475425057231

`A001065(n+1)%(n+1)`
-/

namespace A054024.P2267436475425057231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (n + 1 : ℤ)

end

end A054024.P2267436475425057231

namespace A054024

/-- `A001065(n+1)%(n+1)` -/
def P2267436475425057231.Spec : Prop :=
  ∀ n, P2267436475425057231.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P10558039362048962552

`A152211(n+1)%(n+1)`
-/

namespace A054024.P10558039362048962552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (n + 1 : ℤ)

end

end A054024.P10558039362048962552

namespace A054024

/-- `A152211(n+1)%(n+1)` -/
def P10558039362048962552.Spec : Prop :=
  ∀ n, P10558039362048962552.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P8150158670739764958

`A155085(n+1)%(n+1)`
-/

namespace A054024.P8150158670739764958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1)) (n + 1 : ℤ)

end

end A054024.P8150158670739764958

namespace A054024

/-- `A155085(n+1)%(n+1)` -/
def P8150158670739764958.Spec : Prop :=
  ∀ n, P8150158670739764958.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P358301937295308994

`A173455(n+1)%(n+1)`
-/

namespace A054024.P358301937295308994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (n + 1)) (n + 1 : ℤ)

end

end A054024.P358301937295308994

namespace A054024

/-- `A173455(n+1)%(n+1)` -/
def P358301937295308994.Spec : Prop :=
  ∀ n, P358301937295308994.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P3492868444918437251

`A224880(n+1)%(n+1)`
-/

namespace A054024.P3492868444918437251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224880 (n + 1)) (n + 1 : ℤ)

end

end A054024.P3492868444918437251

namespace A054024

/-- `A224880(n+1)%(n+1)` -/
def P3492868444918437251.Spec : Prop :=
  ∀ n, P3492868444918437251.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P15525111575298446674

`A331503(n+1)%(n+1)`
-/

namespace A054024.P15525111575298446674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331503 (n + 1)) (n + 1 : ℤ)

end

end A054024.P15525111575298446674

namespace A054024

/-- `A331503(n+1)%(n+1)` -/
def P15525111575298446674.Spec : Prop :=
  ∀ n, P15525111575298446674.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P2543927382548301620

`A344483(n+1)%(n+1)`
-/

namespace A054024.P2543927382548301620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344483 (n + 1)) (n + 1 : ℤ)

end

end A054024.P2543927382548301620

namespace A054024

/-- `A344483(n+1)%(n+1)` -/
def P2543927382548301620.Spec : Prop :=
  ∀ n, P2543927382548301620.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P3166629281544203403

`A245092(2*n+1)%(n+1)`
-/

namespace A054024.P3166629281544203403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) (n + 1 : ℤ)

end

end A054024.P3166629281544203403

namespace A054024

/-- `A245092(2*n+1)%(n+1)` -/
def P3166629281544203403.Spec : Prop :=
  ∀ n, P3166629281544203403.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P965980203269958203

`(A064987(n+1)/(n+1))%(n+1)`
-/

namespace A054024.P965980203269958203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A054024.P965980203269958203

namespace A054024

/-- `(A064987(n+1)/(n+1))%(n+1)` -/
def P965980203269958203.Spec : Prop :=
  ∀ n, P965980203269958203.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P14010161060920207465

`A229110(n+1)+A229087(n+1)`
-/

namespace A054024.P14010161060920207465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1) + A229087 (n + 1)

end

end A054024.P14010161060920207465

namespace A054024

/-- `A229110(n+1)+A229087(n+1)` -/
def P14010161060920207465.Spec : Prop :=
  ∀ n, P14010161060920207465.a n = A054024 (n + 1)

theorem P14010161060920207465.correct : P14010161060920207465.Spec := by
  intro n
  simp only [A054024, Nat.add_sub_cancel, A054024.P14010161060920207465.a, A054024.P14697700186009188705.f1, A054024.P14697700186009188705.a, A229087, A229087.P10345629012060209210.a, A229110, A229110.P15608465638728388115.f1, A229110.P15608465638728388115.f2, A229110.P15608465638728388115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054024

/-! ## A054024.P2505794612015823086

`A009194(n+1)*A272008(n+1)`
-/

namespace A054024.P2505794612015823086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A272008 (n + 1)

end

end A054024.P2505794612015823086

namespace A054024

/-- `A009194(n+1)*A272008(n+1)` -/
def P2505794612015823086.Spec : Prop :=
  ∀ n, P2505794612015823086.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P9975415586179495130

`(A000217(n+1)-A024816(n+1))%(n+1)`
-/

namespace A054024.P9975415586179495130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1) - A024816 (n + 1)) (n + 1 : ℤ)

end

end A054024.P9975415586179495130

namespace A054024

/-- `(A000217(n+1)-A024816(n+1))%(n+1)` -/
def P9975415586179495130.Spec : Prop :=
  ∀ n, P9975415586179495130.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P8479532700687726106

`∑{d}[n+1, A008683(#)*A300657((n+1)/#)]`
-/

namespace A054024.P8479532700687726106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A300657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054024.P8479532700687726106

namespace A054024

/-- `∑{d}[n+1, A008683(#)*A300657((n+1)/#)]` -/
def P8479532700687726106.Spec : Prop :=
  ∀ n, P8479532700687726106.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P7490109446768308750

`A000203(n+1)/A017665(n+1)*A272008(n+1)`
-/

namespace A054024.P7490109446768308750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ) * (A272008 (n + 1) : ℚ)

end

end A054024.P7490109446768308750

namespace A054024

/-- `A000203(n+1)/A017665(n+1)*A272008(n+1)` -/
def P7490109446768308750.Spec : Prop :=
  ∀ n, P7490109446768308750.a n = (A054024 (n + 1) : ℚ)

end A054024

/-! ## A054024.P10153038995278732917

`A242480(n+1)-(A229110(n+1)+A142150(n+1))`
-/

namespace A054024.P10153038995278732917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1) - (A229110 (n + 1) + A142150 (n + 1))

end

end A054024.P10153038995278732917

namespace A054024

/-- `A242480(n+1)-(A229110(n+1)+A142150(n+1))` -/
def P10153038995278732917.Spec : Prop :=
  ∀ n, P10153038995278732917.a n = A054024 (n + 1)

theorem P10153038995278732917.correct : P10153038995278732917.Spec := by
  intro n
  simp only [A054024, Nat.add_sub_cancel, A054024.P10153038995278732917.a, A054024.P14697700186009188705.f1, A054024.P14697700186009188705.a, A142150, A142150.P17187063318547882225.a, A229110, A229110.P15608465638728388115.f1, A229110.P15608465638728388115.f2, A229110.P15608465638728388115.a, A242480, A242480.P3191042440145874501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054024

/-! ## A054024.P6641703048146264856

`A319699(2*(n+1))%(n+1)`
-/

namespace A054024.P6641703048146264856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319699 (2 * (n + 1))) (n + 1 : ℤ)

end

end A054024.P6641703048146264856

namespace A054024

/-- `A319699(2*(n+1))%(n+1)` -/
def P6641703048146264856.Spec : Prop :=
  ∀ n, P6641703048146264856.a n = A054024 (n + 1)

end A054024

/-! ## A054024.P17603122912810298880

`A326065(2*(n+1))%(n+1)`
-/

namespace A054024.P17603122912810298880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326065 (2 * (n + 1))) (n + 1 : ℤ)

end

end A054024.P17603122912810298880

namespace A054024

/-- `A326065(2*(n+1))%(n+1)` -/
def P17603122912810298880.Spec : Prop :=
  ∀ n, P17603122912810298880.a n = A054024 (n + 1)

end A054024

/-!
# A054025: Sum of divisors of n read modulo (number of divisors of n).

The programs for A054025, the canonical program `A054025.P2987269555578071389` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054025 has offset 1).

The definition of A054025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054025.P2987269555578071389

`∑{d}[n+1, #]%∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054025

/-- `∑{d}[n+1, #]%∏{e}[n+1, #+1]` -/
def P2987269555578071389.Spec : Prop :=
  ∀ n, (P2987269555578071389.a n : ℤ) = A054025 (n + 1)

theorem P2987269555578071389.correct : P2987269555578071389.Spec := by
  intro n
  simp only [A054025, Nat.add_sub_cancel]

end A054025

/-! ## A054025.P4856009878027311034

`∑{d}[n+1, #]%Δ[A006218(n)]`
-/

namespace A054025.P4856009878027311034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A054025.P4856009878027311034

namespace A054025

/-- `∑{d}[n+1, #]%Δ[A006218(n)]` -/
def P4856009878027311034.Spec : Prop :=
  ∀ n, P4856009878027311034.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P2404398812801931012

`A000203(n+1)%∏{e}[n+1, #+1]`
-/

namespace A054025.P2404398812801931012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A054025.P2404398812801931012

namespace A054025

/-- `A000203(n+1)%∏{e}[n+1, #+1]` -/
def P2404398812801931012.Spec : Prop :=
  ∀ n, P2404398812801931012.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P8289212622227342091

`A000027(∑{d}[n+1, #])%∑{d}[n+1, ceil(1/#)]`
-/

namespace A054025.P8289212622227342091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∑ d ∈ Nat.divisors (f1 n), d)) (∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉)

end

end A054025.P8289212622227342091

namespace A054025

/-- `A000027(∑{d}[n+1, #])%∑{d}[n+1, ceil(1/#)]` -/
def P8289212622227342091.Spec : Prop :=
  ∀ n, P8289212622227342091.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P11012946337985295024

`Δ[A160664(n)]%Δ[A006218(n)]`
-/

namespace A054025.P11012946337985295024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A054025.P11012946337985295024

namespace A054025

/-- `Δ[A160664(n)]%Δ[A006218(n)]` -/
def P11012946337985295024.Spec : Prop :=
  ∀ n, P11012946337985295024.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P17357885235462902359

`A000203(n+1)%Δ[A006218(n)]`
-/

namespace A054025.P17357885235462902359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (f1 (n + 1) - f1 n)

end

end A054025.P17357885235462902359

namespace A054025

/-- `A000203(n+1)%Δ[A006218(n)]` -/
def P17357885235462902359.Spec : Prop :=
  ∀ n, P17357885235462902359.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P7289042700028405191

`A007503(n+1)%A000005(n+1)`
-/

namespace A054025.P7289042700028405191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007503 (n + 1)) (A000005 (n + 1))

end

end A054025.P7289042700028405191

namespace A054025

/-- `A007503(n+1)%A000005(n+1)` -/
def P7289042700028405191.Spec : Prop :=
  ∀ n, P7289042700028405191.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P9367197710283742862

`A065608(n+1)%A000005(n+1)`
-/

namespace A054025.P9367197710283742862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065608 (n + 1)) (A000005 (n + 1))

end

end A054025.P9367197710283742862

namespace A054025

/-- `A065608(n+1)%A000005(n+1)` -/
def P9367197710283742862.Spec : Prop :=
  ∀ n, P9367197710283742862.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P6614245246933932202

`A152211(n+1)%A000005(n+1)`
-/

namespace A054025.P6614245246933932202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (A000005 (n + 1))

end

end A054025.P6614245246933932202

namespace A054025

/-- `A152211(n+1)%A000005(n+1)` -/
def P6614245246933932202.Spec : Prop :=
  ∀ n, P6614245246933932202.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P12549193775398079789

`A162664(n+1)%A000005(n+1)`
-/

namespace A054025.P12549193775398079789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162664 (n + 1)) (A000005 (n + 1))

end

end A054025.P12549193775398079789

namespace A054025

/-- `A162664(n+1)%A000005(n+1)` -/
def P12549193775398079789.Spec : Prop :=
  ∀ n, P12549193775398079789.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P12604498264867567197

`A337360(n+1)%A000005(n+1)`
-/

namespace A054025.P12604498264867567197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337360 (n + 1)) (A000005 (n + 1))

end

end A054025.P12604498264867567197

namespace A054025

/-- `A337360(n+1)%A000005(n+1)` -/
def P12604498264867567197.Spec : Prop :=
  ∀ n, P12604498264867567197.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P3806610723283296557

`A245092(2*n+1)%A000005(n+1)`
-/

namespace A054025.P3806610723283296557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) (A000005 (n + 1))

end

end A054025.P3806610723283296557

namespace A054025

/-- `A245092(2*n+1)%A000005(n+1)` -/
def P3806610723283296557.Spec : Prop :=
  ∀ n, P3806610723283296557.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P7847086482635103593

`A000203(n+1)-A000005(n+1)*A057022(n+1)`
-/

namespace A054025.P7847086482635103593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1) * A057022 (n + 1)

end

end A054025.P7847086482635103593

namespace A054025

/-- `A000203(n+1)-A000005(n+1)*A057022(n+1)` -/
def P7847086482635103593.Spec : Prop :=
  ∀ n, P7847086482635103593.a n = A054025 (n + 1)

end A054025

/-! ## A054025.P6906005474185595408

`A000203(A000027(n+1))%∑{d}[n+1, A057427(#)]`
-/

namespace A054025.P6906005474185595408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000027 (n + 1)).toNat) (∑ d ∈ Nat.divisors (f1 n), A057427 d)

end

end A054025.P6906005474185595408

namespace A054025

/-- `A000203(A000027(n+1))%∑{d}[n+1, A057427(#)]` -/
def P6906005474185595408.Spec : Prop :=
  ∀ n, P6906005474185595408.a n = A054025 (n + 1)

end A054025

/-!
# A054026: a(n) is the number of sets of natural numbers [a,b,c,d,e] that can be produced with the numbers [0..n] such that the values of all the distinct parenthesized expressions of a-b-c-d-e are different.

The programs for A054026, the canonical program `A054026.P17397020349350568082` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054026 has offset 0).

The definition of A054026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054026.P17397020349350568082

`(1+n)²*(3*(-1)^n+4*n^3-18*n²+20*n-3)/4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054026

/-- `(1+n)²*(3*(-1)^n+4*n^3-18*n²+20*n-3)/4` -/
def P17397020349350568082.Spec : Prop :=
  ∀ n, P17397020349350568082.a n = (A054026 n : ℚ)

end A054026

/-! ## A054026.P18075343754006997405

`A073988(A052320(n)+1)`
-/

namespace A054026.P18075343754006997405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073988 (A052320 n + 1).toNat

end

end A054026.P18075343754006997405

namespace A054026

/-- `A073988(A052320(n)+1)` -/
def P18075343754006997405.Spec : Prop :=
  ∀ n, P18075343754006997405.a n = A054026 n

end A054026

/-!
# A054027: Numbers that do not divide their sum of divisors.

The programs for A054027, the canonical program `A054027.P14691217397559208443` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054027 has offset 1).

The definition of A054027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054027.P8626393151002502898

`comp[C(A325633(n+1), n)]`
-/

namespace A054027.P8626393151002502898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325633 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A054027.P8626393151002502898

namespace A054027

/-- `comp[C(A325633(n+1), n)]` -/
def P8626393151002502898.Spec : Prop :=
  ∀ n, (P8626393151002502898.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P14691217397559208443

`lt[0, A054024(n+1)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054027

/-- `lt[0, A054024(n+1)]+1` -/
def P14691217397559208443.Spec : Prop :=
  ∀ n, (P14691217397559208443.a n : ℤ) = A054027 (n + 1)

theorem P14691217397559208443.correct : P14691217397559208443.Spec := by
  intro n
  simp only [A054027, Nat.add_sub_cancel]

end A054027

/-! ## A054027.P13097492887196985546

`lt[1, A071862(n+1)]+1`
-/

namespace A054027.P13097492887196985546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054027.P13097492887196985546

namespace A054027

/-- `lt[1, A071862(n+1)]+1` -/
def P13097492887196985546.Spec : Prop :=
  ∀ n, (P13097492887196985546.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P3778709716189572911

`comp[A007691(n+1)-1]+1`
-/

namespace A054027.P3778709716189572911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054027.P3778709716189572911

namespace A054027

/-- `comp[A007691(n+1)-1]+1` -/
def P3778709716189572911.Spec : Prop :=
  ∀ n, (P3778709716189572911.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P2697646682998137633

`lt[A325470(n+1), n+1]+1`
-/

namespace A054027.P2697646682998137633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054027.P2697646682998137633

namespace A054027

/-- `lt[A325470(n+1), n+1]+1` -/
def P2697646682998137633.Spec : Prop :=
  ∀ n, (P2697646682998137633.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P15545099653661863147

`eq[1, A016099(a(A272008(n)))]` with `a(0)=2`
-/

namespace A054027.P15545099653661863147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A016099 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P15545099653661863147

namespace A054027

/-- `eq[1, A016099(a(A272008(n)))]` -/
def P15545099653661863147.Spec : Prop :=
  ∀ n, (P15545099653661863147.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P321452900417667775

`eq[1, A270702(a(A272008(n)))]` with `a(0)=2`
-/

namespace A054027.P321452900417667775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A270702 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P321452900417667775

namespace A054027

/-- `eq[1, A270702(a(A272008(n)))]` -/
def P321452900417667775.Spec : Prop :=
  ∀ n, (P321452900417667775.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P6371842565015312889

`eq[1, A000010(a(A272008(n)))]` with `a(0)=3`
-/

namespace A054027.P6371842565015312889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P6371842565015312889

namespace A054027

/-- `eq[1, A000010(a(A272008(n)))]` -/
def P6371842565015312889.Spec : Prop :=
  ∀ n, (P6371842565015312889.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P2137391492205627287

`eq[1, A318874(a(A272008(n)))]` with `a(0)=3`
-/

namespace A054027.P2137391492205627287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A318874 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P2137391492205627287

namespace A054027

/-- `eq[1, A318874(a(A272008(n)))]` -/
def P2137391492205627287.Spec : Prop :=
  ∀ n, (P2137391492205627287.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P767305252949848603

`eq[1, A270701(a(A272008(n)))]` with `a(0)=4`
-/

namespace A054027.P767305252949848603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A270701 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P767305252949848603

namespace A054027

/-- `eq[1, A270701(a(A272008(n)))]` -/
def P767305252949848603.Spec : Prop :=
  ∀ n, (P767305252949848603.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P6642702434493235088

`eq[1, A000045(a(A272008(n)))!]` with `a(0)=3`
-/

namespace A054027.P6642702434493235088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  Nat.factorial (A000045 (f2 (A272008 n).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054027.P6642702434493235088

namespace A054027

/-- `eq[1, A000045(a(A272008(n)))!]` -/
def P6642702434493235088.Spec : Prop :=
  ∀ n, (P6642702434493235088.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P17803582772858291939

`eq[1, A190152(a(A272008(n)))]` with `a(0)=4, a(1)=3, a(2)=1`
-/

namespace A054027.P17803582772858291939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 1] fun n f2 =>
  A190152 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P17803582772858291939

namespace A054027

/-- `eq[1, A190152(a(A272008(n)))]` -/
def P17803582772858291939.Spec : Prop :=
  ∀ n, (P17803582772858291939.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P10789431474128887596

`eq[1, A190171(a(A272008(n)))]` with `a(0)=4, a(1)=3, a(2)=1`
-/

namespace A054027.P10789431474128887596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 1] fun n f2 =>
  A190171 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P10789431474128887596

namespace A054027

/-- `eq[1, A190171(a(A272008(n)))]` -/
def P10789431474128887596.Spec : Prop :=
  ∀ n, (P10789431474128887596.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P17842303010746417111

`eq[1, A190159(a(A272008(n)))]` with `a(0)=5, a(1)=3, a(2)=1`
-/

namespace A054027.P17842303010746417111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 1] fun n f2 =>
  A190159 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P17842303010746417111

namespace A054027

/-- `eq[1, A190159(a(A272008(n)))]` -/
def P17842303010746417111.Spec : Prop :=
  ∀ n, (P17842303010746417111.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P16034044556832189461

`eq[1, A190168(a(A272008(n)))]` with `a(0)=5, a(1)=3, a(2)=1`
-/

namespace A054027.P16034044556832189461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 1] fun n f2 =>
  A190168 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P16034044556832189461

namespace A054027

/-- `eq[1, A190168(a(A272008(n)))]` -/
def P16034044556832189461.Spec : Prop :=
  ∀ n, (P16034044556832189461.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P16389733484963697143

`eq[1, 1-A131852(a(A272008(n)))]` with `a(0)=3`
-/

namespace A054027.P16389733484963697143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  1 - A131852 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054027.P16389733484963697143

namespace A054027

/-- `eq[1, 1-A131852(a(A272008(n)))]` -/
def P16389733484963697143.Spec : Prop :=
  ∀ n, (P16389733484963697143.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P8466259537566890746

`eq[1, 3^A004247(a(A054024(n)))]` with `a(0)=4`
-/

namespace A054027.P8466259537566890746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f2 =>
  (3 : ℚ) ^ (A004247 (SequenceMachineLib.roundAway (f2 (A054024 n).toNat)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A054027.P8466259537566890746

namespace A054027

/-- `eq[1, 3^A004247(a(A054024(n)))]` -/
def P8466259537566890746.Spec : Prop :=
  ∀ n, (P8466259537566890746.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P10886934374739583614

`eq[1, 3^A004248(a(A054024(n)))]` with `a(0)=4`
-/

namespace A054027.P10886934374739583614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f2 =>
  (3 : ℚ) ^ (A004248 (SequenceMachineLib.roundAway (f2 (A054024 n).toNat)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A054027.P10886934374739583614

namespace A054027

/-- `eq[1, 3^A004248(a(A054024(n)))]` -/
def P10886934374739583614.Spec : Prop :=
  ∀ n, (P10886934374739583614.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P820789981745534700

`eq[1, 3^A102037(a(A054024(n)))]` with `a(0)=4`
-/

namespace A054027.P820789981745534700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f2 =>
  (3 : ℚ) ^ (A102037 (SequenceMachineLib.roundAway (f2 (A054024 n).toNat)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A054027.P820789981745534700

namespace A054027

/-- `eq[1, 3^A102037(a(A054024(n)))]` -/
def P820789981745534700.Spec : Prop :=
  ∀ n, (P820789981745534700.a n : ℤ) = A054027 (n + 1)

end A054027

/-! ## A054027.P16642504137845080212

`lt[1, A000203(A000203(n+1)%(n+1)+1)]+1`
-/

namespace A054027.P16642504137845080212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A000203 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054027.P16642504137845080212

namespace A054027

/-- `lt[1, A000203(A000203(n+1)%(n+1)+1)]+1` -/
def P16642504137845080212.Spec : Prop :=
  ∀ n, (P16642504137845080212.a n : ℤ) = A054027 (n + 1)

end A054027

/-!
# A054028: a(n) = first k such that 2^k >= k^n, (for n >= 2, k >= 2).

The programs for A054028, there is no canonical definition to state claims against.
-/

/-! ## A054028.P5095039927683632591

`∑[A054029(n+1)]`
-/

namespace A054028.P5095039927683632591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054028.P5095039927683632591

/-! ## A054028.P6425123404571265539

`A028310(a(n-1))+A054029(n+1)` with `a(0)=2`
-/

namespace A054028.P6425123404571265539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A028310 (a (n - 1)).toNat + A054029 (n + 1)

end

end A054028.P6425123404571265539

/-! ## A054028.P14967669114933295925

`A129761(A118038(n))+A016993(n)`
-/

namespace A054028.P14967669114933295925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A118038 n).toNat + A016993 n

end

end A054028.P14967669114933295925

/-! ## A054028.P1010051578484952243

`A328047(A017005(n))+A084929(n+1)`
-/

namespace A054028.P1010051578484952243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328047 (A017005 n).toNat + A084929 (n + 1)

end

end A054028.P1010051578484952243

/-! ## A054028.P12932033640329574285

`A016993(n)+A001511(A316210(2*(n+1)))`
-/

namespace A054028.P12932033640329574285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + A001511 (A316210 (2 * (n + 1))).toNat

end

end A054028.P12932033640329574285

/-!
# A054030: Sigma(n)/n for n such that sigma(n) is divisible by n.

The programs for A054030, there is no canonical definition to state claims against.
-/

/-! ## A054030.P5589811372798055854

`A307741(n+1)/A007691(n+1)`
-/

namespace A054030.P5589811372798055854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 1) : ℚ) / (A007691 (n + 1) : ℚ)

end

end A054030.P5589811372798055854

/-! ## A054030.P11327383445372141097

`A307741(n+1)/lcm(A098204(n+1), A320024(n+1))`
-/

namespace A054030.P11327383445372141097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 1) : ℚ) / (Int.lcm (A098204 (n + 1)) (A320024 (n + 1)) : ℚ)

end

end A054030.P11327383445372141097

/-! ## A054030.P15146639725568446581

`A307741(n+1)/∪[A166069(n+1), A325025(n+1)]`
-/

namespace A054030.P15146639725568446581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A054030.P15146639725568446581

/-! ## A054030.P420920873887407006

`A307741(n+1)/(A000079(A134665(n+1))*A320024(n+1))`
-/

namespace A054030.P420920873887407006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 1) : ℚ) / (A000079 (A134665 (n + 1)).toNat * A320024 (n + 1) : ℚ)

end

end A054030.P420920873887407006

/-! ## A054030.P16320708856131082012

`A307741(n+1)/∪[A325023(n+1), A354073(n+1)]`
-/

namespace A054030.P16320708856131082012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A054030.P16320708856131082012

/-!
# A054031: Numbers whose square contains exactly 3 distinct digits.

The programs for A054031, there is no canonical definition to state claims against.
-/

/-! ## A054031.P8469565337152896431

`sqrt(A235718(n+1))`
-/

namespace A054031.P8469565337152896431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235718 (n + 1) : ℝ)

end

end A054031.P8469565337152896431

/-! ## A054031.P10296120132662691245

`root(A235718(n+1), 2%A054032(n+1))`
-/

namespace A054031.P10296120132662691245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235718 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A054032 (n + 1)) : ℝ))

end

end A054031.P10296120132662691245

/-! ## A054031.P11934456684679994826

`root(A235718(n+1), A001316(A001316(n)))`
-/

namespace A054031.P11934456684679994826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235718 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054031.P11934456684679994826

/-! ## A054031.P6472941046873864781

`eq[3, A309432(n)]`
-/

namespace A054031.P6472941046873864781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054031.P6472941046873864781

/-! ## A054031.P8894322933790124462

`A302042(A005843(root(A235718(n+1), 2)))`
-/

namespace A054031.P8894322933790124462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A005843 (SequenceMachineLib.roundAway ((A235718 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A054031.P8894322933790124462

/-! ## A054031.P5289606505796509426

`A193231(A193231(root(A235718(n+1), 2)))`
-/

namespace A054031.P5289606505796509426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 (SequenceMachineLib.roundAway ((A235718 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A054031.P5289606505796509426

/-! ## A054031.P18085330351097189563

`A262689(A235718(n+1)%A061604(n+1))`
-/

namespace A054031.P18085330351097189563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.tmod (A235718 (n + 1)) (A061604 (n + 1))).toNat

end

end A054031.P18085330351097189563

/-! ## A054031.P10279286653118342127

`A262689(A235718(n+1))%A104078(n+1)`
-/

namespace A054031.P10279286653118342127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262689 (A235718 (n + 1)).toNat) (A104078 (n + 1))

end

end A054031.P10279286653118342127

/-! ## A054031.P717508331044987354

`A262689(2*A235718(n+1)-A235718(n+1))`
-/

namespace A054031.P717508331044987354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A235718 (n + 1) - A235718 (n + 1)).toNat

end

end A054031.P717508331044987354

/-!
# A054032: Numbers n such that n^2 contains exactly 4 different digits.

The programs for A054032, there is no canonical definition to state claims against.
-/

/-! ## A054032.P7751530771401153919

`sqrt(A235719(n+1))`
-/

namespace A054032.P7751530771401153919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235719 (n + 1) : ℝ)

end

end A054032.P7751530771401153919

/-! ## A054032.P15491672898165377192

`root(A235719(n+1), 2%A054031(n+1))`
-/

namespace A054032.P15491672898165377192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235719 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A054031 (n + 1)) : ℝ))

end

end A054032.P15491672898165377192

/-! ## A054032.P10609588968658782849

`root(A235719(n+1), A001316(A001316(n)))`
-/

namespace A054032.P10609588968658782849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235719 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054032.P10609588968658782849

/-! ## A054032.P5552798365591693956

`A000027(root(A235719(n+1), 2))`
-/

namespace A054032.P5552798365591693956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A235719 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A054032.P5552798365591693956

/-! ## A054032.P2273302200733534123

`eq[4, A309432(n)]`
-/

namespace A054032.P2273302200733534123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054032.P2273302200733534123

/-! ## A054032.P445057377515394881

`A056926(A235719(n+1)%A235719(n+2))`
-/

namespace A054032.P445057377515394881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A235719 (n + 1)) (A235719 (n + 2))).toNat

end

end A054032.P445057377515394881

/-!
# A054033: Numbers n such that n^2 contains exactly 5 different digits.

The programs for A054033, there is no canonical definition to state claims against.
-/

/-! ## A054033.P13612418051907315554

`sqrt(A235720(n+1))`
-/

namespace A054033.P13612418051907315554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235720 (n + 1) : ℝ)

end

end A054033.P13612418051907315554

/-! ## A054033.P822850497145509452

`root(A235720(n+1), 2%A332550(n))`
-/

namespace A054033.P822850497145509452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235720 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A332550 n) : ℝ))

end

end A054033.P822850497145509452

/-! ## A054033.P2980811565757754348

`root(A235720(n+1), A001316(A001316(n)))`
-/

namespace A054033.P2980811565757754348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235720 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054033.P2980811565757754348

/-! ## A054033.P11850851608600323289

`root(A235720(n+1), A176170(A176170(n+1)))`
-/

namespace A054033.P11850851608600323289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235720 (n + 1) : ℝ) ^ (1 / (A176170 (A176170 (n + 1)).toNat : ℝ))

end

end A054033.P11850851608600323289

/-! ## A054033.P9003407498757611019

`root(A235720(n+1), A133265(A133265(n)))`
-/

namespace A054033.P9003407498757611019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235720 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A054033.P9003407498757611019

/-! ## A054033.P8593266015848411714

`eq[5, A309432(n)]`
-/

namespace A054033.P8593266015848411714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054033.P8593266015848411714

/-! ## A054033.P5082670170519187647

`root(A235720(n+1), A283454(A283454(n+1)))`
-/

namespace A054033.P5082670170519187647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235720 (n + 1) : ℝ) ^ (1 / (A283454 (A283454 (n + 1)).toNat : ℝ))

end

end A054033.P5082670170519187647

/-! ## A054033.P13446269589208621516

`root(A235720(n+1), ratio[A000079(n)])`
-/

namespace A054033.P13446269589208621516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235720 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A054033.P13446269589208621516

/-!
# A054034: Numbers n such that n^2 contains exactly 6 different digits.

The programs for A054034, there is no canonical definition to state claims against.
-/

/-! ## A054034.P17856764697005648464

`sqrt(A235721(n+1))`
-/

namespace A054034.P17856764697005648464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235721 (n + 1) : ℝ)

end

end A054034.P17856764697005648464

/-! ## A054034.P7887970572006732704

`root(A235721(n+1), 2%A332550(n))`
-/

namespace A054034.P7887970572006732704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235721 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A332550 n) : ℝ))

end

end A054034.P7887970572006732704

/-! ## A054034.P8930266107460615793

`root(A235721(n+1), A001316(A001316(n)))`
-/

namespace A054034.P8930266107460615793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235721 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054034.P8930266107460615793

/-! ## A054034.P7386679058926834588

`root(A235721(n+1), A176170(A176170(n+1)))`
-/

namespace A054034.P7386679058926834588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235721 (n + 1) : ℝ) ^ (1 / (A176170 (A176170 (n + 1)).toNat : ℝ))

end

end A054034.P7386679058926834588

/-! ## A054034.P14567933378696454135

`root(A235721(n+1), A133265(A133265(n)))`
-/

namespace A054034.P14567933378696454135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235721 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A054034.P14567933378696454135

/-! ## A054034.P5288497737678590327

`root(A235721(n+1), A283454(A283454(n+1)))`
-/

namespace A054034.P5288497737678590327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235721 (n + 1) : ℝ) ^ (1 / (A283454 (A283454 (n + 1)).toNat : ℝ))

end

end A054034.P5288497737678590327

/-! ## A054034.P2628827715876421071

`root(A235721(n+1), ratio[A000079(n)])`
-/

namespace A054034.P2628827715876421071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235721 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A054034.P2628827715876421071

/-!
# A054035: Numbers n such that n^2 contains exactly 7 different digits.

The programs for A054035, there is no canonical definition to state claims against.
-/

/-! ## A054035.P18042833045992112916

`sqrt(A235722(n+1))`
-/

namespace A054035.P18042833045992112916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235722 (n + 1) : ℝ)

end

end A054035.P18042833045992112916

/-! ## A054035.P12124341736408979341

`root(A235722(n+1), A001316(A001316(n)))`
-/

namespace A054035.P12124341736408979341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235722 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054035.P12124341736408979341

/-! ## A054035.P17818716348158532402

`root(A235722(n+1), A176170(A176170(n+1)))`
-/

namespace A054035.P17818716348158532402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235722 (n + 1) : ℝ) ^ (1 / (A176170 (A176170 (n + 1)).toNat : ℝ))

end

end A054035.P17818716348158532402

/-! ## A054035.P14801731439854025868

`root(A235722(n+1), A133265(A133265(n)))`
-/

namespace A054035.P14801731439854025868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235722 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A054035.P14801731439854025868

/-! ## A054035.P14471538852749842881

`root(A235722(n+1), A283454(A283454(n+1)))`
-/

namespace A054035.P14471538852749842881
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235722 (n + 1) : ℝ) ^ (1 / (A283454 (A283454 (n + 1)).toNat : ℝ))

end

end A054035.P14471538852749842881

/-! ## A054035.P17151699592224203778

`root(A235722(n+1), ratio[A000079(n)])`
-/

namespace A054035.P17151699592224203778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235722 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A054035.P17151699592224203778

/-!
# A054036: Numbers n such that n^2 contains exactly 8 different digits.

The programs for A054036, there is no canonical definition to state claims against.
-/

/-! ## A054036.P3228773267115268455

`sqrt(A235723(n+1))`
-/

namespace A054036.P3228773267115268455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235723 (n + 1) : ℝ)

end

end A054036.P3228773267115268455

/-! ## A054036.P5299874916334947615

`A000027(root(A235723(n+1), 2))`
-/

namespace A054036.P5299874916334947615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A235723 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A054036.P5299874916334947615

/-! ## A054036.P5963391529660658850

`root(A235723(n+1), 2%A050278(n+1))`
-/

namespace A054036.P5963391529660658850
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235723 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A050278 (n + 1)) : ℝ))

end

end A054036.P5963391529660658850

/-! ## A054036.P8362205295170332717

`root(A235723(n+1), A001316(A001316(n)))`
-/

namespace A054036.P8362205295170332717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235723 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054036.P8362205295170332717

/-! ## A054036.P11062413142540792298

`root(A235723(n+1), A176170(A176170(n+1)))`
-/

namespace A054036.P11062413142540792298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235723 (n + 1) : ℝ) ^ (1 / (A176170 (A176170 (n + 1)).toNat : ℝ))

end

end A054036.P11062413142540792298

/-! ## A054036.P15248441730135046291

`root(A235723(n+1), A133265(A133265(n)))`
-/

namespace A054036.P15248441730135046291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235723 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A054036.P15248441730135046291

/-! ## A054036.P16824276154648836084

`root(A235723(n+1), ratio[A000079(n)])`
-/

namespace A054036.P16824276154648836084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235723 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A054036.P16824276154648836084

/-!
# A054037: Numbers k such that k^2 contains exactly 9 different digits.

The programs for A054037, there is no canonical definition to state claims against.
-/

/-! ## A054037.P303496871255180566

`sqrt(A235724(n+1))`
-/

namespace A054037.P303496871255180566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235724 (n + 1) : ℝ)

end

end A054037.P303496871255180566

/-! ## A054037.P811800007820983248

`A000027(root(A235724(n+1), 2))`
-/

namespace A054037.P811800007820983248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A235724 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A054037.P811800007820983248

/-! ## A054037.P4585388422041037904

`root(A235724(n+1), 2%A332550(n))`
-/

namespace A054037.P4585388422041037904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235724 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A332550 n) : ℝ))

end

end A054037.P4585388422041037904

/-! ## A054037.P17121391748234045101

`root(A235724(n+1), gcd(2, A005843(n)))`
-/

namespace A054037.P17121391748234045101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235724 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A054037.P17121391748234045101

/-! ## A054037.P6276376775294104550

`root(A235724(n+1), A001316(A001316(n)))`
-/

namespace A054037.P6276376775294104550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235724 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A054037.P6276376775294104550

/-! ## A054037.P10124100812405689743

`root(A235724(n+1), A176170(A176170(n+1)))`
-/

namespace A054037.P10124100812405689743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235724 (n + 1) : ℝ) ^ (1 / (A176170 (A176170 (n + 1)).toNat : ℝ))

end

end A054037.P10124100812405689743

/-! ## A054037.P9327827153203742186

`root(A235724(n+1), A133265(A133265(n)))`
-/

namespace A054037.P9327827153203742186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235724 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A054037.P9327827153203742186

/-! ## A054037.P18185164136316335637

`root(A235724(n+1), A283454(A283454(n+1)))`
-/

namespace A054037.P18185164136316335637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235724 (n + 1) : ℝ) ^ (1 / (A283454 (A283454 (n + 1)).toNat : ℝ))

end

end A054037.P18185164136316335637

/-!
# A054038: Numbers k such that k^2 contains every digit at least once.

The programs for A054038, there is no canonical definition to state claims against.
-/

/-! ## A054038.P10490514789174195763

`A066825(n+34)`
-/

namespace A054038.P10490514789174195763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066825 (n + 34)

end

end A054038.P10490514789174195763

/-! ## A054038.P10540728820196384720

`sqrt(A036745(n+1))`
-/

namespace A054038.P10540728820196384720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036745 (n + 1) : ℝ)

end

end A054038.P10540728820196384720

/-! ## A054038.P17390779043270096689

`3*A164565(n+1)`
-/

namespace A054038.P17390779043270096689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164565 (n + 1)

end

end A054038.P17390779043270096689

/-!
# A054039: a(n)^2 is the least square to contain n different decimal digits.

The programs for A054039, there is no canonical definition to state claims against.
-/

/-! ## A054039.P4074881120973966221

`xor((1-n)², A000005((2*n)!))+2*n`
-/

namespace A054039.P4074881120973966221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((1 - (n : ℤ)) ^ 2) (A000005 (Nat.factorial (2 * n))) + (2 * n : ℤ)

end

end A054039.P4074881120973966221

/-!
# A054040: a(n) terms of series {1/sqrt(j)} are >= n.

The programs for A054040, there is no canonical definition to state claims against.
-/

/-! ## A054040.P7798886905055061559

`A019529(ceil(sqrt(∑[2*n])))`
-/

namespace A054040.P7798886905055061559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A054040.P7798886905055061559

/-! ## A054040.P14572105181332048357

`record[or(-char[1], A019529(n))]`
-/

namespace A054040.P14572105181332048357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (A019529 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054040.P14572105181332048357

/-! ## A054040.P13960050848836968878

`A019529(n+1)-floor(acot(n))`
-/

namespace A054040.P13960050848836968878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A054040.P13960050848836968878

/-! ## A054040.P15560731285889649930

`A181440(A019529(n+1))`
-/

namespace A054040.P15560731285889649930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A019529 (n + 1)).toNat

end

end A054040.P15560731285889649930

/-! ## A054040.P3745257844713718872

`filter[A019529(n), A267579(#)]`
-/

namespace A054040.P3745257844713718872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A054040.P3745257844713718872

/-! ## A054040.P7174567016119759689

`filter[A019529(n), A267813(#)]`
-/

namespace A054040.P7174567016119759689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A054040.P7174567016119759689

/-! ## A054040.P18171879717742740543

`∩[A019529(n), A081690(n)]`
-/

namespace A054040.P18171879717742740543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054040.P18171879717742740543

/-! ## A054040.P9262023116272544971

`record[A019529(A318994(n+1))]`
-/

namespace A054040.P9262023116272544971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 (A318994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054040.P9262023116272544971

/-! ## A054040.P14694475230887485544

`record[A019529(n)*A060576(n)]`
-/

namespace A054040.P14694475230887485544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 n * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054040.P14694475230887485544

/-! ## A054040.P15680411032014135208

`∩[A019529(n), A078358(n+1)]`
-/

namespace A054040.P15680411032014135208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054040.P15680411032014135208

/-!
# A054041: Sum of a(n) terms of 1/k^(1/3) first exceeds n.

The programs for A054041, there is no canonical definition to state claims against.
-/

/-! ## A054041.P8626950897160987185

`round(A079588(n)/sqrt(A079588(3*n)))`
-/

namespace A054041.P8626950897160987185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079588 n : ℝ) / Real.sqrt (A079588 (3 * n) : ℝ))

end

end A054041.P8626950897160987185

/-! ## A054041.P12143750113687745733

`A231405(n)+char[1]`
-/

namespace A054041.P12143750113687745733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231405 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054041.P12143750113687745733

/-! ## A054041.P4415047991594554396

`A231405(n)*A373565(n)`
-/

namespace A054041.P4415047991594554396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231405 n * A373565 n

end

end A054041.P4415047991594554396

/-! ## A054041.P9114961188026624129

`A130706(n)!*A231405(n)`
-/

namespace A054041.P9114961188026624129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A130706 n).toNat : ℤ) * A231405 n

end

end A054041.P9114961188026624129

/-! ## A054041.P8936868901686505174

`(A063524(n)+1)*A231405(n)`
-/

namespace A054041.P8936868901686505174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A231405 n

end

end A054041.P8936868901686505174

/-! ## A054041.P17938845399379706283

`(A178333(n)+1)*A231405(n)`
-/

namespace A054041.P17938845399379706283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178333 n + 1) * A231405 n

end

end A054041.P17938845399379706283

/-! ## A054041.P15195029464877429143

`A000041(C(2, n))*A231405(n)`
-/

namespace A054041.P15195029464877429143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A231405 n

end

end A054041.P15195029464877429143

/-! ## A054041.P8463797980821735053

`(A084928(n+1)+1)*A231405(n)`
-/

namespace A054041.P8463797980821735053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084928 (n + 1) + 1) * A231405 n

end

end A054041.P8463797980821735053

/-! ## A054041.P9464644939411532710

`or(A000007(a(n-1)), A231405(n))` with `a(0)=1, a(1)=2`
-/

namespace A054041.P9464644939411532710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (A000007 (a (n - 1)).toNat) (A231405 n)

end

end A054041.P9464644939411532710

/-! ## A054041.P8154437495946452577

`lcm(A014963(A000118(n)), A231405(n))`
-/

namespace A054041.P8154437495946452577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A000118 n).toNat) (A231405 n)

end

end A054041.P8154437495946452577

/-!
# A054042: Decimal expansion of 1 - 1/sqrt(10).

The programs for A054042, there is no canonical definition to state claims against.
-/

/-! ## A054042.P15300729353759155554

`9-A010467(n)`
-/

namespace A054042.P15300729353759155554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010467 (n + 1)

end

end A054042.P15300729353759155554

/-! ## A054042.P1896217480607700679

`(9-A176398(n))*A054977(n)`
-/

namespace A054042.P1896217480607700679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A176398 (n + 1)) * A054977 n

end

end A054042.P1896217480607700679

/-! ## A054042.P6918672646755340021

`9-A176398(n)/A000038(n)!`
-/

namespace A054042.P6918672646755340021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (A176398 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A054042.P6918672646755340021

/-! ## A054042.P16537053412745013830

`9-dr(A040020(n)*A176398(n))`
-/

namespace A054042.P16537053412745013830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (SequenceMachineLib.digitalRoot (A040020 n * A176398 (n + 1)) : ℤ)

end

end A054042.P16537053412745013830

/-! ## A054042.P11814877340706781394

`9-A176398(n)/A000034(A008458(n))`
-/

namespace A054042.P11814877340706781394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (A176398 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A054042.P11814877340706781394

/-! ## A054042.P835250639448433236

`9-A176398(n)/A014963(A017089(n))`
-/

namespace A054042.P835250639448433236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (A176398 (n + 1) : ℚ) / (A014963 (A017089 n).toNat : ℚ)

end

end A054042.P835250639448433236

/-! ## A054042.P3340877888893987669

`9-A176398(n)/A014963(A017113(n))`
-/

namespace A054042.P3340877888893987669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (A176398 (n + 1) : ℚ) / (A014963 (A017113 n).toNat : ℚ)

end

end A054042.P3340877888893987669

/-! ## A054042.P14842610642629855998

`9-A176398(n)/A014963(A001749(n+1))`
-/

namespace A054042.P14842610642629855998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (A176398 (n + 1) : ℚ) / (A014963 (A001749 (n + 1)).toNat : ℚ)

end

end A054042.P14842610642629855998

/-! ## A054042.P5391127990424564817

`A062940(2*(n+1))%10`
-/

namespace A054042.P5391127990424564817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062940 (2 * (n + 1))) 10

end

end A054042.P5391127990424564817

/-!
# A054043: Grundy function for turn-at-most-6-coins game.

The programs for A054043, there is no canonical definition to state claims against.
-/

/-! ## A054043.P236535912861120610

`∪[A000079(n), A075939(n)]`
-/

namespace A054043.P236535912861120610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054043.P236535912861120610

/-! ## A054043.P9915831109919732712

`floor(A054044(n+2)/2)`
-/

namespace A054043.P9915831109919732712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054044 (n + 2) : ℚ) / 2⌋

end

end A054043.P9915831109919732712

/-! ## A054043.P6162889704806683321

`(or(1, A054044(n+2))-A177704(n²))/2`
-/

namespace A054043.P6162889704806683321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A054044 (n + 2)) - A177704 (n ^ 2) : ℚ) / 2

end

end A054043.P6162889704806683321

/-! ## A054043.P242497615556845870

`(or(1, A054044(n+2))-A155054(n+1)%2)/2`
-/

namespace A054043.P242497615556845870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A054044 (n + 2)) - Int.tmod (A155054 (n + 1)) 2 : ℚ) / 2

end

end A054043.P242497615556845870

/-!
# A054044: Grundy function for turn-at-most-7-coins game.

The programs for A054044, there is no canonical definition to state claims against.
-/

/-! ## A054044.P533057354281683283

`∪[A000079(n), A075942(n)]`
-/

namespace A054044.P533057354281683283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075942 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054044.P533057354281683283

/-! ## A054044.P11366249826339070045

`A200322(A172316(n))`
-/

namespace A054044.P11366249826339070045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A172316 n).toNat

end

end A054044.P11366249826339070045

/-! ## A054044.P5418409280888643942

`A200322(Δ[A145114(n)])`
-/

namespace A054044.P5418409280888643942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (f1 (n + 1) - f1 n).toNat

end

end A054044.P5418409280888643942

/-! ## A054044.P1929879164567708115

`filter[A015929(n+1), A010055(#)]`
-/

namespace A054044.P1929879164567708115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A054044.P1929879164567708115

/-! ## A054044.P14929627905770372016

`filter[A015929(n+1), A324290(#)]`
-/

namespace A054044.P14929627905770372016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A054044.P14929627905770372016

/-!
# A054045: Grundy function for turn-at-most-8-coins game.

The programs for A054045, there is no canonical definition to state claims against.
-/

/-! ## A054045.P5525729024707612731

`∪[A000079(n), A075945(n)]`
-/

namespace A054045.P5525729024707612731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054045.P5525729024707612731

/-! ## A054045.P6718378113171820430

`floor(A054046(n+2)/2)`
-/

namespace A054045.P6718378113171820430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054046 (n + 2) : ℚ) / 2⌋

end

end A054045.P6718378113171820430

/-! ## A054045.P186790462037167675

`∑[A004525(Δ[A054046(n+1)])]`
-/

namespace A054045.P186790462037167675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054045.P186790462037167675

/-! ## A054045.P7988419095023108851

`A004525(A054046(n+2))`
-/

namespace A054045.P7988419095023108851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A054046 (n + 2)).toNat

end

end A054045.P7988419095023108851

/-! ## A054045.P12477801102192050933

`∩[A097029(n+1), A194415(n+1)]`
-/

namespace A054045.P12477801102192050933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054045.P12477801102192050933

/-!
# A054046: Grundy function for turn-at-most-9-coins game.

The programs for A054046, there is no canonical definition to state claims against.
-/

/-! ## A054046.P10482430174288354955

`∪[2^n, A075948(n)]`
-/

namespace A054046.P10482430174288354955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054046.P10482430174288354955

/-! ## A054046.P17941407031163222189

`∪[A075948(n), A000079(n)]`
-/

namespace A054046.P17941407031163222189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054046.P17941407031163222189

/-! ## A054046.P10969328534900000277

`∪[A075948(n), ∑[A011782(n)]]`
-/

namespace A054046.P10969328534900000277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075948 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054046.P10969328534900000277

/-! ## A054046.P16895574775108151344

`∪[A075948(n), record[A059268(n)]]`
-/

namespace A054046.P16895574775108151344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075948 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054046.P16895574775108151344

/-! ## A054046.P10556361631645785909

`∪[A075948(n), A011782(n+1)]`
-/

namespace A054046.P10556361631645785909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054046.P10556361631645785909

/-!
# A054047: Numbers which can be read as (possibly different) numbers when rotated by 180 degrees (final zeros allowed).

The programs for A054047, the canonical program `A054047.P6609416197519698243` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054047 has offset 0).

The definition of A054047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054047.P6609416197519698243

`∩[A008541(n+1), A084984(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054047

/-- `∩[A008541(n+1), A084984(n+1)]` -/
def P6609416197519698243.Spec : Prop :=
  ∀ n, (P6609416197519698243.a n : ℤ) = A054047 n

theorem P6609416197519698243.correct : P6609416197519698243.Spec := by
  intro n
  simp only [A054047]

end A054047

/-! ## A054047.P4133994316175781006

`∩[A039129(n+1), A084984(n+1)]`
-/

namespace A054047.P4133994316175781006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P4133994316175781006

namespace A054047

/-- `∩[A039129(n+1), A084984(n+1)]` -/
def P4133994316175781006.Spec : Prop :=
  ∀ n, (P4133994316175781006.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P13263074022384576252

`∩[A039135(n+1), A084984(n+1)]`
-/

namespace A054047.P13263074022384576252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P13263074022384576252

namespace A054047

/-- `∩[A039135(n+1), A084984(n+1)]` -/
def P13263074022384576252.Spec : Prop :=
  ∀ n, (P13263074022384576252.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P15979424596915217942

`∩[A039141(n+1), A084984(n+1)]`
-/

namespace A054047.P15979424596915217942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P15979424596915217942

namespace A054047

/-- `∩[A039141(n+1), A084984(n+1)]` -/
def P15979424596915217942.Spec : Prop :=
  ∀ n, (P15979424596915217942.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P8877806567517581284

`∩[A039143(n+1), A084984(n+1)]`
-/

namespace A054047.P8877806567517581284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P8877806567517581284

namespace A054047

/-- `∩[A039143(n+1), A084984(n+1)]` -/
def P8877806567517581284.Spec : Prop :=
  ∀ n, (P8877806567517581284.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P164580104997519430

`record[gcd(A039132(n+1), A039147(n+1))]`
-/

namespace A054047.P164580104997519430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039132 (n + 1)) (A039147 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054047.P164580104997519430

namespace A054047

/-- `record[gcd(A039132(n+1), A039147(n+1))]` -/
def P164580104997519430.Spec : Prop :=
  ∀ n, (P164580104997519430.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P652936276566872176

`∩[A052406(n+1), A084984(n+1)]`
-/

namespace A054047.P652936276566872176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P652936276566872176

namespace A054047

/-- `∩[A052406(n+1), A084984(n+1)]` -/
def P652936276566872176.Spec : Prop :=
  ∀ n, (P652936276566872176.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P10706125294405725769

`record[A004179(A084984(n+1))]`
-/

namespace A054047.P10706125294405725769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A084984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054047.P10706125294405725769

namespace A054047

/-- `record[A004179(A084984(n+1))]` -/
def P10706125294405725769.Spec : Prop :=
  ∀ n, P10706125294405725769.a n = A054047 n

end A054047

/-! ## A054047.P13576965735772724171

`eq[n, A004179(A193238(n)+n)]`
-/

namespace A054047.P13576965735772724171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A193238 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054047.P13576965735772724171

namespace A054047

/-- `eq[n, A004179(A193238(n)+n)]` -/
def P13576965735772724171.Spec : Prop :=
  ∀ n, (P13576965735772724171.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P1432093167048542012

`eq[n, A004179(n-A193238(n))]`
-/

namespace A054047.P1432093167048542012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 ((n : ℤ) - A193238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054047.P1432093167048542012

namespace A054047

/-- `eq[n, A004179(n-A193238(n))]` -/
def P1432093167048542012.Spec : Prop :=
  ∀ n, (P1432093167048542012.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P12711152709224837244

`record[A222232(A222230(n))]`
-/

namespace A054047.P12711152709224837244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222230 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054047.P12711152709224837244

namespace A054047

/-- `record[A222232(A222230(n))]` -/
def P12711152709224837244.Spec : Prop :=
  ∀ n, P12711152709224837244.a n = A054047 n

end A054047

/-! ## A054047.P14470458027675855142

`A222230(record[A222238(n)])`
-/

namespace A054047.P14470458027675855142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054047.P14470458027675855142

namespace A054047

/-- `A222230(record[A222238(n)])` -/
def P14470458027675855142.Spec : Prop :=
  ∀ n, P14470458027675855142.a n = A054047 n

end A054047

/-! ## A054047.P9918391873836761385

`record[A222230(A222243(n))]`
-/

namespace A054047.P9918391873836761385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222243 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054047.P9918391873836761385

namespace A054047

/-- `record[A222230(A222243(n))]` -/
def P9918391873836761385.Spec : Prop :=
  ∀ n, P9918391873836761385.a n = A054047 n

end A054047

/-! ## A054047.P15420236557000720428

`A222249(record[A222231(n)])`
-/

namespace A054047.P15420236557000720428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054047.P15420236557000720428

namespace A054047

/-- `A222249(record[A222231(n)])` -/
def P15420236557000720428.Spec : Prop :=
  ∀ n, P15420236557000720428.a n = A054047 n

end A054047

/-! ## A054047.P3811414558799989655

`record[A222250(A222232(n))]`
-/

namespace A054047.P3811414558799989655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222232 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054047.P3811414558799989655

namespace A054047

/-- `record[A222250(A222232(n))]` -/
def P3811414558799989655.Spec : Prop :=
  ∀ n, P3811414558799989655.a n = A054047 n

end A054047

/-! ## A054047.P11044151724260168191

`record[A222230(A222247(n))]`
-/

namespace A054047.P11044151724260168191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054047.P11044151724260168191

namespace A054047

/-- `record[A222230(A222247(n))]` -/
def P11044151724260168191.Spec : Prop :=
  ∀ n, P11044151724260168191.a n = A054047 n

end A054047

/-! ## A054047.P10636659390125532953

`A222221(A001744(n+1))`
-/

namespace A054047.P10636659390125532953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A001744 (n + 1)).toNat

end

end A054047.P10636659390125532953

namespace A054047

/-- `A222221(A001744(n+1))` -/
def P10636659390125532953.Spec : Prop :=
  ∀ n, P10636659390125532953.a n = A054047 n

end A054047

/-! ## A054047.P2657927634802016428

`A222220(A072960(n+1))`
-/

namespace A054047.P2657927634802016428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A072960 (n + 1)).toNat

end

end A054047.P2657927634802016428

namespace A054047

/-- `A222220(A072960(n+1))` -/
def P2657927634802016428.Spec : Prop :=
  ∀ n, P2657927634802016428.a n = A054047 n

end A054047

/-! ## A054047.P1586628172119680430

`eq[n*A193238(n), A193238(A222234(n))]`
-/

namespace A054047.P1586628172119680430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054047.P1586628172119680430

namespace A054047

/-- `eq[n*A193238(n), A193238(A222234(n))]` -/
def P1586628172119680430.Spec : Prop :=
  ∀ n, (P1586628172119680430.a n : ℤ) = A054047 n

end A054047

/-! ## A054047.P5639716351396081703

`∩[A039128(n+1), A137386(n+1)]`
-/

namespace A054047.P5639716351396081703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054047.P5639716351396081703

namespace A054047

/-- `∩[A039128(n+1), A137386(n+1)]` -/
def P5639716351396081703.Spec : Prop :=
  ∀ n, (P5639716351396081703.a n : ℤ) = A054047 n

end A054047

/-!
# A054054: Smallest digit of n.

The programs for A054054, the canonical program `A054054.P1056175227029170886` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054054 has offset 0).

The definition of A054054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054054.P2265909657191604686

`9-A054055(A061601(n))`
-/

namespace A054054.P2265909657191604686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A054055 (A061601 n).toNat

end

end A054054.P2265909657191604686

namespace A054054

/-- `9-A054055(A061601(n))` -/
def P2265909657191604686.Spec : Prop :=
  ∀ n, P2265909657191604686.a n = A054054 n

end A054054

/-! ## A054054.P17683841450816604087

`val(A086066(n), 2)`
-/

namespace A054054.P17683841450816604087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

end

end A054054.P17683841450816604087

namespace A054054

/-- `val(A086066(n), 2)` -/
def P17683841450816604087.Spec : Prop :=
  ∀ n, (P17683841450816604087.a n : ℤ) = A054054 n

end A054054

/-! ## A054054.P16960216217623458391

`val(A086067(n), 2)`
-/

namespace A054054.P16960216217623458391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086067 n).toNat 2

end

end A054054.P16960216217623458391

namespace A054054

/-- `val(A086067(n), 2)` -/
def P16960216217623458391.Spec : Prop :=
  ∀ n, (P16960216217623458391.a n : ℤ) = A054054 n

end A054054

/-! ## A054054.P1056175227029170886

`val(A348783(n), 5)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054054

/-- `val(A348783(n), 5)` -/
def P1056175227029170886.Spec : Prop :=
  ∀ n, (P1056175227029170886.a n : ℤ) = A054054 n

theorem P1056175227029170886.correct : P1056175227029170886.Spec := by
  intro n
  simp only [A054054]

end A054054

/-! ## A054054.P2640066900509780134

`A004186(n)%10`
-/

namespace A054054.P2640066900509780134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

end

end A054054.P2640066900509780134

namespace A054054

/-- `A004186(n)%10` -/
def P2640066900509780134.Spec : Prop :=
  ∀ n, P2640066900509780134.a n = A054054 n

end A054054

/-! ## A054054.P16023965991871712880

`A227362(n)%10`
-/

namespace A054054.P16023965991871712880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

end

end A054054.P16023965991871712880

namespace A054054

/-- `A227362(n)%10` -/
def P16023965991871712880.Spec : Prop :=
  ∀ n, P16023965991871712880.a n = A054054 n

end A054054

/-! ## A054054.P3097494527961923015

`A244112(n)%10`
-/

namespace A054054.P3097494527961923015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244112 n) 10

end

end A054054.P3097494527961923015

namespace A054054

/-- `A244112(n)%10` -/
def P3097494527961923015.Spec : Prop :=
  ∀ n, P3097494527961923015.a n = A054054 n

end A054054

/-! ## A054054.P10799049986421367730

`A355221(n)%10`
-/

namespace A054054.P10799049986421367730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355221 n) 10

end

end A054054.P10799049986421367730

namespace A054054

/-- `A355221(n)%10` -/
def P10799049986421367730.Spec : Prop :=
  ∀ n, P10799049986421367730.a n = A054054 n

end A054054

/-! ## A054054.P10502963768206789184

`A010879(A004186(n))`
-/

namespace A054054.P10502963768206789184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004186 n).toNat

end

end A054054.P10502963768206789184

namespace A054054

/-- `A010879(A004186(n))` -/
def P10502963768206789184.Spec : Prop :=
  ∀ n, P10502963768206789184.a n = A054054 n

end A054054

/-! ## A054054.P8313970469577846294

`A007814(A086066(n))`
-/

namespace A054054.P8313970469577846294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

end

end A054054.P8313970469577846294

namespace A054054

/-- `A007814(A086066(n))` -/
def P8313970469577846294.Spec : Prop :=
  ∀ n, P8313970469577846294.a n = A054054 n

end A054054

/-! ## A054054.P7665114022512304694

`A010879(A227362(n))`
-/

namespace A054054.P7665114022512304694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A227362 n).toNat

end

end A054054.P7665114022512304694

namespace A054054

/-- `A010879(A227362(n))` -/
def P7665114022512304694.Spec : Prop :=
  ∀ n, P7665114022512304694.a n = A054054 n

end A054054

/-! ## A054054.P7578868986086016333

`A010879(A355221(n))`
-/

namespace A054054.P7578868986086016333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A355221 n).toNat

end

end A054054.P7578868986086016333

namespace A054054

/-- `A010879(A355221(n))` -/
def P7578868986086016333.Spec : Prop :=
  ∀ n, P7578868986086016333.a n = A054054 n

end A054054

/-! ## A054054.P5165252170485468217

`A010879(n-A283001(n))`
-/

namespace A054054.P5165252170485468217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A283001 n).toNat

end

end A054054.P5165252170485468217

namespace A054054

/-- `A010879(n-A283001(n))` -/
def P5165252170485468217.Spec : Prop :=
  ∀ n, P5165252170485468217.a n = A054054 n

end A054054

/-! ## A054054.P2001682956354051272

`A067898(n)-A094267(A086066(n)-1)`
-/

namespace A054054.P2001682956354051272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n - A094267 (A086066 n - 1).toNat

end

end A054054.P2001682956354051272

namespace A054054

/-- `A067898(n)-A094267(A086066(n)-1)` -/
def P2001682956354051272.Spec : Prop :=
  ∀ n, P2001682956354051272.a n = A054054 n

end A054054

/-! ## A054054.P6092910737863446438

`A010879(A244112(n))`
-/

namespace A054054.P6092910737863446438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A244112 n).toNat

end

end A054054.P6092910737863446438

namespace A054054

/-- `A010879(A244112(n))` -/
def P6092910737863446438.Spec : Prop :=
  ∀ n, P6092910737863446438.a n = A054054 n

end A054054

/-! ## A054054.P6068729002451810953

`A373064(A087019(n))`
-/

namespace A054054.P6068729002451810953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373064 (A087019 n).toNat

end

end A054054.P6068729002451810953

namespace A054054

/-- `A373064(A087019(n))` -/
def P6068729002451810953.Spec : Prop :=
  ∀ n, P6068729002451810953.a n = A054054 n

end A054054

/-! ## A054054.P3517617905283774526

`∑{d}[n+1, A115353(#-1)*A151909((n+1)/#-1)]`
-/

namespace A054054.P3517617905283774526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115353 (d - 1) * A151909 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054054.P3517617905283774526

namespace A054054

/-- `∑{d}[n+1, A115353(#-1)*A151909((n+1)/#-1)]` -/
def P3517617905283774526.Spec : Prop :=
  ∀ n, P3517617905283774526.a n = A054054 n

end A054054

/-! ## A054054.P2476383699325484881

`A241494(A240237(A265525(n)))`
-/

namespace A054054.P2476383699325484881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (A240237 (A265525 n).toNat).toNat

end

end A054054.P2476383699325484881

namespace A054054

/-- `A241494(A240237(A265525(n)))` -/
def P2476383699325484881.Spec : Prop :=
  ∀ n, P2476383699325484881.a n = A054054 n

end A054054

/-!
# A054055: Largest digit of n.

The programs for A054055, the canonical program `A054055.P4613541377942540963` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054055 has offset 0).

The definition of A054055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054055.P518519205256579344

`val(A069877(n), 2)`
-/

namespace A054055.P518519205256579344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069877 n).toNat 2

end

end A054055.P518519205256579344

namespace A054055

/-- `val(A069877(n), 2)` -/
def P518519205256579344.Spec : Prop :=
  ∀ n, (P518519205256579344.a n : ℤ) = A054055 n

end A054055

/-! ## A054055.P635990519365493168

`A004185(n)%10`
-/

namespace A054055.P635990519365493168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10

end

end A054055.P635990519365493168

namespace A054055

/-- `A004185(n)%10` -/
def P635990519365493168.Spec : Prop :=
  ∀ n, P635990519365493168.a n = A054055 n

end A054055

/-! ## A054055.P1349999233622921164

`A047842(n)%10`
-/

namespace A054055.P1349999233622921164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

end

end A054055.P1349999233622921164

namespace A054055

/-- `A047842(n)%10` -/
def P1349999233622921164.Spec : Prop :=
  ∀ n, P1349999233622921164.a n = A054055 n

end A054055

/-! ## A054055.P4613541377942540963

`A355222(n)%10`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A054055

/-- `A355222(n)%10` -/
def P4613541377942540963.Spec : Prop :=
  ∀ n, P4613541377942540963.a n = A054055 n

theorem P4613541377942540963.correct : P4613541377942540963.Spec := by
  intro n
  simp only [A054055]

end A054055

/-! ## A054055.P15749090329697981638

`floor(log2(A086066(n)))`
-/

namespace A054055.P15749090329697981638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat

end

end A054055.P15749090329697981638

namespace A054055

/-- `floor(log2(A086066(n)))` -/
def P15749090329697981638.Spec : Prop :=
  ∀ n, (P15749090329697981638.a n : ℤ) = A054055 n

end A054055

/-! ## A054055.P300207351348769326

`a(A235049(n))+1` with `a(0)=0`
-/

namespace A054055.P300207351348769326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A235049 n).toNat + 1

end

end A054055.P300207351348769326

namespace A054055

/-- `a(A235049(n))+1` -/
def P300207351348769326.Spec : Prop :=
  ∀ n, (P300207351348769326.a n : ℤ) = A054055 n

end A054055

/-! ## A054055.P887970666675596734

`(n-A193581(n))%10`
-/

namespace A054055.P887970666675596734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A193581 n) 10

end

end A054055.P887970666675596734

namespace A054055

/-- `(n-A193581(n))%10` -/
def P887970666675596734.Spec : Prop :=
  ∀ n, P887970666675596734.a n = A054055 n

end A054055

/-! ## A054055.P10997834645153020647

`A000030(A004186(n))`
-/

namespace A054055.P10997834645153020647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 n).toNat

end

end A054055.P10997834645153020647

namespace A054055

/-- `A000030(A004186(n))` -/
def P10997834645153020647.Spec : Prop :=
  ∀ n, P10997834645153020647.a n = A054055 n

end A054055

/-! ## A054055.P9417039849264101944

`A010879(A004185(n))`
-/

namespace A054055.P9417039849264101944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004185 n).toNat

end

end A054055.P9417039849264101944

namespace A054055

/-- `A010879(A004185(n))` -/
def P9417039849264101944.Spec : Prop :=
  ∀ n, P9417039849264101944.a n = A054055 n

end A054055

/-! ## A054055.P7868190108300699128

`A000523(A086066(n))`
-/

namespace A054055.P7868190108300699128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A086066 n).toNat

end

end A054055.P7868190108300699128

namespace A054055

/-- `A000523(A086066(n))` -/
def P7868190108300699128.Spec : Prop :=
  ∀ n, P7868190108300699128.a n = A054055 n

end A054055

/-! ## A054055.P1352713653610061328

`A047813(A137564(n))`
-/

namespace A054055.P1352713653610061328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A137564 n).toNat

end

end A054055.P1352713653610061328

namespace A054055

/-- `A047813(A137564(n))` -/
def P1352713653610061328.Spec : Prop :=
  ∀ n, P1352713653610061328.a n = A054055 n

end A054055

/-! ## A054055.P10335116305342552068

`A000030(A227362(n))`
-/

namespace A054055.P10335116305342552068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A227362 n).toNat

end

end A054055.P10335116305342552068

namespace A054055

/-- `A000030(A227362(n))` -/
def P10335116305342552068.Spec : Prop :=
  ∀ n, P10335116305342552068.a n = A054055 n

end A054055

/-! ## A054055.P6900739738677953214

`A000030(A355224(n))`
-/

namespace A054055.P6900739738677953214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A355224 n).toNat

end

end A054055.P6900739738677953214

namespace A054055

/-- `A000030(A355224(n))` -/
def P6900739738677953214.Spec : Prop :=
  ∀ n, P6900739738677953214.a n = A054055 n

end A054055

/-! ## A054055.P2948452291755635153

`A010879(A355222(n))`
-/

namespace A054055.P2948452291755635153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A355222 n).toNat

end

end A054055.P2948452291755635153

namespace A054055

/-- `A010879(A355222(n))` -/
def P2948452291755635153.Spec : Prop :=
  ∀ n, P2948452291755635153.a n = A054055 n

end A054055

/-! ## A054055.P14255886827690391050

`A059939(2*A086066(n))`
-/

namespace A054055.P14255886827690391050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (2 * A086066 n).toNat

end

end A054055.P14255886827690391050

namespace A054055

/-- `A059939(2*A086066(n))` -/
def P14255886827690391050.Spec : Prop :=
  ∀ n, P14255886827690391050.a n = A054055 n

end A054055

/-! ## A054055.P7566955738978240613

`A228822(n)+A055642(n)`
-/

namespace A054055.P7566955738978240613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228822 n + A055642 n

end

end A054055.P7566955738978240613

namespace A054055

/-- `A228822(n)+A055642(n)` -/
def P7566955738978240613.Spec : Prop :=
  ∀ n, P7566955738978240613.a n = A054055 n

theorem P7566955738978240613.correct : P7566955738978240613.Spec := by
  intro n
  simp only [A054055, Nat.add_sub_cancel, A054055.P7566955738978240613.a, A054055.P4613541377942540963.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A228822, A228822.P6281530338051954029.a, A355222, A355222.P17906569904308679321.a, A054054, A054054.P1056175227029170886.a, A056142, A056142.P638140004868031470.a, A182324, A182324.P68523715600839783.a, A000030, A000030.P4990867543733972260.a, A059995, A059995.P135539884652528526.a, A275238, A275238.P2529277380881640300.a, A348783, A348783.P18337028565941183294.f1, A348783.P18337028565941183294.a, A178914, A178914.P15550462812133884735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054055

/-! ## A054055.P14474382766294784164

`A010879(A070196(n)-n)`
-/

namespace A054055.P14474382766294784164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A070196 n - (n : ℤ)).toNat

end

end A054055.P14474382766294784164

namespace A054055

/-- `A010879(A070196(n)-n)` -/
def P14474382766294784164.Spec : Prop :=
  ∀ n, P14474382766294784164.a n = A054055 n

end A054055

/-! ## A054055.P14774152288779873002

`A010879(n-A193581(n))`
-/

namespace A054055.P14774152288779873002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A193581 n).toNat

end

end A054055.P14774152288779873002

namespace A054055

/-- `A010879(n-A193581(n))` -/
def P14774152288779873002.Spec : Prop :=
  ∀ n, P14774152288779873002.a n = A054055 n

end A054055

/-! ## A054055.P15373887613896262963

`val(A061509(A108782(n)+n), 2)`
-/

namespace A054055.P15373887613896262963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 (A108782 n + (n : ℤ)).toNat).toNat 2

end

end A054055.P15373887613896262963

namespace A054055

/-- `val(A061509(A108782(n)+n), 2)` -/
def P15373887613896262963.Spec : Prop :=
  ∀ n, (P15373887613896262963.a n : ℤ) = A054055 n

end A054055

/-! ## A054055.P1221982329796259651

`A001222(and(A069877(n), A086066(n)))`
-/

namespace A054055.P1221982329796259651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (A069877 n) (A086066 n)).toNat

end

end A054055.P1221982329796259651

namespace A054055

/-- `A001222(and(A069877(n), A086066(n)))` -/
def P1221982329796259651.Spec : Prop :=
  ∀ n, P1221982329796259651.a n = A054055 n

end A054055

/-!
# A054056: Numbers of form 29+n^2+n or 29+2*n^2.

The programs for A054056, the canonical program `A054056.P7272504195874728976` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054056 has offset 1).

The definition of A054056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054056.P7272504195874728976

`A054795(n+1)+6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054056

/-- `A054795(n+1)+6` -/
def P7272504195874728976.Spec : Prop :=
  ∀ n, P7272504195874728976.a n = A054056 (n + 1)

theorem P7272504195874728976.correct : P7272504195874728976.Spec := by
  intro n
  simp only [A054056, Nat.add_sub_cancel]

end A054056

/-! ## A054056.P16274429029428972086

`A054796(n+1)+12`
-/

namespace A054056.P16274429029428972086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1) + 12

end

end A054056.P16274429029428972086

namespace A054056

/-- `A054796(n+1)+12` -/
def P16274429029428972086.Spec : Prop :=
  ∀ n, P16274429029428972086.a n = A054056 (n + 1)

theorem P16274429029428972086.correct : P16274429029428972086.Spec := by
  intro n
  simp only [A054056, Nat.add_sub_cancel, A054056.P16274429029428972086.a, A054056.P7272504195874728976.a, A054795, A054795.P8527574853343151229.a, A054796, A054796.P2330397691738017337.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054056

/-! ## A054056.P16361539038532593325

`A054057(n+1)-12`
-/

namespace A054056.P16361539038532593325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1) - 12

end

end A054056.P16361539038532593325

namespace A054056

/-- `A054057(n+1)-12` -/
def P16361539038532593325.Spec : Prop :=
  ∀ n, P16361539038532593325.a n = A054056 (n + 1)

theorem P16361539038532593325.correct : P16361539038532593325.Spec := by
  intro n
  simp only [A054056, Nat.add_sub_cancel, A054056.P16361539038532593325.a, A054056.P7272504195874728976.a, A054057, A054057.P9083325440450604952.a, A054795, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054056

/-! ## A054056.P5721091799395528291

`A052293(n+1)+18`
-/

namespace A054056.P5721091799395528291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052293 (n + 1) + 18

end

end A054056.P5721091799395528291

namespace A054056

/-- `A052293(n+1)+18` -/
def P5721091799395528291.Spec : Prop :=
  ∀ n, P5721091799395528291.a n = A054056 (n + 1)

theorem P5721091799395528291.correct : P5721091799395528291.Spec := by
  intro n
  simp only [A054056, Nat.add_sub_cancel, A054056.P5721091799395528291.a, A054056.P7272504195874728976.a, A052293, A052293.P3349466566879565360.a, A054795, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054056

/-! ## A054056.P9965080069018443513

`A054794(n+1)+24`
-/

namespace A054056.P9965080069018443513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054794 (n + 1) + 24

end

end A054056.P9965080069018443513

namespace A054056

/-- `A054794(n+1)+24` -/
def P9965080069018443513.Spec : Prop :=
  ∀ n, P9965080069018443513.a n = A054056 (n + 1)

theorem P9965080069018443513.correct : P9965080069018443513.Spec := by
  intro n
  simp only [A054056, Nat.add_sub_cancel, A054056.P9965080069018443513.a, A054056.P7272504195874728976.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054056

/-! ## A054056.P11538289438072992308

`A020715(A054795(n+1))`
-/

namespace A054056.P11538289438072992308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A054795 (n + 1)).toNat

end

end A054056.P11538289438072992308

namespace A054056

/-- `A020715(A054795(n+1))` -/
def P11538289438072992308.Spec : Prop :=
  ∀ n, P11538289438072992308.a n = A054056 (n + 1)

end A054056

/-! ## A054056.P2415907066592129788

`A023454(A054057(n+1))`
-/

namespace A054056.P2415907066592129788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A054057 (n + 1)).toNat

end

end A054056.P2415907066592129788

namespace A054056

/-- `A023454(A054057(n+1))` -/
def P2415907066592129788.Spec : Prop :=
  ∀ n, P2415907066592129788.a n = A054056 (n + 1)

end A054056

/-! ## A054056.P856616253555089652

`A033662(A054796(n+1))`
-/

namespace A054056.P856616253555089652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (A054796 (n + 1)).toNat

end

end A054056.P856616253555089652

namespace A054056

/-- `A033662(A054796(n+1))` -/
def P856616253555089652.Spec : Prop :=
  ∀ n, P856616253555089652.a n = A054056 (n + 1)

end A054056

/-! ## A054056.P14136999760315780653

`A343080(A054794(n+1))`
-/

namespace A054056.P14136999760315780653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343080 (A054794 (n + 1)).toNat

end

end A054056.P14136999760315780653

namespace A054056

/-- `A343080(A054794(n+1))` -/
def P14136999760315780653.Spec : Prop :=
  ∀ n, P14136999760315780653.a n = A054056 (n + 1)

end A054056

/-! ## A054056.P13897177389055884973

`A023466(2*A054057(n+1))/2`
-/

namespace A054056.P13897177389055884973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023466 (2 * A054057 (n + 1)).toNat : ℚ) / 2

end

end A054056.P13897177389055884973

namespace A054056

/-- `A023466(2*A054057(n+1))/2` -/
def P13897177389055884973.Spec : Prop :=
  ∀ n, P13897177389055884973.a n = (A054056 (n + 1) : ℚ)

end A054056

/-!
# A054057: Numbers of form 41+n^2+n or 41+2*n^2.

The programs for A054057, the canonical program `A054057.P9083325440450604952` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054057 has offset 1).

The definition of A054057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054057.P9083325440450604952

`A054056(n+1)+12`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054057

/-- `A054056(n+1)+12` -/
def P9083325440450604952.Spec : Prop :=
  ∀ n, P9083325440450604952.a n = A054057 (n + 1)

theorem P9083325440450604952.correct : P9083325440450604952.Spec := by
  intro n
  simp only [A054057, Nat.add_sub_cancel]

end A054057

/-! ## A054057.P3543336199764515608

`A054795(n+1)+18`
-/

namespace A054057.P3543336199764515608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1) + 18

end

end A054057.P3543336199764515608

namespace A054057

/-- `A054795(n+1)+18` -/
def P3543336199764515608.Spec : Prop :=
  ∀ n, P3543336199764515608.a n = A054057 (n + 1)

theorem P3543336199764515608.correct : P3543336199764515608.Spec := by
  intro n
  simp only [A054057, Nat.add_sub_cancel, A054057.P3543336199764515608.a, A054057.P9083325440450604952.a, A054056, A054056.P7272504195874728976.a, A054795, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054057

/-! ## A054057.P6309547492154585913

`A054796(n+1)+24`
-/

namespace A054057.P6309547492154585913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1) + 24

end

end A054057.P6309547492154585913

namespace A054057

/-- `A054796(n+1)+24` -/
def P6309547492154585913.Spec : Prop :=
  ∀ n, P6309547492154585913.a n = A054057 (n + 1)

theorem P6309547492154585913.correct : P6309547492154585913.Spec := by
  intro n
  simp only [A054057, Nat.add_sub_cancel, A054057.P6309547492154585913.a, A054057.P9083325440450604952.a, A054056, A054056.P7272504195874728976.a, A054796, A054796.P2330397691738017337.a, A054795, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054057

/-! ## A054057.P4847798261791680011

`A052293(n+1)+30`
-/

namespace A054057.P4847798261791680011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052293 (n + 1) + 30

end

end A054057.P4847798261791680011

namespace A054057

/-- `A052293(n+1)+30` -/
def P4847798261791680011.Spec : Prop :=
  ∀ n, P4847798261791680011.a n = A054057 (n + 1)

theorem P4847798261791680011.correct : P4847798261791680011.Spec := by
  intro n
  simp only [A054057, Nat.add_sub_cancel, A054057.P4847798261791680011.a, A054057.P9083325440450604952.a, A052293, A052293.P3349466566879565360.a, A054056, A054056.P7272504195874728976.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054057

/-! ## A054057.P15592896898021244408

`A054794(n+1)+36`
-/

namespace A054057.P15592896898021244408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054794 (n + 1) + 36

end

end A054057.P15592896898021244408

namespace A054057

/-- `A054794(n+1)+36` -/
def P15592896898021244408.Spec : Prop :=
  ∀ n, P15592896898021244408.a n = A054057 (n + 1)

theorem P15592896898021244408.correct : P15592896898021244408.Spec := by
  intro n
  simp only [A054057, Nat.add_sub_cancel, A054057.P15592896898021244408.a, A054057.P9083325440450604952.a, A054056, A054056.P7272504195874728976.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054057

/-! ## A054057.P11293241550213412482

`A033662(A054056(n+1))`
-/

namespace A054057.P11293241550213412482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (A054056 (n + 1)).toNat

end

end A054057.P11293241550213412482

namespace A054057

/-- `A033662(A054056(n+1))` -/
def P11293241550213412482.Spec : Prop :=
  ∀ n, P11293241550213412482.a n = A054057 (n + 1)

end A054057

/-! ## A054057.P4403304178078258457

`A343080(A054796(n+1))`
-/

namespace A054057.P4403304178078258457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343080 (A054796 (n + 1)).toNat

end

end A054057.P4403304178078258457

namespace A054057

/-- `A343080(A054796(n+1))` -/
def P4403304178078258457.Spec : Prop :=
  ∀ n, P4403304178078258457.a n = A054057 (n + 1)

end A054057

/-! ## A054057.P17843695133980350685

`A345499(A052293(n+1))`
-/

namespace A054057.P17843695133980350685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345499 (A052293 (n + 1)).toNat

end

end A054057.P17843695133980350685

namespace A054057

/-- `A345499(A052293(n+1))` -/
def P17843695133980350685.Spec : Prop :=
  ∀ n, P17843695133980350685.a n = A054057 (n + 1)

end A054057

/-!
# A054058: Inverse Moebius transform of A000031 (starting at term 0).

The programs for A054058, the canonical program `A054058.P1941898693570638909` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054058 has offset 0).

The definition of A054058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054058.P1941898693570638909

`∑{d}[n+1, A000031(#-1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054058

/-- `∑{d}[n+1, A000031(#-1)]` -/
def P1941898693570638909.Spec : Prop :=
  ∀ n, P1941898693570638909.a n = A054058 n

theorem P1941898693570638909.correct : P1941898693570638909.Spec := by
  intro n
  simp only [A054058]

end A054058

/-! ## A054058.P11061370843430252078

`∑{d}[n+1, A000005(#)*A054079((n+1)/#-1)]`
-/

namespace A054058.P11061370843430252078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054058.P11061370843430252078

namespace A054058

/-- `∑{d}[n+1, A000005(#)*A054079((n+1)/#-1)]` -/
def P11061370843430252078.Spec : Prop :=
  ∀ n, P11061370843430252078.a n = A054058 n

end A054058

/-!
# A054059: Least k for which the integers floor(k*arctan(m)) for m=1,2,...,n are distinct.

The programs for A054059, there is no canonical definition to state claims against.
-/

/-! ## A054059.P15083520379606480162

`A111284(A008814(n))-A008481(A093858(n))`
-/

namespace A054059.P15083520379606480162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A008814 n).toNat - A008481 (A093858 n).toNat

end

end A054059.P15083520379606480162

/-!
# A054060: Least k for which the integers floor(k*(Pi/2 - arctan(m))) for m=1,2,...,n are distinct.

The programs for A054060, there is no canonical definition to state claims against.
-/

/-! ## A054060.P5768301971265308801

`A083479(A001000(n+2))`
-/

namespace A054060.P5768301971265308801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A001000 (n + 2)).toNat

end

end A054060.P5768301971265308801

/-! ## A054060.P11190702419986799817

`A083479(A071111(n+2))`
-/

namespace A054060.P11190702419986799817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A071111 (n + 2)).toNat

end

end A054060.P11190702419986799817

/-! ## A054060.P8514744850483085458

`A033638(∑[2-A240025(n)])`
-/

namespace A054060.P8514744850483085458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054060.P8514744850483085458

/-! ## A054060.P16675582233999044437

`A033638(A123663(n+1)+1)`
-/

namespace A054060.P16675582233999044437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A123663 (n + 1) + 1).toNat

end

end A054060.P16675582233999044437

/-! ## A054060.P2783159724566960771

`A057427(n)+A043548(n+1)`
-/

namespace A054060.P2783159724566960771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A043548 (n + 1)

end

end A054060.P2783159724566960771

/-!
# A054061: Least k for which the integers Floor(k/(m*(m+1))) for m=1,2,...,n are distinct.

The programs for A054061, there is no canonical definition to state claims against.
-/

/-! ## A054061.P7284789728938535786

`A036453(n+1)*A054064(n+1)`
-/

namespace A054061.P7284789728938535786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A054064 (n + 1)

end

end A054061.P7284789728938535786

/-! ## A054061.P17658098085523899439

`A040001(2*n)*A054064(n+1)`
-/

namespace A054061.P17658098085523899439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A054064 (n + 1)

end

end A054061.P17658098085523899439

/-! ## A054061.P10201006448905354514

`A054064(n+1)*A162514(C(5, n²))`
-/

namespace A054061.P10201006448905354514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054064 (n + 1) * A162514 (Nat.choose 5 (n ^ 2))

end

end A054061.P10201006448905354514

/-! ## A054061.P16221089039959606267

`record[A040001(n)*A054064(A008619(n))]`
-/

namespace A054061.P16221089039959606267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A054064 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054061.P16221089039959606267

/-! ## A054061.P11826094540194584619

`A020639(A004277(n))*A054064(n+1)`
-/

namespace A054061.P11826094540194584619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A054064 (n + 1)

end

end A054061.P11826094540194584619

/-! ## A054061.P16355655176970404270

`A020639(A008458(n))*A054064(n+1)`
-/

namespace A054061.P16355655176970404270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A054064 (n + 1)

end

end A054061.P16355655176970404270

/-! ## A054061.P12169339016085442613

`A000034(A000040(n+1))*A054064(n+1)`
-/

namespace A054061.P12169339016085442613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000040 (n + 1)).toNat * A054064 (n + 1)

end

end A054061.P12169339016085442613

/-! ## A054061.P5573317251077373882

`A000005(A008578(n+1))*A054064(n+1)`
-/

namespace A054061.P5573317251077373882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A054064 (n + 1)

end

end A054061.P5573317251077373882

/-! ## A054061.P10923160495182418967

`A020639(A001223(n+1))*A054064(n+1)`
-/

namespace A054061.P10923160495182418967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A054064 (n + 1)

end

end A054061.P10923160495182418967

/-! ## A054061.P15590559839040429288

`A000122(n²)*A054064(n+1)`
-/

namespace A054061.P15590559839040429288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A054064 (n + 1)

end

end A054061.P15590559839040429288

/-! ## A054061.P4157616606672902083

`A014963(A193432(n²))*A054064(n+1)`
-/

namespace A054061.P4157616606672902083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A193432 (n ^ 2)).toNat * A054064 (n + 1)

end

end A054061.P4157616606672902083

/-!
# A054063: Least k for which the integers Floor(k/(log(m+1))) for m=1,2,...,n are distinct.

The programs for A054063, there is no canonical definition to state claims against.
-/

/-! ## A054063.P4677003145317830191

`A286485(A374760(n)%A053709(n+1))`
-/

namespace A054063.P4677003145317830191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286485 (Int.tmod (A374760 n) (A053709 (n + 1))).toNat

end

end A054063.P4677003145317830191

/-! ## A054063.P3629200024448678701

`A286485(A374760(n))%A374780(2*(n+2))`
-/

namespace A054063.P3629200024448678701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286485 (A374760 n).toNat) (A374780 (2 * (n + 2)))

end

end A054063.P3629200024448678701

/-!
# A054064: Least k for which the integers floor(2k/(m*(m+1))) for m=1,2,...,n are distinct.

The programs for A054064, there is no canonical definition to state claims against.
-/

/-! ## A054064.P7104598332593340971

`ceil(A054061(n+1)/2)`
-/

namespace A054064.P7104598332593340971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054061 (n + 1) : ℚ) / 2⌉

end

end A054064.P7104598332593340971

/-! ## A054064.P9633031881504709725

`A054061(n+1)/A036453(n+1)`
-/

namespace A054064.P9633031881504709725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A054064.P9633031881504709725

/-! ## A054064.P6143924860345864607

`A054061(n+1)/A040001(2*n)`
-/

namespace A054064.P6143924860345864607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A054064.P6143924860345864607

/-! ## A054064.P11811906661104719841

`A054061(n+1)/A020639(A008458(n))`
-/

namespace A054064.P11811906661104719841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A054064.P11811906661104719841

/-! ## A054064.P8360900524654070465

`A054061(n+1)/A000034(A000040(n+1))`
-/

namespace A054064.P8360900524654070465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A000034 (A000040 (n + 1)).toNat : ℚ)

end

end A054064.P8360900524654070465

/-! ## A054064.P16856772470955029599

`A054061(n+1)/A001221(A001749(n+1))`
-/

namespace A054064.P16856772470955029599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A001221 (A001749 (n + 1)).toNat : ℚ)

end

end A054064.P16856772470955029599

/-! ## A054064.P11682015985580882016

`A054061(n+1)/A000005(A008578(n+1))`
-/

namespace A054064.P11682015985580882016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A054064.P11682015985580882016

/-! ## A054064.P5150529423044693776

`A054061(n+1)/A020639(A001223(n+1))`
-/

namespace A054064.P5150529423044693776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)

end

end A054064.P5150529423044693776

/-! ## A054064.P14550396062886889668

`A054061(n+1)/A020639(A006093(n+1))`
-/

namespace A054064.P14550396062886889668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A054064.P14550396062886889668

/-! ## A054064.P10025098478910714341

`A054061(n+1)/A001222(2*A006530(n+1))`
-/

namespace A054064.P10025098478910714341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A001222 (2 * A006530 (n + 1)).toNat : ℚ)

end

end A054064.P10025098478910714341

/-! ## A054064.P12873514399796635685

`A054061(n+1)/A020639(Δ[A054061(n+1)])`
-/

namespace A054064.P12873514399796635685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054061 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054061 (n + 1) : ℚ) / (A020639 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A054064.P12873514399796635685

/-!
# A054065: Fractal sequence induced by tau: for k >= 1, let p(k) be the permutation of 1,2,...,k obtained by ordering the fractional parts {h*tau} for h=1,2,...,k; then juxtapose p(1),p(2),p(3),...

The programs for A054065, there is no canonical definition to state claims against.
-/

/-! ## A054065.P2037361607887738495

`A002260(A054068(n+1))`
-/

namespace A054065.P2037361607887738495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A054068 (n + 1)).toNat

end

end A054065.P2037361607887738495

/-! ## A054065.P5703550938309908009

`A054068(n+1)-A057944(n)`
-/

namespace A054065.P5703550938309908009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) - A057944 n

end

end A054065.P5703550938309908009

/-! ## A054065.P873893589095115073

`A054068(n+1)+n-A061885(n)`
-/

namespace A054065.P873893589095115073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + ((n : ℤ) - A061885 n)

end

end A054065.P873893589095115073

/-! ## A054065.P14526931189313877544

`A054068(n+1)-A000217(A003056(n))`
-/

namespace A054065.P14526931189313877544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) - A000217 (A003056 n).toNat

end

end A054065.P14526931189313877544

/-! ## A054065.P8195707092342855817

`A054068(n+1)-A001971(A131507(n))`
-/

namespace A054065.P8195707092342855817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) - A001971 (A131507 n).toNat

end

end A054065.P8195707092342855817

/-! ## A054065.P971297431502473208

`A054068(n+1)+A054073(n+1)-A054076(n+1)`
-/

namespace A054065.P971297431502473208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A054073 (n + 1) - A054076 (n + 1))

end

end A054065.P971297431502473208

/-! ## A054065.P17560725645699928349

`A194832(∑[char[∑[n]]]²-n)`
-/

namespace A054065.P17560725645699928349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A054065.P17560725645699928349

/-! ## A054065.P10333136823748698438

`A194832(A038722(n+1))%(n+2)`
-/

namespace A054065.P10333136823748698438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194832 (A038722 (n + 1)).toNat) (n + 2 : ℤ)

end

end A054065.P10333136823748698438

/-! ## A054065.P15550221833982399733

`A194834(A038722(n+1))-A057944(n)`
-/

namespace A054065.P15550221833982399733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (A038722 (n + 1)).toNat - A057944 n

end

end A054065.P15550221833982399733

/-!
# A054066: Position of n-th 1 in A054065.

The programs for A054066, the canonical program `A054066.P1800234531009967702` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054066 has offset 1).

The definition of A054066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054066.P15100939463513943868

`ceil(∑[ϕ-1+n])`
-/

namespace A054066.P15100939463513943868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - 1 + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A054066.P15100939463513943868

namespace A054066

/-- `ceil(∑[ϕ-1+n])` -/
def P15100939463513943868.Spec : Prop :=
  ∀ n, P15100939463513943868.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P14403450628227139286

`floor(ϕ*(n+1))+C(n, 2)`
-/

namespace A054066.P14403450628227139286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (Nat.choose n 2 : ℤ)

end

end A054066.P14403450628227139286

namespace A054066

/-- `floor(ϕ*(n+1))+C(n, 2)` -/
def P14403450628227139286.Spec : Prop :=
  ∀ n, P14403450628227139286.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P4256214726137789123

`floor(∑[gcd(n, 2*n)+ϕ]-n)`
-/

namespace A054066.P4256214726137789123
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)⌋

end

end A054066.P4256214726137789123

namespace A054066

/-- `floor(∑[gcd(n, 2*n)+ϕ]-n)` -/
def P4256214726137789123.Spec : Prop :=
  ∀ n, P4256214726137789123.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P482370248472121871

`∑[val(Δ[ceil(n*ϕ²)], 3)+n]`
-/

namespace A054066.P482370248472121871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054066.P482370248472121871

namespace A054066

/-- `∑[val(Δ[ceil(n*ϕ²)], 3)+n]` -/
def P482370248472121871.Spec : Prop :=
  ∀ n, (P482370248472121871.a n : ℤ) = A054066 (n + 1)

end A054066

/-! ## A054066.P17247300487782341943

`∑[1-dr(Δ[floor(n/ϕ²)])+n]`
-/

namespace A054066.P17247300487782341943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054066.P17247300487782341943

namespace A054066

/-- `∑[1-dr(Δ[floor(n/ϕ²)])+n]` -/
def P17247300487782341943.Spec : Prop :=
  ∀ n, P17247300487782341943.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P16208252872468127821

`C(n+2, 2)-floor((n+1)/ϕ²)`
-/

namespace A054066.P16208252872468127821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - ⌊(n + 1 : ℝ) / Real.goldenRatio ^ 2⌋

end

end A054066.P16208252872468127821

namespace A054066

/-- `C(n+2, 2)-floor((n+1)/ϕ²)` -/
def P16208252872468127821.Spec : Prop :=
  ∀ n, P16208252872468127821.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P9099963725547767611

`floor(∑[C(2, n+2)+n-1+ϕ])`
-/

namespace A054066.P9099963725547767611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℝ) + (((n : ℤ) - 1 : ℝ) + Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054066.P9099963725547767611

namespace A054066

/-- `floor(∑[C(2, n+2)+n-1+ϕ])` -/
def P9099963725547767611.Spec : Prop :=
  ∀ n, P9099963725547767611.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P13118465119307414028

`lcm(n, n+1)-floor(∑[n+1-ϕ])`
-/

namespace A054066.P13118465119307414028
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054066.P13118465119307414028

namespace A054066

/-- `lcm(n, n+1)-floor(∑[n+1-ϕ])` -/
def P13118465119307414028.Spec : Prop :=
  ∀ n, P13118465119307414028.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P16679689055745114209

`floor(∑[n-1+ϕ]+and(1, 2*n+1))`
-/

namespace A054066.P16679689055745114209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (2 * n + 1) : ℝ)⌋

end

end A054066.P16679689055745114209

namespace A054066

/-- `floor(∑[n-1+ϕ]+and(1, 2*n+1))` -/
def P16679689055745114209.Spec : Prop :=
  ∀ n, P16679689055745114209.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P1624761719952333319

`floor(ϕ*(n+1))%(n+1)+∑[n]+1`
-/

namespace A054066.P1624761719952333319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ (n + 1 : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A054066.P1624761719952333319

namespace A054066

/-- `floor(ϕ*(n+1))%(n+1)+∑[n]+1` -/
def P1624761719952333319.Spec : Prop :=
  ∀ n, P1624761719952333319.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P9560208260918592156

`floor(∑[n-1+ϕ]+gcd(n+1, n+2))`
-/

namespace A054066.P9560208260918592156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd (n + 1) (n + 2) : ℝ)⌋

end

end A054066.P9560208260918592156

namespace A054066

/-- `floor(∑[n-1+ϕ]+gcd(n+1, n+2))` -/
def P9560208260918592156.Spec : Prop :=
  ∀ n, P9560208260918592156.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P4146865792389509337

`∑[A114986(n)+n]`
-/

namespace A054066.P4146865792389509337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054066.P4146865792389509337

namespace A054066

/-- `∑[A114986(n)+n]` -/
def P4146865792389509337.Spec : Prop :=
  ∀ n, P4146865792389509337.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P2847560543306462792

`∑[char[A066096(n)]+n]`
-/

namespace A054066.P2847560543306462792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054066.P2847560543306462792

namespace A054066

/-- `∑[char[A066096(n)]+n]` -/
def P2847560543306462792.Spec : Prop :=
  ∀ n, (P2847560543306462792.a n : ℤ) = A054066 (n + 1)

end A054066

/-! ## A054066.P15823878521365533648

`∑[A120613(n+1)+1]`
-/

namespace A054066.P15823878521365533648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054066.P15823878521365533648

namespace A054066

/-- `∑[A120613(n+1)+1]` -/
def P15823878521365533648.Spec : Prop :=
  ∀ n, P15823878521365533648.a n = A054066 (n + 1)

end A054066

/-! ## A054066.P1800234531009967702

`∑[n]+A005206(n)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054066

/-- `∑[n]+A005206(n)+1` -/
def P1800234531009967702.Spec : Prop :=
  ∀ n, P1800234531009967702.a n = A054066 (n + 1)

theorem P1800234531009967702.correct : P1800234531009967702.Spec := by
  intro n
  simp only [A054066, Nat.add_sub_cancel]

end A054066

/-! ## A054066.P15538019111579236465

`A019446(n+1)+∑[n]`
-/

namespace A054066.P15538019111579236465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054066.P15538019111579236465

namespace A054066

/-- `A019446(n+1)+∑[n]` -/
def P15538019111579236465.Spec : Prop :=
  ∀ n, P15538019111579236465.a n = A054066 (n + 1)

theorem P15538019111579236465.correct : P15538019111579236465.Spec := by
  intro n
  simp only [A054066, Nat.add_sub_cancel, A054066.P15538019111579236465.f1, A054066.P15538019111579236465.a, A054066.P1800234531009967702.f1, A054066.P1800234531009967702.a, A005206, A005206.P7910201692454662432.a, A019446, A019446.P15799228485202285486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054066

/-! ## A054066.P9680719710101705653

`∑[A096270(n)+n]+1`
-/

namespace A054066.P9680719710101705653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054066.P9680719710101705653

namespace A054066

/-- `∑[A096270(n)+n]+1` -/
def P9680719710101705653.Spec : Prop :=
  ∀ n, P9680719710101705653.a n = A054066 (n + 1)

end A054066

/-!
# A054067: Position of first appearance of n in A054065.

The programs for A054067, the canonical program `A054067.P7097243798565487157` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054067 has offset 1).

The definition of A054067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054067.P7097243798565487157

`A019587(n+1)+∑[n]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054067

/-- `A019587(n+1)+∑[n]` -/
def P7097243798565487157.Spec : Prop :=
  ∀ n, P7097243798565487157.a n = A054067 (n + 1)

theorem P7097243798565487157.correct : P7097243798565487157.Spec := by
  intro n
  simp only [A054067, Nat.add_sub_cancel]

end A054067

/-! ## A054067.P9248016391974222279

`A194734(n+1)+∑[n]+1`
-/

namespace A054067.P9248016391974222279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194734 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A054067.P9248016391974222279

namespace A054067

/-- `A194734(n+1)+∑[n]+1` -/
def P9248016391974222279.Spec : Prop :=
  ∀ n, P9248016391974222279.a n = A054067 (n + 1)

theorem P9248016391974222279.correct : P9248016391974222279.Spec := by
  intro n
  simp only [A054067, Nat.add_sub_cancel, A054067.P9248016391974222279.f1, A054067.P9248016391974222279.a, A054067.P7097243798565487157.f1, A054067.P7097243798565487157.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A194734, A194734.P3466795351290559112.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054067

/-! ## A054067.P10373976373920970766

`∑[n+1]-A194733(n+1)`
-/

namespace A054067.P10373976373920970766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194733 (n + 1)

end

end A054067.P10373976373920970766

namespace A054067

/-- `∑[n+1]-A194733(n+1)` -/
def P10373976373920970766.Spec : Prop :=
  ∀ n, P10373976373920970766.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P5524514470350670824

`∑[n+1]+1-A019588(n+1)`
-/

namespace A054067.P5524514470350670824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A019588 (n + 1))

end

end A054067.P5524514470350670824

namespace A054067

/-- `∑[n+1]+1-A019588(n+1)` -/
def P5524514470350670824.Spec : Prop :=
  ∀ n, P5524514470350670824.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P6846011059526472743

`A019587(n+1)+A000124(n)-1`
-/

namespace A054067.P6846011059526472743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (n + 1) + A000124 n - 1

end

end A054067.P6846011059526472743

namespace A054067

/-- `A019587(n+1)+A000124(n)-1` -/
def P6846011059526472743.Spec : Prop :=
  ∀ n, P6846011059526472743.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P16029536826251724080

`A000096(n)+2-A019588(n+1)`
-/

namespace A054067.P16029536826251724080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 2 - A019588 (n + 1)

end

end A054067.P16029536826251724080

namespace A054067

/-- `A000096(n)+2-A019588(n+1)` -/
def P16029536826251724080.Spec : Prop :=
  ∀ n, P16029536826251724080.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P17676785477697363682

`A000124(n+1)-A019588(n+1)`
-/

namespace A054067.P17676785477697363682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - A019588 (n + 1)

end

end A054067.P17676785477697363682

namespace A054067

/-- `A000124(n+1)-A019588(n+1)` -/
def P17676785477697363682.Spec : Prop :=
  ∀ n, P17676785477697363682.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P2287900672663431392

`A131174(2*n+1)+A019587(n+1)`
-/

namespace A054067.P2287900672663431392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 (2 * n + 1) + A019587 (n + 1)

end

end A054067.P2287900672663431392

namespace A054067

/-- `A131174(2*n+1)+A019587(n+1)` -/
def P2287900672663431392.Spec : Prop :=
  ∀ n, P2287900672663431392.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P18234380198004977285

`record[A194832(n+1)²-n]`
-/

namespace A054067.P18234380198004977285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054067.P18234380198004977285

namespace A054067

/-- `record[A194832(n+1)²-n]` -/
def P18234380198004977285.Spec : Prop :=
  ∀ n, P18234380198004977285.a n = A054067 (n + 1)

end A054067

/-! ## A054067.P10082145845024382466

`A054069(∑[n+1])`
-/

namespace A054067.P10082145845024382466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054067.P10082145845024382466

namespace A054067

/-- `A054069(∑[n+1])` -/
def P10082145845024382466.Spec : Prop :=
  ∀ n, P10082145845024382466.a n = A054067 (n + 1)

end A054067

/-!
# A054068: Permutation of N = set of natural numbers: a(n)+C(k,2), where a=A054065 and k=Floor((1+sqrt(8n-3))/2).

The programs for A054068, there is no canonical definition to state claims against.
-/

/-! ## A054068.P6394846111946928648

`A057944(n)+A054065(n+1)`
-/

namespace A054068.P6394846111946928648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A054065 (n + 1)

end

end A054068.P6394846111946928648

/-! ## A054068.P2118376031720617370

`A054065(n+1)+n-A002262(n)`
-/

namespace A054068.P2118376031720617370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + ((n : ℤ) - A002262 n)

end

end A054068.P2118376031720617370

/-! ## A054068.P13160779324794681002

`A054065(n+1)+A000217(comp[C(n, 2)]-(n+2))`
-/

namespace A054068.P13160779324794681002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 2))

end

end A054068.P13160779324794681002

/-! ## A054068.P12029246857769946037

`A054065(n+1)+A000217(A003056(n))`
-/

namespace A054068.P12029246857769946037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + A000217 (A003056 n).toNat

end

end A054068.P12029246857769946037

/-! ## A054068.P11208085163595143238

`A054065(n+1)+A001971(A131507(n))`
-/

namespace A054068.P11208085163595143238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + A001971 (A131507 n).toNat

end

end A054068.P11208085163595143238

/-! ## A054068.P16537552124387682576

`A054065(n+1)+A000217(∑[A010054(n)]-1)`
-/

namespace A054068.P16537552124387682576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A054068.P16537552124387682576

/-! ## A054068.P12446774827769794363

`A054065(n+1)+A000217(A002024(n+1)-1)`
-/

namespace A054068.P12446774827769794363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + A000217 (A002024 (n + 1) - 1).toNat

end

end A054068.P12446774827769794363

/-! ## A054068.P9880102653853800610

`A054065(n+1)+A054076(n+1)-A054073(n+1)`
-/

namespace A054068.P9880102653853800610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A054076 (n + 1) - A054073 (n + 1))

end

end A054068.P9880102653853800610

/-! ## A054068.P3214882498966971213

`A054065(n+1)+A194834(n+1)-A194832(n+1)`
-/

namespace A054068.P3214882498966971213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A194834 (n + 1) - A194832 (n + 1))

end

end A054068.P3214882498966971213

/-! ## A054068.P12668543339282997575

`A054065(n+1)+A194837(n+1)-A194835(n+1)`
-/

namespace A054068.P12668543339282997575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A194837 (n + 1) - A194835 (n + 1))

end

end A054068.P12668543339282997575

/-! ## A054068.P12330668719294024621

`A054065(n+1)+A194843(n+1)-A194841(n+1)`
-/

namespace A054068.P12330668719294024621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A194843 (n + 1) - A194841 (n + 1))

end

end A054068.P12330668719294024621

/-! ## A054068.P8664497347521012689

`A054065(n+1)+A194904(n+1)-A194902(n+1)`
-/

namespace A054068.P8664497347521012689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A194904 (n + 1) - A194902 (n + 1))

end

end A054068.P8664497347521012689

/-! ## A054068.P3527628571654804756

`A054065(n+1)+A194910(n+1)-A194908(n+1)`
-/

namespace A054068.P3527628571654804756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A194910 (n + 1) - A194908 (n + 1))

end

end A054068.P3527628571654804756

/-! ## A054068.P8464446605401214674

`A054065(n+1)+A194913(n+1)-A194911(n+1)`
-/

namespace A054068.P8464446605401214674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A194913 (n + 1) - A194911 (n + 1))

end

end A054068.P8464446605401214674

/-! ## A054068.P4794279825386724449

`A054065(n+1)+A000217(A103823(n)+A103822(n))`
-/

namespace A054068.P4794279825386724449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + A000217 (A103823 n + A103822 n).toNat

end

end A054068.P4794279825386724449

/-! ## A054068.P6969025239753474815

`A194834(A038722(n+1))`
-/

namespace A054068.P6969025239753474815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (A038722 (n + 1)).toNat

end

end A054068.P6969025239753474815

/-! ## A054068.P8840953203688073347

`A194834(A194836(A054076(n+1)))`
-/

namespace A054068.P8840953203688073347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (A194836 (A054076 (n + 1)).toNat).toNat

end

end A054068.P8840953203688073347

/-! ## A054068.P12450385945524796645

`A194834(A054069(A194834(n+1)))`
-/

namespace A054068.P12450385945524796645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (A054069 (A194834 (n + 1)).toNat).toNat

end

end A054068.P12450385945524796645

/-! ## A054068.P10998091249387329000

`A194834(A194842(A194840(n+1)))`
-/

namespace A054068.P10998091249387329000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (A194842 (A194840 (n + 1)).toNat).toNat

end

end A054068.P10998091249387329000

/-! ## A054068.P18159107703838291579

`A194834(A194909(A194907(n+1)))`
-/

namespace A054068.P18159107703838291579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (A194909 (A194907 (n + 1)).toNat).toNat

end

end A054068.P18159107703838291579

/-!
# A054069: Inverse of the permutation A054068 of natural numbers.

The programs for A054069, there is no canonical definition to state claims against.
-/

/-! ## A054069.P3562931565630136531

`∑[char[∑[n]]]²+1-A194833(n+1)`
-/

namespace A054069.P3562931565630136531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) - A194833 (n + 1)

end

end A054069.P3562931565630136531

/-! ## A054069.P14856562285292219299

`A038722(A194833(n+1))`
-/

namespace A054069.P14856562285292219299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194833 (n + 1)).toNat

end

end A054069.P14856562285292219299

/-! ## A054069.P4370901663340843374

`abs(A194833(n+1)-A265129(n+1))`
-/

namespace A054069.P4370901663340843374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194833 (n + 1) - A265129 (n + 1)|

end

end A054069.P4370901663340843374

/-! ## A054069.P642546770087548199

`A093995(n+1)+1-A194833(n+1)`
-/

namespace A054069.P642546770087548199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A194833 (n + 1))

end

end A054069.P642546770087548199

/-! ## A054069.P9665607053645473553

`A002024(n+1)²+1-A194833(n+1)`
-/

namespace A054069.P9665607053645473553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A194833 (n + 1))

end

end A054069.P9665607053645473553

/-! ## A054069.P4801156037773942251

`A194839(n+1)+A194842(n+1)-A194833(n+1)`
-/

namespace A054069.P4801156037773942251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194839 (n + 1) + (A194842 (n + 1) - A194833 (n + 1))

end

end A054069.P4801156037773942251

/-! ## A054069.P3421639567796247065

`A194878(n+1)+A194897(n+1)-A194833(n+1)`
-/

namespace A054069.P3421639567796247065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194878 (n + 1) + (A194897 (n + 1) - A194833 (n + 1))

end

end A054069.P3421639567796247065

/-! ## A054069.P14791833065166615609

`A061579(A194833(n+1)-1)+1`
-/

namespace A054069.P14791833065166615609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194833 (n + 1) - 1).toNat + 1

end

end A054069.P14791833065166615609

/-! ## A054069.P9399019338430443500

`A057944(n)+A004736(A194833(n+1))`
-/

namespace A054069.P9399019338430443500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194833 (n + 1)).toNat

end

end A054069.P9399019338430443500

/-! ## A054069.P13035215040688533795

`A093995(n+1)-A023443(A194833(n+1))`
-/

namespace A054069.P13035215040688533795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194833 (n + 1)).toNat

end

end A054069.P13035215040688533795

/-!
# A054070: Number of k<=n such that a(k)>n, where a is the permutation A054068 of N.

The programs for A054070, there is no canonical definition to state claims against.
-/

/-! ## A054070.P16996699321307030887

`A134451((A247506(n)^5)%A099458(n))`
-/

namespace A054070.P16996699321307030887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (Int.tmod (A247506 n ^ 5) (A099458 n)).toNat

end

end A054070.P16996699321307030887

/-! ## A054070.P8610099903339237544

`(A294220(n)%Δ[A278792(n+3)])%3`
-/

namespace A054070.P8610099903339237544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278792 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A294220 n) (f1 (n + 1) - f1 n)) 3

end

end A054070.P8610099903339237544

/-! ## A054070.P9665271706169440465

`A214566(A209344(n+2))`
-/

namespace A054070.P9665271706169440465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A209344 (n + 2)).toNat

end

end A054070.P9665271706169440465

/-! ## A054070.P14291741464346457512

`A214566(A209485(n+2))`
-/

namespace A054070.P14291741464346457512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A209485 (n + 2)).toNat

end

end A054070.P14291741464346457512

/-!
# A054071: Position of 1 in the permutation of 1,2,...,n obtained by ordering the fractional parts {h*sqrt(2)} for h=1,2,...,n.

The programs for A054071, the canonical program `A054071.P11933654067822100257` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054071 has offset 1).

The definition of A054071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054071.P17355031316779137091

`ceil((n+1)/(1+sqrt(2)))`
-/

namespace A054071.P17355031316779137091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (1 + Real.sqrt (2 : ℝ))⌉

end

end A054071.P17355031316779137091

namespace A054071

/-- `ceil((n+1)/(1+sqrt(2)))` -/
def P17355031316779137091.Spec : Prop :=
  ∀ n, P17355031316779137091.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P15478195571611974012

`∑[3%Δ[ceil(n*sqrt(2))]]`
-/

namespace A054071.P15478195571611974012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054071.P15478195571611974012

namespace A054071

/-- `∑[3%Δ[ceil(n*sqrt(2))]]` -/
def P15478195571611974012.Spec : Prop :=
  ∀ n, P15478195571611974012.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P4088405633311638608

`floor((n+1)*sqrt(2))%(n+1)+1`
-/

namespace A054071.P4088405633311638608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ (n + 1 : ℤ) + 1

end

end A054071.P4088405633311638608

namespace A054071

/-- `floor((n+1)*sqrt(2))%(n+1)+1` -/
def P4088405633311638608.Spec : Prop :=
  ∀ n, P4088405633311638608.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P11933654067822100257

`1-floor((a(a(n-1)-1)-n)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054071

/-- `1-floor((a(a(n-1)-1)-n)/2)` -/
def P11933654067822100257.Spec : Prop :=
  ∀ n, P11933654067822100257.a n = A054071 (n + 1)

theorem P11933654067822100257.correct : P11933654067822100257.Spec := by
  intro n
  simp only [A054071, Nat.add_sub_cancel]

end A054071

/-! ## A054071.P8262483691423567720

`∑[1-A144611(n)]`
-/

namespace A054071.P8262483691423567720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054071.P8262483691423567720

namespace A054071

/-- `∑[1-A144611(n)]` -/
def P8262483691423567720.Spec : Prop :=
  ∀ n, P8262483691423567720.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P6419193381255135214

`∑[A097509(n)-2]`
-/

namespace A054071.P6419193381255135214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054071.P6419193381255135214

namespace A054071

/-- `∑[A097509(n)-2]` -/
def P6419193381255135214.Spec : Prop :=
  ∀ n, P6419193381255135214.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P1787512836805502632

`A001951(n+1)-n`
-/

namespace A054071.P1787512836805502632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) - (n : ℤ)

end

end A054071.P1787512836805502632

namespace A054071

/-- `A001951(n+1)-n` -/
def P1787512836805502632.Spec : Prop :=
  ∀ n, P1787512836805502632.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P12494007638980683488

`∑[A159684(abs(1-n))]`
-/

namespace A054071.P12494007638980683488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054071.P12494007638980683488

namespace A054071

/-- `∑[A159684(abs(1-n))]` -/
def P12494007638980683488.Spec : Prop :=
  ∀ n, P12494007638980683488.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P14632146319981256744

`∑[char[A001951(n)+n]]`
-/

namespace A054071.P14632146319981256744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054071.P14632146319981256744

namespace A054071

/-- `∑[char[A001951(n)+n]]` -/
def P14632146319981256744.Spec : Prop :=
  ∀ n, (P14632146319981256744.a n : ℤ) = A054071 (n + 1)

end A054071

/-! ## A054071.P6259733154819953513

`∑[A188037(n+1)]+1`
-/

namespace A054071.P6259733154819953513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054071.P6259733154819953513

namespace A054071

/-- `∑[A188037(n+1)]+1` -/
def P6259733154819953513.Spec : Prop :=
  ∀ n, P6259733154819953513.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P11437533559810913428

`sqrt(A087055(n+1))-n`
-/

namespace A054071.P11437533559810913428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (n + 1) : ℝ) - (n : ℝ)

end

end A054071.P11437533559810913428

namespace A054071

/-- `sqrt(A087055(n+1))-n` -/
def P11437533559810913428.Spec : Prop :=
  ∀ n, P11437533559810913428.a n = (A054071 (n + 1) : ℝ)

end A054071

/-! ## A054071.P6913898902933517013

`A054074(n+1)-∑[n]`
-/

namespace A054071.P6913898902933517013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054074 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054071.P6913898902933517013

namespace A054071

/-- `A054074(n+1)-∑[n]` -/
def P6913898902933517013.Spec : Prop :=
  ∀ n, P6913898902933517013.a n = A054071 (n + 1)

theorem P6913898902933517013.correct : P6913898902933517013.Spec := by
  intro n
  simp only [A054071, Nat.add_sub_cancel, A054071.P6913898902933517013.f1, A054071.P6913898902933517013.a, A054071.P11933654067822100257.a, A054074, A054074.P16498759992717157098.f1, A054074.P16498759992717157098.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054071

/-! ## A054071.P5350096844148452894

`∑[char[comp[A003152(n+1)]]]`
-/

namespace A054071.P5350096844148452894
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054071.P5350096844148452894

namespace A054071

/-- `∑[char[comp[A003152(n+1)]]]` -/
def P5350096844148452894.Spec : Prop :=
  ∀ n, (P5350096844148452894.a n : ℤ) = A054071 (n + 1)

end A054071

/-! ## A054071.P14193299701475568305

`1-A074840(n+1)+n`
-/

namespace A054071.P14193299701475568305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074840 (n + 1) + (n : ℤ)

end

end A054071.P14193299701475568305

namespace A054071

/-- `1-A074840(n+1)+n` -/
def P14193299701475568305.Spec : Prop :=
  ∀ n, P14193299701475568305.a n = A054071 (n + 1)

end A054071

/-! ## A054071.P10157677245061033480

`A087057(n+1)-(n+1)`
-/

namespace A054071.P10157677245061033480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) - (n + 1 : ℤ)

end

end A054071.P10157677245061033480

namespace A054071

/-- `A087057(n+1)-(n+1)` -/
def P10157677245061033480.Spec : Prop :=
  ∀ n, P10157677245061033480.a n = A054071 (n + 1)

end A054071

/-!
# A054072: Position of n in the permutation of 1,2,...,n obtained by ordering the fractional parts {h*sqrt(2)} for h=1,2,...,n.

The programs for A054072, the canonical program `A054072.P9099250148289974949` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054072 has offset 1).

The definition of A054072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054072.P9099250148289974949

`A194737(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054072

/-- `A194737(n+1)+1` -/
def P9099250148289974949.Spec : Prop :=
  ∀ n, P9099250148289974949.a n = A054072 (n + 1)

theorem P9099250148289974949.correct : P9099250148289974949.Spec := by
  intro n
  simp only [A054072, Nat.add_sub_cancel]

end A054072

/-! ## A054072.P7444211875567011421

`A054075(n+1)-∑[n]`
-/

namespace A054072.P7444211875567011421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054075 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054072.P7444211875567011421

namespace A054072

/-- `A054075(n+1)-∑[n]` -/
def P7444211875567011421.Spec : Prop :=
  ∀ n, P7444211875567011421.a n = A054072 (n + 1)

theorem P7444211875567011421.correct : P7444211875567011421.Spec := by
  intro n
  simp only [A054072, Nat.add_sub_cancel, A054072.P7444211875567011421.f1, A054072.P7444211875567011421.a, A054072.P9099250148289974949.a, A054075, A054075.P9880067483023913226.f1, A054075.P9880067483023913226.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P16235440681377643956.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054072

/-! ## A054072.P1420088981134598937

`2-A194736(n+1)+n`
-/

namespace A054072.P1420088981134598937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194736 (n + 1) + (n : ℤ)

end

end A054072.P1420088981134598937

namespace A054072

/-- `2-A194736(n+1)+n` -/
def P1420088981134598937.Spec : Prop :=
  ∀ n, P1420088981134598937.a n = A054072 (n + 1)

theorem P1420088981134598937.correct : P1420088981134598937.Spec := by
  intro n
  simp only [A054072, Nat.add_sub_cancel, A054072.P1420088981134598937.a, A054072.P9099250148289974949.a, A194736, A194736.P10753671586819030676.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P16235440681377643956.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054072

/-! ## A054072.P5689130959883905749

`A054071(n+1)+A054075(n+1)-A054074(n+1)`
-/

namespace A054072.P5689130959883905749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1) + (A054075 (n + 1) - A054074 (n + 1))

end

end A054072.P5689130959883905749

namespace A054072

/-- `A054071(n+1)+A054075(n+1)-A054074(n+1)` -/
def P5689130959883905749.Spec : Prop :=
  ∀ n, P5689130959883905749.a n = A054072 (n + 1)

theorem P5689130959883905749.correct : P5689130959883905749.Spec := by
  intro n
  simp only [A054072, Nat.add_sub_cancel, A054072.P5689130959883905749.a, A054072.P9099250148289974949.a, A054071, A054071.P11933654067822100257.a, A054074, A054074.P16498759992717157098.f1, A054074.P16498759992717157098.a, A054075, A054075.P9880067483023913226.f1, A054075.P9880067483023913226.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P16235440681377643956.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054072

/-! ## A054072.P2326045349033213731

`1-A194735(n+1)+n`
-/

namespace A054072.P2326045349033213731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194735 (n + 1) + (n : ℤ)

end

end A054072.P2326045349033213731

namespace A054072

/-- `1-A194735(n+1)+n` -/
def P2326045349033213731.Spec : Prop :=
  ∀ n, P2326045349033213731.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P8959860350141864765

`A194736(A003151(n+1))`
-/

namespace A054072.P8959860350141864765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194736 (A003151 (n + 1)).toNat

end

end A054072.P8959860350141864765

namespace A054072

/-- `A194736(A003151(n+1))` -/
def P8959860350141864765.Spec : Prop :=
  ∀ n, P8959860350141864765.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P1187714586151228486

`A194736(A286666(n+1)+1)`
-/

namespace A054072.P1187714586151228486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194736 (A286666 (n + 1) + 1).toNat

end

end A054072.P1187714586151228486

namespace A054072

/-- `A194736(A286666(n+1)+1)` -/
def P1187714586151228486.Spec : Prop :=
  ∀ n, P1187714586151228486.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P1058658802796700864

`A194736(A187975(n+1))`
-/

namespace A054072.P1058658802796700864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194736 (A187975 (n + 1)).toNat

end

end A054072.P1058658802796700864

namespace A054072

/-- `A194736(A187975(n+1))` -/
def P1058658802796700864.Spec : Prop :=
  ∀ n, P1058658802796700864.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P7621081062940501214

`A002260(A054075(n+1))`
-/

namespace A054072.P7621081062940501214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A054075 (n + 1)).toNat

end

end A054072.P7621081062940501214

namespace A054072

/-- `A002260(A054075(n+1))` -/
def P7621081062940501214.Spec : Prop :=
  ∀ n, P7621081062940501214.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P1601255476903860582

`A054075(n+1)-A054068(A054066(n+1))+1`
-/

namespace A054072.P1601255476903860582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054075 (n + 1) - A054068 (A054066 (n + 1)).toNat + 1

end

end A054072.P1601255476903860582

namespace A054072

/-- `A054075(n+1)-A054068(A054066(n+1))+1` -/
def P1601255476903860582.Spec : Prop :=
  ∀ n, P1601255476903860582.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P8448316715868496432

`A054077(∑[n+1])-∑[n]`
-/

namespace A054072.P8448316715868496432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054077 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A054072.P8448316715868496432

namespace A054072

/-- `A054077(∑[n+1])-∑[n]` -/
def P8448316715868496432.Spec : Prop :=
  ∀ n, P8448316715868496432.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P17064554020026759997

`A054073(A054077(A054077(∑[n+1])))`
-/

namespace A054072.P17064554020026759997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (A054077 (A054077 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A054072.P17064554020026759997

namespace A054072

/-- `A054073(A054077(A054077(∑[n+1])))` -/
def P17064554020026759997.Spec : Prop :=
  ∀ n, P17064554020026759997.a n = A054072 (n + 1)

end A054072

/-! ## A054072.P1258802276346122924

`A194832(A194833(A054077(A000217(n+1))))`
-/

namespace A054072.P1258802276346122924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (A194833 (A054077 (A000217 (n + 1)).toNat).toNat).toNat

end

end A054072.P1258802276346122924

namespace A054072

/-- `A194832(A194833(A054077(A000217(n+1))))` -/
def P1258802276346122924.Spec : Prop :=
  ∀ n, P1258802276346122924.a n = A054072 (n + 1)

end A054072

/-!
# A054073: Fractal sequence induced by sqrt(2): for k >= 1 let p(k) be the permutation of 1,2,...,k obtained by ordering the fractional parts {h*sqrt(2)} for h=1,2,...,k; then juxtapose p(1),p(2),p(3),...

The programs for A054073, there is no canonical definition to state claims against.
-/

/-! ## A054073.P13253787542058124617

`A002260(A054076(n+1))`
-/

namespace A054073.P13253787542058124617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A054076 (n + 1)).toNat

end

end A054073.P13253787542058124617

/-! ## A054073.P15379636281767646333

`A054076(n+1)-A057944(n)`
-/

namespace A054073.P15379636281767646333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) - A057944 n

end

end A054073.P15379636281767646333

/-! ## A054073.P9394613883235151134

`A054076(n+1)+A002262(n)-n`
-/

namespace A054073.P9394613883235151134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A002262 n - (n : ℤ))

end

end A054073.P9394613883235151134

/-! ## A054073.P1158079988460341503

`A054076(n+1)-A000217(A003056(n))`
-/

namespace A054073.P1158079988460341503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) - A000217 (A003056 n).toNat

end

end A054073.P1158079988460341503

/-! ## A054073.P1824984591368472222

`A054076(n+1)-A001971(A131507(n))`
-/

namespace A054073.P1824984591368472222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) - A001971 (A131507 n).toNat

end

end A054073.P1824984591368472222

/-! ## A054073.P2525021489439670491

`A054065(n+1)+A054076(n+1)-A054068(n+1)`
-/

namespace A054073.P2525021489439670491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (n + 1) + (A054076 (n + 1) - A054068 (n + 1))

end

end A054073.P2525021489439670491

/-! ## A054073.P3535000110458104904

`A054076(n+1)+A194832(n+1)-A194834(n+1)`
-/

namespace A054073.P3535000110458104904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194832 (n + 1) - A194834 (n + 1))

end

end A054073.P3535000110458104904

/-! ## A054073.P16904423428146799547

`A054076(n+1)+A194838(n+1)-A194840(n+1)`
-/

namespace A054073.P16904423428146799547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194838 (n + 1) - A194840 (n + 1))

end

end A054073.P16904423428146799547

/-! ## A054073.P12995778671741674635

`A054076(n+1)+A194862(n+1)-A194867(n+1)`
-/

namespace A054073.P12995778671741674635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194862 (n + 1) - A194867 (n + 1))

end

end A054073.P12995778671741674635

/-! ## A054073.P3821907505326203260

`A054076(n+1)+A194865(n+1)-A194864(n+1)`
-/

namespace A054073.P3821907505326203260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194865 (n + 1) - A194864 (n + 1))

end

end A054073.P3821907505326203260

/-! ## A054073.P6947575360401773126

`A054076(n+1)+A194871(n+1)-A194873(n+1)`
-/

namespace A054073.P6947575360401773126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194871 (n + 1) - A194873 (n + 1))

end

end A054073.P6947575360401773126

/-! ## A054073.P18398434881217108962

`A054076(n+1)+A194874(n+1)-A194876(n+1)`
-/

namespace A054073.P18398434881217108962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194874 (n + 1) - A194876 (n + 1))

end

end A054073.P18398434881217108962

/-! ## A054073.P2458401681228126324

`A054076(n+1)+A194877(n+1)-A194879(n+1)`
-/

namespace A054073.P2458401681228126324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194877 (n + 1) - A194879 (n + 1))

end

end A054073.P2458401681228126324

/-! ## A054073.P14040832976740638961

`A054076(n+1)+A194899(n+1)-A194901(n+1)`
-/

namespace A054073.P14040832976740638961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194899 (n + 1) - A194901 (n + 1))

end

end A054073.P14040832976740638961

/-! ## A054073.P14491950482500857430

`A054076(n+1)+A194905(n+1)-A194907(n+1)`
-/

namespace A054073.P14491950482500857430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194905 (n + 1) - A194907 (n + 1))

end

end A054073.P14491950482500857430

/-! ## A054073.P13857519233116306479

`A054076(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A054073.P13857519233116306479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A054073.P13857519233116306479

/-! ## A054073.P10288169342577772663

`A004736(A265129(n+1)-A054076(n+1))`
-/

namespace A054073.P10288169342577772663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A265129 (n + 1) - A054076 (n + 1)).toNat

end

end A054073.P10288169342577772663

/-! ## A054073.P9273399302056302095

`A194862(A194863(A054076(A194867(A194863(n+1)))))`
-/

namespace A054073.P9273399302056302095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (A194863 (A054076 (A194867 (A194863 (n + 1)).toNat).toNat).toNat).toNat

end

end A054073.P9273399302056302095

/-! ## A054073.P16258015707672918204

`A194905(A194906(A054076(A194907(A194906(n+1)))))`
-/

namespace A054073.P16258015707672918204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (A194906 (A054076 (A194907 (A194906 (n + 1)).toNat).toNat).toNat).toNat

end

end A054073.P16258015707672918204

/-! ## A054073.P13781810619677065004

`A194877(A194878(A054076(A194879(A194878(n+1)))))`
-/

namespace A054073.P13781810619677065004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (A194878 (A054076 (A194879 (A194878 (n + 1)).toNat).toNat).toNat).toNat

end

end A054073.P13781810619677065004

/-!
# A054074: Position of n-th 1 in A054073.

The programs for A054074, the canonical program `A054074.P16498759992717157098` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054074 has offset 1).

The definition of A054074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054074.P1866104060393648836

`ceil(∑[sqrt(2)-1+n])`
-/

namespace A054074.P1866104060393648836
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) - 1 + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A054074.P1866104060393648836

namespace A054074

/-- `ceil(∑[sqrt(2)-1+n])` -/
def P1866104060393648836.Spec : Prop :=
  ∀ n, P1866104060393648836.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P5106438093750093176

`floor((n+1)*sqrt(2))+C(n, 2)`
-/

namespace A054074.P5106438093750093176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (Nat.choose n 2 : ℤ)

end

end A054074.P5106438093750093176

namespace A054074

/-- `floor((n+1)*sqrt(2))+C(n, 2)` -/
def P5106438093750093176.Spec : Prop :=
  ∀ n, P5106438093750093176.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P16498759992717157098

`A054071(n+1)+∑[n]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054074

/-- `A054071(n+1)+∑[n]` -/
def P16498759992717157098.Spec : Prop :=
  ∀ n, P16498759992717157098.a n = A054074 (n + 1)

theorem P16498759992717157098.correct : P16498759992717157098.Spec := by
  intro n
  simp only [A054074, Nat.add_sub_cancel]

end A054074

/-! ## A054074.P166916846941517197

`∑[1-A144611(n)+n]`
-/

namespace A054074.P166916846941517197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A144611 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054074.P166916846941517197

namespace A054074

/-- `∑[1-A144611(n)+n]` -/
def P166916846941517197.Spec : Prop :=
  ∀ n, P166916846941517197.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P5179310039412384678

`∑[A097509(n)-2+n]`
-/

namespace A054074.P5179310039412384678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054074.P5179310039412384678

namespace A054074

/-- `∑[A097509(n)-2+n]` -/
def P5179310039412384678.Spec : Prop :=
  ∀ n, P5179310039412384678.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P13294007008879643530

`∑[Δ[A001951(n)]+n]-n`
-/

namespace A054074.P13294007008879643530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054074.P13294007008879643530

namespace A054074

/-- `∑[Δ[A001951(n)]+n]-n` -/
def P13294007008879643530.Spec : Prop :=
  ∀ n, P13294007008879643530.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P13212640725476410793

`∑[A188037(n+1)+n]+1`
-/

namespace A054074.P13212640725476410793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054074.P13212640725476410793

namespace A054074

/-- `∑[A188037(n+1)+n]+1` -/
def P13212640725476410793.Spec : Prop :=
  ∀ n, P13212640725476410793.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P8523737605472302955

`∑[n+1]-A074840(n+1)`
-/

namespace A054074.P8523737605472302955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A074840 (n + 1)

end

end A054074.P8523737605472302955

namespace A054074

/-- `∑[n+1]-A074840(n+1)` -/
def P8523737605472302955.Spec : Prop :=
  ∀ n, P8523737605472302955.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P10841770204541218363

`A087057(n+1)+∑[n-1]`
-/

namespace A054074.P10841770204541218363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054074.P10841770204541218363

namespace A054074

/-- `A087057(n+1)+∑[n-1]` -/
def P10841770204541218363.Spec : Prop :=
  ∀ n, P10841770204541218363.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P505272324918684541

`A080754(n+1)+∑[n-2]`
-/

namespace A054074.P505272324918684541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054074.P505272324918684541

namespace A054074

/-- `A080754(n+1)+∑[n-2]` -/
def P505272324918684541.Spec : Prop :=
  ∀ n, P505272324918684541.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P9763198872398841346

`∑[n+2]-A182770(n+1)`
-/

namespace A054074.P9763198872398841346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A182770 (n + 1)

end

end A054074.P9763198872398841346

namespace A054074

/-- `∑[n+2]-A182770(n+1)` -/
def P9763198872398841346.Spec : Prop :=
  ∀ n, P9763198872398841346.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P8382752158424221710

`∑[n+1-char[A003152(n+1)]]`
-/

namespace A054074.P8382752158424221710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054074.P8382752158424221710

namespace A054074

/-- `∑[n+1-char[A003152(n+1)]]` -/
def P8382752158424221710.Spec : Prop :=
  ∀ n, P8382752158424221710.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P17102800256818147168

`floor((n+1)*sqrt(2))+A000124(n)-(n+1)`
-/

namespace A054074.P17102800256818147168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (A000124 n - (n + 1 : ℤ))

end

end A054074.P17102800256818147168

namespace A054074

/-- `floor((n+1)*sqrt(2))+A000124(n)-(n+1)` -/
def P17102800256818147168.Spec : Prop :=
  ∀ n, P17102800256818147168.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P10670329383311778818

`ceil((n+1)*sqrt(2))+A000217(n)-(n+1)`
-/

namespace A054074.P10670329383311778818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ + (A000217 n - (n + 1 : ℤ))

end

end A054074.P10670329383311778818

namespace A054074

/-- `ceil((n+1)*sqrt(2))+A000217(n)-(n+1)` -/
def P10670329383311778818.Spec : Prop :=
  ∀ n, P10670329383311778818.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P3899231726317296780

`A395101(n+1)+A152947(n+1)`
-/

namespace A054074.P3899231726317296780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1) + A152947 (n + 1)

end

end A054074.P3899231726317296780

namespace A054074

/-- `A395101(n+1)+A152947(n+1)` -/
def P3899231726317296780.Spec : Prop :=
  ∀ n, P3899231726317296780.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P13038192299341415856

`A167544(n+4)+A080754(n+1)`
-/

namespace A054074.P13038192299341415856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167544 (n + 4) + A080754 (n + 1)

end

end A054074.P13038192299341415856

namespace A054074

/-- `A167544(n+4)+A080754(n+1)` -/
def P13038192299341415856.Spec : Prop :=
  ∀ n, P13038192299341415856.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P9397850689754135564

`A003151(n+1)-(∑[A024000(n)]+n)`
-/

namespace A054074.P9397850689754135564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A054074.P9397850689754135564

namespace A054074

/-- `A003151(n+1)-(∑[A024000(n)]+n)` -/
def P9397850689754135564.Spec : Prop :=
  ∀ n, P9397850689754135564.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P2444762179943690248

`A000217(n+1)+1-A195119(n+1)`
-/

namespace A054074.P2444762179943690248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (1 - A195119 (n + 1))

end

end A054074.P2444762179943690248

namespace A054074

/-- `A000217(n+1)+1-A195119(n+1)` -/
def P2444762179943690248.Spec : Prop :=
  ∀ n, P2444762179943690248.a n = A054074 (n + 1)

end A054074

/-! ## A054074.P16307915728191188075

`A000096(n+1)-(A195119(n+1)+n)`
-/

namespace A054074.P16307915728191188075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) - (A195119 (n + 1) + (n : ℤ))

end

end A054074.P16307915728191188075

namespace A054074

/-- `A000096(n+1)-(A195119(n+1)+n)` -/
def P16307915728191188075.Spec : Prop :=
  ∀ n, P16307915728191188075.a n = A054074 (n + 1)

end A054074

/-!
# A054075: Position of first appearance of n in A054073.

The programs for A054075, the canonical program `A054075.P9880067483023913226` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054075 has offset 1).

The definition of A054075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054075.P9880067483023913226

`A054072(n+1)+∑[n]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054075

/-- `A054072(n+1)+∑[n]` -/
def P9880067483023913226.Spec : Prop :=
  ∀ n, P9880067483023913226.a n = A054075 (n + 1)

theorem P9880067483023913226.correct : P9880067483023913226.Spec := by
  intro n
  simp only [A054075, Nat.add_sub_cancel]

end A054075

/-! ## A054075.P6751729459206587767

`A194737(n+1)+∑[n]+1`
-/

namespace A054075.P6751729459206587767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194737 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A054075.P6751729459206587767

namespace A054075

/-- `A194737(n+1)+∑[n]+1` -/
def P6751729459206587767.Spec : Prop :=
  ∀ n, P6751729459206587767.a n = A054075 (n + 1)

theorem P6751729459206587767.correct : P6751729459206587767.Spec := by
  intro n
  simp only [A054075, Nat.add_sub_cancel, A054075.P6751729459206587767.f1, A054075.P6751729459206587767.a, A054075.P9880067483023913226.f1, A054075.P9880067483023913226.a, A054072, A054072.P9099250148289974949.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P16235440681377643956.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054075

/-! ## A054075.P13322136929871223680

`2-A194736(n+1)+∑[n]+n`
-/

namespace A054075.P13322136929871223680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194736 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A054075.P13322136929871223680

namespace A054075

/-- `2-A194736(n+1)+∑[n]+n` -/
def P13322136929871223680.Spec : Prop :=
  ∀ n, P13322136929871223680.a n = A054075 (n + 1)

theorem P13322136929871223680.correct : P13322136929871223680.Spec := by
  intro n
  simp only [A054075, Nat.add_sub_cancel, A054075.P13322136929871223680.f1, A054075.P13322136929871223680.a, A054075.P9880067483023913226.f1, A054075.P9880067483023913226.a, A054072, A054072.P9099250148289974949.a, A194736, A194736.P10753671586819030676.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P16235440681377643956.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054075

/-! ## A054075.P5305615450405274930

`A000217(n)+A054072(n+1)`
-/

namespace A054075.P5305615450405274930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A054072 (n + 1)

end

end A054075.P5305615450405274930

namespace A054075

/-- `A000217(n)+A054072(n+1)` -/
def P5305615450405274930.Spec : Prop :=
  ∀ n, P5305615450405274930.a n = A054075 (n + 1)

end A054075

/-! ## A054075.P10573795322356087957

`∑[n+1]-A194735(n+1)`
-/

namespace A054075.P10573795322356087957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194735 (n + 1)

end

end A054075.P10573795322356087957

namespace A054075

/-- `∑[n+1]-A194735(n+1)` -/
def P10573795322356087957.Spec : Prop :=
  ∀ n, P10573795322356087957.a n = A054075 (n + 1)

end A054075

/-! ## A054075.P15368853795024484411

`record[A194835(n+1)²-n]`
-/

namespace A054075.P15368853795024484411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054075.P15368853795024484411

namespace A054075

/-- `record[A194835(n+1)²-n]` -/
def P15368853795024484411.Spec : Prop :=
  ∀ n, P15368853795024484411.a n = A054075 (n + 1)

end A054075

/-! ## A054075.P13413452439881369803

`A054077(∑[n+1])`
-/

namespace A054075.P13413452439881369803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054077 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054075.P13413452439881369803

namespace A054075

/-- `A054077(∑[n+1])` -/
def P13413452439881369803.Spec : Prop :=
  ∀ n, P13413452439881369803.a n = A054075 (n + 1)

end A054075

/-! ## A054075.P6383723019845370318

`record[A054077(n+1)/A130321(n)]`
-/

namespace A054075.P6383723019845370318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054077 (n + 1) : ℚ) / (A130321 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054075.P6383723019845370318

namespace A054075

/-- `record[A054077(n+1)/A130321(n)]` -/
def P6383723019845370318.Spec : Prop :=
  ∀ n, P6383723019845370318.a n = (A054075 (n + 1) : ℚ)

end A054075

/-! ## A054075.P17000436877087763217

`record[(1-A025581(n))*A054077(n+1)]`
-/

namespace A054075.P17000436877087763217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A054077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054075.P17000436877087763217

namespace A054075

/-- `record[(1-A025581(n))*A054077(n+1)]` -/
def P17000436877087763217.Spec : Prop :=
  ∀ n, P17000436877087763217.a n = A054075 (n + 1)

end A054075

/-!
# A054076: Permutation of N: a(n)+C(k,2), where a=A054073 and k=Floor((1+sqrt(8n-3))/2).

The programs for A054076, there is no canonical definition to state claims against.
-/

/-! ## A054076.P13616890269533805113

`A057944(n)+A054073(n+1)`
-/

namespace A054076.P13616890269533805113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A054073 (n + 1)

end

end A054076.P13616890269533805113

/-! ## A054076.P17230235428041640235

`A054073(n+1)+A061885(n)-n`
-/

namespace A054076.P17230235428041640235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + (A061885 n - (n : ℤ))

end

end A054076.P17230235428041640235

/-! ## A054076.P1935606142244788485

`A054073(n+1)+A000217(comp[C(n, 2)]-(n+2))`
-/

namespace A054076.P1935606142244788485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 2))

end

end A054076.P1935606142244788485

/-! ## A054076.P295354197169870165

`A054073(n+1)+A000217(A003056(n))`
-/

namespace A054076.P295354197169870165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + A000217 (A003056 n).toNat

end

end A054076.P295354197169870165

/-! ## A054076.P8968722403038888734

`A054073(n+1)+A001971(A131507(n))`
-/

namespace A054076.P8968722403038888734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + A001971 (A131507 n).toNat

end

end A054076.P8968722403038888734

/-! ## A054076.P13739943282949559466

`A054073(n+1)+A000217(∑[A010054(n)]-1)`
-/

namespace A054076.P13739943282949559466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A054076.P13739943282949559466

/-! ## A054076.P15032612337435128946

`A054073(n+1)+A000217(A002024(n+1)-1)`
-/

namespace A054076.P15032612337435128946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + A000217 (A002024 (n + 1) - 1).toNat

end

end A054076.P15032612337435128946

/-! ## A054076.P2282694552509665334

`A054068(n+1)+A054073(n+1)-A054065(n+1)`
-/

namespace A054076.P2282694552509665334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A054073 (n + 1) - A054065 (n + 1))

end

end A054076.P2282694552509665334

/-! ## A054076.P9744992275535474086

`A054073(n+1)+A194834(n+1)-A194832(n+1)`
-/

namespace A054076.P9744992275535474086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + (A194834 (n + 1) - A194832 (n + 1))

end

end A054076.P9744992275535474086

/-! ## A054076.P717967054833116042

`A054073(n+1)+A194858(n+1)-A194856(n+1)`
-/

namespace A054076.P717967054833116042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + (A194858 (n + 1) - A194856 (n + 1))

end

end A054076.P717967054833116042

/-! ## A054076.P15929299169170899331

`A054073(n+1)+A194873(n+1)-A194871(n+1)`
-/

namespace A054076.P15929299169170899331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + (A194873 (n + 1) - A194871 (n + 1))

end

end A054076.P15929299169170899331

/-! ## A054076.P8693028035970427666

`A054073(n+1)+A000217(A103823(n)+A103822(n))`
-/

namespace A054076.P8693028035970427666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + A000217 (A103823 n + A103822 n).toNat

end

end A054076.P8693028035970427666

/-! ## A054076.P7982976213704412232

`A194837(A038722(n+1))`
-/

namespace A054076.P7982976213704412232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (A038722 (n + 1)).toNat

end

end A054076.P7982976213704412232

/-! ## A054076.P7966339160445780621

`A194837(A054077(A194837(n+1)))`
-/

namespace A054076.P7966339160445780621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (A054077 (A194837 (n + 1)).toNat).toNat

end

end A054076.P7966339160445780621

/-! ## A054076.P361002252377228494

`A194837(A194909(A194907(n+1)))`
-/

namespace A054076.P361002252377228494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (A194909 (A194907 (n + 1)).toNat).toNat

end

end A054076.P361002252377228494

/-! ## A054076.P18407140012446481899

`A194835(A038722(n+1))+A057944(n)`
-/

namespace A054076.P18407140012446481899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (A038722 (n + 1)).toNat + A057944 n

end

end A054076.P18407140012446481899

/-!
# A054077: Inverse of the permutation A054073 of N.

The programs for A054077, there is no canonical definition to state claims against.
-/

/-! ## A054077.P6091942371372242673

`∑[char[∑[n]]]²+1-A194836(n+1)`
-/

namespace A054077.P6091942371372242673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194836 (n + 1))

end

end A054077.P6091942371372242673

/-! ## A054077.P16141280684297893496

`A038722(A194836(n+1))`
-/

namespace A054077.P16141280684297893496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194836 (n + 1)).toNat

end

end A054077.P16141280684297893496

/-! ## A054077.P6377478510401961863

`A265129(n+1)-A194836(n+1)`
-/

namespace A054077.P6377478510401961863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194836 (n + 1)

end

end A054077.P6377478510401961863

/-! ## A054077.P6771636856484909397

`A093995(n+1)-A194836(n+1)+1`
-/

namespace A054077.P6771636856484909397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A194836 (n + 1) + 1

end

end A054077.P6771636856484909397

/-! ## A054077.P2386123339226504184

`A061579(A194836(n+1)-1)+1`
-/

namespace A054077.P2386123339226504184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194836 (n + 1) - 1).toNat + 1

end

end A054077.P2386123339226504184

/-! ## A054077.P11779558181769952370

`A057944(n)+A004736(A194836(n+1))`
-/

namespace A054077.P11779558181769952370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194836 (n + 1)).toNat

end

end A054077.P11779558181769952370

/-! ## A054077.P13056089728714786106

`A093995(n+1)+A024000(A194836(n+1))`
-/

namespace A054077.P13056089728714786106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194836 (n + 1)).toNat

end

end A054077.P13056089728714786106

/-!
# A054078: Number of k<=n such that a(k)>n, where a is the permutation A054076 of N.

The programs for A054078, there is no canonical definition to state claims against.
-/

/-! ## A054078.P15994351820661873796

`A326194(A236961(n))`
-/

namespace A054078.P15994351820661873796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (A236961 n).toNat

end

end A054078.P15994351820661873796

/-! ## A054078.P17523880098261760698

`A194636(A194672(n)+A194543(n))`
-/

namespace A054078.P17523880098261760698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A194672 n + A194543 n).toNat

end

end A054078.P17523880098261760698

/-! ## A054078.P7157240139776917102

`A326194(A037027(n)^A143841(n))`
-/

namespace A054078.P7157240139776917102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (SequenceMachineLib.roundAway ((A037027 n : ℚ) ^ (A143841 n : ℤ))).toNat

end

end A054078.P7157240139776917102

/-! ## A054078.P11935357270764936950

`A326194(A037027(n)^A243081(n))`
-/

namespace A054078.P11935357270764936950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (SequenceMachineLib.roundAway ((A037027 n : ℚ) ^ (A243081 n : ℤ))).toNat

end

end A054078.P11935357270764936950

/-! ## A054078.P17140698204369236141

`A373126(A140071(n+1)%A038615(n+1))`
-/

namespace A054078.P17140698204369236141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 (Int.tmod (A140071 (n + 1)) (A038615 (n + 1))).toNat

end

end A054078.P17140698204369236141

/-!
# A054079: Moebius transform of A000031 (starting at term 0).

The programs for A054079, the canonical program `A054079.P11177909957407528994` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054079 has offset 0).

The definition of A054079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054079.P11177909957407528994

`∑{d}[n+1, A000031(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054079

/-- `∑{d}[n+1, A000031(#-1)*A008683((n+1)/#)]` -/
def P11177909957407528994.Spec : Prop :=
  ∀ n, P11177909957407528994.a n = A054079 n

theorem P11177909957407528994.correct : P11177909957407528994.Spec := by
  intro n
  simp only [A054079]

end A054079

/-! ## A054079.P1375995432821922473

`∑{d}[n+1, A007427(#)*A054058((n+1)/#-1)]`
-/

namespace A054079.P1375995432821922473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054058 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054079.P1375995432821922473

namespace A054079

/-- `∑{d}[n+1, A007427(#)*A054058((n+1)/#-1)]` -/
def P1375995432821922473.Spec : Prop :=
  ∀ n, P1375995432821922473.a n = A054079 n

end A054079

/-! ## A054079.P11195264854130155859

`A059076(A004917(n+1))+A054156(n)`
-/

namespace A054079.P11195264854130155859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (A004917 (n + 1)).toNat + A054156 n

end

end A054079.P11195264854130155859

namespace A054079

/-- `A059076(A004917(n+1))+A054156(n)` -/
def P11195264854130155859.Spec : Prop :=
  ∀ n, P11195264854130155859.a n = A054079 n

end A054079

/-! ## A054079.P7409965180081622969

`A059076(A227549(n+1))+A054156(n)`
-/

namespace A054079.P7409965180081622969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (A227549 (n + 1)).toNat + A054156 n

end

end A054079.P7409965180081622969

namespace A054079

/-- `A059076(A227549(n+1))+A054156(n)` -/
def P7409965180081622969.Spec : Prop :=
  ∀ n, P7409965180081622969.a n = A054079 n

end A054079

/-! ## A054079.P1970512240133451078

`A101268(n)-A131615(A208474(n+1))`
-/

namespace A054079.P1970512240133451078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n - A131615 (A208474 (n + 1)).toNat

end

end A054079.P1970512240133451078

namespace A054079

/-- `A101268(n)-A131615(A208474(n+1))` -/
def P1970512240133451078.Spec : Prop :=
  ∀ n, P1970512240133451078.a n = A054079 n

end A054079

/-!
# A054080: Inverse Moebius transform of A001037 (starting at term 0).

The programs for A054080, the canonical program `A054080.P10690886715511353127` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054080 has offset 0).

The definition of A054080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054080.P10690886715511353127

`∑{d}[n+1, A001037(#-1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A054080

/-- `∑{d}[n+1, A001037(#-1)]` -/
def P10690886715511353127.Spec : Prop :=
  ∀ n, P10690886715511353127.a n = A054080 n

theorem P10690886715511353127.correct : P10690886715511353127.Spec := by
  intro n
  simp only [A054080]

end A054080

/-! ## A054080.P742344338226226812

`∑{d}[n+1, A000005(#)*A054154((n+1)/#-1)]`
-/

namespace A054080.P742344338226226812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054080.P742344338226226812

namespace A054080

/-- `∑{d}[n+1, A000005(#)*A054154((n+1)/#-1)]` -/
def P742344338226226812.Spec : Prop :=
  ∀ n, P742344338226226812.a n = A054080 n

end A054080

/-! ## A054080.P8123548995125173632

`A072088(A059076(n))+A054158(n)`
-/

namespace A054080.P8123548995125173632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A059076 n).toNat + A054158 n

end

end A054080.P8123548995125173632

namespace A054080

/-- `A072088(A059076(n))+A054158(n)` -/
def P8123548995125173632.Spec : Prop :=
  ∀ n, P8123548995125173632.a n = A054080 n

end A054080

/-! ## A054080.P17679838343303139162

`A059076(A004917(n+1))+A054158(n)`
-/

namespace A054080.P17679838343303139162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (A004917 (n + 1)).toNat + A054158 n

end

end A054080.P17679838343303139162

namespace A054080

/-- `A059076(A004917(n+1))+A054158(n)` -/
def P17679838343303139162.Spec : Prop :=
  ∀ n, P17679838343303139162.a n = A054080 n

end A054080

/-!
# A054082: Permutation of N: a(1)=2, a(2)=1 and for each k >= 2, let p(k)=least natural number not already an a(i), q(k)=p(k)+k-1, a(2k-1)=q(k), a(2k)=p(k).

The programs for A054082, the canonical program `A054082.P4296362345752367379` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054082 has offset 1).

The definition of A054082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054082.P12921396376389434120

`A060576(n)+A054089(A028310(n))`
-/

namespace A054082.P12921396376389434120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A054089 (A028310 n).toNat

end

end A054082.P12921396376389434120

namespace A054082

/-- `A060576(n)+A054089(A028310(n))` -/
def P12921396376389434120.Spec : Prop :=
  ∀ n, P12921396376389434120.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P12119508739168183069

`A054089(A028310(n))+A159075(n)+1`
-/

namespace A054082.P12119508739168183069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054089 (A028310 n).toNat + (A159075 n + 1)

end

end A054082.P12119508739168183069

namespace A054082

/-- `A054089(A028310(n))+A159075(n)+1` -/
def P12119508739168183069.Spec : Prop :=
  ∀ n, P12119508739168183069.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P4296362345752367379

`A319702(n+1)+A004956(A123108(n))-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054082

/-- `A319702(n+1)+A004956(A123108(n))-1` -/
def P4296362345752367379.Spec : Prop :=
  ∀ n, P4296362345752367379.a n = A054082 (n + 1)

theorem P4296362345752367379.correct : P4296362345752367379.Spec := by
  intro n
  simp only [A054082, Nat.add_sub_cancel]

end A054082

/-! ## A054082.P5990176393025865499

`A057427(A007599(n))+A054089(A028310(n))`
-/

namespace A054082.P5990176393025865499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007599 n).toNat + A054089 (A028310 n).toNat

end

end A054082.P5990176393025865499

namespace A054082

/-- `A057427(A007599(n))+A054089(A028310(n))` -/
def P5990176393025865499.Spec : Prop :=
  ∀ n, P5990176393025865499.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P1870484854151610604

`A057427(A028242(n))+A054089(A028310(n))`
-/

namespace A054082.P1870484854151610604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028242 n).toNat + A054089 (A028310 n).toNat

end

end A054082.P1870484854151610604

namespace A054082

/-- `A057427(A028242(n))+A054089(A028310(n))` -/
def P1870484854151610604.Spec : Prop :=
  ∀ n, P1870484854151610604.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P2224067708662241706

`A004956(A123108(n))-A024000(A319702(n+1))`
-/

namespace A054082.P2224067708662241706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A123108 n).toNat - A024000 (A319702 (n + 1)).toNat

end

end A054082.P2224067708662241706

namespace A054082

/-- `A004956(A123108(n))-A024000(A319702(n+1))` -/
def P2224067708662241706.Spec : Prop :=
  ∀ n, P2224067708662241706.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P2383880725121930137

`A267871(n+2)+A054089(A028310(n))`
-/

namespace A054082.P2383880725121930137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (n + 2) + A054089 (A028310 n).toNat

end

end A054082.P2383880725121930137

namespace A054082

/-- `A267871(n+2)+A054089(A028310(n))` -/
def P2383880725121930137.Spec : Prop :=
  ∀ n, P2383880725121930137.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P9676310278505329138

`A054084(A064579(A054084(n+1)))`
-/

namespace A054082.P9676310278505329138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A064579 (A054084 (n + 1)).toNat).toNat

end

end A054082.P9676310278505329138

namespace A054082

/-- `A054084(A064579(A054084(n+1)))` -/
def P9676310278505329138.Spec : Prop :=
  ∀ n, P9676310278505329138.a n = A054082 (n + 1)

end A054082

/-! ## A054082.P7964199833545805154

`A267537(2*n)+A054089(A028310(n))`
-/

namespace A054082.P7964199833545805154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (2 * n) + A054089 (A028310 n).toNat

end

end A054082.P7964199833545805154

namespace A054082

/-- `A267537(2*n)+A054089(A028310(n))` -/
def P7964199833545805154.Spec : Prop :=
  ∀ n, P7964199833545805154.a n = A054082 (n + 1)

end A054082

/-!
# A054083: a(n) = order of n in the permutation A054082 of the natural numbers if this order exists; a(n) = -1 otherwise.

The programs for A054083, there is no canonical definition to state claims against.
-/

/-! ## A054083.P5581391458259395588

`A054085(A289207(n)+1)`
-/

namespace A054083.P5581391458259395588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 (A289207 n + 1).toNat

end

end A054083.P5581391458259395588

/-! ## A054083.P18357379947697766445

`A054085(A137734((1-n)²))`
-/

namespace A054083.P18357379947697766445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 (A137734 ((1 - (n : ℤ)) ^ 2).toNat).toNat

end

end A054083.P18357379947697766445

/-! ## A054083.P16467710171334825458

`A054085(A054106(∑[n]+1))`
-/

namespace A054083.P16467710171334825458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 (A054106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A054083.P16467710171334825458

/-! ## A054083.P7602318098632709286

`A054085(abs(n-A060576(n)))`
-/

namespace A054083.P7602318098632709286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 |(n : ℤ) - A060576 n|.toNat

end

end A054083.P7602318098632709286

/-! ## A054083.P14058474582147205776

`A054085(A233583(n+1)-1)`
-/

namespace A054083.P14058474582147205776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 (A233583 (n + 1) - 1).toNat

end

end A054083.P14058474582147205776

/-! ## A054083.P6165820876163535431

`A054085(A004275(n)+1-n)`
-/

namespace A054083.P6165820876163535431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 (A004275 n + (1 - (n : ℤ))).toNat

end

end A054083.P6165820876163535431

/-! ## A054083.P7603252521880688006

`A054085(1-(n-A004275(n)))`
-/

namespace A054083.P7603252521880688006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 (1 - ((n : ℤ) - A004275 n)).toNat

end

end A054083.P7603252521880688006

/-! ## A054083.P17460212320196302505

`A054085(abs(A023443(A159075(n)+n)))`
-/

namespace A054083.P17460212320196302505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 |A023443 (A159075 n + (n : ℤ)).toNat|.toNat

end

end A054083.P17460212320196302505

/-! ## A054083.P3432828590901072691

`A054085(abs(A024000(A159075(n)+n)))`
-/

namespace A054083.P3432828590901072691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 |A024000 (A159075 n + (n : ℤ)).toNat|.toNat

end

end A054083.P3432828590901072691

/-! ## A054083.P12827742227253030489

`A054085(abs(A023443(n-A159075(n))))`
-/

namespace A054083.P12827742227253030489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054085 |A023443 ((n : ℤ) - A159075 n).toNat|.toNat

end

end A054083.P12827742227253030489

/-!
# A054084: Permutation of N: for each k >= 1, let p(k)=least natural number not already an a(i), q(k)=p(k)+k, a(2k-1)=q(k), a(2k)=p(k).

The programs for A054084, the canonical program `A054084.P17694258563391689400` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054084 has offset 1).

The definition of A054084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054084.P15131321137597667060

`A072061(xor(1, n)+1)`
-/

namespace A054084.P15131321137597667060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (Nat.xor 1 n + 1)

end

end A054084.P15131321137597667060

namespace A054084

/-- `A072061(xor(1, n)+1)` -/
def P15131321137597667060.Spec : Prop :=
  ∀ n, P15131321137597667060.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P3289465506498277261

`A072061((-1)^n+n+1)`
-/

namespace A054084.P3289465506498277261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A054084.P3289465506498277261

namespace A054084

/-- `A072061((-1)^n+n+1)` -/
def P3289465506498277261.Spec : Prop :=
  ∀ n, P3289465506498277261.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P15424179228342125097

`A219636(n+1)+A174007(n+1)`
-/

namespace A054084.P15424179228342125097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 1) + A174007 (n + 1)

end

end A054084.P15424179228342125097

namespace A054084

/-- `A219636(n+1)+A174007(n+1)` -/
def P15424179228342125097.Spec : Prop :=
  ∀ n, P15424179228342125097.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P2552973430658691690

`A286750(n+1)-A080512(n+1)`
-/

namespace A054084.P2552973430658691690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1) - A080512 (n + 1)

end

end A054084.P2552973430658691690

namespace A054084

/-- `A286750(n+1)-A080512(n+1)` -/
def P2552973430658691690.Spec : Prop :=
  ∀ n, P2552973430658691690.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P17694258563391689400

`A001950(A008619(n))+A027656(n)-A008619(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054084

/-- `A001950(A008619(n))+A027656(n)-A008619(n)` -/
def P17694258563391689400.Spec : Prop :=
  ∀ n, P17694258563391689400.a n = A054084 (n + 1)

theorem P17694258563391689400.correct : P17694258563391689400.Spec := by
  intro n
  simp only [A054084, Nat.add_sub_cancel]

end A054084

/-! ## A054084.P4458678069772403128

`A054089(n+2)-1`
-/

namespace A054084.P4458678069772403128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054089 (n + 2) - 1

end

end A054084.P4458678069772403128

namespace A054084

/-- `A054089(n+2)-1` -/
def P4458678069772403128.Spec : Prop :=
  ∀ n, P4458678069772403128.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P15192782797947443750

`A188435(n+2)-(A027656(n+1)+1)`
-/

namespace A054084.P15192782797947443750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 2) - (A027656 (n + 1) + 1)

end

end A054084.P15192782797947443750

namespace A054084

/-- `A188435(n+2)-(A027656(n+1)+1)` -/
def P15192782797947443750.Spec : Prop :=
  ∀ n, P15192782797947443750.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P2739482575970389083

`A054082(n+3)-2`
-/

namespace A054084.P2739482575970389083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (n + 3) - 2

end

end A054084.P2739482575970389083

namespace A054084

/-- `A054082(n+3)-2` -/
def P2739482575970389083.Spec : Prop :=
  ∀ n, P2739482575970389083.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P9432732475971972701

`A002251(A072061(n+1))`
-/

namespace A054084.P9432732475971972701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A072061 (n + 1)).toNat

end

end A054084.P9432732475971972701

namespace A054084

/-- `A002251(A072061(n+1))` -/
def P9432732475971972701.Spec : Prop :=
  ∀ n, P9432732475971972701.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P15964239677031446217

`A023443(A054089(n+2))`
-/

namespace A054084.P15964239677031446217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054089 (n + 2)).toNat

end

end A054084.P15964239677031446217

namespace A054084

/-- `A023443(A054089(n+2))` -/
def P15964239677031446217.Spec : Prop :=
  ∀ n, P15964239677031446217.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P3078346427426496546

`A054082(A064786(A054082(n+1)))`
-/

namespace A054084.P3078346427426496546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (A064786 (A054082 (n + 1)).toNat).toNat

end

end A054084.P3078346427426496546

namespace A054084

/-- `A054082(A064786(A054082(n+1)))` -/
def P3078346427426496546.Spec : Prop :=
  ∀ n, P3078346427426496546.a n = A054084 (n + 1)

end A054084

/-! ## A054084.P4961903016165703778

`A380079(A187485(n+1))`
-/

namespace A054084.P4961903016165703778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380079 (A187485 (n + 1)).toNat

end

end A054084.P4961903016165703778

namespace A054084

/-- `A380079(A187485(n+1))` -/
def P4961903016165703778.Spec : Prop :=
  ∀ n, P4961903016165703778.a n = A054084 (n + 1)

end A054084

/-!
# A054085: a(n) = order of n in the permutation A054084 of the natural numbers if this order exists; a(n) = -1 otherwise.

The programs for A054085, there is no canonical definition to state claims against.
-/

/-! ## A054085.P8158324158604789264

`A054083(n+3)`
-/

namespace A054085.P8158324158604789264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054083 (n + 3)

end

end A054085.P8158324158604789264

/-!
# A054087: s(3n-2), s=A054086; also a bisection of A003511.

The programs for A054087, the canonical program `A054087.P7351384866866259164` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054087 has offset 1).

The definition of A054087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054087.P7351384866866259164

`round(sqrt(∑[6*n]+1))+n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054087

/-- `round(sqrt(∑[6*n]+1))+n` -/
def P7351384866866259164.Spec : Prop :=
  ∀ n, P7351384866866259164.a n = A054087 (n + 1)

theorem P7351384866866259164.correct : P7351384866866259164.Spec := by
  intro n
  simp only [A054087, Nat.add_sub_cancel]

end A054087

/-! ## A054087.P16137453850434869814

`round(sqrt(A003215(n))+n)`
-/

namespace A054087.P16137453850434869814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A003215 n : ℝ) + (n : ℝ))

end

end A054087.P16137453850434869814

namespace A054087

/-- `round(sqrt(A003215(n))+n)` -/
def P16137453850434869814.Spec : Prop :=
  ∀ n, P16137453850434869814.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P16542712589009944858

`round(sqrt(∑[A008458(n)])+n)`
-/

namespace A054087.P16542712589009944858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ))

end

end A054087.P16542712589009944858

namespace A054087

/-- `round(sqrt(∑[A008458(n)])+n)` -/
def P16542712589009944858.Spec : Prop :=
  ∀ n, P16542712589009944858.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P1911488797340274592

`round(sqrt(∑[A008574(n)+n+n])+n)`
-/

namespace A054087.P1911488797340274592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ))

end

end A054087.P1911488797340274592

namespace A054087

/-- `round(sqrt(∑[A008574(n)+n+n])+n)` -/
def P1911488797340274592.Spec : Prop :=
  ∀ n, P1911488797340274592.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P1505242102854818666

`round(sqrt((n+1)*(3*n+2)-A004277(n))+n)`
-/

namespace A054087.P1505242102854818666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 1) * (3 * n + 2) : ℤ) - A004277 n : ℝ) + (n : ℝ))

end

end A054087.P1505242102854818666

namespace A054087

/-- `round(sqrt((n+1)*(3*n+2)-A004277(n))+n)` -/
def P1505242102854818666.Spec : Prop :=
  ∀ n, P1505242102854818666.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P9453052281939975164

`A003511(Δ[n²])`
-/

namespace A054087.P9453052281939975164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054087.P9453052281939975164

namespace A054087

/-- `A003511(Δ[n²])` -/
def P9453052281939975164.Spec : Prop :=
  ∀ n, P9453052281939975164.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P12936025273181168114

`floor(A054088(2*n+1)/2)`
-/

namespace A054087.P12936025273181168114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054088 (2 * n + 1) : ℚ) / 2⌋

end

end A054087.P12936025273181168114

namespace A054087

/-- `floor(A054088(2*n+1)/2)` -/
def P12936025273181168114.Spec : Prop :=
  ∀ n, P12936025273181168114.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P12809005096293632271

`ceil(A180122(2*n+1)/2)`
-/

namespace A054087.P12809005096293632271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180122 (2 * n + 1) : ℚ) / 2⌉

end

end A054087.P12809005096293632271

namespace A054087

/-- `ceil(A180122(2*n+1)/2)` -/
def P12809005096293632271.Spec : Prop :=
  ∀ n, P12809005096293632271.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P3912483490324382666

`A000027(A003511(2*n+1))`
-/

namespace A054087.P3912483490324382666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003511 (2 * n + 1)).toNat

end

end A054087.P3912483490324382666

namespace A054087

/-- `A000027(A003511(2*n+1))` -/
def P3912483490324382666.Spec : Prop :=
  ∀ n, P3912483490324382666.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P12654185193453597093

`A186539(A003511(2*n+1)-n)`
-/

namespace A054087.P12654185193453597093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (A003511 (2 * n + 1) - (n : ℤ)).toNat

end

end A054087.P12654185193453597093

namespace A054087

/-- `A186539(A003511(2*n+1)-n)` -/
def P12654185193453597093.Spec : Prop :=
  ∀ n, P12654185193453597093.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P8297608372997510402

`∑{d}[A003511(2*n+1), A000010(#)]`
-/

namespace A054087.P8297608372997510402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A054087.P8297608372997510402

namespace A054087

/-- `∑{d}[A003511(2*n+1), A000010(#)]` -/
def P8297608372997510402.Spec : Prop :=
  ∀ n, P8297608372997510402.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P5605231112467943899

`∩[A003511(n+1), A186539(n+1)]`
-/

namespace A054087.P5605231112467943899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054087.P5605231112467943899

namespace A054087

/-- `∩[A003511(n+1), A186539(n+1)]` -/
def P5605231112467943899.Spec : Prop :=
  ∀ n, (P5605231112467943899.a n : ℤ) = A054087 (n + 1)

end A054087

/-! ## A054087.P5270487555307110879

`record[A003511(n+1)/A003484(n+1)]`
-/

namespace A054087.P5270487555307110879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003511 (n + 1) : ℚ) / (A003484 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054087.P5270487555307110879

namespace A054087

/-- `record[A003511(n+1)/A003484(n+1)]` -/
def P5270487555307110879.Spec : Prop :=
  ∀ n, P5270487555307110879.a n = (A054087 (n + 1) : ℚ)

end A054087

/-! ## A054087.P12410987582695181183

`A003511(2*n+1)%A003512(n+1)`
-/

namespace A054087.P12410987582695181183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003511 (2 * n + 1)) (A003512 (n + 1))

end

end A054087.P12410987582695181183

namespace A054087

/-- `A003511(2*n+1)%A003512(n+1)` -/
def P12410987582695181183.Spec : Prop :=
  ∀ n, P12410987582695181183.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P7089048835142214508

`(A001952(2*(n+1))-A184922(2*(n+1)))*A003511(2*n+1)`
-/

namespace A054087.P7089048835142214508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001952 (2 * (n + 1)) - A184922 (2 * (n + 1))) * A003511 (2 * n + 1)

end

end A054087.P7089048835142214508

namespace A054087

/-- `(A001952(2*(n+1))-A184922(2*(n+1)))*A003511(2*n+1)` -/
def P7089048835142214508.Spec : Prop :=
  ∀ n, P7089048835142214508.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P10637797303065760797

`filter[A003511(n+1), A144612(#)]`
-/

namespace A054087.P10637797303065760797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144612 (f1 j).toNat = 1) n)

end

end A054087.P10637797303065760797

namespace A054087

/-- `filter[A003511(n+1), A144612(#)]` -/
def P10637797303065760797.Spec : Prop :=
  ∀ n, P10637797303065760797.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P15659512778266335632

`filter[A186539(n+1), A188082(#)]`
-/

namespace A054087.P15659512778266335632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188082 (f1 j).toNat = 1) n)

end

end A054087.P15659512778266335632

namespace A054087

/-- `filter[A186539(n+1), A188082(#)]` -/
def P15659512778266335632.Spec : Prop :=
  ∀ n, P15659512778266335632.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P12187044284750389359

`filter[A003511(2*n+1), A188082(#)]`
-/

namespace A054087.P12187044284750389359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188082 (f1 j).toNat = 1) n)

end

end A054087.P12187044284750389359

namespace A054087

/-- `filter[A003511(2*n+1), A188082(#)]` -/
def P12187044284750389359.Spec : Prop :=
  ∀ n, P12187044284750389359.a n = A054087 (n + 1)

end A054087

/-! ## A054087.P15046769239818791163

`A023443(A188070(2*n+1))`
-/

namespace A054087.P15046769239818791163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188070 (2 * n + 1)).toNat

end

end A054087.P15046769239818791163

namespace A054087

/-- `A023443(A188070(2*n+1))` -/
def P15046769239818791163.Spec : Prop :=
  ∀ n, P15046769239818791163.a n = A054087 (n + 1)

end A054087

/-!
# A054088: a(n) = A054086(3n); also a bisection of A003511.

The programs for A054088, the canonical program `A054088.P12267112223667201366` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054088 has offset 1).

The definition of A054088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054088.P14851958881718109366

`floor((n+1)*(1+sqrt(3)))`
-/

namespace A054088.P14851958881718109366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (1 + Real.sqrt (3 : ℝ))⌋

end

end A054088.P14851958881718109366

namespace A054088

/-- `floor((n+1)*(1+sqrt(3)))` -/
def P14851958881718109366.Spec : Prop :=
  ∀ n, P14851958881718109366.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P12267112223667201366

`n+1+A022838(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054088

/-- `n+1+A022838(n+1)` -/
def P12267112223667201366.Spec : Prop :=
  ∀ n, P12267112223667201366.a n = A054088 (n + 1)

theorem P12267112223667201366.correct : P12267112223667201366.Spec := by
  intro n
  simp only [A054088, Nat.add_sub_cancel]

end A054088

/-! ## A054088.P6309556007966163637

`A054086(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054088.P6309556007966163637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054086 (3 * (n + 1))

end

end A054088.P6309556007966163637

namespace A054088

/-- `A054086(3*(n+1))` -/
def P6309556007966163637.Spec : Prop :=
  ∀ n, P6309556007966163637.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P7965193362650536784

`n+1+floor(2*(n+1)*sin(π/3))`
-/

namespace A054088.P7965193362650536784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊2 * ((n + 1 : ℝ) * Real.sin (Real.pi / 3))⌋

end

end A054088.P7965193362650536784

namespace A054088

/-- `n+1+floor(2*(n+1)*sin(π/3))` -/
def P7965193362650536784.Spec : Prop :=
  ∀ n, P7965193362650536784.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P5574785098420444571

`∑[A007538(n+1)]`
-/

namespace A054088.P5574785098420444571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054088.P5574785098420444571

namespace A054088

/-- `∑[A007538(n+1)]` -/
def P5574785098420444571.Spec : Prop :=
  ∀ n, P5574785098420444571.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P15364462271580954074

`∑[A080757(n)+1]`
-/

namespace A054088.P15364462271580954074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054088.P15364462271580954074

namespace A054088

/-- `∑[A080757(n)+1]` -/
def P15364462271580954074.Spec : Prop :=
  ∀ n, P15364462271580954074.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P5557711524560507032

`A180122(n+1)+1`
-/

namespace A054088.P5557711524560507032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + 1

end

end A054088.P5557711524560507032

namespace A054088

/-- `A180122(n+1)+1` -/
def P5557711524560507032.Spec : Prop :=
  ∀ n, P5557711524560507032.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P1963002845901839044

`A198081(n+1)+n`
-/

namespace A054088.P1963002845901839044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) + (n : ℤ)

end

end A054088.P1963002845901839044

namespace A054088

/-- `A198081(n+1)+n` -/
def P1963002845901839044.Spec : Prop :=
  ∀ n, P1963002845901839044.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P16415102024466385909

`A180123(n+1)-n`
-/

namespace A054088.P16415102024466385909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) - (n : ℤ)

end

end A054088.P16415102024466385909

namespace A054088

/-- `A180123(n+1)-n` -/
def P16415102024466385909.Spec : Prop :=
  ∀ n, P16415102024466385909.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P16195700368114716248

`∑[3-Δ[A195120(n)]]`
-/

namespace A054088.P16195700368114716248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054088.P16195700368114716248

namespace A054088

/-- `∑[3-Δ[A195120(n)]]` -/
def P16195700368114716248.Spec : Prop :=
  ∀ n, P16195700368114716248.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P11456149901181165108

`∑[A188068(n+1)+2]`
-/

namespace A054088.P11456149901181165108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054088.P11456149901181165108

namespace A054088

/-- `∑[A188068(n+1)+2]` -/
def P11456149901181165108.Spec : Prop :=
  ∀ n, P11456149901181165108.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P8385790868188544684

`∑[A276865(n+1)-1]`
-/

namespace A054088.P8385790868188544684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054088.P8385790868188544684

namespace A054088

/-- `∑[A276865(n+1)-1]` -/
def P8385790868188544684.Spec : Prop :=
  ∀ n, P8385790868188544684.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P131856134863259374

`ceil(sqrt(∑[A016945(n)])+n)`
-/

namespace A054088.P131856134863259374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ)⌉

end

end A054088.P131856134863259374

namespace A054088

/-- `ceil(sqrt(∑[A016945(n)])+n)` -/
def P131856134863259374.Spec : Prop :=
  ∀ n, P131856134863259374.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P5773756896980280688

`A003512(n+1)-(n+1)`
-/

namespace A054088.P5773756896980280688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) - (n + 1 : ℤ)

end

end A054088.P5773756896980280688

namespace A054088

/-- `A003512(n+1)-(n+1)` -/
def P5773756896980280688.Spec : Prop :=
  ∀ n, P5773756896980280688.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P10793971830423053866

`∑[char[A003511(n+1)]+2]`
-/

namespace A054088.P10793971830423053866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054088.P10793971830423053866

namespace A054088

/-- `∑[char[A003511(n+1)]+2]` -/
def P10793971830423053866.Spec : Prop :=
  ∀ n, (P10793971830423053866.a n : ℤ) = A054088 (n + 1)

end A054088

/-! ## A054088.P1945540952985507419

`ceil(sqrt(A080663(n+1))+n)`
-/

namespace A054088.P1945540952985507419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A080663 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A054088.P1945540952985507419

namespace A054088

/-- `ceil(sqrt(A080663(n+1))+n)` -/
def P1945540952985507419.Spec : Prop :=
  ∀ n, P1945540952985507419.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P6998952829698478591

`∑[2-A275855(n+1)]+n`
-/

namespace A054088.P6998952829698478591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A275855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A054088.P6998952829698478591

namespace A054088

/-- `∑[2-A275855(n+1)]+n` -/
def P6998952829698478591.Spec : Prop :=
  ∀ n, P6998952829698478591.a n = A054088 (n + 1)

end A054088

/-! ## A054088.P3848668670566437046

`A182778(n+1)-2*(n+1)`
-/

namespace A054088.P3848668670566437046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1) - (2 * (n + 1) : ℤ)

end

end A054088.P3848668670566437046

namespace A054088

/-- `A182778(n+1)-2*(n+1)` -/
def P3848668670566437046.Spec : Prop :=
  ∀ n, P3848668670566437046.a n = A054088 (n + 1)

theorem P3848668670566437046.correct : P3848668670566437046.Spec := by
  intro n
  simp only [A054088, Nat.add_sub_cancel, A054088.P3848668670566437046.a, A054088.P12267112223667201366.a, A022838, A022838.P2955185450675945792.a, A182778, A182778.P1616150781796186047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A054088

/-! ## A054088.P5303505613503392661

`(A189405(n+1)+n+1)/2`
-/

namespace A054088.P5303505613503392661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189405 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A054088.P5303505613503392661

namespace A054088

/-- `(A189405(n+1)+n+1)/2` -/
def P5303505613503392661.Spec : Prop :=
  ∀ n, P5303505613503392661.a n = (A054088 (n + 1) : ℚ)

end A054088

/-!
# A054089: For k >= 1, let p(k) = least h in N not already an a(i), q(k) = p(k)+k, a(2k) = q(k), a(2k+1) = p(k).

The programs for A054089, the canonical program `A054089.P12538508181983583088` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054089 has offset 1).

The definition of A054089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054089.P12538508181983583088

`A026352(A110654(n))-A142150(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054089

/-- `A026352(A110654(n))-A142150(n)` -/
def P12538508181983583088.Spec : Prop :=
  ∀ n, P12538508181983583088.a n = A054089 (n + 1)

theorem P12538508181983583088.correct : P12538508181983583088.Spec := by
  intro n
  simp only [A054089, Nat.add_sub_cancel]

end A054089

/-! ## A054089.P8768709253916504118

`A026351(A110654(n))+∑[A001057(n)]`
-/

namespace A054089.P8768709253916504118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A110654 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054089.P8768709253916504118

namespace A054089

/-- `A026351(A110654(n))+∑[A001057(n)]` -/
def P8768709253916504118.Spec : Prop :=
  ∀ n, P8768709253916504118.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P5156601173411146327

`A145051(n+1)+A060143(A065033(n))`
-/

namespace A054089.P5156601173411146327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) + A060143 (A065033 n).toNat

end

end A054089.P5156601173411146327

namespace A054089

/-- `A145051(n+1)+A060143(A065033(n))` -/
def P5156601173411146327.Spec : Prop :=
  ∀ n, P5156601173411146327.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P4835744038929511707

`A145051(n+1)+A060143(A110654(n))`
-/

namespace A054089.P4835744038929511707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) + A060143 (A110654 n).toNat

end

end A054089.P4835744038929511707

namespace A054089

/-- `A145051(n+1)+A060143(A110654(n))` -/
def P4835744038929511707.Spec : Prop :=
  ∀ n, P4835744038929511707.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P16293337397581757479

`A188435(n+1)-A027656(A028310(n))`
-/

namespace A054089.P16293337397581757479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1) - A027656 (A028310 n).toNat

end

end A054089.P16293337397581757479

namespace A054089

/-- `A188435(n+1)-A027656(A028310(n))` -/
def P16293337397581757479.Spec : Prop :=
  ∀ n, P16293337397581757479.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P1563592478912374942

`A054082(C(n, C(n, n²))+1+n)-1`
-/

namespace A054089.P1563592478912374942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (Nat.choose n (Nat.choose n (n ^ 2)) + 1 + n) - 1

end

end A054089.P1563592478912374942

namespace A054089

/-- `A054082(C(n, C(n, n²))+1+n)-1` -/
def P1563592478912374942.Spec : Prop :=
  ∀ n, P1563592478912374942.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P9377990662646083925

`A054082(n+2)-A057427(n)`
-/

namespace A054089.P9377990662646083925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (n + 2) - A057427 n

end

end A054089.P9377990662646083925

namespace A054089

/-- `A054082(n+2)-A057427(n)` -/
def P9377990662646083925.Spec : Prop :=
  ∀ n, P9377990662646083925.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P7389553813201196908

`A054082(A103517(n)-n)-1`
-/

namespace A054089.P7389553813201196908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (A103517 n - (n : ℤ)).toNat - 1

end

end A054089.P7389553813201196908

namespace A054089

/-- `A054082(A103517(n)-n)-1` -/
def P7389553813201196908.Spec : Prop :=
  ∀ n, P7389553813201196908.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P8425793667623342572

`A188010(n+2)-A027656(n)`
-/

namespace A054089.P8425793667623342572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 2) - A027656 n

end

end A054089.P8425793667623342572

namespace A054089

/-- `A188010(n+2)-A027656(n)` -/
def P8425793667623342572.Spec : Prop :=
  ∀ n, P8425793667623342572.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P15465544149451739912

`A026351(A004526(n+1))+∑[n]%(n+1)`
-/

namespace A054089.P15465544149451739912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A004526 (n + 1)).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A054089.P15465544149451739912

namespace A054089

/-- `A026351(A004526(n+1))+∑[n]%(n+1)` -/
def P15465544149451739912.Spec : Prop :=
  ∀ n, P15465544149451739912.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P1940485619050442013

`A060143(A110654(n))+A026741(n+2)`
-/

namespace A054089.P1940485619050442013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A110654 n).toNat + A026741 (n + 2)

end

end A054089.P1940485619050442013

namespace A054089

/-- `A060143(A110654(n))+A026741(n+2)` -/
def P1940485619050442013.Spec : Prop :=
  ∀ n, P1940485619050442013.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P7929763792974386629

`A142150(n+1)+A026351(A004526(n+1))`
-/

namespace A054089.P7929763792974386629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A026351 (A004526 (n + 1)).toNat

end

end A054089.P7929763792974386629

namespace A054089

/-- `A142150(n+1)+A026351(A004526(n+1))` -/
def P7929763792974386629.Spec : Prop :=
  ∀ n, P7929763792974386629.a n = A054089 (n + 1)

end A054089

/-! ## A054089.P17815850397533958893

`A054082(n+2)-A287523(A026355(n+1))`
-/

namespace A054089.P17815850397533958893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (n + 2) - A287523 (A026355 (n + 1)).toNat

end

end A054089.P17815850397533958893

namespace A054089

/-- `A054082(n+2)-A287523(A026355(n+1))` -/
def P17815850397533958893.Spec : Prop :=
  ∀ n, P17815850397533958893.a n = A054089 (n + 1)

end A054089

/-!
# A054090: Triangular array generated by its row sums: T(n,0) = 1 for n >= 0, T(n,1) = r(n-1), T(n,k) = T(n,k-1) - (-1)^k * r(n-k) for k = 2, 3, ..., n, n >= 2, r(h) = sum of the numbers in row h of T.

The programs for A054090, there is no canonical definition to state claims against.
-/

/-! ## A054090.P16128664689222044249

`A248231(A090110(A054098(n+1)))`
-/

namespace A054090.P16128664689222044249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A090110 (A054098 (n + 1)).toNat).toNat

end

end A054090.P16128664689222044249

/-! ## A054090.P15275141994579885347

`A248231(A054098(n+1)%A105715(n))`
-/

namespace A054090.P15275141994579885347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (Int.tmod (A054098 (n + 1)) (A105715 n)).toNat

end

end A054090.P15275141994579885347

/-! ## A054090.P10922064612148620919

`A248231(A054098(n+1))%A105716(n)`
-/

namespace A054090.P10922064612148620919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248231 (A054098 (n + 1)).toNat) (A105716 n)

end

end A054090.P10922064612148620919

/-!
# A054091: Row sums of A054090.

The programs for A054091, the canonical program `A054091.P17627261631344330357` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054091 has offset 0).

The definition of A054091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054091.P17627261631344330357

`2+(n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054091

/-- `2+(n-1)*a(n-1)` -/
def P17627261631344330357.Spec : Prop :=
  ∀ n, P17627261631344330357.a n = A054091 n

theorem P17627261631344330357.correct : P17627261631344330357.Spec := by
  intro n
  simp only [A054091]

end A054091

/-! ## A054091.P12398395087578983228

`abs((1-n)*a(n-1)-2)` with `a(0)=1`
-/

namespace A054091.P12398395087578983228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(1 - (n : ℤ)) * a (n - 1) - 2|

end

end A054091.P12398395087578983228

namespace A054091

/-- `abs((1-n)*a(n-1)-2)` -/
def P12398395087578983228.Spec : Prop :=
  ∀ n, P12398395087578983228.a n = A054091 n

end A054091

/-! ## A054091.P16426597883049244065

`∏[n-(n-2)/a(n-1)]` with `a(0)=1`
-/

namespace A054091.P16426597883049244065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) - ((n : ℤ) - 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054091.P16426597883049244065

namespace A054091

/-- `∏[n-(n-2)/a(n-1)]` -/
def P16426597883049244065.Spec : Prop :=
  ∀ n, P16426597883049244065.a n = (A054091 n : ℚ)

end A054091

/-! ## A054091.P8165457557989568865

`lcm(2, (1-n)*a(n-1)-2)` with `a(0)=1`
-/

namespace A054091.P8165457557989568865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 2 ((1 - (n : ℤ)) * (a (n - 1) : ℤ) - 2)

end

end A054091.P8165457557989568865

namespace A054091

/-- `lcm(2, (1-n)*a(n-1)-2)` -/
def P8165457557989568865.Spec : Prop :=
  ∀ n, (P8165457557989568865.a n : ℤ) = A054091 n

end A054091

/-! ## A054091.P8154103273629218129

`2-floor(-((n-1)*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054091.P8154103273629218129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (-(((n : ℤ) - 1) * a (n - 1)))

end

end A054091.P8154103273629218129

namespace A054091

/-- `2-floor(-((n-1)*a(n-1)))` -/
def P8154103273629218129.Spec : Prop :=
  ∀ n, P8154103273629218129.a n = A054091 n

theorem P8154103273629218129.correct : P8154103273629218129.Spec := by
  intro n
  simp only [A054091, Nat.add_sub_cancel, A054091.P8154103273629218129.a, A054091.P17627261631344330357.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054091

/-! ## A054091.P8878434045954096782

`-xor((n-1)*a(n-1), -2)` with `a(0)=1`
-/

namespace A054091.P8878434045954096782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor (((n : ℤ) - 1) * a (n - 1)) (-2)

end

end A054091.P8878434045954096782

namespace A054091

/-- `-xor((n-1)*a(n-1), -2)` -/
def P8878434045954096782.Spec : Prop :=
  ∀ n, P8878434045954096782.a n = A054091 n

end A054091

/-! ## A054091.P14372293117913094172

`2-(a(n-1)-n*a(n-1))` with `a(0)=1`
-/

namespace A054091.P14372293117913094172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - (n : ℤ) * a (n - 1))

end

end A054091.P14372293117913094172

namespace A054091

/-- `2-(a(n-1)-n*a(n-1))` -/
def P14372293117913094172.Spec : Prop :=
  ∀ n, P14372293117913094172.a n = A054091 n

end A054091

/-! ## A054091.P12019158567100725267

`2-a(n-1)/(n/(1-n)+1)` with `a(0)=1, a(1)=2`
-/

namespace A054091.P12019158567100725267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - a (n - 1) / ((n : ℚ) / (1 - (n : ℤ) : ℚ) + 1)

end

end A054091.P12019158567100725267

namespace A054091

/-- `2-a(n-1)/(n/(1-n)+1)` -/
def P12019158567100725267.Spec : Prop :=
  ∀ n, P12019158567100725267.a n = (A054091 n : ℚ)

end A054091

/-! ## A054091.P5605438722196985935

`2-(a(n-1)-a(n-1)/n^(-1))` with `a(0)=1`
-/

namespace A054091.P5605438722196985935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ))

end

end A054091.P5605438722196985935

namespace A054091

/-- `2-(a(n-1)-a(n-1)/n^(-1))` -/
def P5605438722196985935.Spec : Prop :=
  ∀ n, P5605438722196985935.a n = (A054091 n : ℚ)

end A054091

/-! ## A054091.P16210876151689752988

`record[A054090(n)]`
-/

namespace A054091.P16210876151689752988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054091.P16210876151689752988

namespace A054091

/-- `record[A054090(n)]` -/
def P16210876151689752988.Spec : Prop :=
  ∀ n, P16210876151689752988.a n = A054091 n

end A054091

/-!
# A054092: T(n,n), array T as in A054090.

The programs for A054092, there is no canonical definition to state claims against.
-/

/-! ## A054092.P13834006076575637174

`A054090(∑[n]+n)`
-/

namespace A054092.P13834006076575637174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A054092.P13834006076575637174

/-! ## A054092.P3775932083385588125

`or(1, A054090(A000096(n)))`
-/

namespace A054092.P3775932083385588125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054090 (A000096 n).toNat)

end

end A054092.P3775932083385588125

/-! ## A054092.P2463637200801497625

`gcd(A000038(n), A054090(A000096(n)))`
-/

namespace A054092.P2463637200801497625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054090 (A000096 n).toNat)

end

end A054092.P2463637200801497625

/-! ## A054092.P7838740735944137376

`A054090(A000096(n))*A070886(n²)`
-/

namespace A054092.P7838740735944137376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A000096 n).toNat * A070886 (n ^ 2)

end

end A054092.P7838740735944137376

/-! ## A054092.P16740510656607760963

`char[A014681(n)]*A054090(A000096(n))`
-/

namespace A054092.P16740510656607760963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054090 (A000096 n).toNat

end

end A054092.P16740510656607760963

/-! ## A054092.P17608457258316729460

`char[A022828(n)]*A054090(A000096(n))`
-/

namespace A054092.P17608457258316729460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022828 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054090 (A000096 n).toNat

end

end A054092.P17608457258316729460

/-! ## A054092.P7188480043823745487

`A054090(A000096(n))+A000038(n+1)`
-/

namespace A054092.P7188480043823745487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A000096 n).toNat + A000038 (n + 1)

end

end A054092.P7188480043823745487

/-! ## A054092.P5117153886181509521

`A054090(A000096(n))+A000035(2*n)`
-/

namespace A054092.P5117153886181509521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A000096 n).toNat + A000035 (2 * n)

end

end A054092.P5117153886181509521

/-! ## A054092.P5816585027826618297

`A007318(C(2, n+2))*A054090(A000096(n))`
-/

namespace A054092.P5816585027826618297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A054090 (A000096 n).toNat

end

end A054092.P5816585027826618297

/-!
# A054093: T(n,n-1), array T as in A054090.

The programs for A054093, there is no canonical definition to state claims against.
-/

/-! ## A054093.P16718323858309290062

`A054090(∑[n+2]-1)`
-/

namespace A054093.P16718323858309290062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054093.P16718323858309290062

/-! ## A054093.P14798968659980261567

`A054091(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054093.P14798968659980261567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A054091 n - a (n - 1)

end

end A054093.P14798968659980261567

/-! ## A054093.P17728158283596366816

`A006183(n)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A054093.P17728158283596366816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A006183 n + a (n - 2)

end

end A054093.P17728158283596366816

/-! ## A054093.P8183577973745860176

`1-(a(n-1)-A111063(n))` with `a(0)=1, a(1)=2`
-/

namespace A054093.P8183577973745860176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 1) - A111063 n)

end

end A054093.P8183577973745860176

/-! ## A054093.P8071717113394025588

`A062157(n)+A054092(n+1)`
-/

namespace A054093.P8071717113394025588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A054092 (n + 1)

end

end A054093.P8071717113394025588

/-! ## A054093.P8132044857921849799

`A054092(n+1)-(n-A014681(n))`
-/

namespace A054093.P8132044857921849799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054092 (n + 1) - ((n : ℤ) - A014681 n)

end

end A054093.P8132044857921849799

/-! ## A054093.P13567742859816526059

`A054094(n+2)-Δ[A054092(n+1)]`
-/

namespace A054093.P13567742859816526059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054094 (n + 2) - (f1 (n + 1) - f1 n)

end

end A054093.P13567742859816526059

/-!
# A054094: T(n,n-2), array T as in A054090.

The programs for A054094, there is no canonical definition to state claims against.
-/

/-! ## A054094.P2832524362885662868

`A054090(∑[n+3])`
-/

namespace A054094.P2832524362885662868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054094.P2832524362885662868

/-! ## A054094.P3716072714636495311

`A062157(n)+A054092(n+2)`
-/

namespace A054094.P3716072714636495311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A054092 (n + 2)

end

end A054094.P3716072714636495311

/-! ## A054094.P510470327331302225

`A054092(n+2)-(n-A014681(n))`
-/

namespace A054094.P510470327331302225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054092 (n + 2) - ((n : ℤ) - A014681 n)

end

end A054094.P510470327331302225

/-! ## A054094.P14822927783984705447

`and(1, n)!*A054090(A055998(n+1))`
-/

namespace A054094.P14822927783984705447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A054090 (A055998 (n + 1)).toNat

end

end A054094.P14822927783984705447

/-! ## A054094.P8354330305725053490

`lcm(A000034(n), A054090(A055998(n+1)))`
-/

namespace A054094.P8354330305725053490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A054090 (A055998 (n + 1)).toNat)

end

end A054094.P8354330305725053490

/-! ## A054094.P10481927958999283641

`or(A000007(n), A054090(A055998(n+1)))`
-/

namespace A054094.P10481927958999283641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054090 (A055998 (n + 1)).toNat)

end

end A054094.P10481927958999283641

/-! ## A054094.P17002669108259723736

`A054090(A055998(n+1))+C(n, A000040(n+1))`
-/

namespace A054094.P17002669108259723736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A055998 (n + 1)).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A054094.P17002669108259723736

/-! ## A054094.P12869294732146807163

`A007318(A057944(n))*A054090(A055998(n+1))`
-/

namespace A054094.P12869294732146807163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * A054090 (A055998 (n + 1)).toNat

end

end A054094.P12869294732146807163

/-! ## A054094.P6253408333563620961

`A061358(A014092(n+1))+A054090(A055998(n+1))`
-/

namespace A054094.P6253408333563620961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A014092 (n + 1)).toNat + A054090 (A055998 (n + 1)).toNat

end

end A054094.P6253408333563620961

/-! ## A054094.P268041048033972434

`A099894(A134555(n+1))+A054090(A055998(n+1))`
-/

namespace A054094.P268041048033972434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A134555 (n + 1)).toNat + A054090 (A055998 (n + 1)).toNat

end

end A054094.P268041048033972434

/-!
# A054095: T(n,n-3), array T as in A054090.

The programs for A054095, there is no canonical definition to state claims against.
-/

/-! ## A054095.P17185633071868436065

`A054090(∑[n+4]+2)`
-/

namespace A054095.P17185633071868436065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A054095.P17185633071868436065

/-! ## A054095.P16080909603293522367

`A054094(n+2)+Δ[A054093(n+2)]`
-/

namespace A054095.P16080909603293522367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054094 (n + 2) + (f1 (n + 1) - f1 n)

end

end A054095.P16080909603293522367

/-! ## A054095.P14368681956463740521

`A054090(A167614(n+1)+A005843(n))+A000007(n+1)`
-/

namespace A054095.P14368681956463740521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A167614 (n + 1) + A005843 n).toNat + A000007 (n + 1)

end

end A054095.P14368681956463740521

/-! ## A054095.P1295107518946588470

`A355820(2*(n+1))+A054090(A167614(n+1)+A005843(n))`
-/

namespace A054095.P1295107518946588470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (2 * (n + 1)) + A054090 (A167614 (n + 1) + A005843 n).toNat

end

end A054095.P1295107518946588470

/-! ## A054095.P12859419940771294035

`record[A054090(n)/A208058(n+3)]`
-/

namespace A054095.P12859419940771294035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054090 n : ℚ) / (A208058 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054095.P12859419940771294035

/-!
# A054097: T(n,3), array T as in A054090.

The programs for A054097, there is no canonical definition to state claims against.
-/

/-! ## A054097.P1269289139299635629

`A054090(A167614(n+2))`
-/

namespace A054097.P1269289139299635629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A167614 (n + 2)).toNat

end

end A054097.P1269289139299635629

/-! ## A054097.P434701277839040952

`A054091(n)+A006183(n+2)`
-/

namespace A054097.P434701277839040952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n + A006183 (n + 2)

end

end A054097.P434701277839040952

/-! ## A054097.P7935251314708056606

`A054091(n)+2*A001339(n)`
-/

namespace A054097.P7935251314708056606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n + 2 * A001339 n

end

end A054097.P7935251314708056606

/-! ## A054097.P1175434176781725472

`A054091(n)+Δ[A054091(n+1)]`
-/

namespace A054097.P1175434176781725472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n + (f1 (n + 1) - f1 n)

end

end A054097.P1175434176781725472

/-! ## A054097.P8808427585932719675

`A054090(A052905(n+1)+4-n)`
-/

namespace A054097.P8808427585932719675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (A052905 (n + 1) + (4 - (n : ℤ))).toNat

end

end A054097.P8808427585932719675

/-! ## A054097.P17879832978259175316

`Δ[A006183(n+1)]+2*A000522(n)`
-/

namespace A054097.P17879832978259175316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000522 n

end

end A054097.P17879832978259175316

/-! ## A054097.P5681507223770510827

`A000522(n+1)+A000522(n+1)-A006183(n+1)`
-/

namespace A054097.P5681507223770510827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) + (A000522 (n + 1) - A006183 (n + 1))

end

end A054097.P5681507223770510827

/-!
# A054099: Sum{T(n,k): k=0,1,...,n}, array T as in A054098.

The programs for A054099, there is no canonical definition to state claims against.
-/

/-! ## A054099.P4034188883640087307

`(n-1)*a(n-1)+2` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A054099.P4034188883640087307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + 2

end

end A054099.P4034188883640087307

/-! ## A054099.P9261731504803781429

`record[A054098(n+4)]`
-/

namespace A054099.P9261731504803781429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054099.P9261731504803781429

/-! ## A054099.P16853903497417246137

`∑[A054098(∑[n+1]+3)]`
-/

namespace A054099.P16853903497417246137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054099.P16853903497417246137

/-! ## A054099.P15433884796608488491

`2-a(n-1)*A024000(n)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A054099.P15433884796608488491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  2 - a (n - 1) * A024000 n

end

end A054099.P15433884796608488491

/-! ## A054099.P17937941449203321118

`A054098(A134869(n+1)+1)`
-/

namespace A054099.P17937941449203321118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A134869 (n + 1) + 1).toNat

end

end A054099.P17937941449203321118

/-! ## A054099.P17468640529310671049

`A054105(n+3)-A054104(n+3)`
-/

namespace A054099.P17468640529310671049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054105 (n + 3) - A054104 (n + 3)

end

end A054099.P17468640529310671049

