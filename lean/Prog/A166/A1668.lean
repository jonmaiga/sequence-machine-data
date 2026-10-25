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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
# A166800: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166800, there is no canonical definition to state claims against.
-/

/-! ## A166800.P7660148168530702645

`A166780(n+1)-A166841(n+1)`
-/

namespace A166800.P7660148168530702645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166780 (n + 1) - A166841 (n + 1)

end

end A166800.P7660148168530702645

/-! ## A166800.P16976808388538903932

`A166780(n+1)+A000579(n)-A166829(n+1)`
-/

namespace A166800.P16976808388538903932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166780 (n + 1) + (A000579 n - A166829 (n + 1))

end

end A166800.P16976808388538903932

/-! ## A166800.P6449989912237900276

`A166818(n+1)+A000579(n)`
-/

namespace A166800.P6449989912237900276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166818 (n + 1) + A000579 n

end

end A166800.P6449989912237900276

/-! ## A166800.P16724845358221476596

`A166818(n+1)+A166829(n+1)-A166841(n+1)`
-/

namespace A166800.P16724845358221476596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166818 (n + 1) + (A166829 (n + 1) - A166841 (n + 1))

end

end A166800.P16724845358221476596

/-!
# A166801: Number of nX3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166801, the canonical program `A166801.P8919905892571881149` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166801 has offset 1).

The definition of A166801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166801.P8919905892571881149

`A166819(n+1)+A166776(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166801

/-- `A166819(n+1)+A166776(n+1)` -/
def P8919905892571881149.Spec : Prop :=
  ∀ n, P8919905892571881149.a n = A166801 (n + 1)

theorem P8919905892571881149.correct : P8919905892571881149.Spec := by
  intro n
  simp only [A166801, Nat.add_sub_cancel]

end A166801

/-! ## A166801.P15154317355852176197

`A166796(n+1)+A166819(n+1)+A166814(n+1)`
-/

namespace A166801.P15154317355852176197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166796 (n + 1) + (A166819 (n + 1) + A166814 (n + 1))

end

end A166801.P15154317355852176197

namespace A166801

/-- `A166796(n+1)+A166819(n+1)+A166814(n+1)` -/
def P15154317355852176197.Spec : Prop :=
  ∀ n, P15154317355852176197.a n = A166801 (n + 1)

end A166801

/-! ## A166801.P10358093541829206342

`A166819(n+1)+A166831(n+1)-A166842(n+1)`
-/

namespace A166801.P10358093541829206342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166819 (n + 1) + (A166831 (n + 1) - A166842 (n + 1))

end

end A166801.P10358093541829206342

namespace A166801

/-- `A166819(n+1)+A166831(n+1)-A166842(n+1)` -/
def P10358093541829206342.Spec : Prop :=
  ∀ n, P10358093541829206342.a n = A166801 (n + 1)

end A166801

/-!
# A166802: Number of nX3 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166802, there is no canonical definition to state claims against.
-/

/-! ## A166802.P3902480053462625582

`A166797(n+1)+A166820(n+1)+A166815(n+1)`
-/

namespace A166802.P3902480053462625582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166797 (n + 1) + (A166820 (n + 1) + A166815 (n + 1))

end

end A166802.P3902480053462625582

/-!
# A166804: Number of nX3 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166804, there is no canonical definition to state claims against.
-/

/-! ## A166804.P4319898431436752398

`A166799(n+1)+A166822(n+1)+A166817(n+1)`
-/

namespace A166804.P4319898431436752398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166799 (n + 1) + (A166822 (n + 1) + A166817 (n + 1))

end

end A166804.P4319898431436752398

/-!
# A166805: Number of n X 4 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166805, the canonical program `A166805.P7400736969641790203` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166805 has offset 1).

The definition of A166805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166805.P7400736969641790203

`C(n+5, 4)-2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166805

/-- `C(n+5, 4)-2` -/
def P7400736969641790203.Spec : Prop :=
  ∀ n, P7400736969641790203.a n = A166805 (n + 1)

theorem P7400736969641790203.correct : P7400736969641790203.Spec := by
  intro n
  simp only [A166805, Nat.add_sub_cancel]

end A166805

/-! ## A166805.P9608618631293443407

`1/24*(n+2)*(n+3)*(n+4)*(n+5)-2`
-/

namespace A166805.P9608618631293443407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n + 2 : ℚ) * (n + 3 : ℚ) * (n + 4 : ℚ) * (n + 5 : ℚ) - 2

end

end A166805.P9608618631293443407

namespace A166805

/-- `1/24*(n+2)*(n+3)*(n+4)*(n+5)-2` -/
def P9608618631293443407.Spec : Prop :=
  ∀ n, P9608618631293443407.a n = (A166805 (n + 1) : ℚ)

theorem P9608618631293443407.correct : P9608618631293443407.Spec := by
  intro n
  simp only [A166805, Nat.add_sub_cancel, A166805.P9608618631293443407.a, A166805.P7400736969641790203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166805

/-! ## A166805.P1104047353847691092

`∑[∑[∑[a(n-1)+1]]]` with `a(0)=3, a(1)=4, a(2)=3, a(3)=5`
-/

namespace A166805.P1104047353847691092
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 3, 5] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166805.P1104047353847691092

namespace A166805

/-- `∑[∑[∑[a(n-1)+1]]]` -/
def P1104047353847691092.Spec : Prop :=
  ∀ n, (P1104047353847691092.a n : ℤ) = A166805 (n + 1)

end A166805

/-! ## A166805.P6012424471217659928

`(∑[∑[lcm(n+2, n+3)]]+2*n)/2`
-/

namespace A166805.P6012424471217659928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 * n : ℕ) : ℚ) / 2

end

end A166805.P6012424471217659928

namespace A166805

/-- `(∑[∑[lcm(n+2, n+3)]]+2*n)/2` -/
def P6012424471217659928.Spec : Prop :=
  ∀ n, P6012424471217659928.a n = (A166805 (n + 1) : ℚ)

end A166805

/-! ## A166805.P15115904319935396230

`abs(1-A063258(n))`
-/

namespace A166805.P15115904319935396230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A063258 n|

end

end A166805.P15115904319935396230

namespace A166805

/-- `abs(1-A063258(n))` -/
def P15115904319935396230.Spec : Prop :=
  ∀ n, P15115904319935396230.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P5715781502022947842

`floor(A005718(n)+1/acot(n))`
-/

namespace A166805.P5715781502022947842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005718 n : ℝ) + 1 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A166805.P5715781502022947842

namespace A166805

/-- `floor(A005718(n)+1/acot(n))` -/
def P5715781502022947842.Spec : Prop :=
  ∀ n, P5715781502022947842.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P3177025727191465290

`floor(a(n-1)+A062748(n)+1)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A166805.P3177025727191465290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A062748 n + 1)

end

end A166805.P3177025727191465290

namespace A166805

/-- `floor(a(n-1)+A062748(n)+1)` -/
def P3177025727191465290.Spec : Prop :=
  ∀ n, P3177025727191465290.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P9222793118246753565

`∑[A062748(n)-A057428(n)]`
-/

namespace A166805.P9222793118246753565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166805.P9222793118246753565

namespace A166805

/-- `∑[A062748(n)-A057428(n)]` -/
def P9222793118246753565.Spec : Prop :=
  ∀ n, P9222793118246753565.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P1228427883690013227

`∑[A092286(n)+4-A000007(n)]`
-/

namespace A166805.P1228427883690013227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + 4 - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166805.P1228427883690013227

namespace A166805

/-- `∑[A092286(n)+4-A000007(n)]` -/
def P1228427883690013227.Spec : Prop :=
  ∀ n, P1228427883690013227.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P15939953916134534510

`abs(2-sqrt(A288876(n+1)))`
-/

namespace A166805.P15939953916134534510
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |2 - Real.sqrt (A288876 (n + 1) : ℝ)|

end

end A166805.P15939953916134534510

namespace A166805

/-- `abs(2-sqrt(A288876(n+1)))` -/
def P15939953916134534510.Spec : Prop :=
  ∀ n, P15939953916134534510.a n = (A166805 (n + 1) : ℝ)

end A166805

/-! ## A166805.P16613950434670737156

`abs(1-∑[A000292(n+2)])`
-/

namespace A166805.P16613950434670737156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166805.P16613950434670737156

namespace A166805

/-- `abs(1-∑[A000292(n+2)])` -/
def P16613950434670737156.Spec : Prop :=
  ∀ n, P16613950434670737156.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P13754214287647035148

`Δ[A051745(n+1)-3*n]`
-/

namespace A166805.P13754214287647035148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166805.P13754214287647035148

namespace A166805

/-- `Δ[A051745(n+1)-3*n]` -/
def P13754214287647035148.Spec : Prop :=
  ∀ n, P13754214287647035148.a n = A166805 (n + 1)

theorem P13754214287647035148.correct : P13754214287647035148.Spec := by
  intro n
  simp only [A166805, Nat.add_sub_cancel, A166805.P13754214287647035148.f1, A166805.P13754214287647035148.a, A166805.P7400736969641790203.a, A051745, A051745.P5054150048059455946.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166805

/-! ## A166805.P10746205938057163531

`abs(A005712(n+2)+Δ[A101986(n)])`
-/

namespace A166805.P10746205938057163531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005712 (n + 2) + (f1 (n + 1) - f1 n)|

end

end A166805.P10746205938057163531

namespace A166805

/-- `abs(A005712(n+2)+Δ[A101986(n)])` -/
def P10746205938057163531.Spec : Prop :=
  ∀ n, P10746205938057163531.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P6330511019275685637

`Δ[A027765(n+4)/A020710(n)-2*n]`
-/

namespace A166805.P6330511019275685637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027765 (n + 4) : ℚ) / (A020710 n : ℚ) - (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166805.P6330511019275685637

namespace A166805

/-- `Δ[A027765(n+4)/A020710(n)-2*n]` -/
def P6330511019275685637.Spec : Prop :=
  ∀ n, P6330511019275685637.a n = (A166805 (n + 1) : ℚ)

theorem P6330511019275685637.correct : P6330511019275685637.Spec := by
  intro n
  simp only [A166805, Nat.add_sub_cancel, A166805.P6330511019275685637.f1, A166805.P6330511019275685637.a, A166805.P7400736969641790203.a, A020710, A020710.P12161966585787702209.a, A027765, A027765.P15969066504210946878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166805

/-! ## A166805.P452903121705303130

`Δ[A323228(n+1)-1-2*n]`
-/

namespace A166805.P452903121705303130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323228 (n + 1) - 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166805.P452903121705303130

namespace A166805

/-- `Δ[A323228(n+1)-1-2*n]` -/
def P452903121705303130.Spec : Prop :=
  ∀ n, P452903121705303130.a n = A166805 (n + 1)

theorem P452903121705303130.correct : P452903121705303130.Spec := by
  intro n
  simp only [A166805, Nat.add_sub_cancel, A166805.P452903121705303130.f1, A166805.P452903121705303130.a, A166805.P7400736969641790203.a, A323228, A323228.P5825280664412522790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166805

/-! ## A166805.P8153185494863338939

`∑[A126972(n+3)-1]`
-/

namespace A166805.P8153185494863338939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126972 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166805.P8153185494863338939

namespace A166805

/-- `∑[A126972(n+3)-1]` -/
def P8153185494863338939.Spec : Prop :=
  ∀ n, P8153185494863338939.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P17352707070124679146

`abs(2-Δ[A000389(n+5)])`
-/

namespace A166805.P17352707070124679146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A166805.P17352707070124679146

namespace A166805

/-- `abs(2-Δ[A000389(n+5)])` -/
def P17352707070124679146.Spec : Prop :=
  ∀ n, P17352707070124679146.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P6828852983033298211

`∑[A005232(A103517(n)+1)]`
-/

namespace A166805.P6828852983033298211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A103517 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166805.P6828852983033298211

namespace A166805

/-- `∑[A005232(A103517(n)+1)]` -/
def P6828852983033298211.Spec : Prop :=
  ∀ n, P6828852983033298211.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P1936358939140759370

`record[A213548(n+2)-2]`
-/

namespace A166805.P1936358939140759370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166805.P1936358939140759370

namespace A166805

/-- `record[A213548(n+2)-2]` -/
def P1936358939140759370.Spec : Prop :=
  ∀ n, P1936358939140759370.a n = A166805 (n + 1)

end A166805

/-! ## A166805.P9242653281256847295

`∑[A168577(∑[n+2])]`
-/

namespace A166805.P9242653281256847295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166805.P9242653281256847295

namespace A166805

/-- `∑[A168577(∑[n+2])]` -/
def P9242653281256847295.Spec : Prop :=
  ∀ n, P9242653281256847295.a n = A166805 (n + 1)

end A166805

/-!
# A166808: Number of n X 5 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166808, the canonical program `A166808.P9614524992927031431` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166808 has offset 1).

The definition of A166808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166808.P9614524992927031431

`C(n+6, 5)-2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166808

/-- `C(n+6, 5)-2` -/
def P9614524992927031431.Spec : Prop :=
  ∀ n, P9614524992927031431.a n = A166808 (n + 1)

theorem P9614524992927031431.correct : P9614524992927031431.Spec := by
  intro n
  simp only [A166808, Nat.add_sub_cancel]

end A166808

/-! ## A166808.P12204946338629281134

`∑[∑[C(n+4, 3)]]+n`
-/

namespace A166808.P12204946338629281134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A166808.P12204946338629281134

namespace A166808

/-- `∑[∑[C(n+4, 3)]]+n` -/
def P12204946338629281134.Spec : Prop :=
  ∀ n, (P12204946338629281134.a n : ℤ) = A166808 (n + 1)

end A166808

/-! ## A166808.P15359681953575110511

`∏[5/(n+1)+1]-2`
-/

