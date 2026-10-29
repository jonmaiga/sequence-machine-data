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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A135700: Palindromes formed from the reflected decimal expansion of golden ratio phi.

The programs for A135700, there is no canonical definition to state claims against.
-/

/-! ## A135700.P14379890919950115617

`A284293(A095031(n+1)*A095031(n+2)+1)`
-/

namespace A135700.P14379890919950115617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (A095031 (n + 1) * A095031 (n + 2) + 1).toNat

end

end A135700.P14379890919950115617

/-! ## A135700.P3922128511740129713

`A135634(n+1)-A287622(A005843(n)^A287643(n+1))`
-/

namespace A135700.P3922128511740129713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135634 (n + 1) - A287622 (SequenceMachineLib.roundAway ((A005843 n : ℚ) ^ (A287643 (n + 1) : ℤ))).toNat

end

end A135700.P3922128511740129713

/-!
# A135701: First differences of indices of A000043.

The programs for A135701, there is no canonical definition to state claims against.
-/

/-! ## A135701.P18141136145678003783

`A016027(n+2)-A016027(n+1)`
-/

namespace A135701.P18141136145678003783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 (n + 2) - A016027 (n + 1)

end

end A135701.P18141136145678003783

/-! ## A135701.P17084618392898237892

`A000720(A000043(n+2))-A000720(A000043(n+1))`
-/

namespace A135701.P17084618392898237892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000043 (n + 2)).toNat - A000720 (A000043 (n + 1)).toNat

end

end A135701.P17084618392898237892

/-! ## A135701.P5667294622627386795

`Δ[A016027(n+1)]`
-/

namespace A135701.P5667294622627386795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135701.P5667294622627386795

/-! ## A135701.P13340753744122144368

`A157890(n+1)+1`
-/

namespace A135701.P13340753744122144368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157890 (n + 1) + 1

end

end A135701.P13340753744122144368

/-! ## A135701.P3627451029223251498

`abs(Δ[A016027(n-log2(1/2))])`
-/

namespace A135701.P3627451029223251498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A135701.P3627451029223251498

/-! ## A135701.P6421858092580132116

`A134458(n+1)-A157894(n+1)`
-/

namespace A135701.P6421858092580132116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (n + 1) - A157894 (n + 1)

end

end A135701.P6421858092580132116

/-! ## A135701.P8711740775278654096

`A000043(n+2)-(A157894(n+1)+A000043(n+1))`
-/

namespace A135701.P8711740775278654096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 2) - (A157894 (n + 1) + A000043 (n + 1))

end

end A135701.P8711740775278654096

/-!
# A135703: a(n) = n*(7*n-2).

The programs for A135703, the canonical program `A135703.P16089761573645246278` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135703 has offset 0).

The definition of A135703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-2)` (program `A135703.P16089761573645246278`, by `A135703.P16089761573645246278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135703.P16089761573645246278

`n*(7*n-2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135703

/-- `n*(7*n-2)` -/
def P16089761573645246278.Spec : Prop :=
  ∀ n, P16089761573645246278.a n = A135703 n

theorem P16089761573645246278.correct : P16089761573645246278.Spec := by
  intro n
  simp only [A135703]

end A135703

/-! ## A135703.P1054326164578770597

`5*n+14*C(n, 2)`
-/

namespace A135703.P1054326164578770597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 14 * Nat.choose n 2

end

end A135703.P1054326164578770597

namespace A135703

/-- `5*n+14*C(n, 2)` -/
def P1054326164578770597.Spec : Prop :=
  ∀ n, (P1054326164578770597.a n : ℤ) = A135703 n

theorem P1054326164578770597.correct : P1054326164578770597.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P1054326164578770597.a, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P12071122871763503890

`4*A000217(n)+A051624(n)`
-/

namespace A135703.P12071122871763503890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 n + A051624 n

end

end A135703.P12071122871763503890

namespace A135703

/-- `4*A000217(n)+A051624(n)` -/
def P12071122871763503890.Spec : Prop :=
  ∀ n, P12071122871763503890.a n = A135703 n

theorem P12071122871763503890.correct : P12071122871763503890.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P12071122871763503890.a, A135703.P16089761573645246278.a, A000217, A000217.P10269402890581615239.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P6883979670232433932

`∑[a(n-1)+14]` with `a(0)=0, a(1)=5`
-/

namespace A135703.P6883979670232433932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135703.P6883979670232433932

namespace A135703

/-- `∑[a(n-1)+14]` -/
def P6883979670232433932.Spec : Prop :=
  ∀ n, (P6883979670232433932.a n : ℤ) = A135703 n

end A135703

/-! ## A135703.P2989862972278388853

`∑[ogf((5x+9x^2)/(1-2x+x^2))]`
-/

namespace A135703.P2989862972278388853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135703.P2989862972278388853

namespace A135703

/-- `∑[ogf((5x+9x^2)/(1-2x+x^2))]` -/
def P2989862972278388853.Spec : Prop :=
  ∀ n, P2989862972278388853.a n = A135703 n

end A135703

/-! ## A135703.P9108317464802605861

`ogf((5x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A135703.P9108317464802605861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 9] [1, -3, 3, -1] n

end

end A135703.P9108317464802605861

namespace A135703

/-- `ogf((5x+9x^2)/(1-3x+3x^2-x^3))` -/
def P9108317464802605861.Spec : Prop :=
  ∀ n, P9108317464802605861.a n = A135703 n

end A135703

/-! ## A135703.P15029485761147921662

`9-∑[a(n-1)-14]` with `a(0)=9`
-/

namespace A135703.P15029485761147921662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135703.P15029485761147921662

namespace A135703

/-- `9-∑[a(n-1)-14]` -/
def P15029485761147921662.Spec : Prop :=
  ∀ n, P15029485761147921662.a n = A135703 n

end A135703

/-! ## A135703.P5491278357176639045

`A195023(n)/2`
-/

namespace A135703.P5491278357176639045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195023 n : ℚ) / 2

end

end A135703.P5491278357176639045

namespace A135703

/-- `A195023(n)/2` -/
def P5491278357176639045.Spec : Prop :=
  ∀ n, P5491278357176639045.a n = (A135703 n : ℚ)

theorem P5491278357176639045.correct : P5491278357176639045.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P5491278357176639045.a, A135703.P16089761573645246278.a, A195023, A195023.P13395883807883486776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P17202878764826151927

`A033579(n)+n²`
-/

namespace A135703.P17202878764826151927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + (n ^ 2 : ℤ)

end

end A135703.P17202878764826151927

namespace A135703

/-- `A033579(n)+n²` -/
def P17202878764826151927.Spec : Prop :=
  ∀ n, P17202878764826151927.a n = A135703 n

theorem P17202878764826151927.correct : P17202878764826151927.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P17202878764826151927.a, A135703.P16089761573645246278.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P15679696746340224265

`A014635(n)-n²`
-/

namespace A135703.P15679696746340224265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (n ^ 2 : ℤ)

end

end A135703.P15679696746340224265

namespace A135703

/-- `A014635(n)-n²` -/
def P15679696746340224265.Spec : Prop :=
  ∀ n, P15679696746340224265.a n = A135703 n

theorem P15679696746340224265.correct : P15679696746340224265.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P15679696746340224265.a, A135703.P16089761573645246278.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P879825040342993795

`2*A218471(n)+n`
-/

namespace A135703.P879825040342993795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218471 n + (n : ℤ)

end

end A135703.P879825040342993795

namespace A135703

/-- `2*A218471(n)+n` -/
def P879825040342993795.Spec : Prop :=
  ∀ n, P879825040342993795.a n = A135703 n

end A135703

/-! ## A135703.P16826466082316730873

`2*A022264(n)-n`
-/

namespace A135703.P16826466082316730873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022264 n - (n : ℤ)

end

end A135703.P16826466082316730873

namespace A135703

/-- `2*A022264(n)-n` -/
def P16826466082316730873.Spec : Prop :=
  ∀ n, P16826466082316730873.a n = A135703 n

end A135703

/-! ## A135703.P7057876777721901562

`A033582(n)-2*n`
-/

namespace A135703.P7057876777721901562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - (2 * n : ℤ)

end

end A135703.P7057876777721901562

namespace A135703

/-- `A033582(n)-2*n` -/
def P7057876777721901562.Spec : Prop :=
  ∀ n, P7057876777721901562.a n = A135703 n

theorem P7057876777721901562.correct : P7057876777721901562.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P7057876777721901562.a, A135703.P16089761573645246278.a, A033582, A033582.P4303886374806047270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P729530714772654130

`A139268(n)+3*n`
-/

namespace A135703.P729530714772654130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n + (3 * n : ℤ)

end

end A135703.P729530714772654130

namespace A135703

/-- `A139268(n)+3*n` -/
def P729530714772654130.Spec : Prop :=
  ∀ n, P729530714772654130.a n = A135703 n

theorem P729530714772654130.correct : P729530714772654130.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P729530714772654130.a, A135703.P16089761573645246278.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P8747012650956071688

`A316466(n)/2+n`
-/

namespace A135703.P8747012650956071688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316466 n : ℚ) / 2 + (n : ℚ)

end

end A135703.P8747012650956071688

namespace A135703

/-- `A316466(n)/2+n` -/
def P8747012650956071688.Spec : Prop :=
  ∀ n, P8747012650956071688.a n = (A135703 n : ℚ)

theorem P8747012650956071688.correct : P8747012650956071688.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P8747012650956071688.a, A135703.P16089761573645246278.a, A316466, A316466.P14248741323085177896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P13294429218689462870

`A051868(n)+4*n`
-/

namespace A135703.P13294429218689462870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + (4 * n : ℤ)

end

end A135703.P13294429218689462870

namespace A135703

/-- `A051868(n)+4*n` -/
def P13294429218689462870.Spec : Prop :=
  ∀ n, P13294429218689462870.a n = A135703 n

theorem P13294429218689462870.correct : P13294429218689462870.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P13294429218689462870.a, A135703.P16089761573645246278.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P9970955275699050543

`A092277(n)-3*n`
-/

namespace A135703.P9970955275699050543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092277 n - (3 * n : ℤ)

end

end A135703.P9970955275699050543

namespace A135703

/-- `A092277(n)-3*n` -/
def P9970955275699050543.Spec : Prop :=
  ∀ n, P9970955275699050543.a n = A135703 n

theorem P9970955275699050543.correct : P9970955275699050543.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P9970955275699050543.a, A135703.P16089761573645246278.a, A092277, A092277.P17700678065174571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P11361681699608930359

`(A185019(n)-n)/2`
-/

namespace A135703.P11361681699608930359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185019 n - (n : ℤ) : ℚ) / 2

end

end A135703.P11361681699608930359

namespace A135703

/-- `(A185019(n)-n)/2` -/
def P11361681699608930359.Spec : Prop :=
  ∀ n, P11361681699608930359.a n = (A135703 n : ℚ)

theorem P11361681699608930359.correct : P11361681699608930359.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P11361681699608930359.a, A135703.P16089761573645246278.a, A185019, A185019.P9430512347604204283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P12264609590827197775

`A247541(n)-Δ[n²]`
-/

namespace A135703.P12264609590827197775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A135703.P12264609590827197775

namespace A135703

/-- `A247541(n)-Δ[n²]` -/
def P12264609590827197775.Spec : Prop :=
  ∀ n, P12264609590827197775.a n = A135703 n

theorem P12264609590827197775.correct : P12264609590827197775.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P12264609590827197775.f1, A135703.P12264609590827197775.a, A135703.P16089761573645246278.a, A247541, A247541.P3935640903610456510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-! ## A135703.P6146084781499190312

`A081585(n)-(n+1)²`
-/

namespace A135703.P6146084781499190312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n - ((n + 1) ^ 2 : ℤ)

end

end A135703.P6146084781499190312

namespace A135703

/-- `A081585(n)-(n+1)²` -/
def P6146084781499190312.Spec : Prop :=
  ∀ n, P6146084781499190312.a n = A135703 n

theorem P6146084781499190312.correct : P6146084781499190312.Spec := by
  intro n
  simp only [A135703, Nat.add_sub_cancel, A135703.P6146084781499190312.a, A135703.P16089761573645246278.a, A081585, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135703

/-!
# A135704: a(n) = 7*n^2 + 4*n + 1.

The programs for A135704, there is no canonical definition to state claims against.
-/

/-! ## A135704.P5349960204606726023

`a(n-1)+14*(n-1)-3` with `a(0)=4`
-/

namespace A135704.P5349960204606726023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 14 * ((n : ℤ) - 1) - 3

end

end A135704.P5349960204606726023

/-! ## A135704.P12432817763432212146

`7*(n-1)²+4*(n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135704.P12432817763432212146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) - 1) ^ 2 + 4 * ((n : ℤ) - 1) + 1

end

end A135704.P12432817763432212146

/-! ## A135704.P318022605223762439

`∑[a(n-1)+14]` with `a(0)=4, a(1)=-3`
-/

namespace A135704.P318022605223762439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -3] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135704.P318022605223762439

/-! ## A135704.P10841739051494500914

`abs(A114948(n+1)-A157517(n))`
-/

namespace A135704.P10841739051494500914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114948 (n + 1) - A157517 n|

end

end A135704.P10841739051494500914

/-! ## A135704.P612125013848780838

`Δ[A071229(n+1)-A153794(n)]`
-/

namespace A135704.P612125013848780838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071229 (n + 1) - A153794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135704.P612125013848780838

/-! ## A135704.P10351906139650286564

`A212965(xor(1, comp[2*(n+1)]))`
-/

namespace A135704.P10351906139650286564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A135704.P10351906139650286564

/-! ## A135704.P2182828308351034992

`A000027(A114948(n+1)-A157517(n))`
-/

namespace A135704.P2182828308351034992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A114948 (n + 1) - A157517 n).toNat

end

end A135704.P2182828308351034992

/-!
# A135705: a(n) = 10*binomial(n,2) + 9*n.

The programs for A135705, the canonical program `A135705.P9136998948891428335` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135705 has offset 0).

The definition of A135705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*C(n, 2)+9*n` (program `A135705.P9136998948891428335`, by `A135705.P9136998948891428335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135705.P10012065946234926187

`n*(5*n+4)`
-/

namespace A135705.P10012065946234926187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n + 4)

end

end A135705.P10012065946234926187

namespace A135705

/-- `n*(5*n+4)` -/
def P10012065946234926187.Spec : Prop :=
  ∀ n, (P10012065946234926187.a n : ℤ) = A135705 n

theorem P10012065946234926187.correct : P10012065946234926187.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P10012065946234926187.a, A135705.P9136998948891428335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P9136998948891428335

`10*C(n, 2)+9*n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135705

/-- `10*C(n, 2)+9*n` -/
def P9136998948891428335.Spec : Prop :=
  ∀ n, (P9136998948891428335.a n : ℤ) = A135705 n

theorem P9136998948891428335.correct : P9136998948891428335.Spec := by
  intro n
  simp only [A135705]

end A135705

/-! ## A135705.P11431179544566927404

`ogf((9x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A135705.P11431179544566927404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 1] [1, -3, 3, -1] n

end

end A135705.P11431179544566927404

namespace A135705

/-- `ogf((9x+x^2)/(1-3x+3x^2-x^3))` -/
def P11431179544566927404.Spec : Prop :=
  ∀ n, P11431179544566927404.a n = A135705 n

end A135705

/-! ## A135705.P8094031377397585083

`A003154(n+1)-A000290(n+1)`
-/

namespace A135705.P8094031377397585083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A000290 (n + 1)

end

end A135705.P8094031377397585083

namespace A135705

/-- `A003154(n+1)-A000290(n+1)` -/
def P8094031377397585083.Spec : Prop :=
  ∀ n, P8094031377397585083.a n = A135705 n

theorem P8094031377397585083.correct : P8094031377397585083.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P8094031377397585083.a, A135705.P9136998948891428335.a, A000290, A000290.P12206242496348924484.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P18128506763612403018

`A131242(10*n+8)`
-/

namespace A135705.P18128506763612403018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n + 8)

end

end A135705.P18128506763612403018

namespace A135705

/-- `A131242(10*n+8)` -/
def P18128506763612403018.Spec : Prop :=
  ∀ n, P18128506763612403018.a n = A135705 n

end A135705

/-! ## A135705.P10350983629501651090

`∑[a(n-1)+10]` with `a(0)=0, a(1)=9`
-/

namespace A135705.P10350983629501651090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135705.P10350983629501651090

namespace A135705

/-- `∑[a(n-1)+10]` -/
def P10350983629501651090.Spec : Prop :=
  ∀ n, (P10350983629501651090.a n : ℤ) = A135705 n

end A135705

/-! ## A135705.P9249169700277115858

`∑[ogf((9x+x^2)/(1-2x+x^2))]`
-/

namespace A135705.P9249169700277115858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135705.P9249169700277115858

namespace A135705

/-- `∑[ogf((9x+x^2)/(1-2x+x^2))]` -/
def P9249169700277115858.Spec : Prop :=
  ∀ n, P9249169700277115858.a n = A135705 n

end A135705

/-! ## A135705.P14708013781935582950

`n²-∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A135705.P14708013781935582950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135705.P14708013781935582950

namespace A135705

/-- `n²-∑[a(n-1)-8]` -/
def P14708013781935582950.Spec : Prop :=
  ∀ n, P14708013781935582950.a n = A135705 n

end A135705

/-! ## A135705.P10592382143224085249

`abs(1-a(n-1)-10*n)` with `a(0)=0`
-/

namespace A135705.P10592382143224085249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |1 - a (n - 1) - (10 * n : ℤ)|

end

end A135705.P10592382143224085249

namespace A135705

/-- `abs(1-a(n-1)-10*n)` -/
def P10592382143224085249.Spec : Prop :=
  ∀ n, P10592382143224085249.a n = A135705 n

end A135705

/-! ## A135705.P14784671636551613510

`A124080(n)-n`
-/

namespace A135705.P14784671636551613510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - (n : ℤ)

end

end A135705.P14784671636551613510

namespace A135705

/-- `A124080(n)-n` -/
def P14784671636551613510.Spec : Prop :=
  ∀ n, P14784671636551613510.a n = A135705 n

theorem P14784671636551613510.correct : P14784671636551613510.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P14784671636551613510.a, A135705.P9136998948891428335.a, A124080, A124080.P13908832204994963490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P8367883610726467555

`A079273(n+1)-1`
-/

namespace A135705.P8367883610726467555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1) - 1

end

end A135705.P8367883610726467555

namespace A135705

/-- `A079273(n+1)-1` -/
def P8367883610726467555.Spec : Prop :=
  ∀ n, P8367883610726467555.a n = A135705 n

theorem P8367883610726467555.correct : P8367883610726467555.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P8367883610726467555.a, A135705.P9136998948891428335.a, A079273, A079273.P5421003371963778323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P973717179369538532

`(A016874(n)-4)/5`
-/

namespace A135705.P973717179369538532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016874 n - 4 : ℚ) / 5

end

end A135705.P973717179369538532

namespace A135705

/-- `(A016874(n)-4)/5` -/
def P973717179369538532.Spec : Prop :=
  ∀ n, P973717179369538532.a n = (A135705 n : ℚ)

theorem P973717179369538532.correct : P973717179369538532.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P973717179369538532.a, A135705.P9136998948891428335.a, A016874, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P15893673571633648247

`2*A147875(n)+n`
-/

namespace A135705.P15893673571633648247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147875 n + (n : ℤ)

end

end A135705.P15893673571633648247

namespace A135705

/-- `2*A147875(n)+n` -/
def P15893673571633648247.Spec : Prop :=
  ∀ n, P15893673571633648247.a n = A135705 n

end A135705

/-! ## A135705.P4775174525355586346

`A168668(n)+2*n`
-/

namespace A135705.P4775174525355586346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + (2 * n : ℤ)

end

end A135705.P4775174525355586346

namespace A135705

/-- `A168668(n)+2*n` -/
def P4775174525355586346.Spec : Prop :=
  ∀ n, P4775174525355586346.a n = A135705 n

theorem P4775174525355586346.correct : P4775174525355586346.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P4775174525355586346.a, A135705.P9136998948891428335.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P1857980641153767610

`2*A028895(n)-n`
-/

namespace A135705.P1857980641153767610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028895 n - (n : ℤ)

end

end A135705.P1857980641153767610

namespace A135705

/-- `2*A028895(n)-n` -/
def P1857980641153767610.Spec : Prop :=
  ∀ n, P1857980641153767610.a n = A135705 n

end A135705

/-! ## A135705.P3581497380416981807

`A202803(n)+3*n`
-/

namespace A135705.P3581497380416981807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n + (3 * n : ℤ)

end

end A135705.P3581497380416981807

namespace A135705

/-- `A202803(n)+3*n` -/
def P3581497380416981807.Spec : Prop :=
  ∀ n, P3581497380416981807.a n = A135705 n

theorem P3581497380416981807.correct : P3581497380416981807.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P3581497380416981807.a, A135705.P9136998948891428335.a, A202803, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P16000739829842139449

`A033429(n)+4*n`
-/

namespace A135705.P16000739829842139449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + (4 * n : ℤ)

end

end A135705.P16000739829842139449

namespace A135705

/-- `A033429(n)+4*n` -/
def P16000739829842139449.Spec : Prop :=
  ∀ n, P16000739829842139449.a n = A135705 n

theorem P16000739829842139449.correct : P16000739829842139449.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P16000739829842139449.a, A135705.P9136998948891428335.a, A033429, A033429.P6959806467874002675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P17666799676530097047

`A163761(n)/2-n`
-/

namespace A135705.P17666799676530097047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163761 n : ℚ) / 2 - (n : ℚ)

end

end A135705.P17666799676530097047

namespace A135705

/-- `A163761(n)/2-n` -/
def P17666799676530097047.Spec : Prop :=
  ∀ n, P17666799676530097047.a n = (A135705 n : ℚ)

theorem P17666799676530097047.correct : P17666799676530097047.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P17666799676530097047.a, A135705.P9136998948891428335.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P1963632170446219998

`n*A017365(n)/2`
-/

namespace A135705.P1963632170446219998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A017365 n : ℚ) / 2

end

end A135705.P1963632170446219998

namespace A135705

/-- `n*A017365(n)/2` -/
def P1963632170446219998.Spec : Prop :=
  ∀ n, P1963632170446219998.a n = (A135705 n : ℚ)

theorem P1963632170446219998.correct : P1963632170446219998.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P1963632170446219998.a, A135705.P9136998948891428335.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-! ## A135705.P4977961166568903235

`A062786(n+1)-(n+1)`
-/

namespace A135705.P4977961166568903235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) - (n + 1 : ℤ)

end

end A135705.P4977961166568903235

namespace A135705

/-- `A062786(n+1)-(n+1)` -/
def P4977961166568903235.Spec : Prop :=
  ∀ n, P4977961166568903235.a n = A135705 n

theorem P4977961166568903235.correct : P4977961166568903235.Spec := by
  intro n
  simp only [A135705, Nat.add_sub_cancel, A135705.P4977961166568903235.a, A135705.P9136998948891428335.a, A062786, A062786.P7119948337593956357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135705

/-!
# A135706: a(n) = n*(5*n-3).

The programs for A135706, the canonical program `A135706.P11401560679944584335` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135706 has offset 0).

The definition of A135706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n-3)` (program `A135706.P11401560679944584335`, by `A135706.P11401560679944584335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135706.P11401560679944584335

`n*(5*n-3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135706

/-- `n*(5*n-3)` -/
def P11401560679944584335.Spec : Prop :=
  ∀ n, P11401560679944584335.a n = A135706 n

theorem P11401560679944584335.correct : P11401560679944584335.Spec := by
  intro n
  simp only [A135706]

end A135706

/-! ## A135706.P8046962769571386338

`ogf((2x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A135706.P8046962769571386338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 8] [1, -3, 3, -1] n

end

end A135706.P8046962769571386338

namespace A135706

/-- `ogf((2x+8x^2)/(1-3x+3x^2-x^3))` -/
def P8046962769571386338.Spec : Prop :=
  ∀ n, P8046962769571386338.a n = A135706 n

end A135706

/-! ## A135706.P6288486709620466058

`A131242(10*n+1)`
-/

namespace A135706.P6288486709620466058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n + 1)

end

end A135706.P6288486709620466058

namespace A135706

/-- `A131242(10*n+1)` -/
def P6288486709620466058.Spec : Prop :=
  ∀ n, P6288486709620466058.a n = A135706 n

end A135706

/-! ## A135706.P1766744966322113688

`∑[a(n-1)+10]` with `a(0)=0, a(1)=2`
-/

namespace A135706.P1766744966322113688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135706.P1766744966322113688

namespace A135706

/-- `∑[a(n-1)+10]` -/
def P1766744966322113688.Spec : Prop :=
  ∀ n, (P1766744966322113688.a n : ℤ) = A135706 n

end A135706

/-! ## A135706.P13920720562356018756

`2*n+10*C(n, 2)`
-/

namespace A135706.P13920720562356018756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 10 * Nat.choose n 2

end

end A135706.P13920720562356018756

namespace A135706

/-- `2*n+10*C(n, 2)` -/
def P13920720562356018756.Spec : Prop :=
  ∀ n, (P13920720562356018756.a n : ℤ) = A135706 n

theorem P13920720562356018756.correct : P13920720562356018756.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P13920720562356018756.a, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P4540275504078267772

`∑[ogf((2x+8x^2)/(1-2x+x^2))]`
-/

namespace A135706.P4540275504078267772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135706.P4540275504078267772

namespace A135706

/-- `∑[ogf((2x+8x^2)/(1-2x+x^2))]` -/
def P4540275504078267772.Spec : Prop :=
  ∀ n, P4540275504078267772.a n = A135706 n

end A135706

/-! ## A135706.P18004596058254546669

`8-∑[a(n-1)-10]` with `a(0)=8`
-/

namespace A135706.P18004596058254546669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135706.P18004596058254546669

namespace A135706

/-- `8-∑[a(n-1)-10]` -/
def P18004596058254546669.Spec : Prop :=
  ∀ n, P18004596058254546669.a n = A135706 n

end A135706

/-! ## A135706.P13377143440686044

`A153784(n)/2`
-/

namespace A135706.P13377143440686044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153784 n : ℚ) / 2

end

end A135706.P13377143440686044

namespace A135706

/-- `A153784(n)/2` -/
def P13377143440686044.Spec : Prop :=
  ∀ n, P13377143440686044.a n = (A135706 n : ℚ)

theorem P13377143440686044.correct : P13377143440686044.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P13377143440686044.a, A135706.P11401560679944584335.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P5660374350433422225

`A153786(n)/3`
-/

namespace A135706.P5660374350433422225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153786 n : ℚ) / 3

end

end A135706.P5660374350433422225

namespace A135706

/-- `A153786(n)/3` -/
def P5660374350433422225.Spec : Prop :=
  ∀ n, P5660374350433422225.a n = (A135706 n : ℚ)

theorem P5660374350433422225.correct : P5660374350433422225.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P5660374350433422225.a, A135706.P11401560679944584335.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P13789926756656437116

`n+A051624(n)`
-/

namespace A135706.P13789926756656437116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A051624 n

end

end A135706.P13789926756656437116

namespace A135706

/-- `n+A051624(n)` -/
def P13789926756656437116.Spec : Prop :=
  ∀ n, P13789926756656437116.a n = A135706 n

theorem P13789926756656437116.correct : P13789926756656437116.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P13789926756656437116.a, A135706.P11401560679944584335.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P2321015616266237870

`A001107(n)+n²`
-/

namespace A135706.P2321015616266237870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + (n ^ 2 : ℤ)

end

end A135706.P2321015616266237870

namespace A135706

/-- `A001107(n)+n²` -/
def P2321015616266237870.Spec : Prop :=
  ∀ n, P2321015616266237870.a n = A135706 n

theorem P2321015616266237870.correct : P2321015616266237870.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P2321015616266237870.a, A135706.P11401560679944584335.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P15573687304148368507

`A094159(n)-n²`
-/

