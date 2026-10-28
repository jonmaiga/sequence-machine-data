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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A267900: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to at least one horizontal or vertical neighbor and the top left element equal to 0.

The programs for A267900, there is no canonical definition to state claims against.
-/

/-! ## A267900.P4959817964676681199

`A267901(∑[comp[∑[n]²]+2]+3)`
-/

namespace A267900.P4959817964676681199
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267901 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267900.P4959817964676681199

/-! ## A267900.P1570459211665962997

`A043563(n)*A267901(A141214(n+1))`
-/

namespace A267900.P1570459211665962997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n * A267901 (A141214 (n + 1)).toNat

end

end A267900.P1570459211665962997

/-!
# A267901: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to at least one horizontal or vertical neighbor and the top left element equal to 0.

The programs for A267901, there is no canonical definition to state claims against.
-/

/-! ## A267901.P6323418422880229390

`Δ[A180493(∑[A226874(n)])]`
-/

namespace A267901.P6323418422880229390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267901.P6323418422880229390

/-! ## A267901.P5149090438511904822

`A257783(A068634(n+1))%16`
-/

namespace A267901.P5149090438511904822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257783 (A068634 (n + 1)).toNat) 16

end

end A267901.P5149090438511904822

/-! ## A267901.P17108253797901755846

`A132393((n-Δ[or(2, -n)])^A290216(n))`
-/

namespace A267901.P17108253797901755846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.roundAway (((n : ℤ) - (f1 (n + 1) - f1 n) : ℚ) ^ (A290216 n : ℤ))).toNat

end

end A267901.P17108253797901755846

/-! ## A267901.P2224713017989828142

`A057619(3*(n+1))%(A131689(n+1)+1)`
-/

namespace A267901.P2224713017989828142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057619 (3 * (n + 1))) (A131689 (n + 1) + 1)

end

end A267901.P2224713017989828142

/-! ## A267901.P14925357654476695512

`or(A058276(A239312(n)), A226874(n+1))`
-/

namespace A267901.P14925357654476695512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058276 (A239312 n).toNat) (A226874 (n + 1))

end

end A267901.P14925357654476695512

/-!
# A267902: Number of 2Xn arrays containing n copies of 0..2-1 with every element equal to at least one horizontal or vertical neighbor and the top left element equal to 0.

The programs for A267902, there is no canonical definition to state claims against.
-/

/-! ## A267902.P1513356284924757764

`A267901(∑[n+1]+2)`
-/

namespace A267902.P1513356284924757764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267901 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A267902.P1513356284924757764

/-! ## A267902.P10749253325782487085

`record[A267901(n+2)-A325222(n)]`
-/

namespace A267902.P10749253325782487085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267901 (n + 2) - A325222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267902.P10749253325782487085

/-! ## A267902.P16717388015144159529

`Δ[Δ[A060789(A019308(n))]]`
-/

namespace A267902.P16717388015144159529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A019308 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267902.P16717388015144159529

/-!
# A267903: Number of 3Xn arrays containing n copies of 0..3-1 with every element equal to at least one horizontal or vertical neighbor and the top left element equal to 0.

The programs for A267903, there is no canonical definition to state claims against.
-/

/-! ## A267903.P1744233782709596512

`2*A199232(n+1)`
-/

namespace A267903.P1744233782709596512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199232 (n + 1)

end

end A267903.P1744233782709596512

/-! ## A267903.P16601372690699885612

`A199232(ϕ-(1/ϕ-n))+A199232(n+1)`
-/

namespace A267903.P16601372690699885612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199232 (SequenceMachineLib.roundAway (Real.goldenRatio - (1 / Real.goldenRatio - (n : ℝ)))).toNat + A199232 (n + 1)

end

end A267903.P16601372690699885612

/-! ## A267903.P9759181935129383486

`A199232(n+1)/2^A008683(A008578(n+2))`
-/

namespace A267903.P9759181935129383486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199232 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A008578 (n + 2)).toNat : ℤ)

end

end A267903.P9759181935129383486

/-! ## A267903.P6069545260973480185

`A199232(n+1)+A199232(n+1)/A014963(A066085(n+1))`
-/

namespace A267903.P6069545260973480185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199232 (n + 1) : ℚ) + (A199232 (n + 1) : ℚ) / (A014963 (A066085 (n + 1)).toNat : ℚ)

end

end A267903.P6069545260973480185

/-! ## A267903.P11865800275129482745

`A199232(n+1)+A199232(n+1)+A000038(A016116(n))`
-/

namespace A267903.P11865800275129482745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199232 (n + 1) + (A199232 (n + 1) + A000038 (A016116 n).toNat)

end

end A267903.P11865800275129482745

/-!
# A267904: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to at least one horizontal or vertical neighbor and the top left element equal to 0.

The programs for A267904, there is no canonical definition to state claims against.
-/

/-! ## A267904.P576391831301492343

`6*A199586(n+1)`
-/

namespace A267904.P576391831301492343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A199586 (n + 1)

end

end A267904.P576391831301492343

/-! ## A267904.P4376065746462085961

`6*A199588(∑[n+2]+n+8)`
-/

namespace A267904.P4376065746462085961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A199588 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A267904.P4376065746462085961

/-! ## A267904.P968707893008913162

`6*(A199588(A055999(n)+10)+A199363(n+1))`
-/

namespace A267904.P968707893008913162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A199588 (A055999 n + 10).toNat + A199363 (n + 1))

end

end A267904.P968707893008913162

/-! ## A267904.P1491174635868238546

`6*(A199588(n+1)+A199588(A055999(n)+10))`
-/

namespace A267904.P1491174635868238546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A199588 (n + 1) + A199588 (A055999 n + 10).toNat)

end

end A267904.P1491174635868238546

/-!
# A267905: Number of n X 1 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267905, the canonical program `A267905.P2308361667573374848` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267905 has offset 1).

The definition of A267905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267905.P10040520211145202373

`ogf((1-3x+2x^2+x^3)/(1-5x+7x^2-x^3-2x^4))`
-/

namespace A267905.P10040520211145202373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, 1] [1, -5, 7, -1, -2] n

end

end A267905.P10040520211145202373

namespace A267905

/-- `ogf((1-3x+2x^2+x^3)/(1-5x+7x^2-x^3-2x^4))` -/
def P10040520211145202373.Spec : Prop :=
  ∀ n, P10040520211145202373.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P2308361667573374848

`ceil(A106514(n)/2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267905

/-- `ceil(A106514(n)/2)` -/
def P2308361667573374848.Spec : Prop :=
  ∀ n, P2308361667573374848.a n = A267905 (n + 1)

theorem P2308361667573374848.correct : P2308361667573374848.Spec := by
  intro n
  simp only [A267905, Nat.add_sub_cancel]

end A267905

/-! ## A267905.P16274524668748323139

`(∑[A156664(n)]+1)/2`
-/

namespace A267905.P16274524668748323139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A267905.P16274524668748323139

namespace A267905

/-- `(∑[A156664(n)]+1)/2` -/
def P16274524668748323139.Spec : Prop :=
  ∀ n, P16274524668748323139.a n = (A267905 (n + 1) : ℚ)

end A267905

/-! ## A267905.P278434415737422592

`A024537(n+1)-2^n`
-/

namespace A267905.P278434415737422592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (n + 1) - (2 ^ n : ℤ)

end

end A267905.P278434415737422592

namespace A267905

/-- `A024537(n+1)-2^n` -/
def P278434415737422592.Spec : Prop :=
  ∀ n, P278434415737422592.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P1228123797104302665

`A048739(n)+1-2^n`
-/

namespace A267905.P1228123797104302665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + 1 - (2 ^ n : ℤ)

end

end A267905.P1228123797104302665

namespace A267905

/-- `A048739(n)+1-2^n` -/
def P1228123797104302665.Spec : Prop :=
  ∀ n, P1228123797104302665.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P1732191336537602931

`A171842(n+2)-2^n`
-/

namespace A267905.P1732191336537602931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 2) - (2 ^ n : ℤ)

end

end A267905.P1732191336537602931

namespace A267905

/-- `A171842(n+2)-2^n` -/
def P1732191336537602931.Spec : Prop :=
  ∀ n, P1732191336537602931.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P14427467219117599721

`A094723(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A267905.P14427467219117599721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094723 (n - 1) + a (n - 1)

end

end A267905.P14427467219117599721

namespace A267905

/-- `A094723(n-1)+a(n-1)` -/
def P14427467219117599721.Spec : Prop :=
  ∀ n, P14427467219117599721.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P18115318959053472086

`∑[A000129(n+1)]+1-2^n`
-/

namespace A267905.P18115318959053472086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (2 ^ n : ℤ)

end

end A267905.P18115318959053472086

namespace A267905

/-- `∑[A000129(n+1)]+1-2^n` -/
def P18115318959053472086.Spec : Prop :=
  ∀ n, P18115318959053472086.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P1411548102338593661

`A048739(n)-A000225(n)`
-/

namespace A267905.P1411548102338593661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n - A000225 n

end

end A267905.P1411548102338593661

namespace A267905

/-- `A048739(n)-A000225(n)` -/
def P1411548102338593661.Spec : Prop :=
  ∀ n, P1411548102338593661.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P11293918074493282503

`A094723(n)-∑[A000129(n)]`
-/

namespace A267905.P11293918074493282503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267905.P11293918074493282503

namespace A267905

/-- `A094723(n)-∑[A000129(n)]` -/
def P11293918074493282503.Spec : Prop :=
  ∀ n, P11293918074493282503.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P8178493501628141078

`record[A171842(n)-A166444(n)]`
-/

namespace A267905.P8178493501628141078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267905.P8178493501628141078

namespace A267905

/-- `record[A171842(n)-A166444(n)]` -/
def P8178493501628141078.Spec : Prop :=
  ∀ n, P8178493501628141078.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P3480764885703924429

`A048739(n)+1-A000079(n)`
-/

namespace A267905.P3480764885703924429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + (1 - A000079 n)

end

end A267905.P3480764885703924429

namespace A267905

/-- `A048739(n)+1-A000079(n)` -/
def P3480764885703924429.Spec : Prop :=
  ∀ n, P3480764885703924429.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P3556904977980659098

`A048739(n)+2-A000051(n)`
-/

namespace A267905.P3556904977980659098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + (2 - A000051 n)

end

end A267905.P3556904977980659098

namespace A267905

/-- `A048739(n)+2-A000051(n)` -/
def P3556904977980659098.Spec : Prop :=
  ∀ n, P3556904977980659098.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P18360351800222566330

`∑[∑[A001333(n)]]-A000225(n)`
-/

namespace A267905.P18360351800222566330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 n

end

end A267905.P18360351800222566330

namespace A267905

/-- `∑[∑[A001333(n)]]-A000225(n)` -/
def P18360351800222566330.Spec : Prop :=
  ∀ n, P18360351800222566330.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P9639994484114983674

`∑[∑[A001333(n)-A166444(n)]]`
-/

namespace A267905.P9639994484114983674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267905.P9639994484114983674

namespace A267905

/-- `∑[∑[A001333(n)-A166444(n)]]` -/
def P9639994484114983674.Spec : Prop :=
  ∀ n, P9639994484114983674.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P1770767727681913971

`∑[A000129(n+1)]-A000225(n)`
-/

namespace A267905.P1770767727681913971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 n

end

end A267905.P1770767727681913971

namespace A267905

/-- `∑[A000129(n+1)]-A000225(n)` -/
def P1770767727681913971.Spec : Prop :=
  ∀ n, P1770767727681913971.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P12122708780723364680

`∑[A052937(n)-A011782(n)]-n`
-/

namespace A267905.P12122708780723364680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A267905.P12122708780723364680

namespace A267905

/-- `∑[A052937(n)-A011782(n)]-n` -/
def P12122708780723364680.Spec : Prop :=
  ∀ n, P12122708780723364680.a n = A267905 (n + 1)

end A267905

/-! ## A267905.P17872821506348733341

`(A078057(n+1)-A000225(n+1))/2`
-/

namespace A267905.P17872821506348733341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078057 (n + 1) - A000225 (n + 1) : ℚ) / 2

end

end A267905.P17872821506348733341

namespace A267905

/-- `(A078057(n+1)-A000225(n+1))/2` -/
def P17872821506348733341.Spec : Prop :=
  ∀ n, P17872821506348733341.a n = (A267905 (n + 1) : ℚ)

end A267905

/-!
# A267906: Number of n X 2 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267906, the canonical program `A267906.P2201547106562469108` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267906 has offset 1).

The definition of A267906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267906.P2201547106562469108

`ceil(A269684(n+1)²/6)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267906

/-- `ceil(A269684(n+1)²/6)` -/
def P2201547106562469108.Spec : Prop :=
  ∀ n, P2201547106562469108.a n = A267906 (n + 1)

theorem P2201547106562469108.correct : P2201547106562469108.Spec := by
  intro n
  simp only [A267906, Nat.add_sub_cancel]

end A267906

/-! ## A267906.P12775231737483803129

`floor(A269684(n+1)²/6)+A007318(∑[n])`
-/

namespace A267906.P12775231737483803129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269684 (n + 1) ^ 2 : ℚ) / 6⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267906.P12775231737483803129

namespace A267906

/-- `floor(A269684(n+1)²/6)+A007318(∑[n])` -/
def P12775231737483803129.Spec : Prop :=
  ∀ n, P12775231737483803129.a n = A267906 (n + 1)

end A267906

/-! ## A267906.P8781768166300744084

`floor(A269684(A030101(n+4)%2+n)²/6)+1`
-/

namespace A267906.P8781768166300744084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269684 (Int.tmod (A030101 (n + 4)) 2 + (n : ℤ)).toNat ^ 2 : ℚ) / 6⌋ + 1

end

end A267906.P8781768166300744084

namespace A267906

/-- `floor(A269684(A030101(n+4)%2+n)²/6)+1` -/
def P8781768166300744084.Spec : Prop :=
  ∀ n, P8781768166300744084.a n = A267906 (n + 1)

end A267906

/-! ## A267906.P4908028812397330819

`floor(A269684(A127334(2*(n+2))%2+n)²/6)+1`
-/

namespace A267906.P4908028812397330819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269684 (Int.tmod (A127334 (2 * (n + 2))) 2 + (n : ℤ)).toNat ^ 2 : ℚ) / 6⌋ + 1

end

end A267906.P4908028812397330819

namespace A267906

/-- `floor(A269684(A127334(2*(n+2))%2+n)²/6)+1` -/
def P4908028812397330819.Spec : Prop :=
  ∀ n, P4908028812397330819.a n = A267906 (n + 1)

end A267906

/-! ## A267906.P6644100584789930369

`A269684(n+1)²/6+A057427(A322820(n+1))/2`
-/

namespace A267906.P6644100584789930369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269684 (n + 1) ^ 2 : ℚ) / 6 + (A057427 (A322820 (n + 1)).toNat : ℚ) / 2

end

end A267906.P6644100584789930369

namespace A267906

/-- `A269684(n+1)²/6+A057427(A322820(n+1))/2` -/
def P6644100584789930369.Spec : Prop :=
  ∀ n, P6644100584789930369.a n = (A267906 (n + 1) : ℚ)

end A267906

/-! ## A267906.P4599562278484517477

`floor(A269684(A320323(n+1)%2+n)²/6)+1`
-/

namespace A267906.P4599562278484517477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269684 (Int.tmod (A320323 (n + 1)) 2 + (n : ℤ)).toNat ^ 2 : ℚ) / 6⌋ + 1

end

end A267906.P4599562278484517477

namespace A267906

/-- `floor(A269684(A320323(n+1)%2+n)²/6)+1` -/
def P4599562278484517477.Spec : Prop :=
  ∀ n, P4599562278484517477.a n = A267906 (n + 1)

end A267906

/-!
# A267907: Number of nX3 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267907, there is no canonical definition to state claims against.
-/

/-! ## A267907.P8395721018473796542

`A267911(∑[n+3]+1)`
-/

namespace A267907.P8395721018473796542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267907.P8395721018473796542

/-! ## A267907.P14861349463689210168

`abs(1-A267911(A055999(n)+4))+1`
-/

namespace A267907.P14861349463689210168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A267911 (A055999 n + 4).toNat| + 1

end

end A267907.P14861349463689210168

/-!
# A267908: Number of nX4 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267908, there is no canonical definition to state claims against.
-/

/-! ## A267908.P14715029753906087992

`A267911(A141214(n+1))`
-/

namespace A267908.P14715029753906087992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A141214 (n + 1)).toNat

end

end A267908.P14715029753906087992

/-! ## A267908.P15661049340695403694

`A267911(A155212(n)+5)`
-/

namespace A267908.P15661049340695403694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A155212 n + 5).toNat

end

end A267908.P15661049340695403694

/-! ## A267908.P14074196393458343811

`A267911(A056000(n)+7)`
-/

namespace A267908.P14074196393458343811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A056000 n + 7).toNat

end

end A267908.P14074196393458343811

/-! ## A267908.P713476392003782378

`A267911(eq[2, A152157(n)])`
-/

namespace A267908.P713476392003782378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267908.P713476392003782378

/-! ## A267908.P10901429908887239413

`A267911(eq[3, A193592(n)])`
-/

namespace A267908.P10901429908887239413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267908.P10901429908887239413

/-!
# A267909: Number of nX5 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267909, there is no canonical definition to state claims against.
-/

/-! ## A267909.P4631845783459717103

`A267911(Δ[A264443(n)])`
-/

namespace A267909.P4631845783459717103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (f1 (n + 1) - f1 n).toNat

end

end A267909.P4631845783459717103

/-! ## A267909.P14568481232261588291

`A267911(A056115(n)+11)`
-/

namespace A267909.P14568481232261588291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A056115 n + 11).toNat

end

end A267909.P14568481232261588291

/-! ## A267909.P4764549325436025264

`A267911(eq[2, A092921(n)])`
-/

namespace A267909.P4764549325436025264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267909.P4764549325436025264

/-! ## A267909.P2731327122065150252

`A267911(eq[3, A152157(n)])`
-/

namespace A267909.P2731327122065150252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267909.P2731327122065150252

/-!
# A267910: Number of nX6 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267910, there is no canonical definition to state claims against.
-/

/-! ## A267910.P17433114771800515641

`A267911(A052905(n+3))`
-/

namespace A267910.P17433114771800515641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A052905 (n + 3)).toNat

end

end A267910.P17433114771800515641

/-! ## A267910.P15801844210108220281

`A267911(eq[5, A193592(n)])`
-/

namespace A267910.P15801844210108220281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267910.P15801844210108220281

/-! ## A267910.P3730791453819897265

`A267911(eq[5, A025581(n)]+1)`
-/

namespace A267910.P3730791453819897265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A267910.P3730791453819897265

/-!
# A267912: Number of 1 X n 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267912, the canonical program `A267912.P1978105672010749905` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267912 has offset 1).

The definition of A267912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267912.P12639227435635853972

`ogf((1-x-4x^2+3x^3+4x^4)/(1-3x-2x^2+8x^3))`
-/

namespace A267912.P12639227435635853972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4, 3, 4] [1, -3, -2, 8] n

end

end A267912.P12639227435635853972

namespace A267912

/-- `ogf((1-x-4x^2+3x^3+4x^4)/(1-3x-2x^2+8x^3))` -/
def P12639227435635853972.Spec : Prop :=
  ∀ n, P12639227435635853972.a n = A267912 (n + 1)

end A267912

/-! ## A267912.P1978105672010749905

`3*a(n-1)+2*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=29`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267912

/-- `3*a(n-1)+2*a(n-2)-8*a(n-3)` -/
def P1978105672010749905.Spec : Prop :=
  ∀ n, P1978105672010749905.a n = A267912 (n + 1)

theorem P1978105672010749905.correct : P1978105672010749905.Spec := by
  intro n
  simp only [A267912, Nat.add_sub_cancel]

end A267912

/-! ## A267912.P5338196500667094624

`ceil(A269461(n+1)/6)`
-/

namespace A267912.P5338196500667094624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269461 (n + 1) : ℚ) / 6⌉

end

end A267912.P5338196500667094624

namespace A267912

/-- `ceil(A269461(n+1)/6)` -/
def P5338196500667094624.Spec : Prop :=
  ∀ n, P5338196500667094624.a n = A267912 (n + 1)

end A267912

/-! ## A267912.P4222722660518994372

`round(A269461(A000027(n+1))/6)`
-/

namespace A267912.P4222722660518994372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A269461 (A000027 (n + 1)).toNat : ℚ) / 6)

end

end A267912.P4222722660518994372

namespace A267912

/-- `round(A269461(A000027(n+1))/6)` -/
def P4222722660518994372.Spec : Prop :=
  ∀ n, P4222722660518994372.a n = A267912 (n + 1)

end A267912

/-! ## A267912.P9045714908507061509

`round(A267913(n+1)/A269461(n+1))`
-/

namespace A267912.P9045714908507061509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267913 (n + 1) : ℚ) / (A269461 (n + 1) : ℚ))

end

end A267912.P9045714908507061509

namespace A267912

/-- `round(A267913(n+1)/A269461(n+1))` -/
def P9045714908507061509.Spec : Prop :=
  ∀ n, P9045714908507061509.a n = A267912 (n + 1)

end A267912

/-! ## A267912.P7266616018758300534

`A268956(∑[n+2])`
-/

namespace A267912.P7266616018758300534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267912.P7266616018758300534

namespace A267912

/-- `A268956(∑[n+2])` -/
def P7266616018758300534.Spec : Prop :=
  ∀ n, P7266616018758300534.a n = A267912 (n + 1)

end A267912

/-! ## A267912.P10725845597519132752

`record[A268956(A000096(A069013(n+1)))]`
-/

namespace A267912.P10725845597519132752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000096 (A069013 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267912.P10725845597519132752

namespace A267912

/-- `record[A268956(A000096(A069013(n+1)))]` -/
def P10725845597519132752.Spec : Prop :=
  ∀ n, P10725845597519132752.a n = A267912 (n + 1)

end A267912

/-! ## A267912.P6446541139298013520

`round(A267914(n+1)/A269461(n+1)²)`
-/

namespace A267912.P6446541139298013520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267914 (n + 1) : ℚ) / (A269461 (n + 1) ^ 2 : ℚ))

end

end A267912.P6446541139298013520

namespace A267912

/-- `round(A267914(n+1)/A269461(n+1)²)` -/
def P6446541139298013520.Spec : Prop :=
  ∀ n, P6446541139298013520.a n = A267912 (n + 1)

end A267912

/-!
# A267913: Number of 2 X n 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267913, the canonical program `A267913.P11790783515534333936` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267913 has offset 1).

The definition of A267913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267913.P11790783515534333936

`ceil(A269461(n+1)²/6)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267913

/-- `ceil(A269461(n+1)²/6)` -/
def P11790783515534333936.Spec : Prop :=
  ∀ n, P11790783515534333936.a n = A267913 (n + 1)

theorem P11790783515534333936.correct : P11790783515534333936.Spec := by
  intro n
  simp only [A267913, Nat.add_sub_cancel]

end A267913

/-! ## A267913.P6148867079098189559

`round(A267914(n+1)/A269461(n+1))`
-/

namespace A267913.P6148867079098189559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267914 (n + 1) : ℚ) / (A269461 (n + 1) : ℚ))

end

end A267913.P6148867079098189559

namespace A267913

/-- `round(A267914(n+1)/A269461(n+1))` -/
def P6148867079098189559.Spec : Prop :=
  ∀ n, P6148867079098189559.a n = A267913 (n + 1)

end A267913

/-! ## A267913.P10067026215667490910

`round(A267914(n+1)/A269467(∑[n+2]))`
-/

namespace A267913.P10067026215667490910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267914 (n + 1) : ℚ) / (A269467 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A267913.P10067026215667490910

namespace A267913

/-- `round(A267914(n+1)/A269467(∑[n+2]))` -/
def P10067026215667490910.Spec : Prop :=
  ∀ n, P10067026215667490910.a n = A267913 (n + 1)

end A267913

/-! ## A267913.P8236086870022753522

`round(A267914(n+1)/A269678(∑[n+2]))`
-/

namespace A267913.P8236086870022753522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267914 (n + 1) : ℚ) / (A269678 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A267913.P8236086870022753522

namespace A267913

/-- `round(A267914(n+1)/A269678(∑[n+2]))` -/
def P8236086870022753522.Spec : Prop :=
  ∀ n, P8236086870022753522.a n = A267913 (n + 1)

end A267913

/-! ## A267913.P15006547309557370590

`A267911(∑[n+1]+2)`
-/

namespace A267913.P15006547309557370590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A267913.P15006547309557370590

namespace A267913

/-- `A267911(∑[n+1]+2)` -/
def P15006547309557370590.Spec : Prop :=
  ∀ n, P15006547309557370590.a n = A267913 (n + 1)

end A267913

/-!
# A267914: Number of 3Xn 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267914, there is no canonical definition to state claims against.
-/

/-! ## A267914.P15630660295563324510

`A267911(∑[n+2]+4)`
-/

namespace A267914.P15630660295563324510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267914.P15630660295563324510

/-! ## A267914.P2470277101467289480

`lcm(1-and(2, n), A267911(A167614(n+1)))`
-/

namespace A267914.P2470277101467289480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A267911 (A167614 (n + 1)).toNat)

end

end A267914.P2470277101467289480

/-! ## A267914.P7303024451182110649

`A267911(A167614(n+1))+A185238(n)`
-/

namespace A267914.P7303024451182110649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A167614 (n + 1)).toNat + A185238 n

end

end A267914.P7303024451182110649

/-! ## A267914.P1833636040076314603

`A267911(A167614(n+1))+A235145(n)`
-/

namespace A267914.P1833636040076314603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A167614 (n + 1)).toNat + A235145 n

end

end A267914.P1833636040076314603

/-! ## A267914.P8213643916509851317

`A326685(n)+A267911(A167614(n+1))`
-/

namespace A267914.P8213643916509851317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A267911 (A167614 (n + 1)).toNat

end

end A267914.P8213643916509851317

/-!
# A267915: Number of 4Xn 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267915, there is no canonical definition to state claims against.
-/

/-! ## A267915.P11831898984365435465

`A267911(A141214(n)+7)`
-/

namespace A267915.P11831898984365435465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A141214 n + 7).toNat

end

end A267915.P11831898984365435465

/-! ## A267915.P16012114932591378963

`A267911(A052905(n)+9)`
-/

namespace A267915.P16012114932591378963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A052905 n + 9).toNat

end

end A267915.P16012114932591378963

/-! ## A267915.P5612098317638509839

`A267911(A055999(n)+10)`
-/

namespace A267915.P5612098317638509839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A055999 n + 10).toNat

end

end A267915.P5612098317638509839

/-! ## A267915.P11474341256527233878

`A267911(A167614(n+2)+1)`
-/

namespace A267915.P11474341256527233878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A167614 (n + 2) + 1).toNat

end

end A267915.P11474341256527233878

/-! ## A267915.P10383353396040252312

`A267911(eq[5, A131818(n+1)])`
-/

namespace A267915.P10383353396040252312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267915.P10383353396040252312

/-!
# A267916: Number of 5Xn 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267916, there is no canonical definition to state claims against.
-/

/-! ## A267916.P3426005014751375633

`A267911(A155212(n)+13)`
-/

namespace A267916.P3426005014751375633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A155212 n + 13).toNat

end

end A267916.P3426005014751375633

/-! ## A267916.P14014223708262438245

`A267911(eq[7, A066657(n)])`
-/

namespace A267916.P14014223708262438245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267916.P14014223708262438245

/-! ## A267916.P8556141476466297042

`A267911(A167614(n+3)+2)`
-/

namespace A267916.P8556141476466297042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A167614 (n + 3) + 2).toNat

end

end A267916.P8556141476466297042

/-! ## A267916.P6117014309029335583

`A267911(A000124(n+4)+4)`
-/

namespace A267916.P6117014309029335583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (A000124 (n + 4) + 4).toNat

end

end A267916.P6117014309029335583

/-! ## A267916.P4586964560307647766

`A267911(eq[6, A131818(n+1)])`
-/

namespace A267916.P4586964560307647766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267916.P4586964560307647766

/-!
# A267917: Number of 6Xn 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267917, there is no canonical definition to state claims against.
-/

/-! ## A267917.P11361871885397952317

`A267911(eq[7, A131818(n+1)])`
-/

namespace A267917.P11361871885397952317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267917.P11361871885397952317

/-!
# A267918: Numbers n such that x^(n-5)*(x+1)^5+1 is irreducible in F2[x].

The programs for A267918, there is no canonical definition to state claims against.
-/

/-! ## A267918.P16431110813979725941

`filter[A057474(n+3), A011558(#)]`
-/

namespace A267918.P16431110813979725941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057474 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A267918.P16431110813979725941

/-! ## A267918.P14583823471383866938

`filter[A057474(n+3), A168184(#)]`
-/

namespace A267918.P14583823471383866938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057474 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A267918.P14583823471383866938

/-! ## A267918.P2255127318807278147

`filter[A057474(n+3), A168046(#)]`
-/

namespace A267918.P2255127318807278147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057474 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A267918.P2255127318807278147

/-! ## A267918.P9407491012784455120

`filter[A057474(n+3), A209929(#)]`
-/

namespace A267918.P9407491012784455120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057474 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A267918.P9407491012784455120

/-! ## A267918.P12540639959506360500

`∩[A005050(n+6), A057474(n+1)]`
-/

namespace A267918.P12540639959506360500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005050 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267918.P12540639959506360500

/-!
# A267919: Triangle read by rows giving successive states of cellular automaton generated by "Rule 243" initiated with a single ON (black) cell.

The programs for A267919, the canonical program `A267919.P14893247931097000299` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267919 has offset 0).

The definition of A267919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267919.P7111703794893891231

`char[comp[n²-2]]`
-/

namespace A267919.P7111703794893891231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267919.P7111703794893891231

namespace A267919

/-- `char[comp[n²-2]]` -/
def P7111703794893891231.Spec : Prop :=
  ∀ n, (P7111703794893891231.a n : ℤ) = A267919 n

end A267919

/-! ## A267919.P7756471376549118704

`xor(1, char[n²-2])`
-/

namespace A267919.P7756471376549118704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A267919.P7756471376549118704

namespace A267919