namespace A166808.P15359681953575110511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (n + 1 : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A166808.P15359681953575110511

namespace A166808

/-- `∏[5/(n+1)+1]-2` -/
def P15359681953575110511.Spec : Prop :=
  ∀ n, P15359681953575110511.a n = (A166808 (n + 1) : ℚ)

end A166808

/-! ## A166808.P8808966757440518568

`Δ[xor(2*n, -2)+C(n+6, 6)]`
-/

namespace A166808.P8808966757440518568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2) + (Nat.choose (n + 6) 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P8808966757440518568

namespace A166808

/-- `Δ[xor(2*n, -2)+C(n+6, 6)]` -/
def P8808966757440518568.Spec : Prop :=
  ∀ n, P8808966757440518568.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P16214236556834640222

`abs(1-A062988(n))`
-/

namespace A166808.P16214236556834640222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A062988 n|

end

end A166808.P16214236556834640222

namespace A166808

/-- `abs(1-A062988(n))` -/
def P16214236556834640222.Spec : Prop :=
  ∀ n, P16214236556834640222.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P7004287677621555165

`Δ[A062989(n)-n]`
-/

namespace A166808.P7004287677621555165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P7004287677621555165

namespace A166808

/-- `Δ[A062989(n)-n]` -/
def P7004287677621555165.Spec : Prop :=
  ∀ n, P7004287677621555165.a n = A166808 (n + 1)

theorem P7004287677621555165.correct : P7004287677621555165.Spec := by
  intro n
  simp only [A166808, Nat.add_sub_cancel, A166808.P7004287677621555165.f1, A166808.P7004287677621555165.a, A166808.P9614524992927031431.a, A062989, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166808

/-! ## A166808.P4069907896117285335

`Δ[A124089(n+6)-2*n]`
-/

namespace A166808.P4069907896117285335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P4069907896117285335

namespace A166808

/-- `Δ[A124089(n+6)-2*n]` -/
def P4069907896117285335.Spec : Prop :=
  ∀ n, P4069907896117285335.a n = A166808 (n + 1)

theorem P4069907896117285335.correct : P4069907896117285335.Spec := by
  intro n
  simp only [A166808, Nat.add_sub_cancel, A166808.P4069907896117285335.f1, A166808.P4069907896117285335.a, A166808.P9614524992927031431.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166808

/-! ## A166808.P8238427079466230968

`abs(∑[∑[A000292(n+2)]+1]-1)`
-/

namespace A166808.P8238427079466230968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A166808.P8238427079466230968

namespace A166808

/-- `abs(∑[∑[A000292(n+2)]+1]-1)` -/
def P8238427079466230968.Spec : Prop :=
  ∀ n, P8238427079466230968.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P9453401366593506208

`Δ[A000579(n+6)-2*n]`
-/

namespace A166808.P9453401366593506208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P9453401366593506208

namespace A166808

/-- `Δ[A000579(n+6)-2*n]` -/
def P9453401366593506208.Spec : Prop :=
  ∀ n, P9453401366593506208.a n = A166808 (n + 1)

theorem P9453401366593506208.correct : P9453401366593506208.Spec := by
  intro n
  simp only [A166808, Nat.add_sub_cancel, A166808.P9453401366593506208.f1, A166808.P9453401366593506208.a, A166808.P9614524992927031431.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166808

/-! ## A166808.P3594602033480356429

`Δ[record[A299338(n)-n]]`
-/

namespace A166808.P3594602033480356429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P3594602033480356429

namespace A166808

/-- `Δ[record[A299338(n)-n]]` -/
def P3594602033480356429.Spec : Prop :=
  ∀ n, P3594602033480356429.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P8737095071190598906

`abs(2-A189980(2*(n+1)))`
-/

namespace A166808.P8737095071190598906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A189980 (2 * (n + 1) + 10)|

end

end A166808.P8737095071190598906

namespace A166808

/-- `abs(2-A189980(2*(n+1)))` -/
def P8737095071190598906.Spec : Prop :=
  ∀ n, P8737095071190598906.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P6067343187363507924

`Δ[A299338(A004277(n))-(2*n+1)]`
-/

namespace A166808.P6067343187363507924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (A004277 n).toNat - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P6067343187363507924

namespace A166808

/-- `Δ[A299338(A004277(n))-(2*n+1)]` -/
def P6067343187363507924.Spec : Prop :=
  ∀ n, P6067343187363507924.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P14220498249543037380

`Δ[A002409(n)/A011782(n+1)-2*(n-1)]`
-/

namespace A166808.P14220498249543037380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n : ℚ) / (A011782 (n + 1) : ℚ) - (2 * ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P14220498249543037380

namespace A166808

/-- `Δ[A002409(n)/A011782(n+1)-2*(n-1)]` -/
def P14220498249543037380.Spec : Prop :=
  ∀ n, P14220498249543037380.a n = (A166808 (n + 1) : ℚ)

end A166808

/-! ## A166808.P6095483440060217239

`Δ[A036220(n)/A000244(n)-2*n]`
-/

namespace A166808.P6095483440060217239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036220 n : ℚ) / (A000244 n : ℚ) - (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P6095483440060217239

namespace A166808

/-- `Δ[A036220(n)/A000244(n)-2*n]` -/
def P6095483440060217239.Spec : Prop :=
  ∀ n, P6095483440060217239.a n = (A166808 (n + 1) : ℚ)

theorem P6095483440060217239.correct : P6095483440060217239.Spec := by
  intro n
  simp only [A166808, Nat.add_sub_cancel, A166808.P6095483440060217239.f1, A166808.P6095483440060217239.a, A166808.P9614524992927031431.a, A000244, A000244.P17162167222172810417.a, A036220, A036220.P3183934055485690499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166808

/-! ## A166808.P18042445691473958784

`Δ[A074909(A179865(n+6)+6)-2*n]`
-/

namespace A166808.P18042445691473958784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A179865 (n + 6) + 6).toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166808.P18042445691473958784

namespace A166808

/-- `Δ[A074909(A179865(n+6)+6)-2*n]` -/
def P18042445691473958784.Spec : Prop :=
  ∀ n, P18042445691473958784.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P1801694489478228167

`record[A213551(n+2)-2]`
-/

namespace A166808.P1801694489478228167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213551 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166808.P1801694489478228167

namespace A166808

/-- `record[A213551(n+2)-2]` -/
def P1801694489478228167.Spec : Prop :=
  ∀ n, P1801694489478228167.a n = A166808 (n + 1)

end A166808

/-! ## A166808.P1964580878753377792

`abs(2-A213551(∑[n+1]+1))`
-/

namespace A166808.P1964580878753377792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A213551 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A166808.P1964580878753377792

namespace A166808

/-- `abs(2-A213551(∑[n+1]+1))` -/
def P1964580878753377792.Spec : Prop :=
  ∀ n, P1964580878753377792.a n = A166808 (n + 1)

end A166808

/-!
# A166810: Number of n X 6 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166810, the canonical program `A166810.P9111942378694377844` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166810 has offset 1).

The definition of A166810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166810.P18087496780886916310

`C(n+7, 6)-2`
-/

namespace A166810.P18087496780886916310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 6 : ℤ) - 2

end

end A166810.P18087496780886916310

namespace A166810

/-- `C(n+7, 6)-2` -/
def P18087496780886916310.Spec : Prop :=
  ∀ n, P18087496780886916310.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P9111942378694377844

`A000579(n+7)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166810

/-- `A000579(n+7)-2` -/
def P9111942378694377844.Spec : Prop :=
  ∀ n, P9111942378694377844.a n = A166810 (n + 1)

theorem P9111942378694377844.correct : P9111942378694377844.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel]

end A166810

/-! ## A166810.P5537179347455904206

`∑[∑[C(n+5, 4)]]+n`
-/

namespace A166810.P5537179347455904206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A166810.P5537179347455904206

namespace A166810

/-- `∑[∑[C(n+5, 4)]]+n` -/
def P5537179347455904206.Spec : Prop :=
  ∀ n, (P5537179347455904206.a n : ℤ) = A166810 (n + 1)

end A166810

/-! ## A166810.P10729159466337805734

`Δ[(7/n+1)*a(n-1)]-2` with `a(0)=1`
-/

namespace A166810.P10729159466337805734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (7 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166810.P10729159466337805734

namespace A166810

/-- `Δ[(7/n+1)*a(n-1)]-2` -/
def P10729159466337805734.Spec : Prop :=
  ∀ n, P10729159466337805734.a n = (A166810 (n + 1) : ℚ)

end A166810

/-! ## A166810.P13236051263896510916

`∑[A062988(n)]+n`
-/

namespace A166810.P13236051263896510916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A166810.P13236051263896510916

namespace A166810

/-- `∑[A062988(n)]+n` -/
def P13236051263896510916.Spec : Prop :=
  ∀ n, P13236051263896510916.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P985809670840272783

`∑[A166808(n+1)+2]-1`
-/

namespace A166810.P985809670840272783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A166810.P985809670840272783

namespace A166810

/-- `∑[A166808(n+1)+2]-1` -/
def P985809670840272783.Spec : Prop :=
  ∀ n, P985809670840272783.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P7816477384569772459

`A027818(n+1)/(n+2)-2`
-/

namespace A166810.P7816477384569772459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027818 (n + 1) : ℚ) / (n + 2 : ℚ) - 2

end

end A166810.P7816477384569772459

namespace A166810

/-- `A027818(n+1)/(n+2)-2` -/
def P7816477384569772459.Spec : Prop :=
  ∀ n, P7816477384569772459.a n = (A166810 (n + 1) : ℚ)

theorem P7816477384569772459.correct : P7816477384569772459.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P7816477384569772459.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A027818, A027818.P2026887167249722118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P3886788217420663725

`A062966(n)+A034856(n+1)`
-/

namespace A166810.P3886788217420663725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 n + A034856 (n + 1)

end

end A166810.P3886788217420663725

namespace A166810

/-- `A062966(n)+A034856(n+1)` -/
def P3886788217420663725.Spec : Prop :=
  ∀ n, P3886788217420663725.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P14331954143664937022

`A124089(n+6)+A062988(n)`
-/

namespace A166810.P14331954143664937022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6) + A062988 n

end

end A166810.P14331954143664937022

namespace A166810

/-- `A124089(n+6)+A062988(n)` -/
def P14331954143664937022.Spec : Prop :=
  ∀ n, P14331954143664937022.a n = A166810 (n + 1)

theorem P14331954143664937022.correct : P14331954143664937022.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P14331954143664937022.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A062988, A062988.P10319984421922645529.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P3947330170604141148

`A257890(n)+∑[A257890(n)]-1`
-/

namespace A166810.P3947330170604141148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A166810.P3947330170604141148

namespace A166810

/-- `A257890(n)+∑[A257890(n)]-1` -/
def P3947330170604141148.Spec : Prop :=
  ∀ n, P3947330170604141148.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P7244584087189304655

`A166805(n+1)+A005584(n+1)`
-/

namespace A166810.P7244584087189304655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + A005584 (n + 1)

end

end A166810.P7244584087189304655

namespace A166810

/-- `A166805(n+1)+A005584(n+1)` -/
def P7244584087189304655.Spec : Prop :=
  ∀ n, P7244584087189304655.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P11554086025219386937

`A166812(n+1)-A000580(n+7)`
-/

namespace A166810.P11554086025219386937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) - A000580 (n + 7)

end

end A166810.P11554086025219386937

namespace A166810

/-- `A166812(n+1)-A000580(n+7)` -/
def P11554086025219386937.Spec : Prop :=
  ∀ n, P11554086025219386937.a n = A166810 (n + 1)

theorem P11554086025219386937.correct : P11554086025219386937.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P11554086025219386937.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A000580, A000580.P16667415707980948191.a, A166812, A166812.P11148181708282103747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P5197781899236916657

`A000096(n)+A062966(n)+1+n`
-/

namespace A166810.P5197781899236916657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A062966 n + 1 + (n : ℤ))

end

end A166810.P5197781899236916657

namespace A166810

/-- `A000096(n)+A062966(n)+1+n` -/
def P5197781899236916657.Spec : Prop :=
  ∀ n, P5197781899236916657.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P14142253083157411784

`∑[∑[A001752(n+1)+A001752(n)]+1]-1`
-/

namespace A166810.P14142253083157411784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) + A001752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A166810.P14142253083157411784

namespace A166810

/-- `∑[∑[A001752(n+1)+A001752(n)]+1]-1` -/
def P14142253083157411784.Spec : Prop :=
  ∀ n, P14142253083157411784.a n = A166810 (n + 1)

end A166810

/-! ## A166810.P709977055981508944

`A124089(n+7)-1`
-/

namespace A166810.P709977055981508944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 7) - 1

end

end A166810.P709977055981508944

namespace A166810

/-- `A124089(n+7)-1` -/
def P709977055981508944.Spec : Prop :=
  ∀ n, P709977055981508944.a n = A166810 (n + 1)

theorem P709977055981508944.correct : P709977055981508944.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P709977055981508944.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P1162389354519779916

`A062989(n+1)+n`
-/

namespace A166810.P1162389354519779916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) + (n : ℤ)

end

end A166810.P1162389354519779916

namespace A166810

/-- `A062989(n+1)+n` -/
def P1162389354519779916.Spec : Prop :=
  ∀ n, P1162389354519779916.a n = A166810 (n + 1)

theorem P1162389354519779916.correct : P1162389354519779916.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P1162389354519779916.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A062989, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P17968509587132454253

`Δ[A000580(n+7)]-2`
-/

namespace A166810.P17968509587132454253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166810.P17968509587132454253

namespace A166810

/-- `Δ[A000580(n+7)]-2` -/
def P17968509587132454253.Spec : Prop :=
  ∀ n, P17968509587132454253.a n = A166810 (n + 1)

theorem P17968509587132454253.correct : P17968509587132454253.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P17968509587132454253.f1, A166810.P17968509587132454253.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P14706160418677689136

`Δ[A124090(n+7)]-2`
-/

namespace A166810.P14706160418677689136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166810.P14706160418677689136

namespace A166810

/-- `Δ[A124090(n+7)]-2` -/
def P14706160418677689136.Spec : Prop :=
  ∀ n, P14706160418677689136.a n = A166810 (n + 1)

theorem P14706160418677689136.correct : P14706160418677689136.Spec := by
  intro n
  simp only [A166810, Nat.add_sub_cancel, A166810.P14706160418677689136.f1, A166810.P14706160418677689136.a, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, A124090, A124090.P5259538866810562984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166810

/-! ## A166810.P3690074468385598116

`∑[∑[sqrt(A288876(n+1))]+1]-1`
-/

namespace A166810.P3690074468385598116
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A166810.P3690074468385598116

namespace A166810

/-- `∑[∑[sqrt(A288876(n+1))]+1]-1` -/
def P3690074468385598116.Spec : Prop :=
  ∀ n, P3690074468385598116.a n = (A166810 (n + 1) : ℝ)

end A166810

/-! ## A166810.P4700653115479482858

`∑[∑[∑[A000292(n+2)]+1]]+n`
-/

namespace A166810.P4700653115479482858
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A166810.P4700653115479482858

namespace A166810

/-- `∑[∑[∑[A000292(n+2)]+1]]+n` -/
def P4700653115479482858.Spec : Prop :=
  ∀ n, P4700653115479482858.a n = A166810 (n + 1)

end A166810

/-!
# A166812: Number of n X 7 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166812, the canonical program `A166812.P11148181708282103747` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166812 has offset 1).

The definition of A166812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166812.P16685125213425949284

`C(n+8, 7)-2`
-/

namespace A166812.P16685125213425949284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 7 : ℤ) - 2

end

end A166812.P16685125213425949284

namespace A166812

/-- `C(n+8, 7)-2` -/
def P16685125213425949284.Spec : Prop :=
  ∀ n, P16685125213425949284.a n = A166812 (n + 1)

theorem P16685125213425949284.correct : P16685125213425949284.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P16685125213425949284.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P11148181708282103747

`A000580(n+8)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166812

/-- `A000580(n+8)-2` -/
def P11148181708282103747.Spec : Prop :=
  ∀ n, P11148181708282103747.a n = A166812 (n + 1)

theorem P11148181708282103747.correct : P11148181708282103747.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel]

end A166812

/-! ## A166812.P14392476606310577442

`∑[∑[C(n+6, 5)]]+n`
-/

namespace A166812.P14392476606310577442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A166812.P14392476606310577442

namespace A166812

/-- `∑[∑[C(n+6, 5)]]+n` -/
def P14392476606310577442.Spec : Prop :=
  ∀ n, (P14392476606310577442.a n : ℤ) = A166812 (n + 1)

end A166812

/-! ## A166812.P11354405932220928123

`Δ[(8/n+1)*a(n-1)]-2` with `a(0)=1`
-/

namespace A166812.P11354405932220928123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (8 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166812.P11354405932220928123

namespace A166812

/-- `Δ[(8/n+1)*a(n-1)]-2` -/
def P11354405932220928123.Spec : Prop :=
  ∀ n, P11354405932220928123.a n = (A166812 (n + 1) : ℚ)

end A166812

/-! ## A166812.P4827874264276882707

`A063267(n)+n`
-/

namespace A166812.P4827874264276882707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063267 n + (n : ℤ)

end

end A166812.P4827874264276882707

namespace A166812

/-- `A063267(n)+n` -/
def P4827874264276882707.Spec : Prop :=
  ∀ n, P4827874264276882707.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P14928965457626642676

`∑[A166810(n+1)+2]-1`
-/

namespace A166812.P14928965457626642676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A166812.P14928965457626642676

namespace A166812

/-- `∑[A166810(n+1)+2]-1` -/
def P14928965457626642676.Spec : Prop :=
  ∀ n, P14928965457626642676.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P15252468675809066301

`A056001(n+1)/(n+2)-2`
-/

namespace A166812.P15252468675809066301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056001 (n + 1) : ℚ) / (n + 2 : ℚ) - 2

end

end A166812.P15252468675809066301

namespace A166812

/-- `A056001(n+1)/(n+2)-2` -/
def P15252468675809066301.Spec : Prop :=
  ∀ n, P15252468675809066301.a n = (A166812 (n + 1) : ℚ)

theorem P15252468675809066301.correct : P15252468675809066301.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P15252468675809066301.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A056001, A056001.P7199293198047440355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P3102469676996853366

`A062990(n)+A034856(n+1)`
-/

namespace A166812.P3102469676996853366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n + A034856 (n + 1)

end

end A166812.P3102469676996853366

namespace A166812

/-- `A062990(n)+A034856(n+1)` -/
def P3102469676996853366.Spec : Prop :=
  ∀ n, P3102469676996853366.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P13365578873837280357

`Δ[A000292(n)]+A062990(n)+n`
-/

namespace A166812.P13365578873837280357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A062990 n + (n : ℤ))

end

end A166812.P13365578873837280357

namespace A166812

/-- `Δ[A000292(n)]+A062990(n)+n` -/
def P13365578873837280357.Spec : Prop :=
  ∀ n, P13365578873837280357.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P10319203397091446071

`A166810(n+1)+A000580(n+7)`
-/

namespace A166812.P10319203397091446071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) + A000580 (n + 7)

end

end A166812.P10319203397091446071

namespace A166812

/-- `A166810(n+1)+A000580(n+7)` -/
def P10319203397091446071.Spec : Prop :=
  ∀ n, P10319203397091446071.a n = A166812 (n + 1)

theorem P10319203397091446071.correct : P10319203397091446071.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P10319203397091446071.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A166810, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P271698085389590612

`A166813(n+1)-A000581(n+8)`
-/

namespace A166812.P271698085389590612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1) - A000581 (n + 8)

end

end A166812.P271698085389590612

namespace A166812

/-- `A166813(n+1)-A000581(n+8)` -/
def P271698085389590612.Spec : Prop :=
  ∀ n, P271698085389590612.a n = A166812 (n + 1)

theorem P271698085389590612.correct : P271698085389590612.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P271698085389590612.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A000581, A000581.P12083568850536544774.a, A166813, A166813.P1159037647007195774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P3381889007586493359

`A000096(n)+A062990(n)+1+n`
-/

namespace A166812.P3381889007586493359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A062990 n + 1 + (n : ℤ))

end

end A166812.P3381889007586493359

namespace A166812

/-- `A000096(n)+A062990(n)+1+n` -/
def P3381889007586493359.Spec : Prop :=
  ∀ n, P3381889007586493359.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P5734338525210605590

`A166810(n+1)+A124090(n+7)+1`
-/

namespace A166812.P5734338525210605590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) + (A124090 (n + 7) + 1)

end

end A166812.P5734338525210605590

namespace A166812

/-- `A166810(n+1)+A124090(n+7)+1` -/
def P5734338525210605590.Spec : Prop :=
  ∀ n, P5734338525210605590.a n = A166812 (n + 1)

theorem P5734338525210605590.correct : P5734338525210605590.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P5734338525210605590.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A124090, A124090.P5259538866810562984.a, A166810, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P13083682245996145222

`Δ[∑[∑[∑[∑[∑[∑[n+1]]]]]]+a(n-1)]-2` with `a(0)=0`
-/

namespace A166812.P13083682245996145222
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2

end

end A166812.P13083682245996145222

namespace A166812

/-- `Δ[∑[∑[∑[∑[∑[∑[n+1]]]]]]+a(n-1)]-2` -/
def P13083682245996145222.Spec : Prop :=
  ∀ n, P13083682245996145222.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P8160040258210716221

`Δ[A165618(n)]-2`
-/

namespace A166812.P8160040258210716221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166812.P8160040258210716221

namespace A166812

/-- `Δ[A165618(n)]-2` -/
def P8160040258210716221.Spec : Prop :=
  ∀ n, P8160040258210716221.a n = A166812 (n + 1)

theorem P8160040258210716221.correct : P8160040258210716221.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P8160040258210716221.f1, A166812.P8160040258210716221.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A165618, A165618.P15483055962896292448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P13340093129509133957

`A124090(n+8)-1`
-/

namespace A166812.P13340093129509133957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 8) - 1

end

end A166812.P13340093129509133957

namespace A166812

/-- `A124090(n+8)-1` -/
def P13340093129509133957.Spec : Prop :=
  ∀ n, P13340093129509133957.a n = A166812 (n + 1)

theorem P13340093129509133957.correct : P13340093129509133957.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P13340093129509133957.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A124090, A124090.P5259538866810562984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P12355897160141777482

`Δ[A000581(n+8)]-2`
-/

namespace A166812.P12355897160141777482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166812.P12355897160141777482

namespace A166812

/-- `Δ[A000581(n+8)]-2` -/
def P12355897160141777482.Spec : Prop :=
  ∀ n, P12355897160141777482.a n = A166812 (n + 1)

theorem P12355897160141777482.correct : P12355897160141777482.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P12355897160141777482.f1, A166812.P12355897160141777482.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P8979703277089230362

`∑[A124089(n+7)]+n`
-/

namespace A166812.P8979703277089230362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A166812.P8979703277089230362

namespace A166812

/-- `∑[A124089(n+7)]+n` -/
def P8979703277089230362.Spec : Prop :=
  ∀ n, P8979703277089230362.a n = A166812 (n + 1)

end A166812

/-! ## A166812.P13625236560593163989

`A027767(n+7)/(n+8)-2`
-/

namespace A166812.P13625236560593163989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027767 (n + 7) : ℚ) / (n + 8 : ℚ) - 2

end

end A166812.P13625236560593163989

namespace A166812

/-- `A027767(n+7)/(n+8)-2` -/
def P13625236560593163989.Spec : Prop :=
  ∀ n, P13625236560593163989.a n = (A166812 (n + 1) : ℚ)

theorem P13625236560593163989.correct : P13625236560593163989.Spec := by
  intro n
  simp only [A166812, Nat.add_sub_cancel, A166812.P13625236560593163989.a, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, A027767, A027767.P16883382579102568469.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166812

/-! ## A166812.P8407223788704405244

`A062990(n+1)-(A062966(n+1)+2)`
-/

namespace A166812.P8407223788704405244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 (n + 1) - (A062966 (n + 1) + 2)

end

end A166812.P8407223788704405244

namespace A166812

/-- `A062990(n+1)-(A062966(n+1)+2)` -/
def P8407223788704405244.Spec : Prop :=
  ∀ n, P8407223788704405244.a n = A166812 (n + 1)

end A166812

/-!
# A166813: Number of n X 8 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166813, the canonical program `A166813.P1159037647007195774` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166813 has offset 1).

The definition of A166813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166813.P13021989410729953020

`C(n+9, 8)-2`
-/

namespace A166813.P13021989410729953020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 8 : ℤ) - 2

end

end A166813.P13021989410729953020

namespace A166813

/-- `C(n+9, 8)-2` -/
def P13021989410729953020.Spec : Prop :=
  ∀ n, P13021989410729953020.a n = A166813 (n + 1)

theorem P13021989410729953020.correct : P13021989410729953020.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P13021989410729953020.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P1159037647007195774