namespace A135706.P15573687304148368507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n - (n ^ 2 : ℤ)

end

end A135706.P15573687304148368507

namespace A135706

/-- `A094159(n)-n²` -/
def P15573687304148368507.Spec : Prop :=
  ∀ n, P15573687304148368507.a n = A135706 n

theorem P15573687304148368507.correct : P15573687304148368507.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P15573687304148368507.a, A135706.P11401560679944584335.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P9370370974898996400

`A051682(n)+∑[n]`
-/

namespace A135706.P9370370974898996400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135706.P9370370974898996400

namespace A135706

/-- `A051682(n)+∑[n]` -/
def P9370370974898996400.Spec : Prop :=
  ∀ n, P9370370974898996400.a n = A135706 n

end A135706

/-! ## A135706.P16658150051127925247

`A226492(n)-∑[n]`
-/

namespace A135706.P16658150051127925247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135706.P16658150051127925247

namespace A135706

/-- `A226492(n)-∑[n]` -/
def P16658150051127925247.Spec : Prop :=
  ∀ n, P16658150051127925247.a n = A135706 n

end A135706

/-! ## A135706.P11543562946189310953

`(A134154(n)-1)/3`
-/

namespace A135706.P11543562946189310953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134154 n - 1 : ℚ) / 3

end

end A135706.P11543562946189310953

namespace A135706

/-- `(A134154(n)-1)/3` -/
def P11543562946189310953.Spec : Prop :=
  ∀ n, P11543562946189310953.a n = (A135706 n : ℚ)

theorem P11543562946189310953.correct : P11543562946189310953.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P11543562946189310953.a, A135706.P11401560679944584335.a, A134154, A134154.P10105203805466113981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P1136779950254179703

`2*A152773(n)/3`
-/

namespace A135706.P1136779950254179703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A152773 n : ℚ) / 3

end

end A135706.P1136779950254179703

namespace A135706

/-- `2*A152773(n)/3` -/
def P1136779950254179703.Spec : Prop :=
  ∀ n, P1136779950254179703.a n = (A135706 n : ℚ)

end A135706

/-! ## A135706.P15080430321790375656

`2*A153785(n)/5`
-/

namespace A135706.P15080430321790375656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A153785 n : ℚ) / 5

end

end A135706.P15080430321790375656

namespace A135706

/-- `2*A153785(n)/5` -/
def P15080430321790375656.Spec : Prop :=
  ∀ n, P15080430321790375656.a n = (A135706 n : ℚ)

end A135706

/-! ## A135706.P15425388629637015509

`A147874(n+1)-n`
-/

namespace A135706.P15425388629637015509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1) - (n : ℤ)

end

end A135706.P15425388629637015509

namespace A135706

/-- `A147874(n+1)-n` -/
def P15425388629637015509.Spec : Prop :=
  ∀ n, P15425388629637015509.a n = A135706 n

theorem P15425388629637015509.correct : P15425388629637015509.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P15425388629637015509.a, A135706.P11401560679944584335.a, A147874, A147874.P12438232049573977665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P5544960715654482846

`A190816(n)-1+n`
-/

namespace A135706.P5544960715654482846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n - 1 + (n : ℤ)

end

end A135706.P5544960715654482846

namespace A135706

/-- `A190816(n)-1+n` -/
def P5544960715654482846.Spec : Prop :=
  ∀ n, P5544960715654482846.a n = A135706 n

theorem P5544960715654482846.correct : P5544960715654482846.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P5544960715654482846.a, A135706.P11401560679944584335.a, A190816, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-! ## A135706.P3237480490629585072

`A152965(n)/2+n`
-/

namespace A135706.P3237480490629585072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152965 n : ℚ) / 2 + (n : ℚ)

end

end A135706.P3237480490629585072

namespace A135706

/-- `A152965(n)/2+n` -/
def P3237480490629585072.Spec : Prop :=
  ∀ n, P3237480490629585072.a n = (A135706 n : ℚ)

theorem P3237480490629585072.correct : P3237480490629585072.Spec := by
  intro n
  simp only [A135706, Nat.add_sub_cancel, A135706.P3237480490629585072.a, A135706.P11401560679944584335.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135706

/-!
# A135708: Minimal total number of edges in a polyhex consisting of n hexagonal cells.

The programs for A135708, the canonical program `A135708.P14566165951996967197` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135708 has offset 1).

The definition of A135708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135708.P14566165951996967197

`3*(n+1)+ceil(sqrt(12*(n+1)-3))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135708

/-- `3*(n+1)+ceil(sqrt(12*(n+1)-3))` -/
def P14566165951996967197.Spec : Prop :=
  ∀ n, P14566165951996967197.a n = A135708 (n + 1)

theorem P14566165951996967197.correct : P14566165951996967197.Spec := by
  intro n
  simp only [A135708, Nat.add_sub_cancel]

end A135708

/-! ## A135708.P5254134394467156240

`∑[6-A047931(n+1)]`
-/

namespace A135708.P5254134394467156240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A047931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135708.P5254134394467156240

namespace A135708

/-- `∑[6-A047931(n+1)]` -/
def P5254134394467156240.Spec : Prop :=
  ∀ n, P5254134394467156240.a n = A135708 (n + 1)

end A135708

/-! ## A135708.P9826134449571337491

`A080037(3*n+2)`
-/

namespace A135708.P9826134449571337491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (3 * n + 2)

end

end A135708.P9826134449571337491

namespace A135708

/-- `A080037(3*n+2)` -/
def P9826134449571337491.Spec : Prop :=
  ∀ n, P9826134449571337491.a n = A135708 (n + 1)

end A135708

/-! ## A135708.P12993453970213541223

`A164386(A164386(3*(n+1)))`
-/

namespace A135708.P12993453970213541223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (A164386 (3 * (n + 1))).toNat

end

end A135708.P12993453970213541223

namespace A135708

/-- `A164386(A164386(3*(n+1)))` -/
def P12993453970213541223.Spec : Prop :=
  ∀ n, P12993453970213541223.a n = A135708 (n + 1)

end A135708

/-! ## A135708.P11485538524629932191

`A000037(A000037(3*n+1)+2)`
-/

namespace A135708.P11485538524629932191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A000037 (3 * n + 1) + 2).toNat

end

end A135708.P11485538524629932191

namespace A135708

/-- `A000037(A000037(3*n+1)+2)` -/
def P11485538524629932191.Spec : Prop :=
  ∀ n, P11485538524629932191.a n = A135708 (n + 1)

end A135708

/-! ## A135708.P4907597007911112301

`A135668(A135668(2*n+n+2))`
-/

namespace A135708.P4907597007911112301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (A135668 (2 * n + (n + 2))).toNat

end

end A135708.P4907597007911112301

namespace A135708

/-- `A135668(A135668(2*n+n+2))` -/
def P4907597007911112301.Spec : Prop :=
  ∀ n, P4907597007911112301.a n = A135708 (n + 1)

end A135708

/-! ## A135708.P1565308359119045897

`A263135(A121149(n+1))`
-/

namespace A135708.P1565308359119045897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 (A121149 (n + 1)).toNat

end

end A135708.P1565308359119045897

namespace A135708

/-- `A263135(A121149(n+1))` -/
def P1565308359119045897.Spec : Prop :=
  ∀ n, P1565308359119045897.a n = A135708 (n + 1)

end A135708

/-!
# A135709: Not the sum of three distinct nonzero Fibonacci numbers.

The programs for A135709, there is no canonical definition to state claims against.
-/

/-! ## A135709.P1142235430163980250

`comp[A135558(n+1)-1]+1`
-/

namespace A135709.P1142235430163980250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135558 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135709.P1142235430163980250

/-! ## A135709.P575184179071375924

`∪[A028986(n+1), A111458(n+1)]`
-/

namespace A135709.P575184179071375924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135709.P575184179071375924

/-! ## A135709.P2549589341206483602

`∪[A111458(n+1), A113929(n+1)]`
-/

namespace A135709.P2549589341206483602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135709.P2549589341206483602

/-! ## A135709.P9844518737250772668

`record[n+1-A135138(A121550(n+1))]`
-/

namespace A135709.P9844518737250772668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A135138 (A121550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135709.P9844518737250772668

/-! ## A135709.P8985452747053557261

`A025451(A005563(2*(n+2))*A025478(3*(n+1)))`
-/

namespace A135709.P8985452747053557261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (A005563 (2 * (n + 2)) * A025478 (3 * (n + 1))).toNat

end

end A135709.P8985452747053557261

/-!
# A135710: Positive integers b such that more than one prime factor p of b attains the maximum of (p-1)*v_p(b) where v_p(b) is the valuation of b at p.

The programs for A135710, there is no canonical definition to state claims against.
-/

/-! ## A135710.P15123752183948439036

`A237601(A102546(n+1))+A102578(n+1)`
-/

namespace A135710.P15123752183948439036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237601 (A102546 (n + 1)).toNat + A102578 (n + 1)

end

end A135710.P15123752183948439036

/-!
# A135711: Minimal perimeter of a polyhex with n cells.

The programs for A135711, the canonical program `A135711.P5117175424597361346` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135711 has offset 1).

The definition of A135711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135711.P9047010561057479654

`2*ceil(sqrt(12*(n+1)-3))`
-/

namespace A135711.P9047010561057479654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt ((12 * (n + 1) : ℤ) - 3 : ℝ)⌉

end

end A135711.P9047010561057479654

namespace A135711

/-- `2*ceil(sqrt(12*(n+1)-3))` -/
def P9047010561057479654.Spec : Prop :=
  ∀ n, P9047010561057479654.a n = A135711 (n + 1)

theorem P9047010561057479654.correct : P9047010561057479654.Spec := by
  intro n
  simp only [A135711, Nat.add_sub_cancel, A135711.P9047010561057479654.a, A135711.P5117175424597361346.a, A135708, A135708.P14566165951996967197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135711

/-! ## A135711.P5117175424597361346

`2*A135708(n+1)-6*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135711

/-- `2*A135708(n+1)-6*(n+1)` -/
def P5117175424597361346.Spec : Prop :=
  ∀ n, P5117175424597361346.a n = A135711 (n + 1)

theorem P5117175424597361346.correct : P5117175424597361346.Spec := by
  intro n
  simp only [A135711, Nat.add_sub_cancel]

end A135711

/-! ## A135711.P3868695584243852805

`A020739(A216522(n))`
-/

namespace A135711.P3868695584243852805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A216522 n).toNat

end

end A135711.P3868695584243852805

namespace A135711

/-- `A020739(A216522(n))` -/
def P3868695584243852805.Spec : Prop :=
  ∀ n, P3868695584243852805.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P17923049146321135586

`A020715(2*A216522(n))`
-/

namespace A135711.P17923049146321135586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (2 * A216522 n).toNat

end

end A135711.P17923049146321135586

namespace A135711

/-- `A020715(2*A216522(n))` -/
def P17923049146321135586.Spec : Prop :=
  ∀ n, P17923049146321135586.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P10583997795689046581

`A135708(n+1)-A047932(n+1)`
-/

namespace A135711.P10583997795689046581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135708 (n + 1) - A047932 (n + 1)

end

end A135711.P10583997795689046581

namespace A135711

/-- `A135708(n+1)-A047932(n+1)` -/
def P10583997795689046581.Spec : Prop :=
  ∀ n, P10583997795689046581.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P4619807855216384517

`A005843(floor(2*sqrt(A016777(n)))+1)`
-/

namespace A135711.P4619807855216384517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (⌊2 * Real.sqrt (A016777 n : ℝ)⌋ + 1).toNat

end

end A135711.P4619807855216384517

namespace A135711

/-- `A005843(floor(2*sqrt(A016777(n)))+1)` -/
def P4619807855216384517.Spec : Prop :=
  ∀ n, P4619807855216384517.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P1404710182773519877

`comp[A005044(n)]+2*n-∑[A047931(n+1)]`
-/

namespace A135711.P1404710182773519877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047931 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A135711.P1404710182773519877

namespace A135711

/-- `comp[A005044(n)]+2*n-∑[A047931(n+1)]` -/
def P1404710182773519877.Spec : Prop :=
  ∀ n, P1404710182773519877.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P9736901255295701374

`A008585(A216522(n)+2)-A216522(n)`
-/

namespace A135711.P9736901255295701374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A216522 n + 2).toNat - A216522 n

end

end A135711.P9736901255295701374

namespace A135711

/-- `A008585(A216522(n)+2)-A216522(n)` -/
def P9736901255295701374.Spec : Prop :=
  ∀ n, P9736901255295701374.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P6683516791739120939

`A216522(A216522(n)+A020715(n))+A216522(n)`
-/

namespace A135711.P6683516791739120939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216522 (A216522 n + A020715 n).toNat + A216522 n

end

end A135711.P6683516791739120939

namespace A135711

/-- `A216522(A216522(n)+A020715(n))+A216522(n)` -/
def P6683516791739120939.Spec : Prop :=
  ∀ n, P6683516791739120939.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P16253852321736229214

`Δ[2*∑[A036496(n)]]`
-/

namespace A135711.P16253852321736229214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135711.P16253852321736229214

namespace A135711

/-- `Δ[2*∑[A036496(n)]]` -/
def P16253852321736229214.Spec : Prop :=
  ∀ n, P16253852321736229214.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P8859699251462515995

`A004277(A036496(n+1))`
-/

namespace A135711.P8859699251462515995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A036496 (n + 1)).toNat

end

end A135711.P8859699251462515995

namespace A135711

/-- `A004277(A036496(n+1))` -/
def P8859699251462515995.Spec : Prop :=
  ∀ n, P8859699251462515995.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P12954619858304761314

`A036496(A028310(n+1))+A036496(n+1)`
-/

namespace A135711.P12954619858304761314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 (A028310 (n + 1)).toNat + A036496 (n + 1)

end

end A135711.P12954619858304761314

namespace A135711

/-- `A036496(A028310(n+1))+A036496(n+1)` -/
def P12954619858304761314.Spec : Prop :=
  ∀ n, P12954619858304761314.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P2244481796118022486

`A216522(A020715(A216522(n)+n))+A216522(n)`
-/

namespace A135711.P2244481796118022486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216522 (A020715 (A216522 n + (n : ℤ)).toNat).toNat + A216522 n

end

end A135711.P2244481796118022486

namespace A135711

/-- `A216522(A020715(A216522(n)+n))+A216522(n)` -/
def P2244481796118022486.Spec : Prop :=
  ∀ n, P2244481796118022486.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P17436762208812230734

`A008574(A390458(2*n+1))/2`
-/

namespace A135711.P17436762208812230734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A390458 (2 * n + 1)).toNat : ℚ) / 2

end

end A135711.P17436762208812230734

namespace A135711

/-- `A008574(A390458(2*n+1))/2` -/
def P17436762208812230734.Spec : Prop :=
  ∀ n, P17436762208812230734.a n = (A135711 (n + 1) : ℚ)

end A135711

/-! ## A135711.P14519640623437132986

`A027709(3*n+2)`
-/

namespace A135711.P14519640623437132986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (3 * n + 2)

end

end A135711.P14519640623437132986

namespace A135711

/-- `A027709(3*n+2)` -/
def P14519640623437132986.Spec : Prop :=
  ∀ n, P14519640623437132986.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P4796341727747371237

`A004277(A055086(3*n+1)+2)`
-/

namespace A135711.P4796341727747371237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055086 (3 * n + 1) + 2).toNat

end

end A135711.P4796341727747371237

namespace A135711

/-- `A004277(A055086(3*n+1)+2)` -/
def P4796341727747371237.Spec : Prop :=
  ∀ n, P4796341727747371237.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P16816552976527439450

`A005843(A027434(2*n+n+2))`
-/

namespace A135711.P16816552976527439450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A027434 (2 * n + (n + 2))).toNat

end

end A135711.P16816552976527439450

namespace A135711

/-- `A005843(A027434(2*n+n+2))` -/
def P16816552976527439450.Spec : Prop :=
  ∀ n, P16816552976527439450.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P1377205561906420893

`A005843(A278814(2*(2*n+1)))`
-/

namespace A135711.P1377205561906420893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A278814 (2 * (2 * n + 1))).toNat

end

end A135711.P1377205561906420893

namespace A135711

/-- `A005843(A278814(2*(2*n+1)))` -/
def P1377205561906420893.Spec : Prop :=
  ∀ n, P1377205561906420893.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P2973912772930146138

`A067628(8*n+4)`
-/

namespace A135711.P2973912772930146138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 (8 * n + 4)

end

end A135711.P2973912772930146138

namespace A135711

/-- `A067628(8*n+4)` -/
def P2973912772930146138.Spec : Prop :=
  ∀ n, P2973912772930146138.a n = A135711 (n + 1)

end A135711

/-! ## A135711.P5942935503617321921

`A130819(6*(2*n+1))`
-/

namespace A135711.P5942935503617321921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (6 * (2 * n + 1))

end

end A135711.P5942935503617321921

namespace A135711

/-- `A130819(6*(2*n+1))` -/
def P5942935503617321921.Spec : Prop :=
  ∀ n, P5942935503617321921.a n = A135711 (n + 1)

end A135711

/-!
# A135712: a(n) = (4*n^3 + 11*n^2 + 9*n + 2)/2.

The programs for A135712, the canonical program `A135712.P11545604519971239952` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135712 has offset 0).

The definition of A135712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n^3+11*n²+9*n+2)/2` (program `A135712.P7430889799194474139`, by `A135712.P7430889799194474139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135712.P17564353198850108342

`ogf((1+9x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A135712.P17564353198850108342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 2] [1, -4, 6, -4, 1] n

end

end A135712.P17564353198850108342

namespace A135712

/-- `ogf((1+9x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17564353198850108342.Spec : Prop :=
  ∀ n, P17564353198850108342.a n = A135712 n

end A135712

/-! ## A135712.P4230584038777197571

`(n+1)*(4*n²+7*n+2)/2`
-/

namespace A135712.P4230584038777197571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (4 * n ^ 2 + 7 * n + 2) : ℚ) / 2

end

end A135712.P4230584038777197571

namespace A135712

/-- `(n+1)*(4*n²+7*n+2)/2` -/
def P4230584038777197571.Spec : Prop :=
  ∀ n, P4230584038777197571.a n = (A135712 n : ℚ)

theorem P4230584038777197571.correct : P4230584038777197571.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A135712, Nat.add_sub_cancel, A135712.P4230584038777197571.a, A135712.P11545604519971239952.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A135712, Nat.add_sub_cancel, A135712.P4230584038777197571.a, A135712.P11545604519971239952.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135712

/-! ## A135712.P7430889799194474139

`(4*n^3+11*n²+9*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135712.P7430889799194474139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 + 11 * n ^ 2 + 9 * n + 2 : ℚ) / 2

end

end A135712.P7430889799194474139

namespace A135712

/-- `(4*n^3+11*n²+9*n+2)/2` -/
def P7430889799194474139.Spec : Prop :=
  ∀ n, P7430889799194474139.a n = (A135712 n : ℚ)

theorem P7430889799194474139.correct : P7430889799194474139.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A135712, Nat.add_sub_cancel, A135712.P7430889799194474139.a, A135712.P11545604519971239952.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A135712, Nat.add_sub_cancel, A135712.P7430889799194474139.a, A135712.P11545604519971239952.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135712

/-! ## A135712.P11545604519971239952

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=48, a(3)=118`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135712

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11545604519971239952.Spec : Prop :=
  ∀ n, P11545604519971239952.a n = A135712 n

theorem P11545604519971239952.correct : P11545604519971239952.Spec := by
  intro n
  simp only [A135712]

end A135712

/-! ## A135712.P14479013274551715161

`∑[∑[a(n-1)+12]]` with `a(0)=1, a(1)=11`
-/

namespace A135712.P14479013274551715161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P14479013274551715161

namespace A135712

/-- `∑[∑[a(n-1)+12]]` -/
def P14479013274551715161.Spec : Prop :=
  ∀ n, (P14479013274551715161.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P17230106546453108086

`Δ[C(n²+n, 2)]-∑[n]`
-/

namespace A135712.P17230106546453108086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A135712.P17230106546453108086

namespace A135712

/-- `Δ[C(n²+n, 2)]-∑[n]` -/
def P17230106546453108086.Spec : Prop :=
  ∀ n, P17230106546453108086.a n = A135712 n

end A135712

/-! ## A135712.P880471944952871861

`∑[Δ[n*C(2*n, 2)]+n]`
-/

namespace A135712.P880471944952871861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P880471944952871861

namespace A135712

/-- `∑[Δ[n*C(2*n, 2)]+n]` -/
def P880471944952871861.Spec : Prop :=
  ∀ n, P880471944952871861.a n = A135712 n

end A135712

/-! ## A135712.P10483609340107932349

`∑[n]+lcm((n+1)², Δ[n²])`
-/

namespace A135712.P10483609340107932349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.lcm ((n + 1) ^ 2 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A135712.P10483609340107932349

namespace A135712

/-- `∑[n]+lcm((n+1)², Δ[n²])` -/
def P10483609340107932349.Spec : Prop :=
  ∀ n, (P10483609340107932349.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P15024835859477920433

`∑[C(3*(2*n+1), 2)/3]`
-/

namespace A135712.P15024835859477920433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * (2 * n + 1)) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P15024835859477920433

namespace A135712

/-- `∑[C(3*(2*n+1), 2)/3]` -/
def P15024835859477920433.Spec : Prop :=
  ∀ n, P15024835859477920433.a n = (A135712 n : ℚ)

end A135712

/-! ## A135712.P5418394382998381714

`∑[lcm(2*n+1, 2*n+1+n)]`
-/

namespace A135712.P5418394382998381714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P5418394382998381714

namespace A135712

/-- `∑[lcm(2*n+1, 2*n+1+n)]` -/
def P5418394382998381714.Spec : Prop :=
  ∀ n, (P5418394382998381714.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P552830395824923096

`∑[C(2*n+1, 2)+(2*n+1)²]`
-/

namespace A135712.P552830395824923096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2 + (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P552830395824923096

namespace A135712

/-- `∑[C(2*n+1, 2)+(2*n+1)²]` -/
def P552830395824923096.Spec : Prop :=
  ∀ n, (P552830395824923096.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P1546466884256338975

`C(n+1, 2)+(2*n+1)*(n+1)²`
-/

namespace A135712.P1546466884256338975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (2 * n + 1) * (n + 1) ^ 2

end

end A135712.P1546466884256338975

namespace A135712

/-- `C(n+1, 2)+(2*n+1)*(n+1)²` -/
def P1546466884256338975.Spec : Prop :=
  ∀ n, (P1546466884256338975.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P12707989372705426444

`∑[(2*n+1)*(C(n+1, n)+2*n)]`
-/

namespace A135712.P12707989372705426444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 1) n + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P12707989372705426444

namespace A135712

/-- `∑[(2*n+1)*(C(n+1, n)+2*n)]` -/
def P12707989372705426444.Spec : Prop :=
  ∀ n, (P12707989372705426444.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P3665956917734452151

`a(n-1)+(2*n+1)*(3*n+1)` with `a(0)=1`
-/

namespace A135712.P3665956917734452151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * (3 * n + 1)

end

end A135712.P3665956917734452151

namespace A135712

/-- `a(n-1)+(2*n+1)*(3*n+1)` -/
def P3665956917734452151.Spec : Prop :=
  ∀ n, (P3665956917734452151.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P7907540573332751429

`∑[(2*n+1)*(gcd(n, 2*n)+2*n+1)]`
-/

namespace A135712.P7907540573332751429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.gcd n (2 * n) + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P7907540573332751429

namespace A135712

/-- `∑[(2*n+1)*(gcd(n, 2*n)+2*n+1)]` -/
def P7907540573332751429.Spec : Prop :=
  ∀ n, (P7907540573332751429.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P3446959532667703384

`∑[(2*n+1)*(and(2*n+1, 2*n)+n+1)]`
-/

namespace A135712.P3446959532667703384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.land (2 * n + 1) (2 * n) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P3446959532667703384

namespace A135712

/-- `∑[(2*n+1)*(and(2*n+1, 2*n)+n+1)]` -/
def P3446959532667703384.Spec : Prop :=
  ∀ n, (P3446959532667703384.a n : ℤ) = A135712 n

end A135712

/-! ## A135712.P8420804291291322646

`∑[A033570(n)]`
-/

namespace A135712.P8420804291291322646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P8420804291291322646

namespace A135712

/-- `∑[A033570(n)]` -/
def P8420804291291322646.Spec : Prop :=
  ∀ n, P8420804291291322646.a n = A135712 n

end A135712

/-! ## A135712.P5016643940697908087

`∑[A211014(n)+1]`
-/

namespace A135712.P5016643940697908087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P5016643940697908087

namespace A135712

/-- `∑[A211014(n)+1]` -/
def P5016643940697908087.Spec : Prop :=
  ∀ n, P5016643940697908087.a n = A135712 n

end A135712

/-! ## A135712.P12127198339908667775

`∑[A080859(n)+n]`
-/

namespace A135712.P12127198339908667775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135712.P12127198339908667775

namespace A135712

/-- `∑[A080859(n)+n]` -/
def P12127198339908667775.Spec : Prop :=
  ∀ n, P12127198339908667775.a n = A135712 n

end A135712

/-! ## A135712.P13374261063637335548

`A281381(n)+(n+1)²`
-/

namespace A135712.P13374261063637335548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 n + ((n + 1) ^ 2 : ℤ)

end

end A135712.P13374261063637335548

namespace A135712

/-- `A281381(n)+(n+1)²` -/
def P13374261063637335548.Spec : Prop :=
  ∀ n, P13374261063637335548.a n = A135712 n

end A135712

/-!
# A135713: a(n) = n*(n+1)*(4*n+1)/2.

The programs for A135713, the canonical program `A135713.P9407596548467234547` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135713 has offset 0).

The definition of A135713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(4*n+1)/2` (program `A135713.P6006385250639423549`, by `A135713.P6006385250639423549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135713.P5050593734589365054

`ogf((5x+7x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A135713.P5050593734589365054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 7] [1, -4, 6, -4, 1] n

end

end A135713.P5050593734589365054

namespace A135713

/-- `ogf((5x+7x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5050593734589365054.Spec : Prop :=
  ∀ n, P5050593734589365054.a n = A135713 n

end A135713

/-! ## A135713.P6006385250639423549

`n*(n+1)*(4*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135713.P6006385250639423549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (4 * n + 1) : ℚ) / 2

end

end A135713.P6006385250639423549

namespace A135713

/-- `n*(n+1)*(4*n+1)/2` -/
def P6006385250639423549.Spec : Prop :=
  ∀ n, P6006385250639423549.a n = (A135713 n : ℚ)

theorem P6006385250639423549.correct : P6006385250639423549.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A135713, Nat.add_sub_cancel, A135713.P6006385250639423549.a, A135713.P9407596548467234547.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A135713, Nat.add_sub_cancel, A135713.P6006385250639423549.a, A135713.P9407596548467234547.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135713

/-! ## A135713.P9407596548467234547

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=27, a(3)=78`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135713

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9407596548467234547.Spec : Prop :=
  ∀ n, P9407596548467234547.a n = A135713 n

theorem P9407596548467234547.correct : P9407596548467234547.Spec := by
  intro n
  simp only [A135713]

end A135713

/-! ## A135713.P6294192757884827486

`∑[C(6*n, 2)/3]`
-/

namespace A135713.P6294192757884827486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135713.P6294192757884827486

namespace A135713

/-- `∑[C(6*n, 2)/3]` -/
def P6294192757884827486.Spec : Prop :=
  ∀ n, P6294192757884827486.a n = (A135713 n : ℚ)

end A135713

/-! ## A135713.P1574330709502388953

`∑[lcm(n, 1-6*n)]`
-/

namespace A135713.P1574330709502388953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (6 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135713.P1574330709502388953

namespace A135713

/-- `∑[lcm(n, 1-6*n)]` -/
def P1574330709502388953.Spec : Prop :=
  ∀ n, (P1574330709502388953.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P6343748423807863992

`or(1, 4*n)*∑[n]`
-/

namespace A135713.P6343748423807863992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135713.P6343748423807863992

namespace A135713

/-- `or(1, 4*n)*∑[n]` -/
def P6343748423807863992.Spec : Prop :=
  ∀ n, (P6343748423807863992.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P2232251058277402188

`xor(1, 4*n)*∑[n]`
-/

namespace A135713.P2232251058277402188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135713.P2232251058277402188

namespace A135713

/-- `xor(1, 4*n)*∑[n]` -/
def P2232251058277402188.Spec : Prop :=
  ∀ n, (P2232251058277402188.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P2727275453390389284

`Δ[C(n², 2)]-∑[n]`
-/

namespace A135713.P2727275453390389284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A135713.P2727275453390389284

namespace A135713

/-- `Δ[C(n², 2)]-∑[n]` -/
def P2727275453390389284.Spec : Prop :=
  ∀ n, P2727275453390389284.a n = A135713 n

end A135713

/-! ## A135713.P12061513070924747848

`∑[n]*Δ[C(2*n, 2)]`
-/

namespace A135713.P12061513070924747848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A135713.P12061513070924747848

namespace A135713

/-- `∑[n]*Δ[C(2*n, 2)]` -/
def P12061513070924747848.Spec : Prop :=
  ∀ n, P12061513070924747848.a n = A135713 n

end A135713

/-! ## A135713.P12043983069946713137

`(4*n+1)*C(n+1, 2)`
-/

namespace A135713.P12043983069946713137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) * Nat.choose (n + 1) 2

end

end A135713.P12043983069946713137

namespace A135713

/-- `(4*n+1)*C(n+1, 2)` -/
def P12043983069946713137.Spec : Prop :=
  ∀ n, (P12043983069946713137.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P15036596926721594140

`∑[n]+2*lcm(n+1, n²)`
-/

namespace A135713.P15036596926721594140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.lcm (n + 1) (n ^ 2)

end

end A135713.P15036596926721594140

namespace A135713

/-- `∑[n]+2*lcm(n+1, n²)` -/
def P15036596926721594140.Spec : Prop :=
  ∀ n, (P15036596926721594140.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P7425010445754231497

`n/2*∑[a(n-1)+8]` with `a(0)=1`
-/

namespace A135713.P7425010445754231497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A135713.P7425010445754231497

namespace A135713

/-- `n/2*∑[a(n-1)+8]` -/
def P7425010445754231497.Spec : Prop :=
  ∀ n, P7425010445754231497.a n = (A135713 n : ℚ)

end A135713

/-! ## A135713.P15994683699425116662

`6*n²+a(n-1)-n` with `a(0)=0`
-/

namespace A135713.P15994683699425116662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n ^ 2 : ℤ) + (a (n - 1) - (n : ℤ))

end

end A135713.P15994683699425116662

namespace A135713

/-- `6*n²+a(n-1)-n` -/
def P15994683699425116662.Spec : Prop :=
  ∀ n, P15994683699425116662.a n = A135713 n

end A135713

/-! ## A135713.P9740053868610214357

`6*n²-(n-a(n-1))` with `a(0)=0`
-/

namespace A135713.P9740053868610214357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n ^ 2 : ℤ) - ((n : ℤ) - a (n - 1))

end

end A135713.P9740053868610214357

namespace A135713

/-- `6*n²-(n-a(n-1))` -/
def P9740053868610214357.Spec : Prop :=
  ∀ n, P9740053868610214357.a n = A135713 n

end A135713

/-! ## A135713.P15062189971715381976

`∑[n]+n*∑[a(n-1)+4]` with `a(0)=0`
-/

namespace A135713.P15062189971715381976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135713.P15062189971715381976

namespace A135713

/-- `∑[n]+n*∑[a(n-1)+4]` -/
def P15062189971715381976.Spec : Prop :=
  ∀ n, (P15062189971715381976.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P336443174942850936

`lcm((2*n+2*n+1)*∑[n], ∑[n])`
-/

namespace A135713.P336443174942850936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n + (2 * n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135713.P336443174942850936

namespace A135713

/-- `lcm((2*n+2*n+1)*∑[n], ∑[n])` -/
def P336443174942850936.Spec : Prop :=
  ∀ n, (P336443174942850936.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P11957314745914097068

`∑[gcd(n, 2*n)]+2*n*∑[2*n]`
-/

namespace A135713.P11957314745914097068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135713.P11957314745914097068

namespace A135713

/-- `∑[gcd(n, 2*n)]+2*n*∑[2*n]` -/
def P11957314745914097068.Spec : Prop :=
  ∀ n, (P11957314745914097068.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P3494340042330021878

`∑[n]+and(2*n+1, 2*n)*∑[2*n]`
-/

namespace A135713.P3494340042330021878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land (2 * n + 1) (2 * n) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135713.P3494340042330021878

namespace A135713

/-- `∑[n]+and(2*n+1, 2*n)*∑[2*n]` -/
def P3494340042330021878.Spec : Prop :=
  ∀ n, (P3494340042330021878.a n : ℤ) = A135713 n

end A135713

/-! ## A135713.P7274505233113418855

`∑[A049452(n)]`
-/

namespace A135713.P7274505233113418855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135713.P7274505233113418855

namespace A135713

/-- `∑[A049452(n)]` -/
def P7274505233113418855.Spec : Prop :=
  ∀ n, P7274505233113418855.a n = A135713 n

end A135713

/-! ## A135713.P63636202456769203

`∑[A033569(n)+1]`
-/

namespace A135713.P63636202456769203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135713.P63636202456769203

namespace A135713

/-- `∑[A033569(n)+1]` -/
def P63636202456769203.Spec : Prop :=
  ∀ n, P63636202456769203.a n = A135713 n

end A135713

/-!
# A135714: Number of primes of the form prime(n)#/prime(k) - 1, where 1 <= k <= n.

The programs for A135714, there is no canonical definition to state claims against.
-/

/-! ## A135714.P18233377880790815463

`and(A001221(A073399(n)), A026741(n))`
-/

namespace A135714.P18233377880790815463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A073399 n).toNat) (A026741 n)

end

end A135714.P18233377880790815463

/-! ## A135714.P9119888397774413951

`and(A001221(A073399(n)), A317325(n))`
-/

namespace A135714.P9119888397774413951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A073399 n).toNat) (A317325 n)

end

end A135714.P9119888397774413951

/-!
# A135717: a(n) = number of prime divisors of Carmichael numbers A002997(n).

The programs for A135717, there is no canonical definition to state claims against.
-/

/-! ## A135717.P8006407567756448754

`∑{e}[A002997(n+1)/A081702(n+1), #]+1`
-/

namespace A135717.P8006407567756448754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A081702 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1

end

end A135717.P8006407567756448754

/-! ## A135717.P3683983367626735882

`A001221(A002997(n+1)/A081702(n+1))+1`
-/

namespace A135717.P3683983367626735882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A002997 (n + 1) : ℚ) / (A081702 (n + 1) : ℚ))).toNat + 1

end

end A135717.P3683983367626735882

/-! ## A135717.P1953122346519201784

`A001222(A002997(n+1)/A081702(n+1))+1`
-/

namespace A135717.P1953122346519201784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A002997 (n + 1) : ℚ) / (A081702 (n + 1) : ℚ))).toNat + 1

end

end A135717.P1953122346519201784

/-! ## A135717.P16603426788060751911

`A000005(A000005(A002997(n+1)/A081702(n+1)))`
-/

namespace A135717.P16603426788060751911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((A002997 (n + 1) : ℚ) / (A081702 (n + 1) : ℚ))).toNat).toNat

end

end A135717.P16603426788060751911

/-! ## A135717.P15254971873402140276

`∑{e}[A081703(n+1), #]+1`
-/

namespace A135717.P15254971873402140276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A135717.P15254971873402140276

/-! ## A135717.P1411726291637450274

`A002271(∑{e}[A081703(n+1), #])`
-/

namespace A135717.P1411726291637450274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002271 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A135717.P1411726291637450274

/-! ## A135717.P5415459438210514920

`A003159(∑{e}[A081703(n+1), #])`
-/

namespace A135717.P5415459438210514920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A135717.P5415459438210514920

/-! ## A135717.P8462611984132072888

`A004279(∑{e}[A081703(n+1), #])`
-/

namespace A135717.P8462611984132072888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A135717.P8462611984132072888

/-! ## A135717.P10099190364437764367

`A000005(∏{e}[A081703(n+1), #+1])`
-/

namespace A135717.P10099190364437764367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A135717.P10099190364437764367

/-! ## A135717.P9082164510575290034

`A000005(∑{d}[A081703(n+1), #%2])`
-/

namespace A135717.P9082164510575290034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2)

end

end A135717.P9082164510575290034

/-!
# A135718: a(n) = smallest divisor of n^2 that is not a divisor of n.

The programs for A135718, there is no canonical definition to state claims against.
-/

/-! ## A135718.P7035848138683563777

`A064549(n+2)/A052125(A064549(n+2))`
-/

namespace A135718.P7035848138683563777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 2) : ℚ) / (A052125 (A064549 (n + 2)).toNat : ℚ)

end

end A135718.P7035848138683563777

/-! ## A135718.P8954443281482795724

`A034684(A064549(n+2))`
-/

namespace A135718.P8954443281482795724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A064549 (n + 2)).toNat

end

end A135718.P8954443281482795724

/-! ## A135718.P9812717060040104443

`A034684(A078310(n+2)-1)`
-/

namespace A135718.P9812717060040104443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A078310 (n + 2) - 1).toNat