/-- `xor(1, char[n²-2])` -/
def P7756471376549118704.Spec : Prop :=
  ∀ n, (P7756471376549118704.a n : ℤ) = A267919 n

end A267919

/-! ## A267919.P11109491713800693321

`dr(1-char[n²-2])`
-/

namespace A267919.P11109491713800693321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A267919.P11109491713800693321

namespace A267919

/-- `dr(1-char[n²-2])` -/
def P11109491713800693321.Spec : Prop :=
  ∀ n, (P11109491713800693321.a n : ℤ) = A267919 n

end A267919

/-! ## A267919.P4382827303637231272

`floor(cos(Δ[floor(sqrt(n+1))]))`
-/

namespace A267919.P4382827303637231272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A267919.P4382827303637231272

namespace A267919

/-- `floor(cos(Δ[floor(sqrt(n+1))]))` -/
def P4382827303637231272.Spec : Prop :=
  ∀ n, P4382827303637231272.a n = A267919 n

end A267919

/-! ## A267919.P8295336838930662026

`floor(acos(Δ[floor(sqrt(n+1))]))`
-/

namespace A267919.P8295336838930662026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A267919.P8295336838930662026

namespace A267919

/-- `floor(acos(Δ[floor(sqrt(n+1))]))` -/
def P8295336838930662026.Spec : Prop :=
  ∀ n, P8295336838930662026.a n = A267919 n

end A267919

/-! ## A267919.P9269655556581218766

`floor(acot(Δ[floor(sqrt(n+1))]))`
-/

namespace A267919.P9269655556581218766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A267919.P9269655556581218766

namespace A267919

/-- `floor(acot(Δ[floor(sqrt(n+1))]))` -/
def P9269655556581218766.Spec : Prop :=
  ∀ n, P9269655556581218766.a n = A267919 n

end A267919

/-! ## A267919.P10232704214700342420

`floor(ratio[acot(floor(sqrt(n+1)))])`
-/

namespace A267919.P10232704214700342420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.sqrt (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A267919.P10232704214700342420

namespace A267919

/-- `floor(ratio[acot(floor(sqrt(n+1)))])` -/
def P10232704214700342420.Spec : Prop :=
  ∀ n, P10232704214700342420.a n = A267919 n

end A267919

/-! ## A267919.P4706363791163406872

`sin(acos(Δ[ceil(sqrt(n+2))]))`
-/

namespace A267919.P4706363791163406872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 2 : ℝ)⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos (f1 (n + 1) - f1 n : ℝ))

end

end A267919.P4706363791163406872

namespace A267919

/-- `sin(acos(Δ[ceil(sqrt(n+2))]))` -/
def P4706363791163406872.Spec : Prop :=
  ∀ n, P4706363791163406872.a n = (A267919 n : ℝ)

end A267919

/-! ## A267919.P12774752890665641271

`cos(asin(Δ[ceil(sqrt(n+2))]))`
-/

namespace A267919.P12774752890665641271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 2 : ℝ)⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin (f1 (n + 1) - f1 n : ℝ))

end

end A267919.P12774752890665641271

namespace A267919

/-- `cos(asin(Δ[ceil(sqrt(n+2))]))` -/
def P12774752890665641271.Spec : Prop :=
  ∀ n, P12774752890665641271.a n = (A267919 n : ℝ)

end A267919

/-! ## A267919.P11591966749526329378

`1-char[col(n)²-2]`
-/

namespace A267919.P11591966749526329378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267919.P11591966749526329378

namespace A267919

/-- `1-char[col(n)²-2]` -/
def P11591966749526329378.Spec : Prop :=
  ∀ n, P11591966749526329378.a n = A267919 n

end A267919

/-! ## A267919.P6050504235677825118

`1-char[row(n)²-2]`
-/

namespace A267919.P6050504235677825118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267919.P6050504235677825118

namespace A267919

/-- `1-char[row(n)²-2]` -/
def P6050504235677825118.Spec : Prop :=
  ∀ n, P6050504235677825118.a n = A267919 n

end A267919

/-! ## A267919.P7985083501665997161

`ceil(∏{d}[n+2, (1-ϕ)/#])`
-/

namespace A267919.P7985083501665997161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n), (1 - Real.goldenRatio) / (d : ℝ)⌉

end

end A267919.P7985083501665997161

namespace A267919

/-- `ceil(∏{d}[n+2, (1-ϕ)/#])` -/
def P7985083501665997161.Spec : Prop :=
  ∀ n, P7985083501665997161.a n = A267919 n

end A267919

/-! ## A267919.P14893247931097000299

`∑{d}[n+2, (n+3)%#]%2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267919

/-- `∑{d}[n+2, (n+3)%#]%2` -/
def P14893247931097000299.Spec : Prop :=
  ∀ n, (P14893247931097000299.a n : ℤ) = A267919 n

theorem P14893247931097000299.correct : P14893247931097000299.Spec := by
  intro n
  simp only [A267919]

end A267919

/-! ## A267919.P11399679608177746020

`1-char[ogf((1-5x+2x^2)/(-1+3x-3x^2+x^3))]`
-/

namespace A267919.P11399679608177746020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, -2] [1, -3, 3, -1] n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267919.P11399679608177746020

namespace A267919

/-- `1-char[ogf((1-5x+2x^2)/(-1+3x-3x^2+x^3))]` -/
def P11399679608177746020.Spec : Prop :=
  ∀ n, P11399679608177746020.a n = A267919 n

end A267919

/-! ## A267919.P18049843943430536848

`A267866(n+1)`
-/

namespace A267919.P18049843943430536848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 (n + 1)

end

end A267919.P18049843943430536848

namespace A267919

/-- `A267866(n+1)` -/
def P18049843943430536848.Spec : Prop :=
  ∀ n, P18049843943430536848.a n = A267919 n

end A267919

/-! ## A267919.P4946286487845731812

`A049240(n+2)`
-/

namespace A267919.P4946286487845731812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 2)

end

end A267919.P4946286487845731812

namespace A267919

/-- `A049240(n+2)` -/
def P4946286487845731812.Spec : Prop :=
  ∀ n, P4946286487845731812.a n = A267919 n

end A267919

/-! ## A267919.P2788357498338275610

`abs(A344617(n+2))`
-/

namespace A267919.P2788357498338275610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344617 (n + 2)|

end

end A267919.P2788357498338275610

namespace A267919

/-- `abs(A344617(n+2))` -/
def P2788357498338275610.Spec : Prop :=
  ∀ n, P2788357498338275610.a n = A267919 n

end A267919

/-! ## A267919.P13998499002892474369

`log2(A169695(n+2))`
-/

namespace A267919.P13998499002892474369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A169695 (n + 2) : ℝ)

end

end A267919.P13998499002892474369

namespace A267919

/-- `log2(A169695(n+2))` -/
def P13998499002892474369.Spec : Prop :=
  ∀ n, P13998499002892474369.a n = (A267919 n : ℝ)

end A267919

/-! ## A267919.P1789706016123821008

`A316355(n+1)%2`
-/

namespace A267919.P1789706016123821008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316355 (n + 1)) 2

end

end A267919.P1789706016123821008

namespace A267919

/-- `A316355(n+1)%2` -/
def P1789706016123821008.Spec : Prop :=
  ∀ n, P1789706016123821008.a n = A267919 n

end A267919

/-! ## A267919.P10853991650100476856

`A052409(n+2)%2`
-/

namespace A267919.P10853991650100476856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (n + 2)) 2

end

end A267919.P10853991650100476856

namespace A267919

/-- `A052409(n+2)%2` -/
def P10853991650100476856.Spec : Prop :=
  ∀ n, P10853991650100476856.a n = A267919 n

end A267919

/-!
# A267920: Binary representation of the n-th iteration of the "Rule 243" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267920, there is no canonical definition to state claims against.
-/

/-! ## A267920.P6856287631674296740

`A283504(2*n)`
-/

namespace A267920.P6856287631674296740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283504 (2 * n)

end

end A267920.P6856287631674296740

/-! ## A267920.P803131328983145421

`A284480(2*n)`
-/

namespace A267920.P803131328983145421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284480 (2 * n)

end

end A267920.P803131328983145421

/-! ## A267920.P2983603205371777576

`A290070(2*n)`
-/

namespace A267920.P2983603205371777576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290070 (2 * n)

end

end A267920.P2983603205371777576

/-! ## A267920.P17277855858810307223

`A290111(2*n)`
-/

namespace A267920.P17277855858810307223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 (2 * n)

end

end A267920.P17277855858810307223

/-! ## A267920.P8725332014555690811

`A290660(2*n)`
-/

namespace A267920.P8725332014555690811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 (2 * n)

end

end A267920.P8725332014555690811

/-! ## A267920.P1704737722018764270

`∑[A288761(2*n)]`
-/

namespace A267920.P1704737722018764270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288761 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267920.P1704737722018764270

/-! ## A267920.P14756256640030835921

`∑[A290857(2*n)]`
-/

namespace A267920.P14756256640030835921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290857 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267920.P14756256640030835921

/-! ## A267920.P3433175091638339283

`or(1, A283352(2*n))`
-/

namespace A267920.P3433175091638339283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283352 (2 * n))

end

end A267920.P3433175091638339283

/-! ## A267920.P1875972326472229850

`or(1, A290192(2*n))`
-/

namespace A267920.P1875972326472229850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290192 (2 * n))

end

end A267920.P1875972326472229850

/-! ## A267920.P10857749566768732843

`or(1, A290813(2*n))`
-/

namespace A267920.P10857749566768732843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290813 (2 * n))

end

end A267920.P10857749566768732843

/-!
# A267921: Decimal representation of the n-th iteration of the "Rule 243" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267921, the canonical program `A267921.P17742779220764186419` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267921 has offset 0).

The definition of A267921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267921.P17742779220764186419

`abs(2*4^n-3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267921

/-- `abs(2*4^n-3)` -/
def P17742779220764186419.Spec : Prop :=
  ∀ n, P17742779220764186419.a n = A267921 n

theorem P17742779220764186419.correct : P17742779220764186419.Spec := by
  intro n
  simp only [A267921]

end A267921

/-! ## A267921.P4031094391192905899

`ogf((1+8x^2)/(1-5x+4x^2))`
-/

namespace A267921.P4031094391192905899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 8] [1, -5, 4] n

end

end A267921.P4031094391192905899

namespace A267921

/-- `ogf((1+8x^2)/(1-5x+4x^2))` -/
def P4031094391192905899.Spec : Prop :=
  ∀ n, P4031094391192905899.a n = A267921 n

end A267921

/-! ## A267921.P17739703586699215910

`2*lcm(2, 4^n)-3`
-/

namespace A267921.P17739703586699215910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 (4 ^ n) : ℤ) - 3

end

end A267921.P17739703586699215910

namespace A267921

/-- `2*lcm(2, 4^n)-3` -/
def P17739703586699215910.Spec : Prop :=
  ∀ n, P17739703586699215910.a n = A267921 n

end A267921

/-! ## A267921.P5851769102946604099

`-or(3, -(2*4^n))`
-/

namespace A267921.P5851769102946604099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-(2 * 4 ^ n : ℤ))

end

end A267921.P5851769102946604099

namespace A267921

/-- `-or(3, -(2*4^n))` -/
def P5851769102946604099.Spec : Prop :=
  ∀ n, P5851769102946604099.a n = A267921 n

end A267921

/-! ## A267921.P18161271297614944140

`and(2*4^n-1, -3)`
-/

namespace A267921.P18161271297614944140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * 4 ^ n : ℤ) - 1) (-3)

end

end A267921.P18161271297614944140

namespace A267921

/-- `and(2*4^n-1, -3)` -/
def P18161271297614944140.Spec : Prop :=
  ∀ n, P18161271297614944140.a n = A267921 n

end A267921

/-! ## A267921.P13597344593923214669

`4*a(n-1)+9` with `a(0)=1, a(1)=5`
-/

namespace A267921.P13597344593923214669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) + 9

end

end A267921.P13597344593923214669

namespace A267921

/-- `4*a(n-1)+9` -/
def P13597344593923214669.Spec : Prop :=
  ∀ n, (P13597344593923214669.a n : ℤ) = A267921 n

end A267921

/-! ## A267921.P570149003797151753

`lcm(4, a(n-1))+9` with `a(0)=1, a(1)=5`
-/

namespace A267921.P570149003797151753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 9

end

end A267921.P570149003797151753

namespace A267921

/-- `lcm(4, a(n-1))+9` -/
def P570149003797151753.Spec : Prop :=
  ∀ n, (P570149003797151753.a n : ℤ) = A267921 n

end A267921

/-! ## A267921.P4053861848196117746

`or(9, 4*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A267921.P4053861848196117746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lor 9 (4 * a (n - 1))

end

end A267921.P4053861848196117746

namespace A267921

/-- `or(9, 4*a(n-1))` -/
def P4053861848196117746.Spec : Prop :=
  ∀ n, (P4053861848196117746.a n : ℤ) = A267921 n

end A267921

/-! ## A267921.P9423568230050664055

`xor(9, 4*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A267921.P9423568230050664055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.xor 9 (4 * a (n - 1))

end

end A267921.P9423568230050664055

namespace A267921

/-- `xor(9, 4*a(n-1))` -/
def P9423568230050664055.Spec : Prop :=
  ∀ n, (P9423568230050664055.a n : ℤ) = A267921 n

end A267921

/-! ## A267921.P8549648235467556446

`record[-or(3, (-2)^(n+1))]`
-/

namespace A267921.P8549648235467556446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 ((-2) ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267921.P8549648235467556446

namespace A267921

/-- `record[-or(3, (-2)^(n+1))]` -/
def P8549648235467556446.Spec : Prop :=
  ∀ n, P8549648235467556446.a n = A267921 n

end A267921

/-! ## A267921.P10943623019582607286

`record[4*a(n-1)]-3` with `a(0)=4, a(1)=2`
-/

namespace A267921.P10943623019582607286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 3

end

end A267921.P10943623019582607286

namespace A267921

/-- `record[4*a(n-1)]-3` -/
def P10943623019582607286.Spec : Prop :=
  ∀ n, P10943623019582607286.a n = A267921 n

end A267921

/-! ## A267921.P14121989298400556410

`A283506(2*n)`
-/

namespace A267921.P14121989298400556410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 (2 * n)

end

end A267921.P14121989298400556410

namespace A267921

/-- `A283506(2*n)` -/
def P14121989298400556410.Spec : Prop :=
  ∀ n, P14121989298400556410.a n = A267921 n

end A267921

/-! ## A267921.P9693737772630143495

`A284482(2*n)`
-/

namespace A267921.P9693737772630143495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284482 (2 * n)

end

end A267921.P9693737772630143495

namespace A267921

/-- `A284482(2*n)` -/
def P9693737772630143495.Spec : Prop :=
  ∀ n, P9693737772630143495.a n = A267921 n

end A267921

/-! ## A267921.P16721084984367948459

`A290073(2*n)`
-/

namespace A267921.P16721084984367948459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290073 (2 * n)

end

end A267921.P16721084984367948459

namespace A267921

/-- `A290073(2*n)` -/
def P16721084984367948459.Spec : Prop :=
  ∀ n, P16721084984367948459.a n = A267921 n

end A267921

/-! ## A267921.P1489716911505446825

`A290113(2*n)`
-/

namespace A267921.P1489716911505446825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 (2 * n)

end

end A267921.P1489716911505446825

namespace A267921

/-- `A290113(2*n)` -/
def P1489716911505446825.Spec : Prop :=
  ∀ n, P1489716911505446825.a n = A267921 n

end A267921

/-! ## A267921.P5875648750202151889

`record[Δ[A282454(n)]]`
-/

namespace A267921.P5875648750202151889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282454 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267921.P5875648750202151889

namespace A267921

/-- `record[Δ[A282454(n)]]` -/
def P5875648750202151889.Spec : Prop :=
  ∀ n, P5875648750202151889.a n = A267921 n

end A267921

/-! ## A267921.P15132462118837808931

`∑[A288763(2*n)]`
-/

namespace A267921.P15132462118837808931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288763 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267921.P15132462118837808931

namespace A267921

/-- `∑[A288763(2*n)]` -/
def P15132462118837808931.Spec : Prop :=
  ∀ n, P15132462118837808931.a n = A267921 n

end A267921

/-! ## A267921.P15183866643254273018

`∑[A290859(2*n)]`
-/

namespace A267921.P15183866643254273018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290859 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267921.P15183866643254273018

namespace A267921

/-- `∑[A290859(2*n)]` -/
def P15183866643254273018.Spec : Prop :=
  ∀ n, P15183866643254273018.a n = A267921 n

end A267921

/-! ## A267921.P4966933488121848375

`2*A103454(n)-1`
-/

namespace A267921.P4966933488121848375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103454 n - 1

end

end A267921.P4966933488121848375

namespace A267921

/-- `2*A103454(n)-1` -/
def P4966933488121848375.Spec : Prop :=
  ∀ n, P4966933488121848375.a n = A267921 n

end A267921

/-! ## A267921.P6791667033687604847

`2*A155543(n)-3`
-/

namespace A267921.P6791667033687604847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155543 n - 3

end

end A267921.P6791667033687604847

namespace A267921

/-- `2*A155543(n)-3` -/
def P6791667033687604847.Spec : Prop :=
  ∀ n, P6791667033687604847.a n = A267921 n

end A267921

/-!
# A267922: Triangle read by rows giving successive states of cellular automaton generated by "Rule 245" initiated with a single ON (black) cell.

The programs for A267922, the canonical program `A267922.P1262934083183129406` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267922 has offset 0).

The definition of A267922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267922.P4697926178903899626

`char[comp[n²-3]]`
-/

namespace A267922.P4697926178903899626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267922.P4697926178903899626

namespace A267922

/-- `char[comp[n²-3]]` -/
def P4697926178903899626.Spec : Prop :=
  ∀ n, (P4697926178903899626.a n : ℤ) = A267922 n

end A267922

/-! ## A267922.P15602482815504811068

`xor(1, char[n²-3])`
-/

namespace A267922.P15602482815504811068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A267922.P15602482815504811068

namespace A267922

/-- `xor(1, char[n²-3])` -/
def P15602482815504811068.Spec : Prop :=
  ∀ n, (P15602482815504811068.a n : ℤ) = A267922 n

end A267922

/-! ## A267922.P13592710953394002468

`dr(1-char[n²-3])`
-/

namespace A267922.P13592710953394002468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A267922.P13592710953394002468

namespace A267922

/-- `dr(1-char[n²-3])` -/
def P13592710953394002468.Spec : Prop :=
  ∀ n, (P13592710953394002468.a n : ℤ) = A267922 n

end A267922

/-! ## A267922.P3955301615122333507

`floor(cos(Δ[floor(sqrt(n+2))]))`
-/

namespace A267922.P3955301615122333507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A267922.P3955301615122333507

namespace A267922

/-- `floor(cos(Δ[floor(sqrt(n+2))]))` -/
def P3955301615122333507.Spec : Prop :=
  ∀ n, P3955301615122333507.a n = A267922 n

end A267922

/-! ## A267922.P2273242340615002146

`floor(acos(Δ[floor(sqrt(n+2))]))`
-/

namespace A267922.P2273242340615002146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A267922.P2273242340615002146

namespace A267922

/-- `floor(acos(Δ[floor(sqrt(n+2))]))` -/
def P2273242340615002146.Spec : Prop :=
  ∀ n, P2273242340615002146.a n = A267922 n

end A267922

/-! ## A267922.P10369069245447498044

`floor(acot(Δ[floor(sqrt(n+2))]))`
-/

namespace A267922.P10369069245447498044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A267922.P10369069245447498044

namespace A267922

/-- `floor(acot(Δ[floor(sqrt(n+2))]))` -/
def P10369069245447498044.Spec : Prop :=
  ∀ n, P10369069245447498044.a n = A267922 n

end A267922

/-! ## A267922.P6482681001136730266

`floor(ratio[acot(floor(sqrt(n+2)))])`
-/

namespace A267922.P6482681001136730266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.sqrt (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A267922.P6482681001136730266

namespace A267922

/-- `floor(ratio[acot(floor(sqrt(n+2)))])` -/
def P6482681001136730266.Spec : Prop :=
  ∀ n, P6482681001136730266.a n = A267922 n

end A267922

/-! ## A267922.P13169113209536845110

`sin(acos(Δ[ceil(sqrt(n+3))]))`
-/

namespace A267922.P13169113209536845110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 3 : ℝ)⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos (f1 (n + 1) - f1 n : ℝ))

end

end A267922.P13169113209536845110

namespace A267922

/-- `sin(acos(Δ[ceil(sqrt(n+3))]))` -/
def P13169113209536845110.Spec : Prop :=
  ∀ n, P13169113209536845110.a n = (A267922 n : ℝ)

end A267922

/-! ## A267922.P14973371169820046167

`cos(asin(Δ[ceil(sqrt(n+3))]))`
-/

namespace A267922.P14973371169820046167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 3 : ℝ)⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin (f1 (n + 1) - f1 n : ℝ))

end

end A267922.P14973371169820046167

namespace A267922

/-- `cos(asin(Δ[ceil(sqrt(n+3))]))` -/
def P14973371169820046167.Spec : Prop :=
  ∀ n, P14973371169820046167.a n = (A267922 n : ℝ)

end A267922

/-! ## A267922.P596973480024638986

`1-char[col(n)²-3]`
-/

namespace A267922.P596973480024638986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267922.P596973480024638986

namespace A267922

/-- `1-char[col(n)²-3]` -/
def P596973480024638986.Spec : Prop :=
  ∀ n, P596973480024638986.a n = A267922 n

end A267922

/-! ## A267922.P16697901977332519914

`1-char[row(n)²-3]`
-/

namespace A267922.P16697901977332519914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ 2 : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267922.P16697901977332519914

namespace A267922

/-- `1-char[row(n)²-3]` -/
def P16697901977332519914.Spec : Prop :=
  ∀ n, P16697901977332519914.a n = A267922 n

end A267922

/-! ## A267922.P11361738196679271815

`ceil(∏{d}[n+3, (1-ϕ)/#])`
-/

namespace A267922.P11361738196679271815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n), (1 - Real.goldenRatio) / (d : ℝ)⌉

end

end A267922.P11361738196679271815

namespace A267922

/-- `ceil(∏{d}[n+3, (1-ϕ)/#])` -/
def P11361738196679271815.Spec : Prop :=
  ∀ n, P11361738196679271815.a n = A267922 n

end A267922

/-! ## A267922.P5093049052988263472

`1-char[∑[ogf((1+3x-2x^2)/(1-2x+x^2))]]`
-/

namespace A267922.P5093049052988263472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267922.P5093049052988263472

namespace A267922

/-- `1-char[∑[ogf((1+3x-2x^2)/(1-2x+x^2))]]` -/
def P5093049052988263472.Spec : Prop :=
  ∀ n, P5093049052988263472.a n = A267922 n

end A267922

/-! ## A267922.P17469683518745339796

`1-char[ogf((2-7x+3x^2)/(-1+3x-3x^2+x^3))]`
-/

namespace A267922.P17469683518745339796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 7, -3] [1, -3, 3, -1] n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267922.P17469683518745339796

namespace A267922

/-- `1-char[ogf((2-7x+3x^2)/(-1+3x-3x^2+x^3))]` -/
def P17469683518745339796.Spec : Prop :=
  ∀ n, P17469683518745339796.a n = A267922 n

end A267922

/-! ## A267922.P1262934083183129406

`A267919(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267922

/-- `A267919(n+1)` -/
def P1262934083183129406.Spec : Prop :=
  ∀ n, P1262934083183129406.a n = A267922 n

theorem P1262934083183129406.correct : P1262934083183129406.Spec := by
  intro n
  simp only [A267922]

end A267922

/-! ## A267922.P17574368209275460011

`A049240(n+3)`
-/

namespace A267922.P17574368209275460011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 3)

end

end A267922.P17574368209275460011

namespace A267922

/-- `A049240(n+3)` -/
def P17574368209275460011.Spec : Prop :=
  ∀ n, P17574368209275460011.a n = A267922 n

end A267922

/-! ## A267922.P9639184517389848192

`abs(Δ[A267598(n)])`
-/

namespace A267922.P9639184517389848192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A267922.P9639184517389848192

namespace A267922

/-- `abs(Δ[A267598(n)])` -/
def P9639184517389848192.Spec : Prop :=
  ∀ n, P9639184517389848192.a n = A267922 n

end A267922

/-! ## A267922.P1981851106440397120

`abs(A344617(n+3))`
-/

namespace A267922.P1981851106440397120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344617 (n + 3)|

end

end A267922.P1981851106440397120

namespace A267922

/-- `abs(A344617(n+3))` -/
def P1981851106440397120.Spec : Prop :=
  ∀ n, P1981851106440397120.a n = A267922 n

end A267922

/-! ## A267922.P10868042777098776660

`log2(A169695(n+3))`
-/

namespace A267922.P10868042777098776660
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A169695 (n + 3) : ℝ)

end

end A267922.P10868042777098776660

namespace A267922

/-- `log2(A169695(n+3))` -/
def P10868042777098776660.Spec : Prop :=
  ∀ n, P10868042777098776660.a n = (A267922 n : ℝ)

end A267922

/-! ## A267922.P17095480205151882314

`A256455(n+1)%2`
-/

namespace A267922.P17095480205151882314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256455 (n + 1)) 2

end

end A267922.P17095480205151882314

namespace A267922

/-- `A256455(n+1)%2` -/
def P17095480205151882314.Spec : Prop :=
  ∀ n, P17095480205151882314.a n = A267922 n

end A267922

/-!
# A267923: Binary representation of the n-th iteration of the "Rule 245" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267923, there is no canonical definition to state claims against.
-/

/-! ## A267923.P9851751256480548333

`∑[A280368(Δ[A103505(n)])]`
-/

namespace A267923.P9851751256480548333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280368 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267923.P9851751256480548333

/-! ## A267923.P17567667975509085406

`(11*A267599(n))^A178334(n)`
-/

namespace A267923.P17567667975509085406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A267599 n : ℚ) ^ (A178334 n : ℤ)

end

end A267923.P17567667975509085406

/-! ## A267923.P2238620221001887284

`(11*A267599(n))^abs(A057428(n))`
-/

namespace A267923.P2238620221001887284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A267599 n : ℚ) ^ (|A057428 n| : ℤ)

end

end A267923.P2238620221001887284

/-! ## A267923.P17539081493860569718

`gcd(11*A267599(n), A001450(n)%5)`
-/

namespace A267923.P17539081493860569718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (11 * A267599 n) (Int.tmod (A001450 n) 5)

end

end A267923.P17539081493860569718

/-! ## A267923.P985668137406058959

`(11*A267599(n))^A019426(A005843(n))`
-/

namespace A267923.P985668137406058959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A267599 n : ℚ) ^ (A019426 (A005843 n).toNat : ℤ)

end

end A267923.P985668137406058959

/-! ## A267923.P15448175999189891723

`(11*A267599(n))^A008683(A100484(n+1))`
-/

namespace A267923.P15448175999189891723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A267599 n : ℚ) ^ (A008683 (A100484 (n + 1)).toNat : ℤ)

end

end A267923.P15448175999189891723

/-!
# A267924: Decimal representation of the n-th iteration of the "Rule 245" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267924, the canonical program `A267924.P8183645254041577177` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267924 has offset 0).

The definition of A267924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267924.P8183645254041577177

`ogf((1-2x+16x^2)/(1-5x+4x^2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267924

/-- `ogf((1-2x+16x^2)/(1-5x+4x^2))` -/
def P8183645254041577177.Spec : Prop :=
  ∀ n, P8183645254041577177.a n = A267924 n

theorem P8183645254041577177.correct : P8183645254041577177.Spec := by
  intro n
  simp only [A267924]

end A267924

/-! ## A267924.P4794258421422345073

`abs(or(5, -(2*4^n)))`
-/

namespace A267924.P4794258421422345073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 5 (-(2 * 4 ^ n : ℤ))|

end

end A267924.P4794258421422345073

namespace A267924

/-- `abs(or(5, -(2*4^n)))` -/
def P4794258421422345073.Spec : Prop :=
  ∀ n, P4794258421422345073.a n = A267924 n

end A267924

/-! ## A267924.P1565417642678665115

`-or(5, -(2*4^n))`
-/

namespace A267924.P1565417642678665115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 5 (-(2 * 4 ^ n : ℤ))

end

end A267924.P1565417642678665115

namespace A267924

/-- `-or(5, -(2*4^n))` -/
def P1565417642678665115.Spec : Prop :=
  ∀ n, P1565417642678665115.a n = A267924 n

end A267924

/-! ## A267924.P10930953253257527355

`and(2*4^n-1, -5)`
-/

namespace A267924.P10930953253257527355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * 4 ^ n : ℤ) - 1) (-5)

end

end A267924.P10930953253257527355

namespace A267924

/-- `and(2*4^n-1, -5)` -/
def P10930953253257527355.Spec : Prop :=
  ∀ n, P10930953253257527355.a n = A267924 n

end A267924

/-! ## A267924.P17247845054073612833

`4*a(n-1)+15` with `a(0)=1, a(1)=3`
-/

namespace A267924.P17247845054073612833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) + 15

end

end A267924.P17247845054073612833

namespace A267924

/-- `4*a(n-1)+15` -/
def P17247845054073612833.Spec : Prop :=
  ∀ n, (P17247845054073612833.a n : ℤ) = A267924 n

end A267924

/-! ## A267924.P205065089268900863