`A000581(n+9)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166813

/-- `A000581(n+9)-2` -/
def P1159037647007195774.Spec : Prop :=
  ∀ n, P1159037647007195774.a n = A166813 (n + 1)

theorem P1159037647007195774.correct : P1159037647007195774.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel]

end A166813

/-! ## A166813.P9499668326390578112

`Δ[(9/n+1)*a(n-1)]-2` with `a(0)=1`
-/

namespace A166813.P9499668326390578112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (9 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166813.P9499668326390578112

namespace A166813

/-- `Δ[(9/n+1)*a(n-1)]-2` -/
def P9499668326390578112.Spec : Prop :=
  ∀ n, P9499668326390578112.a n = (A166813 (n + 1) : ℚ)

end A166813

/-! ## A166813.P11501254085028830220

`∑[A166812(n+1)+2]-1`
-/

namespace A166813.P11501254085028830220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A166813.P11501254085028830220

namespace A166813

/-- `∑[A166812(n+1)+2]-1` -/
def P11501254085028830220.Spec : Prop :=
  ∀ n, P11501254085028830220.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P11327155743060591282

`∑[A063267(n)+1+n]+n`
-/

namespace A166813.P11327155743060591282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063267 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A166813.P11327155743060591282

namespace A166813

/-- `∑[A063267(n)+1+n]+n` -/
def P11327155743060591282.Spec : Prop :=
  ∀ n, P11327155743060591282.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P15789324885739332881

`A056003(n+1)/(n+2)-2`
-/

namespace A166813.P15789324885739332881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056003 (n + 1) : ℚ) / (n + 2 : ℚ) - 2

end

end A166813.P15789324885739332881

namespace A166813

/-- `A056003(n+1)/(n+2)-2` -/
def P15789324885739332881.Spec : Prop :=
  ∀ n, P15789324885739332881.a n = (A166813 (n + 1) : ℚ)

theorem P15789324885739332881.correct : P15789324885739332881.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P15789324885739332881.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A056003, A056003.P10626259169423566965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P8951945897332401855

`Δ[A034263(n)]+A064058(n)-2`
-/

namespace A166813.P8951945897332401855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A064058 n - 2)

end

end A166813.P8951945897332401855

namespace A166813

/-- `Δ[A034263(n)]+A064058(n)-2` -/
def P8951945897332401855.Spec : Prop :=
  ∀ n, P8951945897332401855.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P3002300300573365464

`A166812(n+1)+A165618(n)+1`
-/

namespace A166813.P3002300300573365464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) + (A165618 n + 1)

end

end A166813.P3002300300573365464

namespace A166813

/-- `A166812(n+1)+A165618(n)+1` -/
def P3002300300573365464.Spec : Prop :=
  ∀ n, P3002300300573365464.a n = A166813 (n + 1)

theorem P3002300300573365464.correct : P3002300300573365464.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P3002300300573365464.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A165618, A165618.P15483055962896292448.a, A166812, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P513149105260341236

`A166812(n+1)+A000581(n+8)`
-/

namespace A166813.P513149105260341236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) + A000581 (n + 8)

end

end A166813.P513149105260341236

namespace A166813

/-- `A166812(n+1)+A000581(n+8)` -/
def P513149105260341236.Spec : Prop :=
  ∀ n, P513149105260341236.a n = A166813 (n + 1)

theorem P513149105260341236.correct : P513149105260341236.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P513149105260341236.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A166812, A166812.P11148181708282103747.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P6425512796555975303

`Δ[A035927(n)]-2`
-/

namespace A166813.P6425512796555975303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166813.P6425512796555975303

namespace A166813

/-- `Δ[A035927(n)]-2` -/
def P6425512796555975303.Spec : Prop :=
  ∀ n, P6425512796555975303.a n = A166813 (n + 1)

theorem P6425512796555975303.correct : P6425512796555975303.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P6425512796555975303.f1, A166813.P6425512796555975303.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A035927, A035927.P5963660235913258710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P3594073406424899603

`A165618(n+1)-1`
-/

namespace A166813.P3594073406424899603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 (n + 1) - 1

end

end A166813.P3594073406424899603

namespace A166813

/-- `A165618(n+1)-1` -/
def P3594073406424899603.Spec : Prop :=
  ∀ n, P3594073406424899603.a n = A166813 (n + 1)

theorem P3594073406424899603.correct : P3594073406424899603.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P3594073406424899603.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A165618, A165618.P15483055962896292448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P13104234622466741002

`∑[A000580(n+8)]-1`
-/

namespace A166813.P13104234622466741002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A166813.P13104234622466741002

namespace A166813

/-- `∑[A000580(n+8)]-1` -/
def P13104234622466741002.Spec : Prop :=
  ∀ n, P13104234622466741002.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P8345573571642250117

`Δ[A000582(n+9)]-2`
-/

namespace A166813.P8345573571642250117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A166813.P8345573571642250117

namespace A166813

/-- `Δ[A000582(n+9)]-2` -/
def P8345573571642250117.Spec : Prop :=
  ∀ n, P8345573571642250117.a n = A166813 (n + 1)

theorem P8345573571642250117.correct : P8345573571642250117.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P8345573571642250117.f1, A166813.P8345573571642250117.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A000582, A000582.P5339973766427948568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P1413358024083865106

`∑[A124090(n+8)]+n`
-/

namespace A166813.P1413358024083865106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A166813.P1413358024083865106

namespace A166813

/-- `∑[A124090(n+8)]+n` -/
def P1413358024083865106.Spec : Prop :=
  ∀ n, P1413358024083865106.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P9521075685570712825

`A027768(n+8)/(n+9)-2`
-/

namespace A166813.P9521075685570712825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027768 (n + 8) : ℚ) / (n + 9 : ℚ) - 2

end

end A166813.P9521075685570712825

namespace A166813

/-- `A027768(n+8)/(n+9)-2` -/
def P9521075685570712825.Spec : Prop :=
  ∀ n, P9521075685570712825.a n = (A166813 (n + 1) : ℚ)

theorem P9521075685570712825.correct : P9521075685570712825.Spec := by
  intro n
  simp only [A166813, Nat.add_sub_cancel, A166813.P9521075685570712825.a, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, A027768, A027768.P1314416546218591904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166813

/-! ## A166813.P17650156522604385238

`A063417(n+1)-(A063262(n+1)+2)`
-/

namespace A166813.P17650156522604385238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 (n + 1) - (A063262 (n + 1) + 2)

end

end A166813.P17650156522604385238

namespace A166813

/-- `A063417(n+1)-(A063262(n+1)+2)` -/
def P17650156522604385238.Spec : Prop :=
  ∀ n, P17650156522604385238.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P14029873872404883221

`A063263(n+1)-(A064057(n+1)+2)`
-/

namespace A166813.P14029873872404883221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 (n + 1) - (A064057 (n + 1) + 2)

end

end A166813.P14029873872404883221

namespace A166813

/-- `A063263(n+1)-(A064057(n+1)+2)` -/
def P14029873872404883221.Spec : Prop :=
  ∀ n, P14029873872404883221.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P9734301560851761706

`A095819(n+1)-(A095665(n+1)+2)`
-/

namespace A166813.P9734301560851761706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 (n + 1) - (A095665 (n + 1) + 2)

end

end A166813.P9734301560851761706

namespace A166813

/-- `A095819(n+1)-(A095665(n+1)+2)` -/
def P9734301560851761706.Spec : Prop :=
  ∀ n, P9734301560851761706.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P10913294367283834774

`A096947(n+1)-(A095819(n+1)+2)`
-/

namespace A166813.P10913294367283834774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096947 (n + 1) - (A095819 (n + 1) + 2)

end

end A166813.P10913294367283834774

namespace A166813

/-- `A096947(n+1)-(A095819(n+1)+2)` -/
def P10913294367283834774.Spec : Prop :=
  ∀ n, P10913294367283834774.a n = A166813 (n + 1)

end A166813

/-! ## A166813.P18374374186486961298

`A097300(n+1)-(A096947(n+1)+2)`
-/

namespace A166813.P18374374186486961298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097300 (n + 1) - (A096947 (n + 1) + 2)

end

end A166813.P18374374186486961298

namespace A166813

/-- `A097300(n+1)-(A096947(n+1)+2)` -/
def P18374374186486961298.Spec : Prop :=
  ∀ n, P18374374186486961298.a n = A166813 (n + 1)

end A166813

/-!
# A166814: Number of nX2 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166814, the canonical program `A166814.P5533876636230597421` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166814 has offset 1).

The definition of A166814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166814.P5533876636230597421

`∑[∑[n*(n+4)]+n]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166814

/-- `∑[∑[n*(n+4)]+n]` -/
def P5533876636230597421.Spec : Prop :=
  ∀ n, (P5533876636230597421.a n : ℤ) = A166814 (n + 1)

theorem P5533876636230597421.correct : P5533876636230597421.Spec := by
  intro n
  simp only [A166814, Nat.add_sub_cancel]

end A166814

/-! ## A166814.P17043719030789374653

`C(n², 2)/6+6*C(n+2, 3)`
-/

namespace A166814.P17043719030789374653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6 + (6 * Nat.choose (n + 2) 3 : ℚ)

end

end A166814.P17043719030789374653

namespace A166814

/-- `C(n², 2)/6+6*C(n+2, 3)` -/
def P17043719030789374653.Spec : Prop :=
  ∀ n, P17043719030789374653.a n = (A166814 (n + 1) : ℚ)

end A166814

/-! ## A166814.P1933096326978394747

`∑[∑[∑[a(n-1)+2]]]-(n+1)` with `a(0)=1, a(1)=5`
-/

namespace A166814.P1933096326978394747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A166814.P1933096326978394747

namespace A166814

/-- `∑[∑[∑[a(n-1)+2]]]-(n+1)` -/
def P1933096326978394747.Spec : Prop :=
  ∀ n, P1933096326978394747.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P960264123525366508

`∑[∑[lcm(n+1, n+2)+n-1]]-(n+1)`
-/

namespace A166814.P960264123525366508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A166814.P960264123525366508

namespace A166814

/-- `∑[∑[lcm(n+1, n+2)+n-1]]-(n+1)` -/
def P960264123525366508.Spec : Prop :=
  ∀ n, P960264123525366508.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P2717786885824732957

`∑[∑[(n+1-C(2, n+2))²+n]]+∑[∑[n]]`
-/

namespace A166814.P2717786885824732957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose 2 (n + 2) : ℤ)) ^ 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A166814.P2717786885824732957

namespace A166814

/-- `∑[∑[(n+1-C(2, n+2))²+n]]+∑[∑[n]]` -/
def P2717786885824732957.Spec : Prop :=
  ∀ n, P2717786885824732957.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P10810746581702928908

`∑[∑[(n+1)²%((n+1)^3)+n]]+∑[∑[n]]`
-/

namespace A166814.P10810746581702928908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (n + 1) ^ 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A166814.P10810746581702928908

namespace A166814

/-- `∑[∑[(n+1)²%((n+1)^3)+n]]+∑[∑[n]]` -/
def P10810746581702928908.Spec : Prop :=
  ∀ n, (P10810746581702928908.a n : ℤ) = A166814 (n + 1)

end A166814

/-! ## A166814.P4631502847377429239

`∑[∑[((n+1)^5)%((n+1)^3+n)]]+∑[∑[n]]`
-/

namespace A166814.P4631502847377429239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 % ((n + 1) ^ 3 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A166814.P4631502847377429239

namespace A166814

/-- `∑[∑[((n+1)^5)%((n+1)^3+n)]]+∑[∑[n]]` -/
def P4631502847377429239.Spec : Prop :=
  ∀ n, (P4631502847377429239.a n : ℤ) = A166814 (n + 1)

end A166814

/-! ## A166814.P9741382270005908097

`(n+3)/2*A006503(n)`
-/

namespace A166814.P9741382270005908097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A006503 n : ℚ)

end

end A166814.P9741382270005908097

namespace A166814

/-- `(n+3)/2*A006503(n)` -/
def P9741382270005908097.Spec : Prop :=
  ∀ n, P9741382270005908097.a n = (A166814 (n + 1) : ℚ)

end A166814

/-! ## A166814.P15612261006566474905

`A033275(n+4)+∑[∑[n]]`
-/

namespace A166814.P15612261006566474905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033275 (n + 4) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A166814.P15612261006566474905

namespace A166814

/-- `A033275(n+4)+∑[∑[n]]` -/
def P15612261006566474905.Spec : Prop :=
  ∀ n, P15612261006566474905.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P12076847566142824631

`A052472(n+3)-n*(n+3)`
-/

namespace A166814.P12076847566142824631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) - (n * (n + 3) : ℤ)

end

end A166814.P12076847566142824631

namespace A166814

/-- `A052472(n+3)-n*(n+3)` -/
def P12076847566142824631.Spec : Prop :=
  ∀ n, P12076847566142824631.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P3949818434336714873

`A134481(n)+A006007(n)`
-/

namespace A166814.P3949818434336714873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A006007 n

end

end A166814.P3949818434336714873

namespace A166814

/-- `A134481(n)+A006007(n)` -/
def P3949818434336714873.Spec : Prop :=
  ∀ n, P3949818434336714873.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P2702578694127914139

`A290312(n)-A101338(n)`
-/

namespace A166814.P2702578694127914139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A101338 n

end

end A166814.P2702578694127914139

namespace A166814

/-- `A290312(n)-A101338(n)` -/
def P2702578694127914139.Spec : Prop :=
  ∀ n, P2702578694127914139.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P9988602377909646915

`A126420(n+1)+A079034(n)`
-/

namespace A166814.P9988602377909646915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1) + A079034 n

end

end A166814.P9988602377909646915

namespace A166814

/-- `A126420(n+1)+A079034(n)` -/
def P9988602377909646915.Spec : Prop :=
  ∀ n, P9988602377909646915.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P4447774071870371540

`A136396(n)+A087908(n+1)`
-/

namespace A166814.P4447774071870371540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n + A087908 (n + 1)

end

end A166814.P4447774071870371540

namespace A166814

/-- `A136396(n)+A087908(n+1)` -/
def P4447774071870371540.Spec : Prop :=
  ∀ n, P4447774071870371540.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P17070719972723709002

`A166796(n+1)-A161680(n)`
-/

namespace A166814.P17070719972723709002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166796 (n + 1) - A161680 n

end

end A166814.P17070719972723709002

namespace A166814

/-- `A166796(n+1)-A161680(n)` -/
def P17070719972723709002.Spec : Prop :=
  ∀ n, P17070719972723709002.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P7539541781712041071

`A362153(n+1)-A000124(n)`
-/

namespace A166814.P7539541781712041071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362153 (n + 1) - A000124 n

end

end A166814.P7539541781712041071

namespace A166814

/-- `A362153(n+1)-A000124(n)` -/
def P7539541781712041071.Spec : Prop :=
  ∀ n, P7539541781712041071.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P16126121976082468183

`A127407(n+2)-A062748(n)`
-/

namespace A166814.P16126121976082468183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127407 (n + 2) - A062748 n

end

end A166814.P16126121976082468183

namespace A166814

/-- `A127407(n+2)-A062748(n)` -/
def P16126121976082468183.Spec : Prop :=
  ∀ n, P16126121976082468183.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P15603899454058396111

`A166776(n+1)-A166796(n+1)`
-/

namespace A166814.P15603899454058396111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166776 (n + 1) - A166796 (n + 1)

end

end A166814.P15603899454058396111

namespace A166814

/-- `A166776(n+1)-A166796(n+1)` -/
def P15603899454058396111.Spec : Prop :=
  ∀ n, P15603899454058396111.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P6133116265366321073

`A002378(n)+A033488(n)-A002415(n)`
-/

namespace A166814.P6133116265366321073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A033488 n - A002415 n)

end

end A166814.P6133116265366321073

namespace A166814

/-- `A002378(n)+A033488(n)-A002415(n)` -/
def P6133116265366321073.Spec : Prop :=
  ∀ n, P6133116265366321073.a n = A166814 (n + 1)

end A166814

/-! ## A166814.P12696788534249022394

`A052472(n+3)-A000096(n)-A000096(n)`
-/

namespace A166814.P12696788534249022394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) - A000096 n - A000096 n

end

end A166814.P12696788534249022394

namespace A166814

/-- `A052472(n+3)-A000096(n)-A000096(n)` -/
def P12696788534249022394.Spec : Prop :=
  ∀ n, P12696788534249022394.a n = A166814 (n + 1)

end A166814

/-!
# A166815: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166815, the canonical program `A166815.P14232837679894143534` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166815 has offset 1).

The definition of A166815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166815.P14232837679894143534

`((n+1)^6+18*(n+1)^5+115*(n+1)^4+60*(n+1)^3-566*(n+1)²+372*(n+1))/180`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166815

/-- `((n+1)^6+18*(n+1)^5+115*(n+1)^4+60*(n+1)^3-566*(n+1)²+372*(n+1))/180` -/
def P14232837679894143534.Spec : Prop :=
  ∀ n, P14232837679894143534.a n = (A166815 (n + 1) : ℚ)

end A166815

/-! ## A166815.P12423834450785893607

`A166797(n+1)-C(n, 3)`
-/

namespace A166815.P12423834450785893607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166797 (n + 1) - (Nat.choose n 3 : ℤ)

end

end A166815.P12423834450785893607

namespace A166815

/-- `A166797(n+1)-C(n, 3)` -/
def P12423834450785893607.Spec : Prop :=
  ∀ n, P12423834450785893607.a n = A166815 (n + 1)

end A166815

/-! ## A166815.P3282443483977607579

`A166777(n+1)-A166826(n+1)`
-/

namespace A166815.P3282443483977607579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - A166826 (n + 1)

end

end A166815.P3282443483977607579

namespace A166815

/-- `A166777(n+1)-A166826(n+1)` -/
def P3282443483977607579.Spec : Prop :=
  ∀ n, P3282443483977607579.a n = A166815 (n + 1)

end A166815

/-! ## A166815.P9194047913994834533

`A166777(n+1)-(A166838(n+1)+C(n, 3))`
-/

namespace A166815.P9194047913994834533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - (A166838 (n + 1) + (Nat.choose n 3 : ℤ))

end

end A166815.P9194047913994834533

namespace A166815

/-- `A166777(n+1)-(A166838(n+1)+C(n, 3))` -/
def P9194047913994834533.Spec : Prop :=
  ∀ n, P9194047913994834533.a n = A166815 (n + 1)

end A166815

/-! ## A166815.P5692208545055657194

`A166797(n+1)-Δ[A000332(n)]`
-/

namespace A166815.P5692208545055657194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166797 (n + 1) - (f1 (n + 1) - f1 n)

end

end A166815.P5692208545055657194

namespace A166815

/-- `A166797(n+1)-Δ[A000332(n)]` -/
def P5692208545055657194.Spec : Prop :=
  ∀ n, P5692208545055657194.a n = A166815 (n + 1)

end A166815

/-! ## A166815.P17778904982866106883

`A166777(n+1)-(A166838(n+1)+Δ[A000332(n)])`
-/

namespace A166815.P17778904982866106883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - (A166838 (n + 1) + (f1 (n + 1) - f1 n))

end

end A166815.P17778904982866106883

namespace A166815

/-- `A166777(n+1)-(A166838(n+1)+Δ[A000332(n)])` -/
def P17778904982866106883.Spec : Prop :=
  ∀ n, P17778904982866106883.a n = A166815 (n + 1)

end A166815

/-!
# A166816: Number of n X 2 1..5 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166816, there is no canonical definition to state claims against.
-/

/-! ## A166816.P8749802488091428918

`A166798(n+1)-A000332(n)`
-/

namespace A166816.P8749802488091428918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166798 (n + 1) - A000332 n

end

end A166816.P8749802488091428918

/-! ## A166816.P9430428956474172213

`A166778(n+1)-A166827(n+1)`
-/

namespace A166816.P9430428956474172213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166778 (n + 1) - A166827 (n + 1)

end

end A166816.P9430428956474172213

/-! ## A166816.P18126923792560470282

`A166798(n+1)-A034827(n)/2`
-/

namespace A166816.P18126923792560470282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166798 (n + 1) : ℚ) - (A034827 n : ℚ) / 2

end

end A166816.P18126923792560470282

/-! ## A166816.P16954484350436979928

`A166778(n+1)-(A166839(n+1)+C(n, 4))`
-/

namespace A166816.P16954484350436979928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166778 (n + 1) - (A166839 (n + 1) + (Nat.choose n 4 : ℤ))

end

end A166816.P16954484350436979928

/-! ## A166816.P10504281500897572751

`A166798(n+1)-Δ[A000389(n)]`
-/

namespace A166816.P10504281500897572751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166798 (n + 1) - (f1 (n + 1) - f1 n)

end

end A166816.P10504281500897572751

/-!
# A166817: Number of n X 2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166817, there is no canonical definition to state claims against.
-/

/-! ## A166817.P5249317722947496169

`A166799(n+1)-C(n, 5)`
-/

namespace A166817.P5249317722947496169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166799 (n + 1) - (Nat.choose n 5 : ℤ)

end

end A166817.P5249317722947496169

/-! ## A166817.P3657822530472905704

`A166799(n+1)-A000389(n)`
-/

namespace A166817.P3657822530472905704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166799 (n + 1) - A000389 n

end

end A166817.P3657822530472905704

/-! ## A166817.P8918222712465525847

`A166779(n+1)-A166828(n+1)`
-/

namespace A166817.P8918222712465525847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - A166828 (n + 1)

end

end A166817.P8918222712465525847

/-! ## A166817.P11591222892397651418

`A166779(n+1)-(A166840(n+1)+C(n, 5))`
-/

namespace A166817.P11591222892397651418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - (A166840 (n + 1) + (Nat.choose n 5 : ℤ))

end

end A166817.P11591222892397651418

/-! ## A166817.P2643277961757834711

`A166799(n+1)-Δ[A000579(n)]`
-/

namespace A166817.P2643277961757834711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166799 (n + 1) - (f1 (n + 1) - f1 n)

end

end A166817.P2643277961757834711

/-!
# A166818: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166818, there is no canonical definition to state claims against.
-/

/-! ## A166818.P7795394518661985996

`A166800(n+1)-A000579(n)`
-/

namespace A166818.P7795394518661985996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166800 (n + 1) - A000579 n

end

end A166818.P7795394518661985996

/-! ## A166818.P3994149797069693141

`A166780(n+1)-A166829(n+1)`
-/

namespace A166818.P3994149797069693141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166780 (n + 1) - A166829 (n + 1)

end

end A166818.P3994149797069693141

/-! ## A166818.P10554170853962119605

`A166780(n+1)-(A166841(n+1)+A000579(n))`
-/

namespace A166818.P10554170853962119605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166780 (n + 1) - (A166841 (n + 1) + A000579 n)

end

end A166818.P10554170853962119605

/-! ## A166818.P581058728735803000

`A166800(n+1)+A166841(n+1)-A166829(n+1)`
-/

namespace A166818.P581058728735803000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166800 (n + 1) + (A166841 (n + 1) - A166829 (n + 1))

end

end A166818.P581058728735803000

/-!
# A166819: Number of n X 3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166819, the canonical program `A166819.P334354906009438737` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166819 has offset 1).

The definition of A166819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166819.P10658313878840469719

`((n+1)^6+9*(n+1)^5+55*(n+1)^4+15*(n+1)^3-56*(n+1)²+66*(n+1))/90`
-/

namespace A166819.P10658313878840469719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 6 + 9 * (n + 1) ^ 5 + 55 * (n + 1) ^ 4 + 15 * (n + 1) ^ 3 : ℤ) - (56 * (n + 1) ^ 2 : ℤ) + (66 * (n + 1) : ℤ) : ℚ) / 90

end

end A166819.P10658313878840469719

namespace A166819

/-- `((n+1)^6+9*(n+1)^5+55*(n+1)^4+15*(n+1)^3-56*(n+1)²+66*(n+1))/90` -/
def P10658313878840469719.Spec : Prop :=
  ∀ n, P10658313878840469719.a n = (A166819 (n + 1) : ℚ)