end

end A135718.P9812717060040104443

/-! ## A135718.P16093124866270518217

`A034684((n+2)*A007947(n+2))`
-/

namespace A135718.P16093124866270518217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 ((n + 2 : ℤ) * A007947 (n + 2)).toNat

end

end A135718.P16093124866270518217

/-! ## A135718.P9071538894237348099

`A034684(A003557(n+2)*A078615(n+2))`
-/

namespace A135718.P9071538894237348099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A003557 (n + 2) * A078615 (n + 2)).toNat

end

end A135718.P9071538894237348099

/-!
# A135720: a(n) is the smallest Carmichael number (A002997) with the n-th prime as its smallest prime divisor, or 0 if no such number exists.

The programs for A135720, there is no canonical definition to state claims against.
-/

/-! ## A135720.P4434571120268995572

`A002997(A007091(n+1)^gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A135720.P4434571120268995572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (A007091 (n + 1) ^ Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A135720.P4434571120268995572

/-!
# A135721: a(n) is the smallest Carmichael number (A002997) divisible by the n-th prime, or 0 if no such number exists.

The programs for A135721, there is no canonical definition to state claims against.
-/

/-! ## A135721.P17055477551045089289

`A000027(A290486(n+1))`
-/

namespace A135721.P17055477551045089289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290486 (n + 1)).toNat

end

end A135721.P17055477551045089289

/-! ## A135721.P3221602179600520462

`A290486(A161951(n+1))`
-/

namespace A135721.P3221602179600520462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290486 (A161951 (n + 1)).toNat

end

end A135721.P3221602179600520462

/-! ## A135721.P17500759119173768314

`A290486(A122203(∑[n+1]))`
-/

namespace A135721.P17500759119173768314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290486 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135721.P17500759119173768314

/-! ## A135721.P1315824446736737463

`A290486(A004885(n+1)+1)`
-/

namespace A135721.P1315824446736737463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290486 (A004885 (n + 1) + 1).toNat

end

end A135721.P1315824446736737463

/-! ## A135721.P3857724176255746029

`A290486(A004885(n+2))`
-/

namespace A135721.P3857724176255746029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290486 (A004885 (n + 2)).toNat

end

end A135721.P3857724176255746029

/-!
# A135722: A000012 * A122890.

The programs for A135722, there is no canonical definition to state claims against.
-/

/-! ## A135722.P18403464572558412983

`A048766(A271339(n+1)+1)`
-/

namespace A135722.P18403464572558412983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A271339 (n + 1) + 1).toNat

end

end A135722.P18403464572558412983

/-! ## A135722.P11818115690295710854

`A290569(n)-A174875(A168288(n))`
-/

namespace A135722.P11818115690295710854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 n - A174875 (A168288 n).toNat

end

end A135722.P11818115690295710854

/-! ## A135722.P14655434755802568331

`A290569(n)-A058343(A001263(n+1))`
-/

namespace A135722.P14655434755802568331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 n - A058343 (A001263 (n + 1)).toNat

end

end A135722.P14655434755802568331

/-! ## A135722.P17811080172810274375

`A290569(n)+1-A000203(A299905(n)!)`
-/

namespace A135722.P17811080172810274375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 n + (1 - A000203 (Nat.factorial (A299905 n).toNat))

end

end A135722.P17811080172810274375

/-!
# A135723: A122890 + A000012 - I, I = Identity matrix.

The programs for A135723, there is no canonical definition to state claims against.
-/

/-! ## A135723.P5447979622297767098

`A122890(n)+char[comp[∑[n-1]]]`
-/

namespace A135723.P5447979622297767098
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
  A122890 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135723.P5447979622297767098

/-! ## A135723.P15802285989878884618

`A122890(n)-A023531(n)+1`
-/

namespace A135723.P15802285989878884618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A023531 n + 1

end

end A135723.P15802285989878884618

/-! ## A135723.P14199836123305219617

`A122890(n)+1-A010054(n+1)`
-/

namespace A135723.P14199836123305219617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n + 1 - A010054 (n + 1)

end

end A135723.P14199836123305219617

/-! ## A135723.P2011246832424484550

`A122890(n)+1-A073423(n+1)`
-/

namespace A135723.P2011246832424484550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n + 1 - A073423 (n + 1)

end

end A135723.P2011246832424484550

/-! ## A135723.P4012766662083028712

`A267813(2*(n+1))+A122890(n)`
-/

namespace A135723.P4012766662083028712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 (2 * (n + 1)) + A122890 n

end

end A135723.P4012766662083028712

/-! ## A135723.P16144468912917945168

`A158830(A038722(n+1))+char[comp[∑[n-1]]]`
-/

namespace A135723.P16144468912917945168
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
  A158830 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135723.P16144468912917945168

/-! ## A135723.P827032017406355073

`A136400(A025581(n))+A122890(n)`
-/

namespace A135723.P827032017406355073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A025581 n).toNat + A122890 n

end

end A135723.P827032017406355073

/-! ## A135723.P11293361724260299749

`A295515(A130321(n))+A122890(n)`
-/

namespace A135723.P11293361724260299749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A130321 n).toNat + A122890 n

end

end A135723.P11293361724260299749

/-! ## A135723.P8892338531014798062

`A168046(A025677(n+1))+A122890(n)`
-/

namespace A135723.P8892338531014798062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A025677 (n + 1)).toNat + A122890 n

end

end A135723.P8892338531014798062

/-! ## A135723.P15655801132342208821

`A323022(A004736(n+1))+A122890(n)`
-/

namespace A135723.P15655801132342208821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A004736 (n + 1)).toNat + A122890 n

end

end A135723.P15655801132342208821

/-!
# A135724: 

The programs for A135724, there is no canonical definition to state claims against.
-/

/-! ## A135724.P15367739391443801964

`A000045(p?[A000045(n)])`
-/

namespace A135724.P15367739391443801964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135724.P15367739391443801964

/-!
# A135725: Let d(i) be the i-th digit of the decimal expansion of e = 2.718281828459045235360287471352662..., so that d(0) = 2, d(1) = 7, d(2) = 1, etc. Then a(0) = 2, a(n) = d(d(n)) for n>0.

The programs for A135725, there is no canonical definition to state claims against.
-/

/-! ## A135725.P11876927969840856938

`A001113(A001113(n)+C(2, (n+1)²))`
-/

namespace A135725.P11876927969840856938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A001113 (n + 1) + (Nat.choose 2 ((n + 1) ^ 2) : ℤ)).toNat + 1)

end

end A135725.P11876927969840856938

/-! ## A135725.P10473937063383492313

`A001113(xor(xor(a(n-1), A001113(n)), a(n-1)))` with `a(0)=2`
-/

namespace A135725.P10473937063383492313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001113 ((Int.xor (Int.xor (a (n - 1)) (A001113 (n + 1))) (a (n - 1))).toNat + 1)

end

end A135725.P10473937063383492313

/-! ## A135725.P10897213811491400258

`A001113(A001113(n)*A019429(2*n))`
-/

namespace A135725.P10897213811491400258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A001113 (n + 1) * A019429 (2 * n)).toNat + 1)

end

end A135725.P10897213811491400258

/-! ## A135725.P10405433089012035347

`A001113(A001113(n)^A262616(C(2, n)))`
-/

namespace A135725.P10405433089012035347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway ((A001113 (n + 1) : ℚ) ^ (A262616 (Nat.choose 2 n) : ℤ))).toNat + 1)

end

end A135725.P10405433089012035347

/-! ## A135725.P17950645199327198736

`A001113(n*A001113(n)/A028310(n))`
-/

namespace A135725.P17950645199327198736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway ((n : ℚ) * ((A001113 (n + 1) : ℚ) / (A028310 n : ℚ)))).toNat + 1)

end

end A135725.P17950645199327198736

/-! ## A135725.P1676970216950460

`A001113(A001113(n)*A089026(2*(n+1)))`
-/

namespace A135725.P1676970216950460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A001113 (n + 1) * A089026 (2 * (n + 1))).toNat + 1)

end

end A135725.P1676970216950460

/-! ## A135725.P3893282200334175491

`A001113(gcd(n, A000040(n+1))*A001113(n))`
-/

namespace A135725.P3893282200334175491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((Int.gcd (n : ℤ) (A000040 (n + 1)) : ℤ) * A001113 (n + 1)).toNat + 1)

end

end A135725.P3893282200334175491

/-! ## A135725.P9163523164310454430

`A001113(A035394(a(n-1)+1)+A001113(n))` with `a(0)=2`
-/

namespace A135725.P9163523164310454430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001113 ((A035394 (a (n - 1) + 1).toNat + A001113 (n + 1)).toNat + 1)

end

end A135725.P9163523164310454430

/-! ## A135725.P13681823785779911150

`A001113(A000471(n)/A000501(n)*A001113(n))`
-/

namespace A135725.P13681823785779911150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway ((A000471 n : ℚ) / (A000501 n : ℚ) * (A001113 (n + 1) : ℚ))).toNat + 1)

end

end A135725.P13681823785779911150

/-! ## A135725.P1746519863945755901

`A001113((A151878(n)+1)*A001113(n))`
-/

namespace A135725.P1746519863945755901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((A151878 n + 1) * A001113 (n + 1)).toNat + 1)

end

end A135725.P1746519863945755901

/-!
# A135726: Primes of the form k!!! - 1 = A007661(k) - 1, k > 0.

The programs for A135726, there is no canonical definition to state claims against.
-/

/-! ## A135726.P9294569033715785027

`A007661(A084438(n+1))-1`
-/

namespace A135726.P9294569033715785027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (A084438 (n + 1)).toNat - 1

end

end A135726.P9294569033715785027

/-! ## A135726.P4248240221586575172

`A280193(2*n+1)+A007661(A084438(n+1))`
-/

namespace A135726.P4248240221586575172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A007661 (A084438 (n + 1)).toNat

end

end A135726.P4248240221586575172

/-! ## A135726.P4765679832895160990

`A057428(A007661(n))+A007661(A084438(n+1))`
-/

namespace A135726.P4765679832895160990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007661 n).toNat + A007661 (A084438 (n + 1)).toNat

end

end A135726.P4765679832895160990

/-! ## A135726.P16644911409984224987

`A158388(A185284(n))+A007661(A084438(n+1))`
-/

namespace A135726.P16644911409984224987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A185284 n).toNat + A007661 (A084438 (n + 1)).toNat

end

end A135726.P16644911409984224987

/-! ## A135726.P13142971434951090985

`A330025(A017353(n))+A007661(A084438(n+1))`
-/

namespace A135726.P13142971434951090985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A017353 n).toNat + A007661 (A084438 (n + 1)).toNat

end

end A135726.P13142971434951090985

/-!
# A135728: Record indices of A135727(n) = max{ A001281^k(n);k=0,1,2,3... } (3x-1 problem).

The programs for A135728, there is no canonical definition to state claims against.
-/

/-! ## A135728.P3864695507614234889

`∪[A199969(A056469(n+3)), A180632(n)]`
-/

namespace A135728.P3864695507614234889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A056469 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135728.P3864695507614234889

/-!
# A135729: Record indices of A135727(n)/n = max{ A001281^k(n);k=0,1,2,3... }/n (3x-1 problem).

The programs for A135729, there is no canonical definition to state claims against.
-/

/-! ## A135729.P7985202314267341880

`A135728(A348579(n+2))`
-/

namespace A135729.P7985202314267341880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135728 (A348579 (n + 2)).toNat

end

end A135729.P7985202314267341880

/-! ## A135729.P10876903088221376231

`A135728(A306360(n+1)+A274151(n))`
-/

namespace A135729.P10876903088221376231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135728 (A306360 (n + 1) + A274151 n).toNat

end

end A135729.P10876903088221376231

/-! ## A135729.P15228173598616369574

`∩[A022772(n+1), A135728(n+1)]`
-/

namespace A135729.P15228173598616369574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135729.P15228173598616369574

/-! ## A135729.P16399281907148399876

`∩[A109740(n+1), A318919(n+1)]`
-/

namespace A135729.P16399281907148399876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135729.P16399281907148399876

/-!
# A135730: Number of steps to reach the minimum of the final cycle under iterations of the map A001281: x->3x-1 if x odd, x/2 otherwise.

The programs for A135730, there is no canonical definition to state claims against.
-/

/-! ## A135730.P5417696048786766545

`A378833(n+1)+A377524(n+1)`
-/

namespace A135730.P5417696048786766545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378833 (n + 1) + A377524 (n + 1)

end

end A135730.P5417696048786766545

/-! ## A135730.P344672248770564913

`A109174(n+1)%A016789(A154980(2*(n+1)))`
-/

namespace A135730.P344672248770564913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109174 (n + 1)) (A016789 (A154980 (2 * (n + 1))).toNat)

end

end A135730.P344672248770564913

/-! ## A135730.P13231281333247645460

`A377524(n+1)+A206585(A038763(2*(n+2)))%A326041(n+1)`
-/

namespace A135730.P13231281333247645460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377524 (n + 1) + Int.tmod (A206585 (A038763 (2 * (n + 2))).toNat) (A326041 (n + 1))

end

end A135730.P13231281333247645460

/-! ## A135730.P2160309054567943524

`A109174(n+1)%A224361(A000124(n))`
-/

namespace A135730.P2160309054567943524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109174 (n + 1)) (A224361 (A000124 n).toNat)

end

end A135730.P2160309054567943524

/-!
# A135731: a(1) = 3; thereafter a(n+1) = a(n) + nextprime(a(n)) - prevprime(a(n)).

The programs for A135731, the canonical program `A135731.P4450191013934094976` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135731 has offset 1).

The definition of A135731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135731.P4450191013934094976

`p?[a(n-2)+3]+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135731

/-- `p?[a(n-2)+3]+1` -/
def P4450191013934094976.Spec : Prop :=
  ∀ n, (P4450191013934094976.a n : ℤ) = A135731 (n + 1)

theorem P4450191013934094976.correct : P4450191013934094976.Spec := by
  intro n
  simp only [A135731, Nat.add_sub_cancel]

end A135731

/-! ## A135731.P13032434673896097240

`p?[2*n+1]+floor(atan(n+1))`
-/

namespace A135731.P13032434673896097240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A135731.P13032434673896097240

namespace A135731

/-- `p?[2*n+1]+floor(atan(n+1))` -/
def P13032434673896097240.Spec : Prop :=
  ∀ n, P13032434673896097240.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P7663909459548066779

`p?[ogf((2x+x^2-x^3)/(1-2x+x^2))]+1`
-/

namespace A135731.P7663909459548066779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A135731.P7663909459548066779

namespace A135731

/-- `p?[ogf((2x+x^2-x^3)/(1-2x+x^2))]+1` -/
def P7663909459548066779.Spec : Prop :=
  ∀ n, P7663909459548066779.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P13452759913683783396

`p?[2*n+1]+(n+2)%(n+1)`
-/

namespace A135731.P13452759913683783396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 2) % (n + 1)

end

end A135731.P13452759913683783396

namespace A135731

/-- `p?[2*n+1]+(n+2)%(n+1)` -/
def P13452759913683783396.Spec : Prop :=
  ∀ n, (P13452759913683783396.a n : ℤ) = A135731 (n + 1)

end A135731

/-! ## A135731.P15715940908949927421

`A045344(n+1)+1`
-/

namespace A135731.P15715940908949927421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) + 1

end

end A135731.P15715940908949927421

namespace A135731

/-- `A045344(n+1)+1` -/
def P15715940908949927421.Spec : Prop :=
  ∀ n, P15715940908949927421.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P3967025113449829006

`A165972(n+1)+2`
-/

namespace A135731.P3967025113449829006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) + 2

end

end A135731.P3967025113449829006

namespace A135731

/-- `A165972(n+1)+2` -/
def P3967025113449829006.Spec : Prop :=
  ∀ n, P3967025113449829006.a n = A135731 (n + 1)

theorem P3967025113449829006.correct : P3967025113449829006.Spec := by
  intro n
  simp only [A135731, Nat.add_sub_cancel, A135731.P3967025113449829006.a, A135731.P4450191013934094976.f1, A135731.P4450191013934094976.a, A165972, A165972.P1616494104125571598.f1, A165972.P1616494104125571598.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135731

/-! ## A135731.P4317581843014629615

`A156037(n+2)+2`
-/

namespace A135731.P4317581843014629615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 2) + 2

end

end A135731.P4317581843014629615

namespace A135731

/-- `A156037(n+2)+2` -/
def P4317581843014629615.Spec : Prop :=
  ∀ n, P4317581843014629615.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P8536389994909637355

`A065091(n+1)+A057427(n)`
-/

namespace A135731.P8536389994909637355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A057427 n

end

end A135731.P8536389994909637355

namespace A135731

/-- `A065091(n+1)+A057427(n)` -/
def P8536389994909637355.Spec : Prop :=
  ∀ n, P8536389994909637355.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P8693192364927086465

`A140475(n+1)+A054977(n)`
-/

namespace A135731.P8693192364927086465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) + A054977 n

end

end A135731.P8693192364927086465

namespace A135731

/-- `A140475(n+1)+A054977(n)` -/
def P8693192364927086465.Spec : Prop :=
  ∀ n, P8693192364927086465.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P9759420469127331231

`A299763(n+1)+A075527(n)`
-/

namespace A135731.P9759420469127331231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + A075527 n

end

end A135731.P9759420469127331231

namespace A135731

/-- `A299763(n+1)+A075527(n)` -/
def P9759420469127331231.Spec : Prop :=
  ∀ n, P9759420469127331231.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P5821036316589077447

`A255176(n)+A154115(n+1)`
-/

namespace A135731.P5821036316589077447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n + A154115 (n + 1)

end

end A135731.P5821036316589077447

namespace A135731

/-- `A255176(n)+A154115(n+1)` -/
def P5821036316589077447.Spec : Prop :=
  ∀ n, P5821036316589077447.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P9009394027219990127

`A014690(n+1)-A028310(n)`
-/

namespace A135731.P9009394027219990127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - A028310 n

end

end A135731.P9009394027219990127

namespace A135731

/-- `A014690(n+1)-A028310(n)` -/
def P9009394027219990127.Spec : Prop :=
  ∀ n, P9009394027219990127.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P1280397116067192584

`A048974(n+1)-A054977(n)`
-/

namespace A135731.P1280397116067192584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - A054977 n

end

end A135731.P1280397116067192584

namespace A135731

/-- `A048974(n+1)-A054977(n)` -/
def P1280397116067192584.Spec : Prop :=
  ∀ n, P1280397116067192584.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P1111844571729475582

`A065091(n+1)-A057428(n)`
-/

namespace A135731.P1111844571729475582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A057428 n