`xor(23, 4*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A267924.P205065089268900863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 23 (4 * a (n - 1))

end

end A267924.P205065089268900863

namespace A267924

/-- `xor(23, 4*a(n-1))` -/
def P205065089268900863.Spec : Prop :=
  ∀ n, (P205065089268900863.a n : ℤ) = A267924 n

end A267924

/-! ## A267924.P6630825162834610206

`∑[4*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=24`
-/

namespace A267924.P6630825162834610206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 24] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267924.P6630825162834610206

namespace A267924

/-- `∑[4*a(n-1)]` -/
def P6630825162834610206.Spec : Prop :=
  ∀ n, (P6630825162834610206.a n : ℤ) = A267924 n

end A267924

/-! ## A267924.P14133124076187347181

`2*abs(2-4^n)-1`
-/

namespace A267924.P14133124076187347181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |2 - (4 ^ n : ℤ)| - 1

end

end A267924.P14133124076187347181

namespace A267924

/-- `2*abs(2-4^n)-1` -/
def P14133124076187347181.Spec : Prop :=
  ∀ n, P14133124076187347181.a n = A267924 n

end A267924

/-! ## A267924.P16209437943554446157

`record[-or(5, (-2)^(n+1))]`
-/

namespace A267924.P16209437943554446157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 5 ((-2) ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267924.P16209437943554446157

namespace A267924

/-- `record[-or(5, (-2)^(n+1))]` -/
def P16209437943554446157.Spec : Prop :=
  ∀ n, P16209437943554446157.a n = A267924 n

end A267924

/-! ## A267924.P10214624778842033516

`record[(-2)^(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A267924.P10214624778842033516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-2) ^ (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267924.P10214624778842033516

namespace A267924

/-- `record[(-2)^(n+1)-a(n-1)]` -/
def P10214624778842033516.Spec : Prop :=
  ∀ n, P10214624778842033516.a n = A267924 n

end A267924

/-! ## A267924.P11259098702852796618

`4*(4-(1/4-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A267924.P11259098702852796618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (4 - ((1 : ℚ) / 4 - a (n - 1)))

end

end A267924.P11259098702852796618

namespace A267924

/-- `4*(4-(1/4-a(n-1)))` -/
def P11259098702852796618.Spec : Prop :=
  ∀ n, P11259098702852796618.a n = (A267924 n : ℚ)

end A267924

/-! ## A267924.P13553648937388010465

`abs(2-A267921(n))`
-/

namespace A267924.P13553648937388010465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A267921 n|

end

end A267924.P13553648937388010465

namespace A267924

/-- `abs(2-A267921(n))` -/
def P13553648937388010465.Spec : Prop :=
  ∀ n, P13553648937388010465.a n = A267924 n

end A267924

/-! ## A267924.P495220063871773911

`abs(2-A290073(2*n))`
-/

namespace A267924.P495220063871773911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A290073 (2 * n)|

end

end A267924.P495220063871773911

namespace A267924

/-- `abs(2-A290073(2*n))` -/
def P495220063871773911.Spec : Prop :=
  ∀ n, P495220063871773911.a n = A267924 n

end A267924

/-! ## A267924.P15701264265988999849

`record[2*A122959(n)-1]`
-/

namespace A267924.P15701264265988999849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122959 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267924.P15701264265988999849

namespace A267924

/-- `record[2*A122959(n)-1]` -/
def P15701264265988999849.Spec : Prop :=
  ∀ n, P15701264265988999849.a n = A267924 n

end A267924

/-! ## A267924.P6340144507134589380

`record[1-2*A344920(n)]`
-/

namespace A267924.P6340144507134589380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A344920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267924.P6340144507134589380

namespace A267924

/-- `record[1-2*A344920(n)]` -/
def P6340144507134589380.Spec : Prop :=
  ∀ n, P6340144507134589380.a n = A267924 n

end A267924

/-! ## A267924.P8708442853561919642

`record[xor(2, A290235(n))-2]`
-/

namespace A267924.P8708442853561919642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A290235 n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267924.P8708442853561919642

namespace A267924

/-- `record[xor(2, A290235(n))-2]` -/
def P8708442853561919642.Spec : Prop :=
  ∀ n, P8708442853561919642.a n = A267924 n

end A267924

/-! ## A267924.P4548152804162648183

`or(1, A283353(2*n)-1)`
-/

namespace A267924.P4548152804162648183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283353 (2 * n) - 1)

end

end A267924.P4548152804162648183

namespace A267924

/-- `or(1, A283353(2*n)-1)` -/
def P4548152804162648183.Spec : Prop :=
  ∀ n, P4548152804162648183.a n = A267924 n

end A267924

/-! ## A267924.P8572307954475322309

`abs(2-abs(2-A083420(n)))`
-/

namespace A267924.P8572307954475322309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |2 - A083420 n|)|

end

end A267924.P8572307954475322309

namespace A267924

/-- `abs(2-abs(2-A083420(n)))` -/
def P8572307954475322309.Spec : Prop :=
  ∀ n, P8572307954475322309.a n = A267924 n

end A267924

/-! ## A267924.P11942010295185099973

`abs(2-abs(A036563(2*n+1)))`
-/

namespace A267924.P11942010295185099973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A036563 (2 * n + 1)|)|

end

end A267924.P11942010295185099973

namespace A267924

/-- `abs(2-abs(A036563(2*n+1)))` -/
def P11942010295185099973.Spec : Prop :=
  ∀ n, P11942010295185099973.a n = A267924 n

end A267924

/-! ## A267924.P9860809392056690725

`A141725(n)%A283070(n)`
-/

namespace A267924.P9860809392056690725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141725 n) (A283070 n)

end

end A267924.P9860809392056690725

namespace A267924

/-- `A141725(n)%A283070(n)` -/
def P9860809392056690725.Spec : Prop :=
  ∀ n, P9860809392056690725.a n = A267924 n

end A267924

/-!
# A267925: Binary representation of the n-th iteration of the "Rule 246" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267925, there is no canonical definition to state claims against.
-/

/-! ## A267925.P8222361609389935339

`∑[A266179(n)]`
-/

namespace A267925.P8222361609389935339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267925.P8222361609389935339

/-! ## A267925.P2565218859412262585

`∑[A104459(A047452(n+1))]`
-/

namespace A267925.P2565218859412262585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A047452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267925.P2565218859412262585

/-! ## A267925.P387604467299244057

`∑[A104459(A008586(n)+A000034(n))]`
-/

namespace A267925.P387604467299244057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A008586 n + A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267925.P387604467299244057

/-! ## A267925.P7076519507945390422

`∑[A104459(or(A000034(n), A008574(n)))]`
-/

namespace A267925.P7076519507945390422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (Int.lor (A000034 n) (A008574 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267925.P7076519507945390422

/-! ## A267925.P5036396308306193119

`∑[A309761(A000124(2*n)+A000035(n))]`
-/

namespace A267925.P5036396308306193119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A000124 (2 * n) + A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267925.P5036396308306193119

/-!
# A267926: Decimal representation of the n-th iteration of the "Rule 246" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267926, the canonical program `A267926.P3358842161293284433` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267926 has offset 0).

The definition of A267926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267926.P13625748742646336963

`ogf((1+6x)/(1-x-16x^2+16x^3))`
-/

namespace A267926.P13625748742646336963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -1, -16, 16] n

end

end A267926.P13625748742646336963

namespace A267926

/-- `ogf((1+6x)/(1-x-16x^2+16x^3))` -/
def P13625748742646336963.Spec : Prop :=
  ∀ n, P13625748742646336963.a n = A267926 n

end A267926

/-! ## A267926.P3358842161293284433

`∑[16*a(n-2)]` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267926

/-- `∑[16*a(n-2)]` -/
def P3358842161293284433.Spec : Prop :=
  ∀ n, (P3358842161293284433.a n : ℤ) = A267926 n

theorem P3358842161293284433.correct : P3358842161293284433.Spec := by
  intro n
  simp only [A267926]

end A267926

/-! ## A267926.P1985794062253118883

`16*a(n-2)+7` with `a(0)=1, a(1)=7`
-/

namespace A267926.P1985794062253118883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  16 * a (n - 2) + 7

end

end A267926.P1985794062253118883

namespace A267926

/-- `16*a(n-2)+7` -/
def P1985794062253118883.Spec : Prop :=
  ∀ n, (P1985794062253118883.a n : ℤ) = A267926 n

end A267926

/-! ## A267926.P4130584958357628920

`∑[a(n-2)/(1/4)²]` with `a(0)=1, a(1)=6`
-/

namespace A267926.P4130584958357628920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P4130584958357628920

namespace A267926

/-- `∑[a(n-2)/(1/4)²]` -/
def P4130584958357628920.Spec : Prop :=
  ∀ n, P4130584958357628920.a n = (A267926 n : ℚ)

end A267926

/-! ## A267926.P7629594481706494957

`∑[A266180(n)]`
-/

namespace A267926.P7629594481706494957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P7629594481706494957

namespace A267926

/-- `∑[A266180(n)]` -/
def P7629594481706494957.Spec : Prop :=
  ∀ n, P7629594481706494957.a n = A267926 n

theorem P7629594481706494957.correct : P7629594481706494957.Spec := by
  intro n
  simp only [A267926, Nat.add_sub_cancel, A267926.P7629594481706494957.f1, A267926.P7629594481706494957.a, A267926.P3358842161293284433.f1, A267926.P3358842161293284433.a, A266180, A266180.P2375632071515553874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267926

/-! ## A267926.P18017161666868518201

`∑[record[A137444(2*n)]]`
-/

namespace A267926.P18017161666868518201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137444 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P18017161666868518201

namespace A267926

/-- `∑[record[A137444(2*n)]]` -/
def P18017161666868518201.Spec : Prop :=
  ∀ n, P18017161666868518201.a n = A267926 n

end A267926

/-! ## A267926.P6382716712503085797

`∑[(A176895(2*n)+1)/2*4^n]`
-/

namespace A267926.P6382716712503085797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176895 (2 * n) + 1 : ℚ) / 2 * (4 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P6382716712503085797

namespace A267926

/-- `∑[(A176895(2*n)+1)/2*4^n]` -/
def P6382716712503085797.Spec : Prop :=
  ∀ n, P6382716712503085797.a n = (A267926 n : ℚ)

end A267926

/-! ## A267926.P796537144640206510

`∑[A081631(A042948(n))]`
-/

namespace A267926.P796537144640206510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P796537144640206510

namespace A267926

/-- `∑[A081631(A042948(n))]` -/
def P796537144640206510.Spec : Prop :=
  ∀ n, P796537144640206510.a n = A267926 n

end A267926

/-! ## A267926.P18255926935652929142

`∑[A164073(A047461(n+1))]`
-/

namespace A267926.P18255926935652929142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A047461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P18255926935652929142

namespace A267926

/-- `∑[A164073(A047461(n+1))]` -/
def P18255926935652929142.Spec : Prop :=
  ∀ n, P18255926935652929142.a n = A267926 n

end A267926

/-! ## A267926.P3589531962012150588

`∑[A000079(n)*A084221(n)]`
-/

namespace A267926.P3589531962012150588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A084221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P3589531962012150588

namespace A267926

/-- `∑[A000079(n)*A084221(n)]` -/
def P3589531962012150588.Spec : Prop :=
  ∀ n, P3589531962012150588.a n = A267926 n

end A267926

/-! ## A267926.P2871932666083948929

`∑[A046161(n)*A071044(n)]`
-/

namespace A267926.P2871932666083948929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P2871932666083948929

namespace A267926

/-- `∑[A046161(n)*A071044(n)]` -/
def P2871932666083948929.Spec : Prop :=
  ∀ n, P2871932666083948929.a n = A267926 n

end A267926

/-! ## A267926.P417029102162635055

`A113876(n+1)+A020988(n)`
-/

namespace A267926.P417029102162635055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113876 (n + 1) + A020988 n

end

end A267926.P417029102162635055

namespace A267926

/-- `A113876(n+1)+A020988(n)` -/
def P417029102162635055.Spec : Prop :=
  ∀ n, P417029102162635055.a n = A267926 n

end A267926

/-! ## A267926.P8827140726100318429

`A113876(n+1)+2*A002450(n)`
-/

namespace A267926.P8827140726100318429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113876 (n + 1) + 2 * A002450 n

end

end A267926.P8827140726100318429

namespace A267926

/-- `A113876(n+1)+2*A002450(n)` -/
def P8827140726100318429.Spec : Prop :=
  ∀ n, P8827140726100318429.a n = A267926 n

end A267926

/-! ## A267926.P6949048510620075250

`(A283217(2*n+1)+A283217(2*n))/2`
-/

namespace A267926.P6949048510620075250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283217 (2 * n + 1) + A283217 (2 * n) : ℚ) / 2

end

end A267926.P6949048510620075250

namespace A267926

/-- `(A283217(2*n+1)+A283217(2*n))/2` -/
def P6949048510620075250.Spec : Prop :=
  ∀ n, P6949048510620075250.a n = (A267926 n : ℚ)

end A267926

/-! ## A267926.P2241522859783043542

`∑[record[A118434(2*n+1)+A118434(2*n)]]`
-/

namespace A267926.P2241522859783043542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118434 (2 * n + 1) + A118434 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P2241522859783043542

namespace A267926

/-- `∑[record[A118434(2*n+1)+A118434(2*n)]]` -/
def P2241522859783043542.Spec : Prop :=
  ∀ n, P2241522859783043542.a n = A267926 n

end A267926

/-! ## A267926.P15994254292685246973

`and(2*A000079(n)²-1, A281217(2*n+1))`
-/

namespace A267926.P15994254292685246973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A000079 n ^ 2 - 1) (A281217 (2 * n + 1))

end

end A267926.P15994254292685246973

namespace A267926

/-- `and(2*A000079(n)²-1, A281217(2*n+1))` -/
def P15994254292685246973.Spec : Prop :=
  ∀ n, P15994254292685246973.a n = A267926 n

end A267926

/-! ## A267926.P203066829026793761

`and(A000079(2*n+1)-1, A281217(2*n+1))`
-/

namespace A267926.P203066829026793761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 (2 * n + 1) - 1) (A281217 (2 * n + 1))

end

end A267926.P203066829026793761

namespace A267926

/-- `and(A000079(2*n+1)-1, A281217(2*n+1))` -/
def P203066829026793761.Spec : Prop :=
  ∀ n, P203066829026793761.a n = A267926 n

end A267926

/-! ## A267926.P16714940774349553029

`A002450(n+1)+A002450(n+1)-A112627(n+1)`
-/

namespace A267926.P16714940774349553029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) + (A002450 (n + 1) - A112627 (n + 1))

end

end A267926.P16714940774349553029

namespace A267926

/-- `A002450(n+1)+A002450(n+1)-A112627(n+1)` -/
def P16714940774349553029.Spec : Prop :=
  ∀ n, P16714940774349553029.a n = A267926 n

end A267926

/-! ## A267926.P3163346503992084857

`∑[record[A137429(n)]]`
-/

namespace A267926.P3163346503992084857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P3163346503992084857

namespace A267926

/-- `∑[record[A137429(n)]]` -/
def P3163346503992084857.Spec : Prop :=
  ∀ n, P3163346503992084857.a n = A267926 n

end A267926

/-! ## A267926.P10694240130857097148

`∑[record[Δ[A137426(n)]]]`
-/

namespace A267926.P10694240130857097148
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267926.P10694240130857097148

namespace A267926

/-- `∑[record[Δ[A137426(n)]]]` -/
def P10694240130857097148.Spec : Prop :=
  ∀ n, P10694240130857097148.a n = A267926 n

end A267926

/-!
# A267927: Triangle read by rows giving successive states of cellular automaton generated by "Rule 249" initiated with a single ON (black) cell.

The programs for A267927, the canonical program `A267927.P7333249173903249484` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267927 has offset 0).

The definition of A267927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267927.P7333249173903249484

`abs(floor(cos(C(9, n+3))))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267927

/-- `abs(floor(cos(C(9, n+3))))` -/
def P7333249173903249484.Spec : Prop :=
  ∀ n, P7333249173903249484.a n = A267927 n

theorem P7333249173903249484.correct : P7333249173903249484.Spec := by
  intro n
  simp only [A267927]

end A267927

/-!
# A267928: Number of n X 1 0..3 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267928, there is no canonical definition to state claims against.
-/

/-! ## A267928.P14382200751333400856

`sqrt(A267929(n+1))`
-/

namespace A267928.P14382200751333400856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267929 (n + 1) : ℝ)

end

end A267928.P14382200751333400856

/-! ## A267928.P1746971658069163412

`A269409(∑[n+3]+1)`
-/

namespace A267928.P1746971658069163412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267928.P1746971658069163412

/-! ## A267928.P17882257488262469969

`A267929(n+1)/A269409(Δ[A008778(n)])`
-/

namespace A267928.P17882257488262469969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267929 (n + 1) : ℚ) / (A269409 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A267928.P17882257488262469969

/-! ## A267928.P7206050955503823480

`A033999(2*n)*A269409(A052905(n)+3)`
-/

namespace A267928.P7206050955503823480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A269409 (A052905 n + 3).toNat

end

end A267928.P7206050955503823480

/-! ## A267928.P9765618851577406499

`root(A267971(n+1), 3)`
-/

namespace A267928.P9765618851577406499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A267971 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A267928.P9765618851577406499

/-! ## A267928.P1551682951514116689

`A267971(n+1)/A267929(n+1)`
-/

namespace A267928.P1551682951514116689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267971 (n + 1) : ℚ) / (A267929 (n + 1) : ℚ)

end

end A267928.P1551682951514116689

/-!
# A267929: Number of nX2 0..3 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267929, there is no canonical definition to state claims against.
-/

/-! ## A267929.P9049406021640820760

`A267928(n+1)²`
-/

namespace A267929.P9049406021640820760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267928 (n + 1) ^ 2

end

end A267929.P9049406021640820760

/-! ## A267929.P16582541838055915277

`A267928(n+1)^(2%A008778(n+1))`
-/

namespace A267929.P16582541838055915277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (Int.tmod 2 (A008778 (n + 1)) : ℤ)

end

end A267929.P16582541838055915277

/-! ## A267929.P2159481028580573202

`A267928(n+1)^A020639(A273830(n))`
-/

namespace A267929.P2159481028580573202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (A020639 (A273830 n).toNat : ℤ)

end

end A267929.P2159481028580573202

/-! ## A267929.P16987462114075230860

`A267928(A000027(n+1))*A267928(n+1)`
-/

namespace A267929.P16987462114075230860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267928 (A000027 (n + 1)).toNat * A267928 (n + 1)

end

end A267929.P16987462114075230860

/-! ## A267929.P9137378481933206016

`A267928(n+1)^A000005(A267944(n+1))`
-/

namespace A267929.P9137378481933206016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (A000005 (A267944 (n + 1)).toNat : ℤ)

end

end A267929.P9137378481933206016

/-! ## A267929.P10369897802462476433

`A267928(n+1)^A000005(A267945(n+1))`
-/

namespace A267929.P10369897802462476433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (A000005 (A267945 (n + 1)).toNat : ℤ)

end

end A267929.P10369897802462476433

/-! ## A267929.P12941188756640282337

`A267928(n+1)^A020639(A046092(n+2))`
-/

namespace A267929.P12941188756640282337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (A020639 (A046092 (n + 2)).toNat : ℤ)

end

end A267929.P12941188756640282337

/-! ## A267929.P11610382879673692259

`A267928(n+1)^A001222(A126867(n+2))`
-/

namespace A267929.P11610382879673692259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (A001222 (A126867 (n + 2)).toNat : ℤ)

end

end A267929.P11610382879673692259

/-! ## A267929.P1114389675384317709

`A267928(n+1)^A020639(A004277(3*n+2))`
-/

namespace A267929.P1114389675384317709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267928 (n + 1) : ℚ) ^ (A020639 (A004277 (3 * n + 2)).toNat : ℤ)

end

end A267929.P1114389675384317709

/-! ## A267929.P11300285696975428868

`A267928(n+1)%A267928(n+2)*A267928(n+1)`
-/

namespace A267929.P11300285696975428868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267928 (n + 1)) (A267928 (n + 2)) * A267928 (n + 1)

end

end A267929.P11300285696975428868

/-!
# A267930: Number of nX3 0..3 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267930, there is no canonical definition to state claims against.
-/

/-! ## A267930.P12160085333848954024

`A267933(∑[n+2]+4)`
-/

namespace A267930.P12160085333848954024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267930.P12160085333848954024

/-! ## A267930.P2153176739225381761

`lcm(2, A267933(A167614(n+1)))`
-/

namespace A267930.P2153176739225381761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267933 (A167614 (n + 1)).toNat)

end

end A267930.P2153176739225381761

/-! ## A267930.P13957586487272793689

`A267933(A167614(n+1))+A185238(n)`
-/

namespace A267930.P13957586487272793689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A167614 (n + 1)).toNat + A185238 n

end

end A267930.P13957586487272793689

/-! ## A267930.P6369286700423175387

`A267933(A167614(n+1))+A235145(n)`
-/

namespace A267930.P6369286700423175387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A167614 (n + 1)).toNat + A235145 n

end

end A267930.P6369286700423175387

/-! ## A267930.P10012586961020243597

`A326685(n)+A267933(A167614(n+1))`
-/

namespace A267930.P10012586961020243597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A267933 (A167614 (n + 1)).toNat

end

end A267930.P10012586961020243597

/-!
# A267931: Number of nX4 0..3 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267931, there is no canonical definition to state claims against.
-/

/-! ## A267931.P14127960013753760578

`A267933(A141214(n)+7)`
-/

namespace A267931.P14127960013753760578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A141214 n + 7).toNat

end

end A267931.P14127960013753760578

/-! ## A267931.P17362431278747492768

`A267933(A052905(n)+9)`
-/

namespace A267931.P17362431278747492768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A052905 n + 9).toNat

end

end A267931.P17362431278747492768

/-! ## A267931.P4870029427943418294

`A267933(A055999(n)+10)`
-/

namespace A267931.P4870029427943418294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A055999 n + 10).toNat

end

end A267931.P4870029427943418294

/-! ## A267931.P3860870700256862044

`A267933(eq[5, A066657(n)])`
-/

namespace A267931.P3860870700256862044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267931.P3860870700256862044

/-!
# A267932: Number of n X 5 0..3 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267932, there is no canonical definition to state claims against.
-/

/-! ## A267932.P3656908115891914912

`A267933(A374005(n+1))`
-/

namespace A267932.P3656908115891914912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A374005 (n + 1)).toNat

end

end A267932.P3656908115891914912

/-! ## A267932.P10335288593712658473

`A267933(A000096(n+3)+6)`
-/

namespace A267932.P10335288593712658473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267933 (A000096 (n + 3) + 6).toNat

end

end A267932.P10335288593712658473

/-!
# A267933: T(n,k)=Number of nXk 0..3 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267933, there is no canonical definition to state claims against.
-/

/-! ## A267933.P13333205763243105250

`A256941(a(n-1)-4)` with `a(0)=4, a(1)=16, a(2)=16`
-/

namespace A267933.P13333205763243105250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 16, 16] fun n a =>
  A256941 (a (n - 1) - 4).toNat

end

end A267933.P13333205763243105250

/-!
# A267934: Binary representation of the n-th iteration of the "Rule 249" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267934, there is no canonical definition to state claims against.
-/

/-! ## A267934.P3221237461567704886

`A267885(n-char[1])`
-/

namespace A267934.P3221237461567704886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267885 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A267934.P3221237461567704886

/-! ## A267934.P6939098099107367869

`gcd(A267883(n²), A267885(n))`
-/

namespace A267934.P6939098099107367869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267883 (n ^ 2)) (A267885 n)

end

end A267934.P6939098099107367869

/-! ## A267934.P10868932923727817356

`A267885(n)%(A267887(n)+1)`
-/

namespace A267934.P10868932923727817356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267885 n) (A267887 n + 1)

end

end A267934.P10868932923727817356

/-! ## A267934.P11014635396345728926

`A267885(n)%A054320(A267872(n))`
-/

namespace A267934.P11014635396345728926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267885 n) (A054320 (A267872 n).toNat)

end

end A267934.P11014635396345728926

/-! ## A267934.P1211162016528015072

`A267885(n)^A008683(A001748(n+1))`
-/

namespace A267934.P1211162016528015072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267885 n : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A267934.P1211162016528015072

/-!
# A267935: Decimal representation of the n-th iteration of the "Rule 249" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267935, the canonical program `A267935.P4530658872853902540` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267935 has offset 0).

The definition of A267935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267935.P4417560595184951155

`ogf((1-4x+26x^2-4x^3-16x^4)/(1-5x+4x^2))`
-/

namespace A267935.P4417560595184951155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 26, -4, -16] [1, -5, 4] n

end

end A267935.P4417560595184951155

namespace A267935

/-- `ogf((1-4x+26x^2-4x^3-16x^4)/(1-5x+4x^2))` -/
def P4417560595184951155.Spec : Prop :=
  ∀ n, P4417560595184951155.a n = A267935 n

end A267935