end A166819

/-! ## A166819.P887559522012633663

`A166801(n+1)-A166776(n+1)`
-/

namespace A166819.P887559522012633663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166801 (n + 1) - A166776 (n + 1)

end

end A166819.P887559522012633663

namespace A166819

/-- `A166801(n+1)-A166776(n+1)` -/
def P887559522012633663.Spec : Prop :=
  ∀ n, P887559522012633663.a n = A166819 (n + 1)

theorem P887559522012633663.correct : P887559522012633663.Spec := by
  intro n
  simp only [A166819, Nat.add_sub_cancel, A166819.P887559522012633663.a, A166819.P334354906009438737.f1, A166819.P334354906009438737.a, A007584, A007584.P4702603288148869977.a, A060099, A060099.P8454151791043827126.a, A166776, A166776.P2456364998387965539.f2, A166776.P2456364998387965539.f1, A166776.P2456364998387965539.a, A166801, A166801.P8919905892571881149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166819

/-! ## A166819.P18442147478706322801

`A166801(n+1)-(A166814(n+1)+A166796(n+1))`
-/

namespace A166819.P18442147478706322801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166801 (n + 1) - (A166814 (n + 1) + A166796 (n + 1))

end

end A166819.P18442147478706322801

namespace A166819

/-- `A166801(n+1)-(A166814(n+1)+A166796(n+1))` -/
def P18442147478706322801.Spec : Prop :=
  ∀ n, P18442147478706322801.a n = A166819 (n + 1)

end A166819

/-! ## A166819.P5812193599832349137

`A166801(n+1)+A166842(n+1)-A166831(n+1)`
-/

namespace A166819.P5812193599832349137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166801 (n + 1) + (A166842 (n + 1) - A166831 (n + 1))

end

end A166819.P5812193599832349137

namespace A166819

/-- `A166801(n+1)+A166842(n+1)-A166831(n+1)` -/
def P5812193599832349137.Spec : Prop :=
  ∀ n, P5812193599832349137.a n = A166819 (n + 1)

end A166819

/-! ## A166819.P3709956718872669056

`A166842(n+1)+A166801(n+1)%(A166842(n+1)+A166776(n+1))`
-/

namespace A166819.P3709956718872669056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166842 (n + 1) + Int.tmod (A166801 (n + 1)) (A166842 (n + 1) + A166776 (n + 1))

end

end A166819.P3709956718872669056

namespace A166819

/-- `A166842(n+1)+A166801(n+1)%(A166842(n+1)+A166776(n+1))` -/
def P3709956718872669056.Spec : Prop :=
  ∀ n, P3709956718872669056.a n = A166819 (n + 1)

end A166819

/-! ## A166819.P334354906009438737

`A060099(2*n)+∑[A007584(n)+C(n, 2)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166819

/-- `A060099(2*n)+∑[A007584(n)+C(n, 2)]` -/
def P334354906009438737.Spec : Prop :=
  ∀ n, P334354906009438737.a n = A166819 (n + 1)

theorem P334354906009438737.correct : P334354906009438737.Spec := by
  intro n
  simp only [A166819, Nat.add_sub_cancel]

end A166819

/-!
# A166820: Number of nX3 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166820, there is no canonical definition to state claims against.
-/

/-! ## A166820.P17082992448353862512

`A166802(n+1)-(A166815(n+1)+A166797(n+1))`
-/

namespace A166820.P17082992448353862512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166802 (n + 1) - (A166815 (n + 1) + A166797 (n + 1))

end

end A166820.P17082992448353862512

/-!
# A166822: Number of nX3 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

The programs for A166822, there is no canonical definition to state claims against.
-/

/-! ## A166822.P17534541052967561122

`A166804(n+1)-(A166817(n+1)+A166799(n+1))`
-/

namespace A166822.P17534541052967561122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166804 (n + 1) - (A166817 (n + 1) + A166799 (n + 1))

end

end A166822.P17534541052967561122

/-!
# A166826: Number of n X 2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166826, the canonical program `A166826.P2968407093757897724` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166826 has offset 1).

The definition of A166826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166826.P9731773112287266787

`((n+1)^6+18*(n+1)^5+100*(n+1)^4-731*(n+1)²+792*(n+1)-180)/180`
-/

namespace A166826.P9731773112287266787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 6 + 18 * (n + 1) ^ 5 + 100 * (n + 1) ^ 4 : ℤ) - (731 * (n + 1) ^ 2 : ℤ) + (792 * (n + 1) : ℤ) - 180 : ℚ) / 180

end

end A166826.P9731773112287266787

namespace A166826

/-- `((n+1)^6+18*(n+1)^5+100*(n+1)^4-731*(n+1)²+792*(n+1)-180)/180` -/
def P9731773112287266787.Spec : Prop :=
  ∀ n, P9731773112287266787.a n = (A166826 (n + 1) : ℚ)

end A166826

/-! ## A166826.P2968407093757897724

`A166838(n+1)+C(n, 3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166826

/-- `A166838(n+1)+C(n, 3)` -/
def P2968407093757897724.Spec : Prop :=
  ∀ n, P2968407093757897724.a n = A166826 (n + 1)

theorem P2968407093757897724.correct : P2968407093757897724.Spec := by
  intro n
  simp only [A166826, Nat.add_sub_cancel]

end A166826

/-! ## A166826.P6015178419486782269

`A166777(n+1)-A166815(n+1)`
-/

namespace A166826.P6015178419486782269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - A166815 (n + 1)

end

end A166826.P6015178419486782269

namespace A166826

/-- `A166777(n+1)-A166815(n+1)` -/
def P6015178419486782269.Spec : Prop :=
  ∀ n, P6015178419486782269.a n = A166826 (n + 1)

theorem P6015178419486782269.correct : P6015178419486782269.Spec := by
  intro n
  simp only [A166826, Nat.add_sub_cancel, A166826.P6015178419486782269.a, A166826.P2968407093757897724.a, A166777, A166777.P11006328985908807965.a, A166815, A166815.P14232837679894143534.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166826

/-! ## A166826.P16744478885292348607

`A166838(n+1)+A000292(n)-n²`
-/

namespace A166826.P16744478885292348607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166838 (n + 1) + (A000292 n - (n ^ 2 : ℤ))

end

end A166826.P16744478885292348607

namespace A166826

/-- `A166838(n+1)+A000292(n)-n²` -/
def P16744478885292348607.Spec : Prop :=
  ∀ n, P16744478885292348607.a n = A166826 (n + 1)

theorem P16744478885292348607.correct : P16744478885292348607.Spec := by
  intro n
  simp only [A166826, Nat.add_sub_cancel, A166826.P16744478885292348607.a, A166826.P2968407093757897724.a, A000292, A000292.P18322089543142633594.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, A166815, A166815.P14232837679894143534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166826

/-! ## A166826.P6656482686783937010

`A166777(n+1)-(A166797(n+1)-C(n, 3))`
-/

namespace A166826.P6656482686783937010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - (A166797 (n + 1) - (Nat.choose n 3 : ℤ))

end

end A166826.P6656482686783937010

namespace A166826

/-- `A166777(n+1)-(A166797(n+1)-C(n, 3))` -/
def P6656482686783937010.Spec : Prop :=
  ∀ n, P6656482686783937010.a n = A166826 (n + 1)

theorem P6656482686783937010.correct : P6656482686783937010.Spec := by
  intro n
  simp only [A166826, Nat.add_sub_cancel, A166826.P6656482686783937010.a, A166826.P2968407093757897724.a, A166777, A166777.P11006328985908807965.a, A166797, A166797.P17921625085108199249.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, A166815, A166815.P14232837679894143534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166826

/-! ## A166826.P15712637206081953403

`A166838(n+1)+Δ[A000332(n)]`
-/

namespace A166826.P15712637206081953403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166838 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166826.P15712637206081953403

namespace A166826

/-- `A166838(n+1)+Δ[A000332(n)]` -/
def P15712637206081953403.Spec : Prop :=
  ∀ n, P15712637206081953403.a n = A166826 (n + 1)

theorem P15712637206081953403.correct : P15712637206081953403.Spec := by
  intro n
  simp only [A166826, Nat.add_sub_cancel, A166826.P15712637206081953403.f1, A166826.P15712637206081953403.a, A166826.P2968407093757897724.a, A000332, A000332.P5946310388023661265.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, A166815, A166815.P14232837679894143534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166826

/-!
# A166827: Number of nX2 1..5 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166827, there is no canonical definition to state claims against.
-/

/-! ## A166827.P9260733782492559917

`A166839(n+1)+C(n, 4)`
-/

namespace A166827.P9260733782492559917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166839 (n + 1) + (Nat.choose n 4 : ℤ)

end

end A166827.P9260733782492559917

/-! ## A166827.P5119710057033635453

`A166839(n+1)+A000332(n)`
-/

namespace A166827.P5119710057033635453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166839 (n + 1) + A000332 n

end

end A166827.P5119710057033635453

/-! ## A166827.P4528719015801093010

`A166778(n+1)-A166816(n+1)`
-/

namespace A166827.P4528719015801093010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166778 (n + 1) - A166816 (n + 1)

end

end A166827.P4528719015801093010

/-! ## A166827.P649140916804612143

`A166839(n+1)+A034827(n)/2`
-/

namespace A166827.P649140916804612143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166839 (n + 1) : ℚ) + (A034827 n : ℚ) / 2

end

end A166827.P649140916804612143

/-! ## A166827.P3112694017688768577

`A166839(n+1)+Δ[A000389(n)]`
-/

namespace A166827.P3112694017688768577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166839 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166827.P3112694017688768577

/-!
# A166828: Number of n X 2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166828, there is no canonical definition to state claims against.
-/

/-! ## A166828.P8145235090621389489

`A166840(n+1)+C(n, 5)`
-/

namespace A166828.P8145235090621389489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166840 (n + 1) + (Nat.choose n 5 : ℤ)

end

end A166828.P8145235090621389489

/-! ## A166828.P17292582696060977444

`A166840(n+1)+A000389(n)`
-/

namespace A166828.P17292582696060977444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166840 (n + 1) + A000389 n

end

end A166828.P17292582696060977444

/-! ## A166828.P488771074181020001

`A166779(n+1)-A166817(n+1)`
-/

namespace A166828.P488771074181020001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - A166817 (n + 1)

end

end A166828.P488771074181020001

/-! ## A166828.P10921836485933554316

`A166779(n+1)-(A166799(n+1)-C(n, 5))`
-/

namespace A166828.P10921836485933554316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - (A166799 (n + 1) - (Nat.choose n 5 : ℤ))

end

end A166828.P10921836485933554316

/-! ## A166828.P1949414278892403063

`A166840(n+1)+Δ[A000579(n)]`
-/

namespace A166828.P1949414278892403063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166840 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166828.P1949414278892403063

/-!
# A166829: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166829, there is no canonical definition to state claims against.
-/

/-! ## A166829.P8504058723789528302

`A166841(n+1)+A000579(n)`
-/

namespace A166829.P8504058723789528302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + A000579 n

end

end A166829.P8504058723789528302

/-! ## A166829.P3897320026019830734

`A166841(n+1)+A000910(n)/5`
-/

namespace A166829.P3897320026019830734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166841 (n + 1) : ℚ) + (A000910 n : ℚ) / 5

end

end A166829.P3897320026019830734

/-! ## A166829.P18303380777763886509

`A166841(n+1)+A271040(n)/10`
-/

namespace A166829.P18303380777763886509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166841 (n + 1) : ℚ) + (A271040 n : ℚ) / 10

end

end A166829.P18303380777763886509

/-! ## A166829.P9690278413219851087

`A166841(n+1)+∑[A000389(abs(1-n))]`
-/

namespace A166829.P9690278413219851087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166829.P9690278413219851087

/-! ## A166829.P224656526986140985

`A166841(n+1)+floor(round(A053625(n)/12)/12)/5`
-/

namespace A166829.P224656526986140985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166841 (n + 1) : ℚ) + (⌊(SequenceMachineLib.roundAway ((A053625 n : ℚ) / 12) : ℚ) / 12⌋ : ℚ) / 5

end

end A166829.P224656526986140985

/-! ## A166829.P4426664539412682650

`A166841(n+1)+A008859(n)-A006261(n)`
-/

namespace A166829.P4426664539412682650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + (A008859 n - A006261 n)

end

end A166829.P4426664539412682650

/-! ## A166829.P14097487400959767085

`A166841(n+1)+A115567(n)-A057703(n)`
-/

namespace A166829.P14097487400959767085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + (A115567 n - A057703 n)

end

end A166829.P14097487400959767085

/-! ## A166829.P5787844082871885435

`A166841(n+1)+A362194(n)-A362193(n)`
-/

namespace A166829.P5787844082871885435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + (A362194 n - A362193 n)

end

end A166829.P5787844082871885435

/-! ## A166829.P15773303629791319777

`A166780(n+1)+A000579(n)-A166800(n+1)`
-/

namespace A166829.P15773303629791319777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166780 (n + 1) + (A000579 n - A166800 (n + 1))

end

end A166829.P15773303629791319777

/-! ## A166829.P17633468893843050585

`A166841(n+1)+A116082(n+1)-(A116082(n)+A006261(n))`
-/

namespace A166829.P17633468893843050585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + (A116082 (n + 1) - (A116082 n + A006261 n))

end

end A166829.P17633468893843050585

/-!
# A166830: Number of n X 3 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166830, the canonical program `A166830.P5934880011950380253` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166830 has offset 1).

The definition of A166830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166830.P3020233895433842580

`((n+1)^3+6*(n+1)²+11*(n+1)-6)/6`
-/

namespace A166830.P3020233895433842580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 + 6 * (n + 1) ^ 2 + 11 * (n + 1) : ℤ) - 6 : ℚ) / 6

end

end A166830.P3020233895433842580

namespace A166830

/-- `((n+1)^3+6*(n+1)²+11*(n+1)-6)/6` -/
def P3020233895433842580.Spec : Prop :=
  ∀ n, P3020233895433842580.a n = (A166830 (n + 1) : ℚ)

end A166830

/-! ## A166830.P5934880011950380253

`floor(A000292(n+2)^3/(A000292(n+2)+1)²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166830

/-- `floor(A000292(n+2)^3/(A000292(n+2)+1)²)` -/
def P5934880011950380253.Spec : Prop :=
  ∀ n, P5934880011950380253.a n = A166830 (n + 1)

theorem P5934880011950380253.correct : P5934880011950380253.Spec := by
  intro n
  simp only [A166830, Nat.add_sub_cancel]

end A166830

/-! ## A166830.P5009661679871515219

`C(n+4, 3)-2`
-/

namespace A166830.P5009661679871515219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℤ) - 2

end

end A166830.P5009661679871515219

namespace A166830

/-- `C(n+4, 3)-2` -/
def P5009661679871515219.Spec : Prop :=
  ∀ n, P5009661679871515219.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P7056992335968837732

`record[abs(2-C(n, 3))]`
-/

namespace A166830.P7056992335968837732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose n 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166830.P7056992335968837732

namespace A166830

/-- `record[abs(2-C(n, 3))]` -/
def P7056992335968837732.Spec : Prop :=
  ∀ n, P7056992335968837732.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P2680919225991770156

`sqrt(record[(2-C(n, 3))²])`
-/

namespace A166830.P2680919225991770156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose n 3 : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A166830.P2680919225991770156

namespace A166830

/-- `sqrt(record[(2-C(n, 3))²])` -/
def P2680919225991770156.Spec : Prop :=
  ∀ n, P2680919225991770156.a n = (A166830 (n + 1) : ℝ)

end A166830

/-! ## A166830.P11336355728112643960

`abs(a(n-2)+(n+2)²)` with `a(0)=2, a(1)=8`
-/

namespace A166830.P11336355728112643960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + (n + 2) ^ 2

end

end A166830.P11336355728112643960

namespace A166830

/-- `abs(a(n-2)+(n+2)²)` -/
def P11336355728112643960.Spec : Prop :=
  ∀ n, (P11336355728112643960.a n : ℤ) = A166830 (n + 1)

end A166830

/-! ## A166830.P13153944180806841550

`floor(a(n-2)+(n+2)²)` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A166830.P13153944180806841550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + (n + 2) ^ 2

end

end A166830.P13153944180806841550

namespace A166830

/-- `floor(a(n-2)+(n+2)²)` -/
def P13153944180806841550.Spec : Prop :=
  ∀ n, (P13153944180806841550.a n : ℤ) = A166830 (n + 1)

end A166830

/-! ## A166830.P12217185268018292300

`ceil(a(n-2)+(n+2)²)` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A166830.P12217185268018292300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + (n + 2) ^ 2

end

end A166830.P12217185268018292300

namespace A166830

/-- `ceil(a(n-2)+(n+2)²)` -/
def P12217185268018292300.Spec : Prop :=
  ∀ n, (P12217185268018292300.a n : ℤ) = A166830 (n + 1)

end A166830

/-! ## A166830.P8160502779737069337

`round(a(n-2)+(n+2)²)` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A166830.P8160502779737069337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + (n + 2) ^ 2

end

end A166830.P8160502779737069337

namespace A166830

/-- `round(a(n-2)+(n+2)²)` -/
def P8160502779737069337.Spec : Prop :=
  ∀ n, (P8160502779737069337.a n : ℤ) = A166830 (n + 1)

end A166830

/-! ## A166830.P6785777327959899417

`∑[∑[2*a(n-1)-n]]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A166830.P6785777327959899417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 4] fun n f2 =>
  2 * f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166830.P6785777327959899417

namespace A166830

/-- `∑[∑[2*a(n-1)-n]]` -/
def P6785777327959899417.Spec : Prop :=
  ∀ n, P6785777327959899417.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P5131912312274109469

`∑[∑[floor(a(n-1)²/n)]]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A166830.P5131912312274109469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 4] fun n f2 =>
  ⌊(f2 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166830.P5131912312274109469

namespace A166830

/-- `∑[∑[floor(a(n-1)²/n)]]` -/
def P5131912312274109469.Spec : Prop :=
  ∀ n, P5131912312274109469.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P14394723963781912711

`∑[∑[a(n-1)-(n-a(n-1))]]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A166830.P14394723963781912711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 4] fun n f2 =>
  f2 (n - 1) - ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166830.P14394723963781912711

namespace A166830

/-- `∑[∑[a(n-1)-(n-a(n-1))]]` -/
def P14394723963781912711.Spec : Prop :=
  ∀ n, P14394723963781912711.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P12052953479026869140

`A062748(n)-1`
-/

namespace A166830.P12052953479026869140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n - 1

end

end A166830.P12052953479026869140

namespace A166830

/-- `A062748(n)-1` -/
def P12052953479026869140.Spec : Prop :=
  ∀ n, P12052953479026869140.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P13814316045449678354

`A092286(n)+2`
-/

namespace A166830.P13814316045449678354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + 2

end

end A166830.P13814316045449678354

namespace A166830

/-- `A092286(n)+2` -/
def P13814316045449678354.Spec : Prop :=
  ∀ n, P13814316045449678354.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P17363375348875573543

`Δ[A005582(n)]+n`
-/

namespace A166830.P17363375348875573543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A166830.P17363375348875573543

namespace A166830

/-- `Δ[A005582(n)]+n` -/
def P17363375348875573543.Spec : Prop :=
  ∀ n, P17363375348875573543.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P11681713423335184185

`A222001(n+1)-4`
-/

namespace A166830.P11681713423335184185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) - 4

end

end A166830.P11681713423335184185

namespace A166830

/-- `A222001(n+1)-4` -/
def P11681713423335184185.Spec : Prop :=
  ∀ n, P11681713423335184185.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P10302745644124540428

`A005286(n)+1+n`
-/

namespace A166830.P10302745644124540428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n + 1 + (n : ℤ)

end

end A166830.P10302745644124540428

namespace A166830

/-- `A005286(n)+1+n` -/
def P10302745644124540428.Spec : Prop :=
  ∀ n, P10302745644124540428.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P6994765593534390745

`A005586(n)+2+n`
-/

namespace A166830.P6994765593534390745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + 2 + (n : ℤ)

end

end A166830.P6994765593534390745

namespace A166830

/-- `A005586(n)+2+n` -/
def P6994765593534390745.Spec : Prop :=
  ∀ n, P6994765593534390745.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P10914772434873388639

`∑[∑[A254667(n)+2]]`
-/

namespace A166830.P10914772434873388639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166830.P10914772434873388639

namespace A166830

/-- `∑[∑[A254667(n)+2]]` -/
def P10914772434873388639.Spec : Prop :=
  ∀ n, P10914772434873388639.a n = A166830 (n + 1)

end A166830

/-! ## A166830.P3088789403990833614

`A008778(n)+Δ[n²]`
-/

namespace A166830.P3088789403990833614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A166830.P3088789403990833614

namespace A166830