end

end A135731.P1111844571729475582

namespace A135731

/-- `A065091(n+1)-A057428(n)` -/
def P1111844571729475582.Spec : Prop :=
  ∀ n, P1111844571729475582.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P6832954035516857374

`floor(atan(n+1)+A000040(n+2))`
-/

namespace A135731.P6832954035516857374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (A000040 (n + 2) : ℝ)⌋

end

end A135731.P6832954035516857374

namespace A135731

/-- `floor(atan(n+1)+A000040(n+2))` -/
def P6832954035516857374.Spec : Prop :=
  ∀ n, P6832954035516857374.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P5760339048813852749

`A000040(n+2-C(2, n+2))+1`
-/

namespace A135731.P5760339048813852749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2 - Nat.choose 2 (n + 2)) + 1

end

end A135731.P5760339048813852749

namespace A135731

/-- `A000040(n+2-C(2, n+2))+1` -/
def P5760339048813852749.Spec : Prop :=
  ∀ n, P5760339048813852749.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P373515577373152723

`A000040(gcd(n+2, C(2, n+2)))+1`
-/

namespace A135731.P373515577373152723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd (n + 2) (Nat.choose 2 (n + 2))) + 1

end

end A135731.P373515577373152723

namespace A135731

/-- `A000040(gcd(n+2, C(2, n+2)))+1` -/
def P373515577373152723.Spec : Prop :=
  ∀ n, P373515577373152723.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P12105439543527335209

`A000040(n+2-floor(1/(n+1)))+1`
-/

namespace A135731.P12105439543527335209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 2 : ℤ) - ⌊1 / (n + 1 : ℚ)⌋).toNat + 1

end

end A135731.P12105439543527335209

namespace A135731

/-- `A000040(n+2-floor(1/(n+1)))+1` -/
def P12105439543527335209.Spec : Prop :=
  ∀ n, P12105439543527335209.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P9533493172416976965

`A008864(A065475(n+1))`
-/

namespace A135731.P9533493172416976965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A065475 (n + 1)).toNat

end

end A135731.P9533493172416976965

namespace A135731

/-- `A008864(A065475(n+1))` -/
def P9533493172416976965.Spec : Prop :=
  ∀ n, P9533493172416976965.a n = A135731 (n + 1)

end A135731

/-! ## A135731.P12737855951047206128

`A008864(A057427(n)+1+n)`
-/

namespace A135731.P12737855951047206128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A057427 n + 1 + (n : ℤ)).toNat

end

end A135731.P12737855951047206128

namespace A135731

/-- `A008864(A057427(n)+1+n)` -/
def P12737855951047206128.Spec : Prop :=
  ∀ n, P12737855951047206128.a n = A135731 (n + 1)

end A135731

/-!
# A135732: Distances to next prime associated with A135731.

The programs for A135732, the canonical program `A135732.P13218147584689488694` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135732 has offset 1).

The definition of A135732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135732.P13218147584689488694

`Δ[A156037(n+2)]-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135732

/-- `Δ[A156037(n+2)]-1` -/
def P13218147584689488694.Spec : Prop :=
  ∀ n, P13218147584689488694.a n = A135732 (n + 1)

theorem P13218147584689488694.correct : P13218147584689488694.Spec := by
  intro n
  simp only [A135732, Nat.add_sub_cancel]

end A135732

/-! ## A135732.P16774539415457525907

`ceil(acot(n))*A176246(n+1)`
-/

namespace A135732.P16774539415457525907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A176246 (n + 1)

end

end A135732.P16774539415457525907

namespace A135732

/-- `ceil(acot(n))*A176246(n+1)` -/
def P16774539415457525907.Spec : Prop :=
  ∀ n, P16774539415457525907.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P548434973393303343

`ceil(acot(n))*∑[A036263(n+1)]`
-/

namespace A135732.P548434973393303343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135732.P548434973393303343

namespace A135732

/-- `ceil(acot(n))*∑[A036263(n+1)]` -/
def P548434973393303343.Spec : Prop :=
  ∀ n, P548434973393303343.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P1172561211784203196

`A001223(n+2)-ceil(n/(n+1))`
-/

namespace A135732.P1172561211784203196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A135732.P1172561211784203196

namespace A135732

/-- `A001223(n+2)-ceil(n/(n+1))` -/
def P1172561211784203196.Spec : Prop :=
  ∀ n, P1172561211784203196.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P5920139556131436712

`A176246(n+1)+A000007(n)`
-/

namespace A135732.P5920139556131436712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) + A000007 n

end

end A135732.P5920139556131436712

namespace A135732

/-- `A176246(n+1)+A000007(n)` -/
def P5920139556131436712.Spec : Prop :=
  ∀ n, P5920139556131436712.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P9099490085316412570

`A057428(n)+A001223(n+2)`
-/

namespace A135732.P9099490085316412570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001223 (n + 2)

end

end A135732.P9099490085316412570

namespace A135732

/-- `A057428(n)+A001223(n+2)` -/
def P9099490085316412570.Spec : Prop :=
  ∀ n, P9099490085316412570.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P3469673957886613892

`A054977(n)*A176246(n+1)`
-/

namespace A135732.P3469673957886613892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A176246 (n + 1)

end

end A135732.P3469673957886613892

namespace A135732

/-- `A054977(n)*A176246(n+1)` -/
def P3469673957886613892.Spec : Prop :=
  ∀ n, P3469673957886613892.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P13724858499819905952

`A258326(n+1)-A006005(n+1)`
-/

namespace A135732.P13724858499819905952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258326 (n + 1) - A006005 (n + 1)

end

end A135732.P13724858499819905952

namespace A135732

/-- `A258326(n+1)-A006005(n+1)` -/
def P13724858499819905952.Spec : Prop :=
  ∀ n, P13724858499819905952.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P2125479042867848309

`A215848(n+1)-A135731(n+1)`
-/

namespace A135732.P2125479042867848309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A135731 (n + 1)

end

end A135732.P2125479042867848309

namespace A135732

/-- `A215848(n+1)-A135731(n+1)` -/
def P2125479042867848309.Spec : Prop :=
  ∀ n, P2125479042867848309.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P5960792446566366727

`A054541(n+1)+A001223(n+2)-A230846(n+1)`
-/

namespace A135732.P5960792446566366727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (A001223 (n + 2) - A230846 (n + 1))

end

end A135732.P5960792446566366727

namespace A135732

/-- `A054541(n+1)+A001223(n+2)-A230846(n+1)` -/
def P5960792446566366727.Spec : Prop :=
  ∀ n, P5960792446566366727.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P13409516465954898582

`Δ[A045344(n+1)]-1`
-/

namespace A135732.P13409516465954898582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135732.P13409516465954898582

namespace A135732

/-- `Δ[A045344(n+1)]-1` -/
def P13409516465954898582.Spec : Prop :=
  ∀ n, P13409516465954898582.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P11639184859191929000

`Δ[A135731(n+1)]-1`
-/

namespace A135732.P11639184859191929000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135732.P11639184859191929000

namespace A135732

/-- `Δ[A135731(n+1)]-1` -/
def P11639184859191929000.Spec : Prop :=
  ∀ n, P11639184859191929000.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P1452441110433521317

`Δ[A165972(n+1)]-1`
-/

namespace A135732.P1452441110433521317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135732.P1452441110433521317

namespace A135732

/-- `Δ[A165972(n+1)]-1` -/
def P1452441110433521317.Spec : Prop :=
  ∀ n, P1452441110433521317.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P12451958982224763207

`Δ[A065091(n+1)-A028310(n)]`
-/

namespace A135732.P12451958982224763207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135732.P12451958982224763207

namespace A135732

/-- `Δ[A065091(n+1)-A028310(n)]` -/
def P12451958982224763207.Spec : Prop :=
  ∀ n, P12451958982224763207.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P2046151000567464001

`A046933(n+2)+A010051(2*(n+1))`
-/

namespace A135732.P2046151000567464001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 2) + A010051 (2 * (n + 1))

end

end A135732.P2046151000567464001

namespace A135732

/-- `A046933(n+2)+A010051(2*(n+1))` -/
def P2046151000567464001.Spec : Prop :=
  ∀ n, P2046151000567464001.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P8750860994427859151

`A008864(n+2)+A046933(n+2)-A135731(n+1)`
-/

namespace A135732.P8750860994427859151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + (A046933 (n + 2) - A135731 (n + 1))

end

end A135732.P8750860994427859151

namespace A135732

/-- `A008864(n+2)+A046933(n+2)-A135731(n+1)` -/
def P8750860994427859151.Spec : Prop :=
  ∀ n, P8750860994427859151.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P8833171446795800084

`Δ[A000040(n+2-C(2, n+2))]-1`
-/

namespace A135732.P8833171446795800084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2 - Nat.choose 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135732.P8833171446795800084

namespace A135732

/-- `Δ[A000040(n+2-C(2, n+2))]-1` -/
def P8833171446795800084.Spec : Prop :=
  ∀ n, P8833171446795800084.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P4214830047928471021

`Δ[A000040(n+2)]-A057427(n)`
-/

namespace A135732.P4214830047928471021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 n

end

end A135732.P4214830047928471021

namespace A135732

/-- `Δ[A000040(n+2)]-A057427(n)` -/
def P4214830047928471021.Spec : Prop :=
  ∀ n, P4214830047928471021.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P12473118832508299582

`A000040(n+3)-A135731(n+1)`
-/

namespace A135732.P12473118832508299582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A135731 (n + 1)

end

end A135732.P12473118832508299582

namespace A135732

/-- `A000040(n+3)-A135731(n+1)` -/
def P12473118832508299582.Spec : Prop :=
  ∀ n, P12473118832508299582.a n = A135732 (n + 1)

end A135732

/-! ## A135732.P16096414828623049129

`Δ[A000040(A319702(2*n+1))]-1`
-/

namespace A135732.P16096414828623049129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A319702 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135732.P16096414828623049129

namespace A135732

/-- `Δ[A000040(A319702(2*n+1))]-1` -/
def P16096414828623049129.Spec : Prop :=
  ∀ n, P16096414828623049129.a n = A135732 (n + 1)

end A135732

/-!
# A135733: For every integer m > a(n), 2m can be decomposed into at least n unordered sums of two primes (conjectural).

The programs for A135733, there is no canonical definition to state claims against.
-/

/-! ## A135733.P1466582302209088143

`A000954(A227549(n+1)+A186748(n))/2`
-/

namespace A135733.P1466582302209088143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000954 (A227549 (n + 1) + A186748 n).toNat : ℚ) / 2

end

end A135733.P1466582302209088143

/-! ## A135733.P13445320450242881849

`A000954(A227549(n+1)+A198318(n))/2`
-/

namespace A135733.P13445320450242881849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000954 (A227549 (n + 1) + A198318 n).toNat : ℚ) / 2

end

end A135733.P13445320450242881849

/-! ## A135733.P8480445548988916873

`A175542(A174327(n+1)+1)`
-/

namespace A135733.P8480445548988916873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A174327 (n + 1) + 1).toNat

end

end A135733.P8480445548988916873

/-! ## A135733.P11613364641641633950

`A174327(A032559(n+1))/2`
-/

namespace A135733.P11613364641641633950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174327 (A032559 (n + 1)).toNat : ℚ) / 2

end

end A135733.P11613364641641633950

/-! ## A135733.P11772765869960399311

`record[A000954(n)]/A000005(A056650(n))`
-/

namespace A135733.P11772765869960399311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000005 (A056650 n).toNat : ℚ)

end

end A135733.P11772765869960399311

/-!
# A135734: a(n) = prime(n)*prime(n+1)*prime(n+2) - prime(n+3)^2.

The programs for A135734, the canonical program `A135734.P16644043249855543190` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135734 has offset 1).

The definition of A135734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*A000040(n+3)-A000040(n+4)²` (program `A135734.P16644043249855543190`, by `A135734.P16644043249855543190.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135734.P1458651204297931975

`A046301(n+1)-A001248(n+4)`
-/

namespace A135734.P1458651204297931975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) - A001248 (n + 4)

end

end A135734.P1458651204297931975

namespace A135734

/-- `A046301(n+1)-A001248(n+4)` -/
def P1458651204297931975.Spec : Prop :=
  ∀ n, P1458651204297931975.a n = A135734 (n + 1)

end A135734

/-! ## A135734.P16644043249855543190

`A000040(n+1)*A000040(n+2)*A000040(n+3)-A000040(n+4)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135734

/-- `A000040(n+1)*A000040(n+2)*A000040(n+3)-A000040(n+4)²` -/
def P16644043249855543190.Spec : Prop :=
  ∀ n, P16644043249855543190.a n = A135734 (n + 1)

theorem P16644043249855543190.correct : P16644043249855543190.Spec := by
  intro n
  simp only [A135734, Nat.add_sub_cancel]

end A135734

/-! ## A135734.P9212142773755020805

`A046301(n+1)-(A046302(n+1)/A046301(n+1))²`
-/

namespace A135734.P9212142773755020805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) - ((A046302 (n + 1) : ℚ) / (A046301 (n + 1) : ℚ)) ^ 2

end

end A135734.P9212142773755020805

namespace A135734

/-- `A046301(n+1)-(A046302(n+1)/A046301(n+1))²` -/
def P9212142773755020805.Spec : Prop :=
  ∀ n, P9212142773755020805.a n = (A135734 (n + 1) : ℚ)

end A135734

/-! ## A135734.P8797505534530668401

`A046301(n+1)-A258155(n+2)/A166329(n+2)`
-/

namespace A135734.P8797505534530668401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) - (A258155 (n + 2) : ℚ) / (A166329 (n + 2) : ℚ)

end

end A135734.P8797505534530668401

namespace A135734

/-- `A046301(n+1)-A258155(n+2)/A166329(n+2)` -/
def P8797505534530668401.Spec : Prop :=
  ∀ n, P8797505534530668401.a n = (A135734 (n + 1) : ℚ)

end A135734

/-! ## A135734.P17435049802292113279

`A046301(n+1)-A065091(n+3)²`
-/

namespace A135734.P17435049802292113279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) - A065091 (n + 3) ^ 2

end

end A135734.P17435049802292113279

namespace A135734

/-- `A046301(n+1)-A065091(n+3)²` -/
def P17435049802292113279.Spec : Prop :=
  ∀ n, P17435049802292113279.a n = A135734 (n + 1)

theorem P17435049802292113279.correct : P17435049802292113279.Spec := by
  intro n
  simp only [A135734, Nat.add_sub_cancel, A135734.P17435049802292113279.a, A135734.P16644043249855543190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046301, A046301.P12836911336240507577.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135734

/-! ## A135734.P8491286885364859125

`A046301(n+1)-sqrt(A030514(n+4))`
-/

namespace A135734.P8491286885364859125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℝ) - Real.sqrt (A030514 (n + 4) : ℝ)

end

end A135734.P8491286885364859125

namespace A135734

/-- `A046301(n+1)-sqrt(A030514(n+4))` -/
def P8491286885364859125.Spec : Prop :=
  ∀ n, P8491286885364859125.a n = (A135734 (n + 1) : ℝ)

end A135734

/-! ## A135734.P3645965171067158682

`A046301(n+1)-A090417(n+1)²`
-/

namespace A135734.P3645965171067158682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) - A090417 (n + 1) ^ 2

end

end A135734.P3645965171067158682

namespace A135734

/-- `A046301(n+1)-A090417(n+1)²` -/
def P3645965171067158682.Spec : Prop :=
  ∀ n, P3645965171067158682.a n = A135734 (n + 1)

end A135734

/-! ## A135734.P13780787213215382022

`A046302(n+1)/A090417(n+1)-A090417(n+1)²`
-/

namespace A135734.P13780787213215382022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A090417 (n + 1) : ℚ) - (A090417 (n + 1) ^ 2 : ℚ)

end

end A135734.P13780787213215382022

namespace A135734

/-- `A046302(n+1)/A090417(n+1)-A090417(n+1)²` -/
def P13780787213215382022.Spec : Prop :=
  ∀ n, P13780787213215382022.a n = (A135734 (n + 1) : ℚ)

end A135734

/-!
# A135736: Nearest integer to n*Sum_{k=1..n} 1/k = rounded expected coupon collection numbers.

The programs for A135736, the canonical program `A135736.P1249499101217788511` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135736 has offset 0).

The definition of A135736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135736.P1249499101217788511

`round(∑[∑[n/A103505(n)]])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135736

/-- `round(∑[∑[n/A103505(n)]])` -/
def P1249499101217788511.Spec : Prop :=
  ∀ n, P1249499101217788511.a n = A135736 n

theorem P1249499101217788511.correct : P1249499101217788511.Spec := by
  intro n
  simp only [A135736]

end A135736

/-! ## A135736.P11646851140264977686

`round(A000254(n)/A098361(A000124(n)))`
-/

namespace A135736.P11646851140264977686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000254 n : ℚ) / (A098361 (A000124 n).toNat : ℚ))

end

end A135736.P11646851140264977686

namespace A135736

/-- `round(A000254(n)/A098361(A000124(n)))` -/
def P11646851140264977686.Spec : Prop :=
  ∀ n, P11646851140264977686.a n = A135736 n

end A135736

/-! ## A135736.P2311381280983869230

`round(A000254(n)/A094587(A152947(n+1)))`
-/

namespace A135736.P2311381280983869230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000254 n : ℚ) / (A094587 (A152947 (n + 1)).toNat : ℚ))

end

end A135736.P2311381280983869230

namespace A135736

/-- `round(A000254(n)/A094587(A152947(n+1)))` -/
def P2311381280983869230.Spec : Prop :=
  ∀ n, P2311381280983869230.a n = A135736 n

end A135736

/-! ## A135736.P14287236618757007087

`round(A006675(n)/A000142(n)+n)`
-/

namespace A135736.P14287236618757007087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006675 n : ℚ) / (A000142 n : ℚ) + (n : ℚ))

end

end A135736.P14287236618757007087

namespace A135736

/-- `round(A006675(n)/A000142(n)+n)` -/
def P14287236618757007087.Spec : Prop :=
  ∀ n, P14287236618757007087.a n = A135736 n

end A135736

/-!
# A135739: Numbers k such that k+reverse(k) has only odd decimal digits (k not a multiple of 10).

The programs for A135739, there is no canonical definition to state claims against.
-/

/-! ## A135739.P3286160987827354950

`eq[A040790(n), A065031(A053392(n))]`
-/

namespace A135739.P3286160987827354950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A053392 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135739.P3286160987827354950

/-! ## A135739.P8688257697207165487

`eq[A040790(n), A100961(A110725(n))]`
-/

namespace A135739.P8688257697207165487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 (A110725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135739.P8688257697207165487

/-! ## A135739.P7196793041274177630

`eq[A065031(A052008(n)), A136400(n)]`
-/

namespace A135739.P7196793041274177630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A052008 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135739.P7196793041274177630

/-! ## A135739.P12078101872476204706

`lt[A299969(n), A299969(A059717(n))]`
-/

namespace A135739.P12078101872476204706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 (A059717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135739.P12078101872476204706

/-! ## A135739.P7354156608777101723

`eq[A114892(n+1), A364800(n+1)]`
-/

namespace A135739.P7354156608777101723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364800 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135739.P7354156608777101723

/-!
# A135741: E.g.f.: A(x) = Sum_{n>=0} exp(Fibonacci(n)*x) * x^n/n!.

The programs for A135741, the canonical program `A135741.P8629235039326718746` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135741 has offset 0).

The definition of A135741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135741.P8629235039326718746

`∑{#}[n, C(n, #)*A000045(#)^(n-#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135741

/-- `∑{#}[n, C(n, #)*A000045(#)^(n-#)]` -/
def P8629235039326718746.Spec : Prop :=
  ∀ n, P8629235039326718746.a n = (A135741 n : ℚ)

end A135741

/-! ## A135741.P16279179885059928387

`A386828(A148354(n))`
-/

namespace A135741.P16279179885059928387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386828 (A148354 n).toNat

end

end A135741.P16279179885059928387

namespace A135741

/-- `A386828(A148354(n))` -/
def P16279179885059928387.Spec : Prop :=
  ∀ n, P16279179885059928387.a n = A135741 n

end A135741

/-! ## A135741.P4010302890287838571

`A386828(A391032(n))`
-/

namespace A135741.P4010302890287838571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386828 (A391032 n).toNat

end

end A135741.P4010302890287838571

namespace A135741

/-- `A386828(A391032(n))` -/
def P4010302890287838571.Spec : Prop :=
  ∀ n, P4010302890287838571.a n = A135741 n

end A135741

/-!
# A135742: E.g.f.: A(x) = Sum_{n>=0} exp( n*(n-1)/2 * x ) * x^n / n!.

The programs for A135742, the canonical program `A135742.P9787399762087952232` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135742 has offset 0).

The definition of A135742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135742.P9787399762087952232

`∑{#}[n, C(n, #)*(#*(#-1)/2)^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135742

/-- `∑{#}[n, C(n, #)*(#*(#-1)/2)^(n-#)]` -/
def P9787399762087952232.Spec : Prop :=
  ∀ n, P9787399762087952232.a n = (A135742 n : ℚ)

end A135742

/-! ## A135742.P5925789192838129237

`A065033(A322140(n+1))`
-/

namespace A135742.P5925789192838129237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A322140 (n + 1)).toNat

end

end A135742.P5925789192838129237

namespace A135742

/-- `A065033(A322140(n+1))` -/
def P5925789192838129237.Spec : Prop :=
  ∀ n, P5925789192838129237.a n = A135742 n

end A135742

/-! ## A135742.P10687943380137665688

`A004526(A322140(n+1)+1)`
-/

namespace A135742.P10687943380137665688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322140 (n + 1) + 1).toNat

end

end A135742.P10687943380137665688

namespace A135742

/-- `A004526(A322140(n+1)+1)` -/
def P10687943380137665688.Spec : Prop :=
  ∀ n, P10687943380137665688.a n = A135742 n

end A135742

/-!
# A135743: E.g.f.: A(x) = Sum_{n>=0} exp(n*(n+1)/2*x)*x^n/n!.

The programs for A135743, the canonical program `A135743.P13806022452835162852` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135743 has offset 0).

The definition of A135743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135743.P13806022452835162852

`∑{#}[n, C(n, #)*(#*(#+1)/2)^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135743

/-- `∑{#}[n, C(n, #)*(#*(#+1)/2)^(n-#)]` -/
def P13806022452835162852.Spec : Prop :=
  ∀ n, P13806022452835162852.a n = (A135743 n : ℚ)

end A135743

/-! ## A135743.P3828826337671804422

`A048865(3*A234289(n))`
-/

namespace A135743.P3828826337671804422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (3 * A234289 n).toNat

end

end A135743.P3828826337671804422

namespace A135743

/-- `A048865(3*A234289(n))` -/
def P3828826337671804422.Spec : Prop :=
  ∀ n, P3828826337671804422.a n = A135743 n

end A135743

/-!
# A135744: E.g.f.: A(x) = Sum_{n>=0} exp( n*(n+1)*x ) * x^n/n!.

The programs for A135744, the canonical program `A135744.P12126459729876321792` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135744 has offset 0).

The definition of A135744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135744.P12126459729876321792

`∑{#}[n, C(n, #)*(#*(#+1))^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135744

/-- `∑{#}[n, C(n, #)*(#*(#+1))^(n-#)]` -/
def P12126459729876321792.Spec : Prop :=
  ∀ n, P12126459729876321792.a n = (A135744 n : ℚ)

end A135744

/-! ## A135744.P18026756890930187085

`A208832(n)+A004526(A302586(n))`
-/

namespace A135744.P18026756890930187085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208832 n + A004526 (A302586 n).toNat

end

end A135744.P18026756890930187085

namespace A135744

/-- `A208832(n)+A004526(A302586(n))` -/
def P18026756890930187085.Spec : Prop :=
  ∀ n, P18026756890930187085.a n = A135744 n

end A135744

/-!
# A135745: E.g.f.: A(x) = Sum_{n>=0} exp((n-1)*x)^n * x^n/n!.

The programs for A135745, the canonical program `A135745.P1627591702175201952` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135745 has offset 0).

The definition of A135745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135745.P1627591702175201952

`∑{#}[n, C(n, #)*(#*(#-1))^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135745

/-- `∑{#}[n, C(n, #)*(#*(#-1))^(n-#)]` -/
def P1627591702175201952.Spec : Prop :=
  ∀ n, P1627591702175201952.a n = (A135745 n : ℚ)

end A135745

/-! ## A135745.P16182031402837863094

`or(1, A320531(2*n²))`
-/

namespace A135745.P16182031402837863094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A320531 (2 * n ^ 2))

end

end A135745.P16182031402837863094

namespace A135745

/-- `or(1, A320531(2*n²))` -/
def P16182031402837863094.Spec : Prop :=
  ∀ n, P16182031402837863094.a n = A135745 n

end A135745

/-!
# A135746: E.g.f.: A(x) = Sum_{n>=0} exp(n^2*x) * x^n/n!.

The programs for A135746, the canonical program `A135746.P13004555806687332849` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135746 has offset 0).

The definition of A135746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135746.P13004555806687332849