/-! ## A267935.P4530658872853902540

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=1, a(2)=27, a(3)=127, a(4)=511`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267935

/-- `5*a(n-1)-4*a(n-2)` -/
def P4530658872853902540.Spec : Prop :=
  ∀ n, P4530658872853902540.a n = A267935 n

theorem P4530658872853902540.correct : P4530658872853902540.Spec := by
  intro n
  simp only [A267935]

end A267935

/-! ## A267935.P16089543160266751504

`A267886(n-char[1])`
-/

namespace A267935.P16089543160266751504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267886 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A267935.P16089543160266751504

namespace A267935

/-- `A267886(n-char[1])` -/
def P16089543160266751504.Spec : Prop :=
  ∀ n, P16089543160266751504.a n = A267935 n

end A267935

/-! ## A267935.P3747077534597394272

`or(a(n-1), A267578(n))` with `a(0)=1, a(1)=1`
-/

namespace A267935.P3747077534597394272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (a (n - 1)) (A267578 n)

end

end A267935.P3747077534597394272

namespace A267935

/-- `or(a(n-1), A267578(n))` -/
def P3747077534597394272.Spec : Prop :=
  ∀ n, P3747077534597394272.a n = A267935 n

end A267935

/-! ## A267935.P10817741119576850271

`or(a(n-1), A055145(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A267935.P10817741119576850271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (a (n - 1)) (A055145 (n + 1))

end

end A267935.P10817741119576850271

namespace A267935

/-- `or(a(n-1), A055145(n+1))` -/
def P10817741119576850271.Spec : Prop :=
  ∀ n, P10817741119576850271.a n = A267935 n

end A267935

/-! ## A267935.P1637273684403308107

`or(A010036(n)+2^n, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A267935.P1637273684403308107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (A010036 n + (2 ^ n : ℤ)) (a (n - 1))

end

end A267935.P1637273684403308107

namespace A267935

/-- `or(A010036(n)+2^n, a(n-1))` -/
def P1637273684403308107.Spec : Prop :=
  ∀ n, P1637273684403308107.a n = A267935 n

end A267935

/-! ## A267935.P15695225598307504741

`A267886(n)%(A267888(n)+1)`
-/

namespace A267935.P15695225598307504741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267886 n) (A267888 n + 1)

end

end A267935.P15695225598307504741

namespace A267935

/-- `A267886(n)%(A267888(n)+1)` -/
def P15695225598307504741.Spec : Prop :=
  ∀ n, P15695225598307504741.a n = A267935 n

end A267935

/-! ## A267935.P8570772804723881801

`A267886(n)^(A047859(n)%2)`
-/

namespace A267935.P8570772804723881801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267886 n : ℚ) ^ (Int.tmod (A047859 n) 2 : ℤ)

end

end A267935.P8570772804723881801

namespace A267935

/-- `A267886(n)^(A047859(n)%2)` -/
def P8570772804723881801.Spec : Prop :=
  ∀ n, P8570772804723881801.a n = (A267935 n : ℚ)

end A267935

/-! ## A267935.P8262040473738824792

`A267886(n)^(A267596(n)%2)`
-/

namespace A267935.P8262040473738824792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267886 n : ℚ) ^ (Int.tmod (A267596 n) 2 : ℤ)

end

end A267935.P8262040473738824792

namespace A267935

/-- `A267886(n)^(A267596(n)%2)` -/
def P8262040473738824792.Spec : Prop :=
  ∀ n, P8262040473738824792.a n = (A267935 n : ℚ)

end A267935

/-! ## A267935.P5146728368873267568

`A267886(n)^(A267685(n)%2)`
-/

namespace A267935.P5146728368873267568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267886 n : ℚ) ^ (Int.tmod (A267685 n) 2 : ℤ)

end

end A267935.P5146728368873267568

namespace A267935

/-- `A267886(n)^(A267685(n)%2)` -/
def P5146728368873267568.Spec : Prop :=
  ∀ n, P5146728368873267568.a n = (A267935 n : ℚ)

end A267935

/-! ## A267935.P4753141556200526413

`or(a(A001222(n)), A267886(n))` with `a(0)=1, a(1)=1`
-/

namespace A267935.P4753141556200526413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (a (A001222 n).toNat) (A267886 n)

end

end A267935.P4753141556200526413

namespace A267935

/-- `or(a(A001222(n)), A267886(n))` -/
def P4753141556200526413.Spec : Prop :=
  ∀ n, P4753141556200526413.a n = A267935 n

end A267935

/-! ## A267935.P14468613554931240893

`A267886(n)^abs(A134323(n+1))`
-/

namespace A267935.P14468613554931240893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267886 n : ℚ) ^ (|A134323 (n + 1)| : ℤ)

end

end A267935.P14468613554931240893

namespace A267935

/-- `A267886(n)^abs(A134323(n+1))` -/
def P14468613554931240893.Spec : Prop :=
  ∀ n, P14468613554931240893.a n = (A267935 n : ℚ)

end A267935

/-! ## A267935.P1859874458559245351

`A267886(n)/A267886(n-A199969(n+1))`
-/

namespace A267935.P1859874458559245351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267886 n : ℚ) / (A267886 ((n : ℤ) - A199969 (n + 1)).toNat : ℚ)

end

end A267935.P1859874458559245351

namespace A267935

/-- `A267886(n)/A267886(n-A199969(n+1))` -/
def P1859874458559245351.Spec : Prop :=
  ∀ n, P1859874458559245351.a n = (A267935 n : ℚ)

end A267935

/-!
# A267937: Binary representation of the n-th iteration of the "Rule 251" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267937, there is no canonical definition to state claims against.
-/

/-! ## A267937.P282696117145994963

`A284403(2*n)`
-/

namespace A267937.P282696117145994963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284403 (2 * n)

end

end A267937.P282696117145994963

/-! ## A267937.P18241479519187370791

`A284404(2*n)`
-/

namespace A267937.P18241479519187370791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284404 (2 * n)

end

end A267937.P18241479519187370791

/-! ## A267937.P16228264711350309923

`A286519(2*n)`
-/

namespace A267937.P16228264711350309923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286519 (2 * n)

end

end A267937.P16228264711350309923

/-! ## A267937.P17208838232987491264

`or(1, A283589(2*n))`
-/

namespace A267937.P17208838232987491264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283589 (2 * n))

end

end A267937.P17208838232987491264

/-! ## A267937.P16718045174115535586

`or(1, A290196(2*n))`
-/

namespace A267937.P16718045174115535586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290196 (2 * n))

end

end A267937.P16718045174115535586

/-! ## A267937.P5235532515453203655

`A283590(round(log2(A083329(n)²)))`
-/

namespace A267937.P5235532515453203655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (SequenceMachineLib.roundAway (Real.logb 2 (A083329 n ^ 2 : ℝ))).toNat

end

end A267937.P5235532515453203655

/-! ## A267937.P9325730530526806879

`A283590(round(log2(A083329(2*n))))`
-/

namespace A267937.P9325730530526806879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (SequenceMachineLib.roundAway (Real.logb 2 (A083329 (2 * n) : ℝ))).toNat

end

end A267937.P9325730530526806879

/-! ## A267937.P10098880568392601403

`A283589(2*n)+A130543(n²)`
-/

namespace A267937.P10098880568392601403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283589 (2 * n) + A130543 (n ^ 2)

end

end A267937.P10098880568392601403

/-! ## A267937.P5659797329707482106

`record[A286519(n)%A286498(n+1)]`
-/

namespace A267937.P5659797329707482106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286519 n) (A286498 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267937.P5659797329707482106

/-! ## A267937.P2570714094653769729

`A283589(2*n)+A267870(2*n+1)`
-/

namespace A267937.P2570714094653769729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283589 (2 * n) + A267870 (2 * n + 1)

end

end A267937.P2570714094653769729

/-!
# A267938: Decimal representation of the n-th iteration of the "Rule 251" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267938, the canonical program `A267938.P11377924158823756032` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267938 has offset 0).

The definition of A267938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267938.P11377924158823756032

`ogf((1+10x^2-8x^3)/(1-5x+4x^2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267938

/-- `ogf((1+10x^2-8x^3)/(1-5x+4x^2))` -/
def P11377924158823756032.Spec : Prop :=
  ∀ n, P11377924158823756032.a n = A267938 n

theorem P11377924158823756032.correct : P11377924158823756032.Spec := by
  intro n
  simp only [A267938]

end A267938

/-! ## A267938.P7192598624253990949

`or(11, 4*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A267938.P7192598624253990949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lor 11 (4 * a (n - 1))

end

end A267938.P7192598624253990949

namespace A267938

/-- `or(11, 4*a(n-1))` -/
def P7192598624253990949.Spec : Prop :=
  ∀ n, (P7192598624253990949.a n : ℤ) = A267938 n

end A267938

/-! ## A267938.P10713014208612231637

`4*a(n-1)+3` with `a(0)=1, a(1)=5, a(2)=31`
-/

namespace A267938.P10713014208612231637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 31] fun n a =>
  4 * a (n - 1) + 3

end

end A267938.P10713014208612231637

namespace A267938

/-- `4*a(n-1)+3` -/
def P10713014208612231637.Spec : Prop :=
  ∀ n, (P10713014208612231637.a n : ℤ) = A267938 n

end A267938

/-! ## A267938.P13421321834872603299

`2*4^n-abs(floor(1/(γ-n)))`
-/

namespace A267938.P13421321834872603299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - |⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋|

end

end A267938.P13421321834872603299

namespace A267938

/-- `2*4^n-abs(floor(1/(γ-n)))` -/
def P13421321834872603299.Spec : Prop :=
  ∀ n, P13421321834872603299.a n = A267938 n

end A267938

/-! ## A267938.P13412918389522045115

`record[(2^(n+1)-floor((n+1)^(3/(n+1))²))/(2*n)^(n%2)]`
-/

namespace A267938.P13412918389522045115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - ⌊(n + 1 : ℝ) ^ ((3 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋ : ℚ) / ((2 * n) ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267938.P13412918389522045115

namespace A267938

/-- `record[(2^(n+1)-floor((n+1)^(3/(n+1))²))/(2*n)^(n%2)]` -/
def P13412918389522045115.Spec : Prop :=
  ∀ n, P13412918389522045115.a n = (A267938 n : ℚ)

end A267938

/-! ## A267938.P17826001100481648652

`A283523(2*n)`
-/

namespace A267938.P17826001100481648652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283523 (2 * n)

end

end A267938.P17826001100481648652

namespace A267938

/-- `A283523(2*n)` -/
def P17826001100481648652.Spec : Prop :=
  ∀ n, P17826001100481648652.a n = A267938 n

end A267938

/-! ## A267938.P7644502930703148195

`A284405(2*n)`
-/

namespace A267938.P7644502930703148195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284405 (2 * n)

end

end A267938.P7644502930703148195

namespace A267938

/-- `A284405(2*n)` -/
def P7644502930703148195.Spec : Prop :=
  ∀ n, P7644502930703148195.a n = A267938 n

end A267938

/-! ## A267938.P16492870987604326559

`A286521(2*n)`
-/

namespace A267938.P16492870987604326559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286521 (2 * n)

end

end A267938.P16492870987604326559

namespace A267938

/-- `A286521(2*n)` -/
def P16492870987604326559.Spec : Prop :=
  ∀ n, P16492870987604326559.a n = A267938 n

end A267938

/-! ## A267938.P16586666969681409925

`record[Δ[A282414(n)]]`
-/

namespace A267938.P16586666969681409925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267938.P16586666969681409925

namespace A267938

/-- `record[Δ[A282414(n)]]` -/
def P16586666969681409925.Spec : Prop :=
  ∀ n, P16586666969681409925.a n = A267938 n

end A267938

/-! ## A267938.P9327319849749294015

`or(n², A267886(n))`
-/

namespace A267938.P9327319849749294015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A267886 n)

end

end A267938.P9327319849749294015

namespace A267938

/-- `or(n², A267886(n))` -/
def P9327319849749294015.Spec : Prop :=
  ∀ n, P9327319849749294015.a n = A267938 n

end A267938

/-! ## A267938.P13928525996402238105

`or(1, A283591(2*n))`
-/

namespace A267938.P13928525996402238105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283591 (2 * n))

end

end A267938.P13928525996402238105

namespace A267938

/-- `or(1, A283591(2*n))` -/
def P13928525996402238105.Spec : Prop :=
  ∀ n, P13928525996402238105.a n = A267938 n

end A267938

/-! ## A267938.P896739715644908383

`or(1, A290198(2*n))`
-/

namespace A267938.P896739715644908383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290198 (2 * n))

end

end A267938.P896739715644908383

namespace A267938

/-- `or(1, A290198(2*n))` -/
def P896739715644908383.Spec : Prop :=
  ∀ n, P896739715644908383.a n = A267938 n

end A267938

/-! ## A267938.P382579629590914922

`or(1, or(n, A290836(2*n)))`
-/

namespace A267938.P382579629590914922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor (n : ℤ) (A290836 (2 * n)))

end

end A267938.P382579629590914922

namespace A267938

/-- `or(1, or(n, A290836(2*n)))` -/
def P382579629590914922.Spec : Prop :=
  ∀ n, P382579629590914922.a n = A267938 n

end A267938

/-! ## A267938.P10629060483375470551

`A059990(A223134(n))`
-/

namespace A267938.P10629060483375470551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (A223134 n).toNat

end

end A267938.P10629060483375470551

namespace A267938

/-- `A059990(A223134(n))` -/
def P10629060483375470551.Spec : Prop :=
  ∀ n, P10629060483375470551.a n = A267938 n

end A267938

/-! ## A267938.P12285170580153635795

`A283592(A130773(n))`
-/

namespace A267938.P12285170580153635795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283592 (A130773 n).toNat

end

end A267938.P12285170580153635795

namespace A267938

/-- `A283592(A130773(n))` -/
def P12285170580153635795.Spec : Prop :=
  ∀ n, P12285170580153635795.a n = A267938 n

end A267938

/-! ## A267938.P5615790684156109314

`A014551(A140139(n+1))`
-/

namespace A267938.P5615790684156109314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A140139 (n + 1)).toNat

end

end A267938.P5615790684156109314

namespace A267938

/-- `A014551(A140139(n+1))` -/
def P5615790684156109314.Spec : Prop :=
  ∀ n, P5615790684156109314.a n = A267938 n

end A267938

/-! ## A267938.P14404564900940979860

`A014551(A163985(n+1))`
-/

namespace A267938.P14404564900940979860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A163985 (n + 1)).toNat

end

end A267938.P14404564900940979860

namespace A267938

/-- `A014551(A163985(n+1))` -/
def P14404564900940979860.Spec : Prop :=
  ∀ n, P14404564900940979860.a n = A267938 n

end A267938

/-! ## A267938.P11905609653660852349

`A116601(A336705(n+1))`
-/

namespace A267938.P11905609653660852349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (A336705 (n + 1)).toNat

end

end A267938.P11905609653660852349

namespace A267938

/-- `A116601(A336705(n+1))` -/
def P11905609653660852349.Spec : Prop :=
  ∀ n, P11905609653660852349.a n = A267938 n

end A267938

/-! ## A267938.P4355725608186308846

`and(A083420(n), A260196(n))`
-/

namespace A267938.P4355725608186308846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A260196 n)

end

end A267938.P4355725608186308846

namespace A267938

/-- `and(A083420(n), A260196(n))` -/
def P4355725608186308846.Spec : Prop :=
  ∀ n, P4355725608186308846.a n = A267938 n

end A267938

/-! ## A267938.P502489024533160392

`xor(A129868(n), A186949(n))`
-/

namespace A267938.P502489024533160392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A129868 n) (A186949 n)

end

end A267938.P502489024533160392

namespace A267938

/-- `xor(A129868(n), A186949(n))` -/
def P502489024533160392.Spec : Prop :=
  ∀ n, P502489024533160392.a n = A267938 n

end A267938

/-!
# A267940: Binary representation of the n-th iteration of the "Rule 253" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267940, there is no canonical definition to state claims against.
-/

/-! ## A267940.P14557976063170586606

`or(1, A267850(n))`
-/

namespace A267940.P14557976063170586606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267850 n)

end

end A267940.P14557976063170586606

/-! ## A267940.P4650474343852405197

`or(1, A267887(n))`
-/

namespace A267940.P4650474343852405197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267887 n)

end

end A267940.P4650474343852405197

/-! ## A267940.P3493760673298569460

`record[A290233(char[2]+n)]`
-/

namespace A267940.P3493760673298569460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290233 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267940.P3493760673298569460

/-! ## A267940.P2803581234441414263

`A000042(Δ[n²]-char[1])`
-/

namespace A267940.P2803581234441414263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A267940.P2803581234441414263

/-! ## A267940.P14218227128296905935

`A002275(n*ceil(atan(n))+1)`
-/

namespace A267940.P14218227128296905935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ((n : ℤ) * ⌈Real.arctan (n : ℝ)⌉ + 1).toNat

end

end A267940.P14218227128296905935

/-! ## A267940.P8151980145195258672

`A002275(1-char[1]+n+n)`
-/

namespace A267940.P8151980145195258672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)).toNat

end

end A267940.P8151980145195258672

/-! ## A267940.P2508638605368919974

`A131664(∑[4*n]+(-1)^val(n+1, 2))`
-/

namespace A267940.P2508638605368919974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (-1) ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A267940.P2508638605368919974

/-! ## A267940.P15880735250890999477

`A131664(abs(A142463(n)))`
-/

namespace A267940.P15880735250890999477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 |A142463 n|.toNat

end

end A267940.P15880735250890999477

/-! ## A267940.P2532028436048463008

`or(1, A002275(A130773(n)))`
-/

namespace A267940.P2532028436048463008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002275 (A130773 n).toNat)

end

end A267940.P2532028436048463008

/-! ## A267940.P2523514227064377421

`A290416(A163985(2*n)+1)`
-/

namespace A267940.P2523514227064377421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A163985 (2 * n) + 1).toNat

end

end A267940.P2523514227064377421

/-!
# A267941: Decimal representation of the n-th iteration of the "Rule 253" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267941, the canonical program `A267941.P12657402128576765145` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267941 has offset 0).

The definition of A267941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267941.P6137593997075923648

`ogf((1-2x+20x^2-16x^3)/(1-5x+4x^2))`
-/

namespace A267941.P6137593997075923648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 20, -16] [1, -5, 4] n

end

end A267941.P6137593997075923648

namespace A267941

/-- `ogf((1-2x+20x^2-16x^3)/(1-5x+4x^2))` -/
def P6137593997075923648.Spec : Prop :=
  ∀ n, P6137593997075923648.a n = A267941 n

end A267941

/-! ## A267941.P12657402128576765145

`or(23, 4*a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267941

/-- `or(23, 4*a(n-1))` -/
def P12657402128576765145.Spec : Prop :=
  ∀ n, (P12657402128576765145.a n : ℤ) = A267941 n

theorem P12657402128576765145.correct : P12657402128576765145.Spec := by
  intro n
  simp only [A267941]

end A267941

/-! ## A267941.P11035804618732815923

`4*a(n-1)+3` with `a(0)=1, a(1)=3, a(2)=31`
-/

namespace A267941.P11035804618732815923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 31] fun n a =>
  4 * a (n - 1) + 3

end

end A267941.P11035804618732815923

namespace A267941

/-- `4*a(n-1)+3` -/
def P11035804618732815923.Spec : Prop :=
  ∀ n, (P11035804618732815923.a n : ℤ) = A267941 n

end A267941

/-! ## A267941.P8794463215702647099

`2^(2*n+1-char[1])-1`
-/

namespace A267941.P8794463215702647099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) - 1

end

end A267941.P8794463215702647099

namespace A267941

/-- `2^(2*n+1-char[1])-1` -/
def P8794463215702647099.Spec : Prop :=
  ∀ n, P8794463215702647099.a n = (A267941 n : ℚ)

end A267941

/-! ## A267941.P7751273987010760212

`record[gcd(2, a(n-1))^(n+1)-1]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A267941.P7751273987010760212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  (Int.gcd 2 (f1 (n - 1)) ^ (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267941.P7751273987010760212

namespace A267941

/-- `record[gcd(2, a(n-1))^(n+1)-1]` -/
def P7751273987010760212.Spec : Prop :=
  ∀ n, P7751273987010760212.a n = A267941 n

end A267941

/-! ## A267941.P5052253043009861490

`or(1, A267851(n))`
-/

namespace A267941.P5052253043009861490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267851 n)

end

end A267941.P5052253043009861490

namespace A267941

/-- `or(1, A267851(n))` -/
def P5052253043009861490.Spec : Prop :=
  ∀ n, P5052253043009861490.a n = A267941 n

end A267941

/-! ## A267941.P6387654555753986692

`or(1, A267888(n))`
-/

namespace A267941.P6387654555753986692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267888 n)

end

end A267941.P6387654555753986692

namespace A267941

/-- `or(1, A267888(n))` -/
def P6387654555753986692.Spec : Prop :=
  ∀ n, P6387654555753986692.a n = A267941 n

end A267941

/-! ## A267941.P8502068176962338585

`lcm(2, A267890(n))/2`
-/

namespace A267941.P8502068176962338585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A267890 n) : ℚ) / 2

end

end A267941.P8502068176962338585

namespace A267941

/-- `lcm(2, A267890(n))/2` -/
def P8502068176962338585.Spec : Prop :=
  ∀ n, P8502068176962338585.a n = (A267941 n : ℚ)

end A267941

/-! ## A267941.P13393275061557266725

`or(2*n, A267935(n))`
-/

namespace A267941.P13393275061557266725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A267935 n)

end

end A267941.P13393275061557266725

namespace A267941

/-- `or(2*n, A267935(n))` -/
def P13393275061557266725.Spec : Prop :=
  ∀ n, P13393275061557266725.a n = A267941 n

end A267941

/-! ## A267941.P6405234474851696581

`A000225(comp[comp[2*(n+1)]+2]+1)`
-/

namespace A267941.P6405234474851696581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A267941.P6405234474851696581

namespace A267941

/-- `A000225(comp[comp[2*(n+1)]+2]+1)` -/
def P6405234474851696581.Spec : Prop :=
  ∀ n, P6405234474851696581.a n = A267941 n

end A267941

/-! ## A267941.P37068859308461135

`A131588(A130773(n))`
-/

namespace A267941.P37068859308461135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131588 (A130773 n).toNat

end

end A267941.P37068859308461135

namespace A267941

/-- `A131588(A130773(n))` -/
def P37068859308461135.Spec : Prop :=
  ∀ n, P37068859308461135.a n = A267941 n

end A267941

/-! ## A267941.P13142527056405628959

`A077885(A308196(n))`
-/

namespace A267941.P13142527056405628959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077885 (A308196 n).toNat

end

end A267941.P13142527056405628959

namespace A267941

/-- `A077885(A308196(n))` -/
def P13142527056405628959.Spec : Prop :=
  ∀ n, P13142527056405628959.a n = A267941 n

end A267941

/-! ## A267941.P5501577727117632245

`A213244(A223134(n))`
-/

namespace A267941.P5501577727117632245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213244 (A223134 n).toNat

end

end A267941.P5501577727117632245

namespace A267941

/-- `A213244(A223134(n))` -/
def P5501577727117632245.Spec : Prop :=
  ∀ n, P5501577727117632245.a n = A267941 n

end A267941

/-! ## A267941.P16857213128781186451

`A290235(A092535(n+1))`
-/

namespace A267941.P16857213128781186451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290235 (A092535 (n + 1)).toNat

end

end A267941.P16857213128781186451

namespace A267941

/-- `A290235(A092535(n+1))` -/
def P16857213128781186451.Spec : Prop :=
  ∀ n, P16857213128781186451.a n = A267941 n

end A267941

/-! ## A267941.P11204834087532680252

`A290235(A058992(n+2))`
-/

namespace A267941.P11204834087532680252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290235 (A058992 (n + 2)).toNat

end

end A267941.P11204834087532680252

namespace A267941

/-- `A290235(A058992(n+2))` -/
def P11204834087532680252.Spec : Prop :=
  ∀ n, P11204834087532680252.a n = A267941 n

end A267941

/-! ## A267941.P17534877744562390543

`A267890(n)/A373565(n)`
-/

namespace A267941.P17534877744562390543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267890 n : ℚ) / (A373565 n : ℚ)

end

end A267941.P17534877744562390543

namespace A267941

/-- `A267890(n)/A373565(n)` -/
def P17534877744562390543.Spec : Prop :=
  ∀ n, P17534877744562390543.a n = (A267941 n : ℚ)

end A267941

/-! ## A267941.P12481458245776368019

`gcd(A169585(n), A267890(n))`
-/

namespace A267941.P12481458245776368019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A267890 n)

end

end A267941.P12481458245776368019

namespace A267941

/-- `gcd(A169585(n), A267890(n))` -/
def P12481458245776368019.Spec : Prop :=
  ∀ n, (P12481458245776368019.a n : ℤ) = A267941 n

end A267941

/-! ## A267941.P13434597989623105475

`xor(A057427(n), A267851(n))`
-/

namespace A267941.P13434597989623105475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A267851 n)

end

end A267941.P13434597989623105475

namespace A267941

/-- `xor(A057427(n), A267851(n))` -/
def P13434597989623105475.Spec : Prop :=
  ∀ n, P13434597989623105475.a n = A267941 n

end A267941

/-! ## A267941.P1493349932477639170

`xor(A063524(n), A267888(n))`
-/

namespace A267941.P1493349932477639170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A267888 n)

end

end A267941.P1493349932477639170

namespace A267941

/-- `xor(A063524(n), A267888(n))` -/
def P1493349932477639170.Spec : Prop :=
  ∀ n, P1493349932477639170.a n = A267941 n

end A267941

/-! ## A267941.P5244960569382732575

`xor(A155559(n), A267812(n))`
-/

namespace A267941.P5244960569382732575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A155559 n) (A267812 n)

end

end A267941.P5244960569382732575

namespace A267941

/-- `xor(A155559(n), A267812(n))` -/
def P5244960569382732575.Spec : Prop :=
  ∀ n, P5244960569382732575.a n = A267941 n

end A267941

/-!
# A267942: Interleave (n-1)^2 + 2 and (n+1)^2 + 2.

The programs for A267942, the canonical program `A267942.P11259429030752292924` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267942 has offset 0).

The definition of A267942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267942.P5563347337865041891

`ogf((3-7x^2+4x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A267942.P5563347337865041891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -7, 4, 2] [1, -1, -2, 2, 1, -1] n

end

end A267942.P5563347337865041891

namespace A267942

/-- `ogf((3-7x^2+4x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P5563347337865041891.Spec : Prop :=
  ∀ n, P5563347337865041891.a n = A267942 n

end A267942

/-! ## A267942.P17456713735748311813

`(2*n²-6*(-1)^n*n-2*n+3*(-1)^n+21)/8`
-/

namespace A267942.P17456713735748311813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) - 6 * (-1) ^ n * (n : ℤ) - (2 * n : ℤ) + 3 * (-1) ^ n + 21 : ℚ) / 8

end

end A267942.P17456713735748311813

namespace A267942

/-- `(2*n²-6*(-1)^n*n-2*n+3*(-1)^n+21)/8` -/
def P17456713735748311813.Spec : Prop :=
  ∀ n, P17456713735748311813.a n = (A267942 n : ℚ)

theorem P17456713735748311813.correct : P17456713735748311813.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A267942, Nat.add_sub_cancel, A267942.P17456713735748311813.a, A267942.P11259429030752292924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A267942, Nat.add_sub_cancel, A267942.P17456713735748311813.a, A267942.P11259429030752292924.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267942

/-! ## A267942.P11259429030752292924

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=3, a(2)=2, a(3)=6, a(4)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267942

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11259429030752292924.Spec : Prop :=
  ∀ n, P11259429030752292924.a n = A267942 n

theorem P11259429030752292924.correct : P11259429030752292924.Spec := by
  intro n
  simp only [A267942]

end A267942

/-! ## A267942.P11489159681548551794

`3+A174474(n)`
-/

namespace A267942.P11489159681548551794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A174474 n

end

end A267942.P11489159681548551794

namespace A267942

/-- `3+A174474(n)` -/
def P11489159681548551794.Spec : Prop :=
  ∀ n, P11489159681548551794.a n = A267942 n

end A267942

/-! ## A267942.P11355862112903759087

`∑[gcd(2, n)²-3]²+2`
-/

namespace A267942.P11355862112903759087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2

end

end A267942.P11355862112903759087

namespace A267942

/-- `∑[gcd(2, n)²-3]²+2` -/
def P11355862112903759087.Spec : Prop :=
  ∀ n, P11355862112903759087.a n = A267942 n

end A267942

/-! ## A267942.P845889396766994499

`∑[(-2)^and(1, n)]²+2`
-/

namespace A267942.P845889396766994499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2

end

end A267942.P845889396766994499

namespace A267942

/-- `∑[(-2)^and(1, n)]²+2` -/
def P845889396766994499.Spec : Prop :=
  ∀ n, P845889396766994499.a n = A267942 n

end A267942

/-! ## A267942.P9863685006694165681

`∑[xor(1, -and(1, n))]²+2`
-/

namespace A267942.P9863685006694165681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2

end

end A267942.P9863685006694165681

namespace A267942

/-- `∑[xor(1, -and(1, n))]²+2` -/
def P9863685006694165681.Spec : Prop :=
  ∀ n, P9863685006694165681.a n = A267942 n

end A267942

/-! ## A267942.P6224054500583081145

`or(2, ∑[gcd(4, n²)-3]²)`
-/

namespace A267942.P6224054500583081145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n ^ 2) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A267942.P6224054500583081145

namespace A267942

/-- `or(2, ∑[gcd(4, n²)-3]²)` -/
def P6224054500583081145.Spec : Prop :=
  ∀ n, P6224054500583081145.a n = A267942 n

end A267942

/-! ## A267942.P4840828152390813839

`or(2, ∑[(-2)^and(1, n)]²)`
-/

namespace A267942.P4840828152390813839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A267942.P4840828152390813839

namespace A267942

/-- `or(2, ∑[(-2)^and(1, n)]²)` -/
def P4840828152390813839.Spec : Prop :=
  ∀ n, P4840828152390813839.a n = A267942 n

end A267942

/-! ## A267942.P7870887859721214652

`xor(2, ∑[(-2)^and(1, n)]²)`
-/

namespace A267942.P7870887859721214652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A267942.P7870887859721214652

namespace A267942

/-- `xor(2, ∑[(-2)^and(1, n)]²)` -/
def P7870887859721214652.Spec : Prop :=
  ∀ n, P7870887859721214652.a n = A267942 n

end A267942

/-! ## A267942.P11021464743024546691

`or(2, ∑[xor(1, -and(1, n))]²)`
-/

namespace A267942.P11021464743024546691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A267942.P11021464743024546691

namespace A267942

/-- `or(2, ∑[xor(1, -and(1, n))]²)` -/
def P11021464743024546691.Spec : Prop :=
  ∀ n, P11021464743024546691.a n = A267942 n

end A267942

/-! ## A267942.P9941520333165877992

`Δ[lcm(2, 1-n)/2]²+2`
-/

namespace A267942.P9941520333165877992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A267942.P9941520333165877992

namespace A267942

/-- `Δ[lcm(2, 1-n)/2]²+2` -/
def P9941520333165877992.Spec : Prop :=
  ∀ n, P9941520333165877992.a n = (A267942 n : ℚ)

end A267942

/-! ## A267942.P12673789550372383006

`Δ[gcd(n-1, C(n, 2))]²+2`
-/

namespace A267942.P12673789550372383006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 2

end

end A267942.P12673789550372383006

namespace A267942

/-- `Δ[gcd(n-1, C(n, 2))]²+2` -/
def P12673789550372383006.Spec : Prop :=
  ∀ n, P12673789550372383006.a n = A267942 n

end A267942

/-! ## A267942.P13223023008683702516

`∑[1-a(n-1)]²+2` with `a(0)=-1`
-/

namespace A267942.P13223023008683702516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2

end

end A267942.P13223023008683702516

namespace A267942

/-- `∑[1-a(n-1)]²+2` -/
def P13223023008683702516.Spec : Prop :=
  ∀ n, P13223023008683702516.a n = A267942 n

end A267942

/-! ## A267942.P5531360036722111713

`or(2, ∑[∑[ogf((1-2x)/(1+x))]]²)`
-/

namespace A267942.P5531360036722111713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A267942.P5531360036722111713

namespace A267942

/-- `or(2, ∑[∑[ogf((1-2x)/(1+x))]]²)` -/
def P5531360036722111713.Spec : Prop :=
  ∀ n, P5531360036722111713.a n = A267942 n

end A267942

/-! ## A267942.P6978602548178918718

`xor(2, ∑[∑[ogf((1-2x)/(1+x))]]²)`
-/

namespace A267942.P6978602548178918718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A267942.P6978602548178918718

namespace A267942

/-- `xor(2, ∑[∑[ogf((1-2x)/(1+x))]]²)` -/
def P6978602548178918718.Spec : Prop :=
  ∀ n, P6978602548178918718.a n = A267942 n

end A267942

/-! ## A267942.P13071174723858665228

`A213038(n)+3-n`
-/

namespace A267942.P13071174723858665228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213038 n + (3 - (n : ℤ))

end

end A267942.P13071174723858665228

namespace A267942

/-- `A213038(n)+3-n` -/
def P13071174723858665228.Spec : Prop :=
  ∀ n, P13071174723858665228.a n = A267942 n

end A267942

/-! ## A267942.P13542597182994364859

`xor(2, (n-A028242(n))²)`
-/

namespace A267942.P13542597182994364859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (((n : ℤ) - A028242 n) ^ 2)

end

end A267942.P13542597182994364859

namespace A267942

/-- `xor(2, (n-A028242(n))²)` -/
def P13542597182994364859.Spec : Prop :=
  ∀ n, P13542597182994364859.a n = A267942 n

end A267942

/-! ## A267942.P5358695068820483867

`∑[A327767(n+1)]²+2`
-/

namespace A267942.P5358695068820483867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2

end

end A267942.P5358695068820483867

namespace A267942

/-- `∑[A327767(n+1)]²+2` -/
def P5358695068820483867.Spec : Prop :=
  ∀ n, P5358695068820483867.a n = A267942 n

end A267942

/-! ## A267942.P4906726403605442170

`or(2, (4*n-A047356(n+1))²)`
-/

namespace A267942.P4906726403605442170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (((4 * n : ℤ) - A047356 (n + 1)) ^ 2)

end

end A267942.P4906726403605442170

namespace A267942

/-- `or(2, (4*n-A047356(n+1))²)` -/
def P4906726403605442170.Spec : Prop :=
  ∀ n, P4906726403605442170.a n = A267942 n

end A267942

/-!
# A267944: Primes that are a prime power minus two.

The programs for A267944, there is no canonical definition to state claims against.
-/

/-! ## A267944.P11058011877111085064

`∪[A238528(n+1), A053705(n+1)]`
-/

namespace A267944.P11058011877111085064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P11058011877111085064

/-! ## A267944.P12004804463916011413

`p?[A120431(n+1)]`
-/

namespace A267944.P12004804463916011413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267944.P12004804463916011413

/-! ## A267944.P10671415825679950881

`p?[A120432(n+1)-1]`
-/

namespace A267944.P10671415825679950881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267944.P10671415825679950881

/-! ## A267944.P16377750977023786995

`p?[A001092(n+1)-2]`
-/

namespace A267944.P16377750977023786995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001092 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267944.P16377750977023786995

/-! ## A267944.P12536511649357237952

`∩[A120431(n+1), A339817(n+1)]`
-/

namespace A267944.P12536511649357237952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P12536511649357237952

/-! ## A267944.P1605560935507314362

`∩[A000040(n+1), A120431(n+1)]`
-/

namespace A267944.P1605560935507314362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P1605560935507314362

/-! ## A267944.P4377073531084762716

`∩[A051948(n+1), A120431(n+1)]`
-/

namespace A267944.P4377073531084762716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P4377073531084762716

/-! ## A267944.P13260818484600221458

`∩[A053813(n+1), A120431(n+1)]`
-/

namespace A267944.P13260818484600221458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P13260818484600221458

/-! ## A267944.P2718296791685931071

`∩[A093515(n+1), A120431(n+1)]`
-/

namespace A267944.P2718296791685931071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P2718296791685931071

/-! ## A267944.P2242589172929937379

`∩[A116974(n+1), A120431(n+1)]`
-/

namespace A267944.P2242589172929937379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P2242589172929937379

/-! ## A267944.P11449022473612955938

`∩[A120431(n+1), A175787(n+1)]`
-/

namespace A267944.P11449022473612955938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P11449022473612955938

/-! ## A267944.P2884797105722457620

`∩[A120431(n+1), A182986(n+1)]`
-/

namespace A267944.P2884797105722457620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P2884797105722457620

/-! ## A267944.P11220842693662180101

`∩[A120431(n+1), A251595(n+1)]`
-/

namespace A267944.P11220842693662180101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P11220842693662180101

/-! ## A267944.P13484577372498895088

`∩[A000040(n+1), A001092(n+1)-2]`
-/

namespace A267944.P13484577372498895088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001092 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P13484577372498895088

/-! ## A267944.P8544302013765451950

`∩[A120431(n+1), A182140(n+1)]`
-/

namespace A267944.P8544302013765451950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P8544302013765451950

/-! ## A267944.P4340017827921315666

`∩[A070159(n+1), A120431(n+1)]`
-/

namespace A267944.P4340017827921315666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P4340017827921315666

/-! ## A267944.P14519468757202451476

`∩[A053577(n+1), A120431(n+1)]`
-/

namespace A267944.P14519468757202451476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P14519468757202451476

/-! ## A267944.P3147952173311427710

`∩[A120431(n+1), A187711(n+1)]`
-/

namespace A267944.P3147952173311427710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267944.P3147952173311427710

/-! ## A267944.P632025601835785387

`p?[∑[A057820(n+2)]]`
-/

namespace A267944.P632025601835785387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267944.P632025601835785387

/-! ## A267944.P2947214484277157991

`p?[∑[A275120(n+2)]]`
-/

namespace A267944.P2947214484277157991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267944.P2947214484277157991

/-!
# A267945: Primes that are a prime power plus two.

The programs for A267945, there is no canonical definition to state claims against.
-/

/-! ## A267945.P16019908398675102306

`p?[A064077(n+1)]`
-/

namespace A267945.P16019908398675102306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267945.P16019908398675102306

/-! ## A267945.P12209148423860685369

`p?[A120432(n+2)+1]`
-/

namespace A267945.P12209148423860685369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267945.P12209148423860685369

/-! ## A267945.P3037341186371428076

`p?[A120431(n+2)+2]`
-/

namespace A267945.P3037341186371428076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267945.P3037341186371428076

/-! ## A267945.P3290677101986575985

`p?[A001092(n+2)+2]`
-/

namespace A267945.P3290677101986575985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001092 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267945.P3290677101986575985

/-! ## A267945.P1857525148805489538

`∩[A015919(n+1), A064077(n+1)]`
-/

namespace A267945.P1857525148805489538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P1857525148805489538

/-! ## A267945.P16356512703032559454

`∩[A064077(n+1), A380468(n+1)]`
-/

namespace A267945.P16356512703032559454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P16356512703032559454

/-! ## A267945.P5070165349544862439

`∩[A064077(n+1), A380525(n+1)]`
-/

namespace A267945.P5070165349544862439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P5070165349544862439

/-! ## A267945.P4442830338288410159

`∩[A064077(n+1), A339817(n+1)]`
-/

namespace A267945.P4442830338288410159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P4442830338288410159

/-! ## A267945.P2887531480381877138

`∩[A064077(n+1), A339819(n+1)]`
-/

namespace A267945.P2887531480381877138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P2887531480381877138

/-! ## A267945.P2712404914757613784

`∩[A064077(n+1), A339879(n+1)]`
-/

namespace A267945.P2712404914757613784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P2712404914757613784

/-! ## A267945.P8433416768208452519

`∩[A064077(n+1), A339907(n+1)]`
-/

namespace A267945.P8433416768208452519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P8433416768208452519

/-! ## A267945.P11646191476090310840

`∩[A045393(n+1), A064077(n+1)]`
-/

namespace A267945.P11646191476090310840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P11646191476090310840

/-! ## A267945.P16604669676178523475

`∩[A000040(n+1), A064077(n+1)]`
-/

namespace A267945.P16604669676178523475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P16604669676178523475

/-! ## A267945.P3064450872280788001

`∩[A006005(n+1), A064077(n+1)]`
-/

namespace A267945.P3064450872280788001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P3064450872280788001

/-! ## A267945.P6022378327268722140

`∩[A008578(n+1), A064077(n+1)]`
-/

namespace A267945.P6022378327268722140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P6022378327268722140

/-! ## A267945.P11806744023124716817

`∩[A045344(n+1), A064077(n+1)]`
-/

namespace A267945.P11806744023124716817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P11806744023124716817

/-! ## A267945.P1790297243114455098

`∩[A046022(n+1), A064077(n+1)]`
-/

namespace A267945.P1790297243114455098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P1790297243114455098

/-! ## A267945.P4941095441975743465

`∩[A051948(n+1), A064077(n+1)]`
-/

namespace A267945.P4941095441975743465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P4941095441975743465

/-! ## A267945.P1802438891381875417

`∩[A053813(n+1), A064077(n+1)]`
-/

namespace A267945.P1802438891381875417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267945.P1802438891381875417

/-!
# A267946: Number of n X 1 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267946, the canonical program `A267946.P11567666511953404991` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267946 has offset 1).

The definition of A267946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267946.P8037941095792432168

`ogf((1-2x^2)/(1-3x-x^2+6x^3))`
-/

namespace A267946.P8037941095792432168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, -1, 6] n

end

end A267946.P8037941095792432168

namespace A267946

/-- `ogf((1-2x^2)/(1-3x-x^2+6x^3))` -/
def P8037941095792432168.Spec : Prop :=
  ∀ n, P8037941095792432168.a n = A267946 (n + 1)

end A267946

/-! ## A267946.P11567666511953404991

`3*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267946

/-- `3*a(n-1)+a(n-2)-6*a(n-3)` -/
def P11567666511953404991.Spec : Prop :=
  ∀ n, P11567666511953404991.a n = A267946 (n + 1)

theorem P11567666511953404991.correct : P11567666511953404991.Spec := by
  intro n
  simp only [A267946, Nat.add_sub_cancel]

end A267946

/-! ## A267946.P14955601649013773024

`2*A175654(n)-A006130(n)`
-/

namespace A267946.P14955601649013773024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175654 n - A006130 n

end

end A267946.P14955601649013773024

namespace A267946

/-- `2*A175654(n)-A006130(n)` -/
def P14955601649013773024.Spec : Prop :=
  ∀ n, P14955601649013773024.a n = A267946 (n + 1)

end A267946

/-! ## A267946.P17268589670440192828

`2*A175655(n)-A105963(n)`
-/

namespace A267946.P17268589670440192828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175655 n - A105963 n

end

end A267946.P17268589670440192828

namespace A267946

/-- `2*A175655(n)-A105963(n)` -/
def P17268589670440192828.Spec : Prop :=
  ∀ n, P17268589670440192828.a n = A267946 (n + 1)

end A267946

/-! ## A267946.P10573843518141396561

`A175654(n+1)-A105476(n+1)`
-/

namespace A267946.P10573843518141396561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 (n + 1) - A105476 (n + 1)

end

end A267946.P10573843518141396561

namespace A267946

/-- `A175654(n+1)-A105476(n+1)` -/
def P10573843518141396561.Spec : Prop :=
  ∀ n, P10573843518141396561.a n = A267946 (n + 1)

end A267946

/-! ## A267946.P6136428610583816009

`A006138(n+1)+A006138(n)-A000079(n+1)`
-/

namespace A267946.P6136428610583816009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) + (A006138 n - A000079 (n + 1))

end

end A267946.P6136428610583816009

namespace A267946

/-- `A006138(n+1)+A006138(n)-A000079(n+1)` -/
def P6136428610583816009.Spec : Prop :=
  ∀ n, P6136428610583816009.a n = A267946 (n + 1)

end A267946

/-! ## A267946.P17012689815248175982

`A175654(n+1)+A006138(n)-A006138(n+1)`
-/

namespace A267946.P17012689815248175982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 (n + 1) + (A006138 n - A006138 (n + 1))

end

end A267946.P17012689815248175982

namespace A267946

/-- `A175654(n+1)+A006138(n)-A006138(n+1)` -/
def P17012689815248175982.Spec : Prop :=
  ∀ n, P17012689815248175982.a n = A267946 (n + 1)

end A267946

/-! ## A267946.P15187821663100286400

`A268938(n+1)/3`
-/

namespace A267946.P15187821663100286400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268938 (n + 1) : ℚ) / 3

end

end A267946.P15187821663100286400

namespace A267946

/-- `A268938(n+1)/3` -/
def P15187821663100286400.Spec : Prop :=
  ∀ n, P15187821663100286400.a n = (A267946 (n + 1) : ℚ)

end A267946

/-! ## A267946.P6725542691176315255

`A259243(n+1)/3-2^(n+1)`
-/

namespace A267946.P6725542691176315255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259243 (n + 1) : ℚ) / 3 - (2 ^ (n + 1) : ℚ)

end

end A267946.P6725542691176315255

namespace A267946

/-- `A259243(n+1)/3-2^(n+1)` -/
def P6725542691176315255.Spec : Prop :=
  ∀ n, P6725542691176315255.a n = (A267946 (n + 1) : ℚ)

end A267946

/-! ## A267946.P14837400736158570685

`sqrt(A267947(n+1)/3)`
-/

namespace A267946.P14837400736158570685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A267947 (n + 1) : ℚ) / 3 : ℝ)