/-- `A008778(n)+Δ[n²]` -/
def P3088789403990833614.Spec : Prop :=
  ∀ n, P3088789403990833614.a n = A166830 (n + 1)

end A166830

/-!
# A166831: Number of nX3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166831, the canonical program `A166831.P9542562262896504832` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166831 has offset 1).

The definition of A166831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166831.P3030165338444561246

`A166842(n+1)+A166776(n+1)`
-/

namespace A166831.P3030165338444561246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166842 (n + 1) + A166776 (n + 1)

end

end A166831.P3030165338444561246

namespace A166831

/-- `A166842(n+1)+A166776(n+1)` -/
def P3030165338444561246.Spec : Prop :=
  ∀ n, P3030165338444561246.a n = A166831 (n + 1)

end A166831

/-! ## A166831.P9542562262896504832

`A166776(n+1)+A060103(n)+A001296(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166831

/-- `A166776(n+1)+A060103(n)+A001296(n)` -/
def P9542562262896504832.Spec : Prop :=
  ∀ n, P9542562262896504832.a n = A166831 (n + 1)

theorem P9542562262896504832.correct : P9542562262896504832.Spec := by
  intro n
  simp only [A166831, Nat.add_sub_cancel]

end A166831

/-! ## A166831.P10279289728766449882

`A166796(n+1)+A166842(n+1)+A166814(n+1)`
-/

namespace A166831.P10279289728766449882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166796 (n + 1) + (A166842 (n + 1) + A166814 (n + 1))

end

end A166831.P10279289728766449882

namespace A166831

/-- `A166796(n+1)+A166842(n+1)+A166814(n+1)` -/
def P10279289728766449882.Spec : Prop :=
  ∀ n, P10279289728766449882.a n = A166831 (n + 1)

end A166831

/-! ## A166831.P192375058905962215

`A166801(n+1)+A166842(n+1)-A166819(n+1)`
-/

namespace A166831.P192375058905962215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166801 (n + 1) + (A166842 (n + 1) - A166819 (n + 1))

end

end A166831.P192375058905962215

namespace A166831

/-- `A166801(n+1)+A166842(n+1)-A166819(n+1)` -/
def P192375058905962215.Spec : Prop :=
  ∀ n, P192375058905962215.a n = A166831 (n + 1)

end A166831

/-!
# A166832: Number of nX3 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166832, there is no canonical definition to state claims against.
-/

/-! ## A166832.P627354840985946295

`A166826(n+1)+A166843(n+1)+A166838(n+1)`
-/

namespace A166832.P627354840985946295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166826 (n + 1) + (A166843 (n + 1) + A166838 (n + 1))

end

end A166832.P627354840985946295

/-!
# A166833: Number of nX3 1..5 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166833, there is no canonical definition to state claims against.
-/

/-! ## A166833.P16853693602448481017

`A166827(n+1)+A166844(n+1)+A166839(n+1)`
-/

namespace A166833.P16853693602448481017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166827 (n + 1) + (A166844 (n + 1) + A166839 (n + 1))

end

end A166833.P16853693602448481017

/-!
# A166834: Number of nX3 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

The programs for A166834, there is no canonical definition to state claims against.
-/

/-! ## A166834.P16213606164197919991

`A166828(n+1)+A166845(n+1)+A166840(n+1)`
-/

namespace A166834.P16213606164197919991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166828 (n + 1) + (A166845 (n + 1) + A166840 (n + 1))

end

end A166834.P16213606164197919991

/-!
# A166838: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166838, the canonical program `A166838.P6310268772221810504` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166838 has offset 1).

The definition of A166838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166838.P5348709413351191910

`((n+1)^6+18*(n+1)^5+100*(n+1)^4-30*(n+1)^3-551*(n+1)²+462*(n+1))/180`
-/

namespace A166838.P5348709413351191910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 6 + 18 * (n + 1) ^ 5 + 100 * (n + 1) ^ 4 : ℤ) - (30 * (n + 1) ^ 3 : ℤ) - (551 * (n + 1) ^ 2 : ℤ) + (462 * (n + 1) : ℤ) : ℚ) / 180

end

end A166838.P5348709413351191910

namespace A166838

/-- `((n+1)^6+18*(n+1)^5+100*(n+1)^4-30*(n+1)^3-551*(n+1)²+462*(n+1))/180` -/
def P5348709413351191910.Spec : Prop :=
  ∀ n, P5348709413351191910.a n = (A166838 (n + 1) : ℚ)

end A166838

/-! ## A166838.P4841954643386950884

`A166826(n+1)-C(n, 3)`
-/

namespace A166838.P4841954643386950884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166826 (n + 1) - (Nat.choose n 3 : ℤ)

end

end A166838.P4841954643386950884

namespace A166838

/-- `A166826(n+1)-C(n, 3)` -/
def P4841954643386950884.Spec : Prop :=
  ∀ n, P4841954643386950884.a n = A166838 (n + 1)

theorem P4841954643386950884.correct : P4841954643386950884.Spec := by
  intro n
  simp only [A166838, Nat.add_sub_cancel, A166838.P4841954643386950884.a, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, A166815, A166815.P14232837679894143534.a, A166826, A166826.P2968407093757897724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166838

/-! ## A166838.P3372096212810604934

`A166777(n+1)-A166797(n+1)`
-/

namespace A166838.P3372096212810604934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - A166797 (n + 1)

end

end A166838.P3372096212810604934

namespace A166838

/-- `A166777(n+1)-A166797(n+1)` -/
def P3372096212810604934.Spec : Prop :=
  ∀ n, P3372096212810604934.a n = A166838 (n + 1)

theorem P3372096212810604934.correct : P3372096212810604934.Spec := by
  intro n
  simp only [A166838, Nat.add_sub_cancel, A166838.P3372096212810604934.a, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, A166777, A166777.P11006328985908807965.a, A166797, A166797.P17921625085108199249.a, A166815, A166815.P14232837679894143534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166838

/-! ## A166838.P6310268772221810504

`A166815(n+1)-2*A005582(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166838

/-- `A166815(n+1)-2*A005582(n)` -/
def P6310268772221810504.Spec : Prop :=
  ∀ n, P6310268772221810504.a n = A166838 (n + 1)

theorem P6310268772221810504.correct : P6310268772221810504.Spec := by
  intro n
  simp only [A166838, Nat.add_sub_cancel]

end A166838

/-! ## A166838.P16799652570627769452

`A166826(n+1)+n²-A000292(n)`
-/

namespace A166838.P16799652570627769452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166826 (n + 1) + ((n ^ 2 : ℤ) - A000292 n)

end

end A166838.P16799652570627769452

namespace A166838

/-- `A166826(n+1)+n²-A000292(n)` -/
def P16799652570627769452.Spec : Prop :=
  ∀ n, P16799652570627769452.a n = A166838 (n + 1)

theorem P16799652570627769452.correct : P16799652570627769452.Spec := by
  intro n
  simp only [A166838, Nat.add_sub_cancel, A166838.P16799652570627769452.a, A166838.P6310268772221810504.a, A000292, A000292.P18322089543142633594.a, A005582, A005582.P2745663949563023269.a, A166815, A166815.P14232837679894143534.a, A166826, A166826.P2968407093757897724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166838

/-! ## A166838.P1716981542061777796

`A166826(n+1)-Δ[A000332(n)]`
-/

namespace A166838.P1716981542061777796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166826 (n + 1) - (f1 (n + 1) - f1 n)

end

end A166838.P1716981542061777796

namespace A166838

/-- `A166826(n+1)-Δ[A000332(n)]` -/
def P1716981542061777796.Spec : Prop :=
  ∀ n, P1716981542061777796.a n = A166838 (n + 1)

theorem P1716981542061777796.correct : P1716981542061777796.Spec := by
  intro n
  simp only [A166838, Nat.add_sub_cancel, A166838.P1716981542061777796.f1, A166838.P1716981542061777796.a, A166838.P6310268772221810504.a, A000332, A000332.P5946310388023661265.a, A005582, A005582.P2745663949563023269.a, A166815, A166815.P14232837679894143534.a, A166826, A166826.P2968407093757897724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166838

/-!
# A166839: Number of nX2 1..5 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166839, there is no canonical definition to state claims against.
-/

/-! ## A166839.P18161455675494774051

`A166827(n+1)-A000332(n)`
-/

namespace A166839.P18161455675494774051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166827 (n + 1) - A000332 n

end

end A166839.P18161455675494774051

/-! ## A166839.P2090816642801720644

`A166778(n+1)-A166798(n+1)`
-/

namespace A166839.P2090816642801720644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166778 (n + 1) - A166798 (n + 1)

end

end A166839.P2090816642801720644

/-! ## A166839.P12324162344490627983

`A166827(n+1)-A034827(n)/2`
-/

namespace A166839.P12324162344490627983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166827 (n + 1) : ℚ) - (A034827 n : ℚ) / 2

end

end A166839.P12324162344490627983

/-! ## A166839.P16380814315829932199

`A166778(n+1)-(A166816(n+1)+C(n, 4))`
-/

namespace A166839.P16380814315829932199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166778 (n + 1) - (A166816 (n + 1) + (Nat.choose n 4 : ℤ))

end

end A166839.P16380814315829932199

/-! ## A166839.P69961224617520701

`A166827(n+1)-Δ[A000389(n)]`
-/

namespace A166839.P69961224617520701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166827 (n + 1) - (f1 (n + 1) - f1 n)

end

end A166839.P69961224617520701

/-!
# A166840: Number of n X 2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166840, there is no canonical definition to state claims against.
-/

/-! ## A166840.P10223530845546801684

`A166828(n+1)-C(n, 5)`
-/

namespace A166840.P10223530845546801684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166828 (n + 1) - (Nat.choose n 5 : ℤ)

end

end A166840.P10223530845546801684

/-! ## A166840.P6924919592888590525

`A166828(n+1)-A000389(n)`
-/

namespace A166840.P6924919592888590525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166828 (n + 1) - A000389 n

end

end A166840.P6924919592888590525

/-! ## A166840.P2037370955088440847

`A166779(n+1)-A166799(n+1)`
-/

namespace A166840.P2037370955088440847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - A166799 (n + 1)

end

end A166840.P2037370955088440847

/-! ## A166840.P7388927177085619066

`abs(A000389(n)-A166828(-xor(n, -1)))`
-/

namespace A166840.P7388927177085619066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000389 n - A166828 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A166840.P7388927177085619066

/-! ## A166840.P4759237753095332822

`A166828(n+1)-Δ[A000579(n)]`
-/

namespace A166840.P4759237753095332822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166828 (n + 1) - (f1 (n + 1) - f1 n)

end

end A166840.P4759237753095332822

/-!
# A166841: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166841, there is no canonical definition to state claims against.
-/

/-! ## A166841.P6286470697846608293

`A166829(n+1)-A000579(n)`
-/

namespace A166841.P6286470697846608293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - A000579 n

end

end A166841.P6286470697846608293

/-! ## A166841.P7900103947573076844

`A166780(n+1)-A166800(n+1)`
-/

namespace A166841.P7900103947573076844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166780 (n + 1) - A166800 (n + 1)

end

end A166841.P7900103947573076844

/-! ## A166841.P15971113448158926218

`A166829(n+1)-A000910(n)/5`
-/

namespace A166841.P15971113448158926218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166829 (n + 1) : ℚ) - (A000910 n : ℚ) / 5

end

end A166841.P15971113448158926218

/-! ## A166841.P2954226555232745115

`A166829(n+1)-A271040(n)/10`
-/

namespace A166841.P2954226555232745115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166829 (n + 1) : ℚ) - (A271040 n : ℚ) / 10

end

end A166841.P2954226555232745115

/-! ## A166841.P2378457885531922079

`A166829(n+1)-∑[A000389(abs(1-n))]`
-/

namespace A166841.P2378457885531922079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166841.P2378457885531922079

/-! ## A166841.P611506187391186770

`A166829(n+1)-(A008859(n)-A006261(n))`
-/

namespace A166841.P611506187391186770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (A008859 n - A006261 n)

end

end A166841.P611506187391186770

/-! ## A166841.P14789048435822320337

`A166829(n+1)-(A115567(n)-A057703(n))`
-/

namespace A166841.P14789048435822320337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (A115567 n - A057703 n)

end

end A166841.P14789048435822320337

/-! ## A166841.P16546720151516156947

`A166829(n+1)-(∑[A000389(n)]-A000389(n))`
-/

namespace A166841.P16546720151516156947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A000389 n)

end

end A166841.P16546720151516156947

/-! ## A166841.P5588626758005719969

`A166829(n+1)-(A115567(n)+1-A006261(n))`
-/

namespace A166841.P5588626758005719969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (A115567 n + (1 - A006261 n))

end

end A166841.P5588626758005719969

/-! ## A166841.P16583810412709422859

`A166829(n+1)-(A008859(n)+A008859(n)-A008859(n+1))`
-/

namespace A166841.P16583810412709422859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (A008859 n + (A008859 n - A008859 (n + 1)))

end

end A166841.P16583810412709422859

/-! ## A166841.P16483635968268513248

`A166829(n+1)-(A115567(n)-(A055795(n+1)+A000389(n)))`
-/

namespace A166841.P16483635968268513248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (A115567 n - (A055795 (n + 1) + A000389 n))

end

end A166841.P16483635968268513248

/-! ## A166841.P9987793070826802998

`A166829(n+1)-(A116082(n+1)-(A116082(n)+A006261(n)))`
-/

namespace A166841.P9987793070826802998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - (A116082 (n + 1) - (A116082 n + A006261 n))

end

end A166841.P9987793070826802998

/-!
# A166842: Number of n X 3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166842, the canonical program `A166842.P16402790300489593416` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166842 has offset 1).

The definition of A166842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166842.P412875411337151345

`1/90*(n+1)*((n+1)^5+9*(n+1)^4+40*(n+1)^3+30*(n+1)²+4*(n+1)+6)`
-/

namespace A166842.P412875411337151345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 90 * ((n + 1) * ((n + 1) ^ 5 + 9 * (n + 1) ^ 4 + 40 * (n + 1) ^ 3 + 30 * (n + 1) ^ 2 + 4 * (n + 1) + 6) : ℚ)

end

end A166842.P412875411337151345

namespace A166842

/-- `1/90*(n+1)*((n+1)^5+9*(n+1)^4+40*(n+1)^3+30*(n+1)²+4*(n+1)+6)` -/
def P412875411337151345.Spec : Prop :=
  ∀ n, P412875411337151345.a n = (A166842 (n + 1) : ℚ)

end A166842

/-! ## A166842.P16402790300489593416

`A060103(n)+∑[n*∑[n]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166842

/-- `A060103(n)+∑[n*∑[n]]` -/
def P16402790300489593416.Spec : Prop :=
  ∀ n, P16402790300489593416.a n = A166842 (n + 1)

theorem P16402790300489593416.correct : P16402790300489593416.Spec := by
  intro n
  simp only [A166842, Nat.add_sub_cancel]

end A166842

/-! ## A166842.P5162808800888773959

`A166831(n+1)-(∑[n]+n*(∑[∑[n+3]]+n))`
-/

namespace A166842.P5162808800888773959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166831 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j + n) : ℕ) : ℤ)

end

end A166842.P5162808800888773959

namespace A166842

/-- `A166831(n+1)-(∑[n]+n*(∑[∑[n+3]]+n))` -/
def P5162808800888773959.Spec : Prop :=
  ∀ n, P5162808800888773959.a n = A166842 (n + 1)

end A166842

/-! ## A166842.P15542660844493186430

`∑[∑[A162668(n)+A084849(n)]]`
-/

namespace A166842.P15542660844493186430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + A084849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166842.P15542660844493186430

namespace A166842

/-- `∑[∑[A162668(n)+A084849(n)]]` -/
def P15542660844493186430.Spec : Prop :=
  ∀ n, P15542660844493186430.a n = A166842 (n + 1)

end A166842

/-! ## A166842.P16414440427231264629

`A060099(2*n)+A001296(n)`
-/

namespace A166842.P16414440427231264629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n) + A001296 n

end

end A166842.P16414440427231264629

namespace A166842

/-- `A060099(2*n)+A001296(n)` -/
def P16414440427231264629.Spec : Prop :=
  ∀ n, P16414440427231264629.a n = A166842 (n + 1)

end A166842

/-! ## A166842.P12216715141788216552

`A060099(2*n)+∑[A002411(n)]`
-/

namespace A166842.P12216715141788216552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166842.P12216715141788216552

namespace A166842

/-- `A060099(2*n)+∑[A002411(n)]` -/
def P12216715141788216552.Spec : Prop :=
  ∀ n, P12216715141788216552.a n = A166842 (n + 1)

end A166842

/-!
# A166843: Number of nX3 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166843, there is no canonical definition to state claims against.
-/

/-! ## A166843.P17525874593136267612

`A166832(n+1)-(A166838(n+1)+A166826(n+1))`
-/

namespace A166843.P17525874593136267612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166832 (n + 1) - (A166838 (n + 1) + A166826 (n + 1))

end

end A166843.P17525874593136267612

/-!
# A166844: Number of nX3 1..5 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166844, there is no canonical definition to state claims against.
-/

/-! ## A166844.P1717144745769056986

`A166833(n+1)-(A166839(n+1)+A166827(n+1))`
-/

namespace A166844.P1717144745769056986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166833 (n + 1) - (A166839 (n + 1) + A166827 (n + 1))

end

end A166844.P1717144745769056986

/-!
# A166845: Number of nX3 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

The programs for A166845, there is no canonical definition to state claims against.
-/

/-! ## A166845.P2119862703543854404

`A166834(n+1)-(A166840(n+1)+A166828(n+1))`
-/

namespace A166845.P2119862703543854404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166834 (n + 1) - (A166840 (n + 1) + A166828 (n + 1))

end

end A166845.P2119862703543854404

/-!
# A166849: Primes with digital root 1, 2, 4 or 8.

The programs for A166849, the canonical program `A166849.P15950350896798980255` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166849 has offset 1).

The definition of A166849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166849.P15950350896798980255

`p?[a(n-4)+9]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166849

/-- `p?[a(n-4)+9]` -/
def P15950350896798980255.Spec : Prop :=
  ∀ n, (P15950350896798980255.a n : ℤ) = A166849 (n + 1)

theorem P15950350896798980255.correct : P15950350896798980255.Spec := by
  intro n
  simp only [A166849, Nat.add_sub_cancel]

end A166849

/-! ## A166849.P13661294077424991566

`∪[A061237(n+1), A079132(n+1)]`
-/

namespace A166849.P13661294077424991566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P13661294077424991566

namespace A166849