`∑{#}[n, C(n, #)*#²^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135746

/-- `∑{#}[n, C(n, #)*#²^(n-#)]` -/
def P13004555806687332849.Spec : Prop :=
  ∀ n, P13004555806687332849.a n = (A135746 n : ℚ)

end A135746

/-! ## A135746.P14517120181784893444

`A054684(A121431(∑[n]))`
-/

namespace A135746.P14517120181784893444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (A121431 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135746.P14517120181784893444

namespace A135746

/-- `A054684(A121431(∑[n]))` -/
def P14517120181784893444.Spec : Prop :=
  ∀ n, P14517120181784893444.a n = A135746 n

end A135746

/-!
# A135747: E.g.f.: A(x) = Sum_{n>=0} exp( (n^2-1)*x ) * x^n/n!.

The programs for A135747, the canonical program `A135747.P4228562826609106034` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135747 has offset 0).

The definition of A135747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135747.P4228562826609106034

`∑{#}[n, C(n, #)*(#²-1)^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135747

/-- `∑{#}[n, C(n, #)*(#²-1)^(n-#)]` -/
def P4228562826609106034.Spec : Prop :=
  ∀ n, P4228562826609106034.a n = (A135747 n : ℚ)

end A135747

/-! ## A135747.P3142568019283978494

`A008615(A204463(n)+(n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A135747.P3142568019283978494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway ((A204463 n : ℚ) + (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A135747.P3142568019283978494

namespace A135747

/-- `A008615(A204463(n)+(n+1)/∏{p}[n+1, (n+1)/#])` -/
def P3142568019283978494.Spec : Prop :=
  ∀ n, P3142568019283978494.a n = A135747 n

end A135747

/-!
# A135748: a(n) = Sum_{k=0..n} binomial(n,k)*2^(k^2).

The programs for A135748, the canonical program `A135748.P13602353554804304662` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135748 has offset 0).

The definition of A135748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*2^#²]` (program `A135748.P13602353554804304662`, by `A135748.P13602353554804304662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135748.P13602353554804304662

`∑{#}[n, C(n, #)*2^#²]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135748

/-- `∑{#}[n, C(n, #)*2^#²]` -/
def P13602353554804304662.Spec : Prop :=
  ∀ n, (P13602353554804304662.a n : ℤ) = A135748 n

theorem P13602353554804304662.correct : P13602353554804304662.Spec := by
  intro n
  simp only [A135748]

end A135748

/-! ## A135748.P14494531432530048977

`∑{d}[A002110(n), A110088(#)]`
-/

namespace A135748.P14494531432530048977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A110088 d

end

end A135748.P14494531432530048977

namespace A135748

/-- `∑{d}[A002110(n), A110088(#)]` -/
def P14494531432530048977.Spec : Prop :=
  ∀ n, P14494531432530048977.a n = A135748 n

end A135748

/-!
# A135749: a(n) = Sum_{k=0..n} binomial(n,k)*(n-k)^k*k^k.

The programs for A135749, the canonical program `A135749.P4880252753691609543` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135749 has offset 0).

The definition of A135749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(n-#)^#*#^#]` (program `A135749.P4880252753691609543`, by `A135749.P4880252753691609543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135749.P4880252753691609543

`∑{#}[n, C(n, #)*(n-#)^#*#^#]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135749

/-- `∑{#}[n, C(n, #)*(n-#)^#*#^#]` -/
def P4880252753691609543.Spec : Prop :=
  ∀ n, P4880252753691609543.a n = A135749 n

theorem P4880252753691609543.correct : P4880252753691609543.Spec := by
  intro n
  simp only [A135749]

end A135749

/-! ## A135749.P8763084575971868191

`A263102(n)+A260739(A184359(n))`
-/

namespace A135749.P8763084575971868191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263102 n + A260739 (A184359 n).toNat

end

end A135749.P8763084575971868191

namespace A135749

/-- `A263102(n)+A260739(A184359(n))` -/
def P8763084575971868191.Spec : Prop :=
  ∀ n, P8763084575971868191.a n = A135749 n

end A135749

/-!
# A135750: E.g.f. A(x) satisfies: A(1 - exp(-x)) = 1 + x*A(x).

The programs for A135750, there is no canonical definition to state claims against.
-/

/-! ## A135750.P14821434622849277438

`A354730(n+1)/(n+1)`
-/

namespace A135750.P14821434622849277438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354730 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A135750.P14821434622849277438

/-! ## A135750.P14057542700620783348

`A230044(A177450(n))+A000142(n)`
-/

namespace A135750.P14057542700620783348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230044 (A177450 n).toNat + A000142 n

end

end A135750.P14057542700620783348

/-!
# A135751: E.g.f.: A(x) = 1 + Sum_{n>=1} (1/n!)*Product_{k=1..n} -log(1 - kx).

The programs for A135751, there is no canonical definition to state claims against.
-/

/-! ## A135751.P12025674788982722469

`floor(floor(A046388(A128318(n))/3)/3)`
-/

namespace A135751.P12025674788982722469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A046388 (A128318 n).toNat : ℚ) / 3⌋ : ℚ) / 3⌋

end

end A135751.P12025674788982722469

/-! ## A135751.P16245250085126405155

`A350950(A319560(n))+A168441(n)`
-/

namespace A135751.P16245250085126405155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A319560 n).toNat + A168441 n

end

end A135751.P16245250085126405155

/-!
# A135752: E.g.f.: A(x) = 1 + Sum_{n>=1} (1/n!)*Product_{k=1..n} [exp(kx) - 1].

The programs for A135752, there is no canonical definition to state claims against.
-/

/-! ## A135752.P13745972288391143909

`A361946(A023998(n))`
-/

namespace A135752.P13745972288391143909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361946 (A023998 n).toNat

end

end A135752.P13745972288391143909

/-! ## A135752.P17852010343283981488

`A239907(A218827(n+1))+A105114(n)`
-/

namespace A135752.P17852010343283981488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239907 (A218827 (n + 1)).toNat + A105114 n

end

end A135752.P17852010343283981488

/-!
# A135753: E.g.f.: A(x) = Sum_{n>=0} exp((3^n-1)/2*x)*x^n/n!.

The programs for A135753, the canonical program `A135753.P14686114449839154411` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135753 has offset 0).

The definition of A135753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135753.P14686114449839154411

`∑{#}[n, C(n, #)*((3^#-1)/2)^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135753

/-- `∑{#}[n, C(n, #)*((3^#-1)/2)^(n-#)]` -/
def P14686114449839154411.Spec : Prop :=
  ∀ n, P14686114449839154411.a n = (A135753 n : ℚ)

end A135753

/-! ## A135753.P7394228319645622387

`A123108(A001831(n)+A001035(n))`
-/

namespace A135753.P7394228319645622387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A001831 n + A001035 n).toNat

end

end A135753.P7394228319645622387

namespace A135753

/-- `A123108(A001831(n)+A001035(n))` -/
def P7394228319645622387.Spec : Prop :=
  ∀ n, P7394228319645622387.a n = A135753 n

end A135753

/-!
# A135754: E.g.f.: A(x) = Sum_{n>=0} exp((4^n-1)/3*x)*x^n/n!.

The programs for A135754, the canonical program `A135754.P17280606187918377888` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135754 has offset 0).

The definition of A135754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135754.P17280606187918377888

`∑{#}[n, C(n, #)*((4^#-1)/3)^(n-#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135754

/-- `∑{#}[n, C(n, #)*((4^#-1)/3)^(n-#)]` -/
def P17280606187918377888.Spec : Prop :=
  ∀ n, P17280606187918377888.a n = (A135754 n : ℚ)

end A135754

/-! ## A135754.P6832428987101519560

`A363919(n+1)+A363898(A363911(n))`
-/

namespace A135754.P6832428987101519560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363919 (n + 1) + A363898 (A363911 n).toNat

end

end A135754.P6832428987101519560

namespace A135754

/-- `A363919(n+1)+A363898(A363911(n))` -/
def P6832428987101519560.Spec : Prop :=
  ∀ n, P6832428987101519560.a n = A135754 n

end A135754

/-!
# A135755: a(n) = Sum_{k=0..n} C(n,k)*3^[k*(k-1)/2].

The programs for A135755, the canonical program `A135755.P15161115489309129343` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135755 has offset 0).

The definition of A135755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135755.P15161115489309129343

`∑{#}[n, C(n, #)*3^(#*(#-1)/2)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135755

/-- `∑{#}[n, C(n, #)*3^(#*(#-1)/2)]` -/
def P15161115489309129343.Spec : Prop :=
  ∀ n, P15161115489309129343.a n = (A135755 n : ℝ)

end A135755

/-! ## A135755.P14098787513363448970

`∑[A353041(n)]`
-/

namespace A135755.P14098787513363448970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135755.P14098787513363448970

namespace A135755

/-- `∑[A353041(n)]` -/
def P14098787513363448970.Spec : Prop :=
  ∀ n, P14098787513363448970.a n = A135755 n

end A135755

/-!
# A135756: a(n) = Sum_{k=0..n} C(n,k) * 2^(k*(k-1)).

The programs for A135756, the canonical program `A135756.P18170858622368649662` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135756 has offset 0).

The definition of A135756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135756.P18170858622368649662

`∑{#}[n, C(n, #)*2^(#*(#-1))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135756

/-- `∑{#}[n, C(n, #)*2^(#*(#-1))]` -/
def P18170858622368649662.Spec : Prop :=
  ∀ n, P18170858622368649662.a n = (A135756 n : ℚ)

end A135756

/-! ## A135756.P8485108488787294825

`∑[A353042(n)]`
-/

namespace A135756.P8485108488787294825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135756.P8485108488787294825

namespace A135756

/-- `∑[A353042(n)]` -/
def P8485108488787294825.Spec : Prop :=
  ∀ n, P8485108488787294825.a n = A135756 n

end A135756

/-!
# A135757: Central binomial coefficients at triangular positions: a(n) = A000984(n(n+1)/2).

The programs for A135757, the canonical program `A135757.P14027631817675404931` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135757 has offset 0).

The definition of A135757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000984(n*(n+1)/2)` (program `A135757.P14027631817675404931`, by `A135757.P14027631817675404931.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135757.P14027631817675404931

`A000984(n*(n+1)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135757

/-- `A000984(n*(n+1)/2)` -/
def P14027631817675404931.Spec : Prop :=
  ∀ n, P14027631817675404931.a n = A135757 n

theorem P14027631817675404931.correct : P14027631817675404931.Spec := by
  intro n
  simp only [A135757]

end A135757

/-! ## A135757.P7293788336022759634

`C(n*(n+1), n*(n+1)/2)`
-/

namespace A135757.P7293788336022759634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n + 1)) (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat

end

end A135757.P7293788336022759634

namespace A135757

/-- `C(n*(n+1), n*(n+1)/2)` -/
def P7293788336022759634.Spec : Prop :=
  ∀ n, (P7293788336022759634.a n : ℤ) = A135757 n

end A135757

/-! ## A135757.P16155063336331301896

`A001405(∑[2*n])`
-/

namespace A135757.P16155063336331301896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135757.P16155063336331301896

namespace A135757

/-- `A001405(∑[2*n])` -/
def P16155063336331301896.Spec : Prop :=
  ∀ n, P16155063336331301896.a n = A135757 n

end A135757

/-! ## A135757.P4684603788825345230

`A056040(∑[2*n])`
-/

namespace A135757.P4684603788825345230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135757.P4684603788825345230

namespace A135757

/-- `A056040(∑[2*n])` -/
def P4684603788825345230.Spec : Prop :=
  ∀ n, P4684603788825345230.a n = A135757 n

end A135757

/-! ## A135757.P1534186031576713412

`A063886(∑[2*n])`
-/

namespace A135757.P1534186031576713412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135757.P1534186031576713412

namespace A135757

/-- `A063886(∑[2*n])` -/
def P1534186031576713412.Spec : Prop :=
  ∀ n, P1534186031576713412.a n = A135757 n

end A135757

/-!
# A135758: Catalan numbers at triangular positions: a(n) = A000108(n(n+1)/2).

The programs for A135758, the canonical program `A135758.P16320922761346912490` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135758 has offset 0).

The definition of A135758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n*(n+1)/2)` (program `A135758.P16320922761346912490`, by `A135758.P16320922761346912490.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135758.P16320922761346912490

`A000108(n*(n+1)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135758

/-- `A000108(n*(n+1)/2)` -/
def P16320922761346912490.Spec : Prop :=
  ∀ n, P16320922761346912490.a n = A135758 n

theorem P16320922761346912490.correct : P16320922761346912490.Spec := by
  intro n
  simp only [A135758]

end A135758

/-! ## A135758.P11248655827613784904

`C(n*(n+1), n*(n+1)/2)/(1+C(n+1, 2))`
-/

namespace A135758.P11248655827613784904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 1)) (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat : ℚ) / (1 + Nat.choose (n + 1) 2 : ℚ)

end

end A135758.P11248655827613784904

namespace A135758

/-- `C(n*(n+1), n*(n+1)/2)/(1+C(n+1, 2))` -/
def P11248655827613784904.Spec : Prop :=
  ∀ n, P11248655827613784904.a n = (A135758 n : ℚ)

end A135758

/-! ## A135758.P8426171772994044195

`abs(A168491(∑[n]))`
-/

namespace A135758.P8426171772994044195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A135758.P8426171772994044195

namespace A135758

/-- `abs(A168491(∑[n]))` -/
def P8426171772994044195.Spec : Prop :=
  ∀ n, P8426171772994044195.a n = A135758 n

end A135758

/-! ## A135758.P8793839138707098646

`A120588(∑[n]+1)`
-/

namespace A135758.P8793839138707098646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135758.P8793839138707098646

namespace A135758

/-- `A120588(∑[n]+1)` -/
def P8793839138707098646.Spec : Prop :=
  ∀ n, P8793839138707098646.a n = A135758 n

end A135758

/-! ## A135758.P15552103954984126117

`A120304(∑[n])+2`
-/

namespace A135758.P15552103954984126117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A135758.P15552103954984126117

namespace A135758

/-- `A120304(∑[n])+2` -/
def P15552103954984126117.Spec : Prop :=
  ∀ n, P15552103954984126117.a n = A135758 n

end A135758

/-!
# A135759: Least Catalan number divisible by 2^n: a(n) = A000108(2^(n+1)-2).

The programs for A135759, the canonical program `A135759.P17469886222955656611` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135759 has offset 0).

The definition of A135759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(2^(n+1)-2)` (program `A135759.P17469886222955656611`, by `A135759.P17469886222955656611.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135759.P17469886222955656611

`A000108(2^(n+1)-2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135759

/-- `A000108(2^(n+1)-2)` -/
def P17469886222955656611.Spec : Prop :=
  ∀ n, P17469886222955656611.a n = A135759 n

theorem P17469886222955656611.correct : P17469886222955656611.Spec := by
  intro n
  simp only [A135759]

end A135759

/-! ## A135759.P8089614376251278590

`A066563(2^n)`
-/

namespace A135759.P8089614376251278590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066563 (2 ^ n)

end

end A135759.P8089614376251278590

namespace A135759

/-- `A066563(2^n)` -/
def P8089614376251278590.Spec : Prop :=
  ∀ n, P8089614376251278590.a n = A135759 n

end A135759

/-! ## A135759.P11418346156221055528

`A120588(∑[2^n])`
-/

namespace A135759.P11418346156221055528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135759.P11418346156221055528

namespace A135759

/-- `A120588(∑[2^n])` -/
def P11418346156221055528.Spec : Prop :=
  ∀ n, P11418346156221055528.a n = A135759 n

end A135759

/-!
# A135760: 

The programs for A135760, there is no canonical definition to state claims against.
-/

/-! ## A135760.P12059365850534577550

`A001764(3^n-1)`
-/

namespace A135760.P12059365850534577550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (3 ^ n - 1)

end

end A135760.P12059365850534577550

/-!
# A135761: Natural numbers with every odd prime p swapped with p+1.

The programs for A135761, there is no canonical definition to state claims against.
-/

/-! ## A135761.P12414893366897100611

`A135762(A028310(n))+n/A028310(n)`
-/

namespace A135761.P12414893366897100611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135762 (A028310 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A135761.P12414893366897100611

/-!
# A135762: Start with sequence of positive integers, then swap a(i) and a(i-1) if a(i) is an odd prime.

The programs for A135762, there is no canonical definition to state claims against.
-/

/-! ## A135762.P759933504630958818

`A135761(n+2)-1`
-/

namespace A135762.P759933504630958818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (n + 2) - 1

end

end A135762.P759933504630958818

/-!
# A135763: Expansion of (theta_3(q) * theta_3(q^3))^3 in powers of q.

The programs for A135763, there is no canonical definition to state claims against.
-/

/-! ## A135763.P16045224040167770503

`A028615(16*n)`
-/

namespace A135763.P16045224040167770503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (16 * n)

end

end A135763.P16045224040167770503

/-! ## A135763.P6461047682599497358

`A028704(A028956(ceil(4^n/2)))`
-/

namespace A135763.P6461047682599497358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028704 (A028956 ⌈(4 ^ n : ℚ) / 2⌉.toNat).toNat

end

end A135763.P6461047682599497358

/-!
# A135764: Distribute the natural numbers in columns based on the occurrence of "2" in each prime factorization; square array A(row,col) = 2^(row-1) * ((2*col)-1), read by descending antidiagonals.

The programs for A135764, the canonical program `A135764.P14448543870011279856` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135764 has offset 1).

The definition of A135764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135764.P13666796799036538589

`2^col(n)*(2*(row(n)-col(n))+1)`
-/

namespace A135764.P13666796799036538589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1)

end

end A135764.P13666796799036538589

namespace A135764

/-- `2^col(n)*(2*(row(n)-col(n))+1)` -/
def P13666796799036538589.Spec : Prop :=
  ∀ n, P13666796799036538589.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P14448543870011279856

`A075302(n)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A135764

/-- `A075302(n)+1` -/
def P14448543870011279856.Spec : Prop :=
  ∀ n, P14448543870011279856.a n = A135764 (n + 1)

theorem P14448543870011279856.correct : P14448543870011279856.Spec := by
  intro n
  simp only [A135764, Nat.add_sub_cancel]

end A135764

/-! ## A135764.P11647301217379074591

`A075300(A061579(n))+1`
-/

namespace A135764.P11647301217379074591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A061579 n).toNat + 1

end

end A135764.P11647301217379074591

namespace A135764

/-- `A075300(A061579(n))+1` -/
def P11647301217379074591.Spec : Prop :=
  ∀ n, P11647301217379074591.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P8313327549939776731

`A059268(n)*A099375(n)`
-/

namespace A135764.P8313327549939776731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A099375 n

end

end A135764.P8313327549939776731

namespace A135764

/-- `A059268(n)*A099375(n)` -/
def P8313327549939776731.Spec : Prop :=
  ∀ n, P8313327549939776731.a n = A135764 (n + 1)

theorem P8313327549939776731.correct : P8313327549939776731.Spec := by
  intro n
  simp only [A135764, Nat.add_sub_cancel, A135764.P8313327549939776731.a, A135764.P14448543870011279856.a, A059268, A059268.P15217573790077737885.a, A075302, A075302.P4171815956807541736.a, A099375, A099375.P13700148065993022910.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135764

/-! ## A135764.P5521151575642286648

`(A212012(n+1)-1)*A059268(n)`
-/

namespace A135764.P5521151575642286648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) - 1) * A059268 n

end

end A135764.P5521151575642286648

namespace A135764

/-- `(A212012(n+1)-1)*A059268(n)` -/
def P5521151575642286648.Spec : Prop :=
  ∀ n, P5521151575642286648.a n = A135764 (n + 1)

theorem P5521151575642286648.correct : P5521151575642286648.Spec := by
  intro n
  simp only [A135764, Nat.add_sub_cancel, A135764.P5521151575642286648.a, A135764.P14448543870011279856.a, A059268, A059268.P15217573790077737885.a, A075302, A075302.P4171815956807541736.a, A212012, A212012.P10131555541362374622.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A099375, A099375.P13700148065993022910.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135764

/-! ## A135764.P3256017830785812263

`2*A130128(n+1)-A059268(n)`
-/

namespace A135764.P3256017830785812263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130128 (n + 1) - A059268 n

end

end A135764.P3256017830785812263

namespace A135764

/-- `2*A130128(n+1)-A059268(n)` -/
def P3256017830785812263.Spec : Prop :=
  ∀ n, P3256017830785812263.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P10995257657530343263

`2*A053218(n+1)-A001787(A002260(n+1))`
-/

namespace A135764.P10995257657530343263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053218 (n + 1) - A001787 (A002260 (n + 1)).toNat

end

end A135764.P10995257657530343263

namespace A135764

/-- `2*A053218(n+1)-A001787(A002260(n+1))` -/
def P10995257657530343263.Spec : Prop :=
  ∀ n, P10995257657530343263.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P16536486908918636210

`A004736(n+1)*2*A059268(n)-A059268(n)`
-/

namespace A135764.P16536486908918636210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * (2 * A059268 n) - A059268 n

end

end A135764.P16536486908918636210

namespace A135764

/-- `A004736(n+1)*2*A059268(n)-A059268(n)` -/
def P16536486908918636210.Spec : Prop :=
  ∀ n, P16536486908918636210.a n = A135764 (n + 1)

theorem P16536486908918636210.correct : P16536486908918636210.Spec := by
  intro n
  simp only [A135764, Nat.add_sub_cancel, A135764.P16536486908918636210.a, A135764.P14448543870011279856.a, A004736, A004736.P10337537277358081527.a, A059268, A059268.P15217573790077737885.a, A075302, A075302.P4171815956807541736.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A018900, A018900.P2868698677378612256.a, A099375, A099375.P13700148065993022910.a, A140513, A140513.P13579608035938851890.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135764

/-! ## A135764.P8874896001445450529

`A130128(n+1)+A130128(n+2)-A357213(n+2)`
-/

namespace A135764.P8874896001445450529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (n + 1) + (A130128 (n + 2) - A357213 (n + 2))

end

end A135764.P8874896001445450529

namespace A135764

/-- `A130128(n+1)+A130128(n+2)-A357213(n+2)` -/
def P8874896001445450529.Spec : Prop :=
  ∀ n, P8874896001445450529.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P11282335510757550936

`A054582(A061579(n))`
-/

namespace A135764.P11282335510757550936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A061579 n).toNat

end

end A135764.P11282335510757550936

namespace A135764

/-- `A054582(A061579(n))` -/
def P11282335510757550936.Spec : Prop :=
  ∀ n, P11282335510757550936.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P3580076741222318394

`A054582(A114327(n)+n)`
-/

namespace A135764.P3580076741222318394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A114327 n + (n : ℤ)).toNat

end

end A135764.P3580076741222318394

namespace A135764

/-- `A054582(A114327(n)+n)` -/
def P3580076741222318394.Spec : Prop :=
  ∀ n, P3580076741222318394.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P11013855886177470025

`A054582(A038722(n+1)-1)`
-/

namespace A135764.P11013855886177470025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A038722 (n + 1) - 1).toNat

end

end A135764.P11013855886177470025

namespace A135764

/-- `A054582(A038722(n+1)-1)` -/
def P11013855886177470025.Spec : Prop :=
  ∀ n, P11013855886177470025.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P8089763289086027370

`A054582(A093995(n+1)-(n+1))`
-/

namespace A135764.P8089763289086027370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A135764.P8089763289086027370

namespace A135764

/-- `A054582(A093995(n+1)-(n+1))` -/
def P8089763289086027370.Spec : Prop :=
  ∀ n, P8089763289086027370.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P11823729825917772998

`A054582(A002024(n+1)²-(n+1))`
-/

namespace A135764.P11823729825917772998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A135764.P11823729825917772998

namespace A135764

/-- `A054582(A002024(n+1)²-(n+1))` -/
def P11823729825917772998.Spec : Prop :=
  ∀ n, P11823729825917772998.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P3647315667612666741

`A054582(A127739(n+1)-A002260(n+1))`
-/

namespace A135764.P3647315667612666741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A135764.P3647315667612666741

namespace A135764

/-- `A054582(A127739(n+1)-A002260(n+1))` -/
def P3647315667612666741.Spec : Prop :=
  ∀ n, P3647315667612666741.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P17195657401656473467

`A054582(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A135764.P17195657401656473467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A135764.P17195657401656473467

namespace A135764

/-- `A054582(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P17195657401656473467.Spec : Prop :=
  ∀ n, P17195657401656473467.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P1758923542594511172

`(A061579(A014132(n+1))-n)*A059268(n)`
-/

namespace A135764.P1758923542594511172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061579 (A014132 (n + 1)).toNat - (n : ℤ)) * A059268 n

end

end A135764.P1758923542594511172

namespace A135764

/-- `(A061579(A014132(n+1))-n)*A059268(n)` -/
def P1758923542594511172.Spec : Prop :=
  ∀ n, P1758923542594511172.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P3723345269610725671

`A054582(A099375(n)+n)/2`
-/

namespace A135764.P3723345269610725671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054582 (A099375 n + (n : ℤ)).toNat : ℚ) / 2

end

end A135764.P3723345269610725671

namespace A135764

/-- `A054582(A099375(n)+n)/2` -/
def P3723345269610725671.Spec : Prop :=
  ∀ n, P3723345269610725671.a n = (A135764 (n + 1) : ℚ)

end A135764

/-! ## A135764.P16845973061369996476

`A054582(A127739(n+1)-A057555(2*n+1))`
-/

namespace A135764.P16845973061369996476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A127739 (n + 1) - A057555 (2 * n + 1)).toNat

end

end A135764.P16845973061369996476

namespace A135764

/-- `A054582(A127739(n+1)-A057555(2*n+1))` -/
def P16845973061369996476.Spec : Prop :=
  ∀ n, P16845973061369996476.a n = A135764 (n + 1)

end A135764

/-! ## A135764.P1933972050432602083

`A387051(A075302(n))`
-/

namespace A135764.P1933972050432602083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387051 (A075302 n).toNat

end

end A135764.P1933972050432602083

namespace A135764

/-- `A387051(A075302(n))` -/
def P1933972050432602083.Spec : Prop :=
  ∀ n, P1933972050432602083.a n = A135764 (n + 1)

end A135764

/-!
# A135765: Distribute the odd numbers in columns based on the occurrence of "3" in each prime factorization; square array A(row, col) = 3^(row-1) * A007310(col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A135765, the canonical program `A135765.P15449999841783875573` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135765 has offset 1).

The definition of A135765 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135765.P9306699693755520457

`2*A254051(n+1)-1`
-/

namespace A135765.P9306699693755520457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254051 (n + 1) - 1

end

end A135765.P9306699693755520457

namespace A135765

/-- `2*A254051(n+1)-1` -/
def P9306699693755520457.Spec : Prop :=
  ∀ n, P9306699693755520457.a n = A135765 (n + 1)

theorem P9306699693755520457.correct : P9306699693755520457.Spec := by
  intro n
  simp only [A135765, Nat.add_sub_cancel, A135765.P9306699693755520457.a, A135765.P15449999841783875573.a, A003961, A003961.P5996473960037614004.a, A254051, A254051.P698183174355435254.a, A254053, A254053.P7934599667776226274.a, A004736, A004736.P10337537277358081527.a, A048673, A048673.P3613002930333742504.a, A059268, A059268.P15217573790077737885.a, A253885, A253885.P16715555451856890624.a, A254050, A254050.P6331139238436620392.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A243501, A243501.P10707292738867961998.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A002262, A002262.P17823619022233514403.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A137688, A137688.P9746695207037186753.a, A243071, A243071.P12484383641158862297.a, A275716, A275716.P7951773903952206727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135765

/-! ## A135765.P15449999841783875573

`A003961(A254053(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135765

/-- `A003961(A254053(n+1))` -/
def P15449999841783875573.Spec : Prop :=
  ∀ n, P15449999841783875573.a n = A135765 (n + 1)

theorem P15449999841783875573.correct : P15449999841783875573.Spec := by
  intro n
  simp only [A135765, Nat.add_sub_cancel]

end A135765

/-! ## A135765.P548183246285588986

`2*A191450(A038722(n+1))-1`
-/

namespace A135765.P548183246285588986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191450 (A038722 (n + 1)).toNat - 1

end

end A135765.P548183246285588986

namespace A135765

/-- `2*A191450(A038722(n+1))-1` -/
def P548183246285588986.Spec : Prop :=
  ∀ n, P548183246285588986.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P13773190546438566757

`2*A191450(A061579(n)+1)-1`
-/

namespace A135765.P13773190546438566757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191450 (A061579 n + 1).toNat - 1

end

end A135765.P13773190546438566757

namespace A135765

/-- `2*A191450(A061579(n)+1)-1` -/
def P13773190546438566757.Spec : Prop :=
  ∀ n, P13773190546438566757.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P4068702993740435516

`A191450(A038722(n+1))+A254051(n+1)-1`
-/

namespace A135765.P4068702993740435516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (A038722 (n + 1)).toNat + (A254051 (n + 1) - 1)

end

end A135765.P4068702993740435516

namespace A135765

/-- `A191450(A038722(n+1))+A254051(n+1)-1` -/
def P4068702993740435516.Spec : Prop :=
  ∀ n, P4068702993740435516.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P13850453571735900950

`A254051(A014132(n+1)+1)-A254051(n+1)`
-/

namespace A135765.P13850453571735900950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A014132 (n + 1) + 1).toNat - A254051 (n + 1)

end

end A135765.P13850453571735900950

namespace A135765

/-- `A254051(A014132(n+1)+1)-A254051(n+1)` -/
def P13850453571735900950.Spec : Prop :=
  ∀ n, P13850453571735900950.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P18377183928818852681

`A254051(n+1)+A254051(n+1)-A309873(n+1)²`
-/

namespace A135765.P18377183928818852681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (n + 1) + (A254051 (n + 1) - A309873 (n + 1) ^ 2)

end

end A135765.P18377183928818852681

namespace A135765

/-- `A254051(n+1)+A254051(n+1)-A309873(n+1)²` -/
def P18377183928818852681.Spec : Prop :=
  ∀ n, P18377183928818852681.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P11541104969519971877

`A254051(n+1)+A254051(n+1)-A295554(A295554(n+1))`
-/

namespace A135765.P11541104969519971877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (n + 1) + (A254051 (n + 1) - A295554 (A295554 (n + 1)).toNat)

end

end A135765.P11541104969519971877

namespace A135765

/-- `A254051(n+1)+A254051(n+1)-A295554(A295554(n+1))` -/
def P11541104969519971877.Spec : Prop :=
  ∀ n, P11541104969519971877.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P16818280080677124909

`A000265(A254051(n+1)+A254051(n+1)-1)`
-/

namespace A135765.P16818280080677124909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A254051 (n + 1) + (A254051 (n + 1) - 1)).toNat

end

end A135765.P16818280080677124909

namespace A135765

/-- `A000265(A254051(n+1)+A254051(n+1)-1)` -/
def P16818280080677124909.Spec : Prop :=
  ∀ n, P16818280080677124909.a n = A135765 (n + 1)

end A135765

/-! ## A135765.P3395673617263046766

`A254051(n+1)+A254051(n+1)-A056940(A151934(n))`
-/

namespace A135765.P3395673617263046766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (n + 1) + (A254051 (n + 1) - A056940 (A151934 n).toNat)

end

end A135765.P3395673617263046766

namespace A135765

/-- `A254051(n+1)+A254051(n+1)-A056940(A151934(n))` -/
def P3395673617263046766.Spec : Prop :=
  ∀ n, P3395673617263046766.a n = A135765 (n + 1)

end A135765

/-!
# A135766: Multiply sequence A007775 (1 7 11 13 ...) by sequence A000351 (1 5 25 125 ...).

The programs for A135766, the canonical program `A135766.P16283714302461316708` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135766 has offset 1).

The definition of A135766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135766.P16283714302461316708

`A007775(row(n)+1-col(n))*A000351(col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135766

/-- `A007775(row(n)+1-col(n))*A000351(col(n))` -/
def P16283714302461316708.Spec : Prop :=
  ∀ n, P16283714302461316708.a n = A135766 (n + 1)

theorem P16283714302461316708.correct : P16283714302461316708.Spec := by
  intro n
  simp only [A135766, Nat.add_sub_cancel]

end A135766

/-! ## A135766.P14916558008650546389

`A000351(A002262(n))*A007775(A004736(n+1))`
-/

namespace A135766.P14916558008650546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat * A007775 (A004736 (n + 1)).toNat

end

end A135766.P14916558008650546389

namespace A135766

/-- `A000351(A002262(n))*A007775(A004736(n+1))` -/
def P14916558008650546389.Spec : Prop :=
  ∀ n, P14916558008650546389.a n = A135766 (n + 1)

end A135766

/-! ## A135766.P15231911036876490334

`A003961(A135765(n+1)%A309263(n+5))`
-/

namespace A135766.P15231911036876490334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A135765 (n + 1)) (A309263 (n + 5))).toNat