end

end A267946.P14837400736158570685

namespace A267946

/-- `sqrt(A267947(n+1)/3)` -/
def P14837400736158570685.Spec : Prop :=
  ∀ n, P14837400736158570685.a n = (A267946 (n + 1) : ℝ)

end A267946

/-!
# A267947: Number of n X 2 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267947, the canonical program `A267947.P17630565095503735786` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267947 has offset 1).

The definition of A267947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267947.P17630565095503735786

`3*A267946(n+1)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267947

/-- `3*A267946(n+1)²` -/
def P17630565095503735786.Spec : Prop :=
  ∀ n, P17630565095503735786.a n = A267947 (n + 1)

theorem P17630565095503735786.correct : P17630565095503735786.Spec := by
  intro n
  simp only [A267947, Nat.add_sub_cancel]

end A267947

/-! ## A267947.P1596292643298067950

`A267946(n+1)*A268938(n+1)`
-/

namespace A267947.P1596292643298067950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267946 (n + 1) * A268938 (n + 1)

end

end A267947.P1596292643298067950

namespace A267947

/-- `A267946(n+1)*A268938(n+1)` -/
def P1596292643298067950.Spec : Prop :=
  ∀ n, P1596292643298067950.a n = A267947 (n + 1)

end A267947

/-! ## A267947.P369575141545298182

`A268938(n+1)²/3`
-/

namespace A267947.P369575141545298182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268938 (n + 1) ^ 2 : ℚ) / 3

end

end A267947.P369575141545298182

namespace A267947

/-- `A268938(n+1)²/3` -/
def P369575141545298182.Spec : Prop :=
  ∀ n, P369575141545298182.a n = (A267947 (n + 1) : ℚ)

end A267947

/-! ## A267947.P6423905565632817385

`A268944(∑[n+2])²/3`
-/

namespace A267947.P6423905565632817385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268944 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 3

end

end A267947.P6423905565632817385

namespace A267947

/-- `A268944(∑[n+2])²/3` -/
def P6423905565632817385.Spec : Prop :=
  ∀ n, P6423905565632817385.a n = (A267947 (n + 1) : ℚ)

end A267947

/-! ## A267947.P13751908660153501030

`A269640(∑[n+2])²/3`
-/

namespace A267947.P13751908660153501030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269640 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 3

end

end A267947.P13751908660153501030

namespace A267947

/-- `A269640(∑[n+2])²/3` -/
def P13751908660153501030.Spec : Prop :=
  ∀ n, P13751908660153501030.a n = (A267947 (n + 1) : ℚ)

end A267947

/-! ## A267947.P8652934739813456856

`A267946(n+1)*A268944(A000096(n+1))`
-/

namespace A267947.P8652934739813456856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267946 (n + 1) * A268944 (A000096 (n + 1)).toNat

end

end A267947.P8652934739813456856

namespace A267947

/-- `A267946(n+1)*A268944(A000096(n+1))` -/
def P8652934739813456856.Spec : Prop :=
  ∀ n, P8652934739813456856.a n = A267947 (n + 1)

end A267947

/-! ## A267947.P11722103550824805925

`sqrt(A267946(n+1))*sqrt(A268088(n+1))`
-/

namespace A267947.P11722103550824805925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267946 (n + 1) : ℝ) * Real.sqrt (A268088 (n + 1) : ℝ)

end

end A267947.P11722103550824805925

namespace A267947

/-- `sqrt(A267946(n+1))*sqrt(A268088(n+1))` -/
def P11722103550824805925.Spec : Prop :=
  ∀ n, P11722103550824805925.a n = (A267947 (n + 1) : ℝ)

end A267947

/-! ## A267947.P924281962892123684

`sqrt(A267946(n+1)*A268088(n+1))`
-/

namespace A267947.P924281962892123684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267946 (n + 1) * A268088 (n + 1) : ℝ)

end

end A267947.P924281962892123684

namespace A267947

/-- `sqrt(A267946(n+1)*A268088(n+1))` -/
def P924281962892123684.Spec : Prop :=
  ∀ n, P924281962892123684.a n = (A267947 (n + 1) : ℝ)

end A267947

/-!
# A267948: Number of nX3 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267948, there is no canonical definition to state claims against.
-/

/-! ## A267948.P3107625450270475749

`A267952(∑[n+2]+4)`
-/

namespace A267948.P3107625450270475749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267948.P3107625450270475749

/-! ## A267948.P5604404610735104006

`lcm(2, A267952(A167614(n+1)))`
-/

namespace A267948.P5604404610735104006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267952 (A167614 (n + 1)).toNat)

end

end A267948.P5604404610735104006

/-! ## A267948.P12198501164368071377

`record[gcd(A122288(n), A267952(n+4))]`
-/

namespace A267948.P12198501164368071377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122288 n) (A267952 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267948.P12198501164368071377

/-! ## A267948.P15475807888506227803

`A267952(A167614(n+1))+A178798(n)`
-/

namespace A267948.P15475807888506227803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A167614 (n + 1)).toNat + A178798 n

end

end A267948.P15475807888506227803

/-! ## A267948.P14068105431792065858

`A267952(A167614(n+1))+A185284(n)`
-/

namespace A267948.P14068105431792065858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A167614 (n + 1)).toNat + A185284 n

end

end A267948.P14068105431792065858

/-!
# A267949: Number of nX4 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267949, there is no canonical definition to state claims against.
-/

/-! ## A267949.P9590068202145587593

`A267952(∑[n+3]+7)`
-/

namespace A267949.P9590068202145587593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267949.P9590068202145587593

/-! ## A267949.P7977490649681565096

`A061827(n+1)*A267952(A167614(n+2)+1)`
-/

namespace A267949.P7977490649681565096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061827 (n + 1) * A267952 (A167614 (n + 2) + 1).toNat

end

end A267949.P7977490649681565096

/-! ## A267949.P789483397805131318

`A267952(A167614(n+2)+1)+A035457(2*n+3)`
-/

namespace A267949.P789483397805131318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A167614 (n + 2) + 1).toNat + A035457 (2 * n + 3)

end

end A267949.P789483397805131318

/-! ## A267949.P7431856088749518414

`or(A000007(n), A267952(A027379(n+2)))`
-/

namespace A267949.P7431856088749518414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A267952 (A027379 (n + 2)).toNat)

end

end A267949.P7431856088749518414

/-! ## A267949.P7066703153074297743

`A267952(A027379(n+2))+A000007(3*n+4)`
-/

namespace A267949.P7066703153074297743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A027379 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A267949.P7066703153074297743

/-!
# A267950: Number of nX5 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267950, there is no canonical definition to state claims against.
-/

/-! ## A267950.P17796132348519082903

`A267952(A374005(n+1))`
-/

namespace A267950.P17796132348519082903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A374005 (n + 1)).toNat

end

end A267950.P17796132348519082903

/-! ## A267950.P12930992794454678648

`A267952(A155212(n)+13)`
-/

namespace A267950.P12930992794454678648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A155212 n + 13).toNat

end

end A267950.P12930992794454678648

/-! ## A267950.P15898813309168176480

`A267952(A056000(n)+15)`
-/

namespace A267950.P15898813309168176480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A056000 n + 15).toNat

end

end A267950.P15898813309168176480

/-! ## A267950.P13041982917565804324

`A267952(eq[7, A066657(n)])`
-/

namespace A267950.P13041982917565804324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267950.P13041982917565804324

/-! ## A267950.P11651984804218591006

`A267952(A000217(n+4)+5)`
-/

namespace A267950.P11651984804218591006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A000217 (n + 4) + 5).toNat

end

end A267950.P11651984804218591006

/-!
# A267951: Number of nX6 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267951, there is no canonical definition to state claims against.
-/

/-! ## A267951.P15142995084190076997

`A267952(C(n+7, 2)-n)`
-/

namespace A267951.P15142995084190076997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (Nat.choose (n + 7) 2 - n)

end

end A267951.P15142995084190076997

/-! ## A267951.P9398624792094818554

`A267952(A374007(n+1))`
-/

namespace A267951.P9398624792094818554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A374007 (n + 1)).toNat

end

end A267951.P9398624792094818554

/-! ## A267951.P3887576834160613433

`A267952(A167499(n+4)+1)`
-/

namespace A267951.P3887576834160613433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A167499 (n + 4) + 1).toNat

end

end A267951.P3887576834160613433

/-! ## A267951.P17541015819468142649

`A267952(A133263(n+5)+4)`
-/

namespace A267951.P17541015819468142649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (A133263 (n + 5) + 4).toNat

end

end A267951.P17541015819468142649

/-!
# A267952: T(n,k)=Number of nXk 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A267952, there is no canonical definition to state claims against.
-/

/-! ## A267952.P767905070628659373

`A047878(A267966(n+1))`
-/

namespace A267952.P767905070628659373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A267966 (n + 1)).toNat

end

end A267952.P767905070628659373

/-! ## A267952.P17935995516546533370

`A008611(A267966(n+1)+1)`
-/

namespace A267952.P17935995516546533370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A267966 (n + 1) + 1).toNat

end

end A267952.P17935995516546533370

/-! ## A267952.P1438445834123909268

`A186731(A267966(n+1)+1)`
-/

namespace A267952.P1438445834123909268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A267966 (n + 1) + 1).toNat

end

end A267952.P1438445834123909268

/-! ## A267952.P12809335885028545671

`A002264(A267966(n+1)+2)`
-/

namespace A267952.P12809335885028545671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A267966 (n + 1) + 2).toNat

end

end A267952.P12809335885028545671

/-! ## A267952.P16763023670836402483

`A008620(A267966(n+1)-1)`
-/

namespace A267952.P16763023670836402483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A267966 (n + 1) - 1).toNat

end

end A267952.P16763023670836402483

/-!
# A267953: Number of nX3 0..2 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267953, there is no canonical definition to state claims against.
-/

/-! ## A267953.P8671317567131326894

`A267957(∑[n+2]+4)`
-/

namespace A267953.P8671317567131326894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267953.P8671317567131326894

/-! ## A267953.P14723230964478837426

`lcm(1-and(2, n), A267957(A167614(n+1)))`
-/

namespace A267953.P14723230964478837426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A267957 (A167614 (n + 1)).toNat)

end

end A267953.P14723230964478837426

/-! ## A267953.P10428751213689168468

`A267957(A167614(n+1))+A011742(n)`
-/

namespace A267953.P10428751213689168468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A167614 (n + 1)).toNat + A011742 n

end

end A267953.P10428751213689168468

/-! ## A267953.P17290426997743478808

`A267957(A167614(n+1))+A025443(n)`
-/

namespace A267953.P17290426997743478808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A167614 (n + 1)).toNat + A025443 n

end

end A267953.P17290426997743478808

/-! ## A267953.P10325441699775434403

`A267957(A167614(n+1))+A178780(n)`
-/

namespace A267953.P10325441699775434403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A167614 (n + 1)).toNat + A178780 n

end

end A267953.P10325441699775434403

/-!
# A267954: Number of nX4 0..2 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267954, there is no canonical definition to state claims against.
-/

/-! ## A267954.P12213418198939223322

`A267957(A374004(n+1))`
-/

namespace A267954.P12213418198939223322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A374004 (n + 1)).toNat

end

end A267954.P12213418198939223322

/-! ## A267954.P13418570330025579652

`A267957(A052905(n)+9)`
-/

namespace A267954.P13418570330025579652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A052905 n + 9).toNat

end

end A267954.P13418570330025579652

/-! ## A267954.P14070795624951683086

`A267957(A055999(n)+10)`
-/

namespace A267954.P14070795624951683086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A055999 n + 10).toNat

end

end A267954.P14070795624951683086

/-! ## A267954.P3379630329273583681

`A267957(A167614(n+2)+1)`
-/

namespace A267954.P3379630329273583681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A167614 (n + 2) + 1).toNat

end

end A267954.P3379630329273583681

/-! ## A267954.P1666080758617546826

`A267957(A141214(n+1))`
-/

namespace A267954.P1666080758617546826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A141214 (n + 1)).toNat

end

end A267954.P1666080758617546826

/-!
# A267955: Number of nX5 0..2 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267955, there is no canonical definition to state claims against.
-/

/-! ## A267955.P14979043609580508256

`A267957(A374005(n+1))`
-/

namespace A267955.P14979043609580508256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A374005 (n + 1)).toNat

end

end A267955.P14979043609580508256

/-! ## A267955.P15212557180335956500

`A267957(A155212(n)+13)`
-/

namespace A267955.P15212557180335956500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A155212 n + 13).toNat

end

end A267955.P15212557180335956500

/-! ## A267955.P9483390345780616739

`A267957(A056000(n)+15)`
-/

namespace A267955.P9483390345780616739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A056000 n + 15).toNat

end

end A267955.P9483390345780616739

/-! ## A267955.P3226788257187394190

`A267957(eq[7, A066657(n)])`
-/

namespace A267955.P3226788257187394190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267955.P3226788257187394190

/-! ## A267955.P296490154523597199

`A267957(A167614(n+3)+2)`
-/

namespace A267955.P296490154523597199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A167614 (n + 3) + 2).toNat

end

end A267955.P296490154523597199

/-!
# A267956: Number of nX6 0..2 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267956, there is no canonical definition to state claims against.
-/

/-! ## A267956.P9575012572342299916

`A267957(A374007(n+1))`
-/

namespace A267956.P9575012572342299916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A374007 (n + 1)).toNat

end

end A267956.P9575012572342299916

/-! ## A267956.P1405331796996921941

`A267957(A167614(n+4)+3)`
-/

namespace A267956.P1405331796996921941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (A167614 (n + 4) + 3).toNat

end

end A267956.P1405331796996921941

/-! ## A267956.P3548117471198302539

`A267957(Δ[Δ[A006504(n+1)]])`
-/

namespace A267956.P3548117471198302539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267957 (f1 (n + 1) - f1 n).toNat

end

end A267956.P3548117471198302539

/-!
# A267957: T(n,k)=Number of nXk 0..2 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267957, there is no canonical definition to state claims against.
-/

/-! ## A267957.P7782582338988362261

`A206650(n+1)-A046660(A014551(n))`
-/

namespace A267957.P7782582338988362261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 1) - A046660 (A014551 n).toNat

end

end A267957.P7782582338988362261

/-! ## A267957.P16059177109045026062

`A206650(n+1)-A014191(A245468(n+1))`
-/

namespace A267957.P16059177109045026062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 1) - A014191 (A245468 (n + 1)).toNat

end

end A267957.P16059177109045026062

/-! ## A267957.P10144270642071399053

`A206650(n+1)-A008683(A206685(n+3))`
-/

namespace A267957.P10144270642071399053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 1) - A008683 (A206685 (n + 3)).toNat

end

end A267957.P10144270642071399053

/-! ## A267957.P1299936866056419301

`A206650(n+1)-A353677(A336416(3*n))`
-/

namespace A267957.P1299936866056419301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 1) - A353677 (A336416 (3 * n)).toNat

end

end A267957.P1299936866056419301

/-! ## A267957.P7429985236373938755

`A206650(n+1)-A000007(A287139(n))`
-/

namespace A267957.P7429985236373938755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (n + 1) - A000007 (A287139 n).toNat

end

end A267957.P7429985236373938755

/-!
# A267958: 4 times A042965.

The programs for A267958, the canonical program `A267958.P17203119195313099216` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267958 has offset 1).

The definition of A267958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267958.P14946210327493061065

`ogf((4x+8x^2+4x^3)/(1-x-x^3+x^4))`
-/

namespace A267958.P14946210327493061065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 8, 4] [1, -1, 0, -1, 1] n

end

end A267958.P14946210327493061065

namespace A267958

/-- `ogf((4x+8x^2+4x^3)/(1-x-x^3+x^4))` -/
def P14946210327493061065.Spec : Prop :=
  ∀ n, P14946210327493061065.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P17203119195313099216

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=12, a(3)=16`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267958

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P17203119195313099216.Spec : Prop :=
  ∀ n, P17203119195313099216.a n = A267958 (n + 1)

theorem P17203119195313099216.correct : P17203119195313099216.Spec := by
  intro n
  simp only [A267958, Nat.add_sub_cancel]

end A267958

/-! ## A267958.P2702594758765590206

`4*round(4*n/3)`
-/

namespace A267958.P2702594758765590206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

end

end A267958.P2702594758765590206

namespace A267958

/-- `4*round(4*n/3)` -/
def P2702594758765590206.Spec : Prop :=
  ∀ n, P2702594758765590206.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P14395588432733719393

`record[lcm(4, n*gcd(4, n))]`
-/

namespace A267958.P14395588432733719393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n * Nat.gcd 4 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P14395588432733719393

namespace A267958

/-- `record[lcm(4, n*gcd(4, n))]` -/
def P14395588432733719393.Spec : Prop :=
  ∀ n, (P14395588432733719393.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P8947464977653125484

`record[and(n, xor(5, n)+6)]`
-/

namespace A267958.P8947464977653125484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 5 n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P8947464977653125484

namespace A267958

/-- `record[and(n, xor(5, n)+6)]` -/
def P8947464977653125484.Spec : Prop :=
  ∀ n, (P8947464977653125484.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P15922685395339620087

`record[and(n, (11-n)%16)]`
-/

namespace A267958.P15922685395339620087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (11 - (n : ℤ)) 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P15922685395339620087

namespace A267958

/-- `record[and(n, (11-n)%16)]` -/
def P15922685395339620087.Spec : Prop :=
  ∀ n, P15922685395339620087.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P14631009459869461765

`a(n-3)+16` with `a(0)=0, a(1)=4, a(2)=12`
-/

namespace A267958.P14631009459869461765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 12] fun n a =>
  a (n - 3) + 16

end

end A267958.P14631009459869461765

namespace A267958

/-- `a(n-3)+16` -/
def P14631009459869461765.Spec : Prop :=
  ∀ n, (P14631009459869461765.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P7780572216771794362

`filter[2*n, val(#+8, 4)]`
-/

namespace A267958.P7780572216771794362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j + 8) 4 = 1) n)

end

end A267958.P7780572216771794362

namespace A267958