/-- `∪[A061237(n+1), A079132(n+1)]` -/
def P13661294077424991566.Spec : Prop :=
  ∀ n, (P13661294077424991566.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P3260680537859310196

`∪[A079130(n+1), A079132(n+1)]`
-/

namespace A166849.P3260680537859310196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P3260680537859310196

namespace A166849

/-- `∪[A079130(n+1), A079132(n+1)]` -/
def P3260680537859310196.Spec : Prop :=
  ∀ n, (P3260680537859310196.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P3410840689281478513

`∪[A079132(n+1), A129805(n+1)]`
-/

namespace A166849.P3410840689281478513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P3410840689281478513

namespace A166849

/-- `∪[A079132(n+1), A129805(n+1)]` -/
def P3410840689281478513.Spec : Prop :=
  ∀ n, (P3410840689281478513.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P6860673755820953125

`p?[(n+1)*dr(n)%2]`
-/

namespace A166849.P6860673755820953125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.digitalRoot (n : ℤ) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166849.P6860673755820953125

namespace A166849

/-- `p?[(n+1)*dr(n)%2]` -/
def P6860673755820953125.Spec : Prop :=
  ∀ n, (P6860673755820953125.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P15662588753172112307

`p?[(n+1)*and(1, dr(n))]`
-/

namespace A166849.P15662588753172112307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166849.P15662588753172112307

namespace A166849

/-- `p?[(n+1)*and(1, dr(n))]` -/
def P15662588753172112307.Spec : Prop :=
  ∀ n, (P15662588753172112307.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P5043845462501719780

`p?[(n+1)*gcd(8, dr(n))]`
-/

namespace A166849.P5043845462501719780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 8 (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166849.P5043845462501719780

namespace A166849

/-- `p?[(n+1)*gcd(8, dr(n))]` -/
def P5043845462501719780.Spec : Prop :=
  ∀ n, (P5043845462501719780.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P6922461654708667648

`p?[A028836(n+1)]`
-/

namespace A166849.P6922461654708667648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166849.P6922461654708667648

namespace A166849

/-- `p?[A028836(n+1)]` -/
def P6922461654708667648.Spec : Prop :=
  ∀ n, P6922461654708667648.a n = A166849 (n + 1)

end A166849

/-! ## A166849.P11379461123814616975

`p?[A110659(n)+2*n]`
-/

namespace A166849.P11379461123814616975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166849.P11379461123814616975

namespace A166849

/-- `p?[A110659(n)+2*n]` -/
def P11379461123814616975.Spec : Prop :=
  ∀ n, P11379461123814616975.a n = A166849 (n + 1)

end A166849

/-! ## A166849.P11413819702723304779

`p?[comp[A090771(n+1)+3]+n]`
-/

namespace A166849.P11413819702723304779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166849.P11413819702723304779

namespace A166849

/-- `p?[comp[A090771(n+1)+3]+n]` -/
def P11413819702723304779.Spec : Prop :=
  ∀ n, (P11413819702723304779.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P16562906122144386765

`record[A020639(A028836(n+2))]`
-/

namespace A166849.P16562906122144386765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028836 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166849.P16562906122144386765

namespace A166849

/-- `record[A020639(A028836(n+2))]` -/
def P16562906122144386765.Spec : Prop :=
  ∀ n, P16562906122144386765.a n = A166849 (n + 1)

end A166849

/-! ## A166849.P1045167253631608168

`p?[A003485(n)+A002265(n)]`
-/

namespace A166849.P1045167253631608168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n + A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166849.P1045167253631608168

namespace A166849

/-- `p?[A003485(n)+A002265(n)]` -/
def P1045167253631608168.Spec : Prop :=
  ∀ n, P1045167253631608168.a n = A166849 (n + 1)

end A166849

/-! ## A166849.P11194551460391030846

`filter[A028836(n+1), A010051(#)]`
-/

namespace A166849.P11194551460391030846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166849.P11194551460391030846

namespace A166849

/-- `filter[A028836(n+1), A010051(#)]` -/
def P11194551460391030846.Spec : Prop :=
  ∀ n, P11194551460391030846.a n = A166849 (n + 1)

end A166849

/-! ## A166849.P882589687300918721

`p?[A047351(n+2)+A004524(n)]`
-/

namespace A166849.P882589687300918721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 2) + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166849.P882589687300918721

namespace A166849

/-- `p?[A047351(n+2)+A004524(n)]` -/
def P882589687300918721.Spec : Prop :=
  ∀ n, P882589687300918721.a n = A166849 (n + 1)

end A166849

/-! ## A166849.P790709976193854036

`∩[A000040(n+1), A028836(n+1)]`
-/

namespace A166849.P790709976193854036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P790709976193854036

namespace A166849

/-- `∩[A000040(n+1), A028836(n+1)]` -/
def P790709976193854036.Spec : Prop :=
  ∀ n, (P790709976193854036.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P9048205387904442598

`∩[A028836(n+1), A045319(n+1)]`
-/

namespace A166849.P9048205387904442598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P9048205387904442598

namespace A166849

/-- `∩[A028836(n+1), A045319(n+1)]` -/
def P9048205387904442598.Spec : Prop :=
  ∀ n, (P9048205387904442598.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P974474088730952859

`∩[A028836(n+1), A045344(n+1)]`
-/

namespace A166849.P974474088730952859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P974474088730952859

namespace A166849

/-- `∩[A028836(n+1), A045344(n+1)]` -/
def P974474088730952859.Spec : Prop :=
  ∀ n, (P974474088730952859.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P11228788036829419997

`∩[A028836(n+1), A106843(n+1)]`
-/

namespace A166849.P11228788036829419997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P11228788036829419997

namespace A166849

/-- `∩[A028836(n+1), A106843(n+1)]` -/
def P11228788036829419997.Spec : Prop :=
  ∀ n, (P11228788036829419997.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P13368857212464870797

`∩[A028836(n+1), A116974(n+1)]`
-/

namespace A166849.P13368857212464870797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P13368857212464870797

namespace A166849

/-- `∩[A028836(n+1), A116974(n+1)]` -/
def P13368857212464870797.Spec : Prop :=
  ∀ n, (P13368857212464870797.a n : ℤ) = A166849 (n + 1)

end A166849

/-! ## A166849.P352798108264573392

`∩[A028836(n+1), A182986(n+1)]`
-/

namespace A166849.P352798108264573392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166849.P352798108264573392

namespace A166849

/-- `∩[A028836(n+1), A182986(n+1)]` -/
def P352798108264573392.Spec : Prop :=
  ∀ n, (P352798108264573392.a n : ℤ) = A166849 (n + 1)

end A166849

/-!
# A166857: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^13 = I.

The programs for A166857, there is no canonical definition to state claims against.
-/

/-! ## A166857.P2896467760431803066

`A008486(∑[A295081(n)]-1)`
-/

namespace A166857.P2896467760431803066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A166857.P2896467760431803066

/-! ## A166857.P795681090135818334

`A008486(∑[A295081(n)%A290527(n)])`
-/

namespace A166857.P795681090135818334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295081 n) (A290527 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166857.P795681090135818334

/-! ## A166857.P4738556004211588641

`A302032(A167104(n+1))`
-/

namespace A166857.P4738556004211588641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A167104 (n + 1)).toNat

end

end A166857.P4738556004211588641

/-! ## A166857.P9616421176208682229

`A057889(Δ[Δ[A167648(n)]])`
-/

namespace A166857.P9616421176208682229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f1 (n + 1) - f1 n).toNat

end

end A166857.P9616421176208682229

/-! ## A166857.P1454500958081312958

`A081241(Δ[Δ[A167648(n)]])`
-/

namespace A166857.P1454500958081312958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (f1 (n + 1) - f1 n).toNat

end

end A166857.P1454500958081312958

/-!
# A166858: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^13 = I.

The programs for A166858, there is no canonical definition to state claims against.
-/

/-! ## A166858.P14590777324899470329

`A003946(n)-A185236(∑[A251759(n)])`
-/

namespace A166858.P14590777324899470329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A185236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166858.P14590777324899470329

/-! ## A166858.P4361338227890007023

`record[A326339(n)-A000387(A184955(n))]`
-/

namespace A166858.P4361338227890007023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 n - A000387 (A184955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166858.P4361338227890007023

/-! ## A166858.P2428296763437971986

`A003946(n)-A185036(A275077(n+1))`
-/

namespace A166858.P2428296763437971986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A185036 (A275077 (n + 1)).toNat

end

end A166858.P2428296763437971986

/-! ## A166858.P14740412073044740482

`A169017(n)-A034432(A000040(n+2))`
-/

namespace A166858.P14740412073044740482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169017 n - A034432 (A000040 (n + 2)).toNat

end

end A166858.P14740412073044740482

/-!
# A166859: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^13 = I.

The programs for A166859, there is no canonical definition to state claims against.
-/

/-! ## A166859.P9936844413210984220

`floor(5*4^(n-1))-A185255(2*(n+2))`
-/

namespace A166859.P9936844413210984220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (2 * (n + 2))

end

end A166859.P9936844413210984220

/-! ## A166859.P16920550461804411417

`abs(A185255(2*n+4)-round(record[5*(-2)^(n-2)]))`
-/

namespace A166859.P16920550461804411417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185255 (2 * n + 4) - SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A166859.P16920550461804411417

/-! ## A166859.P9023019678798551922

`abs(A185255(2*(n+2))-A003947(n))`
-/

namespace A166859.P9023019678798551922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185255 (2 * (n + 2)) - A003947 n|

end

end A166859.P9023019678798551922

/-! ## A166859.P6412865523449019460

`abs(A084215(2*n)-A185255(2*(n+2)))`
-/

namespace A166859.P6412865523449019460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084215 (2 * n) - A185255 (2 * (n + 2))|

end

end A166859.P6412865523449019460

/-! ## A166859.P9563411153393245758

`abs(A104721(2*n)-A185255(2*(n+2)))`
-/

namespace A166859.P9563411153393245758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104721 (2 * n) - A185255 (2 * (n + 2))|

end

end A166859.P9563411153393245758

/-!
# A166860: Number of saturated chains in the poset of Dyck paths ordered by inclusion.

The programs for A166860, there is no canonical definition to state claims against.
-/

/-! ## A166860.P7187408999338299807

`round(root(A178432(3*n), 3))`
-/

namespace A166860.P7187408999338299807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178432 (3 * n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A166860.P7187408999338299807

/-!
# A166861: Euler transform of Fibonacci numbers.

The programs for A166861, there is no canonical definition to state claims against.
-/

/-! ## A166861.P15856386619525855433

`A055086(A148700(n))`
-/

namespace A166861.P15856386619525855433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148700 n).toNat

end

end A166861.P15856386619525855433

/-! ## A166861.P18010242654880775151

`A074198(A148966(n))`
-/

namespace A166861.P18010242654880775151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A148966 n).toNat

end

end A166861.P18010242654880775151

/-! ## A166861.P16923523751750172055

`A100617(A374681(n)²)`
-/

namespace A166861.P16923523751750172055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A374681 n ^ 2).toNat

end

end A166861.P16923523751750172055

/-! ## A166861.P4422611042903738701

`A003056(∑[A148867(n)])`
-/

namespace A166861.P4422611042903738701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166861.P4422611042903738701

/-! ## A166861.P7331918646431231422

`A374685(A342528(n)+1)`
-/

namespace A166861.P7331918646431231422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (A342528 n + 1).toNat

end

end A166861.P7331918646431231422

/-!
# A166862: Primes p that divide n! + 1 for some n other than p-1.

The programs for A166862, there is no canonical definition to state claims against.
-/

/-! ## A166862.P12965645555711450111

`lt[atan(n), A238532(n+1)]+1`
-/

namespace A166862.P12965645555711450111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A166862.P12965645555711450111

/-! ## A166862.P9639482012124059521

`lt[A178226(n), A238532(n+1)]+1`
-/

namespace A166862.P9639482012124059521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166862.P9639482012124059521

/-! ## A166862.P9334122390018416016

`lt[A005087(n+1), A238532(n+1)]+1`
-/

namespace A166862.P9334122390018416016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166862.P9334122390018416016

/-! ## A166862.P7994663385073387427

`A020725(lt[A005087(n+1), A238532(n+1)])`
-/

namespace A166862.P7994663385073387427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166862.P7994663385073387427

/-! ## A166862.P8912520609545125788

`lt[A297155(2*(n+1)), A238532(n+1)]+1`
-/

namespace A166862.P8912520609545125788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166862.P8912520609545125788

/-! ## A166862.P14075946034728380838

`p?[A004442(n+1)%A210642(n+1)]`
-/

namespace A166862.P14075946034728380838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (n + 1)) (A210642 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166862.P14075946034728380838

/-!
# A166863: a(1)= 1; a(2)= 5; thereafter a(n)= a(n-1) + a(n-2) + 5.

The programs for A166863, the canonical program `A166863.P13751124381353094113` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166863 has offset 1).

The definition of A166863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+5` (program `A166863.P13751124381353094113`, by `A166863.P13751124381353094113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166863.P13751124381353094113

`a(n-1)+a(n-2)+5` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166863

/-- `a(n-1)+a(n-2)+5` -/
def P13751124381353094113.Spec : Prop :=
  ∀ n, (P13751124381353094113.a n : ℤ) = A166863 (n + 1)

theorem P13751124381353094113.correct : P13751124381353094113.Spec := by
  intro n
  simp only [A166863, Nat.add_sub_cancel]

end A166863

/-! ## A166863.P8016216417797823338

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A166863.P8016216417797823338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A166863.P8016216417797823338

namespace A166863

/-- `2*a(n-1)-a(n-3)` -/
def P8016216417797823338.Spec : Prop :=
  ∀ n, P8016216417797823338.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P2316901628686088298

`A154691(n+1)-2`
-/

namespace A166863.P2316901628686088298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) - 2

end

end A166863.P2316901628686088298

namespace A166863

/-- `A154691(n+1)-2` -/
def P2316901628686088298.Spec : Prop :=
  ∀ n, P2316901628686088298.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P16003206267681881562

`2*A000045(n+4)-5`
-/

namespace A166863.P16003206267681881562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 4) - 5

end

end A166863.P16003206267681881562

namespace A166863

/-- `2*A000045(n+4)-5` -/
def P16003206267681881562.Spec : Prop :=
  ∀ n, P16003206267681881562.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P3995279168193108226

`ogf((1+3x+x^2)/(1-2x+x^3))`
-/

namespace A166863.P3995279168193108226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, -2, 0, 1] n

end

end A166863.P3995279168193108226

namespace A166863

/-- `ogf((1+3x+x^2)/(1-2x+x^3))` -/
def P3995279168193108226.Spec : Prop :=
  ∀ n, P3995279168193108226.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P13221644379529887537

`round(ϕ*(a(n-1)+2))` with `a(0)=1`
-/

namespace A166863.P13221644379529887537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 2 : ℝ))

end

end A166863.P13221644379529887537

namespace A166863

/-- `round(ϕ*(a(n-1)+2))` -/
def P13221644379529887537.Spec : Prop :=
  ∀ n, P13221644379529887537.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P3541040823827982949

`ceil(ϕ*(a(n-1)+ϕ))` with `a(0)=1`
-/

namespace A166863.P3541040823827982949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio)⌉

end

end A166863.P3541040823827982949

namespace A166863

/-- `ceil(ϕ*(a(n-1)+ϕ))` -/
def P3541040823827982949.Spec : Prop :=
  ∀ n, P3541040823827982949.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P14717491131078059156

`floor(ϕ*(a(n-1)+2))` with `a(0)=1, a(1)=5`
-/

namespace A166863.P14717491131078059156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 2 : ℝ)⌋

end

end A166863.P14717491131078059156

namespace A166863

/-- `floor(ϕ*(a(n-1)+2))` -/
def P14717491131078059156.Spec : Prop :=
  ∀ n, P14717491131078059156.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P1857886630091584872

`3-round(-(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A166863.P1857886630091584872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A166863.P1857886630091584872

namespace A166863

/-- `3-round(-(ϕ*a(n-1)))` -/
def P1857886630091584872.Spec : Prop :=
  ∀ n, P1857886630091584872.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P7927859794186447951

`or(1, A063758(n))`
-/

namespace A166863.P7927859794186447951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063758 n)

end

end A166863.P7927859794186447951

namespace A166863

/-- `or(1, A063758(n))` -/
def P7927859794186447951.Spec : Prop :=
  ∀ n, P7927859794186447951.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P13847155879487563922

`A168193(n+1)-1`
-/

namespace A166863.P13847155879487563922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 (n + 1) - 1

end

end A166863.P13847155879487563922

namespace A166863

/-- `A168193(n+1)-1` -/
def P13847155879487563922.Spec : Prop :=
  ∀ n, P13847155879487563922.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P7059728410884392112

`A090991(n+1)-5`
-/

namespace A166863.P7059728410884392112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - 5

end

end A166863.P7059728410884392112

namespace A166863

/-- `A090991(n+1)-5` -/
def P7059728410884392112.Spec : Prop :=
  ∀ n, P7059728410884392112.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P16999063650261238225

`A001595(n+3)-4`
-/

namespace A166863.P16999063650261238225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 3) - 4

end

end A166863.P16999063650261238225

namespace A166863

/-- `A001595(n+3)-4` -/
def P16999063650261238225.Spec : Prop :=
  ∀ n, P16999063650261238225.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P11497132407638024816

`A054886(n+2)-5`
-/

namespace A166863.P11497132407638024816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 2) - 5

end

end A166863.P11497132407638024816

namespace A166863

/-- `A054886(n+2)-5` -/
def P11497132407638024816.Spec : Prop :=
  ∀ n, P11497132407638024816.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P7586650286552063533

`A078642(n+2)-5`
-/

namespace A166863.P7586650286552063533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) - 5

end

end A166863.P7586650286552063533

namespace A166863

/-- `A078642(n+2)-5` -/
def P7586650286552063533.Spec : Prop :=
  ∀ n, P7586650286552063533.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P4675228688451584000

`A068922(n+3)-5`
-/

namespace A166863.P4675228688451584000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 3) - 5

end

end A166863.P4675228688451584000

namespace A166863

/-- `A068922(n+3)-5` -/
def P4675228688451584000.Spec : Prop :=
  ∀ n, P4675228688451584000.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P11889061867677099947

`2*A020701(n)-5`
-/

namespace A166863.P11889061867677099947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n - 5

end

end A166863.P11889061867677099947

namespace A166863

/-- `2*A020701(n)-5` -/
def P11889061867677099947.Spec : Prop :=
  ∀ n, P11889061867677099947.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P7776983543477920284

`A097280(n+2)-8`
-/

namespace A166863.P7776983543477920284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 (n + 2) - 8

end

end A166863.P7776983543477920284

namespace A166863

/-- `A097280(n+2)-8` -/
def P7776983543477920284.Spec : Prop :=
  ∀ n, P7776983543477920284.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P16412167562663432130

`A288603(n+3)-7`
-/

namespace A166863.P16412167562663432130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 3) - 7

end

end A166863.P16412167562663432130

namespace A166863

/-- `A288603(n+3)-7` -/
def P16412167562663432130.Spec : Prop :=
  ∀ n, P16412167562663432130.a n = A166863 (n + 1)

end A166863

/-! ## A166863.P1325676525187369065

`A192760(n+1)+n`
-/

namespace A166863.P1325676525187369065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 (n + 1) + (n : ℤ)

end

end A166863.P1325676525187369065

namespace A166863

/-- `A192760(n+1)+n` -/
def P1325676525187369065.Spec : Prop :=
  ∀ n, P1325676525187369065.a n = A166863 (n + 1)

end A166863

/-!
# A166864: Primes p that divide n! - 1 for some n > 1 other than p-2.

The programs for A166864, there is no canonical definition to state claims against.
-/

/-! ## A166864.P2202837289101007424

`lt[2, A049046(n+1)]+1`
-/

namespace A166864.P2202837289101007424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166864.P2202837289101007424

/-! ## A166864.P2545005227623552586

`A151800(lt[2, A049046(n+1)])`
-/

namespace A166864.P2545005227623552586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166864.P2545005227623552586

/-!
# A166865: Triangle read by rows: R(n,k)=prime(k)^(prime(n)-2) mod n, 1<=k<=n.

The programs for A166865, there is no canonical definition to state claims against.
-/

/-! ## A166865.P3337168956120149402

`and(A008805(A164449(n+4)), A345379(n))`
-/

namespace A166865.P3337168956120149402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008805 (A164449 (n + 4)).toNat) (A345379 n)

end

end A166865.P3337168956120149402

/-! ## A166865.P15160007557540072819

`and(A000523(n+1), A008805(A164449(n+4)))`
-/

namespace A166865.P15160007557540072819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000523 (n + 1)) (A008805 (A164449 (n + 4)).toNat)

end

end A166865.P15160007557540072819

/-! ## A166865.P15904085106184466661

`and(A339927(A339950(n+1)), A339929(n+5))`
-/

namespace A166865.P15904085106184466661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339927 (A339950 (n + 1)).toNat) (A339929 (n + 5))

end

end A166865.P15904085106184466661

/-! ## A166865.P2574222888912878936

`xor(A124768(A000120(2^n-1)), A285205(n+1))`
-/

namespace A166865.P2574222888912878936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124768 (A000120 (2 ^ n - 1)).toNat) (A285205 (n + 1))

end

end A166865.P2574222888912878936

/-! ## A166865.P10723773547103657709

`A002375(n+4)%A046523(A281045(n))`
-/

namespace A166865.P10723773547103657709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002375 (n + 4)) (A046523 (A281045 n).toNat)

end

end A166865.P10723773547103657709

/-!
# A166866: Interleave the fractals A158405, A002260.

The programs for A166866, there is no canonical definition to state claims against.
-/

/-! ## A166866.P11486727587648802674

`lcm(2, A167430(n+1))/2`
-/

namespace A166866.P11486727587648802674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A167430 (n + 1)) : ℚ) / 2

end

end A166866.P11486727587648802674

/-! ## A166866.P15768386054158161456

`A026741(A167430(n+1))`
-/

namespace A166866.P15768386054158161456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A167430 (n + 1)).toNat

end

end A166866.P15768386054158161456

/-! ## A166866.P12781998045912044979

`A026741(A025643(n+1)+1)`
-/

namespace A166866.P12781998045912044979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A025643 (n + 1) + 1).toNat

end

end A166866.P12781998045912044979

/-! ## A166866.P1940490387294802450

`A060819(2*A167430(n+1))`
-/

namespace A166866.P1940490387294802450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A167430 (n + 1)).toNat

end

end A166866.P1940490387294802450

/-! ## A166866.P10819686255495345240

`A060789(3*A167430(n+1))`
-/

namespace A166866.P10819686255495345240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A167430 (n + 1)).toNat

end

end A166866.P10819686255495345240

/-! ## A166866.P10072905884445887660

`A026730(4*A167430(n+1))`
-/

namespace A166866.P10072905884445887660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (4 * A167430 (n + 1)).toNat

end

end A166866.P10072905884445887660

/-! ## A166866.P3013318763732272288

`A003602(A071797(4*n+2))`
-/

namespace A166866.P3013318763732272288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A071797 (4 * n + 2)).toNat

end

end A166866.P3013318763732272288

/-! ## A166866.P3572085841218533041

`A051724(6*A167430(n+1))`
-/

namespace A166866.P3572085841218533041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A167430 (n + 1)).toNat

end

end A166866.P3572085841218533041

/-! ## A166866.P4652320020169670856

`A106621(10*A167430(n+1))`
-/

namespace A166866.P4652320020169670856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (10 * A167430 (n + 1)).toNat

end

end A166866.P4652320020169670856

/-! ## A166866.P2954940023046460245

`A001281(lcm(2, A167430(n+1)))`
-/

namespace A166866.P2954940023046460245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A167430 (n + 1)))

end

end A166866.P2954940023046460245

/-!
# A166867: a(n) = Pell(n+3) - Jacobsthal(n+4).

The programs for A166867, the canonical program `A166867.P15018927768711477870` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166867 has offset 0).

The definition of A166867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166867.P15018927768711477870

`3*a(n-1)+a(n-2)-5*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=27`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166867

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-2*a(n-4)` -/
def P15018927768711477870.Spec : Prop :=
  ∀ n, P15018927768711477870.a n = A166867 n