end

end A135766.P15231911036876490334

namespace A135766

/-- `A003961(A135765(n+1)%A309263(n+5))` -/
def P15231911036876490334.Spec : Prop :=
  ∀ n, P15231911036876490334.a n = A135766 (n + 1)

end A135766

/-! ## A135766.P15435070152497184540

`A003961(A135765(n+1))*A066799(A102083(n))`
-/

namespace A135766.P15435070152497184540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A135765 (n + 1)).toNat * A066799 (A102083 n).toNat

end

end A135766.P15435070152497184540

namespace A135766

/-- `A003961(A135765(n+1))*A066799(A102083(n))` -/
def P15435070152497184540.Spec : Prop :=
  ∀ n, P15435070152497184540.a n = A135766 (n + 1)

end A135766

/-! ## A135766.P12035450327038296745

`A003961(A135765(n+1))+A000038(A061219(n+1))`
-/

namespace A135766.P12035450327038296745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A135765 (n + 1)).toNat + A000038 (A061219 (n + 1)).toNat

end

end A135766.P12035450327038296745

namespace A135766

/-- `A003961(A135765(n+1))+A000038(A061219(n+1))` -/
def P12035450327038296745.Spec : Prop :=
  ∀ n, P12035450327038296745.a n = A135766 (n + 1)

end A135766

/-!
# A135767: sigma_0(n)-omega(n)-Omega(n) (sigma_0 = A000005 = # divisors, omega = A001221 = # prime factors, Omega = A001222 = # prime factors with multiplicity).

The programs for A135767, the canonical program `A135767.P1732622784085476699` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135767 has offset 1).

The definition of A135767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)-A001221(n+1)-A001222(n+1)` (program `A135767.P1732622784085476699`, by `A135767.P1732622784085476699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135767.P1732622784085476699

`A000005(n+1)-A001221(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A135767

/-- `A000005(n+1)-A001221(n+1)-A001222(n+1)` -/
def P1732622784085476699.Spec : Prop :=
  ∀ n, P1732622784085476699.a n = A135767 (n + 1)

theorem P1732622784085476699.correct : P1732622784085476699.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel]

end A135767

/-! ## A135767.P5046193477998889935

`∏{e}[n+1, #+1]-∑{e}[n+1, #+1]`
-/

namespace A135767.P5046193477998889935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A135767.P5046193477998889935

namespace A135767

/-- `∏{e}[n+1, #+1]-∑{e}[n+1, #+1]` -/
def P5046193477998889935.Spec : Prop :=
  ∀ n, P5046193477998889935.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P9190108448634642040

`A000005(n+1)-∑{e}[n+1, #+1]`
-/

namespace A135767.P9190108448634642040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A135767.P9190108448634642040

namespace A135767

/-- `A000005(n+1)-∑{e}[n+1, #+1]` -/
def P9190108448634642040.Spec : Prop :=
  ∀ n, P9190108448634642040.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P10621350136665338537

`A033273(n+1)-Δ[A022559(n)]`
-/

namespace A135767.P10621350136665338537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135767.P10621350136665338537

namespace A135767

/-- `A033273(n+1)-Δ[A022559(n)]` -/
def P10621350136665338537.Spec : Prop :=
  ∀ n, P10621350136665338537.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P13415586662443688720

`Δ[A006218(n)]-A080256(n+1)`
-/

namespace A135767.P13415586662443688720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080256 (n + 1)

end

end A135767.P13415586662443688720

namespace A135767

/-- `Δ[A006218(n)]-A080256(n+1)` -/
def P13415586662443688720.Spec : Prop :=
  ∀ n, P13415586662443688720.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P4197410793044763150

`A033273(n+1)-A001222(n+1)`
-/

namespace A135767.P4197410793044763150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A001222 (n + 1)

end

end A135767.P4197410793044763150

namespace A135767

/-- `A033273(n+1)-A001222(n+1)` -/
def P4197410793044763150.Spec : Prop :=
  ∀ n, P4197410793044763150.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P953260046546331019

`A000005(n+1)-A080256(n+1)`
-/

namespace A135767.P953260046546331019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A080256 (n + 1)

end

end A135767.P953260046546331019

namespace A135767

/-- `A000005(n+1)-A080256(n+1)` -/
def P953260046546331019.Spec : Prop :=
  ∀ n, P953260046546331019.a n = A135767 (n + 1)

theorem P953260046546331019.correct : P953260046546331019.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P953260046546331019.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A080256, A080256.P7120327596299936655.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P5682057177952105483

`A081707(n+1)-A001221(n+1)`
-/

namespace A135767.P5682057177952105483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A001221 (n + 1)

end

end A135767.P5682057177952105483

namespace A135767

/-- `A081707(n+1)-A001221(n+1)` -/
def P5682057177952105483.Spec : Prop :=
  ∀ n, P5682057177952105483.a n = A135767 (n + 1)

theorem P5682057177952105483.correct : P5682057177952105483.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P5682057177952105483.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A081707, A081707.P11488317504414789232.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P15466324230999056557

`A349215(n+1)-A008474(n+1)`
-/

namespace A135767.P15466324230999056557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) - A008474 (n + 1)

end

end A135767.P15466324230999056557

namespace A135767

/-- `A349215(n+1)-A008474(n+1)` -/
def P15466324230999056557.Spec : Prop :=
  ∀ n, P15466324230999056557.a n = A135767 (n + 1)

theorem P15466324230999056557.correct : P15466324230999056557.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P15466324230999056557.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008474, A008474.P119709174749842562.a, A349215, A349215.P7117496428552855771.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P12029576369835256427

`A378993(n+1)-A162906(n+1)`
-/

namespace A135767.P12029576369835256427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) - A162906 (n + 1)

end

end A135767.P12029576369835256427

namespace A135767

/-- `A378993(n+1)-A162906(n+1)` -/
def P12029576369835256427.Spec : Prop :=
  ∀ n, P12029576369835256427.a n = A135767 (n + 1)

theorem P12029576369835256427.correct : P12029576369835256427.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P12029576369835256427.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A162906, A162906.P6107126863955034378.a, A378993, A378993.P12473165963195423861.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A081707, A081707.P11488317504414789232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P1633431232929496726

`A055212(n+1)+1-A001222(n+1)`
-/

namespace A135767.P1633431232929496726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + (1 - A001222 (n + 1))

end

end A135767.P1633431232929496726

namespace A135767

/-- `A055212(n+1)+1-A001222(n+1)` -/
def P1633431232929496726.Spec : Prop :=
  ∀ n, P1633431232929496726.a n = A135767 (n + 1)

theorem P1633431232929496726.correct : P1633431232929496726.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P1633431232929496726.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A055212, A055212.P14412881054625885538.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P18379210394230052521

`A000005(n+1)-(A001222(n+1)+A001221(n+1))`
-/

namespace A135767.P18379210394230052521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A001221 (n + 1))

end

end A135767.P18379210394230052521

namespace A135767

/-- `A000005(n+1)-(A001222(n+1)+A001221(n+1))` -/
def P18379210394230052521.Spec : Prop :=
  ∀ n, P18379210394230052521.a n = A135767 (n + 1)

theorem P18379210394230052521.correct : P18379210394230052521.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P18379210394230052521.a, A135767.P1732622784085476699.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135767

/-! ## A135767.P11551248920093638045

`A033273(n+1)+A081707(n+1)-A000005(n+1)`
-/

namespace A135767.P11551248920093638045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + (A081707 (n + 1) - A000005 (n + 1))

end

end A135767.P11551248920093638045

namespace A135767

/-- `A033273(n+1)+A081707(n+1)-A000005(n+1)` -/
def P11551248920093638045.Spec : Prop :=
  ∀ n, P11551248920093638045.a n = A135767 (n + 1)

theorem P11551248920093638045.correct : P11551248920093638045.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P11551248920093638045.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033273, A033273.P18420659424697249895.a, A081707, A081707.P11488317504414789232.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P1644450188607383228

`A307409(n+1)+A328958(n+1)-A001222(n+1)`
-/

namespace A135767.P1644450188607383228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1) + (A328958 (n + 1) - A001222 (n + 1))

end

end A135767.P1644450188607383228

namespace A135767

/-- `A307409(n+1)+A328958(n+1)-A001222(n+1)` -/
def P1644450188607383228.Spec : Prop :=
  ∀ n, P1644450188607383228.a n = A135767 (n + 1)

theorem P1644450188607383228.correct : P1644450188607383228.Spec := by
  intro n
  simp only [A135767, Nat.add_sub_cancel, A135767.P1644450188607383228.a, A135767.P1732622784085476699.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A307409, A307409.P14464226460867145203.a, A328958, A328958.P3249382024381690087.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A113901, A113901.P4362226141671724758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135767

/-! ## A135767.P1976189912923749462

`A324179(n+1)+A324191(n+1)-A001221(n+1)`
-/

namespace A135767.P1976189912923749462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + (A324191 (n + 1) - A001221 (n + 1))

end

end A135767.P1976189912923749462

namespace A135767

/-- `A324179(n+1)+A324191(n+1)-A001221(n+1)` -/
def P1976189912923749462.Spec : Prop :=
  ∀ n, P1976189912923749462.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P14467209383947549725

`A000005(n+1)-(A001222(n+1)+A001222(A007947(n+1)))`
-/

namespace A135767.P14467209383947549725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A001222 (A007947 (n + 1)).toNat)

end

end A135767.P14467209383947549725

namespace A135767

/-- `A000005(n+1)-(A001222(n+1)+A001222(A007947(n+1)))` -/
def P14467209383947549725.Spec : Prop :=
  ∀ n, P14467209383947549725.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P6543199439229236295

`A000005(n+1)-(A001222(n+1)+A001222(A034444(n+1)))`
-/

namespace A135767.P6543199439229236295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A001222 (A034444 (n + 1)).toNat)

end

end A135767.P6543199439229236295

namespace A135767

/-- `A000005(n+1)-(A001222(n+1)+A001222(A034444(n+1)))` -/
def P6543199439229236295.Spec : Prop :=
  ∀ n, P6543199439229236295.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P5100767093136887241

`A000005(n+1)-(A001222(n+1)+A001222(A074816(n+1)))`
-/

namespace A135767.P5100767093136887241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A001222 (A074816 (n + 1)).toNat)

end

end A135767.P5100767093136887241

namespace A135767

/-- `A000005(n+1)-(A001222(n+1)+A001222(A074816(n+1)))` -/
def P5100767093136887241.Spec : Prop :=
  ∀ n, P5100767093136887241.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P6922500321391997942

`A000005(n+1)-(A001222(n+1)+A001222(A181819(n+1)))`
-/

namespace A135767.P6922500321391997942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A001222 (A181819 (n + 1)).toNat)

end

end A135767.P6922500321391997942

namespace A135767

/-- `A000005(n+1)-(A001222(n+1)+A001222(A181819(n+1)))` -/
def P6922500321391997942.Spec : Prop :=
  ∀ n, P6922500321391997942.a n = A135767 (n + 1)

end A135767

/-! ## A135767.P12928825767501986745

`A000005(n+1)-(A001222(n+1)+A001222(A324291(n+1)))`
-/

namespace A135767.P12928825767501986745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A001222 (A324291 (n + 1)).toNat)

end

end A135767.P12928825767501986745

namespace A135767

/-- `A000005(n+1)-(A001222(n+1)+A001222(A324291(n+1)))` -/
def P12928825767501986745.Spec : Prop :=
  ∀ n, P12928825767501986745.a n = A135767 (n + 1)

end A135767

/-!
# A135768: Indices of pentagonal numbers > 0 which are not the difference of 2 other pentagonal numbers > 0.

The programs for A135768, there is no canonical definition to state claims against.
-/

/-! ## A135768.P1418891260763933647

`eq[0, A330657(n+1)]+1`
-/

namespace A135768.P1418891260763933647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135768.P1418891260763933647

/-! ## A135768.P4582448443781184752

`record[gcd(n+1, A330657(A000027(n+1)))]`
-/

namespace A135768.P4582448443781184752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A330657 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135768.P4582448443781184752

/-! ## A135768.P18189881686251400194

`record[(1-A330657(n+1))*A000027(n+1)]`
-/

namespace A135768.P18189881686251400194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A330657 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135768.P18189881686251400194

/-! ## A135768.P11560955473233096497

`record[A000027(n+1)/A000124(A330657(n+1))]`
-/

namespace A135768.P11560955473233096497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000124 (A330657 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135768.P11560955473233096497

/-! ## A135768.P6489318269916932799

`record[(A005408(n)-n)/A000124(A330657(n+1))]`
-/

namespace A135768.P6489318269916932799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A000124 (A330657 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135768.P6489318269916932799

/-! ## A135768.P15216155707811565344

`A008619(record[gcd(2*n, A330657(n+1))])`
-/

namespace A135768.P15216155707811565344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A330657 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A135768.P15216155707811565344

/-!
# A135769: Pentagonal numbers > 0 which are not the difference of two other pentagonal numbers > 0.

The programs for A135769, there is no canonical definition to state claims against.
-/

/-! ## A135769.P10633031257027858558

`A000217(A135768(n+1)-1)+A135768(n+1)²`
-/

namespace A135769.P10633031257027858558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A135768 (n + 1) - 1).toNat + A135768 (n + 1) ^ 2

end

end A135769.P10633031257027858558

/-! ## A135769.P2027959119760685338

`A000326(A135768(n+1))`
-/

namespace A135769.P2027959119760685338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A135768 (n + 1)).toNat

end

end A135769.P2027959119760685338

/-! ## A135769.P9120501087237157131

`A143689(A135768(2*n-n+1))-1`
-/

namespace A135769.P9120501087237157131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A135768 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat - 1

end

end A135769.P9120501087237157131

/-! ## A135769.P14444964197351404817

`A115067(A135768(n+1))-A057428(n+1)`
-/

namespace A135769.P14444964197351404817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (A135768 (n + 1)).toNat - A057428 (n + 1)

end

end A135769.P14444964197351404817

/-! ## A135769.P2704728958927030240

`A115067(A135768(n+1))+A001511(2*n+1)`
-/

namespace A135769.P2704728958927030240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (A135768 (n + 1)).toNat + A001511 (2 * n + 1)

end

end A135769.P2704728958927030240

/-! ## A135769.P15550998575950969581

`A245288(2*A135768(n+1))`
-/

namespace A135769.P15550998575950969581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (2 * A135768 (n + 1)).toNat

end

end A135769.P15550998575950969581

/-! ## A135769.P3773007821145910331

`A245288(2*(eq[0, A330657(n+1)]+1))`
-/

namespace A135769.P3773007821145910331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A135769.P3773007821145910331

/-!
# A135770: Numbers whose square is such that another square can be obtained by a cyclic permutation of the digits (excluding leading zeros).

The programs for A135770, there is no canonical definition to state claims against.
-/

/-! ## A135770.P668746498739198773

`A018851(A135780(n+1))`
-/

namespace A135770.P668746498739198773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A135780 (n + 1)).toNat

end

end A135770.P668746498739198773

/-! ## A135770.P8410023953683376099

`sqrt(A135780(n+1))%A230400(n+1)`
-/

namespace A135770.P8410023953683376099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A135780 (n + 1) : ℝ))) (A230400 (n + 1))

end

end A135770.P8410023953683376099

/-! ## A135770.P14032271615362955263

`sqrt(A135780(n+1)%A325886(n+1))`
-/

namespace A135770.P14032271615362955263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A135780 (n + 1)) (A325886 (n + 1)) : ℝ)

end

end A135770.P14032271615362955263

/-! ## A135770.P14427890458738845011

`A056926(A135780(n+1)^A345063(n+1))`
-/

namespace A135770.P14427890458738845011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A135780 (n + 1) : ℚ) ^ (A345063 (n + 1) : ℤ))).toNat

end

end A135770.P14427890458738845011

/-! ## A135770.P5944227984472871413

`A056926(C(A135780(n+1), A345063(n+1)))`
-/

namespace A135770.P5944227984472871413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Nat.choose (A135780 (n + 1)).toNat (A345063 (n + 1)).toNat)

end

end A135770.P5944227984472871413

/-!
# A135772: Numbers having equal number of divisors and binary digits.

The programs for A135772, the canonical program `A135772.P4044123108069799030` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135772 has offset 1).

The definition of A135772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135772.P4044123108069799030