/-- `filter[2*n, val(#+8, 4)]` -/
def P7780572216771794362.Spec : Prop :=
  ∀ n, (P7780572216771794362.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P2008096999795143442

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=8, a(3)=4`
-/

namespace A267958.P2008096999795143442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 8, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267958.P2008096999795143442

namespace A267958

/-- `∑[abs(a(n-3))]` -/
def P2008096999795143442.Spec : Prop :=
  ∀ n, (P2008096999795143442.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P6431560053154005525

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=8, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A267958.P6431560053154005525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 8, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267958.P6431560053154005525

namespace A267958

/-- `∑[floor(a(n-3))]` -/
def P6431560053154005525.Spec : Prop :=
  ∀ n, (P6431560053154005525.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P12907573939343200742

`record[4*(n-val(n+2, 4))]`
-/

namespace A267958.P12907573939343200742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - (SequenceMachineLib.valuation (n + 2) 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P12907573939343200742

namespace A267958

/-- `record[4*(n-val(n+2, 4))]` -/
def P12907573939343200742.Spec : Prop :=
  ∀ n, P12907573939343200742.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P5319977958312362557

`record[2*(and(5, n+2)+n)]`
-/

namespace A267958.P5319977958312362557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.land 5 (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P5319977958312362557

namespace A267958

/-- `record[2*(and(5, n+2)+n)]` -/
def P5319977958312362557.Spec : Prop :=
  ∀ n, (P5319977958312362557.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P1506147818689067030

`record[(n-2)*and(4, -n²)]`
-/

namespace A267958.P1506147818689067030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * Int.land 4 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P1506147818689067030

namespace A267958

/-- `record[(n-2)*and(4, -n²)]` -/
def P1506147818689067030.Spec : Prop :=
  ∀ n, P1506147818689067030.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P15366798040277986745

`record[xor(2*n, a(n-2))]` with `a(0)=0, a(1)=4`
-/

namespace A267958.P15366798040277986745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  Nat.xor (2 * n) (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P15366798040277986745

namespace A267958

/-- `record[xor(2*n, a(n-2))]` -/
def P15366798040277986745.Spec : Prop :=
  ∀ n, (P15366798040277986745.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P17011658107363547494

`∪[4*(2*n+1), 4*4*n]`
-/

namespace A267958.P17011658107363547494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A267958.P17011658107363547494

namespace A267958

/-- `∪[4*(2*n+1), 4*4*n]` -/
def P17011658107363547494.Spec : Prop :=
  ∀ n, (P17011658107363547494.a n : ℤ) = A267958 (n + 1)

end A267958

/-! ## A267958.P7795598550428161089

`record[2*n-(xor(n+2, n-1)+3)]`
-/

namespace A267958.P7795598550428161089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Int.xor (n + 2 : ℤ) ((n : ℤ) - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267958.P7795598550428161089

namespace A267958

/-- `record[2*n-(xor(n+2, n-1)+3)]` -/
def P7795598550428161089.Spec : Prop :=
  ∀ n, P7795598550428161089.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P13459971482010717180

`∑[4*A101825(n)]`
-/

namespace A267958.P13459971482010717180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267958.P13459971482010717180

namespace A267958

/-- `∑[4*A101825(n)]` -/
def P13459971482010717180.Spec : Prop :=
  ∀ n, P13459971482010717180.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P10495691458186400583

`(A347836(n+1)-5)/2`
-/

namespace A267958.P10495691458186400583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347836 (n + 1) - 5 : ℚ) / 2

end

end A267958.P10495691458186400583

namespace A267958

/-- `(A347836(n+1)-5)/2` -/
def P10495691458186400583.Spec : Prop :=
  ∀ n, P10495691458186400583.a n = (A267958 (n + 1) : ℚ)

end A267958

/-! ## A267958.P14666433743570391224

`A047275(n+1)+3*n`
-/

namespace A267958.P14666433743570391224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (n + 1) + (3 * n : ℤ)

end

end A267958.P14666433743570391224

namespace A267958

/-- `A047275(n+1)+3*n` -/
def P14666433743570391224.Spec : Prop :=
  ∀ n, P14666433743570391224.a n = A267958 (n + 1)

end A267958

/-! ## A267958.P15485909119926269412

`A219529(n)-A106510(n)`
-/

namespace A267958.P15485909119926269412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A106510 n

end

end A267958.P15485909119926269412

namespace A267958

/-- `A219529(n)-A106510(n)` -/
def P15485909119926269412.Spec : Prop :=
  ∀ n, P15485909119926269412.a n = A267958 (n + 1)

end A267958

/-!
# A267959: Triangle read by rows: T(n,k) = 1 if the generalized binomial coefficient (n,k)_f is an integer for every multiplicative function f; otherwise T(n,k) = 0.

The programs for A267959, there is no canonical definition to state claims against.
-/

/-! ## A267959.P8116693754681136197

`A080545(A007318(n)-A109042(n))`
-/

namespace A267959.P8116693754681136197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (A007318 n - A109042 n).toNat

end

end A267959.P8116693754681136197

/-! ## A267959.P8942361763184759262

`A033806(A067059(n)^A063726(A067059(n)))`
-/

namespace A267959.P8942361763184759262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 (SequenceMachineLib.roundAway ((A067059 n : ℚ) ^ (A063726 (A067059 n).toNat : ℤ))).toNat

end

end A267959.P8942361763184759262

/-! ## A267959.P2295800169949206586

`A240328(A360550(n+1))+A114213(n)`
-/

namespace A267959.P2295800169949206586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A360550 (n + 1)).toNat + A114213 n

end

end A267959.P2295800169949206586

/-! ## A267959.P13765795364304203258

`or(A168551(n), A188474(n))%2`
-/

namespace A267959.P13765795364304203258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A168551 n) (A188474 n)) 2

end

end A267959.P13765795364304203258

/-! ## A267959.P13689560874660639769

`floor(1/gcd(A052307(n), A147649(n)))`
-/

namespace A267959.P13689560874660639769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (A052307 n) (A147649 n) : ℚ)⌋

end

end A267959.P13689560874660639769

/-! ## A267959.P13852422029973521020

`A147612(gcd(A052307(n), A147649(n)))`
-/

namespace A267959.P13852422029973521020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (Int.gcd (A052307 n) (A147649 n))

end

end A267959.P13852422029973521020

/-! ## A267959.P6692488632363094989

`A010054(A004198(n)^A152830(n))`
-/

namespace A267959.P6692488632363094989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.roundAway ((A004198 n : ℚ) ^ (A152830 n : ℤ))).toNat

end

end A267959.P6692488632363094989

/-! ## A267959.P16020544303501410005

`A038722(A014566(A332013(n)))%2`
-/

namespace A267959.P16020544303501410005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (A014566 (A332013 n).toNat).toNat) 2

end

end A267959.P16020544303501410005

/-! ## A267959.P8101210995973273415

`A165211(A008327(n))`
-/

namespace A267959.P8101210995973273415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A008327 n).toNat

end

end A267959.P8101210995973273415

/-! ## A267959.P883563312529657271

`A033806(3*A178521(A067059(n)))`
-/

namespace A267959.P883563312529657271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 (3 * A178521 (A067059 n).toNat).toNat

end

end A267959.P883563312529657271

/-!
# A267960: Number of n X 1 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267960, the canonical program `A267960.P11989198980053221735` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267960 has offset 1).

The definition of A267960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267960.P11989198980053221735

`ogf((3-9x-3x^2+24x^3-3x^4-17x^5)/(1-6x+9x^2+8x^3-24x^4+16x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267960

/-- `ogf((3-9x-3x^2+24x^3-3x^4-17x^5)/(1-6x+9x^2+8x^3-24x^4+16x^6))` -/
def P11989198980053221735.Spec : Prop :=
  ∀ n, P11989198980053221735.a n = A267960 (n + 1)

theorem P11989198980053221735.correct : P11989198980053221735.Spec := by
  intro n
  simp only [A267960, Nat.add_sub_cancel]

end A267960

/-! ## A267960.P15606711923991511977

`sqrt(A267961(n+1))`
-/

namespace A267960.P15606711923991511977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267961 (n + 1) : ℝ)

end

end A267960.P15606711923991511977

namespace A267960

/-- `sqrt(A267961(n+1))` -/
def P15606711923991511977.Spec : Prop :=
  ∀ n, P15606711923991511977.a n = (A267960 (n + 1) : ℝ)

end A267960

/-! ## A267960.P13390792936684847288

`root(A267961(n+1), A001316(A001316(n)))`
-/

namespace A267960.P13390792936684847288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A267961 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A267960.P13390792936684847288

namespace A267960

/-- `root(A267961(n+1), A001316(A001316(n)))` -/
def P13390792936684847288.Spec : Prop :=
  ∀ n, P13390792936684847288.a n = (A267960 (n + 1) : ℝ)

end A267960

/-! ## A267960.P2623724792536267101

`root(A268022(n+1), 3)`
-/

namespace A267960.P2623724792536267101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268022 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A267960.P2623724792536267101

namespace A267960

/-- `root(A268022(n+1), 3)` -/
def P2623724792536267101.Spec : Prop :=
  ∀ n, P2623724792536267101.a n = (A267960 (n + 1) : ℝ)

end A267960

/-! ## A267960.P12971157631070229554

`A268022(n+1)/A267961(n+1)`
-/

namespace A267960.P12971157631070229554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268022 (n + 1) : ℚ) / (A267961 (n + 1) : ℚ)

end

end A267960.P12971157631070229554

namespace A267960

/-- `A268022(n+1)/A267961(n+1)` -/
def P12971157631070229554.Spec : Prop :=
  ∀ n, P12971157631070229554.a n = (A267960 (n + 1) : ℚ)

end A267960

/-! ## A267960.P6322113199546671758

`A269409(∑[n+2])`
-/

namespace A267960.P6322113199546671758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267960.P6322113199546671758

namespace A267960

/-- `A269409(∑[n+2])` -/
def P6322113199546671758.Spec : Prop :=
  ∀ n, P6322113199546671758.a n = A267960 (n + 1)

end A267960

/-! ## A267960.P4441405661511731223

`record[A269409(A000096(A319349(n+1)))]`
-/

namespace A267960.P4441405661511731223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000096 (A319349 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267960.P4441405661511731223

namespace A267960

/-- `record[A269409(A000096(A319349(n+1)))]` -/
def P4441405661511731223.Spec : Prop :=
  ∀ n, P4441405661511731223.a n = A267960 (n + 1)

end A267960

/-! ## A267960.P11567131382002653177

`record[A269409(A000096(A329904(n+1)))]`
-/

namespace A267960.P11567131382002653177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000096 (A329904 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267960.P11567131382002653177

namespace A267960

/-- `record[A269409(A000096(A329904(n+1)))]` -/
def P11567131382002653177.Spec : Prop :=
  ∀ n, P11567131382002653177.a n = A267960 (n + 1)

end A267960

/-! ## A267960.P15498949655963024201

`record[A269409(A286158(n+1)+A126988(n+1))]`
-/

namespace A267960.P15498949655963024201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A286158 (n + 1) + A126988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267960.P15498949655963024201

namespace A267960

/-- `record[A269409(A286158(n+1)+A126988(n+1))]` -/
def P15498949655963024201.Spec : Prop :=
  ∀ n, P15498949655963024201.a n = A267960 (n + 1)

end A267960

/-!
# A267961: Number of n X 2 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267961, the canonical program `A267961.P5050562375188423994` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267961 has offset 1).

The definition of A267961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267961.P5050562375188423994

`A267960(n+1)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267961

/-- `A267960(n+1)²` -/
def P5050562375188423994.Spec : Prop :=
  ∀ n, P5050562375188423994.a n = A267961 (n + 1)

theorem P5050562375188423994.correct : P5050562375188423994.Spec := by
  intro n
  simp only [A267961, Nat.add_sub_cancel]

end A267961

/-! ## A267961.P5223360532635881086

`A267960(n+1)^gcd(2, A007531(n))`
-/

namespace A267961.P5223360532635881086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267960 (n + 1) ^ Int.gcd 2 (A007531 n)

end

end A267961.P5223360532635881086

namespace A267961

/-- `A267960(n+1)^gcd(2, A007531(n))` -/
def P5223360532635881086.Spec : Prop :=
  ∀ n, P5223360532635881086.a n = A267961 (n + 1)

end A267961

/-! ## A267961.P10410175229545442176

`A267960(n+1)^A001316(A001316(n))`
-/

namespace A267961.P10410175229545442176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267960 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A267961.P10410175229545442176

namespace A267961

/-- `A267960(n+1)^A001316(A001316(n))` -/
def P10410175229545442176.Spec : Prop :=
  ∀ n, P10410175229545442176.a n = (A267961 (n + 1) : ℚ)

end A267961

/-! ## A267961.P16403662030074172261

`A267960(n+1)^A074723(A017377(n))`
-/

namespace A267961.P16403662030074172261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267960 (n + 1) : ℚ) ^ (A074723 (A017377 n).toNat : ℤ)

end

end A267961.P16403662030074172261

namespace A267961

/-- `A267960(n+1)^A074723(A017377(n))` -/
def P16403662030074172261.Spec : Prop :=
  ∀ n, P16403662030074172261.a n = (A267961 (n + 1) : ℚ)

end A267961

/-! ## A267961.P4180036989343936571

`A267960(A000027(n+1))*A267960(n+1)`
-/

namespace A267961.P4180036989343936571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267960 (A000027 (n + 1)).toNat * A267960 (n + 1)

end

end A267961.P4180036989343936571

namespace A267961

/-- `A267960(A000027(n+1))*A267960(n+1)` -/
def P4180036989343936571.Spec : Prop :=
  ∀ n, P4180036989343936571.a n = A267961 (n + 1)

end A267961

/-! ## A267961.P6637935724460134563

`A267960(n+1)^A074723(A038500(n+1))`
-/

namespace A267961.P6637935724460134563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267960 (n + 1) : ℚ) ^ (A074723 (A038500 (n + 1)).toNat : ℤ)

end

end A267961.P6637935724460134563

namespace A267961

/-- `A267960(n+1)^A074723(A038500(n+1))` -/
def P6637935724460134563.Spec : Prop :=
  ∀ n, P6637935724460134563.a n = (A267961 (n + 1) : ℚ)

end A267961

/-! ## A267961.P14429362011082579712

`A267960(n+1)^A000005(A267944(n+1))`
-/

namespace A267961.P14429362011082579712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267960 (n + 1) : ℚ) ^ (A000005 (A267944 (n + 1)).toNat : ℤ)

end

end A267961.P14429362011082579712

namespace A267961

/-- `A267960(n+1)^A000005(A267944(n+1))` -/
def P14429362011082579712.Spec : Prop :=
  ∀ n, P14429362011082579712.a n = (A267961 (n + 1) : ℚ)

end A267961

/-! ## A267961.P1838529741829807123

`A267960(n+1)^A000005(A267945(n+1))`
-/

namespace A267961.P1838529741829807123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267960 (n + 1) : ℚ) ^ (A000005 (A267945 (n + 1)).toNat : ℤ)

end

end A267961.P1838529741829807123

namespace A267961

/-- `A267960(n+1)^A000005(A267945(n+1))` -/
def P1838529741829807123.Spec : Prop :=
  ∀ n, P1838529741829807123.a n = (A267961 (n + 1) : ℚ)

end A267961

/-! ## A267961.P10804422665035167836

`A267960(n+1)^A020639(A267967(n+1))`
-/

namespace A267961.P10804422665035167836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267960 (n + 1) : ℚ) ^ (A020639 (A267967 (n + 1)).toNat : ℤ)

end

end A267961.P10804422665035167836

namespace A267961

/-- `A267960(n+1)^A020639(A267967(n+1))` -/
def P10804422665035167836.Spec : Prop :=
  ∀ n, P10804422665035167836.a n = (A267961 (n + 1) : ℚ)

end A267961

/-! ## A267961.P15694871043407295470

`A269409(∑[n+2])²`
-/

namespace A267961.P15694871043407295470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267961.P15694871043407295470

namespace A267961

/-- `A269409(∑[n+2])²` -/
def P15694871043407295470.Spec : Prop :=
  ∀ n, P15694871043407295470.a n = A267961 (n + 1)

end A267961

/-!
# A267962: Number of nX3 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267962, there is no canonical definition to state claims against.
-/

/-! ## A267962.P427690416819067665

`A267966(∑[n+2]+4)`
-/

namespace A267962.P427690416819067665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267962.P427690416819067665

/-! ## A267962.P10885071500134919441

`lcm(2, A267966(A167614(n+1)))`
-/

namespace A267962.P10885071500134919441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267966 (A167614 (n + 1)).toNat)

end

end A267962.P10885071500134919441

/-! ## A267962.P12637659607475661279

`A068045(n)*A267966(A167614(n+1))`
-/

namespace A267962.P12637659607475661279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 n * A267966 (A167614 (n + 1)).toNat

end

end A267962.P12637659607475661279

/-! ## A267962.P4407711595723790716

`A196368(n)*A267966(A167614(n+1))`
-/

namespace A267962.P4407711595723790716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n * A267966 (A167614 (n + 1)).toNat

end

end A267962.P4407711595723790716

/-! ## A267962.P18421788796376628666

`A208673(n)*A267966(A167614(n+1))`
-/

namespace A267962.P18421788796376628666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n * A267966 (A167614 (n + 1)).toNat

end

end A267962.P18421788796376628666

/-!
# A267963: Number of n X 4 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267963, there is no canonical definition to state claims against.
-/

/-! ## A267963.P10292456823416390772

`A267966(A374004(n+1))`
-/

namespace A267963.P10292456823416390772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A374004 (n + 1)).toNat

end

end A267963.P10292456823416390772

/-! ## A267963.P7359342814962907817

`A267966(A052905(n)+9)`
-/

namespace A267963.P7359342814962907817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A052905 n + 9).toNat

end

end A267963.P7359342814962907817

/-! ## A267963.P5061759109724245775

`A267966(A055999(n)+10)`
-/

namespace A267963.P5061759109724245775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A055999 n + 10).toNat

end

end A267963.P5061759109724245775

/-! ## A267963.P15783275168271568275

`A267966(A167614(n+2)+1)`
-/

namespace A267963.P15783275168271568275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A167614 (n + 2) + 1).toNat

end

end A267963.P15783275168271568275

/-! ## A267963.P3499066009084722625

`A267966(A141214(n+1))`
-/

namespace A267963.P3499066009084722625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A141214 (n + 1)).toNat

end

end A267963.P3499066009084722625

/-!
# A267964: Number of nX5 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267964, there is no canonical definition to state claims against.
-/

/-! ## A267964.P3415478672578729452

`A267966(A374005(n+1))`
-/

namespace A267964.P3415478672578729452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A374005 (n + 1)).toNat

end

end A267964.P3415478672578729452

/-! ## A267964.P2233945263026733925

`A267966(A155212(n)+13)`
-/

namespace A267964.P2233945263026733925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A155212 n + 13).toNat

end

end A267964.P2233945263026733925

/-! ## A267964.P11462920430133075408

`A267966(A056000(n)+15)`
-/

namespace A267964.P11462920430133075408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A056000 n + 15).toNat

end

end A267964.P11462920430133075408

/-! ## A267964.P7150521090692276007

`A267966(eq[7, A066657(n)])`
-/

namespace A267964.P7150521090692276007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267964.P7150521090692276007

/-! ## A267964.P1680468223978604059

`A267966(A167614(n+3)+2)`
-/

namespace A267964.P1680468223978604059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A167614 (n + 3) + 2).toNat

end

end A267964.P1680468223978604059

/-!
# A267965: Number of nX6 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267965, there is no canonical definition to state claims against.
-/

/-! ## A267965.P5799516744360092308

`A267966(A374007(n+1))`
-/

namespace A267965.P5799516744360092308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A374007 (n + 1)).toNat

end

end A267965.P5799516744360092308

/-! ## A267965.P12148969007966747429

`A267966(A052905(n+3))`
-/

namespace A267965.P12148969007966747429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267966 (A052905 (n + 3)).toNat

end

end A267965.P12148969007966747429

/-!
# A267966: T(n,k)=Number of nXk 0..2 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267966, there is no canonical definition to state claims against.
-/

/-! ## A267966.P1671897596714711918

`3*A267952(A043320(n+1))`
-/

namespace A267966.P1671897596714711918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267952 (A043320 (n + 1)).toNat

end

end A267966.P1671897596714711918

/-! ## A267966.P11289395802374340231

`3*A267952(A044917(n+1))`
-/

namespace A267966.P11289395802374340231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267952 (A044917 (n + 1)).toNat

end

end A267966.P11289395802374340231

/-! ## A267966.P6033494885743562856

`3*A267952(A161953(n+1))`
-/

namespace A267966.P6033494885743562856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267952 (A161953 (n + 1)).toNat

end

end A267966.P6033494885743562856

/-! ## A267966.P2182195335234104947

`3*A267952(A187829(n+1))`
-/

namespace A267966.P2182195335234104947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267952 (A187829 (n + 1)).toNat

end

end A267966.P2182195335234104947

/-! ## A267966.P16974277310836123469

`3*A267952(A246337(n+1))`
-/

namespace A267966.P16974277310836123469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267952 (A246337 (n + 1)).toNat

end

end A267966.P16974277310836123469

/-!
# A267967: Integers n such that n^n is the sum of two nonzero squares while n is not.

The programs for A267967, the canonical program `A267967.P6857388283747575084` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267967 has offset 1).

The definition of A267967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267967.P6857388283747575084

`2*A162592(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A267967

/-- `2*A162592(n+1)` -/
def P6857388283747575084.Spec : Prop :=
  ∀ n, P6857388283747575084.a n = A267967 (n + 1)

theorem P6857388283747575084.correct : P6857388283747575084.Spec := by
  intro n
  simp only [A267967, Nat.add_sub_cancel]

end A267967

/-! ## A267967.P3439741945177840164

`2*∩[A009003(n+1), A022544(n+1)]`
-/

namespace A267967.P3439741945177840164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P3439741945177840164

namespace A267967

/-- `2*∩[A009003(n+1), A022544(n+1)]` -/
def P3439741945177840164.Spec : Prop :=
  ∀ n, (P3439741945177840164.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P15963687366780395423

`∩[2*A022544(n+1), A072592(n+1)]`
-/

namespace A267967.P15963687366780395423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P15963687366780395423

namespace A267967

/-- `∩[2*A022544(n+1), A072592(n+1)]` -/
def P15963687366780395423.Spec : Prop :=
  ∀ n, (P15963687366780395423.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P8443911327217791916

`2*∩[A022544(n+1), A341329(n+1)]`
-/

namespace A267967.P8443911327217791916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P8443911327217791916

namespace A267967

/-- `2*∩[A022544(n+1), A341329(n+1)]` -/
def P8443911327217791916.Spec : Prop :=
  ∀ n, (P8443911327217791916.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P18343925407057160693

`2*∩[A004435(n+1), A009003(n+1)]`
-/

namespace A267967.P18343925407057160693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P18343925407057160693

namespace A267967

/-- `2*∩[A004435(n+1), A009003(n+1)]` -/
def P18343925407057160693.Spec : Prop :=
  ∀ n, (P18343925407057160693.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P14349870414058416319

`∩[2*A004435(n+1), A072592(n+1)]`
-/

namespace A267967.P14349870414058416319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P14349870414058416319

namespace A267967

/-- `∩[2*A004435(n+1), A072592(n+1)]` -/
def P14349870414058416319.Spec : Prop :=
  ∀ n, (P14349870414058416319.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P8984366043155353078

`2*∩[A004435(n+1), A341329(n+1)]`
-/

namespace A267967.P8984366043155353078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P8984366043155353078

namespace A267967

/-- `2*∩[A004435(n+1), A341329(n+1)]` -/
def P8984366043155353078.Spec : Prop :=
  ∀ n, (P8984366043155353078.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P14670355209468983332

`2*∩[A009003(n+1), A018825(n+1)]`
-/

namespace A267967.P14670355209468983332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P14670355209468983332

namespace A267967

/-- `2*∩[A009003(n+1), A018825(n+1)]` -/
def P14670355209468983332.Spec : Prop :=
  ∀ n, (P14670355209468983332.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P15594161759718196295

`∩[2*A018825(n+1), A072592(n+1)]`
-/

namespace A267967.P15594161759718196295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P15594161759718196295

namespace A267967

/-- `∩[2*A018825(n+1), A072592(n+1)]` -/
def P15594161759718196295.Spec : Prop :=
  ∀ n, (P15594161759718196295.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P2720160364780750254

`2*∩[A018825(n+1), A341329(n+1)]`
-/

namespace A267967.P2720160364780750254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P2720160364780750254

namespace A267967

/-- `2*∩[A018825(n+1), A341329(n+1)]` -/
def P2720160364780750254.Spec : Prop :=
  ∀ n, (P2720160364780750254.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P15590865036118669280

`2*∩[A004439(n+1), A009003(n+1)]`
-/

namespace A267967.P15590865036118669280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P15590865036118669280

namespace A267967

/-- `2*∩[A004439(n+1), A009003(n+1)]` -/
def P15590865036118669280.Spec : Prop :=
  ∀ n, (P15590865036118669280.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P15838129530499728257

`∩[2*A004439(n+1), A072592(n+1)]`
-/

namespace A267967.P15838129530499728257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P15838129530499728257

namespace A267967

/-- `∩[2*A004439(n+1), A072592(n+1)]` -/
def P15838129530499728257.Spec : Prop :=
  ∀ n, (P15838129530499728257.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P9386052483239741157

`2*∩[A004439(n+1), A341329(n+1)]`
-/

namespace A267967.P9386052483239741157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P9386052483239741157

namespace A267967

/-- `2*∩[A004439(n+1), A341329(n+1)]` -/
def P9386052483239741157.Spec : Prop :=
  ∀ n, (P9386052483239741157.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P2834876161926415725

`filter[A162592(n+1), A354034(#)]`
-/

namespace A267967.P2834876161926415725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A267967.P2834876161926415725

namespace A267967

/-- `filter[A162592(n+1), A354034(#)]` -/
def P2834876161926415725.Spec : Prop :=
  ∀ n, P2834876161926415725.a n = A267967 (n + 1)

end A267967

/-! ## A267967.P4079241183878089128

`∩[A072592(n+1), A162592(n+1)]`
-/

namespace A267967.P4079241183878089128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P4079241183878089128

namespace A267967

/-- `∩[A072592(n+1), A162592(n+1)]` -/
def P4079241183878089128.Spec : Prop :=
  ∀ n, (P4079241183878089128.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P12271151765781558619

`∩[A076771(n+1), A162592(n+1)]`
-/

namespace A267967.P12271151765781558619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P12271151765781558619

namespace A267967

/-- `∩[A076771(n+1), A162592(n+1)]` -/
def P12271151765781558619.Spec : Prop :=
  ∀ n, (P12271151765781558619.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P1745176012601622039

`∩[A162592(n+1), A177712(n+1)]`
-/

namespace A267967.P1745176012601622039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P1745176012601622039

namespace A267967

/-- `∩[A162592(n+1), A177712(n+1)]` -/
def P1745176012601622039.Spec : Prop :=
  ∀ n, (P1745176012601622039.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P12489176257286939993

`∩[A139270(n+1), A162592(n+1)]`
-/

namespace A267967.P12489176257286939993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P12489176257286939993

namespace A267967

/-- `∩[A139270(n+1), A162592(n+1)]` -/
def P12489176257286939993.Spec : Prop :=
  ∀ n, (P12489176257286939993.a n : ℤ) = A267967 (n + 1)

end A267967

/-! ## A267967.P8183408609750319304

`∩[A162592(n+1), A282671(n+1)]`
-/

namespace A267967.P8183408609750319304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267967.P8183408609750319304

namespace A267967

/-- `∩[A162592(n+1), A282671(n+1)]` -/
def P8183408609750319304.Spec : Prop :=
  ∀ n, (P8183408609750319304.a n : ℤ) = A267967 (n + 1)

end A267967

/-!
# A267968: a(n) = Product_{k = 1..n} k^(k + 1).

The programs for A267968, the canonical program `A267968.P10327192435783119500` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267968 has offset 0).

The definition of A267968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267968.P10327192435783119500

`a(n-1)*n^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267968

/-- `a(n-1)*n^(n+1)` -/
def P10327192435783119500.Spec : Prop :=
  ∀ n, (P10327192435783119500.a n : ℤ) = A267968 n

theorem P10327192435783119500.correct : P10327192435783119500.Spec := by
  intro n
  simp only [A267968]

end A267968

/-! ## A267968.P15246392477037099855

`n!*A002109(n)`
-/

namespace A267968.P15246392477037099855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002109 n

end

end A267968.P15246392477037099855

namespace A267968

/-- `n!*A002109(n)` -/
def P15246392477037099855.Spec : Prop :=
  ∀ n, P15246392477037099855.a n = A267968 n

end A267968

/-! ## A267968.P16222245928078696166

`n!²*abs(A203421(n))`
-/

namespace A267968.P16222245928078696166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * |A203421 n|

end

end A267968.P16222245928078696166

namespace A267968

/-- `n!²*abs(A203421(n))` -/
def P16222245928078696166.Spec : Prop :=
  ∀ n, P16222245928078696166.a n = A267968 n

end A267968

/-! ## A267968.P18355832321099317798

`n!*∏[n^n]`
-/

namespace A267968.P18355832321099317798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A267968.P18355832321099317798

namespace A267968

/-- `n!*∏[n^n]` -/
def P18355832321099317798.Spec : Prop :=
  ∀ n, (P18355832321099317798.a n : ℤ) = A267968 n

end A267968

/-! ## A267968.P5126742216290107722

`∏[n^comp[(4^n)²]]`
-/

namespace A267968.P5126742216290107722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A267968.P5126742216290107722

namespace A267968

/-- `∏[n^comp[(4^n)²]]` -/
def P5126742216290107722.Spec : Prop :=
  ∀ n, (P5126742216290107722.a n : ℤ) = A267968 n

end A267968

/-!
# A267969: Conjectured list of positive numbers k such that the Collatz-like map T: if x > 1 and x odd, x -> 5*x+1 and, if x even, x -> x/2, when started at k, eventually reaches a cycle that does not contain 1 (cf. A232711).

The programs for A267969, there is no canonical definition to state claims against.
-/

/-! ## A267969.P10341694484589815944

`A253723(3*(n+1))+A122865(A020639(n+4))`
-/

namespace A267969.P10341694484589815944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253723 (3 * (n + 1)) + A122865 (A020639 (n + 4)).toNat

end

end A267969.P10341694484589815944

/-! ## A267969.P14608608528778404525

`A072498(n+1)+A050320(A125655(n))`
-/

namespace A267969.P14608608528778404525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072498 (n + 1) + A050320 (A125655 n).toNat

end

end A267969.P14608608528778404525

/-! ## A267969.P12392638674749921460

`A058716(A243752(2*n))+A055096(n+2)`
-/

namespace A267969.P12392638674749921460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (A243752 (2 * n)).toNat + A055096 (n + 2)

end

end A267969.P12392638674749921460

/-! ## A267969.P5143709057473432140

`A257993(A123029(n+1))+A047362(2*n+3)`
-/

namespace A267969.P5143709057473432140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A123029 (n + 1)).toNat + A047362 (2 * n + 3)

end

end A267969.P5143709057473432140

/-!
# A267970: Conjectured list of positive numbers n such that the Collatz-like map T: if x > 1 and x odd, x -> 5*x+1 and, if x even, x -> x/2, when started at n, never repeats.

The programs for A267970, there is no canonical definition to state claims against.
-/

/-! ## A267970.P6189433034184582484

`lt[A213479(n), A368301(A004277(n))]`
-/

namespace A267970.P6189433034184582484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368301 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267970.P6189433034184582484

/-! ## A267970.P13887042010816772546

`lt[A152941(n+1), A368301(A004277(n))]`
-/

namespace A267970.P13887042010816772546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368301 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267970.P13887042010816772546

/-! ## A267970.P792032213986047520

`lt[A348995(n+1), A368301(A004277(n))]`
-/

namespace A267970.P792032213986047520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368301 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267970.P792032213986047520

/-!
# A267971: Number of nX3 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267971, there is no canonical definition to state claims against.
-/

/-! ## A267971.P1018552443887756887

`A267928(n+1)^3`
-/

namespace A267971.P1018552443887756887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267928 (n + 1) ^ 3

end

end A267971.P1018552443887756887

/-! ## A267971.P1268906811651331254

`sqrt(A267929(n+1))^3`
-/

namespace A267971.P1268906811651331254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267929 (n + 1) : ℝ) ^ 3

end

end A267971.P1268906811651331254

/-! ## A267971.P6514379070338771192

`A269409(Δ[A008778(n)])^3`
-/

namespace A267971.P6514379070338771192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (f1 (n + 1) - f1 n).toNat ^ 3

end

end A267971.P6514379070338771192

/-! ## A267971.P15130299572749762228

`A267928(n+1)*A267929(n+1)`
-/

namespace A267971.P15130299572749762228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267928 (n + 1) * A267929 (n + 1)

end

end A267971.P15130299572749762228

/-! ## A267971.P16507494078857240602

`A267929(n+1)*A269409(Δ[A008778(n)])`
-/

namespace A267971.P16507494078857240602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267929 (n + 1) * A269409 (f1 (n + 1) - f1 n).toNat

end

end A267971.P16507494078857240602

/-! ## A267971.P2503469067830686273

`A267928(A000027(n+1))*A267928(n+1)*A267928(n+1)`
-/

namespace A267971.P2503469067830686273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267928 (A000027 (n + 1)).toNat * A267928 (n + 1) * A267928 (n + 1)

end

end A267971.P2503469067830686273

/-!
# A267972: Number of nX4 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267972, there is no canonical definition to state claims against.
-/

/-! ## A267972.P3372484423073131232

`A267974(∑[n+4]+3)`
-/

namespace A267972.P3372484423073131232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267972.P3372484423073131232

/-!
# A267973: Number of nX5 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267973, there is no canonical definition to state claims against.
-/

/-! ## A267973.P17176885489307430038

`A267974(Δ[A023545(n+1)])`
-/

namespace A267973.P17176885489307430038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (f1 (n + 1) - f1 n).toNat

end

end A267973.P17176885489307430038

/-!
# A267974: T(n,k)=Number of nXk 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267974, there is no canonical definition to state claims against.
-/

/-! ## A267974.P2462807055532620039

`A267997(n+1)-A184946(A337369(n))`
-/

namespace A267974.P2462807055532620039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (n + 1) - A184946 (A337369 n).toNat

end

end A267974.P2462807055532620039

/-! ## A267974.P10079644503477582054

`A267997(n+1)-A081163(A081148(n))`
-/

namespace A267974.P10079644503477582054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (n + 1) - A081163 (A081148 n).toNat

end

end A267974.P10079644503477582054

/-! ## A267974.P2882491183870432465

`A267997(n+1)-A028586(A054210(2*n+1))`
-/

namespace A267974.P2882491183870432465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (n + 1) - A028586 (A054210 (2 * n + 1)).toNat

end

end A267974.P2882491183870432465

/-!
# A267975: Number of 1 X n 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267975, the canonical program `A267975.P156252864926590556` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267975 has offset 1).

The definition of A267975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267975.P156252864926590556

`ogf((4-32x+72x^2-6x^3-72x^4-50x^5-12x^6-x^7)/(1-12x+50x^2-72x^3-21x^4+72x^5+50x^6+12x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267975

/-- `ogf((4-32x+72x^2-6x^3-72x^4-50x^5-12x^6-x^7)/(1-12x+50x^2-72x^3-21x^4+72x^5+50x^6+12x^7+x^8))` -/
def P156252864926590556.Spec : Prop :=
  ∀ n, P156252864926590556.a n = A267975 (n + 1)

theorem P156252864926590556.correct : P156252864926590556.Spec := by
  intro n
  simp only [A267975, Nat.add_sub_cancel]

end A267975

/-! ## A267975.P10627448836262273259

`A269435(∑[n+3]+1)`
-/

namespace A267975.P10627448836262273259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267975.P10627448836262273259

namespace A267975

/-- `A269435(∑[n+3]+1)` -/
def P10627448836262273259.Spec : Prop :=
  ∀ n, P10627448836262273259.a n = A267975 (n + 1)

end A267975

/-! ## A267975.P8467507109463992428

`A269435(Δ[A008778(n)])%A200573(n+1)`
-/

namespace A267975.P8467507109463992428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269435 (f1 (n + 1) - f1 n).toNat) (A200573 (n + 1))

end

end A267975.P8467507109463992428

namespace A267975

/-- `A269435(Δ[A008778(n)])%A200573(n+1)` -/
def P8467507109463992428.Spec : Prop :=
  ∀ n, P8467507109463992428.a n = A267975 (n + 1)

end A267975

/-! ## A267975.P13053793428830243945

`sqrt(A267976(n+1))`
-/

namespace A267975.P13053793428830243945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267976 (n + 1) : ℝ)

end

end A267975.P13053793428830243945

namespace A267975

/-- `sqrt(A267976(n+1))` -/
def P13053793428830243945.Spec : Prop :=
  ∀ n, P13053793428830243945.a n = (A267975 (n + 1) : ℝ)

end A267975

/-! ## A267975.P2227549659894970487

`A267994(n+1)^(1/3)`
-/

namespace A267975.P2227549659894970487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A267994 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A267975.P2227549659894970487

namespace A267975

/-- `A267994(n+1)^(1/3)` -/
def P2227549659894970487.Spec : Prop :=
  ∀ n, P2227549659894970487.a n = (A267975 (n + 1) : ℝ)

end A267975

/-! ## A267975.P12426626138103827982

`A267994(n+1)/A267976(n+1)`
-/

namespace A267975.P12426626138103827982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267994 (n + 1) : ℚ) / (A267976 (n + 1) : ℚ)

end

end A267975.P12426626138103827982

namespace A267975

/-- `A267994(n+1)/A267976(n+1)` -/
def P12426626138103827982.Spec : Prop :=
  ∀ n, P12426626138103827982.a n = (A267975 (n + 1) : ℚ)

end A267975

/-!
# A267976: Number of 2Xn 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267976, there is no canonical definition to state claims against.
-/

/-! ## A267976.P13559249141292072951

`A267975(n+1)²`
-/

namespace A267976.P13559249141292072951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267975 (n + 1) ^ 2

end

end A267976.P13559249141292072951

/-! ## A267976.P4594996842887872925

`A269435(∑[n+3]+1)²`
-/

namespace A267976.P4594996842887872925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A267976.P4594996842887872925

/-! ## A267976.P11054180222234618822

`A267975(n+1)*A269435(∑[n+3]+1)`
-/

namespace A267976.P11054180222234618822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267975 (n + 1) * A269435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267976.P11054180222234618822

/-! ## A267976.P15384674205423663695

`A267975(n+1)^A001222(A125215(n+1))`
-/

namespace A267976.P15384674205423663695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267975 (n + 1) : ℚ) ^ (A001222 (A125215 (n + 1)).toNat : ℤ)

end

end A267976.P15384674205423663695

/-! ## A267976.P12265402248433310600

`A267975(n+1)^A000005(A267944(n+1))`
-/

namespace A267976.P12265402248433310600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267975 (n + 1) : ℚ) ^ (A000005 (A267944 (n + 1)).toNat : ℤ)

end

end A267976.P12265402248433310600

/-! ## A267976.P11469942479805835619

`A267975(n+1)^A000005(A267945(n+1))`
-/

namespace A267976.P11469942479805835619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267975 (n + 1) : ℚ) ^ (A000005 (A267945 (n + 1)).toNat : ℤ)

end

end A267976.P11469942479805835619

/-! ## A267976.P7792711637805420726

`A267975(n+1)^A020639(A267967(n+1))`
-/

namespace A267976.P7792711637805420726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267975 (n + 1) : ℚ) ^ (A020639 (A267967 (n + 1)).toNat : ℤ)

end

end A267976.P7792711637805420726

/-! ## A267976.P4342359586644092408

`A267994(n+1)/A267975(n+1)`
-/

namespace A267976.P4342359586644092408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267994 (n + 1) : ℚ) / (A267975 (n + 1) : ℚ)

end

end A267976.P4342359586644092408

/-!
# A267977: Number of 3Xn 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267977, there is no canonical definition to state claims against.
-/

/-! ## A267977.P4688454859739640054

`A267974(∑[n+2]+4)`
-/

namespace A267977.P4688454859739640054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267977.P4688454859739640054

/-! ## A267977.P12532048330242335849

`lcm(2, A267974(A167614(n+1)))`
-/

namespace A267977.P12532048330242335849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267974 (A167614 (n + 1)).toNat)

end

end A267977.P12532048330242335849

/-! ## A267977.P9747046571366105102

`A027828(n)*A267974(A167614(n+1))`
-/

namespace A267977.P9747046571366105102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n * A267974 (A167614 (n + 1)).toNat

end

end A267977.P9747046571366105102

/-! ## A267977.P12679958910145753933

`A138908(n)*A267974(A167614(n+1))`
-/

namespace A267977.P12679958910145753933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138908 n * A267974 (A167614 (n + 1)).toNat

end

end A267977.P12679958910145753933

/-! ## A267977.P18061331447651316431

`A261585(n)*A267974(A167614(n+1))`
-/

namespace A267977.P18061331447651316431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n * A267974 (A167614 (n + 1)).toNat

end

end A267977.P18061331447651316431

/-!
# A267978: Number of 4Xn 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267978, there is no canonical definition to state claims against.
-/

/-! ## A267978.P16928135924041446873

`A267974(A141214(n)+7)`
-/

namespace A267978.P16928135924041446873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (A141214 n + 7).toNat

end

end A267978.P16928135924041446873

/-! ## A267978.P5999271786937885263

`A267974(eq[5, A066657(n)])`
-/

namespace A267978.P5999271786937885263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267978.P5999271786937885263

/-! ## A267978.P6890584350683051350

`A267974(A167614(n+2)+1)`
-/

namespace A267978.P6890584350683051350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (A167614 (n + 2) + 1).toNat

end

end A267978.P6890584350683051350

/-! ## A267978.P13392814416025601024

`A267974(A055998(n+1)+7)`
-/

namespace A267978.P13392814416025601024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (A055998 (n + 1) + 7).toNat

end

end A267978.P13392814416025601024

/-!
# A267979: Number of 5Xn 0..3 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267979, there is no canonical definition to state claims against.
-/

/-! ## A267979.P18098281660957692311

`A267974(A167499(n+3))`
-/

namespace A267979.P18098281660957692311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (A167499 (n + 3)).toNat

end

end A267979.P18098281660957692311

/-! ## A267979.P5678039589486414511

`A267974(A155212(n)+13)`
-/

namespace A267979.P5678039589486414511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (A155212 n + 13).toNat

end

end A267979.P5678039589486414511

/-! ## A267979.P12975106661744214508

`A267974(eq[7, A066657(n)])`
-/

namespace A267979.P12975106661744214508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267979.P12975106661744214508

/-!
# A267980: a(n) = Catalan(n)^2*(4n + 1).

The programs for A267980, the canonical program `A267980.P2622827651284252173` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267980 has offset 0).

The definition of A267980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)²*(4*n+1)` (program `A267980.P2622827651284252173`, by `A267980.P2622827651284252173.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267980.P2622827651284252173

`A000108(n)²*(4*n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267980

/-- `A000108(n)²*(4*n+1)` -/
def P2622827651284252173.Spec : Prop :=
  ∀ n, P2622827651284252173.a n = A267980 n

theorem P2622827651284252173.correct : P2622827651284252173.Spec := by
  intro n
  simp only [A267980]

end A267980

/-! ## A267980.P10449634037566158258

`(4*n+1)*A001246(n)`
-/

namespace A267980.P10449634037566158258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A001246 n

end

end A267980.P10449634037566158258

namespace A267980

/-- `(4*n+1)*A001246(n)` -/
def P10449634037566158258.Spec : Prop :=
  ∀ n, P10449634037566158258.a n = A267980 n

theorem P10449634037566158258.correct : P10449634037566158258.Spec := by
  intro n
  simp only [A267980, Nat.add_sub_cancel, A267980.P10449634037566158258.a, A267980.P2622827651284252173.a, A000108, A000108.P17551949696095299361.a, A001246, A001246.P6480413615949402633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267980

/-! ## A267980.P10865668936368647569

`(4*n+1)*A028304(2*n)²`
-/

namespace A267980.P10865668936368647569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A028304 (2 * n) ^ 2

end

end A267980.P10865668936368647569

namespace A267980

/-- `(4*n+1)*A028304(2*n)²` -/
def P10865668936368647569.Spec : Prop :=
  ∀ n, P10865668936368647569.a n = A267980 n

end A267980

/-! ## A267980.P975446917517120825

`A267982(n)+A001246(n)`
-/

namespace A267980.P975446917517120825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267982 n + A001246 n

end

end A267980.P975446917517120825

namespace A267980

/-- `A267982(n)+A001246(n)` -/
def P975446917517120825.Spec : Prop :=
  ∀ n, P975446917517120825.a n = A267980 n

theorem P975446917517120825.correct : P975446917517120825.Spec := by
  intro n
  simp only [A267980, Nat.add_sub_cancel, A267980.P975446917517120825.a, A267980.P2622827651284252173.a, A000108, A000108.P17551949696095299361.a, A001246, A001246.P6480413615949402633.a, A267982, A267982.P12639257740526323950.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267980

/-! ## A267980.P4006740686297674121

`A001246(n)*A016813(n)`
-/

namespace A267980.P4006740686297674121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A016813 n

end

end A267980.P4006740686297674121

namespace A267980

/-- `A001246(n)*A016813(n)` -/
def P4006740686297674121.Spec : Prop :=
  ∀ n, P4006740686297674121.a n = A267980 n

theorem P4006740686297674121.correct : P4006740686297674121.Spec := by
  intro n
  simp only [A267980, Nat.add_sub_cancel, A267980.P4006740686297674121.a, A267980.P2622827651284252173.a, A000108, A000108.P17551949696095299361.a, A001246, A001246.P6480413615949402633.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267980

/-! ## A267980.P5136532513561634394

`A000108(n)*A051944(n)`
-/

namespace A267980.P5136532513561634394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A051944 n

end

end A267980.P5136532513561634394

namespace A267980

/-- `A000108(n)*A051944(n)` -/
def P5136532513561634394.Spec : Prop :=
  ∀ n, P5136532513561634394.a n = A267980 n

end A267980

/-! ## A267980.P10020350504976357137

`A267981(n)-A000108(n)²`
-/

namespace A267980.P10020350504976357137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267981 n - A000108 n ^ 2

end

end A267980.P10020350504976357137

namespace A267980

/-- `A267981(n)-A000108(n)²` -/
def P10020350504976357137.Spec : Prop :=
  ∀ n, P10020350504976357137.a n = A267980 n

theorem P10020350504976357137.correct : P10020350504976357137.Spec := by
  intro n
  simp only [A267980, Nat.add_sub_cancel, A267980.P10020350504976357137.a, A267980.P2622827651284252173.a, A000108, A000108.P17551949696095299361.a, A267981, A267981.P2581473113123947097.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267980

/-! ## A267980.P3017490677854997410

`2*A000891(n)-A001246(n)`
-/

namespace A267980.P3017490677854997410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000891 n - A001246 n

end

end A267980.P3017490677854997410

namespace A267980

/-- `2*A000891(n)-A001246(n)` -/
def P3017490677854997410.Spec : Prop :=
  ∀ n, P3017490677854997410.a n = A267980 n

theorem P3017490677854997410.correct : P3017490677854997410.Spec := by
  intro n
  simp only [A267980, Nat.add_sub_cancel, A267980.P3017490677854997410.a, A267980.P2622827651284252173.a, A000108, A000108.P17551949696095299361.a, A000891, A000891.P6013844036491525535.a, A001246, A001246.P6480413615949402633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267980

/-! ## A267980.P10835090421432948376

`A000108(n)*A107232(2*n)`
-/

namespace A267980.P10835090421432948376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A107232 (2 * n)

end

end A267980.P10835090421432948376

namespace A267980

/-- `A000108(n)*A107232(2*n)` -/
def P10835090421432948376.Spec : Prop :=
  ∀ n, P10835090421432948376.a n = A267980 n

end A267980

/-! ## A267980.P6636935585782665468

`(A051945(n)-A001791(n))*A000108(n)`
-/

namespace A267980.P6636935585782665468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051945 n - A001791 n) * A000108 n

end

end A267980.P6636935585782665468

namespace A267980

/-- `(A051945(n)-A001791(n))*A000108(n)` -/
def P6636935585782665468.Spec : Prop :=
  ∀ n, P6636935585782665468.a n = A267980 n

end A267980

/-!
# A267981: a(n) = Catalan(n)^2*(4n + 2).

The programs for A267981, the canonical program `A267981.P2581473113123947097` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267981 has offset 0).

The definition of A267981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)²*(4*n+2)` (program `A267981.P2581473113123947097`, by `A267981.P2581473113123947097.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267981.P2581473113123947097

`A000108(n)²*(4*n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267981

/-- `A000108(n)²*(4*n+2)` -/
def P2581473113123947097.Spec : Prop :=
  ∀ n, P2581473113123947097.a n = A267981 n

theorem P2581473113123947097.correct : P2581473113123947097.Spec := by
  intro n
  simp only [A267981]

end A267981

/-! ## A267981.P7943635617289800101

`2*(2*n+1)*(C(2*n, n)/(n+1))²`
-/

namespace A267981.P7943635617289800101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2)

end

end A267981.P7943635617289800101

namespace A267981

/-- `2*(2*n+1)*(C(2*n, n)/(n+1))²` -/
def P7943635617289800101.Spec : Prop :=
  ∀ n, P7943635617289800101.a n = (A267981 n : ℚ)

end A267981

/-! ## A267981.P5237157229846381225

`2*A000891(n)`
-/

namespace A267981.P5237157229846381225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000891 n

end

end A267981.P5237157229846381225

namespace A267981

/-- `2*A000891(n)` -/
def P5237157229846381225.Spec : Prop :=
  ∀ n, P5237157229846381225.a n = A267981 n

theorem P5237157229846381225.correct : P5237157229846381225.Spec := by
  intro n
  simp only [A267981, Nat.add_sub_cancel, A267981.P5237157229846381225.a, A267981.P2581473113123947097.a, A000108, A000108.P17551949696095299361.a, A000891, A000891.P6013844036491525535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267981

/-! ## A267981.P4930646074443283696

`2*A067802(∑[n])`
-/

namespace A267981.P4930646074443283696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067802 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267981.P4930646074443283696

namespace A267981

/-- `2*A067802(∑[n])` -/
def P4930646074443283696.Spec : Prop :=
  ∀ n, P4930646074443283696.a n = A267981 n

end A267981

/-! ## A267981.P8995703272713238107

`2*A005558(2*n)`
-/

namespace A267981.P8995703272713238107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005558 (2 * n)

end

end A267981.P8995703272713238107

namespace A267981

/-- `2*A005558(2*n)` -/
def P8995703272713238107.Spec : Prop :=
  ∀ n, P8995703272713238107.a n = A267981 n

end A267981

/-! ## A267981.P15333919317241022440

`(n+2)*A005568(n)`
-/

namespace A267981.P15333919317241022440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005568 n

end

end A267981.P15333919317241022440

namespace A267981

/-- `(n+2)*A005568(n)` -/
def P15333919317241022440.Spec : Prop :=
  ∀ n, P15333919317241022440.a n = A267981 n

end A267981

/-! ## A267981.P1409760950404836180

`(n+2)*A052175(n²)`
-/

namespace A267981.P1409760950404836180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A052175 (n ^ 2)

end

end A267981.P1409760950404836180

namespace A267981

/-- `(n+2)*A052175(n²)` -/
def P1409760950404836180.Spec : Prop :=
  ∀ n, P1409760950404836180.a n = A267981 n

end A267981

/-! ## A267981.P14360906516592911849

`(n+2)*A005817(2*n)`
-/

namespace A267981.P14360906516592911849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005817 (2 * n)

end

end A267981.P14360906516592911849

namespace A267981

/-- `(n+2)*A005817(2*n)` -/
def P14360906516592911849.Spec : Prop :=
  ∀ n, P14360906516592911849.a n = A267981 n

end A267981

/-! ## A267981.P15633041150282134078

`(n+2)*A302093(2*n)`
-/

namespace A267981.P15633041150282134078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A302093 (2 * n)

end

end A267981.P15633041150282134078

namespace A267981

/-- `(n+2)*A302093(2*n)` -/
def P15633041150282134078.Spec : Prop :=
  ∀ n, P15633041150282134078.a n = A267981 n

end A267981

/-! ## A267981.P17253541695595227215

`A172392(n)+A005568(n)`
-/

namespace A267981.P17253541695595227215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172392 n + A005568 n

end

end A267981.P17253541695595227215

namespace A267981

/-- `A172392(n)+A005568(n)` -/
def P17253541695595227215.Spec : Prop :=
  ∀ n, P17253541695595227215.a n = A267981 n

end A267981

/-!
# A267982: a(n) = 4*n*Catalan(n)^2.

The programs for A267982, the canonical program `A267982.P12639257740526323950` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267982 has offset 0).

The definition of A267982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*A000108(n)²` (program `A267982.P12639257740526323950`, by `A267982.P12639257740526323950.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267982.P18339751237870271114

`4*n*(C(2*n, n)/(n+1))²`
-/

namespace A267982.P18339751237870271114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A267982.P18339751237870271114

namespace A267982

/-- `4*n*(C(2*n, n)/(n+1))²` -/
def P18339751237870271114.Spec : Prop :=
  ∀ n, P18339751237870271114.a n = (A267982 n : ℚ)

end A267982

/-! ## A267982.P3791037971610662692

`4*A268085(n)`
-/

namespace A267982.P3791037971610662692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268085 n

end

end A267982.P3791037971610662692

namespace A267982

/-- `4*A268085(n)` -/
def P3791037971610662692.Spec : Prop :=
  ∀ n, P3791037971610662692.a n = A267982 n

theorem P3791037971610662692.correct : P3791037971610662692.Spec := by
  intro n
  simp only [A267982, Nat.add_sub_cancel, A267982.P3791037971610662692.a, A267982.P12639257740526323950.a, A000108, A000108.P17551949696095299361.a, A268085, A268085.P16490745534911610649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267982

/-! ## A267982.P12639257740526323950

`4*n*A000108(n)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267982

/-- `4*n*A000108(n)²` -/
def P12639257740526323950.Spec : Prop :=
  ∀ n, P12639257740526323950.a n = A267982 n

theorem P12639257740526323950.correct : P12639257740526323950.Spec := by
  intro n
  simp only [A267982]

end A267982

/-! ## A267982.P3221940801702239244

`n*A068875(n)²`
-/

namespace A267982.P3221940801702239244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068875 n ^ 2

end

end A267982.P3221940801702239244

namespace A267982

/-- `n*A068875(n)²` -/
def P3221940801702239244.Spec : Prop :=
  ∀ n, P3221940801702239244.a n = A267982 n

end A267982

/-! ## A267982.P989990638185154212

`4*n*A001246(n)`
-/

namespace A267982.P989990638185154212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A001246 n)

end

end A267982.P989990638185154212

namespace A267982

/-- `4*n*A001246(n)` -/
def P989990638185154212.Spec : Prop :=
  ∀ n, P989990638185154212.a n = A267982 n

theorem P989990638185154212.correct : P989990638185154212.Spec := by
  intro n
  simp only [A267982, Nat.add_sub_cancel, A267982.P989990638185154212.a, A267982.P12639257740526323950.a, A000108, A000108.P17551949696095299361.a, A001246, A001246.P6480413615949402633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267982

/-! ## A267982.P14820231014951116222

`n*A159971(∑[n])²`
-/

namespace A267982.P14820231014951116222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A159971 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267982.P14820231014951116222

namespace A267982

/-- `n*A159971(∑[n])²` -/
def P14820231014951116222.Spec : Prop :=
  ∀ n, P14820231014951116222.a n = A267982 n

end A267982

/-! ## A267982.P11517937190475803303

`n*Δ[A106191(n)]²`
-/

namespace A267982.P11517937190475803303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A267982.P11517937190475803303

namespace A267982

/-- `n*Δ[A106191(n)]²` -/
def P11517937190475803303.Spec : Prop :=
  ∀ n, P11517937190475803303.a n = A267982 n

end A267982

/-! ## A267982.P13086109807706644607

`n*record[A104624(n)²]`
-/

namespace A267982.P13086109807706644607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267982.P13086109807706644607

namespace A267982

/-- `n*record[A104624(n)²]` -/
def P13086109807706644607.Spec : Prop :=
  ∀ n, P13086109807706644607.a n = A267982 n

end A267982

/-!
# A267983: Integers n such that n^3 = (x^2 + y^2 + z^2) / 3 where x > y > z > 0, is soluble.

The programs for A267983, there is no canonical definition to state claims against.
-/

/-! ## A267983.P10264347252988704918

`lt[6, A014452(n)]`
-/

namespace A267983.P10264347252988704918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P10264347252988704918

/-! ## A267983.P9684396573906102670

`lt[24, A261394(n)]`
-/

namespace A267983.P9684396573906102670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P9684396573906102670

/-! ## A267983.P17187678346331433023

`lt[3, A002102(3*n)]`
-/

namespace A267983.P17187678346331433023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P17187678346331433023

/-! ## A267983.P16290859086777971038

`lt[6, A029594(2*n)]`
-/

namespace A267983.P16290859086777971038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P16290859086777971038

/-! ## A267983.P12912840108642408640

`lt[6, A257653(3*n)]`
-/

namespace A267983.P12912840108642408640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P12912840108642408640

/-! ## A267983.P12036677078204291169

`lt[25, A005875(3*n)]`
-/

namespace A267983.P12036677078204291169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P12036677078204291169

/-! ## A267983.P11342527864153025284

`lt[6, A029681(A008706(n))]`
-/

namespace A267983.P11342527864153025284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267983.P11342527864153025284

/-! ## A267983.P4033829017145955785

`comp[A002516(n)-A007379(n)]`
-/

namespace A267983.P4033829017145955785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002516 n - A007379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A267983.P4033829017145955785

/-! ## A267983.P4747729990745698344

`∪[A154777(n+1), A215579(n+1)]`
-/

namespace A267983.P4747729990745698344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267983.P4747729990745698344

/-! ## A267983.P13542494731236982244

`eq[A000007(n), A015351(A014452(n))]`
-/

namespace A267983.P13542494731236982244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015351 (A014452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267983.P13542494731236982244

/-!
# A267984: Numbers congruent to {17, 23} mod 30.

The programs for A267984, the canonical program `A267984.P16767950070853382646` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267984 has offset 1).

The definition of A267984 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A267984.anchor (n : ℕ) (hn : 1 ≤ n) : A267984 n = (Nat.nth (fun k => k % 30 ∈ ({17, 23} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A267.A267984`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267984.P16767950070853382646

`a(n-2)+30` with `a(0)=17, a(1)=23`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267984

/-- `a(n-2)+30` -/
def P16767950070853382646.Spec : Prop :=
  ∀ n, (P16767950070853382646.a n : ℤ) = A267984 (n + 1)

theorem P16767950070853382646.correct : P16767950070853382646.Spec := by
  intro n
  simp only [A267984, Nat.add_sub_cancel]

end A267984

/-! ## A267984.P3182004406280524867

`ogf((17+6x+7x^2)/(1-x-x^2+x^3))`
-/

namespace A267984.P3182004406280524867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 6, 7] [1, -1, -1, 1] n

end

end A267984.P3182004406280524867

namespace A267984

/-- `ogf((17+6x+7x^2)/(1-x-x^2+x^3))` -/
def P3182004406280524867.Spec : Prop :=
  ∀ n, P3182004406280524867.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P1586219077034866872

`(30*(n+1)-9*(-1)^(n+1)-5)/2`
-/

namespace A267984.P1586219077034866872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 * (n + 1) : ℤ) - 9 * (-1) ^ (n + 1) - 5 : ℚ) / 2

end

end A267984.P1586219077034866872

namespace A267984

/-- `(30*(n+1)-9*(-1)^(n+1)-5)/2` -/
def P1586219077034866872.Spec : Prop :=
  ∀ n, P1586219077034866872.a n = (A267984 (n + 1) : ℚ)

theorem P1586219077034866872.correct : P1586219077034866872.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A267984, Nat.add_sub_cancel, A267984.P1586219077034866872.a, A267984.P16767950070853382646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A267984, Nat.add_sub_cancel, A267984.P1586219077034866872.a, A267984.P16767950070853382646.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267984

/-! ## A267984.P8801252933880429751

`∑[30-a(n-1)]` with `a(0)=17, a(1)=6`
-/

namespace A267984.P8801252933880429751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 6] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267984.P8801252933880429751

namespace A267984

/-- `∑[30-a(n-1)]` -/
def P8801252933880429751.Spec : Prop :=
  ∀ n, P8801252933880429751.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P15968540159287765863

`∑[6*gcd(2, n)²]-7`
-/

namespace A267984.P15968540159287765863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 7

end

end A267984.P15968540159287765863

namespace A267984

/-- `∑[6*gcd(2, n)²]-7` -/
def P15968540159287765863.Spec : Prop :=
  ∀ n, P15968540159287765863.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P2791167874246128964

`∑[A040135(n)]+5`
-/

namespace A267984.P2791167874246128964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A267984.P2791167874246128964

namespace A267984

/-- `∑[A040135(n)]+5` -/
def P2791167874246128964.Spec : Prop :=
  ∀ n, P2791167874246128964.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P2724471809996174741

`A267985(n+1)+10`
-/

namespace A267984.P2724471809996174741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1) + 10

end

end A267984.P2724471809996174741

namespace A267984

/-- `A267985(n+1)+10` -/
def P2724471809996174741.Spec : Prop :=
  ∀ n, P2724471809996174741.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P1158705538164552467

`∑[3*A040015(n)]+5`
-/

namespace A267984.P1158705538164552467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A267984.P1158705538164552467

namespace A267984

/-- `∑[3*A040015(n)]+5` -/
def P1158705538164552467.Spec : Prop :=
  ∀ n, P1158705538164552467.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P9002247885031046553

`3*A090773(n+1)+5`
-/

namespace A267984.P9002247885031046553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090773 (n + 1) + 5

end

end A267984.P9002247885031046553

namespace A267984

/-- `3*A090773(n+1)+5` -/
def P9002247885031046553.Spec : Prop :=
  ∀ n, P9002247885031046553.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P4219644240963890202

`A272100(n+1)+5-n`
-/

namespace A267984.P4219644240963890202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + (5 - (n : ℤ))

end

end A267984.P4219644240963890202

namespace A267984

/-- `A272100(n+1)+5-n` -/
def P4219644240963890202.Spec : Prop :=
  ∀ n, P4219644240963890202.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P3306609807860893154

`A248474(n+1)+A010711(n)`
-/

namespace A267984.P3306609807860893154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + A010711 n

end

end A267984.P3306609807860893154

namespace A267984

/-- `A248474(n+1)+A010711(n)` -/
def P3306609807860893154.Spec : Prop :=
  ∀ n, P3306609807860893154.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P1926653930472300791

`A259750(n+1)+A136320(n)`
-/

namespace A267984.P1926653930472300791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259750 (n + 1) + A136320 n

end

end A267984.P1926653930472300791

namespace A267984

/-- `A259750(n+1)+A136320(n)` -/
def P1926653930472300791.Spec : Prop :=
  ∀ n, P1926653930472300791.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P14682195105205424052

`∪[A128473(n+1), A128468(n)]`
-/

namespace A267984.P14682195105205424052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267984.P14682195105205424052

namespace A267984

/-- `∪[A128473(n+1), A128468(n)]` -/
def P14682195105205424052.Spec : Prop :=
  ∀ n, (P14682195105205424052.a n : ℤ) = A267984 (n + 1)

end A267984

/-! ## A267984.P5957139816503712178

`A067844(n+1)+A063226(n+1)`
-/

namespace A267984.P5957139816503712178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067844 (n + 1) + A063226 (n + 1)

end

end A267984.P5957139816503712178

namespace A267984

/-- `A067844(n+1)+A063226(n+1)` -/
def P5957139816503712178.Spec : Prop :=
  ∀ n, P5957139816503712178.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P9690989414736906854

`A214863(n+1)+A113806(n+1)`
-/

namespace A267984.P9690989414736906854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214863 (n + 1) + A113806 (n + 1)

end

end A267984.P9690989414736906854

namespace A267984

/-- `A214863(n+1)+A113806(n+1)` -/
def P9690989414736906854.Spec : Prop :=
  ∀ n, P9690989414736906854.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P16651711648875611171

`A158803(n+1)-A112651(n+1)`
-/

namespace A267984.P16651711648875611171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (n + 1) - A112651 (n + 1)

end

end A267984.P16651711648875611171

namespace A267984

/-- `A158803(n+1)-A112651(n+1)` -/
def P16651711648875611171.Spec : Prop :=
  ∀ n, P16651711648875611171.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P4158794459904341692

`A259614(n+1)-A168328(n+1)`
-/

namespace A267984.P4158794459904341692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259614 (n + 1) - A168328 (n + 1)

end

end A267984.P4158794459904341692

namespace A267984

/-- `A259614(n+1)-A168328(n+1)` -/
def P4158794459904341692.Spec : Prop :=
  ∀ n, P4158794459904341692.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P17076318719480364757

`A067870(n+1)+A008592(A004526(n)+1)`
-/

namespace A267984.P17076318719480364757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067870 (n + 1) + A008592 (A004526 n + 1).toNat

end

end A267984.P17076318719480364757

namespace A267984

/-- `A067870(n+1)+A008592(A004526(n)+1)` -/
def P17076318719480364757.Spec : Prop :=
  ∀ n, P17076318719480364757.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P8527014912322633721

`A248474(n+1)+A226294(n+1)`
-/

namespace A267984.P8527014912322633721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + A226294 (n + 1)

end

end A267984.P8527014912322633721

namespace A267984

/-- `A248474(n+1)+A226294(n+1)` -/
def P8527014912322633721.Spec : Prop :=
  ∀ n, P8527014912322633721.a n = A267984 (n + 1)

end A267984

/-! ## A267984.P13197555974441330764

`A090773(n+1)+A090773(n+1)+A090771(n+2)`
-/

namespace A267984.P13197555974441330764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) + (A090773 (n + 1) + A090771 (n + 2))

end

end A267984.P13197555974441330764

namespace A267984

/-- `A090773(n+1)+A090773(n+1)+A090771(n+2)` -/
def P13197555974441330764.Spec : Prop :=
  ∀ n, P13197555974441330764.a n = A267984 (n + 1)

end A267984

/-!
# A267985: Numbers congruent to {7, 13} mod 30.

The programs for A267985, the canonical program `A267985.P17339370882884402453` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267985 has offset 1).

The definition of A267985 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A267985.anchor (n : ℕ) (hn : 1 ≤ n) : A267985 n = (Nat.nth (fun k => k % 30 ∈ ({7, 13} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A267.A267985`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267985.P17339370882884402453

`a(n-2)+30` with `a(0)=7, a(1)=13`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A267985

/-- `a(n-2)+30` -/
def P17339370882884402453.Spec : Prop :=
  ∀ n, (P17339370882884402453.a n : ℤ) = A267985 (n + 1)

theorem P17339370882884402453.correct : P17339370882884402453.Spec := by
  intro n
  simp only [A267985, Nat.add_sub_cancel]

end A267985

/-! ## A267985.P8672399258793752328

`ogf((7+6x+17x^2)/(1-x-x^2+x^3))`
-/

namespace A267985.P8672399258793752328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 6, 17] [1, -1, -1, 1] n

end

end A267985.P8672399258793752328

namespace A267985

/-- `ogf((7+6x+17x^2)/(1-x-x^2+x^3))` -/
def P8672399258793752328.Spec : Prop :=
  ∀ n, P8672399258793752328.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P15008451965029180027

`(30*(n+1)-9*(-1)^(n+1)-25)/2`
-/

namespace A267985.P15008451965029180027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 * (n + 1) : ℤ) - 9 * (-1) ^ (n + 1) - 25 : ℚ) / 2

end

end A267985.P15008451965029180027

namespace A267985

/-- `(30*(n+1)-9*(-1)^(n+1)-25)/2` -/
def P15008451965029180027.Spec : Prop :=
  ∀ n, P15008451965029180027.a n = (A267985 (n + 1) : ℚ)

theorem P15008451965029180027.correct : P15008451965029180027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A267985, Nat.add_sub_cancel, A267985.P15008451965029180027.a, A267985.P17339370882884402453.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A267985, Nat.add_sub_cancel, A267985.P15008451965029180027.a, A267985.P17339370882884402453.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267985

/-! ## A267985.P12142133091224370106

`∑[30-a(n-1)]` with `a(0)=7, a(1)=6`
-/

namespace A267985.P12142133091224370106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267985.P12142133091224370106

namespace A267985

/-- `∑[30-a(n-1)]` -/
def P12142133091224370106.Spec : Prop :=
  ∀ n, P12142133091224370106.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P9737221725014337278

`6*(comp[(n²+n)%5+n-1]+1)+1`
-/

namespace A267985.P9737221725014337278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + n) % 5 : ℕ) : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A267985.P9737221725014337278

namespace A267985

/-- `6*(comp[(n²+n)%5+n-1]+1)+1` -/
def P9737221725014337278.Spec : Prop :=
  ∀ n, (P9737221725014337278.a n : ℤ) = A267985 (n + 1)

end A267985

/-! ## A267985.P7418603031422979791

`∑[A040135(n)]-5`
-/

namespace A267985.P7418603031422979791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A267985.P7418603031422979791

namespace A267985

/-- `∑[A040135(n)]-5` -/
def P7418603031422979791.Spec : Prop :=
  ∀ n, P7418603031422979791.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P6298215630326441580

`A267984(n+1)-10`
-/

namespace A267985.P6298215630326441580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) - 10

end

end A267985.P6298215630326441580

namespace A267985

/-- `A267984(n+1)-10` -/
def P6298215630326441580.Spec : Prop :=
  ∀ n, P6298215630326441580.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P8621177204822915634

`2*A146510(n+1)+5`
-/

namespace A267985.P8621177204822915634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146510 (n + 1) + 5

end

end A267985.P8621177204822915634

namespace A267985

/-- `2*A146510(n+1)+5` -/
def P8621177204822915634.Spec : Prop :=
  ∀ n, P8621177204822915634.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P15199785030884959889

`3*A090773(n+1)-5`
-/

namespace A267985.P15199785030884959889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090773 (n + 1) - 5

end

end A267985.P15199785030884959889

namespace A267985

/-- `3*A090773(n+1)-5` -/
def P15199785030884959889.Spec : Prop :=
  ∀ n, P15199785030884959889.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P185428866412721601

`A272100(n+1)-(n+5)`
-/

namespace A267985.P185428866412721601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - (n + 5 : ℤ)

end

end A267985.P185428866412721601

namespace A267985

/-- `A272100(n+1)-(n+5)` -/
def P185428866412721601.Spec : Prop :=
  ∀ n, P185428866412721601.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P14981779786535076723

`3*(A228137(n+1)-n)+4`
-/

namespace A267985.P14981779786535076723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A228137 (n + 1) - (n : ℤ)) + 4

end

end A267985.P14981779786535076723

namespace A267985

/-- `3*(A228137(n+1)-n)+4` -/
def P14981779786535076723.Spec : Prop :=
  ∀ n, P14981779786535076723.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P15313482601617212200

`12*(A028242(n)/2+n)+1`
-/

namespace A267985.P15313482601617212200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((A028242 n : ℚ) / 2 + (n : ℚ)) + 1

end

end A267985.P15313482601617212200

namespace A267985

/-- `12*(A028242(n)/2+n)+1` -/
def P15313482601617212200.Spec : Prop :=
  ∀ n, P15313482601617212200.a n = (A267985 (n + 1) : ℚ)

end A267985

/-! ## A267985.P8508771605230628934

`3*∑[2*A280193(n)²]+1`
-/

namespace A267985.P8508771605230628934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280193 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A267985.P8508771605230628934

namespace A267985

/-- `3*∑[2*A280193(n)²]+1` -/
def P8508771605230628934.Spec : Prop :=
  ∀ n, P8508771605230628934.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P2824774790629061802

`A164284(n+1)-A010691(n)`
-/

namespace A267985.P2824774790629061802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1) - A010691 n

end

end A267985.P2824774790629061802

namespace A267985

/-- `A164284(n+1)-A010691(n)` -/
def P2824774790629061802.Spec : Prop :=
  ∀ n, P2824774790629061802.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P13688127038642576139

`A248474(n+1)-A226294(n)`
-/

namespace A267985.P13688127038642576139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) - A226294 n

end

end A267985.P13688127038642576139

namespace A267985

/-- `A248474(n+1)-A226294(n)` -/
def P13688127038642576139.Spec : Prop :=
  ∀ n, P13688127038642576139.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P5921003090236326205

`∪[A082369(n+1), A128471(n)]`
-/

namespace A267985.P5921003090236326205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267985.P5921003090236326205

namespace A267985

/-- `∪[A082369(n+1), A128471(n)]` -/
def P5921003090236326205.Spec : Prop :=
  ∀ n, (P5921003090236326205.a n : ℤ) = A267985 (n + 1)

end A267985

/-! ## A267985.P9892649170137850234

`A067870(n+1)+A008592(A004526(n))`
-/

namespace A267985.P9892649170137850234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067870 (n + 1) + A008592 (A004526 n).toNat

end

end A267985.P9892649170137850234

namespace A267985

/-- `A067870(n+1)+A008592(A004526(n))` -/
def P9892649170137850234.Spec : Prop :=
  ∀ n, P9892649170137850234.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P12468849432790141460

`A248474(n+1)-A010711(n+1)`
-/

namespace A267985.P12468849432790141460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) - A010711 (n + 1)

end

end A267985.P12468849432790141460

namespace A267985

/-- `A248474(n+1)-A010711(n+1)` -/
def P12468849432790141460.Spec : Prop :=
  ∀ n, P12468849432790141460.a n = A267985 (n + 1)

end A267985

/-! ## A267985.P8795244028209916852

`2*∑[gcd(12, ∏{d}[n, #+2])]+5`
-/

namespace A267985.P8795244028209916852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 (∏ d ∈ Nat.divisors (f2 n), (d + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 5

end

end A267985.P8795244028209916852

namespace A267985

/-- `2*∑[gcd(12, ∏{d}[n, #+2])]+5` -/
def P8795244028209916852.Spec : Prop :=
  ∀ n, (P8795244028209916852.a n : ℤ) = A267985 (n + 1)

end A267985

/-! ## A267985.P11459783133130180606

`A296716(Δ[n²])`
-/

namespace A267985.P11459783133130180606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A267985.P11459783133130180606

namespace A267985

/-- `A296716(Δ[n²])` -/
def P11459783133130180606.Spec : Prop :=
  ∀ n, P11459783133130180606.a n = A267985 (n + 1)

end A267985

/-!
# A267986: Perfect powers of the form x^2 + y^2 + z^2 where x > y > z > 0.

The programs for A267986, there is no canonical definition to state claims against.
-/

/-! ## A267986.P7531809951491943442

`∩[A001597(n+1), A004432(n+1)]`
-/

namespace A267986.P7531809951491943442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267986.P7531809951491943442

/-! ## A267986.P8797701046593334273

`∩[A004432(n+1), A377702(n+1)]`
-/

namespace A267986.P8797701046593334273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267986.P8797701046593334273

/-! ## A267986.P3667722011994224694

`∩[A004432(n+1), abs(A157985(n+1))]`
-/

namespace A267986.P3667722011994224694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267986.P3667722011994224694

/-! ## A267986.P4970335995552443846

`∩[A004432(n+1), A075146(n+1)+A000040(n+1)]`
-/

namespace A267986.P4970335995552443846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075146 (n + 1) + A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267986.P4970335995552443846

/-! ## A267986.P7845946900788606781

`filter[A004432(n+1), A075802(#)]`
-/

namespace A267986.P7845946900788606781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A267986.P7845946900788606781

/-!
# A267987: a(n) = Catalan(n)^2*(4n + 4).

The programs for A267987, the canonical program `A267987.P16839972665861936629` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267987 has offset 0).

The definition of A267987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)²*(4*n+4)` (program `A267987.P16839972665861936629`, by `A267987.P16839972665861936629.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267987.P16839972665861936629

`A000108(n)²*(4*n+4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267987

/-- `A000108(n)²*(4*n+4)` -/
def P16839972665861936629.Spec : Prop :=
  ∀ n, P16839972665861936629.a n = A267987 n

theorem P16839972665861936629.correct : P16839972665861936629.Spec := by
  intro n
  simp only [A267987]

end A267987

/-! ## A267987.P17746718429519106831

`4*C(2*n, n)/(n+1)*C(2*n, n)`
-/

namespace A267987.P17746718429519106831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ))

end

end A267987.P17746718429519106831

namespace A267987

/-- `4*C(2*n, n)/(n+1)*C(2*n, n)` -/
def P17746718429519106831.Spec : Prop :=
  ∀ n, P17746718429519106831.a n = (A267987 n : ℚ)

end A267987

/-! ## A267987.P14050135367545602959

`(4-2/n)*(4-6/(n+1))*a(n-1)` with `a(0)=4`
-/

namespace A267987.P14050135367545602959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (4 - 2 / (n : ℚ)) * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A267987.P14050135367545602959

namespace A267987

/-- `(4-2/n)*(4-6/(n+1))*a(n-1)` -/
def P14050135367545602959.Spec : Prop :=
  ∀ n, P14050135367545602959.a n = (A267987 n : ℚ)

end A267987

/-! ## A267987.P17082664757371672905

`4*A000888(n)`
-/

namespace A267987.P17082664757371672905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000888 n

end

end A267987.P17082664757371672905

namespace A267987

/-- `4*A000888(n)` -/
def P17082664757371672905.Spec : Prop :=
  ∀ n, P17082664757371672905.a n = A267987 n

end A267987

/-! ## A267987.P14258175338719297509

`(n+1)*Δ[A106191(n)]²`
-/

namespace A267987.P14258175338719297509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A267987.P14258175338719297509

namespace A267987

/-- `(n+1)*Δ[A106191(n)]²` -/
def P14258175338719297509.Spec : Prop :=
  ∀ n, P14258175338719297509.a n = A267987 n

end A267987

/-! ## A267987.P11227968433222755823

`(n+1)*A002420(n+1)²`
-/

namespace A267987.P11227968433222755823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002420 (n + 1) ^ 2

end

end A267987.P11227968433222755823

namespace A267987

/-- `(n+1)*A002420(n+1)²` -/
def P11227968433222755823.Spec : Prop :=
  ∀ n, P11227968433222755823.a n = A267987 n

end A267987

/-! ## A267987.P13852531512549716429

`(n+1)*A068218(∑[n+1])²`
-/

namespace A267987.P13852531512549716429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068218 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267987.P13852531512549716429

namespace A267987

/-- `(n+1)*A068218(∑[n+1])²` -/
def P13852531512549716429.Spec : Prop :=
  ∀ n, P13852531512549716429.a n = A267987 n

end A267987

/-! ## A267987.P7741884412470940118

`(n+1)*A106190(∑[n+1])²`
-/

namespace A267987.P7741884412470940118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106190 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267987.P7741884412470940118

namespace A267987

/-- `(n+1)*A106190(∑[n+1])²` -/
def P7741884412470940118.Spec : Prop :=
  ∀ n, P7741884412470940118.a n = A267987 n

end A267987

/-!
# A267988: Number of n X 2 arrays containing 2 copies of 0..n-1 with row sums and column sums nondecreasing.

The programs for A267988, there is no canonical definition to state claims against.
-/

/-! ## A267988.P6098430685898472038

`A267990(∑[n+2])`
-/

namespace A267988.P6098430685898472038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267988.P6098430685898472038

/-! ## A267988.P4008766706941623529

`record[A267990(∑[A152271(n)])]`
-/

namespace A267988.P4008766706941623529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267988.P4008766706941623529

/-! ## A267988.P3801573543044341223

`record[A267990(∑[A158821(n)])]`
-/

namespace A267988.P3801573543044341223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267988.P3801573543044341223

/-!
# A267989: Number of nX3 arrays containing 3 copies of 0..n-1 with row sums and column sums nondecreasing.

The programs for A267989, there is no canonical definition to state claims against.
-/

/-! ## A267989.P8229088302134060151

`A267990(∑[n+3]+1)`
-/

namespace A267989.P8229088302134060151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267989.P8229088302134060151

/-! ## A267989.P7836896432772367397

`record[A267990(floor(A105208(n+5)/4))]`
-/

namespace A267989.P7836896432772367397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 ⌊(A105208 (n + 5) : ℚ) / 4⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267989.P7836896432772367397

/-!
# A267991: Number of 2Xn arrays containing n copies of 0..2-1 with row sums and column sums nondecreasing.

The programs for A267991, the canonical program `A267991.P17804240115584663066` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267991 has offset 1).

The definition of A267991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267991.P17804240115584663066

`a(n-2)+A226881(n+1)+1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267991

/-- `a(n-2)+A226881(n+1)+1` -/
def P17804240115584663066.Spec : Prop :=
  ∀ n, P17804240115584663066.a n = A267991 (n + 1)

theorem P17804240115584663066.correct : P17804240115584663066.Spec := by
  intro n
  simp only [A267991, Nat.add_sub_cancel]

end A267991

/-! ## A267991.P14679821372828373771

`∑[A027306(n+1)-a(n-1)]+1` with `a(0)=0`
-/

namespace A267991.P14679821372828373771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A027306 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267991.P14679821372828373771

namespace A267991

/-- `∑[A027306(n+1)-a(n-1)]+1` -/
def P14679821372828373771.Spec : Prop :=
  ∀ n, P14679821372828373771.a n = A267991 (n + 1)

end A267991

/-! ## A267991.P17438478437599537974

`Δ[∑[∑[A027306(n)]]-a(n-1)]` with `a(0)=1`
-/

namespace A267991.P17438478437599537974
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267991.P17438478437599537974

namespace A267991

/-- `Δ[∑[∑[A027306(n)]]-a(n-1)]` -/
def P17438478437599537974.Spec : Prop :=
  ∀ n, P17438478437599537974.a n = A267991 (n + 1)

end A267991

/-! ## A267991.P2879962051557684001

`∑[A116384(n+1)]+1`
-/

namespace A267991.P2879962051557684001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267991.P2879962051557684001

namespace A267991

/-- `∑[A116384(n+1)]+1` -/
def P2879962051557684001.Spec : Prop :=
  ∀ n, P2879962051557684001.a n = A267991 (n + 1)

end A267991

/-! ## A267991.P13420540495732480457

`∑[A116384(A028242(A004277(n)))]`
-/

namespace A267991.P13420540495732480457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116384 (A028242 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267991.P13420540495732480457

namespace A267991

/-- `∑[A116384(A028242(A004277(n)))]` -/
def P13420540495732480457.Spec : Prop :=
  ∀ n, P13420540495732480457.a n = A267991 (n + 1)

end A267991

/-!
# A267992: Number of 3Xn arrays containing n copies of 0..3-1 with row sums and column sums nondecreasing.

The programs for A267992, there is no canonical definition to state claims against.
-/

/-! ## A267992.P5878913456843522541

`A267990(∑[n+2]+4)`
-/

namespace A267992.P5878913456843522541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267992.P5878913456843522541

/-! ## A267992.P2441230559011038529

`lcm(1-and(2, n), A267990(A167614(n+1)))`
-/

namespace A267992.P2441230559011038529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A267990 (A167614 (n + 1)).toNat)

end

end A267992.P2441230559011038529

/-! ## A267992.P2004335357569667062

`A267990(A167614(n+1))+A054899(n)`
-/

namespace A267992.P2004335357569667062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (A167614 (n + 1)).toNat + A054899 n

end

end A267992.P2004335357569667062

/-!
# A267993: Number of 4Xn arrays containing n copies of 0..4-1 with row sums and column sums nondecreasing.

The programs for A267993, there is no canonical definition to state claims against.
-/

/-! ## A267993.P13335391639829258815

`A267990(∑[n+3]+7)`
-/

namespace A267993.P13335391639829258815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267993.P13335391639829258815

/-! ## A267993.P4337738665445024432

`record[A267990(A293215(2*n+1))]`
-/

namespace A267993.P4337738665445024432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (A293215 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267993.P4337738665445024432

/-!
# A267994: Number of n X 3 0..3 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267994, there is no canonical definition to state claims against.
-/

/-! ## A267994.P2511926421101789579

`A267975(n+1)^3`
-/

namespace A267994.P2511926421101789579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267975 (n + 1) ^ 3

end

end A267994.P2511926421101789579

/-! ## A267994.P6429184929267944542

`sqrt(A267976(n+1))^3`
-/

namespace A267994.P6429184929267944542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267976 (n + 1) : ℝ) ^ 3

end

end A267994.P6429184929267944542

/-! ## A267994.P17444172468790623879

`A269435(A055999(n)+4)^3`
-/

namespace A267994.P17444172468790623879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A055999 n + 4).toNat ^ 3

end

end A267994.P17444172468790623879

/-! ## A267994.P8288047466613374040

`A267975(n+1)*A267976(n+1)`
-/

namespace A267994.P8288047466613374040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267975 (n + 1) * A267976 (n + 1)

end

end A267994.P8288047466613374040

/-! ## A267994.P13166263616382170053

`A267974(∑[n]+1)^3`
-/

namespace A267994.P13166263616382170053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 3

end

end A267994.P13166263616382170053

/-!
# A267995: Number of n X 4 0..3 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267995, there is no canonical definition to state claims against.
-/

/-! ## A267995.P11864519472983732433

`A267997(A167614(n+2)+1)`
-/

namespace A267995.P11864519472983732433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (A167614 (n + 2) + 1).toNat

end

end A267995.P11864519472983732433

/-!
# A267996: Number of n X 5 0..3 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267996, there is no canonical definition to state claims against.
-/

/-! ## A267996.P17291439739765230555

`A267997(A374005(n+1))`
-/

namespace A267996.P17291439739765230555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (A374005 (n + 1)).toNat

end

end A267996.P17291439739765230555

/-! ## A267996.P8447331161162070230

`A267997(A056000(n)+15)`
-/

namespace A267996.P8447331161162070230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (A056000 n + 15).toNat

end

end A267996.P8447331161162070230

/-! ## A267996.P6460416724278057488

`A267997(eq[6, A131818(n+1)])`
-/

namespace A267996.P6460416724278057488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267996.P6460416724278057488

/-!
# A267997: T(n,k) = number of n X k 0..3 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267997, there is no canonical definition to state claims against.
-/

/-! ## A267997.P14661222506853390691

`A267974((gcd(n, n%2)+1)^∑{e}[n+1, #])`
-/

namespace A267997.P14661222506853390691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 ((Nat.gcd n (n % 2) + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A267997.P14661222506853390691

/-! ## A267997.P15722017394839263929

`A267974(n+1)+A184946(A337369(n))`
-/

namespace A267997.P15722017394839263929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267974 (n + 1) + A184946 (A337369 n).toNat

end

end A267997.P15722017394839263929

/-! ## A267997.P17101077330226447891

`A223585(n+1)-A167688(A306895(n))`
-/

namespace A267997.P17101077330226447891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223585 (n + 1) - A167688 (A306895 n).toNat

end

end A267997.P17101077330226447891

/-! ## A267997.P785862854158311737

`A229105(n+1)-A167688(A306895(n))`
-/

namespace A267997.P785862854158311737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (n + 1) - A167688 (A306895 n).toNat

end

end A267997.P785862854158311737

/-!
# A267998: Table array: T(n,k) is Ann_k(2*n+k,k) where Ann_k(n,m) is the number of annular non-crossing matchings of type (n, m) with precisely k cross-cuts.

The programs for A267998, there is no canonical definition to state claims against.
-/

/-! ## A267998.P7376227663253393357

`A047996(A245300(n))`
-/

namespace A267998.P7376227663253393357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A245300 n).toNat

end

end A267998.P7376227663253393357

/-! ## A267998.P15371293423695993942

`A047996(floor(A214661(n+1)/2))`
-/

namespace A267998.P15371293423695993942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A267998.P15371293423695993942

/-! ## A267998.P13064993335604779417

`A047996((A214661(n+1)-1)/2)`
-/

namespace A267998.P13064993335604779417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A267998.P13064993335604779417

/-! ## A267998.P6985993744261992589

`A047996(A194012(2*n+1)-A002260(n+1))`
-/

namespace A267998.P6985993744261992589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A194012 (2 * n + 1) - A002260 (n + 1)).toNat

end

end A267998.P6985993744261992589

/-! ## A267998.P18213341367483510057

`A047996(A194012(2*n+1)-A181118(2*(n+1)))`
-/

namespace A267998.P18213341367483510057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A194012 (2 * n + 1) - A181118 (2 * (n + 1))).toNat

end

end A267998.P18213341367483510057

/-!
# A267999: Numbers n > 1 such that gcd(n, 2^n - 2) = 1.

The programs for A267999, the canonical program `A267999.P17200874336229400487` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267999 has offset 1).

The definition of A267999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267999.P17200874336229400487

`eq[1, A214606(n+2)]+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A267999

/-- `eq[1, A214606(n+2)]+2` -/
def P17200874336229400487.Spec : Prop :=
  ∀ n, (P17200874336229400487.a n : ℤ) = A267999 (n + 1)

theorem P17200874336229400487.correct : P17200874336229400487.Spec := by
  intro n
  simp only [A267999, Nat.add_sub_cancel]

end A267999

/-! ## A267999.P16409988205875398447

`record[A159353(A121707(n+1))]`
-/

namespace A267999.P16409988205875398447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (A121707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267999.P16409988205875398447

namespace A267999

/-- `record[A159353(A121707(n+1))]` -/
def P16409988205875398447.Spec : Prop :=
  ∀ n, P16409988205875398447.a n = A267999 (n + 1)

end A267999

/-! ## A267999.P8613580254084802525

`record[A159353(A038509(n+2))]`
-/

namespace A267999.P8613580254084802525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (A038509 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267999.P8613580254084802525

namespace A267999

/-- `record[A159353(A038509(n+2))]` -/
def P8613580254084802525.Spec : Prop :=
  ∀ n, P8613580254084802525.a n = A267999 (n + 1)

end A267999

/-! ## A267999.P2472817003357214264

`record[A159353(A005408(n)+34)]`
-/

namespace A267999.P2472817003357214264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (A005408 n + 34).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267999.P2472817003357214264

namespace A267999

/-- `record[A159353(A005408(n)+34)]` -/
def P2472817003357214264.Spec : Prop :=
  ∀ n, P2472817003357214264.a n = A267999 (n + 1)

end A267999

/-! ## A267999.P10827754564419088297

`lt[A028310(n), A159353(n+1)]+1`
-/

namespace A267999.P10827754564419088297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A267999.P10827754564419088297

namespace A267999

/-- `lt[A028310(n), A159353(n+1)]+1` -/
def P10827754564419088297.Spec : Prop :=
  ∀ n, (P10827754564419088297.a n : ℤ) = A267999 (n + 1)

end A267999

/-! ## A267999.P2471066079444744201

`lt[A214606(n+1), A020639(n+1)]+1`
-/

namespace A267999.P2471066079444744201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A267999.P2471066079444744201

namespace A267999

/-- `lt[A214606(n+1), A020639(n+1)]+1` -/
def P2471066079444744201.Spec : Prop :=
  ∀ n, (P2471066079444744201.a n : ℤ) = A267999 (n + 1)

end A267999

/-! ## A267999.P8793791492233395069

`eq[A159353(A093178(n)), A254667(n)]`
-/

namespace A267999.P8793791492233395069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267999.P8793791492233395069

namespace A267999

/-- `eq[A159353(A093178(n)), A254667(n)]` -/
def P8793791492233395069.Spec : Prop :=
  ∀ n, (P8793791492233395069.a n : ℤ) = A267999 (n + 1)

end A267999

/-! ## A267999.P1780471141962315444

`lt[A003415(n)+1, A159353(A028310(n))]`
-/

namespace A267999.P1780471141962315444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267999.P1780471141962315444

namespace A267999

/-- `lt[A003415(n)+1, A159353(A028310(n))]` -/
def P1780471141962315444.Spec : Prop :=
  ∀ n, (P1780471141962315444.a n : ℤ) = A267999 (n + 1)

end A267999

/-! ## A267999.P6272577806524359427

`record[A159353(A146077(n+2))]`
-/

namespace A267999.P6272577806524359427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (A146077 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267999.P6272577806524359427

namespace A267999

/-- `record[A159353(A146077(n+2))]` -/
def P6272577806524359427.Spec : Prop :=
  ∀ n, P6272577806524359427.a n = A267999 (n + 1)

end A267999

/-! ## A267999.P7100377897463593451

`eq[1, A214606(A233583(n+1))]`
-/

namespace A267999.P7100377897463593451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267999.P7100377897463593451

namespace A267999

/-- `eq[1, A214606(A233583(n+1))]` -/
def P7100377897463593451.Spec : Prop :=
  ∀ n, (P7100377897463593451.a n : ℤ) = A267999 (n + 1)

end A267999