theorem P15018927768711477870.correct : P15018927768711477870.Spec := by
  intro n
  simp only [A166867]

end A166867

/-! ## A166867.P10477373905185968259

`A166868(n)+A097076(n+1)-A000129(n+2)`
-/

namespace A166867.P10477373905185968259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166868 n + A097076 (n + 1) - A000129 (n + 2)

end

end A166867.P10477373905185968259

namespace A166867

/-- `A166868(n)+A097076(n+1)-A000129(n+2)` -/
def P10477373905185968259.Spec : Prop :=
  ∀ n, P10477373905185968259.a n = A166867 n

end A166867

/-! ## A166867.P6949084880798437020

`ogf((x+5x^2+2x^3)/(1-3x-x^2+5x^3+2x^4))`
-/

namespace A166867.P6949084880798437020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 2] [1, -3, -1, 5, 2] n

end

end A166867.P6949084880798437020

namespace A166867

/-- `ogf((x+5x^2+2x^3)/(1-3x-x^2+5x^3+2x^4))` -/
def P6949084880798437020.Spec : Prop :=
  ∀ n, P6949084880798437020.a n = A166867 n

end A166867

/-! ## A166867.P12751577581333887313

`∑[A106514(n)]-A283642(n)`
-/

namespace A166867.P12751577581333887313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283642 n

end

end A166867.P12751577581333887313

namespace A166867

/-- `∑[A106514(n)]-A283642(n)` -/
def P12751577581333887313.Spec : Prop :=
  ∀ n, P12751577581333887313.a n = A166867 n

end A166867

/-! ## A166867.P15532468726767236771

`A166868(n)-A097076(n+2)`
-/

namespace A166867.P15532468726767236771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166868 n - A097076 (n + 2)

end

end A166867.P15532468726767236771

namespace A166867

/-- `A166868(n)-A097076(n+2)` -/
def P15532468726767236771.Spec : Prop :=
  ∀ n, P15532468726767236771.a n = A166867 n

theorem P15532468726767236771.correct : P15532468726767236771.Spec := by
  intro n
  simp only [A166867, Nat.add_sub_cancel, A166867.P15532468726767236771.a, A166867.P15018927768711477870.a, A097076, A097076.P14805023492765033289.a, A166868, A166868.P15029246490408703154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166867

/-! ## A166867.P8955177895230255470

`A094706(n+1)-A001045(n+2)`
-/

namespace A166867.P8955177895230255470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094706 (n + 1) - A001045 (n + 2)

end

end A166867.P8955177895230255470

namespace A166867

/-- `A094706(n+1)-A001045(n+2)` -/
def P8955177895230255470.Spec : Prop :=
  ∀ n, P8955177895230255470.a n = A166867 n

end A166867

/-! ## A166867.P15666806902504191787

`A000129(n+3)-A283642(n+2)`
-/

namespace A166867.P15666806902504191787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) - A283642 (n + 2)

end

end A166867.P15666806902504191787

namespace A166867

/-- `A000129(n+3)-A283642(n+2)` -/
def P15666806902504191787.Spec : Prop :=
  ∀ n, P15666806902504191787.a n = A166867 n

end A166867

/-! ## A166867.P6086721003094256611

`A000129(n+3)-A001045(n+4)`
-/

namespace A166867.P6086721003094256611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) - A001045 (n + 4)

end

end A166867.P6086721003094256611

namespace A166867

/-- `A000129(n+3)-A001045(n+4)` -/
def P6086721003094256611.Spec : Prop :=
  ∀ n, P6086721003094256611.a n = A166867 n

end A166867

/-! ## A166867.P17303088889360590769

`A000129(n+3)-Δ[A000975(n+3)]`
-/

namespace A166867.P17303088889360590769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) - (f1 (n + 1) - f1 n)

end

end A166867.P17303088889360590769

namespace A166867

/-- `A000129(n+3)-Δ[A000975(n+3)]` -/
def P17303088889360590769.Spec : Prop :=
  ∀ n, P17303088889360590769.a n = A166867 n

end A166867

/-! ## A166867.P640726775545077135

`A000129(n+3)-Δ[A005578(n+4)]`
-/

namespace A166867.P640726775545077135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) - (f1 (n + 1) - f1 n)

end

end A166867.P640726775545077135

namespace A166867

/-- `A000129(n+3)-Δ[A005578(n+4)]` -/
def P640726775545077135.Spec : Prop :=
  ∀ n, P640726775545077135.a n = A166867 n

end A166867

/-! ## A166867.P3773056269975669800

`A000129(n+3)-A135318(A005843(n+3))`
-/

namespace A166867.P3773056269975669800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) - A135318 (A005843 (n + 3)).toNat

end

end A166867.P3773056269975669800

namespace A166867

/-- `A000129(n+3)-A135318(A005843(n+3))` -/
def P3773056269975669800.Spec : Prop :=
  ∀ n, P3773056269975669800.a n = A166867 n

end A166867

/-! ## A166867.P7444653697670529896

`A166868(n)-(A097075(n+1)+A000129(n+1))`
-/

namespace A166867.P7444653697670529896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166868 n - (A097075 (n + 1) + A000129 (n + 1))

end

end A166867.P7444653697670529896

namespace A166867

/-- `A166868(n)-(A097075(n+1)+A000129(n+1))` -/
def P7444653697670529896.Spec : Prop :=
  ∀ n, P7444653697670529896.a n = A166867 n

end A166867

/-! ## A166867.P17896237983352456410

`Δ[A171842(n+3)]-A001045(n+4)`
-/

namespace A166867.P17896237983352456410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001045 (n + 4)

end

end A166867.P17896237983352456410

namespace A166867

/-- `Δ[A171842(n+3)]-A001045(n+4)` -/
def P17896237983352456410.Spec : Prop :=
  ∀ n, P17896237983352456410.a n = A166867 n

end A166867

/-!
# A166868: Convolution of Jacobsthal(n+2) and Pell(n+1).

The programs for A166868, the canonical program `A166868.P15029246490408703154` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166868 has offset 0).

The definition of A166868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166868.P9864211694528415010

`ogf((1+2x)/(1-3x-x^2+5x^3+2x^4))`
-/

namespace A166868.P9864211694528415010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -1, 5, 2] n

end

end A166868.P9864211694528415010

namespace A166868

/-- `ogf((1+2x)/(1-3x-x^2+5x^3+2x^4))` -/
def P9864211694528415010.Spec : Prop :=
  ∀ n, P9864211694528415010.a n = A166868 n

end A166868

/-! ## A166868.P15029246490408703154

`A166867(n)+A097076(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166868

/-- `A166867(n)+A097076(n+2)` -/
def P15029246490408703154.Spec : Prop :=
  ∀ n, P15029246490408703154.a n = A166868 n

theorem P15029246490408703154.correct : P15029246490408703154.Spec := by
  intro n
  simp only [A166868]

end A166868

/-! ## A166868.P18434215844765620828

`∑[A048654(n+1)-A001045(n+3)]`
-/

namespace A166868.P18434215844765620828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 1) - A001045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166868.P18434215844765620828

namespace A166868

/-- `∑[A048654(n+1)-A001045(n+3)]` -/
def P18434215844765620828.Spec : Prop :=
  ∀ n, P18434215844765620828.a n = A166868 n

end A166868

/-! ## A166868.P525348457883684761

`2*a(n-1)+n%2+A048739(n)-A000129(n)` with `a(0)=1`
-/

namespace A166868.P525348457883684761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (((n % 2 : ℕ) : ℤ) + (A048739 n - A000129 n))

end

end A166868.P525348457883684761

namespace A166868

/-- `2*a(n-1)+n%2+A048739(n)-A000129(n)` -/
def P525348457883684761.Spec : Prop :=
  ∀ n, P525348457883684761.a n = A166868 n

end A166868

/-! ## A166868.P5046948355236948065

`A000129(n+1)+A166867(n)+A097075(n+1)`
-/

namespace A166868.P5046948355236948065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A166867 n + A097075 (n + 1))

end

end A166868.P5046948355236948065

namespace A166868

/-- `A000129(n+1)+A166867(n)+A097075(n+1)` -/
def P5046948355236948065.Spec : Prop :=
  ∀ n, P5046948355236948065.a n = A166868 n

end A166868

/-! ## A166868.P8341740656271155060

`Δ[A166867(n)-∑[A097075(n)]]`
-/

namespace A166868.P8341740656271155060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166867 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166868.P8341740656271155060

namespace A166868

/-- `Δ[A166867(n)-∑[A097075(n)]]` -/
def P8341740656271155060.Spec : Prop :=
  ∀ n, P8341740656271155060.a n = A166868 n

end A166868

/-! ## A166868.P10732944177242811187

`Δ[A166867(n)]-A097075(n+1)`
-/

namespace A166868.P10732944177242811187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097075 (n + 1)

end

end A166868.P10732944177242811187

namespace A166868

/-- `Δ[A166867(n)]-A097075(n+1)` -/
def P10732944177242811187.Spec : Prop :=
  ∀ n, P10732944177242811187.a n = A166868 n

end A166868

/-! ## A166868.P595599489739875942

`(A166867(n+1)+A000129(n+1))/2`
-/

namespace A166868.P595599489739875942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166867 (n + 1) + A000129 (n + 1) : ℚ) / 2

end

end A166868.P595599489739875942

namespace A166868

/-- `(A166867(n+1)+A000129(n+1))/2` -/
def P595599489739875942.Spec : Prop :=
  ∀ n, P595599489739875942.a n = (A166868 n : ℚ)

end A166868

/-! ## A166868.P7977760335783015048

`A166867(n+1)-(A166867(n)+A097075(n+1))`
-/

namespace A166868.P7977760335783015048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166867 (n + 1) - (A166867 n + A097075 (n + 1))

end

end A166868.P7977760335783015048

namespace A166868

/-- `A166867(n+1)-(A166867(n)+A097075(n+1))` -/
def P7977760335783015048.Spec : Prop :=
  ∀ n, P7977760335783015048.a n = A166868 n

end A166868

/-!
# A166869: a(n) = n * A056219(n+1).

The programs for A166869, there is no canonical definition to state claims against.
-/

/-! ## A166869.P18386770845008016454

`(n+1)*A056219(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166869.P18386770845008016454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056219 (n + 2)

end

end A166869.P18386770845008016454

/-!
# A166870: a(n) = n*(n-1)*A056219(n+1).

The programs for A166870, there is no canonical definition to state claims against.
-/

/-! ## A166870.P3371610085175307912

`(n+2)*(n+1)*A056219(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166870.P3371610085175307912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℤ) * A056219 (n + 3)

end

end A166870.P3371610085175307912

/-! ## A166870.P8532678295831598316

`(n+1)*A166869(n+2)`
-/

namespace A166870.P8532678295831598316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166869 (n + 2)

end

end A166870.P8532678295831598316

/-! ## A166870.P12524035694325691029

`A056219(n+3)*A233583(A002061(n+2))`
-/

namespace A166870.P12524035694325691029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056219 (n + 3) * A233583 (A002061 (n + 2)).toNat

end

end A166870.P12524035694325691029

/-!
# A166871: Permutation of the integers: 3 positives, 2 negatives.

The programs for A166871, the canonical program `A166871.P15799474795996814222` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166871 has offset 0).

The definition of A166871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166871.P15799474795996814222

`Δ[(A047412(n+2)-A047363(n+1))*n/2]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166871

/-- `Δ[(A047412(n+2)-A047363(n+1))*n/2]` -/
def P15799474795996814222.Spec : Prop :=
  ∀ n, P15799474795996814222.a n = (A166871 n : ℚ)

end A166871

/-!
# A166872: a(n) = floor(n/2 + 2 - sqrt(17/4 + 2*n)).

The programs for A166872, the canonical program `A166872.P1757570111998286382` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166872 has offset 1).

The definition of A166872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/2+2-sqrt(17/4+2*(n+1)))` (program `A166872.P18289780550767506153`, by `A166872.P18289780550767506153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166872.P1757570111998286382

`floor((n+1)/2+2-sqrt(2*(n+1)+17/4))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166872

/-- `floor((n+1)/2+2-sqrt(2*(n+1)+17/4))` -/
def P1757570111998286382.Spec : Prop :=
  ∀ n, P1757570111998286382.a n = A166872 (n + 1)

theorem P1757570111998286382.correct : P1757570111998286382.Spec := by
  intro n
  simp only [A166872, Nat.add_sub_cancel]

end A166872

/-! ## A166872.P18289780550767506153

`floor((n+1)/2+2-sqrt(17/4+2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166872.P18289780550767506153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2 + 2 : ℝ) - Real.sqrt ((17 : ℚ) / 4 + (2 * (n + 1) : ℚ) : ℝ)⌋

end

end A166872.P18289780550767506153

namespace A166872

/-- `floor((n+1)/2+2-sqrt(17/4+2*(n+1)))` -/
def P18289780550767506153.Spec : Prop :=
  ∀ n, P18289780550767506153.a n = A166872 (n + 1)

theorem P18289780550767506153.correct : P18289780550767506153.Spec := by
  intro n
  simp only [A166872, Nat.add_sub_cancel, A166872.P18289780550767506153.a, A166872.P1757570111998286382.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166872

/-! ## A166872.P7523196584085746503

`∑[char[A186348(2*(n+1))]]`
-/

namespace A166872.P7523196584085746503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186348 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166872.P7523196584085746503

namespace A166872

/-- `∑[char[A186348(2*(n+1))]]` -/
def P7523196584085746503.Spec : Prop :=
  ∀ n, (P7523196584085746503.a n : ℤ) = A166872 (n + 1)

end A166872

/-! ## A166872.P9721040480444216547

`∑[char[A184102(n+1)+n+1]]`
-/

namespace A166872.P9721040480444216547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184102 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166872.P9721040480444216547

namespace A166872

/-- `∑[char[A184102(n+1)+n+1]]` -/
def P9721040480444216547.Spec : Prop :=
  ∀ n, (P9721040480444216547.a n : ℤ) = A166872 (n + 1)

end A166872

/-! ## A166872.P12128745056529221763

`A004526(∑[char[A186348(n+1)]])`
-/

namespace A166872.P12128745056529221763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186348 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166872.P12128745056529221763

namespace A166872

/-- `A004526(∑[char[A186348(n+1)]])` -/
def P12128745056529221763.Spec : Prop :=
  ∀ n, P12128745056529221763.a n = A166872 (n + 1)

end A166872

/-! ## A166872.P15896556236546310798

`A004526(n-∑[Δ[A145362(n+2)]²])`
-/

namespace A166872.P15896556236546310798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166872.P15896556236546310798

namespace A166872

/-- `A004526(n-∑[Δ[A145362(n+2)]²])` -/
def P15896556236546310798.Spec : Prop :=
  ∀ n, P15896556236546310798.a n = A166872 (n + 1)

end A166872

/-!
# A166873: a(n) = a(n-1) + 12*n for n > 1; a(1) = 1.

The programs for A166873, the canonical program `A166873.P4991276889622462950` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166873 has offset 1).

The definition of A166873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+12*(n+1)` (program `A166873.P4991276889622462950`, by `A166873.P4991276889622462950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166873.P4991276889622462950

`a(n-1)+12*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166873

/-- `a(n-1)+12*(n+1)` -/
def P4991276889622462950.Spec : Prop :=
  ∀ n, (P4991276889622462950.a n : ℤ) = A166873 (n + 1)

theorem P4991276889622462950.correct : P4991276889622462950.Spec := by
  intro n
  simp only [A166873, Nat.add_sub_cancel]

end A166873

/-! ## A166873.P3639842103973310575

`6*(n+1)²+6*(n+1)-11`
-/

namespace A166873.P3639842103973310575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) ^ 2 + 6 * (n + 1) : ℤ) - 11

end

end A166873.P3639842103973310575

namespace A166873

/-- `6*(n+1)²+6*(n+1)-11` -/
def P3639842103973310575.Spec : Prop :=
  ∀ n, P3639842103973310575.a n = A166873 (n + 1)

theorem P3639842103973310575.correct : P3639842103973310575.Spec := by
  intro n
  induction n with
  | zero => simp [A166873, A166873.P3639842103973310575.a, A166873.P4991276889622462950.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A166873, Nat.add_sub_cancel, A166873.P3639842103973310575.a, A166873.P4991276889622462950.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A166873

/-! ## A166873.P11252891304370471636

`∑[a(n-1)+12]` with `a(0)=1, a(1)=24`
-/

namespace A166873.P11252891304370471636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P11252891304370471636

namespace A166873

/-- `∑[a(n-1)+12]` -/
def P11252891304370471636.Spec : Prop :=
  ∀ n, (P11252891304370471636.a n : ℤ) = A166873 (n + 1)

end A166873

/-! ## A166873.P7258422642105259196

`or(1, (n+3)*6*n)`
-/

namespace A166873.P7258422642105259196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 3) * (6 * n))

end

end A166873.P7258422642105259196

namespace A166873

/-- `or(1, (n+3)*6*n)` -/
def P7258422642105259196.Spec : Prop :=
  ∀ n, (P7258422642105259196.a n : ℤ) = A166873 (n + 1)

end A166873

/-! ## A166873.P17551775541154582484

`xor(1, (n+3)*6*n)`
-/

namespace A166873.P17551775541154582484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 3) * (6 * n))

end

end A166873.P17551775541154582484

namespace A166873

/-- `xor(1, (n+3)*6*n)` -/
def P17551775541154582484.Spec : Prop :=
  ∀ n, (P17551775541154582484.a n : ℤ) = A166873 (n + 1)

end A166873

/-! ## A166873.P8746021856481781263

`record[3*(n-3)*2*n+1]`
-/

namespace A166873.P8746021856481781263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n : ℤ) - 3) * (2 * n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166873.P8746021856481781263

namespace A166873

/-- `record[3*(n-3)*2*n+1]` -/
def P8746021856481781263.Spec : Prop :=
  ∀ n, P8746021856481781263.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P12922158677933267324

`Δ[(n-1)*A161532(n)]`
-/

namespace A166873.P12922158677933267324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166873.P12922158677933267324

namespace A166873

/-- `Δ[(n-1)*A161532(n)]` -/
def P12922158677933267324.Spec : Prop :=
  ∀ n, P12922158677933267324.a n = A166873 (n + 1)

theorem P12922158677933267324.correct : P12922158677933267324.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166873, Nat.add_sub_cancel, A166873.P12922158677933267324.f1, A166873.P12922158677933267324.a, A166873.P4991276889622462950.a, A161532, A161532.P17103615400908031824.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166873, Nat.add_sub_cancel, A166873.P12922158677933267324.f1, A166873.P12922158677933267324.a, A166873.P4991276889622462950.a, A161532, A161532.P17103615400908031824.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A166873

/-! ## A166873.P3891183916686546496

`∑[(n+1)*12%A050778(n+1)]`
-/

namespace A166873.P3891183916686546496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod 12 (A050778 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P3891183916686546496

namespace A166873

/-- `∑[(n+1)*12%A050778(n+1)]` -/
def P3891183916686546496.Spec : Prop :=
  ∀ n, P3891183916686546496.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P2888128042374585586

`∑[A008594(n+1)^(n²%(n+1))]`
-/

namespace A166873.P2888128042374585586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) ^ (n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P2888128042374585586

namespace A166873

/-- `∑[A008594(n+1)^(n²%(n+1))]` -/
def P2888128042374585586.Spec : Prop :=
  ∀ n, P2888128042374585586.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P14262990974775626770

`A144449(n)%A087348(n+1)`
-/

namespace A166873.P14262990974775626770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144449 n) (A087348 (n + 1))

end

end A166873.P14262990974775626770

namespace A166873

/-- `A144449(n)%A087348(n+1)` -/
def P14262990974775626770.Spec : Prop :=
  ∀ n, P14262990974775626770.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P4727738719695842583

`abs(11-A049598(n+1))`
-/

namespace A166873.P4727738719695842583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 - A049598 (n + 1)|

end

end A166873.P4727738719695842583

namespace A166873

/-- `abs(11-A049598(n+1))` -/
def P4727738719695842583.Spec : Prop :=
  ∀ n, P4727738719695842583.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P9001944832233840363

`abs(12-A003154(n+2))`
-/

namespace A166873.P9001944832233840363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 - A003154 (n + 2)|

end

end A166873.P9001944832233840363

namespace A166873

/-- `abs(12-A003154(n+2))` -/
def P9001944832233840363.Spec : Prop :=
  ∀ n, P9001944832233840363.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P3217565604190197360

`Δ[(n-2)*A001844(n+2)]`
-/

namespace A166873.P3217565604190197360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A001844 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166873.P3217565604190197360

namespace A166873

/-- `Δ[(n-2)*A001844(n+2)]` -/
def P3217565604190197360.Spec : Prop :=
  ∀ n, P3217565604190197360.a n = A166873 (n + 1)

theorem P3217565604190197360.correct : P3217565604190197360.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166873, Nat.add_sub_cancel, A166873.P3217565604190197360.f1, A166873.P3217565604190197360.a, A166873.P4991276889622462950.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166873, Nat.add_sub_cancel, A166873.P3217565604190197360.f1, A166873.P3217565604190197360.a, A166873.P4991276889622462950.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A166873

/-! ## A166873.P15841596996954663667

`∑[record[A017533(n)-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A166873.P15841596996954663667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A017533 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P15841596996954663667

namespace A166873

/-- `∑[record[A017533(n)-a(n-1)]]` -/
def P15841596996954663667.Spec : Prop :=
  ∀ n, P15841596996954663667.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P7691979364734960509

`∑[A317312(A103517(n))]`
-/

namespace A166873.P7691979364734960509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P7691979364734960509

namespace A166873

/-- `∑[A317312(A103517(n))]` -/
def P7691979364734960509.Spec : Prop :=
  ∀ n, P7691979364734960509.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P18329604701054115851

`∑[A008574(A062545(n)+n)]`
-/

namespace A166873.P18329604701054115851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A062545 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P18329604701054115851

namespace A166873

/-- `∑[A008574(A062545(n)+n)]` -/
def P18329604701054115851.Spec : Prop :=
  ∀ n, P18329604701054115851.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P9231515761292047762

`∑[A008486(Δ[A106232(n+1)])]`
-/

namespace A166873.P9231515761292047762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166873.P9231515761292047762

namespace A166873

/-- `∑[A008486(Δ[A106232(n+1)])]` -/
def P9231515761292047762.Spec : Prop :=
  ∀ n, P9231515761292047762.a n = A166873 (n + 1)

end A166873

/-! ## A166873.P13582048565721397770

`A000027((n+3)*6*n+1)`
-/

namespace A166873.P13582048565721397770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 3) * (6 * n) + 1)

end

end A166873.P13582048565721397770

namespace A166873

/-- `A000027((n+3)*6*n+1)` -/
def P13582048565721397770.Spec : Prop :=
  ∀ n, P13582048565721397770.a n = A166873 (n + 1)

theorem P13582048565721397770.correct : P13582048565721397770.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166873, Nat.add_sub_cancel, A166873.P13582048565721397770.a, A166873.P4991276889622462950.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166873, Nat.add_sub_cancel, A166873.P13582048565721397770.a, A166873.P4991276889622462950.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A166873

/-! ## A166873.P15259073112086838249

`A017533(∑[n]+n)`
-/

namespace A166873.P15259073112086838249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166873.P15259073112086838249

namespace A166873

/-- `A017533(∑[n]+n)` -/
def P15259073112086838249.Spec : Prop :=
  ∀ n, P15259073112086838249.a n = A166873 (n + 1)

end A166873

/-!
# A166874: Numbers with vertical symmetry when expressed as Roman numerals.

The programs for A166874, there is no canonical definition to state claims against.
-/

/-! ## A166874.P3120807161822598989

`A078715(or(n+1, A000094(n+1)))`
-/

namespace A166874.P3120807161822598989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078715 (Int.lor (n + 1 : ℤ) (A000094 (n + 1))).toNat

end

end A166874.P3120807161822598989

/-! ## A166874.P10224038164151018407

`A078715(A083478(n+1)+A029804(n+1))`
-/

namespace A166874.P10224038164151018407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078715 (A083478 (n + 1) + A029804 (n + 1)).toNat

end

end A166874.P10224038164151018407

/-!
# A166875: Numbers less than 100 that can't be obtained from 2, 4, 6, 8 using +, -, x and /.

The programs for A166875, there is no canonical definition to state claims against.
-/

/-! ## A166875.P13643103271956174405

`lt[A278353(n+1), A362615(A061037(n+2))]`
-/

namespace A166875.P13643103271956174405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (A061037 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166875.P13643103271956174405

/-! ## A166875.P6752568659841623379

`lt[A001043(n+1), A066882(A213391(n+3))]`
-/

namespace A166875.P6752568659841623379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A213391 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166875.P6752568659841623379

/-! ## A166875.P4238267835419676219

`lt[A338910(n+1), A066882(A213391(n+3))]`
-/

namespace A166875.P4238267835419676219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A213391 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166875.P4238267835419676219

/-! ## A166875.P2912600756079402247

`eq[A293431(A246091(3*n+4)), A338652(n+1)]`
-/

namespace A166875.P2912600756079402247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293431 (A246091 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166875.P2912600756079402247

/-! ## A166875.P10158337598799838680

`lt[A329624(A003376(n+1)), A086292(n+1)]`
-/

namespace A166875.P10158337598799838680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329624 (A003376 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166875.P10158337598799838680

/-!
# A166876: a(n) = a(n-1) + Fibonacci(n), a(1)=1983.

The programs for A166876, there is no canonical definition to state claims against.
-/

/-! ## A166876.P7086539311271422261

`A345770(val(or(1, -n)²+1, 2))+A020695(n)`
-/

namespace A166876.P7086539311271422261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (Int.lor 1 (-(n : ℤ)) ^ 2 + 1).toNat 2) + A020695 n

end

end A166876.P7086539311271422261

/-! ## A166876.P833277514440098780

`A345770(A262131(C(2, n)))+A020695(n)`
-/

namespace A166876.P833277514440098780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A262131 (Nat.choose 2 n)).toNat + A020695 n

end

end A166876.P833277514440098780

/-! ## A166876.P6702096240798225757

`A345770(A262132(C(2, n)))+A020695(n)`
-/

namespace A166876.P6702096240798225757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A262132 (Nat.choose 2 n)).toNat + A020695 n

end

end A166876.P6702096240798225757

/-! ## A166876.P9996834304043056186

`A345770(val(A017284(n)+1, 2))+A020695(n)`
-/

namespace A166876.P9996834304043056186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (A017284 n + 1).toNat 2) + A020695 n