`eq[A032741(n)+1, A029837(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135772

/-- `eq[A032741(n)+1, A029837(n+1)]` -/
def P4044123108069799030.Spec : Prop :=
  ∀ n, (P4044123108069799030.a n : ℤ) = A135772 (n + 1)

theorem P4044123108069799030.correct : P4044123108069799030.Spec := by
  intro n
  simp only [A135772, Nat.add_sub_cancel]

end A135772

/-! ## A135772.P1848778187553874270

`eq[n, A103354(A032741(n)+1+n)]`
-/

namespace A135772.P1848778187553874270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (A032741 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135772.P1848778187553874270

namespace A135772

/-- `eq[n, A103354(A032741(n)+1+n)]` -/
def P1848778187553874270.Spec : Prop :=
  ∀ n, (P1848778187553874270.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P5735522707012682338

`eq[A000005(n+1), A070939(n+1)]+1`
-/

namespace A135772.P5735522707012682338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135772.P5735522707012682338

namespace A135772

/-- `eq[A000005(n+1), A070939(n+1)]+1` -/
def P5735522707012682338.Spec : Prop :=
  ∀ n, (P5735522707012682338.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P9511175048646004636

`eq[A000005(n+1), A029837(n+2)]+1`
-/

namespace A135772.P9511175048646004636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135772.P9511175048646004636

namespace A135772

/-- `eq[A000005(n+1), A029837(n+2)]+1` -/
def P9511175048646004636.Spec : Prop :=
  ∀ n, (P9511175048646004636.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P859651608271778471

`eq[A032741(n+1)+1, ∑[A036987(n)]]+1`
-/

namespace A135772.P859651608271778471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135772.P859651608271778471

namespace A135772

/-- `eq[A032741(n+1)+1, ∑[A036987(n)]]+1` -/
def P859651608271778471.Spec : Prop :=
  ∀ n, (P859651608271778471.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P6546186184528105195

`eq[A000005(n+1), A000523(n+1)+1]+1`
-/

namespace A135772.P6546186184528105195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135772.P6546186184528105195

namespace A135772

/-- `eq[A000005(n+1), A000523(n+1)+1]+1` -/
def P6546186184528105195.Spec : Prop :=
  ∀ n, (P6546186184528105195.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P14979748474235433593

`eq[A070939(n)+1, A008624(A145154(n))]`
-/

namespace A135772.P14979748474235433593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135772.P14979748474235433593

namespace A135772

/-- `eq[A070939(n)+1, A008624(A145154(n))]` -/
def P14979748474235433593.Spec : Prop :=
  ∀ n, (P14979748474235433593.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P9433950267091429802

`eq[A008621(A145154(n)-1), A029837(n+1)]`
-/

namespace A135772.P9433950267091429802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A145154 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135772.P9433950267091429802

namespace A135772

/-- `eq[A008621(A145154(n)-1), A029837(n+1)]` -/
def P9433950267091429802.Spec : Prop :=
  ∀ n, (P9433950267091429802.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P570595654865508000

`eq[A000005(n+1), A000005(A053644(n+1))]+1`
-/

namespace A135772.P570595654865508000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053644 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135772.P570595654865508000

namespace A135772

/-- `eq[A000005(n+1), A000005(A053644(n+1))]+1` -/
def P570595654865508000.Spec : Prop :=
  ∀ n, (P570595654865508000.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P15538186450716826283

`eq[A008624(A145154(n)), A070939(2*n)]`
-/

namespace A135772.P15538186450716826283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135772.P15538186450716826283

namespace A135772

/-- `eq[A008624(A145154(n)), A070939(2*n)]` -/
def P15538186450716826283.Spec : Prop :=
  ∀ n, (P15538186450716826283.a n : ℤ) = A135772 (n + 1)

end A135772

/-! ## A135772.P18395177078366679657

`eq[A008621(A145154(n)), A029837(2*n+1)]`
-/

namespace A135772.P18395177078366679657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135772.P18395177078366679657

namespace A135772

/-- `eq[A008621(A145154(n)), A029837(2*n+1)]` -/
def P18395177078366679657.Spec : Prop :=
  ∀ n, (P18395177078366679657.a n : ℤ) = A135772 (n + 1)

end A135772

/-!
# A135773: Numbers having number of divisors equal to number of digits in base 3.

The programs for A135773, the canonical program `A135773.P10227162081772110256` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135773 has offset 1).

The definition of A135773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135773.P10227162081772110256

`eq[A032741(n)+1, A080342(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135773

/-- `eq[A032741(n)+1, A080342(n+1)]` -/
def P10227162081772110256.Spec : Prop :=
  ∀ n, (P10227162081772110256.a n : ℤ) = A135773 (n + 1)

theorem P10227162081772110256.correct : P10227162081772110256.Spec := by
  intro n
  simp only [A135773, Nat.add_sub_cancel]

end A135773

/-! ## A135773.P14144436909296082819

`eq[A000005(abs(1-n)+1), A081604(n)]`
-/

namespace A135773.P14144436909296082819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P14144436909296082819

namespace A135773

/-- `eq[A000005(abs(1-n)+1), A081604(n)]` -/
def P14144436909296082819.Spec : Prop :=
  ∀ n, (P14144436909296082819.a n : ℤ) = A135773 (n + 1)

end A135773

/-! ## A135773.P7003908828113251088

`eq[A002265(A145154(n)), A081604(n)]`
-/

namespace A135773.P7003908828113251088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P7003908828113251088

namespace A135773

/-- `eq[A002265(A145154(n)), A081604(n)]` -/
def P7003908828113251088.Spec : Prop :=
  ∀ n, (P7003908828113251088.a n : ℤ) = A135773 (n + 1)

end A135773

/-! ## A135773.P15338796804201311944

`eq[A000005(A028310(n)), A080342(n+1)]`
-/

namespace A135773.P15338796804201311944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P15338796804201311944

namespace A135773

/-- `eq[A000005(A028310(n)), A080342(n+1)]` -/
def P15338796804201311944.Spec : Prop :=
  ∀ n, (P15338796804201311944.a n : ℤ) = A135773 (n + 1)

end A135773

/-! ## A135773.P5578821976369698155

`eq[A000005(A000007(n)+n), A080342(n+1)]`
-/

namespace A135773.P5578821976369698155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P5578821976369698155

namespace A135773

/-- `eq[A000005(A000007(n)+n), A080342(n+1)]` -/
def P5578821976369698155.Spec : Prop :=
  ∀ n, (P5578821976369698155.a n : ℤ) = A135773 (n + 1)

end A135773

/-! ## A135773.P14718211124768442098

`eq[A081604(n), A277692(2*n+1)]`
-/

namespace A135773.P14718211124768442098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P14718211124768442098

namespace A135773

/-- `eq[A081604(n), A277692(2*n+1)]` -/
def P14718211124768442098.Spec : Prop :=
  ∀ n, (P14718211124768442098.a n : ℤ) = A135773 (n + 1)

end A135773

/-! ## A135773.P12969055729448700451

`eq[1, A277692(A005408(n))/A081604(n)]`
-/

namespace A135773.P12969055729448700451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277692 (A005408 n).toNat : ℚ) / (A081604 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A135773.P12969055729448700451

namespace A135773

/-- `eq[1, A277692(A005408(n))/A081604(n)]` -/
def P12969055729448700451.Spec : Prop :=
  ∀ n, (P12969055729448700451.a n : ℤ) = A135773 (n + 1)

end A135773

/-! ## A135773.P12563554684887878368

`eq[A005496(A032741(n)), A080342(n+1)]`
-/

namespace A135773.P12563554684887878368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P12563554684887878368

namespace A135773

/-- `eq[A005496(A032741(n)), A080342(n+1)]` -/
def P12563554684887878368.Spec : Prop :=
  ∀ n, (P12563554684887878368.a n : ℤ) = A135773 (n + 1)

end A135773

/-!
# A135774: Numbers having number of divisors equal to number of digits in base 4.

The programs for A135774, the canonical program `A135774.P8782741782115960523` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135774 has offset 1).

The definition of A135774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135774.P2126774578147583405

`eq[A000005(n+1), A110591(n)]+1`
-/

namespace A135774.P2126774578147583405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135774.P2126774578147583405

namespace A135774

/-- `eq[A000005(n+1), A110591(n)]+1` -/
def P2126774578147583405.Spec : Prop :=
  ∀ n, (P2126774578147583405.a n : ℤ) = A135774 (n + 1)

end A135774

/-! ## A135774.P17917952410429704321

`eq[A000360(A072376(n)), A032741(n)]`
-/

namespace A135774.P17917952410429704321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A072376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135774.P17917952410429704321

namespace A135774

/-- `eq[A000360(A072376(n)), A032741(n)]` -/
def P17917952410429704321.Spec : Prop :=
  ∀ n, (P17917952410429704321.a n : ℤ) = A135774 (n + 1)

end A135774

/-! ## A135774.P14363459274820595774

`eq[A110591(n), A341620(A008458(n))]`
-/

namespace A135774.P14363459274820595774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135774.P14363459274820595774

namespace A135774

/-- `eq[A110591(n), A341620(A008458(n))]` -/
def P14363459274820595774.Spec : Prop :=
  ∀ n, (P14363459274820595774.a n : ℤ) = A135774 (n + 1)

end A135774

/-! ## A135774.P8782741782115960523

`eq[A032741(n)+1, A000523(A000267(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135774

/-- `eq[A032741(n)+1, A000523(A000267(n))]` -/
def P8782741782115960523.Spec : Prop :=
  ∀ n, (P8782741782115960523.a n : ℤ) = A135774 (n + 1)

theorem P8782741782115960523.correct : P8782741782115960523.Spec := by
  intro n
  simp only [A135774, Nat.add_sub_cancel]

end A135774

/-! ## A135774.P15863099122481094384

`eq[A000005(n+1), A070939(A000196(n))]+1`
-/

namespace A135774.P15863099122481094384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135774.P15863099122481094384

namespace A135774

/-- `eq[A000005(n+1), A070939(A000196(n))]+1` -/
def P15863099122481094384.Spec : Prop :=
  ∀ n, (P15863099122481094384.a n : ℤ) = A135774 (n + 1)

end A135774

/-!
# A135775: Numbers having number of divisors equal to number of digits in base 5.

The programs for A135775, the canonical program `A135775.P6442385644065745739` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135775 has offset 1).

The definition of A135775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135775.P16644880053248228244

`eq[A000005(abs(1-n)+1), A110592(n)]`
-/

namespace A135775.P16644880053248228244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135775.P16644880053248228244

namespace A135775

/-- `eq[A000005(abs(1-n)+1), A110592(n)]` -/
def P16644880053248228244.Spec : Prop :=
  ∀ n, (P16644880053248228244.a n : ℤ) = A135775 (n + 1)

end A135775

/-! ## A135775.P11982642852247315147

`eq[A002265(A145154(n)), A110592(n)]`
-/

namespace A135775.P11982642852247315147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135775.P11982642852247315147

namespace A135775

/-- `eq[A002265(A145154(n)), A110592(n)]` -/
def P11982642852247315147.Spec : Prop :=
  ∀ n, (P11982642852247315147.a n : ℤ) = A135775 (n + 1)

end A135775

/-! ## A135775.P898022359374639203

`eq[A110592(n), A341620(A008458(n))]`
-/

namespace A135775.P898022359374639203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135775.P898022359374639203

namespace A135775

/-- `eq[A110592(n), A341620(A008458(n))]` -/
def P898022359374639203.Spec : Prop :=
  ∀ n, (P898022359374639203.a n : ℤ) = A135775 (n + 1)

end A135775

/-! ## A135775.P6442385644065745739

`eq[A057427(n)+A032741(n), A110592(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135775

/-- `eq[A057427(n)+A032741(n), A110592(n)]` -/
def P6442385644065745739.Spec : Prop :=
  ∀ n, (P6442385644065745739.a n : ℤ) = A135775 (n + 1)

theorem P6442385644065745739.correct : P6442385644065745739.Spec := by
  intro n
  simp only [A135775, Nat.add_sub_cancel]

end A135775

/-! ## A135775.P11810602073414103878

`eq[A110592(n), A277692(2*n+1)]`
-/

namespace A135775.P11810602073414103878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135775.P11810602073414103878

namespace A135775

/-- `eq[A110592(n), A277692(2*n+1)]` -/
def P11810602073414103878.Spec : Prop :=
  ∀ n, (P11810602073414103878.a n : ℤ) = A135775 (n + 1)

end A135775

/-!
# A135776: Numbers having number of divisors equal to number of digits in base 6.

The programs for A135776, the canonical program `A135776.P15334910980622929297` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135776 has offset 1).

The definition of A135776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135776.P15334910980622929297

`eq[A000005(n+1), A390764(n)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135776

/-- `eq[A000005(n+1), A390764(n)]+1` -/
def P15334910980622929297.Spec : Prop :=
  ∀ n, (P15334910980622929297.a n : ℤ) = A135776 (n + 1)

theorem P15334910980622929297.correct : P15334910980622929297.Spec := by
  intro n
  simp only [A135776, Nat.add_sub_cancel]

end A135776

/-! ## A135776.P16484437439899938674

`A319916(A354811(n+1))`
-/

namespace A135776.P16484437439899938674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 (A354811 (n + 1)).toNat

end

end A135776.P16484437439899938674

namespace A135776

/-- `A319916(A354811(n+1))` -/
def P16484437439899938674.Spec : Prop :=
  ∀ n, P16484437439899938674.a n = A135776 (n + 1)

end A135776

/-! ## A135776.P14838647865590170542

`eq[A227568(A227568(n)), A326843(n)]`
-/

namespace A135776.P14838647865590170542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A227568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135776.P14838647865590170542

namespace A135776

/-- `eq[A227568(A227568(n)), A326843(n)]` -/
def P14838647865590170542.Spec : Prop :=
  ∀ n, (P14838647865590170542.a n : ℤ) = A135776 (n + 1)

end A135776

/-! ## A135776.P3184045380409014257

`A185235(A036038(n+1))+A007775(n+1)`
-/

namespace A135776.P3184045380409014257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185235 (A036038 (n + 1)).toNat + A007775 (n + 1)

end

end A135776.P3184045380409014257

namespace A135776

/-- `A185235(A036038(n+1))+A007775(n+1)` -/
def P3184045380409014257.Spec : Prop :=
  ∀ n, P3184045380409014257.a n = A135776 (n + 1)

end A135776

/-!
# A135778: Numbers having number of divisors equal to number of digits in base 8.

The programs for A135778, there is no canonical definition to state claims against.
-/

/-! ## A135778.P14428294560510542282

`eq[A048273(A048766(n)), A211110(n)]`
-/

namespace A135778.P14428294560510542282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A048766 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135778.P14428294560510542282

/-! ## A135778.P4442923993325950436

`eq[A004218(A062383(n)), A326842(n)]`
-/

namespace A135778.P4442923993325950436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A062383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135778.P4442923993325950436

/-! ## A135778.P8122055308342959989

`eq[A084556(A048766(n)), A326842(n)]`
-/

namespace A135778.P8122055308342959989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A048766 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135778.P8122055308342959989

/-! ## A135778.P2553818035408007423

`A051119(A135779(n+1)*A135779(n+5))`
-/

namespace A135778.P2553818035408007423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A135779 (n + 1) * A135779 (n + 5)).toNat

end

end A135778.P2553818035408007423

/-!
# A135779: Numbers having number of divisors equal to number of digits in base 9.

The programs for A135779, there is no canonical definition to state claims against.
-/

/-! ## A135779.P17266623306944846505

`eq[A004216(A045388(n+1)), A326842(n)]`
-/

namespace A135779.P17266623306944846505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A045388 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135779.P17266623306944846505

/-! ## A135779.P4347297442180936428

`eq[A178487(3*n), A326843(n)]`
-/

namespace A135779.P4347297442180936428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135779.P4347297442180936428

/-!
# A135780: Squares such that another square can be obtained by a cyclic permutation of the digits, excluding leading zeros.

The programs for A135780, there is no canonical definition to state claims against.
-/

/-! ## A135780.P15282935308707123407

`A061669(A135770(n+1)²)`
-/

namespace A135780.P15282935308707123407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (A135770 (n + 1) ^ 2).toNat

end

end A135780.P15282935308707123407

/-! ## A135780.P4404044071759368979

`A135770(A135295(n)+1)²`
-/

namespace A135780.P4404044071759368979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135770 (A135295 n + 1).toNat ^ 2

end

end A135780.P4404044071759368979

/-! ## A135780.P9724944120984402686

`A018851(A135770(n+1)²)²`
-/

namespace A135780.P9724944120984402686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A135770 (n + 1) ^ 2).toNat ^ 2

end

end A135780.P9724944120984402686

/-! ## A135780.P6097448371922408225

`(A135770(n+1)%A230400(n+1))²`
-/

namespace A135780.P6097448371922408225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135770 (n + 1)) (A230400 (n + 1)) ^ 2

end

end A135780.P6097448371922408225

/-! ## A135780.P8292751712318505607

`A135770(n+1)²%A325886(n+1)`
-/

namespace A135780.P8292751712318505607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135770 (n + 1) ^ 2) (A325886 (n + 1))

end

end A135780.P8292751712318505607

/-!
# A135783: Numbers of the form 3x y^2+x^3 (where x,y are positive integers).

The programs for A135783, there is no canonical definition to state claims against.
-/

/-! ## A135783.P10932383662515602766

`∩[2*n, A307585(n+1)]/2`
-/

namespace A135783.P10932383662515602766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A135783.P10932383662515602766

/-! ## A135783.P5935645309761098708

`∩[A007412(n+1), A222304(n+1)]`
-/

namespace A135783.P5935645309761098708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135783.P5935645309761098708

/-! ## A135783.P6418703996832727160

`record[A025480(A307585(n+3))]`
-/

namespace A135783.P6418703996832727160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A307585 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135783.P6418703996832727160

/-! ## A135783.P6099301040907921794

`A025480(∩[2*n, A307585(n+1)])`
-/

namespace A135783.P6099301040907921794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A135783.P6099301040907921794

/-! ## A135783.P4456522861385981799

`A065033(∩[2*n, A307585(n+1)])`
-/

namespace A135783.P4456522861385981799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A135783.P4456522861385981799

/-!
# A135784: a(n) = A000404(n)^2.

The programs for A135784, the canonical program `A135784.P13080440240153393537` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135784 has offset 1).

The definition of A135784 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135784.P13080440240153393537

`A000404(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135784

/-- `A000404(n+1)²` -/
def P13080440240153393537.Spec : Prop :=
  ∀ n, P13080440240153393537.a n = A135784 (n + 1)

theorem P13080440240153393537.correct : P13080440240153393537.Spec := by
  intro n
  simp only [A135784, Nat.add_sub_cancel]

end A135784

/-! ## A135784.P11332749933207225200

`sqrt(A135786(n+1))`
-/

namespace A135784.P11332749933207225200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135786 (n + 1) : ℝ)

end

end A135784.P11332749933207225200

namespace A135784

/-- `sqrt(A135786(n+1))` -/
def P11332749933207225200.Spec : Prop :=
  ∀ n, P11332749933207225200.a n = (A135784 (n + 1) : ℝ)

end A135784

/-! ## A135784.P13704436085885580284

`(1-A166265(n+1))²`
-/

namespace A135784.P13704436085885580284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A166265 (n + 1)) ^ 2

end

end A135784.P13704436085885580284

namespace A135784

/-- `(1-A166265(n+1))²` -/
def P13704436085885580284.Spec : Prop :=
  ∀ n, P13704436085885580284.a n = A135784 (n + 1)

theorem P13704436085885580284.correct : P13704436085885580284.Spec := by
  intro n
  simp only [A135784, Nat.add_sub_cancel, A135784.P13704436085885580284.a, A135784.P13080440240153393537.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A166265, A166265.P12558758465814392092.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135784

/-! ## A135784.P6417187175118285922

`(A339273(n+1)/4)²`
-/

namespace A135784.P6417187175118285922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A339273 (n + 1) : ℚ) / 4) ^ 2

end

end A135784.P6417187175118285922

namespace A135784

/-- `(A339273(n+1)/4)²` -/
def P6417187175118285922.Spec : Prop :=
  ∀ n, P6417187175118285922.a n = (A135784 (n + 1) : ℚ)

theorem P6417187175118285922.correct : P6417187175118285922.Spec := by
  intro n
  simp only [A135784, Nat.add_sub_cancel, A135784.P6417187175118285922.a, A135784.P13080440240153393537.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A339273, A339273.P10031977836032368190.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135784

/-! ## A135784.P1937567052047105315

`A135788(n+1)^(1/3)`
-/

namespace A135784.P1937567052047105315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A135784.P1937567052047105315

namespace A135784

/-- `A135788(n+1)^(1/3)` -/
def P1937567052047105315.Spec : Prop :=
  ∀ n, P1937567052047105315.a n = (A135784 (n + 1) : ℝ)

end A135784

/-! ## A135784.P17492487027362729334

`A000404(A000027(n+1))^2`
-/

namespace A135784.P17492487027362729334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A000027 (n + 1)).toNat ^ 2

end

end A135784.P17492487027362729334

namespace A135784

/-- `A000404(A000027(n+1))^2` -/
def P17492487027362729334.Spec : Prop :=
  ∀ n, P17492487027362729334.a n = A135784 (n + 1)

end A135784

/-! ## A135784.P13560882984009558070

`A135788(n+1)/A135786(n+1)`
-/

namespace A135784.P13560882984009558070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ)

end

end A135784.P13560882984009558070

namespace A135784

/-- `A135788(n+1)/A135786(n+1)` -/
def P13560882984009558070.Spec : Prop :=
  ∀ n, P13560882984009558070.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P12087503715093088120

`(A135787(n+1)/A135786(n+1))²`
-/

namespace A135784.P12087503715093088120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ)) ^ 2

end

end A135784.P12087503715093088120

namespace A135784

/-- `(A135787(n+1)/A135786(n+1))²` -/
def P12087503715093088120.Spec : Prop :=
  ∀ n, P12087503715093088120.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P11495618141468584386

`(A135788(n+1)/A135787(n+1))²`
-/

namespace A135784.P11495618141468584386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A135788 (n + 1) : ℚ) / (A135787 (n + 1) : ℚ)) ^ 2

end

end A135784.P11495618141468584386

namespace A135784

/-- `(A135788(n+1)/A135787(n+1))²` -/
def P11495618141468584386.Spec : Prop :=
  ∀ n, P11495618141468584386.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P460449443229511713

`∪[A000415(n+1), A004431(n+1)]²`
-/

namespace A135784.P460449443229511713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A135784.P460449443229511713

namespace A135784

/-- `∪[A000415(n+1), A004431(n+1)]²` -/
def P460449443229511713.Spec : Prop :=
  ∀ n, (P460449443229511713.a n : ℤ) = A135784 (n + 1)

end A135784

/-! ## A135784.P15313608847668490723

`A000404(n+1)^A020639(3*(n+1)+3+n)`
-/

namespace A135784.P15313608847668490723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000404 (n + 1) : ℚ) ^ (A020639 (3 * (n + 1) + 3 + n) : ℤ)

end

end A135784.P15313608847668490723

namespace A135784

/-- `A000404(n+1)^A020639(3*(n+1)+3+n)` -/
def P15313608847668490723.Spec : Prop :=
  ∀ n, P15313608847668490723.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P1549110694304438686

`A135786(n+1)/(A000404(n+1)*A000404(n+1))`
-/

namespace A135784.P1549110694304438686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) : ℚ) / (A000404 (n + 1) * A000404 (n + 1) : ℚ)

end

end A135784.P1549110694304438686

namespace A135784

/-- `A135786(n+1)/(A000404(n+1)*A000404(n+1))` -/
def P1549110694304438686.Spec : Prop :=
  ∀ n, P1549110694304438686.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P12161388481556927064

`A000404(n+1)/A135787(n+1)*A135788(n+1)`
-/

namespace A135784.P12161388481556927064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000404 (n + 1) : ℚ) / (A135787 (n + 1) : ℚ) * (A135788 (n + 1) : ℚ)

end

end A135784.P12161388481556927064

namespace A135784

/-- `A000404(n+1)/A135787(n+1)*A135788(n+1)` -/
def P12161388481556927064.Spec : Prop :=
  ∀ n, P12161388481556927064.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P15547978245368121701

`A000007(n+1)+A000404(n+1)*A000404(n+1)`
-/

namespace A135784.P15547978245368121701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A000404 (n + 1) * A000404 (n + 1)

end

end A135784.P15547978245368121701

namespace A135784

/-- `A000007(n+1)+A000404(n+1)*A000404(n+1)` -/
def P15547978245368121701.Spec : Prop :=
  ∀ n, P15547978245368121701.a n = A135784 (n + 1)

theorem P15547978245368121701.correct : P15547978245368121701.Spec := by
  intro n
  simp only [A135784, Nat.add_sub_cancel, A135784.P15547978245368121701.a, A135784.P13080440240153393537.a, A000007, A000007.P6599383543502402472.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135784

/-! ## A135784.P6516531784613933075

`lt[0, A025426(n)]²`
-/

namespace A135784.P6516531784613933075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A135784.P6516531784613933075

namespace A135784

/-- `lt[0, A025426(n)]²` -/
def P6516531784613933075.Spec : Prop :=
  ∀ n, (P6516531784613933075.a n : ℤ) = A135784 (n + 1)

end A135784

/-! ## A135784.P16918023401874722372

`A000404(n+1)^ceil(atan(A000040(3*(n+1))))`
-/

namespace A135784.P16918023401874722372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000404 (n + 1) : ℚ) ^ (⌈Real.arctan (A000040 (3 * (n + 1)) : ℝ)⌉ : ℤ)

end

end A135784.P16918023401874722372

namespace A135784

/-- `A000404(n+1)^ceil(atan(A000040(3*(n+1))))` -/
def P16918023401874722372.Spec : Prop :=
  ∀ n, P16918023401874722372.a n = (A135784 (n + 1) : ℚ)

end A135784

/-! ## A135784.P18195577897586316869

`(eq[1, A266314(n)]+1)²`
-/

namespace A135784.P18195577897586316869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A135784.P18195577897586316869

namespace A135784

/-- `(eq[1, A266314(n)]+1)²` -/
def P18195577897586316869.Spec : Prop :=
  ∀ n, (P18195577897586316869.a n : ℤ) = A135784 (n + 1)

end A135784

/-! ## A135784.P14629138979697112037

`A000404(n+1)*A020725(A000404(n+1)-1)`
-/

namespace A135784.P14629138979697112037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) * A020725 (A000404 (n + 1) - 1).toNat

end

end A135784.P14629138979697112037

namespace A135784

/-- `A000404(n+1)*A020725(A000404(n+1)-1)` -/
def P14629138979697112037.Spec : Prop :=
  ∀ n, P14629138979697112037.a n = A135784 (n + 1)

end A135784

/-! ## A135784.P8018860442862975535

`lt[0, A037214(n)]²`
-/

namespace A135784.P8018860442862975535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A135784.P8018860442862975535

namespace A135784

/-- `lt[0, A037214(n)]²` -/
def P8018860442862975535.Spec : Prop :=
  ∀ n, (P8018860442862975535.a n : ℤ) = A135784 (n + 1)

end A135784

/-! ## A135784.P12132151958279616768

`lt[0, A063725(n)]²`
-/

namespace A135784.P12132151958279616768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A135784.P12132151958279616768

namespace A135784

/-- `lt[0, A063725(n)]²` -/
def P12132151958279616768.Spec : Prop :=
  ∀ n, (P12132151958279616768.a n : ℤ) = A135784 (n + 1)

end A135784

/-!
# A135785: Union of A000040, A001248 and A037074.

The programs for A135785, the canonical program `A135785.P11510960012154170062` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135785 has offset 1).

The definition of A135785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135785.P11510960012154170062

`∪[A000430(n+1), A037074(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A135785

/-- `∪[A000430(n+1), A037074(n+1)]` -/
def P11510960012154170062.Spec : Prop :=
  ∀ n, (P11510960012154170062.a n : ℤ) = A135785 (n + 1)

theorem P11510960012154170062.correct : P11510960012154170062.Spec := by
  intro n
  simp only [A135785, Nat.add_sub_cancel]

end A135785

/-! ## A135785.P4522060974100413173

`lt[2, (A029579(n)/A143862(n))²]`
-/

namespace A135785.P4522060974100413173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A029579 n : ℚ) / (A143862 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A135785.P4522060974100413173

namespace A135785

/-- `lt[2, (A029579(n)/A143862(n))²]` -/
def P4522060974100413173.Spec : Prop :=
  ∀ n, (P4522060974100413173.a n : ℤ) = A135785 (n + 1)

end A135785

/-! ## A135785.P3692824927083645599

`lt[A004275(A143862(n)), A029579(n)]`
-/

namespace A135785.P3692824927083645599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A143862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135785.P3692824927083645599

namespace A135785

/-- `lt[A004275(A143862(n)), A029579(n)]` -/
def P3692824927083645599.Spec : Prop :=
  ∀ n, (P3692824927083645599.a n : ℤ) = A135785 (n + 1)

end A135785

/-! ## A135785.P13421379250999208583

`record[A274457(A135276(n+3))]`
-/

namespace A135785.P13421379250999208583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274457 (A135276 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135785.P13421379250999208583

namespace A135785

/-- `record[A274457(A135276(n+3))]` -/
def P13421379250999208583.Spec : Prop :=
  ∀ n, P13421379250999208583.a n = A135785 (n + 1)

end A135785

/-! ## A135785.P5703222045174188168

`lt[A078898(n²), A278517(n)]`
-/

namespace A135785.P5703222045174188168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135785.P5703222045174188168

namespace A135785

/-- `lt[A078898(n²), A278517(n)]` -/
def P5703222045174188168.Spec : Prop :=
  ∀ n, (P5703222045174188168.a n : ℤ) = A135785 (n + 1)

end A135785

/-!
# A135786: a(n) = A000404(n)^4.

The programs for A135786, the canonical program `A135786.P18159718606420573415` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135786 has offset 1).

The definition of A135786 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135786.P18159718606420573415

`A000404(n+1)^4`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135786

/-- `A000404(n+1)^4` -/
def P18159718606420573415.Spec : Prop :=
  ∀ n, P18159718606420573415.a n = A135786 (n + 1)

theorem P18159718606420573415.correct : P18159718606420573415.Spec := by
  intro n
  simp only [A135786, Nat.add_sub_cancel]

end A135786

/-! ## A135786.P2006650546061304324

`A135784(n+1)²`
-/

namespace A135786.P2006650546061304324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135784 (n + 1) ^ 2

end

end A135786.P2006650546061304324

namespace A135786

/-- `A135784(n+1)²` -/
def P2006650546061304324.Spec : Prop :=
  ∀ n, P2006650546061304324.a n = A135786 (n + 1)

theorem P2006650546061304324.correct : P2006650546061304324.Spec := by
  intro n
  simp only [A135786, Nat.add_sub_cancel, A135786.P2006650546061304324.a, A135786.P18159718606420573415.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135786

/-! ## A135786.P9700659797838087881

`A135788(n+1)^(2/3)`
-/

namespace A135786.P9700659797838087881
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A135786.P9700659797838087881

namespace A135786

/-- `A135788(n+1)^(2/3)` -/
def P9700659797838087881.Spec : Prop :=
  ∀ n, P9700659797838087881.a n = (A135786 (n + 1) : ℝ)

end A135786

/-! ## A135786.P7548295971960069564

`(1-A166265(n+1))²²`
-/

namespace A135786.P7548295971960069564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A166265 (n + 1)) ^ 2) ^ 2

end

end A135786.P7548295971960069564

namespace A135786

/-- `(1-A166265(n+1))²²` -/
def P7548295971960069564.Spec : Prop :=
  ∀ n, P7548295971960069564.a n = A135786 (n + 1)

theorem P7548295971960069564.correct : P7548295971960069564.Spec := by
  intro n
  simp only [A135786, Nat.add_sub_cancel, A135786.P7548295971960069564.a, A135786.P18159718606420573415.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A166265, A166265.P12558758465814392092.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135786

/-! ## A135786.P7689832725828498238

`A135787(n+1)/A000404(n+1)`
-/

namespace A135786.P7689832725828498238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) : ℚ) / (A000404 (n + 1) : ℚ)

end

end A135786.P7689832725828498238

namespace A135786

/-- `A135787(n+1)/A000404(n+1)` -/
def P7689832725828498238.Spec : Prop :=
  ∀ n, P7689832725828498238.a n = (A135786 (n + 1) : ℚ)

end A135786

/-! ## A135786.P11602576835029284155

`A135788(n+1)/A135784(n+1)`
-/

namespace A135786.P11602576835029284155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℚ) / (A135784 (n + 1) : ℚ)

end

end A135786.P11602576835029284155

namespace A135786

/-- `A135788(n+1)/A135784(n+1)` -/
def P11602576835029284155.Spec : Prop :=
  ∀ n, P11602576835029284155.a n = (A135786 (n + 1) : ℚ)

end A135786

/-! ## A135786.P9811992323914257834

`A135788(n+1)/A000404(n+1)²`
-/

namespace A135786.P9811992323914257834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℚ) / (A000404 (n + 1) ^ 2 : ℚ)

end

end A135786.P9811992323914257834

namespace A135786

/-- `A135788(n+1)/A000404(n+1)²` -/
def P9811992323914257834.Spec : Prop :=
  ∀ n, P9811992323914257834.a n = (A135786 (n + 1) : ℚ)

end A135786

/-! ## A135786.P6407238372068508462

`A135787(n+1)²/A135788(n+1)`
-/

namespace A135786.P6407238372068508462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) ^ 2 : ℚ) / (A135788 (n + 1) : ℚ)

end

end A135786.P6407238372068508462

namespace A135786

/-- `A135787(n+1)²/A135788(n+1)` -/
def P6407238372068508462.Spec : Prop :=
  ∀ n, P6407238372068508462.a n = (A135786 (n + 1) : ℚ)

end A135786

/-! ## A135786.P17599058523479067049

`A135787(n+1)/sqrt(A135784(n+1))`
-/

namespace A135786.P17599058523479067049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) : ℝ) / Real.sqrt (A135784 (n + 1) : ℝ)

end

end A135786.P17599058523479067049

namespace A135786

/-- `A135787(n+1)/sqrt(A135784(n+1))` -/
def P17599058523479067049.Spec : Prop :=
  ∀ n, P17599058523479067049.a n = (A135786 (n + 1) : ℝ)

end A135786

/-! ## A135786.P11094554888113198197

`∪[A000415(n+1), A004431(n+1)]²²`
-/

namespace A135786.P11094554888113198197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2) ^ 2

end

end A135786.P11094554888113198197

namespace A135786

/-- `∪[A000415(n+1), A004431(n+1)]²²` -/
def P11094554888113198197.Spec : Prop :=
  ∀ n, (P11094554888113198197.a n : ℤ) = A135786 (n + 1)

end A135786

/-! ## A135786.P463593989596365869

`A000404(n+1)*A135784(n+1)*A000404(n+1)`
-/

namespace A135786.P463593989596365869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) * A135784 (n + 1) * A000404 (n + 1)

end

end A135786.P463593989596365869

namespace A135786

/-- `A000404(n+1)*A135784(n+1)*A000404(n+1)` -/
def P463593989596365869.Spec : Prop :=
  ∀ n, P463593989596365869.a n = A135786 (n + 1)

theorem P463593989596365869.correct : P463593989596365869.Spec := by
  intro n
  simp only [A135786, Nat.add_sub_cancel, A135786.P463593989596365869.a, A135786.P18159718606420573415.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135786

/-! ## A135786.P11339279530662661975

`lt[0, A025426(n)]²²`
-/

namespace A135786.P11339279530662661975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A135786.P11339279530662661975

namespace A135786

/-- `lt[0, A025426(n)]²²` -/
def P11339279530662661975.Spec : Prop :=
  ∀ n, (P11339279530662661975.a n : ℤ) = A135786 (n + 1)

end A135786

/-! ## A135786.P4546449238383746703

`A000404(A008619(2*n))²²`
-/

namespace A135786.P4546449238383746703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000404 (A008619 (2 * n)).toNat ^ 2) ^ 2

end

end A135786.P4546449238383746703

namespace A135786

/-- `A000404(A008619(2*n))²²` -/
def P4546449238383746703.Spec : Prop :=
  ∀ n, P4546449238383746703.a n = A135786 (n + 1)

end A135786

/-! ## A135786.P17002473233111231993

`A000404(A028242(2*n))²²`
-/

namespace A135786.P17002473233111231993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000404 (A028242 (2 * n)).toNat ^ 2) ^ 2

end

end A135786.P17002473233111231993

namespace A135786

/-- `A000404(A028242(2*n))²²` -/
def P17002473233111231993.Spec : Prop :=
  ∀ n, P17002473233111231993.a n = A135786 (n + 1)

end A135786

/-! ## A135786.P3028342168804937916

`lt[0, A037214(n)]²²`
-/

namespace A135786.P3028342168804937916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A135786.P3028342168804937916

namespace A135786

/-- `lt[0, A037214(n)]²²` -/
def P3028342168804937916.Spec : Prop :=
  ∀ n, (P3028342168804937916.a n : ℤ) = A135786 (n + 1)

end A135786

/-! ## A135786.P17521619410334038054

`lt[0, A063725(n)]²²`
-/

namespace A135786.P17521619410334038054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A135786.P17521619410334038054

namespace A135786

/-- `lt[0, A063725(n)]²²` -/
def P17521619410334038054.Spec : Prop :=
  ∀ n, (P17521619410334038054.a n : ℤ) = A135786 (n + 1)

end A135786

/-! ## A135786.P280271528992768061

`lt[0, A347801(n)]²²`
-/

namespace A135786.P280271528992768061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2) ^ 2

end

end A135786.P280271528992768061

namespace A135786

/-- `lt[0, A347801(n)]²²` -/
def P280271528992768061.Spec : Prop :=
  ∀ n, (P280271528992768061.a n : ℤ) = A135786 (n + 1)

end A135786

/-! ## A135786.P6072257798035047151

`lt[A000122(n), A000925(n)]²²`
-/

namespace A135786.P6072257798035047151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A135786.P6072257798035047151

namespace A135786

/-- `lt[A000122(n), A000925(n)]²²` -/
def P6072257798035047151.Spec : Prop :=
  ∀ n, (P6072257798035047151.a n : ℤ) = A135786 (n + 1)

end A135786

/-! ## A135786.P6543835445089333418

`A000290(A000404(n+1))*A135784(n+1)`
-/

namespace A135786.P6543835445089333418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000404 (n + 1)).toNat * A135784 (n + 1)

end

end A135786.P6543835445089333418

namespace A135786

/-- `A000290(A000404(n+1))*A135784(n+1)` -/
def P6543835445089333418.Spec : Prop :=
  ∀ n, P6543835445089333418.a n = A135786 (n + 1)

end A135786

/-!
# A135787: a(n) = A000404(n)^5.

The programs for A135787, the canonical program `A135787.P5356217202802632134` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135787 has offset 1).

The definition of A135787 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135787.P5356217202802632134

`A000404(n+1)^5`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135787

/-- `A000404(n+1)^5` -/
def P5356217202802632134.Spec : Prop :=
  ∀ n, P5356217202802632134.a n = A135787 (n + 1)

theorem P5356217202802632134.correct : P5356217202802632134.Spec := by
  intro n
  simp only [A135787, Nat.add_sub_cancel]

end A135787

/-! ## A135787.P10253144456098506325

`sqrt(A135784(n+1)^5)`
-/

namespace A135787.P10253144456098506325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) ^ 5 : ℝ)

end

end A135787.P10253144456098506325

namespace A135787

/-- `sqrt(A135784(n+1)^5)` -/
def P10253144456098506325.Spec : Prop :=
  ∀ n, P10253144456098506325.a n = (A135787 (n + 1) : ℝ)

end A135787

/-! ## A135787.P2139923656640946873

`A000404(n+1)*A135786(n+1)`
-/

namespace A135787.P2139923656640946873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) * A135786 (n + 1)

end

end A135787.P2139923656640946873

namespace A135787

/-- `A000404(n+1)*A135786(n+1)` -/
def P2139923656640946873.Spec : Prop :=
  ∀ n, P2139923656640946873.a n = A135787 (n + 1)

theorem P2139923656640946873.correct : P2139923656640946873.Spec := by
  intro n
  simp only [A135787, Nat.add_sub_cancel, A135787.P2139923656640946873.a, A135787.P5356217202802632134.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135786, A135786.P18159718606420573415.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135787

/-! ## A135787.P16690357931379213736

`A135788(n+1)/A000404(n+1)`
-/

namespace A135787.P16690357931379213736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℚ) / (A000404 (n + 1) : ℚ)

end

end A135787.P16690357931379213736

namespace A135787

/-- `A135788(n+1)/A000404(n+1)` -/
def P16690357931379213736.Spec : Prop :=
  ∀ n, P16690357931379213736.a n = (A135787 (n + 1) : ℚ)

end A135787

/-! ## A135787.P10992831681612474050

`A135784(n+1)²*A000404(n+1)`
-/

namespace A135787.P10992831681612474050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135784 (n + 1) ^ 2 * A000404 (n + 1)

end

end A135787.P10992831681612474050

namespace A135787

/-- `A135784(n+1)²*A000404(n+1)` -/
def P10992831681612474050.Spec : Prop :=
  ∀ n, P10992831681612474050.a n = A135787 (n + 1)

theorem P10992831681612474050.correct : P10992831681612474050.Spec := by
  intro n
  simp only [A135787, Nat.add_sub_cancel, A135787.P10992831681612474050.a, A135787.P5356217202802632134.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135787

/-! ## A135787.P15261248997896461510

`sqrt(A135784(n+1))*A135786(n+1)`
-/

namespace A135787.P15261248997896461510
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) : ℝ) * (A135786 (n + 1) : ℝ)

end

end A135787.P15261248997896461510

namespace A135787

/-- `sqrt(A135784(n+1))*A135786(n+1)` -/
def P15261248997896461510.Spec : Prop :=
  ∀ n, P15261248997896461510.a n = (A135787 (n + 1) : ℝ)

end A135787

/-! ## A135787.P3133661954046615229

`sqrt(A135788(n+1))*A135784(n+1)`
-/

namespace A135787.P3133661954046615229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135788 (n + 1) : ℝ) * (A135784 (n + 1) : ℝ)

end

end A135787.P3133661954046615229

namespace A135787

/-- `sqrt(A135788(n+1))*A135784(n+1)` -/
def P3133661954046615229.Spec : Prop :=
  ∀ n, P3133661954046615229.a n = (A135787 (n + 1) : ℝ)

end A135787

/-! ## A135787.P9997457492928648814

`sqrt(A135786(n+1)*A135788(n+1))`
-/

namespace A135787.P9997457492928648814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135786 (n + 1) * A135788 (n + 1) : ℝ)

end

end A135787.P9997457492928648814

namespace A135787

/-- `sqrt(A135786(n+1)*A135788(n+1))` -/
def P9997457492928648814.Spec : Prop :=
  ∀ n, P9997457492928648814.a n = (A135787 (n + 1) : ℝ)

end A135787

/-! ## A135787.P14483535678391443951

`A000404(A000027(n+1))²²*A000404(n+1)`
-/

namespace A135787.P14483535678391443951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000404 (A000027 (n + 1)).toNat ^ 2) ^ 2 * A000404 (n + 1)

end

end A135787.P14483535678391443951

namespace A135787

/-- `A000404(A000027(n+1))²²*A000404(n+1)` -/
def P14483535678391443951.Spec : Prop :=
  ∀ n, P14483535678391443951.a n = A135787 (n + 1)

end A135787

/-! ## A135787.P5457685053081932237

`A000578(A135784(n+1)/A000404(n+1))*A135784(n+1)`
-/

namespace A135787.P5457685053081932237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A135784 (n + 1) : ℚ) / (A000404 (n + 1) : ℚ))).toNat * A135784 (n + 1)

end

end A135787.P5457685053081932237

namespace A135787

/-- `A000578(A135784(n+1)/A000404(n+1))*A135784(n+1)` -/
def P5457685053081932237.Spec : Prop :=
  ∀ n, P5457685053081932237.a n = A135787 (n + 1)

end A135787

/-! ## A135787.P14401363082740007525

`A000584(A000404(n+1))`
-/

namespace A135787.P14401363082740007525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A000404 (n + 1)).toNat

end

end A135787.P14401363082740007525

namespace A135787

/-- `A000584(A000404(n+1))` -/
def P14401363082740007525.Spec : Prop :=
  ∀ n, P14401363082740007525.a n = A135787 (n + 1)

end A135787

/-! ## A135787.P156773194256513526

`(A050803(n+1)^(1/3))^5`
-/

namespace A135787.P156773194256513526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A050803 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)) ^ 5

end

end A135787.P156773194256513526

namespace A135787

/-- `(A050803(n+1)^(1/3))^5` -/
def P156773194256513526.Spec : Prop :=
  ∀ n, P156773194256513526.a n = (A135787 (n + 1) : ℝ)

end A135787

/-! ## A135787.P15261200560894834852

`A050803(n+1)*A135784(n+1)`
-/

namespace A135787.P15261200560894834852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050803 (n + 1) * A135784 (n + 1)

end

end A135787.P15261200560894834852

namespace A135787

/-- `A050803(n+1)*A135784(n+1)` -/
def P15261200560894834852.Spec : Prop :=
  ∀ n, P15261200560894834852.a n = A135787 (n + 1)

theorem P15261200560894834852.correct : P15261200560894834852.Spec := by
  intro n
  simp only [A135787, Nat.add_sub_cancel, A135787.P15261200560894834852.a, A135787.P5356217202802632134.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A050803, A050803.P3163027175791198346.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135787

/-! ## A135787.P7331166470300799230

`A000404(n+1)²*A050803(n+1)`
-/

namespace A135787.P7331166470300799230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 2 * A050803 (n + 1)

end

end A135787.P7331166470300799230

namespace A135787

/-- `A000404(n+1)²*A050803(n+1)` -/
def P7331166470300799230.Spec : Prop :=
  ∀ n, P7331166470300799230.a n = A135787 (n + 1)

theorem P7331166470300799230.correct : P7331166470300799230.Spec := by
  intro n
  simp only [A135787, Nat.add_sub_cancel, A135787.P7331166470300799230.a, A135787.P5356217202802632134.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A050803, A050803.P3163027175791198346.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135787

/-! ## A135787.P11404637102701486146

`A135786(n+1)²/A050803(n+1)`
-/

namespace A135787.P11404637102701486146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) ^ 2 : ℚ) / (A050803 (n + 1) : ℚ)

end

end A135787.P11404637102701486146

namespace A135787

/-- `A135786(n+1)²/A050803(n+1)` -/
def P11404637102701486146.Spec : Prop :=
  ∀ n, P11404637102701486146.a n = (A135787 (n + 1) : ℚ)

end A135787

/-! ## A135787.P597505215005729369

`A050803(n+1)/A135786(n+1)*A135788(n+1)`
-/

namespace A135787.P597505215005729369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050803 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ) * (A135788 (n + 1) : ℚ)

end

end A135787.P597505215005729369

namespace A135787

/-- `A050803(n+1)/A135786(n+1)*A135788(n+1)` -/
def P597505215005729369.Spec : Prop :=
  ∀ n, P597505215005729369.a n = (A135787 (n + 1) : ℚ)

end A135787

/-! ## A135787.P17105434401638159141

`A000290(A135786(n+1)/A050803(n+1))*A050803(n+1)`
-/

namespace A135787.P17105434401638159141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A135786 (n + 1) : ℚ) / (A050803 (n + 1) : ℚ))).toNat * A050803 (n + 1)

end

end A135787.P17105434401638159141

namespace A135787

/-- `A000290(A135786(n+1)/A050803(n+1))*A050803(n+1)` -/
def P17105434401638159141.Spec : Prop :=
  ∀ n, P17105434401638159141.a n = A135787 (n + 1)

end A135787

/-! ## A135787.P2314936506468500202

`A336725(∑[n+2])^5`
-/

namespace A135787.P2314936506468500202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A135787.P2314936506468500202

namespace A135787

/-- `A336725(∑[n+2])^5` -/
def P2314936506468500202.Spec : Prop :=
  ∀ n, P2314936506468500202.a n = A135787 (n + 1)

end A135787

/-!
# A135788: a(n) = A000404(n)^6.

The programs for A135788, the canonical program `A135788.P18286084477707124522` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135788 has offset 1).

The definition of A135788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135788.P18286084477707124522

`A000404(n+1)^6`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135788

/-- `A000404(n+1)^6` -/
def P18286084477707124522.Spec : Prop :=
  ∀ n, P18286084477707124522.a n = A135788 (n + 1)

theorem P18286084477707124522.correct : P18286084477707124522.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel]

end A135788

/-! ## A135788.P6065128287484134109

`A135784(n+1)^3`
-/

namespace A135788.P6065128287484134109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135784 (n + 1) ^ 3

end

end A135788.P6065128287484134109

namespace A135788

/-- `A135784(n+1)^3` -/
def P6065128287484134109.Spec : Prop :=
  ∀ n, P6065128287484134109.a n = A135788 (n + 1)

theorem P6065128287484134109.correct : P6065128287484134109.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel, A135788.P6065128287484134109.a, A135788.P18286084477707124522.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135788

/-! ## A135788.P5759955989644138411

`sqrt(A135786(n+1)^3)`
-/

namespace A135788.P5759955989644138411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135786 (n + 1) ^ 3 : ℝ)

end

end A135788.P5759955989644138411

namespace A135788

/-- `sqrt(A135786(n+1)^3)` -/
def P5759955989644138411.Spec : Prop :=
  ∀ n, P5759955989644138411.a n = (A135788 (n + 1) : ℝ)

end A135788

/-! ## A135788.P6716821446411102156

`A000404(n+1)*A135787(n+1)`
-/

namespace A135788.P6716821446411102156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) * A135787 (n + 1)

end

end A135788.P6716821446411102156

namespace A135788

/-- `A000404(n+1)*A135787(n+1)` -/
def P6716821446411102156.Spec : Prop :=
  ∀ n, P6716821446411102156.a n = A135788 (n + 1)

theorem P6716821446411102156.correct : P6716821446411102156.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel, A135788.P6716821446411102156.a, A135788.P18286084477707124522.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135787, A135787.P5356217202802632134.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135788

/-! ## A135788.P8830271112892685985

`A135784(n+1)*A135786(n+1)`
-/

namespace A135788.P8830271112892685985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135784 (n + 1) * A135786 (n + 1)

end

end A135788.P8830271112892685985

namespace A135788

/-- `A135784(n+1)*A135786(n+1)` -/
def P8830271112892685985.Spec : Prop :=
  ∀ n, P8830271112892685985.a n = A135788 (n + 1)

theorem P8830271112892685985.correct : P8830271112892685985.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel, A135788.P8830271112892685985.a, A135788.P18286084477707124522.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A135786, A135786.P18159718606420573415.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135788

/-! ## A135788.P590595810125141590

`(A000404(n+1)*A135784(n+1))²`
-/

namespace A135788.P590595810125141590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000404 (n + 1) * A135784 (n + 1)) ^ 2

end

end A135788.P590595810125141590

namespace A135788

/-- `(A000404(n+1)*A135784(n+1))²` -/
def P590595810125141590.Spec : Prop :=
  ∀ n, P590595810125141590.a n = A135788 (n + 1)

theorem P590595810125141590.correct : P590595810125141590.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel, A135788.P590595810125141590.a, A135788.P18286084477707124522.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135788

/-! ## A135788.P6003535016950134033

`A000404(n+1)²*A135786(n+1)`
-/

namespace A135788.P6003535016950134033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 2 * A135786 (n + 1)

end

end A135788.P6003535016950134033

namespace A135788

/-- `A000404(n+1)²*A135786(n+1)` -/
def P6003535016950134033.Spec : Prop :=
  ∀ n, P6003535016950134033.a n = A135788 (n + 1)

theorem P6003535016950134033.correct : P6003535016950134033.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel, A135788.P6003535016950134033.a, A135788.P18286084477707124522.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135786, A135786.P18159718606420573415.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135788

/-! ## A135788.P16568675361450475224

`sqrt(A135784(n+1))*A135787(n+1)`
-/

namespace A135788.P16568675361450475224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) : ℝ) * (A135787 (n + 1) : ℝ)

end

end A135788.P16568675361450475224

namespace A135788

/-- `sqrt(A135784(n+1))*A135787(n+1)` -/
def P16568675361450475224.Spec : Prop :=
  ∀ n, P16568675361450475224.a n = (A135788 (n + 1) : ℝ)

end A135788

/-! ## A135788.P10369125745875206579

`A135787(n+1)²/A135786(n+1)`
-/

namespace A135788.P10369125745875206579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) ^ 2 : ℚ) / (A135786 (n + 1) : ℚ)

end

end A135788.P10369125745875206579

namespace A135788

/-- `A135787(n+1)²/A135786(n+1)` -/
def P10369125745875206579.Spec : Prop :=
  ∀ n, P10369125745875206579.a n = (A135788 (n + 1) : ℚ)

end A135788

/-! ## A135788.P14924231939033825035

`(A000404(A000027(n+1))²*A000404(n+1))²`
-/

namespace A135788.P14924231939033825035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000404 (A000027 (n + 1)).toNat ^ 2 * A000404 (n + 1)) ^ 2

end

end A135788.P14924231939033825035

namespace A135788

/-- `(A000404(A000027(n+1))²*A000404(n+1))²` -/
def P14924231939033825035.Spec : Prop :=
  ∀ n, P14924231939033825035.a n = A135788 (n + 1)

end A135788

/-! ## A135788.P12250767063977152059

`A000290(A135787(n+1)/A135786(n+1))*A135786(n+1)`
-/

namespace A135788.P12250767063977152059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ))).toNat * A135786 (n + 1)

end

end A135788.P12250767063977152059

namespace A135788

/-- `A000290(A135787(n+1)/A135786(n+1))*A135786(n+1)` -/
def P12250767063977152059.Spec : Prop :=
  ∀ n, P12250767063977152059.a n = A135788 (n + 1)

end A135788

/-! ## A135788.P17806838994037107275

`A001014(A000404(n+1))`
-/

namespace A135788.P17806838994037107275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A000404 (n + 1)).toNat

end

end A135788.P17806838994037107275

namespace A135788

/-- `A001014(A000404(n+1))` -/
def P17806838994037107275.Spec : Prop :=
  ∀ n, P17806838994037107275.a n = A135788 (n + 1)

end A135788

/-! ## A135788.P11814733720441140549

`A050803(n+1)²`
-/

namespace A135788.P11814733720441140549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050803 (n + 1) ^ 2

end

end A135788.P11814733720441140549

namespace A135788

/-- `A050803(n+1)²` -/
def P11814733720441140549.Spec : Prop :=
  ∀ n, P11814733720441140549.a n = A135788 (n + 1)

theorem P11814733720441140549.correct : P11814733720441140549.Spec := by
  intro n
  simp only [A135788, Nat.add_sub_cancel, A135788.P11814733720441140549.a, A135788.P18286084477707124522.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A050803, A050803.P3163027175791198346.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135788

/-! ## A135788.P13445118840724323746

`A000578(A000404(n+1))*A050803(n+1)`
-/

namespace A135788.P13445118840724323746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000404 (n + 1)).toNat * A050803 (n + 1)

end

end A135788.P13445118840724323746

namespace A135788

/-- `A000578(A000404(n+1))*A050803(n+1)` -/
def P13445118840724323746.Spec : Prop :=
  ∀ n, P13445118840724323746.a n = A135788 (n + 1)

end A135788

/-! ## A135788.P9219333695752612419

`A050803(n+1)/A135784(n+1)*A135787(n+1)`
-/

namespace A135788.P9219333695752612419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050803 (n + 1) : ℚ) / (A135784 (n + 1) : ℚ) * (A135787 (n + 1) : ℚ)

end

end A135788.P9219333695752612419

namespace A135788

/-- `A050803(n+1)/A135784(n+1)*A135787(n+1)` -/
def P9219333695752612419.Spec : Prop :=
  ∀ n, P9219333695752612419.a n = (A135788 (n + 1) : ℚ)

end A135788

/-! ## A135788.P163246291406222302

`A135786(n+1)/A050803(n+1)*A135787(n+1)`
-/

namespace A135788.P163246291406222302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) : ℚ) / (A050803 (n + 1) : ℚ) * (A135787 (n + 1) : ℚ)

end

end A135788.P163246291406222302

namespace A135788

/-- `A135786(n+1)/A050803(n+1)*A135787(n+1)` -/
def P163246291406222302.Spec : Prop :=
  ∀ n, P163246291406222302.a n = (A135788 (n + 1) : ℚ)

end A135788

/-! ## A135788.P9168405141184256100

`A000290(A135786(n+1)/A050803(n+1))*A135786(n+1)`
-/

namespace A135788.P9168405141184256100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A135786 (n + 1) : ℚ) / (A050803 (n + 1) : ℚ))).toNat * A135786 (n + 1)

end

end A135788.P9168405141184256100

namespace A135788

/-- `A000290(A135786(n+1)/A050803(n+1))*A135786(n+1)` -/
def P9168405141184256100.Spec : Prop :=
  ∀ n, P9168405141184256100.a n = A135788 (n + 1)

end A135788

/-! ## A135788.P3722584354777282639

`A008218(A339273(n+1))²`
-/

namespace A135788.P3722584354777282639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (A339273 (n + 1)).toNat ^ 2

end

end A135788.P3722584354777282639

namespace A135788

/-- `A008218(A339273(n+1))²` -/
def P3722584354777282639.Spec : Prop :=
  ∀ n, P3722584354777282639.a n = A135788 (n + 1)

end A135788

/-! ## A135788.P11135779058839604949

`∩[A266927(n+1), n*n²]²`
-/

namespace A135788.P11135779058839604949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n ^ 2

end

end A135788.P11135779058839604949

namespace A135788

/-- `∩[A266927(n+1), n*n²]²` -/
def P11135779058839604949.Spec : Prop :=
  ∀ n, (P11135779058839604949.a n : ℤ) = A135788 (n + 1)

end A135788

/-!
# A135789: Positive numbers of the form x^4 - 6 * x^2 * y^2 + y^4 (where x,y are integers).

The programs for A135789, there is no canonical definition to state claims against.
-/

/-! ## A135789.P9531415135308276581

`A103253(A055688(n+1))`
-/

namespace A135789.P9531415135308276581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103253 (A055688 (n + 1)).toNat

end

end A135789.P9531415135308276581

/-!
# A135791: Positive numbers of the form x^5-10x^3*y^2+5x*y^4 (where x,y are integers and x>y).

The programs for A135791, there is no canonical definition to state claims against.
-/

/-! ## A135791.P13518046834730696379

`A135793(A295619(n)+A004086(2*n+3))`
-/

namespace A135791.P13518046834730696379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135793 (A295619 n + A004086 (2 * n + 3)).toNat

end

end A135791.P13518046834730696379

/-!
# A135792: Positive numbers of the form x^5-10x^3*y^2+5x*y^4 (where x,y are integers and y>x).

The programs for A135792, there is no canonical definition to state claims against.
-/

/-! ## A135792.P3392967136059908868

`A135793(∑[A125761(n+1)!])`
-/

namespace A135792.P3392967136059908868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A125761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135792.P3392967136059908868

/-! ## A135792.P4647058914276224662

`A135793(∪[A014335(2*(n+2)), A355547(n+1)])`
-/

namespace A135792.P4647058914276224662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135793 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A135792.P4647058914276224662

/-! ## A135792.P9276877977356530325

`A135793(A355547(n+1))`
-/

namespace A135792.P9276877977356530325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135793 (A355547 (n + 1)).toNat

end

end A135792.P9276877977356530325

/-!
# A135793: Numbers of the form x^5-10x^3*y^2+5x*y^4 (where x,y are integers).

The programs for A135793, there is no canonical definition to state claims against.
-/

/-! ## A135793.P10914438323767786139

`∪[A135791(n+1), A135792(n+1)]%A135791(n+1)`
-/

namespace A135793.P10914438323767786139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135792 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A135791 (n + 1))

end

end A135793.P10914438323767786139

/-!
# A135795: Years in which there are five Mondays in the month of February.

The programs for A135795, there is no canonical definition to state claims against.
-/

/-! ## A135795.P3518250960469050205

`A224950(n+7)`
-/

namespace A135795.P3518250960469050205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224950 (n + 7)

end

end A135795.P3518250960469050205

/-! ## A135795.P5324337802104836686

`record[A224950(A007953(A017353(n)))]`
-/

namespace A135795.P5324337802104836686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224950 (A007953 (A017353 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135795.P5324337802104836686

/-!
# A135796: Numbers of the form 4*x*y*(x^2+y^2) (where x,y are positive integers).

The programs for A135796, there is no canonical definition to state claims against.
-/

/-! ## A135796.P1823285185652374806

`A289440(∩[A008590(n+1), A152044(n+1)])`
-/

namespace A135796.P1823285185652374806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A135796.P1823285185652374806

/-! ## A135796.P6662437596471025851

`A289440(∩[A047530(2*n+1), A152044(n+2)])`
-/

namespace A135796.P6662437596471025851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A135796.P6662437596471025851

/-!
# A135799: Second column (k=1) of triangle A134832 (circular succession numbers).

The programs for A135799, the canonical program `A135799.P17184054697667347209` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135799 has offset 0).

The definition of A135799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135799.P17184054697667347209

`(n+1)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135799

/-- `(n+1)*A000757(n)` -/
def P17184054697667347209.Spec : Prop :=
  ∀ n, P17184054697667347209.a n = A135799 n

theorem P17184054697667347209.correct : P17184054697667347209.Spec := by
  intro n
  simp only [A135799]

end A135799

/-! ## A135799.P5889594021106055331

`A134832(∑[n+1]+1)`
-/

namespace A135799.P5889594021106055331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135799.P5889594021106055331

namespace A135799

/-- `A134832(∑[n+1]+1)` -/
def P5889594021106055331.Spec : Prop :=
  ∀ n, P5889594021106055331.a n = A135799 n

end A135799

/-! ## A135799.P14782099809127306729

`(n+1)*A134832(C(n+1, 2))`
-/

namespace A135799.P14782099809127306729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134832 (Nat.choose (n + 1) 2)

end

end A135799.P14782099809127306729

namespace A135799

/-- `(n+1)*A134832(C(n+1, 2))` -/
def P14782099809127306729.Spec : Prop :=
  ∀ n, P14782099809127306729.a n = A135799 n

end A135799

/-! ## A135799.P5734517322035501807

`A000757(n)*A135227(∑[n])`
-/

namespace A135799.P5734517322035501807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A135227 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135799.P5734517322035501807

namespace A135799

/-- `A000757(n)*A135227(∑[n])` -/
def P5734517322035501807.Spec : Prop :=
  ∀ n, P5734517322035501807.a n = A135799 n

end A135799

/-! ## A135799.P18311049439014243191

`(n+1)*A134832(A000217(n))`
-/

namespace A135799.P18311049439014243191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134832 (A000217 n).toNat

end

end A135799.P18311049439014243191

namespace A135799

/-- `(n+1)*A134832(A000217(n))` -/
def P18311049439014243191.Spec : Prop :=
  ∀ n, P18311049439014243191.a n = A135799 n

end A135799

/-! ## A135799.P4893986433042939630

`A000757(n)*A008619(2*n)`
-/

namespace A135799.P4893986433042939630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A008619 (2 * n)

end

end A135799.P4893986433042939630

namespace A135799

/-- `A000757(n)*A008619(2*n)` -/
def P4893986433042939630.Spec : Prop :=
  ∀ n, P4893986433042939630.a n = A135799 n

end A135799

/-! ## A135799.P10520043648516255748

`A000757(n)*A027656(2*n)`
-/

namespace A135799.P10520043648516255748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A027656 (2 * n)

end

end A135799.P10520043648516255748

namespace A135799

/-- `A000757(n)*A027656(2*n)` -/
def P10520043648516255748.Spec : Prop :=
  ∀ n, P10520043648516255748.a n = A135799 n

end A135799

/-! ## A135799.P10795851795321461036

`A000757(n)*A028242(2*n)`
-/

namespace A135799.P10795851795321461036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A028242 (2 * n)

end

end A135799.P10795851795321461036

namespace A135799

/-- `A000757(n)*A028242(2*n)` -/
def P10795851795321461036.Spec : Prop :=
  ∀ n, P10795851795321461036.a n = A135799 n

end A135799

/-! ## A135799.P109274076012467677

`A000757(n)*A080513(2*n)`
-/

namespace A135799.P109274076012467677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A080513 (2 * n)

end

end A135799.P109274076012467677

namespace A135799

/-- `A000757(n)*A080513(2*n)` -/
def P109274076012467677.Spec : Prop :=
  ∀ n, P109274076012467677.a n = A135799 n

end A135799

/-! ## A135799.P11156506893661703671

`A000757(n)*A065033(Δ[n²])`
-/

namespace A135799.P11156506893661703671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A065033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A135799.P11156506893661703671

namespace A135799

/-- `A000757(n)*A065033(Δ[n²])` -/
def P11156506893661703671.Spec : Prop :=
  ∀ n, P11156506893661703671.a n = A135799 n

end A135799