end

end A166876.P9996834304043056186

/-! ## A166876.P7687048856361711297

`A345770(val(A017286(n)+1, 2))+A020695(n)`
-/

namespace A166876.P7687048856361711297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (A017286 n + 1).toNat 2) + A020695 n

end

end A166876.P7687048856361711297

/-! ## A166876.P5902126137978847293

`A345770(val(A017288(n)+1, 2))+A020695(n)`
-/

namespace A166876.P5902126137978847293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (A017288 n + 1).toNat 2) + A020695 n

end

end A166876.P5902126137978847293

/-! ## A166876.P12345402006036799820

`A345770(val(A017272(n)+2, 2))+A020695(n)`
-/

namespace A166876.P12345402006036799820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (A017272 n + 2).toNat 2) + A020695 n

end

end A166876.P12345402006036799820

/-! ## A166876.P12348177635972922843

`A345770(val(A017275(n)+2, 2))+A020695(n)`
-/

namespace A166876.P12348177635972922843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (A017275 n + 2).toNat 2) + A020695 n

end

end A166876.P12348177635972922843

/-! ## A166876.P7992047718728980312

`A345770(val(A017276(n)+2, 2))+A020695(n)`
-/

namespace A166876.P7992047718728980312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (SequenceMachineLib.valuation (A017276 n + 2).toNat 2) + A020695 n

end

end A166876.P7992047718728980312

/-! ## A166876.P6305582072064682633

`A345770(A260534(A001876(n)))+A020695(n)`
-/

namespace A166876.P6305582072064682633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A260534 (A001876 n).toNat).toNat + A020695 n

end

end A166876.P6305582072064682633

/-! ## A166876.P1149514543313812

`A345770(A007318(∑[n]))+A020695(n)`
-/

namespace A166876.P1149514543313812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A020695 n

end

end A166876.P1149514543313812

/-! ## A166876.P6241661809756533797

`A345770(A260534(∑[n]))+A020695(n)`
-/

namespace A166876.P6241661809756533797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A260534 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A020695 n

end

end A166876.P6241661809756533797

/-!
# A166881: a(n) = coefficient of x^n in the (n-1)-th iteration of (x + x^2 + x^3) for n>=1.

The programs for A166881, there is no canonical definition to state claims against.
-/

/-! ## A166881.P13664959973849496453

`A084385(A112240(n))`
-/

namespace A166881.P13664959973849496453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084385 (A112240 n).toNat

end

end A166881.P13664959973849496453

/-!
# A166882: a(n) = coefficient of x^n in the n-th iteration of (x + x^2 + x^3) for n>=1.

The programs for A166882, there is no canonical definition to state claims against.
-/

/-! ## A166882.P8877367928791855856

`A003991(A098620(n))*A299327(n+1)`
-/

namespace A166882.P8877367928791855856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A098620 n).toNat * A299327 (n + 1)

end

end A166882.P8877367928791855856

/-!
# A166883: a(n) = coefficient of x^n in the (n+1)-th iteration of (x + x^2 + x^3) for n>=1.

The programs for A166883, there is no canonical definition to state claims against.
-/

/-! ## A166883.P9728084118632293430

`(n+2)*A111699(a(n-1))` with `a(0)=1`
-/

namespace A166883.P9728084118632293430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) * A111699 (a (n - 1)).toNat

end

end A166883.P9728084118632293430

/-!
# A166884: Triangle, read by rows, that transforms diagonals in the table of coefficients of successive iterations of x+x^2+x^3 (cf. A166880).

The programs for A166884, there is no canonical definition to state claims against.
-/

/-! ## A166884.P5590834832131037017

`A088956(n)-A180234(A324564(n))`
-/

namespace A166884.P5590834832131037017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 n - A180234 (A324564 n).toNat

end

end A166884.P5590834832131037017

/-! ## A166884.P12764771777253780926

`A186733(A166900(n))+A136217(n)`
-/

namespace A166884.P12764771777253780926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (A166900 n).toNat + A136217 n

end

end A166884.P12764771777253780926

/-! ## A166884.P10404769130058022021

`A136217(n)+A076282(A054142(n+1))`
-/

namespace A166884.P10404769130058022021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136217 n + A076282 (A054142 (n + 1)).toNat

end

end A166884.P10404769130058022021

/-! ## A166884.P13844916749702043858

`A186733(A166900(n))+A011776(29*A135876(n))`
-/

namespace A166884.P13844916749702043858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (A166900 n).toNat + A011776 (29 * A135876 n).toNat

end

end A166884.P13844916749702043858

/-!
# A166885: Column 1 of triangle A166884.

The programs for A166885, there is no canonical definition to state claims against.
-/

/-! ## A166885.P5267679304687715235

`A166884(∑[n])`
-/

namespace A166885.P5267679304687715235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166885.P5267679304687715235

/-! ## A166885.P5409802239302472803

`lcm(1-and(2, n), A166884(A000217(n)))`
-/

namespace A166885.P5409802239302472803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A166884 (A000217 n).toNat)

end

end A166885.P5409802239302472803

/-! ## A166885.P3892255124767070897

`gcd(A000038(n), A166884(A000217(n)))`
-/

namespace A166885.P3892255124767070897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A166884 (A000217 n).toNat)

end

end A166885.P3892255124767070897

/-! ## A166885.P16859647334858122922

`or(A000007(n), A166884(A000217(n)))`
-/

namespace A166885.P16859647334858122922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A166884 (A000217 n).toNat)

end

end A166885.P16859647334858122922

/-! ## A166885.P16719291561049499171

`or(A166884(A000217(n)), A236378(n))`
-/

namespace A166885.P16719291561049499171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166884 (A000217 n).toNat) (A236378 n)

end

end A166885.P16719291561049499171

/-!
# A166886: Column 2 of triangle A166884.

The programs for A166886, there is no canonical definition to state claims against.
-/

/-! ## A166886.P1781724801283512865

`A166884(∑[n+1]+1)`
-/

namespace A166886.P1781724801283512865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166886.P1781724801283512865

/-! ## A166886.P15212695592322915112

`record[A166884(∑[A035214(n)])]`
-/

namespace A166886.P15212695592322915112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166886.P15212695592322915112

/-! ## A166886.P7130047388896873002

`record[A166884(A014132(n+1))]`
-/

namespace A166886.P7130047388896873002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166886.P7130047388896873002

/-! ## A166886.P7916312883492827332

`record[A133607(n)*A166884(n)]`
-/

namespace A166886.P7916312883492827332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 n * A166884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166886.P7916312883492827332

/-! ## A166886.P15901243030018167720

`record[A166884(and(n, A294254(n)))]`
-/

namespace A166886.P15901243030018167720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (Int.land (n : ℤ) (A294254 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166886.P15901243030018167720

/-!
# A166887: Column 3 of triangle A166884.

The programs for A166887, there is no canonical definition to state claims against.
-/

/-! ## A166887.P8191432018987853930

`record[A166884(∑[n]+2)]`
-/

namespace A166887.P8191432018987853930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166887.P8191432018987853930

/-! ## A166887.P3412471636207769428

`A166884(∑[n+2]+3)`
-/

namespace A166887.P3412471636207769428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166884 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A166887.P3412471636207769428

/-! ## A166887.P6686198367638234717

`record[and(A133607(n), A166884(n))]`
-/

namespace A166887.P6686198367638234717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133607 n) (A166884 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166887.P6686198367638234717

/-! ## A166887.P2745849068154478326

`record[and(A166884(n+1), A294254(n))]`
-/

namespace A166887.P2745849068154478326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166884 (n + 1)) (A294254 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166887.P2745849068154478326

/-!
# A166891: Column 1 of triangle A166890.

The programs for A166891, there is no canonical definition to state claims against.
-/

/-! ## A166891.P5094888307626188312

`A166890(∑[n]+1)`
-/

namespace A166891.P5094888307626188312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166891.P5094888307626188312

/-! ## A166891.P4859031900859465932

`record[A166890(n+1)]`
-/

namespace A166891.P4859031900859465932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166891.P4859031900859465932

/-! ## A166891.P8266545738744208039

`record[ratio[A166890(A008619(n))]]`
-/

namespace A166891.P8266545738744208039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (A008619 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166891.P8266545738744208039

/-! ## A166891.P12204528763702922097

`record[ratio[A166890(A028310(n))]]`
-/

namespace A166891.P12204528763702922097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166891.P12204528763702922097

/-! ## A166891.P5266629687482563509

`or(char[2], A166890(A000124(n)))`
-/

namespace A166891.P5266629687482563509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A166890 (A000124 n).toNat)

end

end A166891.P5266629687482563509

/-!
# A166892: Column 2 of triangle A166890.

The programs for A166892, there is no canonical definition to state claims against.
-/

/-! ## A166892.P9105960683595438678

`A166890(∑[n+1]+2)`
-/

namespace A166892.P9105960683595438678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A166892.P9105960683595438678

/-! ## A166892.P12366277590488221165

`record[A166890(A080036(n))]`
-/

namespace A166892.P12366277590488221165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166892.P12366277590488221165

/-! ## A166892.P5660496690554827441

`record[A166890(A014132(n+1)+1)]`
-/

namespace A166892.P5660496690554827441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (A014132 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166892.P5660496690554827441

/-! ## A166892.P15323272820620806362

`record[A097805(n)*A166890(n+1)]`
-/

namespace A166892.P15323272820620806362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A166890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166892.P15323272820620806362

/-!
# A166893: Column 3 of triangle A166890.

The programs for A166893, there is no canonical definition to state claims against.
-/

/-! ## A166893.P1276467307052855677

`A166890(∑[n+2]+4)`
-/

namespace A166893.P1276467307052855677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A166893.P1276467307052855677

/-! ## A166893.P9914511308322338496

`lcm((-1)^n, A166890(A167614(n+1)))`
-/

namespace A166893.P9914511308322338496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A166890 (A167614 (n + 1)).toNat)

end

end A166893.P9914511308322338496

/-! ## A166893.P16041037157148106133

`A166890(A167614(n+1))+A025466(n)`
-/

namespace A166893.P16041037157148106133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (A167614 (n + 1)).toNat + A025466 n

end

end A166893.P16041037157148106133

/-!
# A166894: G.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^n * x^k] * x^n/n ), an integer series in x.

The programs for A166894, there is no canonical definition to state claims against.
-/

/-! ## A166894.P1550478916275600033

`A008620(A136343(2^n))`
-/

namespace A166894.P1550478916275600033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A136343 (2 ^ n)).toNat

end

end A166894.P1550478916275600033

/-! ## A166894.P11840461340821539214

`A110657(∏[∑[A089598(n)]])`
-/

namespace A166894.P11840461340821539214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166894.P11840461340821539214

/-! ## A166894.P8389173072811250340

`A238828(n)+A132601(A000255(n))`
-/

namespace A166894.P8389173072811250340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238828 n + A132601 (A000255 n).toNat

end

end A166894.P8389173072811250340

/-!
# A166895: a(n) = Sum_{k=0..[n/2]} C(n-k,k)^(n-k)*n/(n-k), n>=1.

The programs for A166895, there is no canonical definition to state claims against.
-/

/-! ## A166895.P17025098276825012645

`A355014(floor(1/Δ[sqrt(n)])^n)`
-/

namespace A166895.P17025098276825012645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355014 (⌊1 / (f1 (n + 1) - f1 n)⌋ ^ n).toNat

end

end A166895.P17025098276825012645

/-!
# A166896: G.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3 * x^k] * x^n/n ), an integer series in x.

The programs for A166896, there is no canonical definition to state claims against.
-/

/-! ## A166896.P13264595737086608568

`A256502(A341072(n)+A006166(n))`
-/

namespace A166896.P13264595737086608568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A341072 n + A006166 n).toNat

end

end A166896.P13264595737086608568

/-! ## A166896.P10819177090428776137

`A255072(A079146(n+1)-A004526(n))`
-/

namespace A166896.P10819177090428776137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A079146 (n + 1) - A004526 n).toNat

end

end A166896.P10819177090428776137

/-! ## A166896.P7371554007513177467

`A255072(A079146(n+1)-A054404(n+1))`
-/

namespace A166896.P7371554007513177467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A079146 (n + 1) - A054404 (n + 1)).toNat

end

end A166896.P7371554007513177467

/-! ## A166896.P17256314901019158543

`A255072(A079146(n+1)+A255072(n)-n)`
-/

namespace A166896.P17256314901019158543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A079146 (n + 1) + (A255072 n - (n : ℤ))).toNat

end

end A166896.P17256314901019158543

/-!
# A166897: a(n) = Sum_{k=0..[n/2]} C(n-k,k)^3*n/(n-k), n>=1.

The programs for A166897, there is no canonical definition to state claims against.
-/

/-! ## A166897.P7718728198454774810

`or(A202206(n), A331472(A000309(n)))`
-/

namespace A166897.P7718728198454774810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A202206 n) (A331472 (A000309 n).toNat)

end

end A166897.P7718728198454774810

/-! ## A166897.P5778121773279966832

`or(A202206(n), A322479(A052340(n+1)))`
-/

namespace A166897.P5778121773279966832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A202206 n) (A322479 (A052340 (n + 1)).toNat)

end

end A166897.P5778121773279966832

/-!
# A166898: G.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^4 * x^k] * x^n/n ), an integer series in x.

The programs for A166898, there is no canonical definition to state claims against.
-/

/-! ## A166898.P2514424159614139169

`and(A047280(A005867(n)), A109085(n))`
-/

namespace A166898.P2514424159614139169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047280 (A005867 n).toNat) (A109085 n)

end

end A166898.P2514424159614139169

/-! ## A166898.P4657328087805891080

`A111987(A078483(n))`
-/

namespace A166898.P4657328087805891080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111987 (A078483 n).toNat

end

end A166898.P4657328087805891080

/-!
# A166899: a(n) = Sum_{k=0..[n/2]} C(n-k,k)^4*n/(n-k), n>=1.

The programs for A166899, there is no canonical definition to state claims against.
-/

/-! ## A166899.P3436690525680709992

`A076436(A382615(n))`
-/

namespace A166899.P3436690525680709992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A382615 n).toNat

end

end A166899.P3436690525680709992

