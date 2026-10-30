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
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A100100: Triangle T(n,k) = binomial(2*n-k-1, n-k) read by rows.

The programs for A100100, the canonical program `A100100.P334722086453035183` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100100 has offset 0).

The definition of A100100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100100.P334722086453035183

`A092392(n)-A092392(n+1)%A092392(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100100

/-- `A092392(n)-A092392(n+1)%A092392(n)` -/
def P334722086453035183.Spec : Prop :=
  ∀ n, P334722086453035183.a n = A100100 n

theorem P334722086453035183.correct : P334722086453035183.Spec := by
  intro n
  simp only [A100100]

end A100100

/-! ## A100100.P1564091248123669739

`A059481(A061579(n))`
-/

namespace A100100.P1564091248123669739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A061579 n).toNat

end

end A100100.P1564091248123669739

namespace A100100

/-- `A059481(A061579(n))` -/
def P1564091248123669739.Spec : Prop :=
  ∀ n, P1564091248123669739.a n = A100100 n

end A100100

/-! ## A100100.P18137930281155072728

`A059481(A038722(n+1)-1)`
-/

namespace A100100.P18137930281155072728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A038722 (n + 1) - 1).toNat

end

end A100100.P18137930281155072728

namespace A100100

/-- `A059481(A038722(n+1)-1)` -/
def P18137930281155072728.Spec : Prop :=
  ∀ n, P18137930281155072728.a n = A100100 n

end A100100

/-! ## A100100.P14598477193110062963

`A059481(A038722(n+2))`
-/

namespace A100100.P14598477193110062963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A038722 (n + 2)).toNat

end

end A100100.P14598477193110062963

namespace A100100

/-- `A059481(A038722(n+2))` -/
def P14598477193110062963.Spec : Prop :=
  ∀ n, P14598477193110062963.a n = A100100 n

end A100100

/-! ## A100100.P2727565253371653300

`A349727(A014132(n+1))`
-/

namespace A100100.P2727565253371653300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 (A014132 (n + 1)).toNat

end

end A100100.P2727565253371653300

namespace A100100

/-- `A349727(A014132(n+1))` -/
def P2727565253371653300.Spec : Prop :=
  ∀ n, P2727565253371653300.a n = A100100 n

end A100100

/-! ## A100100.P9007205765711637747

`C(A294317(n+1), A025581(n))`
-/

namespace A100100.P9007205765711637747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 (n + 1)).toNat (A025581 n).toNat

end

end A100100.P9007205765711637747

namespace A100100

/-- `C(A294317(n+1), A025581(n))` -/
def P9007205765711637747.Spec : Prop :=
  ∀ n, (P9007205765711637747.a n : ℤ) = A100100 n

end A100100

/-! ## A100100.P17095176330327390652

`A104684(n)/A029653(n)`
-/

namespace A100100.P17095176330327390652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A029653 n : ℚ)

end

end A100100.P17095176330327390652

namespace A100100

/-- `A104684(n)/A029653(n)` -/
def P17095176330327390652.Spec : Prop :=
  ∀ n, P17095176330327390652.a n = (A100100 n : ℚ)

end A100100

/-! ## A100100.P8926180491019849029

`A258758(n)/A381883(n)`
-/

namespace A100100.P8926180491019849029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258758 n : ℚ) / (A381883 n : ℚ)

end

end A100100.P8926180491019849029

namespace A100100

/-- `A258758(n)/A381883(n)` -/
def P8926180491019849029.Spec : Prop :=
  ∀ n, P8926180491019849029.a n = (A100100 n : ℚ)

end A100100

/-! ## A100100.P2530729949687212121

`C(A025581(A292564(n)+1), A025581(n))`
-/

namespace A100100.P2530729949687212121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 (A292564 n + 1).toNat).toNat (A025581 n).toNat

end

end A100100.P2530729949687212121

namespace A100100

/-- `C(A025581(A292564(n)+1), A025581(n))` -/
def P2530729949687212121.Spec : Prop :=
  ∀ n, (P2530729949687212121.a n : ℤ) = A100100 n

end A100100

/-! ## A100100.P4464489189594266820

`A107249(A185869(n+1))`
-/

namespace A100100.P4464489189594266820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107249 (A185869 (n + 1)).toNat

end

end A100100.P4464489189594266820

namespace A100100

/-- `A107249(A185869(n+1))` -/
def P4464489189594266820.Spec : Prop :=
  ∀ n, P4464489189594266820.a n = A100100 n

end A100100

/-! ## A100100.P16280816741939970765

`A191528(A061885(n))`
-/

namespace A100100.P16280816741939970765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191528 (A061885 n).toNat

end

end A100100.P16280816741939970765

namespace A100100

/-- `A191528(A061885(n))` -/
def P16280816741939970765.Spec : Prop :=
  ∀ n, P16280816741939970765.a n = A100100 n

end A100100

/-!
# A100101: Bell(2n)*(2n-1)!!, where Bell are the Bell numbers A000110.

The programs for A100101, the canonical program `A100101.P11529174780461504919` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100101 has offset 0).

The definition of A100101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100101.P11529174780461504919

`A001147(n)*A000110(2*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100101

/-- `A001147(n)*A000110(2*n)` -/
def P11529174780461504919.Spec : Prop :=
  ∀ n, P11529174780461504919.a n = A100101 n

theorem P11529174780461504919.correct : P11529174780461504919.Spec := by
  intro n
  simp only [A100101]

end A100101

/-! ## A100101.P7882680882346791638

`A000110(2*n)*(2*n)!/(2^n*n!)`
-/

namespace A100101.P7882680882346791638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 (2 * n) * (Nat.factorial (2 * n) : ℤ) : ℚ) / (2 ^ n * Nat.factorial n : ℚ)

end

end A100101.P7882680882346791638

namespace A100101

/-- `A000110(2*n)*(2*n)!/(2^n*n!)` -/
def P7882680882346791638.Spec : Prop :=
  ∀ n, P7882680882346791638.a n = (A100101 n : ℚ)

end A100101

/-! ## A100101.P15941903937253121228

`record[A000110(n)*A055634(n)]`
-/

namespace A100101.P15941903937253121228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100101.P15941903937253121228

namespace A100101

/-- `record[A000110(n)*A055634(n)]` -/
def P15941903937253121228.Spec : Prop :=
  ∀ n, P15941903937253121228.a n = A100101 n

end A100101

/-! ## A100101.P17644436383571769449

`record[A000110(n)*A123023(n)]`
-/

namespace A100101.P17644436383571769449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A123023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100101.P17644436383571769449

namespace A100101

/-- `record[A000110(n)*A123023(n)]` -/
def P17644436383571769449.Spec : Prop :=
  ∀ n, P17644436383571769449.a n = A100101 n

end A100101

/-! ## A100101.P3893723653048700689

`A000110(2*n)*A001147(n)`
-/

namespace A100101.P3893723653048700689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * n) * A001147 n

end

end A100101.P3893723653048700689

namespace A100101

/-- `A000110(2*n)*A001147(n)` -/
def P3893723653048700689.Spec : Prop :=
  ∀ n, P3893723653048700689.a n = A100101 n

theorem P3893723653048700689.correct : P3893723653048700689.Spec := by
  intro n
  simp only [A100101, Nat.add_sub_cancel, A100101.P3893723653048700689.a, A100101.P11529174780461504919.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100101

/-!
# A100102: a(n) = 2^(2*n)-(2*n-1).

The programs for A100102, the canonical program `A100102.P10192600483472884001` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100102 has offset 0).

The definition of A100102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n)-(2*n-1)` (program `A100102.P10192600483472884001`, by `A100102.P10192600483472884001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100102.P10192600483472884001

`2^(2*n)-(2*n-1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100102

/-- `2^(2*n)-(2*n-1)` -/
def P10192600483472884001.Spec : Prop :=
  ∀ n, P10192600483472884001.a n = A100102 n

theorem P10192600483472884001.correct : P10192600483472884001.Spec := by
  intro n
  simp only [A100102]

end A100102

/-! ## A100102.P12596146750729984724

`record[(-2)^n+1-n]`
-/

namespace A100102.P12596146750729984724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100102.P12596146750729984724

namespace A100102

/-- `record[(-2)^n+1-n]` -/
def P12596146750729984724.Spec : Prop :=
  ∀ n, P12596146750729984724.a n = A100102 n

end A100102

/-! ## A100102.P17713802948493828035

`∑[4*a(n-1)+6]` with `a(0)=2, a(1)=1`
-/

namespace A100102.P17713802948493828035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  4 * f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100102.P17713802948493828035

namespace A100102

/-- `∑[4*a(n-1)+6]` -/
def P17713802948493828035.Spec : Prop :=
  ∀ n, (P17713802948493828035.a n : ℤ) = A100102 n

end A100102

/-! ## A100102.P1760791902208566534

`∑[or(6, 4*a(n-1))]` with `a(0)=2, a(1)=1, a(2)=10`
-/

namespace A100102.P1760791902208566534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 10] fun n f1 =>
  Nat.lor 6 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100102.P1760791902208566534

namespace A100102

/-- `∑[or(6, 4*a(n-1))]` -/
def P1760791902208566534.Spec : Prop :=
  ∀ n, (P1760791902208566534.a n : ℤ) = A100102 n

end A100102

/-! ## A100102.P2170569435135166677

`abs(or(4^n-n, char[1])+1-n)`
-/

namespace A100102.P2170569435135166677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((4 ^ n : ℤ) - (n : ℤ)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1 - (n : ℤ)|

end

end A100102.P2170569435135166677

namespace A100102

/-- `abs(or(4^n-n, char[1])+1-n)` -/
def P2170569435135166677.Spec : Prop :=
  ∀ n, P2170569435135166677.a n = A100102 n

end A100102

/-! ## A100102.P14921853222992266649

`abs(2*n-A052539(n))`
-/

namespace A100102.P14921853222992266649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A052539 n|

end

end A100102.P14921853222992266649

namespace A100102

/-- `abs(2*n-A052539(n))` -/
def P14921853222992266649.Spec : Prop :=
  ∀ n, P14921853222992266649.a n = A100102 n

end A100102

/-! ## A100102.P8822762438570350097

`abs(record[A213173(n)+1-n])`
-/

namespace A100102.P8822762438570350097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A100102.P8822762438570350097

namespace A100102

/-- `abs(record[A213173(n)+1-n])` -/
def P8822762438570350097.Spec : Prop :=
  ∀ n, P8822762438570350097.a n = A100102 n

end A100102

/-! ## A100102.P10440535157557136368

`ceil(acot(n))*A132045(2*n)`
-/

namespace A100102.P10440535157557136368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A132045 (2 * n)

end

end A100102.P10440535157557136368

namespace A100102

/-- `ceil(acot(n))*A132045(2*n)` -/
def P10440535157557136368.Spec : Prop :=
  ∀ n, P10440535157557136368.a n = A100102 n

end A100102

/-! ## A100102.P16192544080660175918

`abs(2*n-1-A000302(n))`
-/

namespace A100102.P16192544080660175918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 1 - A000302 n|

end

end A100102.P16192544080660175918

namespace A100102

/-- `abs(2*n-1-A000302(n))` -/
def P16192544080660175918.Spec : Prop :=
  ∀ n, P16192544080660175918.a n = A100102 n

end A100102

/-! ## A100102.P13711189763064682425

`abs(2*n-A000051(2*n))`
-/

namespace A100102.P13711189763064682425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A000051 (2 * n)|

end

end A100102.P13711189763064682425

namespace A100102

/-- `abs(2*n-A000051(2*n))` -/
def P13711189763064682425.Spec : Prop :=
  ∀ n, P13711189763064682425.a n = A100102 n

end A100102

/-! ## A100102.P4471396522452034241

`abs(A034008(n+2)²-(2*n-1))`
-/

namespace A100102.P4471396522452034241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034008 (n + 2) ^ 2 - ((2 * n : ℤ) - 1)|

end

end A100102.P4471396522452034241

namespace A100102

/-- `abs(A034008(n+2)²-(2*n-1))` -/
def P4471396522452034241.Spec : Prop :=
  ∀ n, P4471396522452034241.a n = A100102 n

end A100102

/-! ## A100102.P15968412775235937589

`abs(A034008(2*(n+1))-(2*n-1))`
-/

namespace A100102.P15968412775235937589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034008 (2 * (n + 1)) - ((2 * n : ℤ) - 1)|

end

end A100102.P15968412775235937589

namespace A100102

/-- `abs(A034008(2*(n+1))-(2*n-1))` -/
def P15968412775235937589.Spec : Prop :=
  ∀ n, P15968412775235937589.a n = A100102 n

end A100102

/-! ## A100102.P1858049422443756832

`A132045(A004277(n))`
-/

namespace A100102.P1858049422443756832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (A004277 n).toNat

end

end A100102.P1858049422443756832

namespace A100102

/-- `A132045(A004277(n))` -/
def P1858049422443756832.Spec : Prop :=
  ∀ n, P1858049422443756832.a n = A100102 n

end A100102

/-! ## A100102.P6908992671817513304

`A132045(A004275(n+1))`
-/

namespace A100102.P6908992671817513304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (A004275 (n + 1)).toNat

end

end A100102.P6908992671817513304

namespace A100102

/-- `A132045(A004275(n+1))` -/
def P6908992671817513304.Spec : Prop :=
  ∀ n, P6908992671817513304.a n = A100102 n

end A100102

/-! ## A100102.P12231033999690274993

`A132045(A000007(n)+2*n)`
-/

namespace A100102.P12231033999690274993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (A000007 n + (2 * n : ℤ)).toNat

end

end A100102.P12231033999690274993

namespace A100102

/-- `A132045(A000007(n)+2*n)` -/
def P12231033999690274993.Spec : Prop :=
  ∀ n, P12231033999690274993.a n = A100102 n

end A100102

/-! ## A100102.P18067852203698931152

`A132045(xor(2*n, A000007(n)))`
-/

namespace A100102.P18067852203698931152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (Int.xor (2 * n : ℤ) (A000007 n)).toNat

end

end A100102.P18067852203698931152

namespace A100102

/-- `A132045(xor(2*n, A000007(n)))` -/
def P18067852203698931152.Spec : Prop :=
  ∀ n, P18067852203698931152.a n = A100102 n

end A100102

/-! ## A100102.P12216184052038757137

`A027642(2*n+1)*A132045(2*n)`
-/

namespace A100102.P12216184052038757137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 1) * A132045 (2 * n)

end

end A100102.P12216184052038757137

namespace A100102

/-- `A027642(2*n+1)*A132045(2*n)` -/
def P12216184052038757137.Spec : Prop :=
  ∀ n, P12216184052038757137.a n = A100102 n

end A100102

/-! ## A100102.P1536109423197478002

`(A052548(2*n+1)-4*n)/2`
-/

namespace A100102.P1536109423197478002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 (2 * n + 1) - (4 * n : ℤ) : ℚ) / 2

end

end A100102.P1536109423197478002

namespace A100102

/-- `(A052548(2*n+1)-4*n)/2` -/
def P1536109423197478002.Spec : Prop :=
  ∀ n, P1536109423197478002.a n = (A100102 n : ℚ)

theorem P1536109423197478002.correct : P1536109423197478002.Spec := by
  intro n
  simp only [A100102, Nat.add_sub_cancel, A100102.P1536109423197478002.a, A100102.P10192600483472884001.a, A052548, A052548.P18180923888402085992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100102

/-! ## A100102.P5248059952692605267

`C(A000325(2*n)+1, A000325(2*n))`
-/

namespace A100102.P5248059952692605267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000325 (2 * n) + 1).toNat (A000325 (2 * n)).toNat

end

end A100102.P5248059952692605267

namespace A100102

/-- `C(A000325(2*n)+1, A000325(2*n))` -/
def P5248059952692605267.Spec : Prop :=
  ∀ n, (P5248059952692605267.a n : ℤ) = A100102 n

end A100102

/-! ## A100102.P4942842757890485028

`(A239229(2*n)+2*A171449(n)²)/2`
-/

namespace A100102.P4942842757890485028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239229 (2 * n) + 2 * A171449 n ^ 2 : ℚ) / 2

end

end A100102.P4942842757890485028

namespace A100102

/-- `(A239229(2*n)+2*A171449(n)²)/2` -/
def P4942842757890485028.Spec : Prop :=
  ∀ n, P4942842757890485028.a n = (A100102 n : ℚ)

end A100102

/-!
# A100103: a(n) = 2^(2*n) - 2*n.

The programs for A100103, the canonical program `A100103.P11636979899544108745` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100103 has offset 0).

The definition of A100103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n)-2*n` (program `A100103.P11636979899544108745`, by `A100103.P11636979899544108745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100103.P11636979899544108745

`2^(2*n)-2*n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100103

/-- `2^(2*n)-2*n` -/
def P11636979899544108745.Spec : Prop :=
  ∀ n, P11636979899544108745.a n = A100103 n

theorem P11636979899544108745.correct : P11636979899544108745.Spec := by
  intro n
  simp only [A100103]

end A100103

/-! ## A100103.P17214019828635279551

`ogf((1-4x+9x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A100103.P17214019828635279551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 9] [1, -6, 9, -4] n

end

end A100103.P17214019828635279551

namespace A100103

/-- `ogf((1-4x+9x^2)/(1-6x+9x^2-4x^3))` -/
def P17214019828635279551.Spec : Prop :=
  ∀ n, P17214019828635279551.a n = A100103 n

end A100103

/-! ## A100103.P1938787612165937297

`record[(-2)^n-n]`
-/

namespace A100103.P1938787612165937297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100103.P1938787612165937297

namespace A100103

/-- `record[(-2)^n-n]` -/
def P1938787612165937297.Spec : Prop :=
  ∀ n, P1938787612165937297.a n = A100103 n

end A100103

/-! ## A100103.P5298748990532745979

`abs(or(2*n, -4^n))`
-/

namespace A100103.P5298748990532745979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(4 ^ n : ℤ))|

end

end A100103.P5298748990532745979

namespace A100103

/-- `abs(or(2*n, -4^n))` -/
def P5298748990532745979.Spec : Prop :=
  ∀ n, P5298748990532745979.a n = A100103 n

end A100103

/-! ## A100103.P12172939593906159800

`-or(2*n, -4^n)`
-/

namespace A100103.P12172939593906159800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(4 ^ n : ℤ))

end

end A100103.P12172939593906159800

namespace A100103

/-- `-or(2*n, -4^n)` -/
def P12172939593906159800.Spec : Prop :=
  ∀ n, P12172939593906159800.a n = A100103 n

end A100103

/-! ## A100103.P6575236097327650210

`abs(xor(2*n, -4^n))`
-/

namespace A100103.P6575236097327650210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * n : ℤ) (-(4 ^ n : ℤ))|

end

end A100103.P6575236097327650210

namespace A100103

/-- `abs(xor(2*n, -4^n))` -/
def P6575236097327650210.Spec : Prop :=
  ∀ n, P6575236097327650210.a n = A100103 n

end A100103

/-! ## A100103.P12035500021491094491

`-xor(2*n, -4^n)`
-/

namespace A100103.P12035500021491094491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (2 * n : ℤ) (-(4 ^ n : ℤ))

end

end A100103.P12035500021491094491

namespace A100103

/-- `-xor(2*n, -4^n)` -/
def P12035500021491094491.Spec : Prop :=
  ∀ n, P12035500021491094491.a n = A100103 n

end A100103

/-! ## A100103.P1603207476526865773

`∑[ogf((1-4x+9x^2)/(1-5x+4x^2))]`
-/

namespace A100103.P1603207476526865773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 9] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100103.P1603207476526865773

namespace A100103

/-- `∑[ogf((1-4x+9x^2)/(1-5x+4x^2))]` -/
def P1603207476526865773.Spec : Prop :=
  ∀ n, P1603207476526865773.a n = A100103 n

end A100103

/-! ## A100103.P7371366371231701013

`∑[4*a(n-1)+6]` with `a(0)=1, a(1)=1`
-/

namespace A100103.P7371366371231701013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100103.P7371366371231701013

namespace A100103

/-- `∑[4*a(n-1)+6]` -/
def P7371366371231701013.Spec : Prop :=
  ∀ n, (P7371366371231701013.a n : ℤ) = A100103 n

end A100103

/-! ## A100103.P5668556967038503664

`∑[∑[4*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=9`
-/

namespace A100103.P5668556967038503664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 9] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100103.P5668556967038503664

namespace A100103

/-- `∑[∑[4*a(n-1)]]` -/
def P5668556967038503664.Spec : Prop :=
  ∀ n, (P5668556967038503664.a n : ℤ) = A100103 n

end A100103

/-! ## A100103.P15189034725637704103

`2*(2*(a(n-1)-2+n)+n)` with `a(0)=1`
-/

namespace A100103.P15189034725637704103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * (a (n - 1) - 2 + (n : ℤ)) + (n : ℤ))

end

end A100103.P15189034725637704103

namespace A100103

/-- `2*(2*(a(n-1)-2+n)+n)` -/
def P15189034725637704103.Spec : Prop :=
  ∀ n, P15189034725637704103.a n = A100103 n

theorem P15189034725637704103.correct : P15189034725637704103.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100103, Nat.add_sub_cancel, A100103.P15189034725637704103.a, A100103.P11636979899544108745.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100103, Nat.add_sub_cancel, A100103.P15189034725637704103.a, A100103.P11636979899544108745.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100103

/-! ## A100103.P18029350002754072095

`2*(n-2*(2-a(n-1)-n))` with `a(0)=1`
-/

namespace A100103.P18029350002754072095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - 2 * (2 - a (n - 1) - (n : ℤ)))

end

end A100103.P18029350002754072095

namespace A100103

/-- `2*(n-2*(2-a(n-1)-n))` -/
def P18029350002754072095.Spec : Prop :=
  ∀ n, P18029350002754072095.a n = A100103 n

theorem P18029350002754072095.correct : P18029350002754072095.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100103, Nat.add_sub_cancel, A100103.P18029350002754072095.a, A100103.P11636979899544108745.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100103, Nat.add_sub_cancel, A100103.P18029350002754072095.a, A100103.P11636979899544108745.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100103

/-! ## A100103.P480584237533900776

`A000325(2*n)`
-/

namespace A100103.P480584237533900776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (2 * n)

end

end A100103.P480584237533900776

namespace A100103

/-- `A000325(2*n)` -/
def P480584237533900776.Spec : Prop :=
  ∀ n, P480584237533900776.a n = A100103 n

theorem P480584237533900776.correct : P480584237533900776.Spec := by
  intro n
  simp only [A100103, Nat.add_sub_cancel, A100103.P480584237533900776.a, A100103.P11636979899544108745.a, A000325, A000325.P17729744711211405807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100103

/-! ## A100103.P8279442025558486565

`∑[abs(2-A002001(n))]`
-/

namespace A100103.P8279442025558486565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A002001 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100103.P8279442025558486565

namespace A100103

/-- `∑[abs(2-A002001(n))]` -/
def P8279442025558486565.Spec : Prop :=
  ∀ n, P8279442025558486565.a n = A100103 n

end A100103

/-! ## A100103.P1809701554188246852

`abs(2*n-A000302(n))`
-/

namespace A100103.P1809701554188246852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A000302 n|

end

end A100103.P1809701554188246852

namespace A100103

/-- `abs(2*n-A000302(n))` -/
def P1809701554188246852.Spec : Prop :=
  ∀ n, P1809701554188246852.a n = A100103 n

end A100103

/-! ## A100103.P7657789369585052039

`abs(A000079(n)²-2*n)`
-/

namespace A100103.P7657789369585052039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 - (2 * n : ℤ)|

end

end A100103.P7657789369585052039

namespace A100103

/-- `abs(A000079(n)²-2*n)` -/
def P7657789369585052039.Spec : Prop :=
  ∀ n, P7657789369585052039.a n = A100103 n

end A100103

/-! ## A100103.P12626782612790510506

`A147678(A131098(n+1))`
-/

namespace A100103.P12626782612790510506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147678 (A131098 (n + 1)).toNat

end

end A100103.P12626782612790510506

namespace A100103

/-- `A147678(A131098(n+1))` -/
def P12626782612790510506.Spec : Prop :=
  ∀ n, P12626782612790510506.a n = A100103 n

end A100103

/-! ## A100103.P758787737328456999

`xor(A005803(n), A020522(n))`
-/

namespace A100103.P758787737328456999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005803 n) (A020522 n)

end

end A100103.P758787737328456999

namespace A100103

/-- `xor(A005803(n), A020522(n))` -/
def P758787737328456999.Spec : Prop :=
  ∀ n, P758787737328456999.a n = A100103 n

end A100103

/-! ## A100103.P11314772158681886180

`xor(A004273(n), A103454(n))`
-/

namespace A100103.P11314772158681886180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004273 n) (A103454 n)

end

end A100103.P11314772158681886180

namespace A100103

/-- `xor(A004273(n), A103454(n))` -/
def P11314772158681886180.Spec : Prop :=
  ∀ n, P11314772158681886180.a n = A100103 n

end A100103

/-! ## A100103.P6703786270852105105

`xor(A132732(n), A211012(n))`
-/

namespace A100103.P6703786270852105105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132732 n) (A211012 n)

end

end A100103.P6703786270852105105

namespace A100103

/-- `xor(A132732(n), A211012(n))` -/
def P6703786270852105105.Spec : Prop :=
  ∀ n, P6703786270852105105.a n = A100103 n

end A100103

/-!
# A100104: a(n) = n^3 - n^2 + 1.

The programs for A100104, the canonical program `A100104.P5986239298925528183` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100104 has offset 0).

The definition of A100104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²+1` (program `A100104.P5986239298925528183`, by `A100104.P5986239298925528183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100104.P5986239298925528183

`n^3-n²+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100104

/-- `n^3-n²+1` -/
def P5986239298925528183.Spec : Prop :=
  ∀ n, P5986239298925528183.a n = A100104 n

theorem P5986239298925528183.correct : P5986239298925528183.Spec := by
  intro n
  simp only [A100104]

end A100104

/-! ## A100104.P15824352675677354059

`ogf((1-3x+7x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100104.P15824352675677354059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 7, 1] [1, -4, 6, -4, 1] n

end

end A100104.P15824352675677354059

namespace A100104

/-- `ogf((1-3x+7x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P15824352675677354059.Spec : Prop :=
  ∀ n, P15824352675677354059.a n = A100104 n

end A100104

/-! ## A100104.P6529499510920380338

`or(1, (n-1)*n²)`
-/

namespace A100104.P6529499510920380338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * (n ^ 2 : ℤ))

end

end A100104.P6529499510920380338

namespace A100104

/-- `or(1, (n-1)*n²)` -/
def P6529499510920380338.Spec : Prop :=
  ∀ n, P6529499510920380338.a n = A100104 n

end A100104

/-! ## A100104.P3562230949106540302

`xor(1, (n-1)*n²)`
-/

namespace A100104.P3562230949106540302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * (n ^ 2 : ℤ))

end

end A100104.P3562230949106540302

namespace A100104

/-- `xor(1, (n-1)*n²)` -/
def P3562230949106540302.Spec : Prop :=
  ∀ n, P3562230949106540302.a n = A100104 n

end A100104

/-! ## A100104.P5691524479391579059

`abs(or(1, n*n*(n-1)))`
-/

namespace A100104.P5691524479391579059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 1)))|

end

end A100104.P5691524479391579059

namespace A100104

/-- `abs(or(1, n*n*(n-1)))` -/
def P5691524479391579059.Spec : Prop :=
  ∀ n, P5691524479391579059.a n = A100104 n

end A100104

/-! ## A100104.P6521240949325348319

`abs(xor(1, n*n*(n-1)))`
-/

namespace A100104.P6521240949325348319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 1)))|

end

end A100104.P6521240949325348319

namespace A100104

/-- `abs(xor(1, n*n*(n-1)))` -/
def P6521240949325348319.Spec : Prop :=
  ∀ n, P6521240949325348319.a n = A100104 n

end A100104

/-! ## A100104.P15759769569578259246

`-xor(-1, lcm(n-1, n²))`
-/

namespace A100104.P15759769569578259246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℤ)

end

end A100104.P15759769569578259246

namespace A100104

/-- `-xor(-1, lcm(n-1, n²))` -/
def P15759769569578259246.Spec : Prop :=
  ∀ n, P15759769569578259246.a n = A100104 n

end A100104

/-! ## A100104.P14955917001628145090

`(4*n*C(n, 2)+2)/2`
-/

namespace A100104.P14955917001628145090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n * Nat.choose n 2) + 2 : ℚ) / 2

end

end A100104.P14955917001628145090

namespace A100104

/-- `(4*n*C(n, 2)+2)/2` -/
def P14955917001628145090.Spec : Prop :=
  ∀ n, P14955917001628145090.a n = (A100104 n : ℚ)

theorem P14955917001628145090.correct : P14955917001628145090.Spec := by
  intro n
  simp only [A100104, Nat.add_sub_cancel, A100104.P14955917001628145090.a, A100104.P5986239298925528183.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100104

/-! ## A100104.P10204881793088067665

`floor(∑[a(n-1)-2]+n^3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A100104.P10204881793088067665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 3 : ℤ)

end

end A100104.P10204881793088067665

namespace A100104

/-- `floor(∑[a(n-1)-2]+n^3)` -/
def P10204881793088067665.Spec : Prop :=
  ∀ n, P10204881793088067665.a n = A100104 n

end A100104

/-! ## A100104.P9210008001000756560

`n*(1/n+n*a(n-1)%n)` with `a(0)=1`
-/

namespace A100104.P9210008001000756560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (1 / (n : ℚ) + ((n : ℤ) * Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n : ℤ) : ℚ))

end

end A100104.P9210008001000756560

namespace A100104

/-- `n*(1/n+n*a(n-1)%n)` -/
def P9210008001000756560.Spec : Prop :=
  ∀ n, P9210008001000756560.a n = (A100104 n : ℚ)

end A100104

/-! ## A100104.P4536047073629385360

`∑[(1-n)*A112335(n)]`
-/

namespace A100104.P4536047073629385360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A112335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100104.P4536047073629385360

namespace A100104

/-- `∑[(1-n)*A112335(n)]` -/
def P4536047073629385360.Spec : Prop :=
  ∀ n, P4536047073629385360.a n = A100104 n

end A100104

/-! ## A100104.P5706463085539654549

`∑[A077588(n)-2*n]`
-/

namespace A100104.P5706463085539654549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100104.P5706463085539654549

namespace A100104

/-- `∑[A077588(n)-2*n]` -/
def P5706463085539654549.Spec : Prop :=
  ∀ n, P5706463085539654549.a n = A100104 n

end A100104

/-! ## A100104.P6152663996131786723

`ceil(sqrt(A002604(n))-n²)`
-/

namespace A100104.P6152663996131786723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002604 n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A100104.P6152663996131786723

namespace A100104

/-- `ceil(sqrt(A002604(n))-n²)` -/
def P6152663996131786723.Spec : Prop :=
  ∀ n, P6152663996131786723.a n = A100104 n

end A100104

/-! ## A100104.P16434819771858048489

`ceil(sqrt(A060883(n))-n²)`
-/

namespace A100104.P16434819771858048489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060883 n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A100104.P16434819771858048489

namespace A100104

/-- `ceil(sqrt(A060883(n))-n²)` -/
def P16434819771858048489.Spec : Prop :=
  ∀ n, P16434819771858048489.a n = A100104 n

end A100104

/-! ## A100104.P7495531291782914077

`(A059722(n)+2-n)/2`
-/

namespace A100104.P7495531291782914077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059722 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A100104.P7495531291782914077

namespace A100104

/-- `(A059722(n)+2-n)/2` -/
def P7495531291782914077.Spec : Prop :=
  ∀ n, P7495531291782914077.a n = (A100104 n : ℚ)

theorem P7495531291782914077.correct : P7495531291782914077.Spec := by
  intro n
  simp only [A100104, Nat.add_sub_cancel, A100104.P7495531291782914077.a, A100104.P5986239298925528183.a, A059722, A059722.P11059442351168334169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100104

/-! ## A100104.P17041442835744489763

`(A060886(n)+n)/(n+1)`
-/

namespace A100104.P17041442835744489763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060886 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A100104.P17041442835744489763

namespace A100104

/-- `(A060886(n)+n)/(n+1)` -/
def P17041442835744489763.Spec : Prop :=
  ∀ n, P17041442835744489763.a n = (A100104 n : ℚ)

theorem P17041442835744489763.correct : P17041442835744489763.Spec := by
  intro n
  simp only [A100104, Nat.add_sub_cancel, A100104.P17041442835744489763.a, A100104.P5986239298925528183.a, A060886, A060886.P3465628418501274115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100104

/-! ## A100104.P11259535015570529379

`abs((n-1)*A000290(n)+1)`
-/

namespace A100104.P11259535015570529379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A000290 n + 1|

end

end A100104.P11259535015570529379

namespace A100104

/-- `abs((n-1)*A000290(n)+1)` -/
def P11259535015570529379.Spec : Prop :=
  ∀ n, P11259535015570529379.a n = A100104 n

end A100104

/-! ## A100104.P1782420634853119341

`A060891(n)%A155120(n)`
-/

namespace A100104.P1782420634853119341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060891 n) (A155120 n)

end

end A100104.P1782420634853119341

namespace A100104

/-- `A060891(n)%A155120(n)` -/
def P1782420634853119341.Spec : Prop :=
  ∀ n, P1782420634853119341.a n = A100104 n

end A100104

/-! ## A100104.P10499413918136957436

`gcd(A214085(n), A271209(n))`
-/

namespace A100104.P10499413918136957436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214085 n) (A271209 n)

end

end A100104.P10499413918136957436

namespace A100104

/-- `gcd(A214085(n), A271209(n))` -/
def P10499413918136957436.Spec : Prop :=
  ∀ n, (P10499413918136957436.a n : ℤ) = A100104 n

end A100104

/-! ## A100104.P17455662519418053603

`A128091(n+1)%A270109(n)`
-/

namespace A100104.P17455662519418053603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128091 (n + 1)) (A270109 n)

end

end A100104.P17455662519418053603

namespace A100104

/-- `A128091(n+1)%A270109(n)` -/
def P17455662519418053603.Spec : Prop :=
  ∀ n, P17455662519418053603.a n = A100104 n

end A100104

/-!
# A100105: a(n) = 2^prime(n)-prime(n).

The programs for A100105, the canonical program `A100105.P13781541839039159905` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100105 has offset 1).

The definition of A100105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100105.P13781541839039159905

`2^A000040(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100105

/-- `2^A000040(n+1)-A000040(n+1)` -/
def P13781541839039159905.Spec : Prop :=
  ∀ n, P13781541839039159905.a n = (A100105 (n + 1) : ℚ)

end A100105

/-! ## A100105.P3977735941817101792

`record[∑{p}[n+2, 2^#-#]]`
-/

namespace A100105.P3977735941817101792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((2 ^ p : ℤ) - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P3977735941817101792

namespace A100105

/-- `record[∑{p}[n+2, 2^#-#]]` -/
def P3977735941817101792.Spec : Prop :=
  ∀ n, P3977735941817101792.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P11881334234228004750

`record[∏{p}[n+2, 2^#-#]]`
-/

namespace A100105.P11881334234228004750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((2 ^ p : ℤ) - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P11881334234228004750

namespace A100105

/-- `record[∏{p}[n+2, 2^#-#]]` -/
def P11881334234228004750.Spec : Prop :=
  ∀ n, P11881334234228004750.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P2245103375269298080

`record[2^∑{p}[1-n, #]-(n-1)]`
-/

namespace A100105.P2245103375269298080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P2245103375269298080

namespace A100105

/-- `record[2^∑{p}[1-n, #]-(n-1)]` -/
def P2245103375269298080.Spec : Prop :=
  ∀ n, P2245103375269298080.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P4520094871845245222

`record[∏{p}[n-1, 2^#]-(n-1)]`
-/

namespace A100105.P4520094871845245222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, 2 ^ p : ℕ) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P4520094871845245222

namespace A100105

/-- `record[∏{p}[n-1, 2^#]-(n-1)]` -/
def P4520094871845245222.Spec : Prop :=
  ∀ n, P4520094871845245222.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P5213563243212457983

`record[A063696(n+1)-n]`
-/

namespace A100105.P5213563243212457983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063696 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P5213563243212457983

namespace A100105

/-- `record[A063696(n+1)-n]` -/
def P5213563243212457983.Spec : Prop :=
  ∀ n, P5213563243212457983.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P16042259102550918143

`record[A216850(n+2)-n]`
-/

namespace A100105.P16042259102550918143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216850 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P16042259102550918143

namespace A100105

/-- `record[A216850(n+2)-n]` -/
def P16042259102550918143.Spec : Prop :=
  ∀ n, P16042259102550918143.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P15113170913441388237

`∏{d}[A000040(n+1), 2^#-#]`
-/

namespace A100105.P15113170913441388237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((2 ^ d : ℤ) - (d : ℤ))

end

end A100105.P15113170913441388237

namespace A100105

/-- `∏{d}[A000040(n+1), 2^#-#]` -/
def P15113170913441388237.Spec : Prop :=
  ∀ n, P15113170913441388237.a n = A100105 (n + 1)

end A100105

/-! ## A100105.P16589107894348048500

`record[2^A006530(n+2)-(n+2)]`
-/

namespace A100105.P16589107894348048500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ) - (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P16589107894348048500

namespace A100105

/-- `record[2^A006530(n+2)-(n+2)]` -/
def P16589107894348048500.Spec : Prop :=
  ∀ n, P16589107894348048500.a n = (A100105 (n + 1) : ℚ)

end A100105

/-! ## A100105.P6767791838845096123

`record[2^A020639(n+2)-(n+2)]`
-/

namespace A100105.P6767791838845096123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 2) : ℤ) - (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100105.P6767791838845096123

namespace A100105

/-- `record[2^A020639(n+2)-(n+2)]` -/
def P6767791838845096123.Spec : Prop :=
  ∀ n, P6767791838845096123.a n = (A100105 (n + 1) : ℚ)

end A100105

/-!
# A100107: Inverse Moebius transform of Lucas numbers (A000032) 1,3,4,7,11,..

The programs for A100107, the canonical program `A100107.P9232786256714375716` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100107 has offset 1).

The definition of A100107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100107.P9232786256714375716

`∑{d}[n+1, A000032(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100107

/-- `∑{d}[n+1, A000032(#)]` -/
def P9232786256714375716.Spec : Prop :=
  ∀ n, P9232786256714375716.a n = A100107 (n + 1)

theorem P9232786256714375716.correct : P9232786256714375716.Spec := by
  intro n
  simp only [A100107, Nat.add_sub_cancel]

end A100107

/-! ## A100107.P4726739200904486296

`∑{d}[n+1, round(ϕ^#)]-1`
-/

namespace A100107.P4726739200904486296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.goldenRatio ^ d) - 1

end

end A100107.P4726739200904486296

namespace A100107

/-- `∑{d}[n+1, round(ϕ^#)]-1` -/
def P4726739200904486296.Spec : Prop :=
  ∀ n, P4726739200904486296.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P11147617528960074365

`∑{d}[n+1, A000204(#)]`
-/

namespace A100107.P11147617528960074365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000204 d

end

end A100107.P11147617528960074365

namespace A100107

/-- `∑{d}[n+1, A000204(#)]` -/
def P11147617528960074365.Spec : Prop :=
  ∀ n, P11147617528960074365.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P15991902338561705028

`∑{d}[n+1, A001612(#)-1]`
-/

namespace A100107.P15991902338561705028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001612 d - 1)

end

end A100107.P15991902338561705028

namespace A100107

/-- `∑{d}[n+1, A001612(#)-1]` -/
def P15991902338561705028.Spec : Prop :=
  ∀ n, P15991902338561705028.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P6481248020455288478

`∑{d}[n+1, A329723(#+2)]`
-/

namespace A100107.P6481248020455288478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329723 (d + 2)

end

end A100107.P6481248020455288478

namespace A100107

/-- `∑{d}[n+1, A329723(#+2)]` -/
def P6481248020455288478.Spec : Prop :=
  ∀ n, P6481248020455288478.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P851280176759012948

`record[∑{d}[A024000(n), A000032(#)]]`
-/

namespace A100107.P851280176759012948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000032 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100107.P851280176759012948

namespace A100107

/-- `record[∑{d}[A024000(n), A000032(#)]]` -/
def P851280176759012948.Spec : Prop :=
  ∀ n, P851280176759012948.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P15423686656568861651

`record[∑{d}[A123108(n), A000032(#)]]`
-/

namespace A100107.P15423686656568861651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000032 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100107.P15423686656568861651

namespace A100107

/-- `record[∑{d}[A123108(n), A000032(#)]]` -/
def P15423686656568861651.Spec : Prop :=
  ∀ n, P15423686656568861651.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P17133885486010249580

`A245282(n+1)+A108046(n+1)`
-/

namespace A100107.P17133885486010249580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245282 (n + 1) + A108046 (n + 1)

end

end A100107.P17133885486010249580

namespace A100107

/-- `A245282(n+1)+A108046(n+1)` -/
def P17133885486010249580.Spec : Prop :=
  ∀ n, P17133885486010249580.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P988519778767941600

`A007435(n+1)+2*A108046(n+1)`
-/

namespace A100107.P988519778767941600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007435 (n + 1) + 2 * A108046 (n + 1)

end

end A100107.P988519778767941600

namespace A100107

/-- `A007435(n+1)+2*A108046(n+1)` -/
def P988519778767941600.Spec : Prop :=
  ∀ n, P988519778767941600.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P11847563226468435680

`∑{d}[n+1, A008683(#)*A130878((n+1)/#)]`
-/

namespace A100107.P11847563226468435680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A130878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A100107.P11847563226468435680

namespace A100107

/-- `∑{d}[n+1, A008683(#)*A130878((n+1)/#)]` -/
def P11847563226468435680.Spec : Prop :=
  ∀ n, P11847563226468435680.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P14148164438014324711

`A245282(n+1)+A245282(n+1)-A007435(n+1)`
-/

namespace A100107.P14148164438014324711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245282 (n + 1) + (A245282 (n + 1) - A007435 (n + 1))

end

end A100107.P14148164438014324711

namespace A100107

/-- `A245282(n+1)+A245282(n+1)-A007435(n+1)` -/
def P14148164438014324711.Spec : Prop :=
  ∀ n, P14148164438014324711.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P1359105324264945482

`2*A245282(n+1)-A007435(n+1)`
-/

namespace A100107.P1359105324264945482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245282 (n + 1) - A007435 (n + 1)

end

end A100107.P1359105324264945482

namespace A100107

/-- `2*A245282(n+1)-A007435(n+1)` -/
def P1359105324264945482.Spec : Prop :=
  ∀ n, P1359105324264945482.a n = A100107 (n + 1)

end A100107

/-! ## A100107.P17970795154408365037

`∑{d}[n+1, sqrt(A001254(#))]`
-/

namespace A100107.P17970795154408365037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A001254 d : ℝ)

end

end A100107.P17970795154408365037

namespace A100107

/-- `∑{d}[n+1, sqrt(A001254(#))]` -/
def P17970795154408365037.Spec : Prop :=
  ∀ n, P17970795154408365037.a n = (A100107 (n + 1) : ℝ)

end A100107

/-!
# A100109: a(n) = n^3 - 2*n^2 + 2.

The programs for A100109, the canonical program `A100109.P12729926206155598771` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100109 has offset 1).

The definition of A100109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-2*(n+1)²+2` (program `A100109.P12729926206155598771`, by `A100109.P12729926206155598771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100109.P9659917226360653199

`ogf((1-2x+9x^2-2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100109.P9659917226360653199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 9, -2] [1, -4, 6, -4, 1] n

end

end A100109.P9659917226360653199

namespace A100109

/-- `ogf((1-2x+9x^2-2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9659917226360653199.Spec : Prop :=
  ∀ n, P9659917226360653199.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P12729926206155598771

`(n+1)^3-2*(n+1)²+2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100109

/-- `(n+1)^3-2*(n+1)²+2` -/
def P12729926206155598771.Spec : Prop :=
  ∀ n, P12729926206155598771.a n = A100109 (n + 1)

theorem P12729926206155598771.correct : P12729926206155598771.Spec := by
  intro n
  simp only [A100109, Nat.add_sub_cancel]

end A100109

/-! ## A100109.P789258022234392783

`lcm(n, 1-∑[2*n])+1`
-/

namespace A100109.P789258022234392783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 1

end

end A100109.P789258022234392783

namespace A100109

/-- `lcm(n, 1-∑[2*n])+1` -/
def P789258022234392783.Spec : Prop :=
  ∀ n, (P789258022234392783.a n : ℤ) = A100109 (n + 1)

end A100109

/-! ## A100109.P3271743135677703679

`lcm(n², n+1)-n+1`
-/

namespace A100109.P3271743135677703679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n ^ 2) (n + 1) : ℤ) - (n : ℤ) + 1

end

end A100109.P3271743135677703679

namespace A100109

/-- `lcm(n², n+1)-n+1` -/
def P3271743135677703679.Spec : Prop :=
  ∀ n, P3271743135677703679.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P12503663837909067343

`or(1, (n+1)*n²)-n`
-/

namespace A100109.P12503663837909067343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((n + 1) * n ^ 2) : ℤ) - (n : ℤ)

end

end A100109.P12503663837909067343

namespace A100109

/-- `or(1, (n+1)*n²)-n` -/
def P12503663837909067343.Spec : Prop :=
  ∀ n, P12503663837909067343.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P17721088439840318283

`ceil((n+1)/acot(n²)-n)`
-/

namespace A100109.P17721088439840318283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) - (n : ℝ)⌉

end

end A100109.P17721088439840318283

namespace A100109

/-- `ceil((n+1)/acot(n²)-n)` -/
def P17721088439840318283.Spec : Prop :=
  ∀ n, P17721088439840318283.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P12434800303548656028

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=0, a(2)=8`
-/

namespace A100109.P12434800303548656028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100109.P12434800303548656028

namespace A100109

/-- `∑[∑[a(n-1)+6]]` -/
def P12434800303548656028.Spec : Prop :=
  ∀ n, (P12434800303548656028.a n : ℤ) = A100109 (n + 1)

end A100109

/-! ## A100109.P2762422449692092283

`2*n*C(n+1, 2)-(n-1)`
-/

namespace A100109.P2762422449692092283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.choose (n + 1) 2 : ℤ) - ((n : ℤ) - 1)

end

end A100109.P2762422449692092283

namespace A100109

/-- `2*n*C(n+1, 2)-(n-1)` -/
def P2762422449692092283.Spec : Prop :=
  ∀ n, P2762422449692092283.a n = A100109 (n + 1)

theorem P2762422449692092283.correct : P2762422449692092283.Spec := by
  intro n
  simp only [A100109, Nat.add_sub_cancel, A100109.P2762422449692092283.a, A100109.P12729926206155598771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100109

/-! ## A100109.P3779053711008005453

`record[abs((n-1)*(2-n)²-(n-3))]`
-/

namespace A100109.P3779053711008005453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * (2 - (n : ℤ)) ^ 2 - ((n : ℤ) - 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100109.P3779053711008005453

namespace A100109

/-- `record[abs((n-1)*(2-n)²-(n-3))]` -/
def P3779053711008005453.Spec : Prop :=
  ∀ n, P3779053711008005453.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P6718333312594707173

`∑[abs(1-A049450(n))]`
-/

namespace A100109.P6718333312594707173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A049450 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100109.P6718333312594707173

namespace A100109

/-- `∑[abs(1-A049450(n))]` -/
def P6718333312594707173.Spec : Prop :=
  ∀ n, P6718333312594707173.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P6508604141649440608

`∑[abs(2-A056106(n))]`
-/

namespace A100109.P6508604141649440608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A056106 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100109.P6508604141649440608

namespace A100109

/-- `∑[abs(2-A056106(n))]` -/
def P6508604141649440608.Spec : Prop :=
  ∀ n, P6508604141649440608.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P8259454393380916826

`abs(n-(A011379(n)+1))`
-/

namespace A100109.P8259454393380916826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A011379 n + 1)|

end

end A100109.P8259454393380916826

namespace A100109

/-- `abs(n-(A011379(n)+1))` -/
def P8259454393380916826.Spec : Prop :=
  ∀ n, P8259454393380916826.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P7104058981232154596

`abs(2*n-A053698(n))`
-/

namespace A100109.P7104058981232154596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A053698 n|

end

end A100109.P7104058981232154596

namespace A100109

/-- `abs(2*n-A053698(n))` -/
def P7104058981232154596.Spec : Prop :=
  ∀ n, P7104058981232154596.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P2632953796813809239

`(n²*A005563(n)+1)/(n+1)`
-/

namespace A100109.P2632953796813809239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A005563 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A100109.P2632953796813809239

namespace A100109

/-- `(n²*A005563(n)+1)/(n+1)` -/
def P2632953796813809239.Spec : Prop :=
  ∀ n, P2632953796813809239.a n = (A100109 (n + 1) : ℚ)

theorem P2632953796813809239.correct : P2632953796813809239.Spec := by
  intro n
  simp only [A100109, Nat.add_sub_cancel, A100109.P2632953796813809239.a, A100109.P12729926206155598771.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100109

/-! ## A100109.P12609116381165525550

`-((n+2)*(n-1-A000290(n))+1)`
-/

namespace A100109.P12609116381165525550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * ((n : ℤ) - 1 - A000290 n) + 1)

end

end A100109.P12609116381165525550

namespace A100109

/-- `-((n+2)*(n-1-A000290(n))+1)` -/
def P12609116381165525550.Spec : Prop :=
  ∀ n, P12609116381165525550.a n = A100109 (n + 1)

theorem P12609116381165525550.correct : P12609116381165525550.Spec := by
  intro n
  simp only [A100109, Nat.add_sub_cancel, A100109.P12609116381165525550.a, A100109.P12729926206155598771.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100109

/-! ## A100109.P16966589161967047813

`xor(A010684(n), A085490(n))`
-/

namespace A100109.P16966589161967047813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A085490 n)

end

end A100109.P16966589161967047813

namespace A100109

/-- `xor(A010684(n), A085490(n))` -/
def P16966589161967047813.Spec : Prop :=
  ∀ n, P16966589161967047813.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P2613043436114719721

`A027602(n)%A166781(n+1)`
-/

namespace A100109.P2613043436114719721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027602 n) (A166781 (n + 1))

end

end A100109.P2613043436114719721

namespace A100109

/-- `A027602(n)%A166781(n+1)` -/
def P2613043436114719721.Spec : Prop :=
  ∀ n, P2613043436114719721.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P10935054740743992926

`∑[abs(A002061(n)-A002939(n))]`
-/

namespace A100109.P10935054740743992926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002061 n - A002939 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100109.P10935054740743992926

namespace A100109

/-- `∑[abs(A002061(n)-A002939(n))]` -/
def P10935054740743992926.Spec : Prop :=
  ∀ n, P10935054740743992926.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P7731491240113043161

`∑{#}[n, 1-(C(#, n)-#)*2*n]`
-/

namespace A100109.P7731491240113043161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 - ((Nat.choose k n : ℤ) - (k : ℤ)) * (2 * n : ℤ))

end

end A100109.P7731491240113043161

namespace A100109

/-- `∑{#}[n, 1-(C(#, n)-#)*2*n]` -/
def P7731491240113043161.Spec : Prop :=
  ∀ n, P7731491240113043161.a n = A100109 (n + 1)

end A100109

/-! ## A100109.P6440492414349480543

`A100207(n)%A066023(n+1)`
-/

namespace A100109.P6440492414349480543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100207 n) (A066023 (n + 1))

end

end A100109.P6440492414349480543

namespace A100109

/-- `A100207(n)%A066023(n+1)` -/
def P6440492414349480543.Spec : Prop :=
  ∀ n, P6440492414349480543.a n = A100109 (n + 1)

end A100109

/-!
# A100110: Write n in decimal and replace each digit d with prime(d+1), add overflow to the next position left.

The programs for A100110, there is no canonical definition to state claims against.
-/

/-! ## A100110.P17680734026250012201

`lt[A347777(A107946(n+1)), A047814(n)]`
-/

namespace A100110.P17680734026250012201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 (A107946 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100110.P17680734026250012201

/-! ## A100110.P15284627361542771947

`A198196(A117804(n+1))%A132132(n+1)`
-/

namespace A100110.P15284627361542771947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198196 (A117804 (n + 1)).toNat) (A132132 (n + 1))

end

end A100110.P15284627361542771947

/-! ## A100110.P6223278743020839247

`record[A000040(n+1)-A326686(2*n+1)]`
-/

namespace A100110.P6223278743020839247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A326686 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100110.P6223278743020839247

/-! ## A100110.P15896184915544303413

`record[A000040(n+1)-A326687(2*n+1)]`
-/

namespace A100110.P15896184915544303413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A326687 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100110.P15896184915544303413

/-! ## A100110.P14382871242839541783

`A008864(n+1)-A322267(A322283(n))`
-/

namespace A100110.P14382871242839541783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A322267 (A322283 n).toNat

end

end A100110.P14382871242839541783

/-!
# A100111: a(n) = Sum_{k >= 0} prime(n-4k).

The programs for A100111, the canonical program `A100111.P2057885307952917356` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100111 has offset 1).

The definition of A100111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100111.P2148029839888856

`Δ[A007504(n)]+a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A100111.P2148029839888856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  f1 (n + 1) - f1 n + a (n - 4)

end

end A100111.P2148029839888856

namespace A100111

/-- `Δ[A007504(n)]+a(n-4)` -/
def P2148029839888856.Spec : Prop :=
  ∀ n, P2148029839888856.a n = A100111 (n + 1)

end A100111

/-! ## A100111.P2057885307952917356

`A000040(n+1)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100111

/-- `A000040(n+1)+a(n-4)` -/
def P2057885307952917356.Spec : Prop :=
  ∀ n, P2057885307952917356.a n = A100111 (n + 1)

theorem P2057885307952917356.correct : P2057885307952917356.Spec := by
  intro n
  simp only [A100111, Nat.add_sub_cancel]

end A100111

/-! ## A100111.P9926612186701295372

`a(n-4)+sqrt(A001248(n+1))` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A100111.P9926612186701295372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A100111.P9926612186701295372

namespace A100111

/-- `a(n-4)+sqrt(A001248(n+1))` -/
def P9926612186701295372.Spec : Prop :=
  ∀ n, P9926612186701295372.a n = (A100111 (n + 1) : ℝ)

end A100111

/-! ## A100111.P12296078076632070792

`a(n-4)+A006093(n+1)+1` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A100111.P12296078076632070792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + (A006093 (n + 1) + 1)

end

end A100111.P12296078076632070792

namespace A100111

/-- `a(n-4)+A006093(n+1)+1` -/
def P12296078076632070792.Spec : Prop :=
  ∀ n, P12296078076632070792.a n = A100111 (n + 1)

end A100111

/-! ## A100111.P3823713956331326316

`a(n-4)+A008864(n+1)-1` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A100111.P3823713956331326316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + (A008864 (n + 1) - 1)

end

end A100111.P3823713956331326316

namespace A100111

/-- `a(n-4)+A008864(n+1)-1` -/
def P3823713956331326316.Spec : Prop :=
  ∀ n, P3823713956331326316.a n = A100111 (n + 1)

end A100111

/-! ## A100111.P7651947372742263729

`a(n-4)+A014692(n+1)+n` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A100111.P7651947372742263729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + (A014692 (n + 1) + (n : ℤ))

end

end A100111.P7651947372742263729

namespace A100111

/-- `a(n-4)+A014692(n+1)+n` -/
def P7651947372742263729.Spec : Prop :=
  ∀ n, P7651947372742263729.a n = A100111 (n + 1)

end A100111

/-!
# A100112: If n is the k-th squarefree number then a(n) = k, otherwise a(n) = 0.

The programs for A100112, the canonical program `A100112.P5701663947279075001` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100112 has offset 1).

The definition of A100112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100112.P5701663947279075001

`(A013928(n+1)+1)*A008966(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100112

/-- `(A013928(n+1)+1)*A008966(n+1)` -/
def P5701663947279075001.Spec : Prop :=
  ∀ n, P5701663947279075001.a n = A100112 (n + 1)

theorem P5701663947279075001.correct : P5701663947279075001.Spec := by
  intro n
  simp only [A100112, Nat.add_sub_cancel]

end A100112

/-! ## A100112.P16558438823035913300

`∑{#}[n, A008683(lcm(n+1, #+1))²]`
-/

namespace A100112.P16558438823035913300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (Nat.lcm (n + 1) (k + 1)) ^ 2

end

end A100112.P16558438823035913300

namespace A100112

/-- `∑{#}[n, A008683(lcm(n+1, #+1))²]` -/
def P16558438823035913300.Spec : Prop :=
  ∀ n, P16558438823035913300.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P16828993408702490118

`∑[∏{e}[n+1, #!%2]]*∏{e}[n+1, #!%2]`
-/

namespace A100112.P16828993408702490118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) % 2)

end

end A100112.P16828993408702490118

namespace A100112

/-- `∑[∏{e}[n+1, #!%2]]*∏{e}[n+1, #!%2]` -/
def P16828993408702490118.Spec : Prop :=
  ∀ n, (P16828993408702490118.a n : ℤ) = A100112 (n + 1)

end A100112

/-! ## A100112.P14522723878098936059

`Δ[C(A107079(n+1), 2)]`
-/

namespace A100112.P14522723878098936059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A107079 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100112.P14522723878098936059

namespace A100112

/-- `Δ[C(A107079(n+1), 2)]` -/
def P14522723878098936059.Spec : Prop :=
  ∀ n, P14522723878098936059.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P4893965854391877418

`Δ[C(A013928(n+1)+1, 2)]`
-/

namespace A100112.P4893965854391877418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A013928 (n + 1) + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100112.P4893965854391877418

namespace A100112

/-- `Δ[C(A013928(n+1)+1, 2)]` -/
def P4893965854391877418.Spec : Prop :=
  ∀ n, P4893965854391877418.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P16625406033877041578

`∑[C(∏{p}[n, #], n)]*A008966(n+1)`
-/

namespace A100112.P16625406033877041578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008966 (n + 1)

end

end A100112.P16625406033877041578

namespace A100112

/-- `∑[C(∏{p}[n, #], n)]*A008966(n+1)` -/
def P16625406033877041578.Spec : Prop :=
  ∀ n, P16625406033877041578.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P11448104724304305700

`Δ[A000124(A013928(n+1))]`
-/

namespace A100112.P11448104724304305700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A013928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100112.P11448104724304305700

namespace A100112

/-- `Δ[A000124(A013928(n+1))]` -/
def P11448104724304305700.Spec : Prop :=
  ∀ n, P11448104724304305700.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P13156538356479290585

`Δ[A000124(A107079(n+1)-1)]`
-/

namespace A100112.P13156538356479290585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A107079 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100112.P13156538356479290585

namespace A100112

/-- `Δ[A000124(A107079(n+1)-1)]` -/
def P13156538356479290585.Spec : Prop :=
  ∀ n, P13156538356479290585.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P3996248616262539026

`Δ[A000217(A107079(n+1)-1)]`
-/

namespace A100112.P3996248616262539026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A107079 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100112.P3996248616262539026

namespace A100112

/-- `Δ[A000217(A107079(n+1)-1)]` -/
def P3996248616262539026.Spec : Prop :=
  ∀ n, P3996248616262539026.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P15812180239222212775

`A008966(n+1)*A107079(n+1)`
-/

namespace A100112.P15812180239222212775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A107079 (n + 1)

end

end A100112.P15812180239222212775

namespace A100112

/-- `A008966(n+1)*A107079(n+1)` -/
def P15812180239222212775.Spec : Prop :=
  ∀ n, P15812180239222212775.a n = A100112 (n + 1)

theorem P15812180239222212775.correct : P15812180239222212775.Spec := by
  intro n
  simp only [A100112, Nat.add_sub_cancel, A100112.P15812180239222212775.a, A100112.P5701663947279075001.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A107079, A107079.P8145768499534566836.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100112

/-! ## A100112.P3290187849560891452

`A013928(n+2-A105570(n+1))`
-/

namespace A100112.P3290187849560891452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 ((n + 2 : ℤ) - A105570 (n + 1)).toNat

end

end A100112.P3290187849560891452

namespace A100112

/-- `A013928(n+2-A105570(n+1))` -/
def P3290187849560891452.Spec : Prop :=
  ∀ n, P3290187849560891452.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P10080344554503319190

`A008966(n+1)*A322590(n+1)`
-/

namespace A100112.P10080344554503319190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A322590 (n + 1)

end

end A100112.P10080344554503319190

namespace A100112

/-- `A008966(n+1)*A322590(n+1)` -/
def P10080344554503319190.Spec : Prop :=
  ∀ n, P10080344554503319190.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P16406637867951867125

`A008966(n+1)*A322815(n+1)`
-/

namespace A100112.P16406637867951867125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A322815 (n + 1)

end

end A100112.P16406637867951867125

namespace A100112

/-- `A008966(n+1)*A322815(n+1)` -/
def P16406637867951867125.Spec : Prop :=
  ∀ n, P16406637867951867125.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P13099530749918153476

`A008966(n+1)*A351520(n+1)`
-/

namespace A100112.P13099530749918153476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A351520 (n + 1)

end

end A100112.P13099530749918153476

namespace A100112

/-- `A008966(n+1)*A351520(n+1)` -/
def P13099530749918153476.Spec : Prop :=
  ∀ n, P13099530749918153476.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P15195228508952965482

`A008966(n+1)*A357241(n+1)`
-/

namespace A100112.P15195228508952965482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A357241 (n + 1)

end

end A100112.P15195228508952965482

namespace A100112

/-- `A008966(n+1)*A357241(n+1)` -/
def P15195228508952965482.Spec : Prop :=
  ∀ n, P15195228508952965482.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P11792940534621441161

`A008966(n+1)*A013928(n+2)`
-/

namespace A100112.P11792940534621441161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A013928 (n + 2)

end

end A100112.P11792940534621441161

namespace A100112

/-- `A008966(n+1)*A013928(n+2)` -/
def P11792940534621441161.Spec : Prop :=
  ∀ n, P11792940534621441161.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P10078723616927825954

`A107079(n+1)%A107079(n+2)`
-/

namespace A100112.P10078723616927825954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107079 (n + 1)) (A107079 (n + 2))

end

end A100112.P10078723616927825954

namespace A100112

/-- `A107079(n+1)%A107079(n+2)` -/
def P10078723616927825954.Spec : Prop :=
  ∀ n, P10078723616927825954.a n = A100112 (n + 1)

end A100112

/-! ## A100112.P9404823013560611315

`lcm(A008683(n+1), A107079(n+1))`
-/

namespace A100112.P9404823013560611315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A107079 (n + 1))

end

end A100112.P9404823013560611315

namespace A100112

/-- `lcm(A008683(n+1), A107079(n+1))` -/
def P9404823013560611315.Spec : Prop :=
  ∀ n, (P9404823013560611315.a n : ℤ) = A100112 (n + 1)

end A100112

/-! ## A100112.P6179677484609414867

`lcm(A069158(n+1), A322590(n+1))`
-/

namespace A100112.P6179677484609414867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069158 (n + 1)) (A322590 (n + 1))

end

end A100112.P6179677484609414867

namespace A100112

/-- `lcm(A069158(n+1), A322590(n+1))` -/
def P6179677484609414867.Spec : Prop :=
  ∀ n, (P6179677484609414867.a n : ℤ) = A100112 (n + 1)

end A100112

/-! ## A100112.P3360151667405385975

`lcm(A080323(n+1), A322815(n+1))`
-/

namespace A100112.P3360151667405385975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080323 (n + 1)) (A322815 (n + 1))

end

end A100112.P3360151667405385975

namespace A100112

/-- `lcm(A080323(n+1), A322815(n+1))` -/
def P3360151667405385975.Spec : Prop :=
  ∀ n, (P3360151667405385975.a n : ℤ) = A100112 (n + 1)

end A100112

/-!
# A100113: a(n) = n if n <= 2, otherwise (smallest squarefree number m not occurring earlier such that gcd(m, a(n-1)) > 1).

The programs for A100113, there is no canonical definition to state claims against.
-/

/-! ## A100113.P15249937478913711489

`A100115(A005117(n+1))`
-/

namespace A100113.P15249937478913711489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100115 (A005117 (n + 1)).toNat

end

end A100113.P15249937478913711489

/-! ## A100113.P13860948309931900362

`A100115(A077377(n+1))`
-/

namespace A100113.P13860948309931900362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100115 (A077377 (n + 1)).toNat

end

end A100113.P13860948309931900362

/-! ## A100113.P17404991291304219249

`A100115(A348506(n+1))`
-/

namespace A100113.P17404991291304219249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100115 (A348506 (n + 1)).toNat

end

end A100113.P17404991291304219249

/-! ## A100113.P7686150427295846913

`A100115(A367801(n+1))`
-/

namespace A100113.P7686150427295846913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100115 (A367801 (n + 1)).toNat

end

end A100113.P7686150427295846913

/-! ## A100113.P17429497697034284434

`A100115(A076144(n+2))`
-/

namespace A100113.P17429497697034284434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100115 (A076144 (n + 2)).toNat

end

end A100113.P17429497697034284434

/-!
# A100114: a(n) = the unique squarefree m such that A100113(A100112(m))=A005117(n).

The programs for A100114, there is no canonical definition to state claims against.
-/

/-! ## A100114.P8004721235748244091

`A100116(A005117(n+1))`
-/

namespace A100114.P8004721235748244091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100116 (A005117 (n + 1)).toNat

end

end A100114.P8004721235748244091

/-! ## A100114.P4964482001377217310

`A100116(A077377(n+1))`
-/

namespace A100114.P4964482001377217310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100116 (A077377 (n + 1)).toNat

end

end A100114.P4964482001377217310

/-! ## A100114.P16265718086487193539

`A100116(A348506(n+1))`
-/

namespace A100114.P16265718086487193539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100116 (A348506 (n + 1)).toNat

end

end A100114.P16265718086487193539

/-! ## A100114.P1236611025663151901

`A100116(A367801(n+1))`
-/

namespace A100114.P1236611025663151901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100116 (A367801 (n + 1)).toNat

end

end A100114.P1236611025663151901

/-! ## A100114.P18301448104306913477

`A100116(A076144(n+2))`
-/

namespace A100114.P18301448104306913477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100116 (A076144 (n + 2)).toNat

end

end A100114.P18301448104306913477

/-!
# A100117: a(n) = 2^(Bell_Number(n)).

The programs for A100117, there is no canonical definition to state claims against.
-/

/-! ## A100117.P13890373103396445947

`2^A011972(∑[n])`
-/

namespace A100117.P13890373103396445947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A011972 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A100117.P13890373103396445947

/-!
# A100118: Numbers whose sum of prime factors is prime (counted with multiplicity).

The programs for A100118, the canonical program `A100118.P1075774472492098706` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100118 has offset 1).

The definition of A100118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100118.P8614436020361268003

`eq[0, A274718(n+1)]+1`
-/

namespace A100118.P8614436020361268003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100118.P8614436020361268003

namespace A100118

/-- `eq[0, A274718(n+1)]+1` -/
def P8614436020361268003.Spec : Prop :=
  ∀ n, (P8614436020361268003.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P9360675253510771111

`∪[A046363(n+1), Δ[A007504(n)]]`
-/

namespace A100118.P9360675253510771111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100118.P9360675253510771111

namespace A100118

/-- `∪[A046363(n+1), Δ[A007504(n)]]` -/
def P9360675253510771111.Spec : Prop :=
  ∀ n, (P9360675253510771111.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P1075774472492098706

`eq[1, A001222(A001414(n+2))]+2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100118

/-- `eq[1, A001222(A001414(n+2))]+2` -/
def P1075774472492098706.Spec : Prop :=
  ∀ n, (P1075774472492098706.a n : ℤ) = A100118 (n + 1)

theorem P1075774472492098706.correct : P1075774472492098706.Spec := by
  intro n
  simp only [A100118, Nat.add_sub_cancel]

end A100118

/-! ## A100118.P3602897721737932759

`∪[A000040(n+1), A046363(n+1)]`
-/

namespace A100118.P3602897721737932759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100118.P3602897721737932759

namespace A100118

/-- `∪[A000040(n+1), A046363(n+1)]` -/
def P3602897721737932759.Spec : Prop :=
  ∀ n, (P3602897721737932759.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P18292446719078229595

`∪[A046363(n+1), A116974(n+1)]`
-/

namespace A100118.P18292446719078229595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100118.P18292446719078229595

namespace A100118

/-- `∪[A046363(n+1), A116974(n+1)]` -/
def P18292446719078229595.Spec : Prop :=
  ∀ n, (P18292446719078229595.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P8783577062132848534

`eq[1, A107463(A001414(n+1))]+1`
-/

namespace A100118.P8783577062132848534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100118.P8783577062132848534

namespace A100118

/-- `eq[1, A107463(A001414(n+1))]+1` -/
def P8783577062132848534.Spec : Prop :=
  ∀ n, (P8783577062132848534.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P11799622110913540439

`comp[A134376(n+1)-1]+1`
-/

namespace A100118.P11799622110913540439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A100118.P11799622110913540439

namespace A100118

/-- `comp[A134376(n+1)-1]+1` -/
def P11799622110913540439.Spec : Prop :=
  ∀ n, (P11799622110913540439.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P11513437822052212594

`eq[1, A342956(n+1)]+1`
-/

namespace A100118.P11513437822052212594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100118.P11513437822052212594

namespace A100118

/-- `eq[1, A342956(n+1)]+1` -/
def P11513437822052212594.Spec : Prop :=
  ∀ n, (P11513437822052212594.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P10432987523005657942

`eq[1, A274718(A028310(n))+1]`
-/

namespace A100118.P10432987523005657942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100118.P10432987523005657942

namespace A100118

/-- `eq[1, A274718(A028310(n))+1]` -/
def P10432987523005657942.Spec : Prop :=
  ∀ n, (P10432987523005657942.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P2929112038981698460

`eq[A060576(n), A107463(A107463(n))]`
-/

namespace A100118.P2929112038981698460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100118.P2929112038981698460

namespace A100118

/-- `eq[A060576(n), A107463(A107463(n))]` -/
def P2929112038981698460.Spec : Prop :=
  ∀ n, (P2929112038981698460.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P8199341637248379310

`eq[A107463(A107463(n)), A267635(n)]`
-/

namespace A100118.P8199341637248379310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100118.P8199341637248379310

namespace A100118

/-- `eq[A107463(A107463(n)), A267635(n)]` -/
def P8199341637248379310.Spec : Prop :=
  ∀ n, (P8199341637248379310.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P15197493775634215870

`eq[A000122(n)+1, A107463(A107463(n))]`
-/

namespace A100118.P15197493775634215870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100118.P15197493775634215870

namespace A100118

/-- `eq[A000122(n)+1, A107463(A107463(n))]` -/
def P15197493775634215870.Spec : Prop :=
  ∀ n, (P15197493775634215870.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P4436632386042777671

`lt[A107286(A107463(n)), A107286(2*n)]`
-/

namespace A100118.P4436632386042777671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100118.P4436632386042777671

namespace A100118

/-- `lt[A107286(A107463(n)), A107286(2*n)]` -/
def P4436632386042777671.Spec : Prop :=
  ∀ n, (P4436632386042777671.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P374710651937069647

`eq[A014963(A123528(n+2)), A001414(n+2)]+2`
-/

namespace A100118.P374710651937069647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A123528 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A100118.P374710651937069647

namespace A100118

/-- `eq[A014963(A123528(n+2)), A001414(n+2)]+2` -/
def P374710651937069647.Spec : Prop :=
  ∀ n, (P374710651937069647.a n : ℤ) = A100118 (n + 1)

end A100118

/-! ## A100118.P16102238403632957343

`eq[n*A107463(A107463(n)), A233583(n+1)]`
-/

namespace A100118.P16102238403632957343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107463 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100118.P16102238403632957343

namespace A100118

/-- `eq[n*A107463(A107463(n)), A233583(n+1)]` -/
def P16102238403632957343.Spec : Prop :=
  ∀ n, (P16102238403632957343.a n : ℤ) = A100118 (n + 1)

end A100118

/-!
# A100119: a(n) = n-th centered n-gonal number.

The programs for A100119, the canonical program `A100119.P15001124056922531884` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100119 has offset 0).

The definition of A100119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100119.P15001124056922531884

`n²*(n+1)/2+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100119

/-- `n²*(n+1)/2+1` -/
def P15001124056922531884.Spec : Prop :=
  ∀ n, P15001124056922531884.a n = (A100119 n : ℚ)

end A100119

/-! ## A100119.P5032130585363522634

`ogf((1-2x+5x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100119.P5032130585363522634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5, -1] [1, -4, 6, -4, 1] n

end

end A100119.P5032130585363522634

namespace A100119

/-- `ogf((1-2x+5x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5032130585363522634.Spec : Prop :=
  ∀ n, P5032130585363522634.a n = A100119 n

end A100119

/-! ## A100119.P3940345117043395188

`(A098547(n)+1)/2`
-/

namespace A100119.P3940345117043395188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098547 n + 1 : ℚ) / 2

end

end A100119.P3940345117043395188

namespace A100119

/-- `(A098547(n)+1)/2` -/
def P3940345117043395188.Spec : Prop :=
  ∀ n, P3940345117043395188.a n = (A100119 n : ℚ)

end A100119

/-! ## A100119.P8086022374211282000

`n*∑[gcd(n, n)]+1`
-/

namespace A100119.P8086022374211282000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100119.P8086022374211282000

namespace A100119

/-- `n*∑[gcd(n, n)]+1` -/
def P8086022374211282000.Spec : Prop :=
  ∀ n, (P8086022374211282000.a n : ℤ) = A100119 n

end A100119

/-! ## A100119.P11862148122848530923

`n*∑[lcm(n, n)]+1`
-/

namespace A100119.P11862148122848530923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100119.P11862148122848530923

namespace A100119

/-- `n*∑[lcm(n, n)]+1` -/
def P11862148122848530923.Spec : Prop :=
  ∀ n, (P11862148122848530923.a n : ℤ) = A100119 n

end A100119

/-! ## A100119.P2151652359964289999

`-xor(n*∑[n], -1)`
-/

namespace A100119.P2151652359964289999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-1)

end

end A100119.P2151652359964289999

namespace A100119

/-- `-xor(n*∑[n], -1)` -/
def P2151652359964289999.Spec : Prop :=
  ∀ n, P2151652359964289999.a n = A100119 n

end A100119

/-! ## A100119.P12491930193877043036

`ceil(1/acot(n*∑[n]))`
-/

namespace A100119.P12491930193877043036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℝ)⌉

end

end A100119.P12491930193877043036

namespace A100119

/-- `ceil(1/acot(n*∑[n]))` -/
def P12491930193877043036.Spec : Prop :=
  ∀ n, P12491930193877043036.a n = A100119 n

end A100119

/-! ## A100119.P3830637607016984517

`abs(xor(n*∑[n], (-1)^n))`
-/

namespace A100119.P3830637607016984517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) ((-1) ^ n)|

end

end A100119.P3830637607016984517

namespace A100119

/-- `abs(xor(n*∑[n], (-1)^n))` -/
def P3830637607016984517.Spec : Prop :=
  ∀ n, P3830637607016984517.a n = A100119 n

end A100119

/-! ## A100119.P7368942718949881397

`(lcm(n+1, n²)+2)/2`
-/

namespace A100119.P7368942718949881397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) + 2 : ℚ) / 2

end

end A100119.P7368942718949881397

namespace A100119

/-- `(lcm(n+1, n²)+2)/2` -/
def P7368942718949881397.Spec : Prop :=
  ∀ n, P7368942718949881397.a n = (A100119 n : ℚ)

end A100119

/-! ## A100119.P14120425178140271132

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A100119.P14120425178140271132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100119.P14120425178140271132

namespace A100119

/-- `∑[∑[a(n-1)+3]]` -/
def P14120425178140271132.Spec : Prop :=
  ∀ n, (P14120425178140271132.a n : ℤ) = A100119 n

end A100119

/-! ## A100119.P4708583752346955447

`floor(cosh(log((n+1)*n²+2)))`
-/

namespace A100119.P4708583752346955447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((n + 1) * n ^ 2 + 2 : ℝ))⌋

end

end A100119.P4708583752346955447

namespace A100119

/-- `floor(cosh(log((n+1)*n²+2)))` -/
def P4708583752346955447.Spec : Prop :=
  ∀ n, P4708583752346955447.a n = A100119 n

end A100119

/-! ## A100119.P7836990026099645911

`round(cosh(log((n+1)*n²+1)))`
-/

namespace A100119.P7836990026099645911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n + 1) * n ^ 2 + 1 : ℝ)))

end

end A100119.P7836990026099645911

namespace A100119

/-- `round(cosh(log((n+1)*n²+1)))` -/
def P7836990026099645911.Spec : Prop :=
  ∀ n, P7836990026099645911.a n = A100119 n

end A100119

/-! ## A100119.P1389431993680541158

`abs(1-(C(n, 2)+1)*(n+2))`
-/

namespace A100119.P1389431993680541158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((Nat.choose n 2 + 1) * (n + 2) : ℤ)|

end

end A100119.P1389431993680541158

namespace A100119

/-- `abs(1-(C(n, 2)+1)*(n+2))` -/
def P1389431993680541158.Spec : Prop :=
  ∀ n, P1389431993680541158.a n = A100119 n

end A100119

/-! ## A100119.P16974272044877225763

`abs(∑[C(n, 2)+n²+1]-n)`
-/

namespace A100119.P16974272044877225763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A100119.P16974272044877225763

namespace A100119

/-- `abs(∑[C(n, 2)+n²+1]-n)` -/
def P16974272044877225763.Spec : Prop :=
  ∀ n, P16974272044877225763.a n = A100119 n

end A100119

/-! ## A100119.P7883628759059038456

`∑[3*n-(2-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A100119.P7883628759059038456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (3 * n : ℤ) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100119.P7883628759059038456

namespace A100119

/-- `∑[3*n-(2-a(n-1))]` -/
def P7883628759059038456.Spec : Prop :=
  ∀ n, P7883628759059038456.a n = A100119 n

end A100119

/-! ## A100119.P5979675728278576118

`(n+2)*(C(n, 2)+(n+1)/(n+2))`
-/

namespace A100119.P5979675728278576118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.choose n 2 : ℚ) + (n + 1 : ℚ) / (n + 2 : ℚ))

end

end A100119.P5979675728278576118

namespace A100119

/-- `(n+2)*(C(n, 2)+(n+1)/(n+2))` -/
def P5979675728278576118.Spec : Prop :=
  ∀ n, P5979675728278576118.a n = (A100119 n : ℚ)

end A100119

/-! ## A100119.P697765396471383326

`floor(a(n-1)+n*((n-1)/2+n))` with `a(0)=1`
-/

namespace A100119.P697765396471383326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2 + (n : ℚ))⌋

end

end A100119.P697765396471383326

namespace A100119

/-- `floor(a(n-1)+n*((n-1)/2+n))` -/
def P697765396471383326.Spec : Prop :=
  ∀ n, P697765396471383326.a n = A100119 n

end A100119

/-! ## A100119.P3226680549392968416

`ceil(A098547(n)/2)`
-/

namespace A100119.P3226680549392968416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098547 n : ℚ) / 2⌉

end

end A100119.P3226680549392968416

namespace A100119

/-- `ceil(A098547(n)/2)` -/
def P3226680549392968416.Spec : Prop :=
  ∀ n, P3226680549392968416.a n = A100119 n

end A100119

/-! ## A100119.P13785288214578607328

`abs(n-A064808(n))`
-/

namespace A100119.P13785288214578607328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A064808 n|

end

end A100119.P13785288214578607328

namespace A100119

/-- `abs(n-A064808(n))` -/
def P13785288214578607328.Spec : Prop :=
  ∀ n, P13785288214578607328.a n = A100119 n

end A100119

/-! ## A100119.P14294540725012774401

`(A011379(n)+2)/2`
-/

namespace A100119.P14294540725012774401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011379 n + 2 : ℚ) / 2

end

end A100119.P14294540725012774401

namespace A100119

/-- `(A011379(n)+2)/2` -/
def P14294540725012774401.Spec : Prop :=
  ∀ n, P14294540725012774401.a n = (A100119 n : ℚ)

end A100119

/-!
# A100130: Expansion of (eta(q) * eta(q^4) / eta(q^2)^2)^24 in powers of q.

The programs for A100130, there is no canonical definition to state claims against.
-/

/-! ## A100130.P14661652152388588608

`(-1)^n*A014103(n+1)`
-/

namespace A100130.P14661652152388588608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014103 (n + 1)

end

end A100130.P14661652152388588608

/-! ## A100130.P1343150994554249501

`A014103(n+1)*A033999(n)`
-/

namespace A100130.P1343150994554249501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014103 (n + 1) * A033999 n

end

end A100130.P1343150994554249501

/-! ## A100130.P3960717323750450199

`A014103(n+1)/∑[A280560(n)]`
-/

namespace A100130.P3960717323750450199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014103 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A100130.P3960717323750450199

/-! ## A100130.P10678935474791973536

`A014103(n+1)/A033999(n+2)`
-/

namespace A100130.P10678935474791973536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014103 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A100130.P10678935474791973536

/-! ## A100130.P16680781780545961765

`A014103(n+1)*A056594(2*n)`
-/

namespace A100130.P16680781780545961765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014103 (n + 1) * A056594 (2 * n)

end

end A100130.P16680781780545961765

/-! ## A100130.P5628408045766688915

`A014103(n+1)*A057077(2*n)`
-/

namespace A100130.P5628408045766688915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014103 (n + 1) * A057077 (2 * n)

end

end A100130.P5628408045766688915

/-! ## A100130.P10009840475237524541

`A014103(n+1)*A087960(2*n)`
-/

namespace A100130.P10009840475237524541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014103 (n + 1) * A087960 (2 * n)

end

end A100130.P10009840475237524541

/-! ## A100130.P8284292239280927774

`∑{#}[n, A124863(#)*A124863(n-#)]`
-/

namespace A100130.P8284292239280927774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A124863 k * A124863 (n - k)

end

end A100130.P8284292239280927774

/-! ## A100130.P15948856572431424280

`A014103(n+1)/(1-A010873(2*n))`
-/

namespace A100130.P15948856572431424280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014103 (n + 1) : ℚ) / (1 - A010873 (2 * n) : ℚ)

end

end A100130.P15948856572431424280

/-! ## A100130.P12847170081338969872

`A014103(n+1)*A143621(A008574(n))`
-/

namespace A100130.P12847170081338969872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014103 (n + 1) * A143621 (A008574 n).toNat

end

end A100130.P12847170081338969872

/-!
# A100131: a(n) = Sum_{k=0..floor(n/4)} binomial(n-2k, 2k)*2^(n-4k).

The programs for A100131, the canonical program `A100131.P2554973005229394950` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100131 has offset 0).

The definition of A100131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100131.P5032134964901190543

`ogf((1-2x)/(1-4x+4x^2-x^4))`
-/

namespace A100131.P5032134964901190543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, 0, -1] n

end

end A100131.P5032134964901190543

namespace A100131

/-- `ogf((1-2x)/(1-4x+4x^2-x^4))` -/
def P5032134964901190543.Spec : Prop :=
  ∀ n, P5032134964901190543.a n = A100131 n

end A100131

/-! ## A100131.P2554973005229394950

`4*a(n-1)-4*a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100131

/-- `4*a(n-1)-4*a(n-2)+a(n-4)` -/
def P2554973005229394950.Spec : Prop :=
  ∀ n, P2554973005229394950.a n = A100131 n

theorem P2554973005229394950.correct : P2554973005229394950.Spec := by
  intro n
  simp only [A100131]

end A100131

/-! ## A100131.P6799643652410265835

`1/2*(A000129(n+1)+n+1)`
-/

namespace A100131.P6799643652410265835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000129 (n + 1) + (n : ℤ) + 1 : ℚ)

end

end A100131.P6799643652410265835

namespace A100131

/-- `1/2*(A000129(n+1)+n+1)` -/
def P6799643652410265835.Spec : Prop :=
  ∀ n, P6799643652410265835.a n = (A100131 n : ℚ)

end A100131

/-! ## A100131.P17410295538961131837

`∑{#}[n, (1-#)*A000129(n-#+1)]`
-/

namespace A100131.P17410295538961131837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 - (k : ℤ)) * A000129 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A100131.P17410295538961131837

namespace A100131

/-- `∑{#}[n, (1-#)*A000129(n-#+1)]` -/
def P17410295538961131837.Spec : Prop :=
  ∀ n, P17410295538961131837.a n = A100131 n

end A100131

/-! ## A100131.P17475608170464976279

`∑[ogf((1-2x)/(1-3x+x^2+x^3))]`
-/

namespace A100131.P17475608170464976279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P17475608170464976279

namespace A100131

/-- `∑[ogf((1-2x)/(1-3x+x^2+x^3))]` -/
def P17475608170464976279.Spec : Prop :=
  ∀ n, P17475608170464976279.a n = A100131 n

end A100131

/-! ## A100131.P8869061643691522788

`∑[∑[a(n-2)+2*a(n-1)]]` with `a(0)=1, a(1)=0`
-/

namespace A100131.P8869061643691522788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P8869061643691522788

namespace A100131

/-- `∑[∑[a(n-2)+2*a(n-1)]]` -/
def P8869061643691522788.Spec : Prop :=
  ∀ n, (P8869061643691522788.a n : ℤ) = A100131 n

end A100131

/-! ## A100131.P4871398037135304448

`∑[2*a(n-1)-(1-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A100131.P4871398037135304448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P4871398037135304448

namespace A100131

/-- `∑[2*a(n-1)-(1-a(n-2))]` -/
def P4871398037135304448.Spec : Prop :=
  ∀ n, P4871398037135304448.a n = A100131 n

end A100131

/-! ## A100131.P3650840160265507837

`1-n+a(n-2)+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A100131.P3650840160265507837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (n : ℤ) + (a (n - 2) + 2 * a (n - 1))

end

end A100131.P3650840160265507837

namespace A100131

/-- `1-n+a(n-2)+2*a(n-1)` -/
def P3650840160265507837.Spec : Prop :=
  ∀ n, P3650840160265507837.a n = A100131 n

end A100131

/-! ## A100131.P591209704380828314

`1-(n-2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A100131.P591209704380828314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ((n : ℤ) - 2 * a (n - 1) - a (n - 2))

end

end A100131.P591209704380828314

namespace A100131

/-- `1-(n-2*a(n-1)-a(n-2))` -/
def P591209704380828314.Spec : Prop :=
  ∀ n, P591209704380828314.a n = A100131 n

end A100131

/-! ## A100131.P12907198299691538252

`∑[∑[a(n-1)+a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=0`
-/

namespace A100131.P12907198299691538252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P12907198299691538252

namespace A100131

/-- `∑[∑[a(n-1)+a(n-1)+a(n-2)]]` -/
def P12907198299691538252.Spec : Prop :=
  ∀ n, (P12907198299691538252.a n : ℤ) = A100131 n

end A100131

/-! ## A100131.P16344930248377427323

`∑[a(n-1)-(1-a(n-1)-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A100131.P16344930248377427323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P16344930248377427323

namespace A100131

/-- `∑[a(n-1)-(1-a(n-1)-a(n-2))]` -/
def P16344930248377427323.Spec : Prop :=
  ∀ n, P16344930248377427323.a n = A100131 n

end A100131

/-! ## A100131.P16927607164531590431

`1-n+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A100131.P16927607164531590431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (n : ℤ) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A100131.P16927607164531590431

namespace A100131

/-- `1-n+a(n-1)+a(n-1)+a(n-2)` -/
def P16927607164531590431.Spec : Prop :=
  ∀ n, P16927607164531590431.a n = A100131 n

end A100131

/-! ## A100131.P9642285662343831590

`1-(n-a(n-1)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A100131.P9642285662343831590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ((n : ℤ) - a (n - 1) - a (n - 1) - a (n - 2))

end

end A100131.P9642285662343831590

namespace A100131

/-- `1-(n-a(n-1)-a(n-1)-a(n-2))` -/
def P9642285662343831590.Spec : Prop :=
  ∀ n, P9642285662343831590.a n = A100131 n

end A100131

/-! ## A100131.P5139011331427801852

`∑[A171842(n)]`
-/

namespace A100131.P5139011331427801852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P5139011331427801852

namespace A100131

/-- `∑[A171842(n)]` -/
def P5139011331427801852.Spec : Prop :=
  ∀ n, P5139011331427801852.a n = A100131 n

end A100131

/-! ## A100131.P12927982052638801937

`A307465(n)+n`
-/

namespace A100131.P12927982052638801937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 n + (n : ℤ)

end

end A100131.P12927982052638801937

namespace A100131

/-- `A307465(n)+n` -/
def P12927982052638801937.Spec : Prop :=
  ∀ n, P12927982052638801937.a n = A100131 n

end A100131

/-! ## A100131.P7297179160581570105

`∑[A247311(3*n)]`
-/

namespace A100131.P7297179160581570105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P7297179160581570105

namespace A100131

/-- `∑[A247311(3*n)]` -/
def P7297179160581570105.Spec : Prop :=
  ∀ n, P7297179160581570105.a n = A100131 n

end A100131

/-! ## A100131.P6782083323620178154

`∑[∑[abs(A176981(n))]]`
-/

namespace A100131.P6782083323620178154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P6782083323620178154

namespace A100131

/-- `∑[∑[abs(A176981(n))]]` -/
def P6782083323620178154.Spec : Prop :=
  ∀ n, P6782083323620178154.a n = A100131 n

end A100131

/-! ## A100131.P12680730914936722974

`∑[ceil(A001333(n)/2)]`
-/

namespace A100131.P12680730914936722974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001333 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P12680730914936722974

namespace A100131

/-- `∑[ceil(A001333(n)/2)]` -/
def P12680730914936722974.Spec : Prop :=
  ∀ n, P12680730914936722974.a n = A100131 n

end A100131

/-! ## A100131.P7738767462749256138

`∑[A293004(n)/2+1]`
-/

namespace A100131.P7738767462749256138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P7738767462749256138

namespace A100131

/-- `∑[A293004(n)/2+1]` -/
def P7738767462749256138.Spec : Prop :=
  ∀ n, P7738767462749256138.a n = (A100131 n : ℚ)

end A100131

/-! ## A100131.P3367514699120539238

`∑[∑[abs(A215936(n+1))]]`
-/

namespace A100131.P3367514699120539238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215936 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100131.P3367514699120539238

namespace A100131

/-- `∑[∑[abs(A215936(n+1))]]` -/
def P3367514699120539238.Spec : Prop :=
  ∀ n, P3367514699120539238.a n = A100131 n

end A100131

/-!
# A100132: a(n) = Sum_{k=0..floor(n/4)} C(n-2k,2k) * 2^(n-3k).

The programs for A100132, the canonical program `A100132.P5303401208046680574` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100132 has offset 0).

The definition of A100132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100132.P5303401208046680574

`ogf((1-2x)/(1-4x+4x^2-2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100132

/-- `ogf((1-2x)/(1-4x+4x^2-2x^4))` -/
def P5303401208046680574.Spec : Prop :=
  ∀ n, P5303401208046680574.a n = A100132 n

theorem P5303401208046680574.correct : P5303401208046680574.Spec := by
  intro n
  simp only [A100132]

end A100132

/-! ## A100132.P2095864117054597288

`4*a(n-1)-4*a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A100132.P2095864117054597288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 4)

end

end A100132.P2095864117054597288

namespace A100132

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)` -/
def P2095864117054597288.Spec : Prop :=
  ∀ n, P2095864117054597288.a n = A100132 n

end A100132

/-! ## A100132.P15957540634730269207

`∑[A209230(n)]-A135248(n)`
-/

namespace A100132.P15957540634730269207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135248 n

end

end A100132.P15957540634730269207

namespace A100132

/-- `∑[A209230(n)]-A135248(n)` -/
def P15957540634730269207.Spec : Prop :=
  ∀ n, P15957540634730269207.a n = A100132 n

end A100132

/-! ## A100132.P773122433713013553

`A101893(n+2)-A135248(n+2)`
-/

namespace A100132.P773122433713013553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101893 (n + 2) - A135248 (n + 2)

end

end A100132.P773122433713013553

namespace A100132

/-- `A101893(n+2)-A135248(n+2)` -/
def P773122433713013553.Spec : Prop :=
  ∀ n, P773122433713013553.a n = A100132 n

end A100132

/-! ## A100132.P15002227958240770320

`A101893(n+2)-∑[A101893(n+1)]`
-/

namespace A100132.P15002227958240770320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101893 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100132.P15002227958240770320

namespace A100132

/-- `A101893(n+2)-∑[A101893(n+1)]` -/
def P15002227958240770320.Spec : Prop :=
  ∀ n, P15002227958240770320.a n = A100132 n

end A100132

/-! ## A100132.P15432501717979593407

`Δ[Δ[A135248(n+1)]]-A135248(n+1)`
-/

namespace A100132.P15432501717979593407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135248 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135248 (n + 1)

end

end A100132.P15432501717979593407

namespace A100132

/-- `Δ[Δ[A135248(n+1)]]-A135248(n+1)` -/
def P15432501717979593407.Spec : Prop :=
  ∀ n, P15432501717979593407.a n = A100132 n

end A100132

/-! ## A100132.P826123137245907397

`A135248(n+3)-(A135248(n+2)+A135248(n+2))`
-/

namespace A100132.P826123137245907397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135248 (n + 3) - (A135248 (n + 2) + A135248 (n + 2))

end

end A100132.P826123137245907397

namespace A100132

/-- `A135248(n+3)-(A135248(n+2)+A135248(n+2))` -/
def P826123137245907397.Spec : Prop :=
  ∀ n, P826123137245907397.a n = A100132 n

end A100132

/-!
# A100133: a(n) = Sum_{k=0..floor(n/4)} C(n-2k,2k) * 3^k * 2^(n-4k).

The programs for A100133, the canonical program `A100133.P2402813484149022436` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100133 has offset 0).

The definition of A100133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100133.P9999033534001756440

`ogf((1-2x)/(1-4x+4x^2-3x^4))`
-/

namespace A100133.P9999033534001756440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, 0, -3] n

end

end A100133.P9999033534001756440

namespace A100133

/-- `ogf((1-2x)/(1-4x+4x^2-3x^4))` -/
def P9999033534001756440.Spec : Prop :=
  ∀ n, P9999033534001756440.a n = A100133 n

end A100133

/-! ## A100133.P2402813484149022436

`4*a(n-1)-4*a(n-2)+3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100133

/-- `4*a(n-1)-4*a(n-2)+3*a(n-4)` -/
def P2402813484149022436.Spec : Prop :=
  ∀ n, P2402813484149022436.a n = A100133 n

theorem P2402813484149022436.correct : P2402813484149022436.Spec := by
  intro n
  simp only [A100133]

end A100133

/-! ## A100133.P5303427833727894891

`A054846(or(n+1, A090017(n)))`
-/

namespace A100133.P5303427833727894891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.lor (n + 1 : ℤ) (A090017 n)).toNat

end

end A100133.P5303427833727894891

namespace A100133

/-- `A054846(or(n+1, A090017(n)))` -/
def P5303427833727894891.Spec : Prop :=
  ∀ n, P5303427833727894891.a n = A100133 n

end A100133

/-! ## A100133.P12990512213254091033

`∑[A307564(n)]+A071585(floor(4^n/3))-2^n`
-/

namespace A100133.P12990512213254091033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A071585 ⌊(4 ^ n : ℚ) / 3⌋.toNat - (2 ^ n : ℤ))

end

end A100133.P12990512213254091033

namespace A100133

/-- `∑[A307564(n)]+A071585(floor(4^n/3))-2^n` -/
def P12990512213254091033.Spec : Prop :=
  ∀ n, P12990512213254091033.a n = A100133 n

end A100133

/-!
# A100134: a(n) = Sum_{k=0..floor(n/6)} binomial(n-3k,3k).

The programs for A100134, the canonical program `A100134.P7412550386063565652` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100134 has offset 0).

The definition of A100134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100134.P17449516505060548977

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-x^6))`
-/

namespace A100134.P17449516505060548977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -1, 0, 0, -1] n

end

end A100134.P17449516505060548977

namespace A100134

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-x^6))` -/
def P17449516505060548977.Spec : Prop :=
  ∀ n, P17449516505060548977.a n = A100134 n

end A100134

/-! ## A100134.P7412550386063565652

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100134

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-6)` -/
def P7412550386063565652.Spec : Prop :=
  ∀ n, P7412550386063565652.a n = A100134 n

theorem P7412550386063565652.correct : P7412550386063565652.Spec := by
  intro n
  simp only [A100134]

end A100134

/-! ## A100134.P4509379640497319800

`A101551(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A100134.P4509379640497319800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A101551 (n - 2) + a (n - 1)

end

end A100134.P4509379640497319800

namespace A100134

/-- `A101551(n-2)+a(n-1)` -/
def P4509379640497319800.Spec : Prop :=
  ∀ n, P4509379640497319800.a n = A100134 n

end A100134

/-! ## A100134.P2209122594191466544

`A101551(n)-Δ[Δ[A199802(n)]]`
-/

namespace A100134.P2209122594191466544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 n - (f1 (n + 1) - f1 n)

end

end A100134.P2209122594191466544

namespace A100134

/-- `A101551(n)-Δ[Δ[A199802(n)]]` -/
def P2209122594191466544.Spec : Prop :=
  ∀ n, P2209122594191466544.a n = A100134 n

end A100134

/-! ## A100134.P17788203960060762811

`Δ[A102516(n)]`
-/

namespace A100134.P17788203960060762811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100134.P17788203960060762811

namespace A100134

/-- `Δ[A102516(n)]` -/
def P17788203960060762811.Spec : Prop :=
  ∀ n, P17788203960060762811.a n = A100134 n

end A100134

/-! ## A100134.P10723098668851583378

`A102516(n+1)-A102516(n)`
-/

namespace A100134.P10723098668851583378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 (n + 1) - A102516 n

end

end A100134.P10723098668851583378

namespace A100134

/-- `A102516(n+1)-A102516(n)` -/
def P10723098668851583378.Spec : Prop :=
  ∀ n, P10723098668851583378.a n = A100134 n

end A100134

/-! ## A100134.P7429975043963166811

`Δ[Δ[A101551(n+2)]]`
-/

namespace A100134.P7429975043963166811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100134.P7429975043963166811

namespace A100134

/-- `Δ[Δ[A101551(n+2)]]` -/
def P7429975043963166811.Spec : Prop :=
  ∀ n, P7429975043963166811.a n = A100134 n

end A100134

/-! ## A100134.P7804155231689811738

`∑{#}[floor(n/6), C(n-3*#, 3*#)]`
-/

namespace A100134.P7804155231689811738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (3 * k : ℤ)).toNat (3 * k)

end

end A100134.P7804155231689811738

namespace A100134

/-- `∑{#}[floor(n/6), C(n-3*#, 3*#)]` -/
def P7804155231689811738.Spec : Prop :=
  ∀ n, (P7804155231689811738.a n : ℤ) = A100134 n

end A100134

/-! ## A100134.P8768958991883787997

`∑{#}[floor(n/2), C(n-#, #)*A079978(#)]`
-/

namespace A100134.P8768958991883787997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A079978 k

end

end A100134.P8768958991883787997

namespace A100134

/-- `∑{#}[floor(n/2), C(n-#, #)*A079978(#)]` -/
def P8768958991883787997.Spec : Prop :=
  ∀ n, P8768958991883787997.a n = A100134 n

end A100134

/-!
# A100135: a(n) = Sum_{k=0..floor(n/6)} C(n-3k,3k) * 2^k.

The programs for A100135, the canonical program `A100135.P2825251013497580403` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100135 has offset 0).

The definition of A100135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100135.P7619567025111076861

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-2x^6))`
-/

namespace A100135.P7619567025111076861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -1, 0, 0, -2] n

end

end A100135.P7619567025111076861

namespace A100135

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-2x^6))` -/
def P7619567025111076861.Spec : Prop :=
  ∀ n, P7619567025111076861.a n = A100135 n

end A100135

/-! ## A100135.P2825251013497580403

`3*a(n-1)-3*a(n-2)+a(n-3)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100135

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+2*a(n-6)` -/
def P2825251013497580403.Spec : Prop :=
  ∀ n, P2825251013497580403.a n = A100135 n

theorem P2825251013497580403.correct : P2825251013497580403.Spec := by
  intro n
  simp only [A100135]

end A100135

/-! ## A100135.P6039946605493062491

`∑{#}[floor(n/2), C(n-#, #)*A077958(#)]`
-/

namespace A100135.P6039946605493062491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A077958 k

end

end A100135.P6039946605493062491

namespace A100135

/-- `∑{#}[floor(n/2), C(n-#, #)*A077958(#)]` -/
def P6039946605493062491.Spec : Prop :=
  ∀ n, P6039946605493062491.a n = A100135 n

end A100135

/-! ## A100135.P8068473322717689403

`A393250(A004895(n+1))`
-/

namespace A100135.P8068473322717689403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393250 (A004895 (n + 1)).toNat

end

end A100135.P8068473322717689403

namespace A100135

/-- `A393250(A004895(n+1))` -/
def P8068473322717689403.Spec : Prop :=
  ∀ n, P8068473322717689403.a n = A100135 n

end A100135

/-! ## A100135.P6656646990859479307

`A393250(A004906(n+1))`
-/

namespace A100135.P6656646990859479307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393250 (A004906 (n + 1)).toNat

end

end A100135.P6656646990859479307

namespace A100135

/-- `A393250(A004906(n+1))` -/
def P6656646990859479307.Spec : Prop :=
  ∀ n, P6656646990859479307.a n = A100135 n

end A100135

/-!
# A100136: a(n) = Sum_{k=0..floor(n/6)} C(n-3k,3k) * 3^k.

The programs for A100136, the canonical program `A100136.P1395052096203129244` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100136 has offset 0).

The definition of A100136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100136.P12623975138612581735

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-3x^6))`
-/

namespace A100136.P12623975138612581735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -1, 0, 0, -3] n

end

end A100136.P12623975138612581735

namespace A100136

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-3x^6))` -/
def P12623975138612581735.Spec : Prop :=
  ∀ n, P12623975138612581735.a n = A100136 n

end A100136

/-! ## A100136.P1395052096203129244

`3*a(n-1)-3*a(n-2)+a(n-3)+3*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100136

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+3*a(n-6)` -/
def P1395052096203129244.Spec : Prop :=
  ∀ n, P1395052096203129244.a n = A100136 n

theorem P1395052096203129244.correct : P1395052096203129244.Spec := by
  intro n
  simp only [A100136]

end A100136

/-! ## A100136.P15415741781712358692

`A383952(A004895(n+1))`
-/

namespace A100136.P15415741781712358692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383952 (A004895 (n + 1)).toNat

end

end A100136.P15415741781712358692

namespace A100136

/-- `A383952(A004895(n+1))` -/
def P15415741781712358692.Spec : Prop :=
  ∀ n, P15415741781712358692.a n = A100136 n

end A100136

/-! ## A100136.P12060052842496898918

`A383952(A004906(n+1))`
-/

namespace A100136.P12060052842496898918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383952 (A004906 (n + 1)).toNat

end

end A100136.P12060052842496898918

namespace A100136

/-- `A383952(A004906(n+1))` -/
def P12060052842496898918.Spec : Prop :=
  ∀ n, P12060052842496898918.a n = A100136 n

end A100136

/-! ## A100136.P15992528411627464057

`A383952(A004917(n+1))`
-/

namespace A100136.P15992528411627464057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383952 (A004917 (n + 1)).toNat

end

end A100136.P15992528411627464057

namespace A100136

/-- `A383952(A004917(n+1))` -/
def P15992528411627464057.Spec : Prop :=
  ∀ n, P15992528411627464057.a n = A100136 n

end A100136

/-!
# A100137: a(n) = Sum_{k=0..floor(n/6)} C(n-3k,3k) * 2^(n-6k).

The programs for A100137, the canonical program `A100137.P7817660895724022503` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100137 has offset 0).

The definition of A100137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100137.P12102391261151754472

`ogf((1-4x+4x^2)/(1-6x+12x^2-8x^3-x^6))`
-/

namespace A100137.P12102391261151754472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -6, 12, -8, 0, 0, -1] n

end

end A100137.P12102391261151754472

namespace A100137

/-- `ogf((1-4x+4x^2)/(1-6x+12x^2-8x^3-x^6))` -/
def P12102391261151754472.Spec : Prop :=
  ∀ n, P12102391261151754472.a n = A100137 n

end A100137

/-! ## A100137.P7817660895724022503

`6*a(n-1)-12*a(n-2)+8*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100137

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)+a(n-6)` -/
def P7817660895724022503.Spec : Prop :=
  ∀ n, P7817660895724022503.a n = A100137 n

theorem P7817660895724022503.correct : P7817660895724022503.Spec := by
  intro n
  simp only [A100137]

end A100137

/-! ## A100137.P5928552439354535125

`A373358(n)+A307089(n)`
-/

namespace A100137.P5928552439354535125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373358 n + A307089 n

end

end A100137.P5928552439354535125

namespace A100137

/-- `A373358(n)+A307089(n)` -/
def P5928552439354535125.Spec : Prop :=
  ∀ n, P5928552439354535125.a n = A100137 n

end A100137

/-! ## A100137.P3952229284723485522

`∑[A161869(n)%A099969(n)]`
-/

namespace A100137.P3952229284723485522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161869 n) (A099969 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100137.P3952229284723485522

namespace A100137

/-- `∑[A161869(n)%A099969(n)]` -/
def P3952229284723485522.Spec : Prop :=
  ∀ n, P3952229284723485522.a n = A100137 n

end A100137

/-! ## A100137.P9864906175320711905

`∑[A161869(n)]%A335698(n+1)`
-/

namespace A100137.P9864906175320711905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A335698 (n + 1))

end

end A100137.P9864906175320711905

namespace A100137

/-- `∑[A161869(n)]%A335698(n+1)` -/
def P9864906175320711905.Spec : Prop :=
  ∀ n, P9864906175320711905.a n = A100137 n

end A100137

/-!
# A100138: a(n) = Sum_{k=0..floor(n/6)} C(n-3k,3k) * 2^(n-5k).

The programs for A100138, the canonical program `A100138.P10079712863019172753` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100138 has offset 0).

The definition of A100138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100138.P8194625406971207938

`ogf((1-4x+4x^2)/(1-6x+12x^2-8x^3-2x^6))`
-/

namespace A100138.P8194625406971207938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -6, 12, -8, 0, 0, -2] n

end

end A100138.P8194625406971207938

namespace A100138

/-- `ogf((1-4x+4x^2)/(1-6x+12x^2-8x^3-2x^6))` -/
def P8194625406971207938.Spec : Prop :=
  ∀ n, P8194625406971207938.a n = A100138 n

end A100138

/-! ## A100138.P10079712863019172753

`6*a(n-1)-12*a(n-2)+8*a(n-3)+2*a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100138

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)+2*a(n-6)` -/
def P10079712863019172753.Spec : Prop :=
  ∀ n, P10079712863019172753.a n = A100138 n

theorem P10079712863019172753.correct : P10079712863019172753.Spec := by
  intro n
  simp only [A100138]

end A100138

/-! ## A100138.P603669664401044217

`A004396(A100139(n)+ceil(2^(n-1)))`
-/

namespace A100138.P603669664401044217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A100139 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A100138.P603669664401044217

namespace A100138

/-- `A004396(A100139(n)+ceil(2^(n-1)))` -/
def P603669664401044217.Spec : Prop :=
  ∀ n, P603669664401044217.a n = A100138 n

end A100138

/-! ## A100138.P3987731169271532583

`A004396(A131577(n)+A100139(n))`
-/

namespace A100138.P3987731169271532583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131577 n + A100139 n).toNat

end

end A100138.P3987731169271532583

namespace A100138

/-- `A004396(A131577(n)+A100139(n))` -/
def P3987731169271532583.Spec : Prop :=
  ∀ n, P3987731169271532583.a n = A100138 n

end A100138

/-! ## A100138.P17832494360297302221

`A092942(A131577(n)+A100139(n))`
-/

namespace A100138.P17832494360297302221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A131577 n + A100139 n).toNat

end

end A100138.P17832494360297302221

namespace A100138

/-- `A092942(A131577(n)+A100139(n))` -/
def P17832494360297302221.Spec : Prop :=
  ∀ n, P17832494360297302221.a n = A100138 n

end A100138

/-!
# A100139: a(n) = Sum_{k=0..floor(n/6)} C(n-3k,3k) * 3^k * 2^(n-6k).

The programs for A100139, the canonical program `A100139.P900819742578278259` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100139 has offset 0).

The definition of A100139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100139.P1780612429947965408

`ogf((1-4x+4x^2)/(1-6x+12x^2-8x^3-3x^6))`
-/

namespace A100139.P1780612429947965408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -6, 12, -8, 0, 0, -3] n

end

end A100139.P1780612429947965408

namespace A100139

/-- `ogf((1-4x+4x^2)/(1-6x+12x^2-8x^3-3x^6))` -/
def P1780612429947965408.Spec : Prop :=
  ∀ n, P1780612429947965408.a n = A100139 n

end A100139

/-! ## A100139.P900819742578278259

`6*a(n-1)-12*a(n-2)+8*a(n-3)+3*a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100139

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)+3*a(n-6)` -/
def P900819742578278259.Spec : Prop :=
  ∀ n, P900819742578278259.a n = A100139 n

theorem P900819742578278259.correct : P900819742578278259.Spec := by
  intro n
  simp only [A100139]

end A100139

/-! ## A100139.P15182999873315654033

`A005843(A100138(n))-A100137(n)`
-/

namespace A100139.P15182999873315654033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A100138 n).toNat - A100137 n

end

end A100139.P15182999873315654033

namespace A100139

/-- `A005843(A100138(n))-A100137(n)` -/
def P15182999873315654033.Spec : Prop :=
  ∀ n, P15182999873315654033.a n = A100139 n

end A100139

/-! ## A100139.P3958974041349565581

`A290259(record[A346699(n+1)+A097805(2*(n+1))])`
-/

namespace A100139.P3958974041349565581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (n + 1) + A097805 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290259 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100139.P3958974041349565581

namespace A100139

/-- `A290259(record[A346699(n+1)+A097805(2*(n+1))])` -/
def P3958974041349565581.Spec : Prop :=
  ∀ n, P3958974041349565581.a n = A100139 n

end A100139

/-!
# A100140: Largest denominator of greedy Egyptian fraction sum for m/n, 1 <= m <= n-1.

The programs for A100140, there is no canonical definition to state claims against.
-/

/-! ## A100140.P18004742876873395456

`lcm(n+2, A330896(∑[A198953(n)]))`
-/

namespace A100140.P18004742876873395456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A330896 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A100140.P18004742876873395456

/-! ## A100140.P8655917154430085653

`A134853(n+2)*A206563(A006882(n+1))`
-/

namespace A100140.P8655917154430085653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 2) * A206563 (A006882 (n + 1)).toNat

end

end A100140.P8655917154430085653

/-!
# A100143: Unique sequence with a(1)=1 where each a(n) occurs in the same order a(n) times consecutively in its sequence of first differences which contains no other terms.

The programs for A100143, there is no canonical definition to state claims against.
-/

/-! ## A100143.P8318718315453893346

`∑[A100144(or(1, n))]`
-/

namespace A100143.P8318718315453893346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100143.P8318718315453893346

/-! ## A100143.P12318110393798881126

`A100144(n)+a(n-1)` with `a(0)=1`
-/

namespace A100143.P12318110393798881126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100144 n + a (n - 1)

end

end A100143.P12318110393798881126

/-! ## A100143.P6977434743518616572

`∑[A100144(round(sqrt(n²+1)))]`
-/

namespace A100143.P6977434743518616572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100143.P6977434743518616572

/-! ## A100143.P17069296569698277769

`∑[A100144(n+1)]+1-A100144(n+1)`
-/

namespace A100143.P17069296569698277769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A100144 (n + 1))

end

end A100143.P17069296569698277769

/-! ## A100143.P3717567357397289526

`Δ[A100250(n+1)]`
-/

namespace A100143.P3717567357397289526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100143.P3717567357397289526

/-!
# A100144: First differences of A100143.

The programs for A100144, there is no canonical definition to state claims against.
-/

/-! ## A100144.P10390402538117586057

`Δ[A100143(n+1)]`
-/

namespace A100144.P10390402538117586057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100144.P10390402538117586057

/-! ## A100144.P8155872479916381044

`abs(Δ[A100143(2*n-(n-1))])`
-/

namespace A100144.P8155872479916381044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100144.P8155872479916381044

/-! ## A100144.P316192516281175638

`Δ[record[A100143(A020986(n))]]`
-/

namespace A100144.P316192516281175638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100144.P316192516281175638

/-! ## A100144.P7296297982703906828

`Δ[record[A100143(A133310(n))]]`
-/

namespace A100144.P7296297982703906828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100144.P7296297982703906828

/-! ## A100144.P17785789153823778024

`Δ[record[A100143(A152271(n))]]`
-/

namespace A100144.P17785789153823778024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100144.P17785789153823778024

/-! ## A100144.P1896831521436107492

`Δ[record[A100143(A344180(n))]]`
-/

namespace A100144.P1896831521436107492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100144.P1896831521436107492

/-! ## A100144.P17007951228976493952

`A100143(n+2)-A100143(n+1)`
-/

namespace A100144.P17007951228976493952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (n + 2) - A100143 (n + 1)

end

end A100144.P17007951228976493952

/-!
# A100145: Structured great rhombicosidodecahedral numbers.

The programs for A100145, the canonical program `A100145.P8552067052218240901` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100145 has offset 1).

The definition of A100145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100145.P5049972613590659134

`ogf((1+116x+105x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100145.P5049972613590659134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 116, 105] [1, -4, 6, -4, 1] n

end

end A100145.P5049972613590659134

namespace A100145

/-- `ogf((1+116x+105x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5049972613590659134.Spec : Prop :=
  ∀ n, P5049972613590659134.a n = A100145 (n + 1)

end A100145

/-! ## A100145.P8552067052218240901

`37*(n+1)^3-52*(n+1)²+16*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100145

/-- `37*(n+1)^3-52*(n+1)²+16*(n+1)` -/
def P8552067052218240901.Spec : Prop :=
  ∀ n, P8552067052218240901.a n = A100145 (n + 1)

theorem P8552067052218240901.correct : P8552067052218240901.Spec := by
  intro n
  simp only [A100145, Nat.add_sub_cancel]

end A100145

/-!
# A100146: Structured great rhombicubeoctahedral numbers.

The programs for A100146, the canonical program `A100146.P17575784243857887491` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100146 has offset 1).

The definition of A100146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100146.P7832112823397173287

`ogf((1+44x+35x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100146.P7832112823397173287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 44, 35] [1, -4, 6, -4, 1] n

end

end A100146.P7832112823397173287

namespace A100146

/-- `ogf((1+44x+35x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7832112823397173287.Spec : Prop :=
  ∀ n, P7832112823397173287.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P8745447800040307426

`1/6*(80*(n+1)^3-102*(n+1)²+28*(n+1))`
-/

namespace A100146.P8745447800040307426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((80 * (n + 1) ^ 3 : ℤ) - (102 * (n + 1) ^ 2 : ℤ) + (28 * (n + 1) : ℤ) : ℚ)

end

end A100146.P8745447800040307426

namespace A100146

/-- `1/6*(80*(n+1)^3-102*(n+1)²+28*(n+1))` -/
def P8745447800040307426.Spec : Prop :=
  ∀ n, P8745447800040307426.a n = (A100146 (n + 1) : ℚ)

theorem P8745447800040307426.correct : P8745447800040307426.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100146, Nat.add_sub_cancel, A100146.P8745447800040307426.a, A100146.P17575784243857887491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100146, Nat.add_sub_cancel, A100146.P8745447800040307426.a, A100146.P17575784243857887491.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100146

/-! ## A100146.P17575784243857887491

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=48, a(2)=221, a(3)=600`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100146

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17575784243857887491.Spec : Prop :=
  ∀ n, P17575784243857887491.a n = A100146 (n + 1)

theorem P17575784243857887491.correct : P17575784243857887491.Spec := by
  intro n
  simp only [A100146, Nat.add_sub_cancel]

end A100146

/-! ## A100146.P12011008509217567512

`2*A100161(n+1)-(n+1)²`
-/

namespace A100146.P12011008509217567512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100161 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A100146.P12011008509217567512

namespace A100146

/-- `2*A100161(n+1)-(n+1)²` -/
def P12011008509217567512.Spec : Prop :=
  ∀ n, P12011008509217567512.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P6890623745069478413

`A390140(n+1)-A007588(n)`
-/

namespace A100146.P6890623745069478413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390140 (n + 1) - A007588 n

end

end A100146.P6890623745069478413

namespace A100146

/-- `A390140(n+1)-A007588(n)` -/
def P6890623745069478413.Spec : Prop :=
  ∀ n, P6890623745069478413.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P7973670293189418924

`A213839(n+1)+A192796(n+1)`
-/

namespace A100146.P7973670293189418924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + A192796 (n + 1)

end

end A100146.P7973670293189418924

namespace A100146

/-- `A213839(n+1)+A192796(n+1)` -/
def P7973670293189418924.Spec : Prop :=
  ∀ n, P7973670293189418924.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P10230454062872912354

`A200431(n+1)+A016755(n)+n²`
-/

namespace A100146.P10230454062872912354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) + (A016755 n + (n ^ 2 : ℤ))

end

end A100146.P10230454062872912354

namespace A100146

/-- `A200431(n+1)+A016755(n)+n²` -/
def P10230454062872912354.Spec : Prop :=
  ∀ n, P10230454062872912354.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P16749107710016958532

`A007587(2*n+1)+∑[2*n]`
-/

namespace A100146.P16749107710016958532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100146.P16749107710016958532

namespace A100146

/-- `A007587(2*n+1)+∑[2*n]` -/
def P16749107710016958532.Spec : Prop :=
  ∀ n, P16749107710016958532.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P4814844687347050288

`2*A002413(2*n+1)-(n+1)²`
-/

namespace A100146.P4814844687347050288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002413 (2 * n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A100146.P4814844687347050288

namespace A100146

/-- `2*A002413(2*n+1)-(n+1)²` -/
def P4814844687347050288.Spec : Prop :=
  ∀ n, P4814844687347050288.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P17671698943991554799

`A045944(n)+A004466(2*n+1)`
-/

namespace A100146.P17671698943991554799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + A004466 (2 * n + 1)

end

end A100146.P17671698943991554799

namespace A100146

/-- `A045944(n)+A004466(2*n+1)` -/
def P17671698943991554799.Spec : Prop :=
  ∀ n, P17671698943991554799.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P16232654192508279721

`A083392(2*n)+A007587(2*n+1)`
-/

namespace A100146.P16232654192508279721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 (2 * n) + A007587 (2 * n + 1)

end

end A100146.P16232654192508279721

namespace A100146

/-- `A083392(2*n)+A007587(2*n+1)` -/
def P16232654192508279721.Spec : Prop :=
  ∀ n, P16232654192508279721.a n = A100146 (n + 1)

end A100146

/-! ## A100146.P2043274692061884753

`A212692(2*n+1)+A002413(2*n+1)`
-/

namespace A100146.P2043274692061884753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212692 (2 * n + 1) + A002413 (2 * n + 1)

end

end A100146.P2043274692061884753

namespace A100146

/-- `A212692(2*n+1)+A002413(2*n+1)` -/
def P2043274692061884753.Spec : Prop :=
  ∀ n, P2043274692061884753.a n = A100146 (n + 1)

end A100146

/-!
# A100147: Structured icosidodecahedral numbers.

The programs for A100147, the canonical program `A100147.P7949043288334720192` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100147 has offset 1).

The definition of A100147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100147.P7949043288334720192

`ogf((1+26x+21x^2)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100147

/-- `ogf((1+26x+21x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7949043288334720192.Spec : Prop :=
  ∀ n, P7949043288334720192.a n = A100147 (n + 1)

theorem P7949043288334720192.correct : P7949043288334720192.Spec := by
  intro n
  simp only [A100147, Nat.add_sub_cancel]

end A100147

/-! ## A100147.P13484664692665611004

`(n+1)*(8*(n+1)²-10*(n+1)+3)`
-/

namespace A100147.P13484664692665611004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((8 * (n + 1) ^ 2 : ℤ) - (10 * (n + 1) : ℤ) + 3)

end

end A100147.P13484664692665611004

namespace A100147

/-- `(n+1)*(8*(n+1)²-10*(n+1)+3)` -/
def P13484664692665611004.Spec : Prop :=
  ∀ n, P13484664692665611004.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P13753347736980978608

`A079588(n)`
-/

namespace A100147.P13753347736980978608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n

end

end A100147.P13753347736980978608

namespace A100147

/-- `A079588(n)` -/
def P13753347736980978608.Spec : Prop :=
  ∀ n, P13753347736980978608.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P5177712550952464280

`(n+1)*C(4*n+2, 2)`
-/

namespace A100147.P5177712550952464280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (4 * n + 2) 2

end

end A100147.P5177712550952464280

namespace A100147

/-- `(n+1)*C(4*n+2, 2)` -/
def P5177712550952464280.Spec : Prop :=
  ∀ n, (P5177712550952464280.a n : ℤ) = A100147 (n + 1)

end A100147

/-! ## A100147.P7839921457148320787

`lcm(2*n+1, ∑[8*n+1])`
-/

namespace A100147.P7839921457148320787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100147.P7839921457148320787

namespace A100147

/-- `lcm(2*n+1, ∑[8*n+1])` -/
def P7839921457148320787.Spec : Prop :=
  ∀ n, (P7839921457148320787.a n : ℤ) = A100147 (n + 1)

end A100147

/-! ## A100147.P1377450793802090557

`lcm((2*n+1)²+n, (2*n+1)²)/(2*n+1)`
-/

namespace A100147.P1377450793802090557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((2 * n + 1) ^ 2 + n) ((2 * n + 1) ^ 2) : ℚ) / (2 * n + 1 : ℚ)

end

end A100147.P1377450793802090557

namespace A100147

/-- `lcm((2*n+1)²+n, (2*n+1)²)/(2*n+1)` -/
def P1377450793802090557.Spec : Prop :=
  ∀ n, P1377450793802090557.a n = (A100147 (n + 1) : ℚ)

end A100147

/-! ## A100147.P3977954802131138990

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=30, a(2)=135, a(3)=364`
-/

namespace A100147.P3977954802131138990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30, 135, 364] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A100147.P3977954802131138990

namespace A100147

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3977954802131138990.Spec : Prop :=
  ∀ n, P3977954802131138990.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P3000605303467124223

`∑[2*A194454(n)-1]`
-/

namespace A100147.P3000605303467124223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194454 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100147.P3000605303467124223

namespace A100147

/-- `∑[2*A194454(n)-1]` -/
def P3000605303467124223.Spec : Prop :=
  ∀ n, P3000605303467124223.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P4121353893770589245

`A192796(n+1)+1+n`
-/

namespace A100147.P4121353893770589245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192796 (n + 1) + 1 + (n : ℤ)

end

end A100147.P4121353893770589245

namespace A100147

/-- `A192796(n+1)+1+n` -/
def P4121353893770589245.Spec : Prop :=
  ∀ n, P4121353893770589245.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P14023052100833858464

`(n+1)*A157870(n)/2`
-/

namespace A100147.P14023052100833858464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A157870 n : ℚ) / 2

end

end A100147.P14023052100833858464

namespace A100147

/-- `(n+1)*A157870(n)/2` -/
def P14023052100833858464.Spec : Prop :=
  ∀ n, P14023052100833858464.a n = (A100147 (n + 1) : ℚ)

end A100147

/-! ## A100147.P15242878948311119110

`n*∑[A063130(n+1)]+1`
-/

namespace A100147.P15242878948311119110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100147.P15242878948311119110

namespace A100147

/-- `n*∑[A063130(n+1)]+1` -/
def P15242878948311119110.Spec : Prop :=
  ∀ n, P15242878948311119110.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P4261438310074873631

`∑[4*n*A016921(n)+1]`
-/

namespace A100147.P4261438310074873631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A016921 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100147.P4261438310074873631

namespace A100147

/-- `∑[4*n*A016921(n)+1]` -/
def P4261438310074873631.Spec : Prop :=
  ∀ n, P4261438310074873631.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P8709924486452109029

`(4*n+3)*A046092(n)+1+n`
-/

namespace A100147.P8709924486452109029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A046092 n + 1 + (n : ℤ)

end

end A100147.P8709924486452109029

namespace A100147

/-- `(4*n+3)*A046092(n)+1+n` -/
def P8709924486452109029.Spec : Prop :=
  ∀ n, P8709924486452109029.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P9132842279287265315

`A016755(n)+A014105(n)`
-/

namespace A100147.P9132842279287265315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n + A014105 n

end

end A100147.P9132842279287265315

namespace A100147

/-- `A016755(n)+A014105(n)` -/
def P9132842279287265315.Spec : Prop :=
  ∀ n, P9132842279287265315.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P4212511107440939959

`A055112(n)+A011199(n)`
-/

namespace A100147.P4212511107440939959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A011199 n

end

end A100147.P4212511107440939959

namespace A100147

/-- `A055112(n)+A011199(n)` -/
def P4212511107440939959.Spec : Prop :=
  ∀ n, P4212511107440939959.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P1304936975285660098

`A316224(n)+A014634(n)`
-/

namespace A100147.P1304936975285660098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + A014634 n

end

end A100147.P1304936975285660098

namespace A100147

/-- `A316224(n)+A014634(n)` -/
def P1304936975285660098.Spec : Prop :=
  ∀ n, P1304936975285660098.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P888628957583020567

`A393855(n)+A007742(n)`
-/

namespace A100147.P888628957583020567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393855 n + A007742 n

end

end A100147.P888628957583020567

namespace A100147

/-- `A393855(n)+A007742(n)` -/
def P888628957583020567.Spec : Prop :=
  ∀ n, P888628957583020567.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P3152279676159315353

`A300758(n)+A139757(n)`
-/

namespace A100147.P3152279676159315353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A139757 n

end

end A100147.P3152279676159315353

namespace A100147

/-- `A300758(n)+A139757(n)` -/
def P3152279676159315353.Spec : Prop :=
  ∀ n, P3152279676159315353.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P9146591823888284363

`A260260(n+1)+∑[n]`
-/

namespace A100147.P9146591823888284363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260260 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100147.P9146591823888284363

namespace A100147

/-- `A260260(n+1)+∑[n]` -/
def P9146591823888284363.Spec : Prop :=
  ∀ n, P9146591823888284363.a n = A100147 (n + 1)

end A100147

/-! ## A100147.P4698987574220699600

`n*A185438(n+1)+1`
-/

namespace A100147.P4698987574220699600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A185438 (n + 1) + 1

end

end A100147.P4698987574220699600

namespace A100147

/-- `n*A185438(n+1)+1` -/
def P4698987574220699600.Spec : Prop :=
  ∀ n, P4698987574220699600.a n = A100147 (n + 1)

end A100147

/-!
# A100148: Structured small rhombicosidodecahedral numbers.

The programs for A100148, the canonical program `A100148.P15920448598116505220` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100148 has offset 1).

The definition of A100148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100148.P17731168276522142431

`ogf((1+56x+51x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100148.P17731168276522142431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 56, 51] [1, -4, 6, -4, 1] n

end

end A100148.P17731168276522142431

namespace A100148

/-- `ogf((1+56x+51x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17731168276522142431.Spec : Prop :=
  ∀ n, P17731168276522142431.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P17056455314472526614

`(108*(n+1)^3-150*(n+1)²+48*(n+1))/6`
-/

namespace A100148.P17056455314472526614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((108 * (n + 1) ^ 3 : ℤ) - (150 * (n + 1) ^ 2 : ℤ) + (48 * (n + 1) : ℤ) : ℚ) / 6

end

end A100148.P17056455314472526614

namespace A100148

/-- `(108*(n+1)^3-150*(n+1)²+48*(n+1))/6` -/
def P17056455314472526614.Spec : Prop :=
  ∀ n, P17056455314472526614.a n = (A100148 (n + 1) : ℚ)

theorem P17056455314472526614.correct : P17056455314472526614.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P17056455314472526614.a, A100148.P15920448598116505220.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P17056455314472526614.a, A100148.P15920448598116505220.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100148

/-! ## A100148.P15920448598116505220

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=60, a(2)=285, a(3)=784`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100148

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15920448598116505220.Spec : Prop :=
  ∀ n, P15920448598116505220.a n = A100148 (n + 1)

theorem P15920448598116505220.correct : P15920448598116505220.Spec := by
  intro n
  simp only [A100148, Nat.add_sub_cancel]

end A100148

/-! ## A100148.P6674055542941742749

`(n+1)*A033573(n)`
-/

namespace A100148.P6674055542941742749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033573 n

end

end A100148.P6674055542941742749

namespace A100148

/-- `(n+1)*A033573(n)` -/
def P6674055542941742749.Spec : Prop :=
  ∀ n, P6674055542941742749.a n = A100148 (n + 1)

theorem P6674055542941742749.correct : P6674055542941742749.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P6674055542941742749.a, A100148.P15920448598116505220.a, A033573, A033573.P5635402715111793120.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P6674055542941742749.a, A100148.P15920448598116505220.a, A033573, A033573.P5635402715111793120.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P900010423904494916

`∑[A158646(n)+4*n]`
-/

namespace A100148.P900010423904494916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158646 n + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100148.P900010423904494916

namespace A100148

/-- `∑[A158646(n)+4*n]` -/
def P900010423904494916.Spec : Prop :=
  ∀ n, P900010423904494916.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P7950802580799859378

`(n+1)*(A081275(n)-n)`
-/

namespace A100148.P7950802580799859378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A081275 n - (n : ℤ))

end

end A100148.P7950802580799859378

namespace A100148

/-- `(n+1)*(A081275(n)-n)` -/
def P7950802580799859378.Spec : Prop :=
  ∀ n, P7950802580799859378.a n = A100148 (n + 1)

theorem P7950802580799859378.correct : P7950802580799859378.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P7950802580799859378.a, A100148.P15920448598116505220.a, A081275, A081275.P11714172675934927490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P7950802580799859378.a, A100148.P15920448598116505220.a, A081275, A081275.P11714172675934927490.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P18430218668145971819

`A160674(n)-A099721(n)`
-/

namespace A100148.P18430218668145971819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A099721 n

end

end A100148.P18430218668145971819

namespace A100148

/-- `A160674(n)-A099721(n)` -/
def P18430218668145971819.Spec : Prop :=
  ∀ n, P18430218668145971819.a n = A100148 (n + 1)

theorem P18430218668145971819.correct : P18430218668145971819.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P18430218668145971819.a, A100148.P15920448598116505220.a, A099721, A099721.P13421266014638133477.a, A160674, A160674.P9701766189526379957.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P18430218668145971819.a, A100148.P15920448598116505220.a, A099721, A099721.P13421266014638133477.a, A160674, A160674.P9701766189526379957.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P4221404530464476326

`A135503(n)+A100154(n+1)`
-/

namespace A100148.P4221404530464476326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A100154 (n + 1)

end

end A100148.P4221404530464476326

namespace A100148

/-- `A135503(n)+A100154(n+1)` -/
def P4221404530464476326.Spec : Prop :=
  ∀ n, P4221404530464476326.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P1211971082232262323

`A100166(n+1)-A006331(n)`
-/

namespace A100148.P1211971082232262323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100166 (n + 1) - A006331 n

end

end A100148.P1211971082232262323

namespace A100148

/-- `A100166(n+1)-A006331(n)` -/
def P1211971082232262323.Spec : Prop :=
  ∀ n, P1211971082232262323.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P14557785572724933636

`A100159(n+1)-A011379(n)`
-/

namespace A100148.P14557785572724933636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100159 (n + 1) - A011379 n

end

end A100148.P14557785572724933636

namespace A100148

/-- `A100159(n+1)-A011379(n)` -/
def P14557785572724933636.Spec : Prop :=
  ∀ n, P14557785572724933636.a n = A100148 (n + 1)

theorem P14557785572724933636.correct : P14557785572724933636.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P14557785572724933636.a, A100148.P15920448598116505220.a, A011379, A011379.P13170028565952122956.a, A100159, A100159.P820570946566383738.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P14557785572724933636.a, A100148.P15920448598116505220.a, A011379, A011379.P13170028565952122956.a, A100159, A100159.P820570946566383738.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P47963387357190382

`A100160(n+1)-A268684(n)`
-/

namespace A100148.P47963387357190382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100160 (n + 1) - A268684 n

end

end A100148.P47963387357190382

namespace A100148

/-- `A100160(n+1)-A268684(n)` -/
def P47963387357190382.Spec : Prop :=
  ∀ n, P47963387357190382.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P7678092999457581593

`A338588(n)-A069129(n+1)`
-/

namespace A100148.P7678092999457581593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338588 n - A069129 (n + 1)

end

end A100148.P7678092999457581593

namespace A100148

/-- `A338588(n)-A069129(n+1)` -/
def P7678092999457581593.Spec : Prop :=
  ∀ n, P7678092999457581593.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P4535398214062027279

`A338109(n)+n-A000384(n)`
-/

namespace A100148.P4535398214062027279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338109 n + ((n : ℤ) - A000384 n)

end

end A100148.P4535398214062027279

namespace A100148

/-- `A338109(n)+n-A000384(n)` -/
def P4535398214062027279.Spec : Prop :=
  ∀ n, P4535398214062027279.a n = A100148 (n + 1)

theorem P4535398214062027279.correct : P4535398214062027279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P4535398214062027279.a, A100148.P15920448598116505220.a, A000384, A000384.P5392390561999168282.a, A338109, A338109.P16209479355352017413.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P4535398214062027279.a, A100148.P15920448598116505220.a, A000384, A000384.P5392390561999168282.a, A338109, A338109.P16209479355352017413.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P1395596472147085078

`A100159(n+1)-(A000578(n)+n²)`
-/

namespace A100148.P1395596472147085078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100159 (n + 1) - (A000578 n + (n ^ 2 : ℤ))

end

end A100148.P1395596472147085078

namespace A100148

/-- `A100159(n+1)-(A000578(n)+n²)` -/
def P1395596472147085078.Spec : Prop :=
  ∀ n, P1395596472147085078.a n = A100148 (n + 1)

theorem P1395596472147085078.correct : P1395596472147085078.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P1395596472147085078.a, A100148.P15920448598116505220.a, A000578, A000578.P12162961755414704816.a, A100159, A100159.P820570946566383738.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P1395596472147085078.a, A100148.P15920448598116505220.a, A000578, A000578.P12162961755414704816.a, A100159, A100159.P820570946566383738.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P13575914543065666339

`A005843(n+1)*A016778(n)-(n+1)²`
-/

namespace A100148.P13575914543065666339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A016778 n - ((n + 1) ^ 2 : ℤ)

end

end A100148.P13575914543065666339

namespace A100148

/-- `A005843(n+1)*A016778(n)-(n+1)²` -/
def P13575914543065666339.Spec : Prop :=
  ∀ n, P13575914543065666339.a n = A100148 (n + 1)

theorem P13575914543065666339.correct : P13575914543065666339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P13575914543065666339.a, A100148.P15920448598116505220.a, A005843, A005843.P3167286115683555970.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P13575914543065666339.a, A100148.P15920448598116505220.a, A005843, A005843.P3167286115683555970.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-! ## A100148.P3312099572622634140

`A100149(n+1)+A100151(n+1)-A100150(n+1)`
-/

namespace A100148.P3312099572622634140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) + (A100151 (n + 1) - A100150 (n + 1))

end

end A100148.P3312099572622634140

namespace A100148

/-- `A100149(n+1)+A100151(n+1)-A100150(n+1)` -/
def P3312099572622634140.Spec : Prop :=
  ∀ n, P3312099572622634140.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P9469475201898191631

`A100149(n+1)+A100154(n+1)-A100155(n+1)`
-/

namespace A100148.P9469475201898191631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) + (A100154 (n + 1) - A100155 (n + 1))

end

end A100148.P9469475201898191631

namespace A100148

/-- `A100149(n+1)+A100154(n+1)-A100155(n+1)` -/
def P9469475201898191631.Spec : Prop :=
  ∀ n, P9469475201898191631.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P1792023793141016944

`A100154(n+1)+A100155(n+1)-A100152(n+1)`
-/

namespace A100148.P1792023793141016944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100154 (n + 1) + (A100155 (n + 1) - A100152 (n + 1))

end

end A100148.P1792023793141016944

namespace A100148

/-- `A100154(n+1)+A100155(n+1)-A100152(n+1)` -/
def P1792023793141016944.Spec : Prop :=
  ∀ n, P1792023793141016944.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P15622974606380137182

`A100154(n+1)+A100168(n+1)-A100167(n+1)`
-/

namespace A100148.P15622974606380137182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100154 (n + 1) + (A100168 (n + 1) - A100167 (n + 1))

end

end A100148.P15622974606380137182

namespace A100148

/-- `A100154(n+1)+A100168(n+1)-A100167(n+1)` -/
def P15622974606380137182.Spec : Prop :=
  ∀ n, P15622974606380137182.a n = A100148 (n + 1)

end A100148

/-! ## A100148.P8731251076402323277

`Δ[n²]*A051872(n+1)`
-/

namespace A100148.P8731251076402323277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A051872 (n + 1)

end

end A100148.P8731251076402323277

namespace A100148

/-- `Δ[n²]*A051872(n+1)` -/
def P8731251076402323277.Spec : Prop :=
  ∀ n, P8731251076402323277.a n = A100148 (n + 1)

theorem P8731251076402323277.correct : P8731251076402323277.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100148, Nat.add_sub_cancel, A100148.P8731251076402323277.f1, A100148.P8731251076402323277.a, A100148.P15920448598116505220.a, A051872, A051872.P14981514250328426150.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100148, Nat.add_sub_cancel, A100148.P8731251076402323277.f1, A100148.P8731251076402323277.a, A100148.P15920448598116505220.a, A051872, A051872.P14981514250328426150.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100148

/-!
# A100149: Structured small rhombicubeoctahedral numbers.

The programs for A100149, the canonical program `A100149.P2460016128098821986` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100149 has offset 1).

The definition of A100149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100149.P11904240847688604020

`ogf((1+20x+16x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100149.P11904240847688604020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20, 16] [1, -4, 6, -4, 1] n

end

end A100149.P11904240847688604020

namespace A100149

/-- `ogf((1+20x+16x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P11904240847688604020.Spec : Prop :=
  ∀ n, P11904240847688604020.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P2670541776875524680

`1/6*(37*(n+1)^3-45*(n+1)²+14*(n+1))`
-/

namespace A100149.P2670541776875524680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((37 * (n + 1) ^ 3 : ℤ) - (45 * (n + 1) ^ 2 : ℤ) + (14 * (n + 1) : ℤ) : ℚ)

end

end A100149.P2670541776875524680

namespace A100149

/-- `1/6*(37*(n+1)^3-45*(n+1)²+14*(n+1))` -/
def P2670541776875524680.Spec : Prop :=
  ∀ n, P2670541776875524680.a n = (A100149 (n + 1) : ℚ)

theorem P2670541776875524680.correct : P2670541776875524680.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100149, Nat.add_sub_cancel, A100149.P2670541776875524680.a, A100149.P2460016128098821986.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100149, Nat.add_sub_cancel, A100149.P2670541776875524680.a, A100149.P2460016128098821986.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100149

/-! ## A100149.P2460016128098821986

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=24, a(2)=106, a(3)=284`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100149

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2460016128098821986.Spec : Prop :=
  ∀ n, P2460016128098821986.a n = A100149 (n + 1)

theorem P2460016128098821986.correct : P2460016128098821986.Spec := by
  intro n
  simp only [A100149, Nat.add_sub_cancel]

end A100149

/-! ## A100149.P17233314174404521600

`∑[3*C(n, 2)]+∑[n*(17*n+5)+1]`
-/

namespace A100149.P17233314174404521600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (17 * n + 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100149.P17233314174404521600

namespace A100149

/-- `∑[3*C(n, 2)]+∑[n*(17*n+5)+1]` -/
def P17233314174404521600.Spec : Prop :=
  ∀ n, (P17233314174404521600.a n : ℤ) = A100149 (n + 1)

end A100149

/-! ## A100149.P11350127388944383334

`A304993(n)+A027849(n)`
-/

namespace A100149.P11350127388944383334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A027849 n

end

end A100149.P11350127388944383334

namespace A100149

/-- `A304993(n)+A027849(n)` -/
def P11350127388944383334.Spec : Prop :=
  ∀ n, P11350127388944383334.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P4614631398180903525

`A016755(n)-A215646(n)`
-/

namespace A100149.P4614631398180903525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A215646 n

end

end A100149.P4614631398180903525

namespace A100149

/-- `A016755(n)-A215646(n)` -/
def P4614631398180903525.Spec : Prop :=
  ∀ n, P4614631398180903525.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P8505925387010651624

`A100184(n+1)+A027903(n)`
-/

namespace A100149.P8505925387010651624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100184 (n + 1) + A027903 n

end

end A100149.P8505925387010651624

namespace A100149

/-- `A100184(n+1)+A027903(n)` -/
def P8505925387010651624.Spec : Prop :=
  ∀ n, P8505925387010651624.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P6628549629523893021

`A214092(n+1)+A000292(n)`
-/

namespace A100149.P6628549629523893021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1) + A000292 n

end

end A100149.P6628549629523893021

namespace A100149

/-- `A214092(n+1)+A000292(n)` -/
def P6628549629523893021.Spec : Prop :=
  ∀ n, P6628549629523893021.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P14489736370910921866

`A135503(n)+A100155(n+1)`
-/

namespace A100149.P14489736370910921866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A100155 (n + 1)

end

end A100149.P14489736370910921866

namespace A100149

/-- `A135503(n)+A100155(n+1)` -/
def P14489736370910921866.Spec : Prop :=
  ∀ n, P14489736370910921866.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P11423071609073552265

`A213839(n+1)+A162148(n)`
-/

namespace A100149.P11423071609073552265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + A162148 n

end

end A100149.P11423071609073552265

namespace A100149

/-- `A213839(n+1)+A162148(n)` -/
def P11423071609073552265.Spec : Prop :=
  ∀ n, P11423071609073552265.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P4443560849228429386

`A299646(n)+A092966(n+1)`
-/

namespace A100149.P4443560849228429386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n + A092966 (n + 1)

end

end A100149.P4443560849228429386

namespace A100149

/-- `A299646(n)+A092966(n+1)` -/
def P4443560849228429386.Spec : Prop :=
  ∀ n, P4443560849228429386.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P7701424490903464068

`A300758(n)+A100183(n+1)`
-/

namespace A100149.P7701424490903464068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A100183 (n + 1)

end

end A100149.P7701424490903464068

namespace A100149

/-- `A300758(n)+A100183(n+1)` -/
def P7701424490903464068.Spec : Prop :=
  ∀ n, P7701424490903464068.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P16855355711925896926

`A257093(n)+A213832(n+1)`
-/

namespace A100149.P16855355711925896926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n + A213832 (n + 1)

end

end A100149.P16855355711925896926

namespace A100149

/-- `A257093(n)+A213832(n+1)` -/
def P16855355711925896926.Spec : Prop :=
  ∀ n, P16855355711925896926.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P11522458809564293222

`A100161(n+1)-A006002(n)`
-/

namespace A100149.P11522458809564293222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (n + 1) - A006002 n

end

end A100149.P11522458809564293222

namespace A100149

/-- `A100161(n+1)-A006002(n)` -/
def P11522458809564293222.Spec : Prop :=
  ∀ n, P11522458809564293222.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P4495562020701532966

`A100173(n+1)-A027903(n)`
-/

namespace A100149.P4495562020701532966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100173 (n + 1) - A027903 n

end

end A100149.P4495562020701532966

namespace A100149

/-- `A100173(n+1)-A027903(n)` -/
def P4495562020701532966.Spec : Prop :=
  ∀ n, P4495562020701532966.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P10613337242086659501

`∑[A069099(n+1)+A064761(n)]`
-/

namespace A100149.P10613337242086659501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) + A064761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100149.P10613337242086659501

namespace A100149

/-- `∑[A069099(n+1)+A064761(n)]` -/
def P10613337242086659501.Spec : Prop :=
  ∀ n, P10613337242086659501.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P3921148439566870180

`∑[A152745(n)+A069130(n+1)]`
-/

namespace A100149.P3921148439566870180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152745 n + A069130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100149.P3921148439566870180

namespace A100149

/-- `∑[A152745(n)+A069130(n+1)]` -/
def P3921148439566870180.Spec : Prop :=
  ∀ n, P3921148439566870180.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P17608112055941849270

`A100148(n+1)+A100150(n+1)-A100151(n+1)`
-/

namespace A100149.P17608112055941849270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100150 (n + 1) - A100151 (n + 1))

end

end A100149.P17608112055941849270

namespace A100149

/-- `A100148(n+1)+A100150(n+1)-A100151(n+1)` -/
def P17608112055941849270.Spec : Prop :=
  ∀ n, P17608112055941849270.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P4437763759395901556

`A100152(n+1)+A100154(n+1)-A100153(n+1)`
-/

namespace A100149.P4437763759395901556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100152 (n + 1) + (A100154 (n + 1) - A100153 (n + 1))

end

end A100149.P4437763759395901556

namespace A100149

/-- `A100152(n+1)+A100154(n+1)-A100153(n+1)` -/
def P4437763759395901556.Spec : Prop :=
  ∀ n, P4437763759395901556.a n = A100149 (n + 1)

end A100149

/-! ## A100149.P18198628566198430228

`A100155(n+1)+A100155(n+1)-A100152(n+1)`
-/

namespace A100149.P18198628566198430228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100155 (n + 1) + (A100155 (n + 1) - A100152 (n + 1))

end

end A100149.P18198628566198430228

namespace A100149

/-- `A100155(n+1)+A100155(n+1)-A100152(n+1)` -/
def P18198628566198430228.Spec : Prop :=
  ∀ n, P18198628566198430228.a n = A100149 (n + 1)

end A100149

/-!
# A100150: Structured snub cubic numbers.

The programs for A100150, the canonical program `A100150.P1885368394944514991` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100150 has offset 1).

The definition of A100150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100150.P4198534950273393685

`ogf((1+20x+17x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100150.P4198534950273393685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20, 17] [1, -4, 6, -4, 1] n

end

end A100150.P4198534950273393685

namespace A100150

/-- `ogf((1+20x+17x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4198534950273393685.Spec : Prop :=
  ∀ n, P4198534950273393685.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P6130953754853139668

`(n+1)*(38*(n+1)²-48*(n+1)+16)/6`
-/

namespace A100150.P6130953754853139668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((38 * (n + 1) ^ 2 : ℤ) - (48 * (n + 1) : ℤ) + 16) : ℚ) / 6

end

end A100150.P6130953754853139668

namespace A100150

/-- `(n+1)*(38*(n+1)²-48*(n+1)+16)/6` -/
def P6130953754853139668.Spec : Prop :=
  ∀ n, P6130953754853139668.a n = (A100150 (n + 1) : ℚ)

theorem P6130953754853139668.correct : P6130953754853139668.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100150, Nat.add_sub_cancel, A100150.P6130953754853139668.a, A100150.P1885368394944514991.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100150, Nat.add_sub_cancel, A100150.P6130953754853139668.a, A100150.P1885368394944514991.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100150

/-! ## A100150.P1885368394944514991

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=24, a(2)=107, a(3)=288`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100150

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1885368394944514991.Spec : Prop :=
  ∀ n, P1885368394944514991.a n = A100150 (n + 1)

theorem P1885368394944514991.correct : P1885368394944514991.Spec := by
  intro n
  simp only [A100150, Nat.add_sub_cancel]

end A100150

/-! ## A100150.P5341203863283566201

`∑[A144314(n)+n²+1]`
-/

namespace A100150.P5341203863283566201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100150.P5341203863283566201

namespace A100150

/-- `∑[A144314(n)+n²+1]` -/
def P5341203863283566201.Spec : Prop :=
  ∀ n, P5341203863283566201.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P16221414801064288929

`A214092(n+1)+∑[n²]`
-/

namespace A100150.P16221414801064288929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100150.P16221414801064288929

namespace A100150

/-- `A214092(n+1)+∑[n²]` -/
def P16221414801064288929.Spec : Prop :=
  ∀ n, P16221414801064288929.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P4618815204172721493

`∑[A003215(n)+(4*n)²]`
-/

namespace A100150.P4618815204172721493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + ((4 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100150.P4618815204172721493

namespace A100150

/-- `∑[A003215(n)+(4*n)²]` -/
def P4618815204172721493.Spec : Prop :=
  ∀ n, P4618815204172721493.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P9770837455166063833

`∑[A195319(n)+13*n²+1]`
-/

namespace A100150.P9770837455166063833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + (13 * n ^ 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100150.P9770837455166063833

namespace A100150

/-- `∑[A195319(n)+13*n²+1]` -/
def P9770837455166063833.Spec : Prop :=
  ∀ n, P9770837455166063833.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P6418099887505947025

`∑[2*n+1+A244631(n)+n]`
-/

namespace A100150.P6418099887505947025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A244631 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100150.P6418099887505947025

namespace A100150

/-- `∑[2*n+1+A244631(n)+n]` -/
def P6418099887505947025.Spec : Prop :=
  ∀ n, P6418099887505947025.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P15546983143960704577

`A027849(n)+A002492(n)`
-/

namespace A100150.P15546983143960704577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n + A002492 n

end

end A100150.P15546983143960704577

namespace A100150

/-- `A027849(n)+A002492(n)` -/
def P15546983143960704577.Spec : Prop :=
  ∀ n, P15546983143960704577.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P18119873165064362969

`A220443(n)+A220084(n)`
-/

namespace A100150.P18119873165064362969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A220084 n

end

end A100150.P18119873165064362969

namespace A100150

/-- `A220443(n)+A220084(n)` -/
def P18119873165064362969.Spec : Prop :=
  ∀ n, P18119873165064362969.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P7060130673447942198

`A400618(n)+A064043(n)`
-/

namespace A100150.P7060130673447942198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400618 n + A064043 n

end

end A100150.P7060130673447942198

namespace A100150

/-- `A400618(n)+A064043(n)` -/
def P7060130673447942198.Spec : Prop :=
  ∀ n, P7060130673447942198.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P17343533743979978937

`A302302(n)+A299646(n)`
-/

namespace A100150.P17343533743979978937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302302 n + A299646 n

end

end A100150.P17343533743979978937

namespace A100150

/-- `A302302(n)+A299646(n)` -/
def P17343533743979978937.Spec : Prop :=
  ∀ n, P17343533743979978937.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P6604076973721639339

`A034720(n+1)+A027903(n)`
-/

namespace A100150.P6604076973721639339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) + A027903 n

end

end A100150.P6604076973721639339

namespace A100150

/-- `A034720(n+1)+A027903(n)` -/
def P6604076973721639339.Spec : Prop :=
  ∀ n, P6604076973721639339.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P9481044106972229235

`A100187(n+1)+A055112(n)`
-/

namespace A100150.P9481044106972229235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100187 (n + 1) + A055112 n

end

end A100150.P9481044106972229235

namespace A100150

/-- `A100187(n+1)+A055112(n)` -/
def P9481044106972229235.Spec : Prop :=
  ∀ n, P9481044106972229235.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P10150238480249172997

`A200431(n+1)+A053698(n)`
-/

namespace A100150.P10150238480249172997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) + A053698 n

end

end A100150.P10150238480249172997

namespace A100150

/-- `A200431(n+1)+A053698(n)` -/
def P10150238480249172997.Spec : Prop :=
  ∀ n, P10150238480249172997.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P6515135465180850527

`A213832(n+1)+A050409(n)`
-/

namespace A100150.P6515135465180850527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) + A050409 n

end

end A100150.P6515135465180850527

namespace A100150

/-- `A213832(n+1)+A050409(n)` -/
def P6515135465180850527.Spec : Prop :=
  ∀ n, P6515135465180850527.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P5657398387009823768

`A100162(n+1)-A006331(n)`
-/

namespace A100150.P5657398387009823768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100162 (n + 1) - A006331 n

end

end A100150.P5657398387009823768

namespace A100150

/-- `A100162(n+1)-A006331(n)` -/
def P5657398387009823768.Spec : Prop :=
  ∀ n, P5657398387009823768.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P15608844408343332498

`A100163(n+1)-A011379(n)`
-/

namespace A100150.P15608844408343332498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100163 (n + 1) - A011379 n

end

end A100150.P15608844408343332498

namespace A100150

/-- `A100163(n+1)-A011379(n)` -/
def P15608844408343332498.Spec : Prop :=
  ∀ n, P15608844408343332498.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P18237183047676924139

`A079588(n)-A144945(n+1)`
-/

namespace A100150.P18237183047676924139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - A144945 (n + 1)

end

end A100150.P18237183047676924139

namespace A100150

/-- `A079588(n)-A144945(n+1)` -/
def P18237183047676924139.Spec : Prop :=
  ∀ n, P18237183047676924139.a n = A100150 (n + 1)

end A100150

/-! ## A100150.P818068302636179527

`∑[A069127(n+1)+A014642(n)]`
-/

namespace A100150.P818068302636179527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + A014642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100150.P818068302636179527

namespace A100150

/-- `∑[A069127(n+1)+A014642(n)]` -/
def P818068302636179527.Spec : Prop :=
  ∀ n, P818068302636179527.a n = A100150 (n + 1)

end A100150

/-!
# A100151: Structured snub dodecahedral numbers.

The programs for A100151, the canonical program `A100151.P1962865090859155034` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100151 has offset 1).

The definition of A100151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100151.P13455394064357992707

`ogf((1+56x+52x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100151.P13455394064357992707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 56, 52] [1, -4, 6, -4, 1] n

end

end A100151.P13455394064357992707

namespace A100151

/-- `ogf((1+56x+52x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13455394064357992707.Spec : Prop :=
  ∀ n, P13455394064357992707.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P15644901290104450521

`1/6*(n+1)*(109*(n+1)²-153*(n+1)+50)`
-/

namespace A100151.P15644901290104450521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n + 1 : ℚ) * ((109 * (n + 1) ^ 2 : ℤ) - (153 * (n + 1) : ℤ) + 50 : ℚ)

end

end A100151.P15644901290104450521

namespace A100151

/-- `1/6*(n+1)*(109*(n+1)²-153*(n+1)+50)` -/
def P15644901290104450521.Spec : Prop :=
  ∀ n, P15644901290104450521.a n = (A100151 (n + 1) : ℚ)

theorem P15644901290104450521.correct : P15644901290104450521.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100151, Nat.add_sub_cancel, A100151.P15644901290104450521.a, A100151.P1962865090859155034.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100151, Nat.add_sub_cancel, A100151.P15644901290104450521.a, A100151.P1962865090859155034.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100151

/-! ## A100151.P1962865090859155034

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=60, a(2)=286, a(3)=788`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100151

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1962865090859155034.Spec : Prop :=
  ∀ n, P1962865090859155034.a n = A100151 (n + 1)

theorem P1962865090859155034.correct : P1962865090859155034.Spec := by
  intro n
  simp only [A100151, Nat.add_sub_cancel]

end A100151

/-! ## A100151.P918129202458230061

`A100159(n+1)-∑[C(5*n, 2)/5]`
-/

namespace A100151.P918129202458230061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100159 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100151.P918129202458230061

namespace A100151

/-- `A100159(n+1)-∑[C(5*n, 2)/5]` -/
def P918129202458230061.Spec : Prop :=
  ∀ n, P918129202458230061.a n = (A100151 (n + 1) : ℚ)

end A100151

/-! ## A100151.P2444848808948997741

`A160674(n)-A215646(n)`
-/

namespace A100151.P2444848808948997741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A215646 n

end

end A100151.P2444848808948997741

namespace A100151

/-- `A160674(n)-A215646(n)` -/
def P2444848808948997741.Spec : Prop :=
  ∀ n, P2444848808948997741.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P11182576039583575450

`A100166(n+1)-A006002(n)`
-/

namespace A100151.P11182576039583575450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100166 (n + 1) - A006002 n

end

end A100151.P11182576039583575450

namespace A100151

/-- `A100166(n+1)-A006002(n)` -/
def P11182576039583575450.Spec : Prop :=
  ∀ n, P11182576039583575450.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P25328103689728125

`A181773(n+1)+A100183(n+1)`
-/

namespace A100151.P25328103689728125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + A100183 (n + 1)

end

end A100151.P25328103689728125

namespace A100151

/-- `A181773(n+1)+A100183(n+1)` -/
def P25328103689728125.Spec : Prop :=
  ∀ n, P25328103689728125.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P10739735544077447986

`A100148(n+1)+A100150(n+1)-A100149(n+1)`
-/

namespace A100151.P10739735544077447986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100150 (n + 1) - A100149 (n + 1))

end

end A100151.P10739735544077447986

namespace A100151

/-- `A100148(n+1)+A100150(n+1)-A100149(n+1)` -/
def P10739735544077447986.Spec : Prop :=
  ∀ n, P10739735544077447986.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P9599838171388517832

`A100150(n+1)+A100154(n+1)-A100155(n+1)`
-/

namespace A100151.P9599838171388517832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100150 (n + 1) + (A100154 (n + 1) - A100155 (n + 1))

end

end A100151.P9599838171388517832

namespace A100151

/-- `A100150(n+1)+A100154(n+1)-A100155(n+1)` -/
def P9599838171388517832.Spec : Prop :=
  ∀ n, P9599838171388517832.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P13946934405416642685

`A059722(n+1)+A100154(n+1)-A000447(n+1)`
-/

namespace A100151.P13946934405416642685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 (n + 1) + (A100154 (n + 1) - A000447 (n + 1))

end

end A100151.P13946934405416642685

namespace A100151

/-- `A059722(n+1)+A100154(n+1)-A000447(n+1)` -/
def P13946934405416642685.Spec : Prop :=
  ∀ n, P13946934405416642685.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P8253300202017639400

`∑[A049453(3*n)+A000124(n)]`
-/

namespace A100151.P8253300202017639400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 (3 * n) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100151.P8253300202017639400

namespace A100151

/-- `∑[A049453(3*n)+A000124(n)]` -/
def P8253300202017639400.Spec : Prop :=
  ∀ n, P8253300202017639400.a n = A100151 (n + 1)

end A100151

/-! ## A100151.P7372195113791224111

`∑[A052905(n)+A033581(3*n)]`
-/

namespace A100151.P7372195113791224111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + A033581 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100151.P7372195113791224111

namespace A100151

/-- `∑[A052905(n)+A033581(3*n)]` -/
def P7372195113791224111.Spec : Prop :=
  ∀ n, P7372195113791224111.a n = A100151 (n + 1)

end A100151

/-!
# A100152: Structured truncated cubic numbers.

The programs for A100152, the canonical program `A100152.P9441996438555365986` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100152 has offset 1).

The definition of A100152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100152.P12542959005476289907

`ogf((1+20x+10x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100152.P12542959005476289907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20, 10] [1, -4, 6, -4, 1] n

end

end A100152.P12542959005476289907

namespace A100152

/-- `ogf((1+20x+10x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12542959005476289907.Spec : Prop :=
  ∀ n, P12542959005476289907.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P10742052961659699579

`(n+1)/6*(31*(n+1)²-27*(n+1)+2)`
-/

namespace A100152.P10742052961659699579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * ((31 * (n + 1) ^ 2 : ℤ) - (27 * (n + 1) : ℤ) + 2 : ℚ)

end

end A100152.P10742052961659699579

namespace A100152

/-- `(n+1)/6*(31*(n+1)²-27*(n+1)+2)` -/
def P10742052961659699579.Spec : Prop :=
  ∀ n, P10742052961659699579.a n = (A100152 (n + 1) : ℚ)

theorem P10742052961659699579.correct : P10742052961659699579.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100152, Nat.add_sub_cancel, A100152.P10742052961659699579.a, A100152.P9441996438555365986.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100152, Nat.add_sub_cancel, A100152.P10742052961659699579.a, A100152.P9441996438555365986.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100152

/-! ## A100152.P9441996438555365986

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=24, a(2)=100, a(3)=260`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100152

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9441996438555365986.Spec : Prop :=
  ∀ n, P9441996438555365986.a n = A100152 (n + 1)

theorem P9441996438555365986.correct : P9441996438555365986.Spec := by
  intro n
  simp only [A100152, Nat.add_sub_cancel]

end A100152

/-! ## A100152.P4952230792910757640

`∑[n*(17*n+5)+1]-∑[3*C(n, 2)]`
-/

namespace A100152.P4952230792910757640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (17 * n + 5) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100152.P4952230792910757640

namespace A100152

/-- `∑[n*(17*n+5)+1]-∑[3*C(n, 2)]` -/
def P4952230792910757640.Spec : Prop :=
  ∀ n, P4952230792910757640.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P6145331847322949313

`A024381(n+1)-∑[n*(n+3)/2]`
-/

namespace A100152.P6145331847322949313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024381 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100152.P6145331847322949313

namespace A100152

/-- `A024381(n+1)-∑[n*(n+3)/2]` -/
def P6145331847322949313.Spec : Prop :=
  ∀ n, P6145331847322949313.a n = (A100152 (n + 1) : ℚ)

end A100152

/-! ## A100152.P13033412669764675232

`∑[n*(17*n+5)+1]-A135503(n)`
-/

namespace A100152.P13033412669764675232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (17 * n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A135503 n

end

end A100152.P13033412669764675232

namespace A100152

/-- `∑[n*(17*n+5)+1]-A135503(n)` -/
def P13033412669764675232.Spec : Prop :=
  ∀ n, P13033412669764675232.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P8362228780093988499

`A255687(n)+A139757(n)`
-/

namespace A100152.P8362228780093988499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255687 n + A139757 n

end

end A100152.P8362228780093988499

namespace A100152

/-- `A255687(n)+A139757(n)` -/
def P8362228780093988499.Spec : Prop :=
  ∀ n, P8362228780093988499.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P14646804717049666314

`A304993(n)+A103532(n)`
-/

namespace A100152.P14646804717049666314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A103532 n

end

end A100152.P14646804717049666314

namespace A100152

/-- `A304993(n)+A103532(n)` -/
def P14646804717049666314.Spec : Prop :=
  ∀ n, P14646804717049666314.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P7059260935388185842

`A114254(n)-A050407(n)`
-/

namespace A100152.P7059260935388185842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n - A050407 n

end

end A100152.P7059260935388185842

namespace A100152

/-- `A114254(n)-A050407(n)` -/
def P7059260935388185842.Spec : Prop :=
  ∀ n, P7059260935388185842.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P8672643286779055415

`A254407(n)+∑[A080860(n)]`
-/

namespace A100152.P8672643286779055415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100152.P8672643286779055415

namespace A100152

/-- `A254407(n)+∑[A080860(n)]` -/
def P8672643286779055415.Spec : Prop :=
  ∀ n, P8672643286779055415.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P1271139230445564848

`A100183(n+1)+A059986(n)`
-/

namespace A100152.P1271139230445564848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100183 (n + 1) + A059986 n

end

end A100152.P1271139230445564848

namespace A100152

/-- `A100183(n+1)+A059986(n)` -/
def P1271139230445564848.Spec : Prop :=
  ∀ n, P1271139230445564848.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P12621402460736327236

`A245301(n)+A213832(n+1)`
-/

namespace A100152.P12621402460736327236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n + A213832 (n + 1)

end

end A100152.P12621402460736327236

namespace A100152

/-- `A245301(n)+A213832(n+1)` -/
def P12621402460736327236.Spec : Prop :=
  ∀ n, P12621402460736327236.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P14693090952333076854

`A100167(n+1)-∑[A022286(n)]`
-/

namespace A100152.P14693090952333076854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100167 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100152.P14693090952333076854

namespace A100152

/-- `A100167(n+1)-∑[A022286(n)]` -/
def P14693090952333076854.Spec : Prop :=
  ∀ n, P14693090952333076854.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P13490227867689708974

`A100156(n+1)+A035005(n+1)`
-/

namespace A100152.P13490227867689708974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100156 (n + 1) + A035005 (n + 1)

end

end A100152.P13490227867689708974

namespace A100152

/-- `A100156(n+1)+A035005(n+1)` -/
def P13490227867689708974.Spec : Prop :=
  ∀ n, P13490227867689708974.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P1537617753434012604

`A100184(n+1)+A035006(n+1)`
-/

namespace A100152.P1537617753434012604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100184 (n + 1) + A035006 (n + 1)

end

end A100152.P1537617753434012604

namespace A100152

/-- `A100184(n+1)+A035006(n+1)` -/
def P1537617753434012604.Spec : Prop :=
  ∀ n, P1537617753434012604.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P2307494868098311081

`A100149(n+1)-2*A135503(n)`
-/

namespace A100152.P2307494868098311081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) - 2 * A135503 n

end

end A100152.P2307494868098311081

namespace A100152

/-- `A100149(n+1)-2*A135503(n)` -/
def P2307494868098311081.Spec : Prop :=
  ∀ n, P2307494868098311081.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P7138018341693960180

`2*A100155(n+1)-A100149(n+1)`
-/

namespace A100152.P7138018341693960180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100155 (n + 1) - A100149 (n + 1)

end

end A100152.P7138018341693960180

namespace A100152

/-- `2*A100155(n+1)-A100149(n+1)` -/
def P7138018341693960180.Spec : Prop :=
  ∀ n, P7138018341693960180.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P17757870997347821890

`2*A100184(n+1)-A100182(n+1)`
-/

namespace A100152.P17757870997347821890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100184 (n + 1) - A100182 (n + 1)

end

end A100152.P17757870997347821890

namespace A100152

/-- `2*A100184(n+1)-A100182(n+1)` -/
def P17757870997347821890.Spec : Prop :=
  ∀ n, P17757870997347821890.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P7049573714589006666

`A100157(n+1)+A100157(n+1)-A000292(n+1)`
-/

namespace A100152.P7049573714589006666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1) + (A100157 (n + 1) - A000292 (n + 1))

end

end A100152.P7049573714589006666

namespace A100152

/-- `A100157(n+1)+A100157(n+1)-A000292(n+1)` -/
def P7049573714589006666.Spec : Prop :=
  ∀ n, P7049573714589006666.a n = A100152 (n + 1)

end A100152

/-! ## A100152.P4165880234312023292

`A100150(n+1)+A100164(n+1)-A100172(n+1)`
-/

namespace A100152.P4165880234312023292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100150 (n + 1) + (A100164 (n + 1) - A100172 (n + 1))

end

end A100152.P4165880234312023292

namespace A100152

/-- `A100150(n+1)+A100164(n+1)-A100172(n+1)` -/
def P4165880234312023292.Spec : Prop :=
  ∀ n, P4165880234312023292.a n = A100152 (n + 1)

end A100152

/-!
# A100153: Structured truncated dodecahedral numbers.

The programs for A100153, the canonical program `A100153.P13632041027730562651` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100153 has offset 1).

The definition of A100153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100153.P6322927658939415253

`ogf((1+56x+42x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100153.P6322927658939415253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 56, 42] [1, -4, 6, -4, 1] n

end

end A100153.P6322927658939415253

namespace A100153

/-- `ogf((1+56x+42x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6322927658939415253.Spec : Prop :=
  ∀ n, P6322927658939415253.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P12146451327637063526

`(n+1)*(33*(n+1)²-41*(n+1)+10)/2`
-/

namespace A100153.P12146451327637063526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((33 * (n + 1) ^ 2 : ℤ) - (41 * (n + 1) : ℤ) + 10) : ℚ) / 2

end

end A100153.P12146451327637063526

namespace A100153

/-- `(n+1)*(33*(n+1)²-41*(n+1)+10)/2` -/
def P12146451327637063526.Spec : Prop :=
  ∀ n, P12146451327637063526.a n = (A100153 (n + 1) : ℚ)

theorem P12146451327637063526.correct : P12146451327637063526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100153, Nat.add_sub_cancel, A100153.P12146451327637063526.a, A100153.P13632041027730562651.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100153, Nat.add_sub_cancel, A100153.P12146451327637063526.a, A100153.P13632041027730562651.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100153

/-! ## A100153.P13632041027730562651

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=60, a(2)=276, a(3)=748`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100153

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13632041027730562651.Spec : Prop :=
  ∀ n, P13632041027730562651.a n = A100153 (n + 1)

theorem P13632041027730562651.correct : P13632041027730562651.Spec := by
  intro n
  simp only [A100153, Nat.add_sub_cancel]

end A100153

/-! ## A100153.P12950749471278519278

`∑[1+3*n]*A017401(n)`
-/

namespace A100153.P12950749471278519278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A017401 n

end

end A100153.P12950749471278519278

namespace A100153

/-- `∑[1+3*n]*A017401(n)` -/
def P12950749471278519278.Spec : Prop :=
  ∀ n, P12950749471278519278.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P3613243894261565375

`(1+11*n)*A000326(n+1)`
-/

namespace A100153.P3613243894261565375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 11 * n : ℤ) * A000326 (n + 1)

end

end A100153.P3613243894261565375

namespace A100153

/-- `(1+11*n)*A000326(n+1)` -/
def P3613243894261565375.Spec : Prop :=
  ∀ n, P3613243894261565375.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P8311416944067164837

`A100154(n+1)-2*A135503(n)`
-/

namespace A100153.P8311416944067164837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100154 (n + 1) - 2 * A135503 n

end

end A100153.P8311416944067164837

namespace A100153

/-- `A100154(n+1)-2*A135503(n)` -/
def P8311416944067164837.Spec : Prop :=
  ∀ n, P8311416944067164837.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P1362370595501559040

`A100152(n+1)+A100154(n+1)-A100149(n+1)`
-/

namespace A100153.P1362370595501559040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100152 (n + 1) + (A100154 (n + 1) - A100149 (n + 1))

end

end A100153.P1362370595501559040

namespace A100153

/-- `A100152(n+1)+A100154(n+1)-A100149(n+1)` -/
def P1362370595501559040.Spec : Prop :=
  ∀ n, P1362370595501559040.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P16116206371607638259

`A100154(n+1)+A100169(n+1)-A100170(n+1)`
-/

namespace A100153.P16116206371607638259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100154 (n + 1) + (A100169 (n + 1) - A100170 (n + 1))

end

end A100153.P16116206371607638259

namespace A100153

/-- `A100154(n+1)+A100169(n+1)-A100170(n+1)` -/
def P16116206371607638259.Spec : Prop :=
  ∀ n, P16116206371607638259.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P801324062076359700

`A255184(n+1)+n*A282851(n+1)`
-/

namespace A100153.P801324062076359700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255184 (n + 1) + (n : ℤ) * A282851 (n + 1)

end

end A100153.P801324062076359700

namespace A100153

/-- `A255184(n+1)+n*A282851(n+1)` -/
def P801324062076359700.Spec : Prop :=
  ∀ n, P801324062076359700.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P5900414727811581496

`A267370(n)+A172073(2*n+1)`
-/

namespace A100153.P5900414727811581496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A172073 (2 * n + 1)

end

end A100153.P5900414727811581496

namespace A100153

/-- `A267370(n)+A172073(2*n+1)` -/
def P5900414727811581496.Spec : Prop :=
  ∀ n, P5900414727811581496.a n = A100153 (n + 1)

end A100153

/-! ## A100153.P1083041845013530709

`A099721(2*n+1)+A341768(n+1)-n`
-/

namespace A100153.P1083041845013530709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 (2 * n + 1) + (A341768 (n + 1) - (n : ℤ))

end

end A100153.P1083041845013530709

namespace A100153

/-- `A099721(2*n+1)+A341768(n+1)-n` -/
def P1083041845013530709.Spec : Prop :=
  ∀ n, P1083041845013530709.a n = A100153 (n + 1)

end A100153

/-!
# A100154: Structured truncated icosahedral numbers.

The programs for A100154, the canonical program `A100154.P9938694606241078878` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100154 has offset 1).

The definition of A100154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100154.P12366846356057713000

`ogf((1+56x+48x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100154.P12366846356057713000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 56, 48] [1, -4, 6, -4, 1] n

end

end A100154.P12366846356057713000

namespace A100154

/-- `ogf((1+56x+48x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12366846356057713000.Spec : Prop :=
  ∀ n, P12366846356057713000.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P14680443737378070075

`1/2*(n+1)*(35*(n+1)²-47*(n+1)+14)`
-/

namespace A100154.P14680443737378070075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (n + 1 : ℚ) * ((35 * (n + 1) ^ 2 : ℤ) - (47 * (n + 1) : ℤ) + 14 : ℚ)

end

end A100154.P14680443737378070075

namespace A100154

/-- `1/2*(n+1)*(35*(n+1)²-47*(n+1)+14)` -/
def P14680443737378070075.Spec : Prop :=
  ∀ n, P14680443737378070075.a n = (A100154 (n + 1) : ℚ)

theorem P14680443737378070075.correct : P14680443737378070075.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100154, Nat.add_sub_cancel, A100154.P14680443737378070075.a, A100154.P9938694606241078878.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100154, Nat.add_sub_cancel, A100154.P14680443737378070075.a, A100154.P9938694606241078878.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100154

/-! ## A100154.P9938694606241078878

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=60, a(2)=282, a(3)=772`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100154

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9938694606241078878.Spec : Prop :=
  ∀ n, P9938694606241078878.a n = A100154 (n + 1)

theorem P9938694606241078878.correct : P9938694606241078878.Spec := by
  intro n
  simp only [A100154, Nat.add_sub_cancel]

end A100154

/-! ## A100154.P9659502201874551453

`(9*n+1)*∑[4*n+1]-∑[3*C(n, 2)]`
-/

namespace A100154.P9659502201874551453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((9 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100154.P9659502201874551453

namespace A100154

/-- `(9*n+1)*∑[4*n+1]-∑[3*C(n, 2)]` -/
def P9659502201874551453.Spec : Prop :=
  ∀ n, P9659502201874551453.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P10022798970178878608

`A100148(n+1)-A135503(n)`
-/

namespace A100154.P10022798970178878608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) - A135503 n

end

end A100154.P10022798970178878608

namespace A100154

/-- `A100148(n+1)-A135503(n)` -/
def P10022798970178878608.Spec : Prop :=
  ∀ n, P10022798970178878608.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P5152600190720068338

`A192796(n+1)+A100172(n+1)`
-/

namespace A100154.P5152600190720068338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192796 (n + 1) + A100172 (n + 1)

end

end A100154.P5152600190720068338

namespace A100154

/-- `A192796(n+1)+A100172(n+1)` -/
def P5152600190720068338.Spec : Prop :=
  ∀ n, P5152600190720068338.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P6164720000344253532

`A100164(n+1)-((n+1)²-A100173(n+1))`
-/

namespace A100154.P6164720000344253532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100164 (n + 1) - (((n + 1) ^ 2 : ℤ) - A100173 (n + 1))

end

end A100154.P6164720000344253532

namespace A100154

/-- `A100164(n+1)-((n+1)²-A100173(n+1))` -/
def P6164720000344253532.Spec : Prop :=
  ∀ n, P6164720000344253532.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P9961392310660656113

`A100149(n+1)+A100153(n+1)-A100152(n+1)`
-/

namespace A100154.P9961392310660656113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) + (A100153 (n + 1) - A100152 (n + 1))

end

end A100154.P9961392310660656113

namespace A100154

/-- `A100149(n+1)+A100153(n+1)-A100152(n+1)` -/
def P9961392310660656113.Spec : Prop :=
  ∀ n, P9961392310660656113.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P14116132018164480117

`A100151(n+1)+A100155(n+1)-A100150(n+1)`
-/

namespace A100154.P14116132018164480117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100151 (n + 1) + (A100155 (n + 1) - A100150 (n + 1))

end

end A100154.P14116132018164480117

namespace A100154

/-- `A100151(n+1)+A100155(n+1)-A100150(n+1)` -/
def P14116132018164480117.Spec : Prop :=
  ∀ n, P14116132018164480117.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P12388253215458281811

`A100156(n+1)+A100158(n+1)-A100157(n+1)`
-/

namespace A100154.P12388253215458281811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100156 (n + 1) + (A100158 (n + 1) - A100157 (n + 1))

end

end A100154.P12388253215458281811

namespace A100154

/-- `A100156(n+1)+A100158(n+1)-A100157(n+1)` -/
def P12388253215458281811.Spec : Prop :=
  ∀ n, P12388253215458281811.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P3562942101365493887

`A100148(n+1)+A100156(n+1)-A051673(n+1)`
-/

namespace A100154.P3562942101365493887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100156 (n + 1) - A051673 (n + 1))

end

end A100154.P3562942101365493887

namespace A100154

/-- `A100148(n+1)+A100156(n+1)-A051673(n+1)` -/
def P3562942101365493887.Spec : Prop :=
  ∀ n, P3562942101365493887.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P14163479467052234575

`(5*A016945(n)+A016885(n+1))*A000217(n)+n+1`
-/

namespace A100154.P14163479467052234575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A016945 n + A016885 (n + 1)) * A000217 n + (n : ℤ) + 1

end

end A100154.P14163479467052234575

namespace A100154

/-- `(5*A016945(n)+A016885(n+1))*A000217(n)+n+1` -/
def P14163479467052234575.Spec : Prop :=
  ∀ n, P14163479467052234575.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P7638848113238915734

`A237616(2*n+1)+A051624(n+1)-A237616(n+1)`
-/

namespace A100154.P7638848113238915734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) + (A051624 (n + 1) - A237616 (n + 1))

end

end A100154.P7638848113238915734

namespace A100154

/-- `A237616(2*n+1)+A051624(n+1)-A237616(n+1)` -/
def P7638848113238915734.Spec : Prop :=
  ∀ n, P7638848113238915734.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P6536958893611140571

`A005581(2*n+1)+A007588(2*n+1)+A005581(n+1)`
-/

namespace A100154.P6536958893611140571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (2 * n + 1) + (A007588 (2 * n + 1) + A005581 (n + 1))

end

end A100154.P6536958893611140571

namespace A100154

/-- `A005581(2*n+1)+A007588(2*n+1)+A005581(n+1)` -/
def P6536958893611140571.Spec : Prop :=
  ∀ n, P6536958893611140571.a n = A100154 (n + 1)

end A100154

/-! ## A100154.P12283315176472417334

`A100156(3*n+1)-2*A181617(2*n+1)`
-/

namespace A100154.P12283315176472417334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100156 (3 * n + 1) - 2 * A181617 (2 * n + 1)

end

end A100154.P12283315176472417334

namespace A100154

/-- `A100156(3*n+1)-2*A181617(2*n+1)` -/
def P12283315176472417334.Spec : Prop :=
  ∀ n, P12283315176472417334.a n = A100154 (n + 1)

end A100154

/-!
# A100155: Structured truncated octahedral numbers.

The programs for A100155, the canonical program `A100155.P18255273377924218091` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100155 has offset 1).

The definition of A100155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100155.P4411316763110865991

`ogf((1+20x+13x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100155.P4411316763110865991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20, 13] [1, -4, 6, -4, 1] n

end

end A100155.P4411316763110865991

namespace A100155

/-- `ogf((1+20x+13x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4411316763110865991.Spec : Prop :=
  ∀ n, P4411316763110865991.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P13486369322801188585

`1/3*(n+1)*(17*(n+1)²-18*(n+1)+4)`
-/

namespace A100155.P13486369322801188585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (n + 1 : ℚ) * ((17 * (n + 1) ^ 2 : ℤ) - (18 * (n + 1) : ℤ) + 4 : ℚ)

end

end A100155.P13486369322801188585

namespace A100155

/-- `1/3*(n+1)*(17*(n+1)²-18*(n+1)+4)` -/
def P13486369322801188585.Spec : Prop :=
  ∀ n, P13486369322801188585.a n = (A100155 (n + 1) : ℚ)

theorem P13486369322801188585.correct : P13486369322801188585.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100155, Nat.add_sub_cancel, A100155.P13486369322801188585.a, A100155.P18255273377924218091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100155, Nat.add_sub_cancel, A100155.P13486369322801188585.a, A100155.P18255273377924218091.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100155

/-! ## A100155.P18255273377924218091

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=24, a(2)=103, a(3)=272`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100155

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18255273377924218091.Spec : Prop :=
  ∀ n, P18255273377924218091.a n = A100155 (n + 1)

theorem P18255273377924218091.correct : P18255273377924218091.Spec := by
  intro n
  simp only [A100155, Nat.add_sub_cancel]

end A100155

/-! ## A100155.P10694054193425150200

`∑[C(3*(n+1)-1, 2)+n/2*(25*n+1)]`
-/

namespace A100155.P10694054193425150200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((3 * (n + 1) : ℤ) - 1).toNat 2 : ℚ) + (n : ℚ) / 2 * (25 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100155.P10694054193425150200

namespace A100155

/-- `∑[C(3*(n+1)-1, 2)+n/2*(25*n+1)]` -/
def P10694054193425150200.Spec : Prop :=
  ∀ n, P10694054193425150200.a n = (A100155 (n + 1) : ℚ)

end A100155

/-! ## A100155.P124356619021009156

`∑[A143838(n+1)+n²]`
-/

namespace A100155.P124356619021009156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143838 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100155.P124356619021009156

namespace A100155

/-- `∑[A143838(n+1)+n²]` -/
def P124356619021009156.Spec : Prop :=
  ∀ n, P124356619021009156.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P15444823864302473291

`A172076(n)+∑[∑[a(n-1)+20]]` with `a(0)=1`
-/

namespace A100155.P15444823864302473291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100155.P15444823864302473291

namespace A100155

/-- `A172076(n)+∑[∑[a(n-1)+20]]` -/
def P15444823864302473291.Spec : Prop :=
  ∀ n, P15444823864302473291.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P8194306152870308020

`A210440(n)+A027849(n)`
-/

namespace A100155.P8194306152870308020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A027849 n

end

end A100155.P8194306152870308020

namespace A100155

/-- `A210440(n)+A027849(n)` -/
def P8194306152870308020.Spec : Prop :=
  ∀ n, P8194306152870308020.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P15947742758734805756

`A174814(n)+A103532(n)`
-/

namespace A100155.P15947742758734805756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n + A103532 n

end

end A100155.P15947742758734805756

namespace A100155

/-- `A174814(n)+A103532(n)` -/
def P15947742758734805756.Spec : Prop :=
  ∀ n, P15947742758734805756.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P7240515910240659399

`A393855(n)-A214659(n)`
-/

namespace A100155.P7240515910240659399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393855 n - A214659 n

end

end A100155.P7240515910240659399

namespace A100155

/-- `A393855(n)-A214659(n)` -/
def P7240515910240659399.Spec : Prop :=
  ∀ n, P7240515910240659399.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P8382814530811642530

`A135503(n)+A100152(n+1)`
-/

namespace A100155.P8382814530811642530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A100152 (n + 1)

end

end A100155.P8382814530811642530

namespace A100155

/-- `A135503(n)+A100152(n+1)` -/
def P8382814530811642530.Spec : Prop :=
  ∀ n, P8382814530811642530.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P17943639778352626718

`A144945(n+1)+A139757(n)`
-/

namespace A100155.P17943639778352626718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) + A139757 n

end

end A100155.P17943639778352626718

namespace A100155

/-- `A144945(n+1)+A139757(n)` -/
def P17943639778352626718.Spec : Prop :=
  ∀ n, P17943639778352626718.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P5064938145758669115

`A200431(n+1)+A167875(n)`
-/

namespace A100155.P5064938145758669115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) + A167875 n

end

end A100155.P5064938145758669115

namespace A100155

/-- `A200431(n+1)+A167875(n)` -/
def P5064938145758669115.Spec : Prop :=
  ∀ n, P5064938145758669115.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P4757539846315840509

`A100161(n+1)-A011379(n)`
-/

namespace A100155.P4757539846315840509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (n + 1) - A011379 n

end

end A100155.P4757539846315840509

namespace A100155

/-- `A100161(n+1)-A011379(n)` -/
def P4757539846315840509.Spec : Prop :=
  ∀ n, P4757539846315840509.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P12890336377983880529

`A100149(n+1)-A135503(n)`
-/

namespace A100155.P12890336377983880529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) - A135503 n

end

end A100155.P12890336377983880529

namespace A100155

/-- `A100149(n+1)-A135503(n)` -/
def P12890336377983880529.Spec : Prop :=
  ∀ n, P12890336377983880529.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P49906101925194336

`A100162(n+1)-A268684(n)`
-/

namespace A100155.P49906101925194336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100162 (n + 1) - A268684 n

end

end A100155.P49906101925194336

namespace A100155

/-- `A100162(n+1)-A268684(n)` -/
def P49906101925194336.Spec : Prop :=
  ∀ n, P49906101925194336.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P7060959794123866251

`A213829(n+1)-A167875(n)`
-/

namespace A100155.P7060959794123866251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213829 (n + 1) - A167875 n

end

end A100155.P7060959794123866251

namespace A100155

/-- `A213829(n+1)-A167875(n)` -/
def P7060959794123866251.Spec : Prop :=
  ∀ n, P7060959794123866251.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P11821113551805461419

`A096000(n)+2*A051895(n)`
-/

namespace A100155.P11821113551805461419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + 2 * A051895 n

end

end A100155.P11821113551805461419

namespace A100155

/-- `A096000(n)+2*A051895(n)` -/
def P11821113551805461419.Spec : Prop :=
  ∀ n, P11821113551805461419.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P3986136195929996843

`A100186(n+1)+A035006(n+1)`
-/

namespace A100155.P3986136195929996843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1) + A035006 (n + 1)

end

end A100155.P3986136195929996843

namespace A100155

/-- `A100186(n+1)+A035006(n+1)` -/
def P3986136195929996843.Spec : Prop :=
  ∀ n, P3986136195929996843.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P7184357797061702537

`A135036(n+1)+A100187(n+1)`
-/

namespace A100155.P7184357797061702537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1) + A100187 (n + 1)

end

end A100155.P7184357797061702537

namespace A100155

/-- `A135036(n+1)+A100187(n+1)` -/
def P7184357797061702537.Spec : Prop :=
  ∀ n, P7184357797061702537.a n = A100155 (n + 1)

end A100155

/-! ## A100155.P9493370191920818655

`(A100152(n+1)+A100149(n+1))/2`
-/

namespace A100155.P9493370191920818655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100152 (n + 1) + A100149 (n + 1) : ℚ) / 2

end

end A100155.P9493370191920818655

namespace A100155

/-- `(A100152(n+1)+A100149(n+1))/2` -/
def P9493370191920818655.Spec : Prop :=
  ∀ n, P9493370191920818655.a n = (A100155 (n + 1) : ℚ)

end A100155

/-!
# A100156: Structured truncated tetrahedral numbers.

The programs for A100156, the canonical program `A100156.P11274446989018826964` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100156 has offset 1).

The definition of A100156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100156.P16528439997851732061

`ogf((1+8x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100156.P16528439997851732061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 2] [1, -4, 6, -4, 1] n

end

end A100156.P16528439997851732061

namespace A100156

/-- `ogf((1+8x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16528439997851732061.Spec : Prop :=
  ∀ n, P16528439997851732061.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P4098018635744774595

`(11*(n+1)^3-3*(n+1)²-2*(n+1))/6`
-/

namespace A100156.P4098018635744774595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) : ℚ) / 6

end

end A100156.P4098018635744774595

namespace A100156

/-- `(11*(n+1)^3-3*(n+1)²-2*(n+1))/6` -/
def P4098018635744774595.Spec : Prop :=
  ∀ n, P4098018635744774595.a n = (A100156 (n + 1) : ℚ)

theorem P4098018635744774595.correct : P4098018635744774595.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100156, Nat.add_sub_cancel, A100156.P4098018635744774595.a, A100156.P11274446989018826964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100156, Nat.add_sub_cancel, A100156.P4098018635744774595.a, A100156.P11274446989018826964.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100156

/-! ## A100156.P11274446989018826964

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=44, a(3)=108`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100156

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11274446989018826964.Spec : Prop :=
  ∀ n, P11274446989018826964.a n = A100156 (n + 1)

theorem P11274446989018826964.correct : P11274446989018826964.Spec := by
  intro n
  simp only [A100156, Nat.add_sub_cancel]

end A100156

/-! ## A100156.P12571309323163064221

`∑[∑[a(n-1)+11]]` with `a(0)=1, a(1)=10`
-/

namespace A100156.P12571309323163064221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P12571309323163064221

namespace A100156

/-- `∑[∑[a(n-1)+11]]` -/
def P12571309323163064221.Spec : Prop :=
  ∀ n, (P12571309323163064221.a n : ℤ) = A100156 (n + 1)

end A100156

/-! ## A100156.P3588418313369782731

`∑[C(3*(n+1)-1, 2)+n²]`
-/

namespace A100156.P3588418313369782731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((3 * (n + 1) : ℤ) - 1).toNat 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P3588418313369782731

namespace A100156

/-- `∑[C(3*(n+1)-1, 2)+n²]` -/
def P3588418313369782731.Spec : Prop :=
  ∀ n, (P3588418313369782731.a n : ℤ) = A100156 (n + 1)

end A100156

/-! ## A100156.P315960158609243770

`2*(n+1)*(n+1)²-C(n+3, 3)`
-/

namespace A100156.P315960158609243770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) * (n + 1) ^ 2 : ℤ) - (Nat.choose (n + 3) 3 : ℤ)

end

end A100156.P315960158609243770

namespace A100156

/-- `2*(n+1)*(n+1)²-C(n+3, 3)` -/
def P315960158609243770.Spec : Prop :=
  ∀ n, P315960158609243770.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P7204422389087871176

`(2*n+1)*∑[2*n+1]-∑[C(n, 2)]`
-/

namespace A100156.P7204422389087871176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100156.P7204422389087871176

namespace A100156

/-- `(2*n+1)*∑[2*n+1]-∑[C(n, 2)]` -/
def P7204422389087871176.Spec : Prop :=
  ∀ n, P7204422389087871176.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P7253454102957378811

`∑[lcm(2*n+1, 2*n)]+(n+1)*∑[n+1]`
-/

namespace A100156.P7253454102957378811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A100156.P7253454102957378811

namespace A100156

/-- `∑[lcm(2*n+1, 2*n)]+(n+1)*∑[n+1]` -/
def P7253454102957378811.Spec : Prop :=
  ∀ n, (P7253454102957378811.a n : ℤ) = A100156 (n + 1)

end A100156

/-! ## A100156.P18114392605084651506

`∑[A211013(n)+1]`
-/

namespace A100156.P18114392605084651506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P18114392605084651506

namespace A100156

/-- `∑[A211013(n)+1]` -/
def P18114392605084651506.Spec : Prop :=
  ∀ n, P18114392605084651506.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P4197440079493972304

`∑[A342914(n)-n²]`
-/

namespace A100156.P4197440079493972304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342914 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P4197440079493972304

namespace A100156

/-- `∑[A342914(n)-n²]` -/
def P4197440079493972304.Spec : Prop :=
  ∀ n, P4197440079493972304.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P10430579015897624040

`A135712(n)-∑[∑[n]]`
-/

namespace A100156.P10430579015897624040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100156.P10430579015897624040

namespace A100156

/-- `A135712(n)-∑[∑[n]]` -/
def P10430579015897624040.Spec : Prop :=
  ∀ n, P10430579015897624040.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P8749815559613078250

`∑[A069125(n+1)-n]`
-/

namespace A100156.P8749815559613078250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P8749815559613078250

namespace A100156

/-- `∑[A069125(n+1)-n]` -/
def P8749815559613078250.Spec : Prop :=
  ∀ n, P8749815559613078250.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P11834737617724556766

`A162148(n)+(n+1)^3`
-/

namespace A100156.P11834737617724556766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + ((n + 1) ^ 3 : ℤ)

end

end A100156.P11834737617724556766

namespace A100156

/-- `A162148(n)+(n+1)^3` -/
def P11834737617724556766.Spec : Prop :=
  ∀ n, P11834737617724556766.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P9403713870384404212

`∑[A060544(n+1)+n²]`
-/

namespace A100156.P9403713870384404212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P9403713870384404212

namespace A100156

/-- `∑[A060544(n+1)+n²]` -/
def P9403713870384404212.Spec : Prop :=
  ∀ n, P9403713870384404212.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P10769627585499095793

`∑[A062725(n)+(n+1)²]`
-/

namespace A100156.P10769627585499095793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100156.P10769627585499095793

namespace A100156

/-- `∑[A062725(n)+(n+1)²]` -/
def P10769627585499095793.Spec : Prop :=
  ∀ n, P10769627585499095793.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P6325282662946666389

`A006002(n)+∑[(2*n+1)²]`
-/

namespace A100156.P6325282662946666389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100156.P6325282662946666389

namespace A100156

/-- `A006002(n)+∑[(2*n+1)²]` -/
def P6325282662946666389.Spec : Prop :=
  ∀ n, P6325282662946666389.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P8221014424389184052

`∑[n*(n+2)]+∑[A064225(n)]`
-/

namespace A100156.P8221014424389184052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100156.P8221014424389184052

namespace A100156

/-- `∑[n*(n+2)]+∑[A064225(n)]` -/
def P8221014424389184052.Spec : Prop :=
  ∀ n, P8221014424389184052.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P6179037831947918622

`∑[∑[5*n]+2]+∑[A270710(n)]`
-/

namespace A100156.P6179037831947918622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A100156.P6179037831947918622

namespace A100156

/-- `∑[∑[5*n]+2]+∑[A270710(n)]` -/
def P6179037831947918622.Spec : Prop :=
  ∀ n, P6179037831947918622.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P10105084559387813445

`A051662(n)+A027480(n)`
-/

namespace A100156.P10105084559387813445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + A027480 n

end

end A100156.P10105084559387813445

namespace A100156

/-- `A051662(n)+A027480(n)` -/
def P10105084559387813445.Spec : Prop :=
  ∀ n, P10105084559387813445.a n = A100156 (n + 1)

end A100156

/-! ## A100156.P9525158763401123901

`A081438(n)+A002413(n)`
-/

namespace A100156.P9525158763401123901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + A002413 n

end

end A100156.P9525158763401123901

namespace A100156

/-- `A081438(n)+A002413(n)` -/
def P9525158763401123901.Spec : Prop :=
  ∀ n, P9525158763401123901.a n = A100156 (n + 1)

end A100156

/-!
# A100157: Structured rhombic dodecahedral numbers (vertex structure 9).

The programs for A100157, the canonical program `A100157.P4385611677759606701` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100157 has offset 1).

The definition of A100157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100157.P17481126231105108332

`ogf((1+10x+5x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100157.P17481126231105108332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 5] [1, -4, 6, -4, 1] n

end

end A100157.P17481126231105108332

namespace A100157

/-- `ogf((1+10x+5x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17481126231105108332.Spec : Prop :=
  ∀ n, P17481126231105108332.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P5969438296116564489

`C(2*(n+1)+1, 3)+C(2*(n+1), 3)`
-/

namespace A100157.P5969438296116564489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1) + 1) 3 + Nat.choose (2 * (n + 1)) 3

end

end A100157.P5969438296116564489

namespace A100157

/-- `C(2*(n+1)+1, 3)+C(2*(n+1), 3)` -/
def P5969438296116564489.Spec : Prop :=
  ∀ n, (P5969438296116564489.a n : ℤ) = A100157 (n + 1)

end A100157

/-! ## A100157.P6616382037548852917

`(n+1)*(8*(n+1)²-6*(n+1)+1)/3`
-/

namespace A100157.P6616382037548852917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((8 * (n + 1) ^ 2 : ℤ) - (6 * (n + 1) : ℤ) + 1) : ℚ) / 3

end

end A100157.P6616382037548852917

namespace A100157

/-- `(n+1)*(8*(n+1)²-6*(n+1)+1)/3` -/
def P6616382037548852917.Spec : Prop :=
  ∀ n, P6616382037548852917.a n = (A100157 (n + 1) : ℚ)

theorem P6616382037548852917.correct : P6616382037548852917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100157, Nat.add_sub_cancel, A100157.P6616382037548852917.a, A100157.P4385611677759606701.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100157, Nat.add_sub_cancel, A100157.P6616382037548852917.a, A100157.P4385611677759606701.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100157

/-! ## A100157.P4385611677759606701

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=55, a(3)=140`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100157

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4385611677759606701.Spec : Prop :=
  ∀ n, P4385611677759606701.a n = A100157 (n + 1)

theorem P4385611677759606701.correct : P4385611677759606701.Spec := by
  intro n
  simp only [A100157, Nat.add_sub_cancel]

end A100157

/-! ## A100157.P4419588694096122492

`A000330(2*(n+1)-1)`
-/

namespace A100157.P4419588694096122492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * (n + 1) - 1)

end

end A100157.P4419588694096122492

namespace A100157

/-- `A000330(2*(n+1)-1)` -/
def P4419588694096122492.Spec : Prop :=
  ∀ n, P4419588694096122492.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P11094721399489175612

`Δ[C(2*(n+1), 4)]`
-/

namespace A100157.P11094721399489175612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100157.P11094721399489175612

namespace A100157

/-- `Δ[C(2*(n+1), 4)]` -/
def P11094721399489175612.Spec : Prop :=
  ∀ n, P11094721399489175612.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P12665095878020262532

`C(4*(n+1), 3)/4`
-/

namespace A100157.P12665095878020262532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * (n + 1)) 3 : ℚ) / 4

end

end A100157.P12665095878020262532

namespace A100157

/-- `C(4*(n+1), 3)/4` -/
def P12665095878020262532.Spec : Prop :=
  ∀ n, P12665095878020262532.a n = (A100157 (n + 1) : ℚ)

end A100157

/-! ## A100157.P5450010488300796275

`∑[∑[a(n-1)+16]]` with `a(0)=1, a(1)=12`
-/

namespace A100157.P5450010488300796275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100157.P5450010488300796275

namespace A100157

/-- `∑[∑[a(n-1)+16]]` -/
def P5450010488300796275.Spec : Prop :=
  ∀ n, (P5450010488300796275.a n : ℤ) = A100157 (n + 1)

end A100157

/-! ## A100157.P14661348470496044435

`-Δ[-C(n+2+n, 4)]`
-/

namespace A100157.P14661348470496044435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 2 + n) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A100157.P14661348470496044435

namespace A100157

/-- `-Δ[-C(n+2+n, 4)]` -/
def P14661348470496044435.Spec : Prop :=
  ∀ n, P14661348470496044435.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P7390286225849384603

`∑[lcm(2*n+1, 4*n)]+n+1`
-/

namespace A100157.P7390286225849384603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A100157.P7390286225849384603

namespace A100157

/-- `∑[lcm(2*n+1, 4*n)]+n+1` -/
def P7390286225849384603.Spec : Prop :=
  ∀ n, (P7390286225849384603.a n : ℤ) = A100157 (n + 1)

end A100157

/-! ## A100157.P15787741849072447827

`∑[C(2*(2*n+1), 2)]-∑[2*n]`
-/

namespace A100157.P15787741849072447827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (2 * n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100157.P15787741849072447827

namespace A100157

/-- `∑[C(2*(2*n+1), 2)]-∑[2*n]` -/
def P15787741849072447827.Spec : Prop :=
  ∀ n, P15787741849072447827.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P12139000954240848181

`∑[(2*n)²]+C(2*n+3, 2*n)`
-/

namespace A100157.P12139000954240848181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 3) (2 * n)

end

end A100157.P12139000954240848181

namespace A100157

/-- `∑[(2*n)²]+C(2*n+3, 2*n)` -/
def P12139000954240848181.Spec : Prop :=
  ∀ n, (P12139000954240848181.a n : ℤ) = A100157 (n + 1)

end A100157

/-! ## A100157.P13962514826903870317

`(2*n+1)²+a(n-1)+(2*n)²` with `a(0)=1`
-/

namespace A100157.P13962514826903870317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 2 + (a (n - 1) + (2 * n) ^ 2)

end

end A100157.P13962514826903870317

namespace A100157

/-- `(2*n+1)²+a(n-1)+(2*n)²` -/
def P13962514826903870317.Spec : Prop :=
  ∀ n, (P13962514826903870317.a n : ℤ) = A100157 (n + 1)

end A100157

/-! ## A100157.P2286143489466303985

`∑[and(2*n+1, 2*n)²]+∑[(2*n+1)²]`
-/

namespace A100157.P2286143489466303985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100157.P2286143489466303985

namespace A100157

/-- `∑[and(2*n+1, 2*n)²]+∑[(2*n+1)²]` -/
def P2286143489466303985.Spec : Prop :=
  ∀ n, (P2286143489466303985.a n : ℤ) = A100157 (n + 1)

end A100157

/-! ## A100157.P16104537115770944666

`∑[A102083(n)]`
-/

namespace A100157.P16104537115770944666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100157.P16104537115770944666

namespace A100157

/-- `∑[A102083(n)]` -/
def P16104537115770944666.Spec : Prop :=
  ∀ n, P16104537115770944666.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P109496680202518343

`∑[A033586(n)+1]`
-/

namespace A100157.P109496680202518343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100157.P109496680202518343

namespace A100157

/-- `∑[A033586(n)+1]` -/
def P109496680202518343.Spec : Prop :=
  ∀ n, P109496680202518343.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P13651487009858079085

`∑[A236267(n)+n]`
-/

namespace A100157.P13651487009858079085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100157.P13651487009858079085

namespace A100157

/-- `∑[A236267(n)+n]` -/
def P13651487009858079085.Spec : Prop :=
  ∀ n, P13651487009858079085.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P9679045201610175997

`A213837(n+1)+∑[n]`
-/

namespace A100157.P9679045201610175997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213837 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100157.P9679045201610175997

namespace A100157

/-- `A213837(n+1)+∑[n]` -/
def P9679045201610175997.Spec : Prop :=
  ∀ n, P9679045201610175997.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P2848818790211320199

`Δ[n²²]-A000447(n)`
-/

namespace A100157.P2848818790211320199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000447 n

end

end A100157.P2848818790211320199

namespace A100157

/-- `Δ[n²²]-A000447(n)` -/
def P2848818790211320199.Spec : Prop :=
  ∀ n, P2848818790211320199.a n = A100157 (n + 1)

end A100157

/-! ## A100157.P5862680293562523891

`A085474(n)-a(n-1)` with `a(0)=1`
-/

namespace A100157.P5862680293562523891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085474 n - a (n - 1)

end

end A100157.P5862680293562523891

namespace A100157

/-- `A085474(n)-a(n-1)` -/
def P5862680293562523891.Spec : Prop :=
  ∀ n, P5862680293562523891.a n = A100157 (n + 1)

end A100157

/-!
# A100158: Structured disdyakis triacontahedral numbers (vertex structure 11).

The programs for A100158, the canonical program `A100158.P17984072842692153660` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100158 has offset 1).

The definition of A100158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100158.P10354212210712080498

`ogf((1+58x+51x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100158.P10354212210712080498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 58, 51] [1, -4, 6, -4, 1] n

end

end A100158.P10354212210712080498

namespace A100158

/-- `ogf((1+58x+51x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10354212210712080498.Spec : Prop :=
  ∀ n, P10354212210712080498.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P17984072842692153660

`(110*(n+1)^3-150*(n+1)²+46*(n+1))/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100158

/-- `(110*(n+1)^3-150*(n+1)²+46*(n+1))/6` -/
def P17984072842692153660.Spec : Prop :=
  ∀ n, P17984072842692153660.a n = (A100158 (n + 1) : ℚ)

end A100158

/-! ## A100158.P15354980142949660734

`2*A100173(n+1)-(n+1)`
-/

namespace A100158.P15354980142949660734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100173 (n + 1) - (n + 1 : ℤ)

end

end A100158.P15354980142949660734

namespace A100158

/-- `2*A100173(n+1)-(n+1)` -/
def P15354980142949660734.Spec : Prop :=
  ∀ n, P15354980142949660734.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P3438561864312441379

`∑[60*A000290(n)+1]+n-(∑[n*2*(n-1)]+n^3)`
-/

namespace A100158.P3438561864312441379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A000290 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 3 : ℤ))

end

end A100158.P3438561864312441379

namespace A100158

/-- `∑[60*A000290(n)+1]+n-(∑[n*2*(n-1)]+n^3)` -/
def P3438561864312441379.Spec : Prop :=
  ∀ n, P3438561864312441379.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P7696943811839027828

`A338109(n)+A046127(n)`
-/

namespace A100158.P7696943811839027828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338109 n + A046127 n

end

end A100158.P7696943811839027828

namespace A100158

/-- `A338109(n)+A046127(n)` -/
def P7696943811839027828.Spec : Prop :=
  ∀ n, P7696943811839027828.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P5260572988144674761

`A160674(n)-A004466(n)`
-/

namespace A100158.P5260572988144674761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A004466 n

end

end A100158.P5260572988144674761

namespace A100158

/-- `A160674(n)-A004466(n)` -/
def P5260572988144674761.Spec : Prop :=
  ∀ n, P5260572988144674761.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P10216727939963129253

`2*A100166(n+1)-A100159(n+1)`
-/

namespace A100158.P10216727939963129253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100166 (n + 1) - A100159 (n + 1)

end

end A100158.P10216727939963129253

namespace A100158

/-- `2*A100166(n+1)-A100159(n+1)` -/
def P10216727939963129253.Spec : Prop :=
  ∀ n, P10216727939963129253.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P12744936547352475130

`A100154(n+1)+A100157(n+1)-A100156(n+1)`
-/

namespace A100158.P12744936547352475130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100154 (n + 1) + (A100157 (n + 1) - A100156 (n + 1))

end

end A100158.P12744936547352475130

namespace A100158

/-- `A100154(n+1)+A100157(n+1)-A100156(n+1)` -/
def P12744936547352475130.Spec : Prop :=
  ∀ n, P12744936547352475130.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P12513704811552980469

`A100159(n+1)+A100166(n+1)-A100160(n+1)`
-/

namespace A100158.P12513704811552980469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100159 (n + 1) + (A100166 (n + 1) - A100160 (n + 1))

end

end A100158.P12513704811552980469

namespace A100158

/-- `A100159(n+1)+A100166(n+1)-A100160(n+1)` -/
def P12513704811552980469.Spec : Prop :=
  ∀ n, P12513704811552980469.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P4810312033548866063

`A100146(n+1)+A100150(n+1)-A000447(n+1)`
-/

namespace A100158.P4810312033548866063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100146 (n + 1) + (A100150 (n + 1) - A000447 (n + 1))

end

end A100158.P4810312033548866063

namespace A100158

/-- `A100146(n+1)+A100150(n+1)-A000447(n+1)` -/
def P4810312033548866063.Spec : Prop :=
  ∀ n, P4810312033548866063.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P9628170766650425383

`A100146(n+1)+A100163(n+1)-A051673(n+1)`
-/

namespace A100158.P9628170766650425383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100146 (n + 1) + (A100163 (n + 1) - A051673 (n + 1))

end

end A100158.P9628170766650425383

namespace A100158

/-- `A100146(n+1)+A100163(n+1)-A051673(n+1)` -/
def P9628170766650425383.Spec : Prop :=
  ∀ n, P9628170766650425383.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P14161453036978335386

`A100148(n+1)+A100160(n+2)-A100159(n+2)`
-/

namespace A100158.P14161453036978335386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100160 (n + 2) - A100159 (n + 2))

end

end A100158.P14161453036978335386

namespace A100158

/-- `A100148(n+1)+A100160(n+2)-A100159(n+2)` -/
def P14161453036978335386.Spec : Prop :=
  ∀ n, P14161453036978335386.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P8407430054162087609

`A100148(n+1)+A100162(n+2)-A100161(n+2)`
-/

namespace A100158.P8407430054162087609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100162 (n + 2) - A100161 (n + 2))

end

end A100158.P8407430054162087609

namespace A100158

/-- `A100148(n+1)+A100162(n+2)-A100161(n+2)` -/
def P8407430054162087609.Spec : Prop :=
  ∀ n, P8407430054162087609.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P18027681583499100382

`A100148(n+1)+A100159(n+2)-A100166(n+2)`
-/

namespace A100158.P18027681583499100382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100159 (n + 2) - A100166 (n + 2))

end

end A100158.P18027681583499100382

namespace A100158

/-- `A100148(n+1)+A100159(n+2)-A100166(n+2)` -/
def P18027681583499100382.Spec : Prop :=
  ∀ n, P18027681583499100382.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P4764870601444977975

`A100148(n+1)+A100163(n+2)-A100162(n+2)`
-/

namespace A100158.P4764870601444977975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100163 (n + 2) - A100162 (n + 2))

end

end A100158.P4764870601444977975

namespace A100158

/-- `A100148(n+1)+A100163(n+2)-A100162(n+2)` -/
def P4764870601444977975.Spec : Prop :=
  ∀ n, P4764870601444977975.a n = A100158 (n + 1)

end A100158

/-! ## A100158.P17404166733984201616

`A063522(2*n+1)-(∑[n*2*(n-1)]+n^3)`
-/

namespace A100158.P17404166733984201616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 3 : ℤ))

end

end A100158.P17404166733984201616

namespace A100158

/-- `A063522(2*n+1)-(∑[n*2*(n-1)]+n^3)` -/
def P17404166733984201616.Spec : Prop :=
  ∀ n, P17404166733984201616.a n = A100158 (n + 1)

end A100158

/-!
# A100159: Structured disdyakis triacontahedral numbers (vertex structure 7).

The programs for A100159, the canonical program `A100159.P820570946566383738` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100159 has offset 1).

The definition of A100159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100159.P4334338260800435310

`ogf((1+58x+55x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100159.P4334338260800435310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 58, 55] [1, -4, 6, -4, 1] n

end

end A100159.P4334338260800435310

namespace A100159

/-- `ogf((1+58x+55x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4334338260800435310.Spec : Prop :=
  ∀ n, P4334338260800435310.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P820570946566383738

`(n+1)*(19*(n+1)²-27*(n+1)+9)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100159

/-- `(n+1)*(19*(n+1)²-27*(n+1)+9)` -/
def P820570946566383738.Spec : Prop :=
  ∀ n, P820570946566383738.a n = A100159 (n + 1)

theorem P820570946566383738.correct : P820570946566383738.Spec := by
  intro n
  simp only [A100159, Nat.add_sub_cancel]

end A100159

/-! ## A100159.P8237796623976479933

`Δ[(19*C(n, 2)+n)*∑[n]]`
-/

namespace A100159.P8237796623976479933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (19 * Nat.choose n 2 + n) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100159.P8237796623976479933

namespace A100159

/-- `Δ[(19*C(n, 2)+n)*∑[n]]` -/
def P8237796623976479933.Spec : Prop :=
  ∀ n, P8237796623976479933.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P1801808268498266427

`A160674(n)-n^3`
-/

namespace A100159.P1801808268498266427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - (n ^ 3 : ℤ)

end

end A100159.P1801808268498266427

namespace A100159

/-- `A160674(n)-n^3` -/
def P1801808268498266427.Spec : Prop :=
  ∀ n, P1801808268498266427.a n = A100159 (n + 1)

theorem P1801808268498266427.correct : P1801808268498266427.Spec := by
  intro n
  simp only [A100159, Nat.add_sub_cancel, A100159.P1801808268498266427.a, A100159.P820570946566383738.a, A160674, A160674.P9701766189526379957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100159

/-! ## A100159.P883065785729475477

`2*A100172(n+1)-(n+1)`
-/

namespace A100159.P883065785729475477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100172 (n + 1) - (n + 1 : ℤ)

end

end A100159.P883065785729475477

namespace A100159

/-- `2*A100172(n+1)-(n+1)` -/
def P883065785729475477.Spec : Prop :=
  ∀ n, P883065785729475477.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P7181946488415695874

`(Δ[19*n²]+3)*A000217(n)+1+n`
-/

namespace A100159.P7181946488415695874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3) * A000217 n + 1 + (n : ℤ)

end

end A100159.P7181946488415695874

namespace A100159

/-- `(Δ[19*n²]+3)*A000217(n)+1+n` -/
def P7181946488415695874.Spec : Prop :=
  ∀ n, P7181946488415695874.a n = A100159 (n + 1)

theorem P7181946488415695874.correct : P7181946488415695874.Spec := by
  intro n
  simp only [A100159, Nat.add_sub_cancel, A100159.P7181946488415695874.f1, A100159.P7181946488415695874.a, A100159.P820570946566383738.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100159

/-! ## A100159.P4665189806343243207

`A100148(n+1)+A011379(n)`
-/

namespace A100159.P4665189806343243207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + A011379 n

end

end A100159.P4665189806343243207

namespace A100159

/-- `A100148(n+1)+A011379(n)` -/
def P4665189806343243207.Spec : Prop :=
  ∀ n, P4665189806343243207.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P16441703712802485313

`A181773(n+1)+A005915(n)`
-/

namespace A100159.P16441703712802485313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + A005915 n

end

end A100159.P16441703712802485313

namespace A100159

/-- `A181773(n+1)+A005915(n)` -/
def P16441703712802485313.Spec : Prop :=
  ∀ n, P16441703712802485313.a n = A100159 (n + 1)

theorem P16441703712802485313.correct : P16441703712802485313.Spec := by
  intro n
  simp only [A100159, Nat.add_sub_cancel, A100159.P16441703712802485313.a, A100159.P820570946566383738.a, A005915, A005915.P10778017196570457320.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100159

/-! ## A100159.P10544324919126750015

`2*A100166(n+1)-A100158(n+1)`
-/

namespace A100159.P10544324919126750015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100166 (n + 1) - A100158 (n + 1)

end

end A100159.P10544324919126750015

namespace A100159

/-- `2*A100166(n+1)-A100158(n+1)` -/
def P10544324919126750015.Spec : Prop :=
  ∀ n, P10544324919126750015.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P9651883721570531830

`(A100166(n+1)+A100160(n+1))/2`
-/

namespace A100159.P9651883721570531830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100166 (n + 1) + A100160 (n + 1) : ℚ) / 2

end

end A100159.P9651883721570531830

namespace A100159

/-- `(A100166(n+1)+A100160(n+1))/2` -/
def P9651883721570531830.Spec : Prop :=
  ∀ n, P9651883721570531830.a n = (A100159 (n + 1) : ℚ)

end A100159

/-! ## A100159.P1640235085341104724

`(A100172(n+1)+A100170(n+1))/2`
-/

namespace A100159.P1640235085341104724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100172 (n + 1) + A100170 (n + 1) : ℚ) / 2

end

end A100159.P1640235085341104724

namespace A100159

/-- `(A100172(n+1)+A100170(n+1))/2` -/
def P1640235085341104724.Spec : Prop :=
  ∀ n, P1640235085341104724.a n = (A100159 (n + 1) : ℚ)

end A100159

/-! ## A100159.P4296869220424647081

`A100158(n+1)+A100160(n+1)-A100166(n+1)`
-/

namespace A100159.P4296869220424647081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100158 (n + 1) + (A100160 (n + 1) - A100166 (n + 1))

end

end A100159.P4296869220424647081

namespace A100159

/-- `A100158(n+1)+A100160(n+1)-A100166(n+1)` -/
def P4296869220424647081.Spec : Prop :=
  ∀ n, P4296869220424647081.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P17263134343481807186

`Δ[∑[n]*A051873(n)]`
-/

namespace A100159.P17263134343481807186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A051873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100159.P17263134343481807186

namespace A100159

/-- `Δ[∑[n]*A051873(n)]` -/
def P17263134343481807186.Spec : Prop :=
  ∀ n, P17263134343481807186.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P5209769059767433828

`A051673(n+1)+A100148(n+1)-A000447(n+1)`
-/

namespace A100159.P5209769059767433828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 (n + 1) + (A100148 (n + 1) - A000447 (n + 1))

end

end A100159.P5209769059767433828

namespace A100159

/-- `A051673(n+1)+A100148(n+1)-A000447(n+1)` -/
def P5209769059767433828.Spec : Prop :=
  ∀ n, P5209769059767433828.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P350134234150770206

`A063522(2*n+1)-n^3`
-/

namespace A100159.P350134234150770206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - (n ^ 3 : ℤ)

end

end A100159.P350134234150770206

namespace A100159

/-- `A063522(2*n+1)-n^3` -/
def P350134234150770206.Spec : Prop :=
  ∀ n, P350134234150770206.a n = A100159 (n + 1)

theorem P350134234150770206.correct : P350134234150770206.Spec := by
  intro n
  simp only [A100159, Nat.add_sub_cancel, A100159.P350134234150770206.a, A100159.P820570946566383738.a, A063522, A063522.P5785404417260397752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100159

/-! ## A100159.P796956813932566575

`A237616(2*n+1)-n*(n+1)²`
-/

namespace A100159.P796956813932566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) - (n * (n + 1) ^ 2 : ℤ)

end

end A100159.P796956813932566575

namespace A100159

/-- `A237616(2*n+1)-n*(n+1)²` -/
def P796956813932566575.Spec : Prop :=
  ∀ n, P796956813932566575.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P12962406252332036035

`A195043(2*n+1)+n*A195048(2*n+1)`
-/

namespace A100159.P12962406252332036035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 (2 * n + 1) + (n : ℤ) * A195048 (2 * n + 1)

end

end A100159.P12962406252332036035

namespace A100159

/-- `A195043(2*n+1)+n*A195048(2*n+1)` -/
def P12962406252332036035.Spec : Prop :=
  ∀ n, P12962406252332036035.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P15662804552852965268

`A004188(2*n+1)+A085490(2*n+1)-A085490(n+1)`
-/

namespace A100159.P15662804552852965268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (2 * n + 1) + (A085490 (2 * n + 1) - A085490 (n + 1))

end

end A100159.P15662804552852965268

namespace A100159

/-- `A004188(2*n+1)+A085490(2*n+1)-A085490(n+1)` -/
def P15662804552852965268.Spec : Prop :=
  ∀ n, P15662804552852965268.a n = A100159 (n + 1)

end A100159

/-! ## A100159.P1328977618270401270

`A030653(3*n+1)+1-A030653(2*n+1)`
-/

namespace A100159.P1328977618270401270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (3 * n + 1) + (1 - A030653 (2 * n + 1))

end

end A100159.P1328977618270401270

namespace A100159

/-- `A030653(3*n+1)+1-A030653(2*n+1)` -/
def P1328977618270401270.Spec : Prop :=
  ∀ n, P1328977618270401270.a n = A100159 (n + 1)

theorem P1328977618270401270.correct : P1328977618270401270.Spec := by
  intro n
  simp only [A100159, Nat.add_sub_cancel, A100159.P1328977618270401270.a, A100159.P820570946566383738.a, A030653, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100159

/-!
# A100160: Structured disdyakis triacontahedral numbers (vertex structure 5).

The programs for A100160, the canonical program `A100160.P12759224718148676225` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100160 has offset 1).

The definition of A100160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100160.P7114689766290624283

`ogf((1+58x+57x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100160.P7114689766290624283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 58, 57] [1, -4, 6, -4, 1] n

end

end A100160.P7114689766290624283

namespace A100160

/-- `ogf((1+58x+57x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7114689766290624283.Spec : Prop :=
  ∀ n, P7114689766290624283.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P12759224718148676225

`1/6*(116*(n+1)^3-168*(n+1)²+58*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100160

/-- `1/6*(116*(n+1)^3-168*(n+1)²+58*(n+1))` -/
def P12759224718148676225.Spec : Prop :=
  ∀ n, P12759224718148676225.a n = (A100160 (n + 1) : ℚ)

end A100160

/-! ## A100160.P14304646096047934155

`∑[A158666(n)+2*n]`
-/

namespace A100160.P14304646096047934155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158666 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100160.P14304646096047934155

namespace A100160

/-- `∑[A158666(n)+2*n]` -/
def P14304646096047934155.Spec : Prop :=
  ∀ n, P14304646096047934155.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P2167043008446753938

`A160674(n)-A005900(n)`
-/

namespace A100160.P2167043008446753938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A005900 n

end

end A100160.P2167043008446753938

namespace A100160

/-- `A160674(n)-A005900(n)` -/
def P2167043008446753938.Spec : Prop :=
  ∀ n, P2167043008446753938.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P5811536881539027547

`A268684(n)+A100148(n+1)`
-/

namespace A100160.P5811536881539027547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A100148 (n + 1)

end

end A100160.P5811536881539027547

namespace A100160

/-- `A268684(n)+A100148(n+1)` -/
def P5811536881539027547.Spec : Prop :=
  ∀ n, P5811536881539027547.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P3624233610428664359

`A181773(n+1)+A100174(n+1)`
-/

namespace A100160.P3624233610428664359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + A100174 (n + 1)

end

end A100160.P3624233610428664359

namespace A100160

/-- `A181773(n+1)+A100174(n+1)` -/
def P3624233610428664359.Spec : Prop :=
  ∀ n, P3624233610428664359.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P1685305975909444338

`A100148(n+1)+A000447(n)+n²`
-/

namespace A100160.P1685305975909444338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A000447 n + (n ^ 2 : ℤ))

end

end A100160.P1685305975909444338

namespace A100160

/-- `A100148(n+1)+A000447(n)+n²` -/
def P1685305975909444338.Spec : Prop :=
  ∀ n, P1685305975909444338.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P671999913713787432

`2*A100159(n+1)-A100166(n+1)`
-/

namespace A100160.P671999913713787432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100159 (n + 1) - A100166 (n + 1)

end

end A100160.P671999913713787432

namespace A100160

/-- `2*A100159(n+1)-A100166(n+1)` -/
def P671999913713787432.Spec : Prop :=
  ∀ n, P671999913713787432.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P1743766388633086329

`A100159(n+1)+A100166(n+1)-A100158(n+1)`
-/

namespace A100160.P1743766388633086329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100159 (n + 1) + (A100166 (n + 1) - A100158 (n + 1))

end

end A100160.P1743766388633086329

namespace A100160

/-- `A100159(n+1)+A100166(n+1)-A100158(n+1)` -/
def P1743766388633086329.Spec : Prop :=
  ∀ n, P1743766388633086329.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P16353056687581960723

`∑[n+1]+∑[A022287(2*n)]`
-/

namespace A100160.P16353056687581960723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100160.P16353056687581960723

namespace A100160

/-- `∑[n+1]+∑[A022287(2*n)]` -/
def P16353056687581960723.Spec : Prop :=
  ∀ n, P16353056687581960723.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P10701999214938999198

`A063522(2*n+1)-(∑[C(2*n, 2)]-C(n, 2))`
-/

namespace A100160.P10701999214938999198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ))

end

end A100160.P10701999214938999198

namespace A100160

/-- `A063522(2*n+1)-(∑[C(2*n, 2)]-C(n, 2))` -/
def P10701999214938999198.Spec : Prop :=
  ∀ n, P10701999214938999198.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P16738262679293471912

`A063522(2*n+1)-A005900(n)`
-/

namespace A100160.P16738262679293471912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - A005900 n

end

end A100160.P16738262679293471912

namespace A100160

/-- `A063522(2*n+1)-A005900(n)` -/
def P16738262679293471912.Spec : Prop :=
  ∀ n, P16738262679293471912.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P3798732985426516211

`A360488(n+1)+∑[A360488(2*n)]`
-/

namespace A100160.P3798732985426516211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360488 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360488 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100160.P3798732985426516211

namespace A100160

/-- `A360488(n+1)+∑[A360488(2*n)]` -/
def P3798732985426516211.Spec : Prop :=
  ∀ n, P3798732985426516211.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P8296280953920364605

`A063522(2*n+1)-(A006331(n)-n²)`
-/

namespace A100160.P8296280953920364605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - (A006331 n - (n ^ 2 : ℤ))

end

end A100160.P8296280953920364605

namespace A100160

/-- `A063522(2*n+1)-(A006331(n)-n²)` -/
def P8296280953920364605.Spec : Prop :=
  ∀ n, P8296280953920364605.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P14561061319392069636

`A063522(2*n+1)-abs(A006331(n)-A000290(n))`
-/

namespace A100160.P14561061319392069636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - |A006331 n - A000290 n|

end

end A100160.P14561061319392069636

namespace A100160

/-- `A063522(2*n+1)-abs(A006331(n)-A000290(n))` -/
def P14561061319392069636.Spec : Prop :=
  ∀ n, P14561061319392069636.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P18165938838346188122

`A063522(2*n+1)-(∑[A001844(n)]-A001844(n))`
-/

namespace A100160.P18165938838346188122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A001844 n)

end

end A100160.P18165938838346188122

namespace A100160

/-- `A063522(2*n+1)-(∑[A001844(n)]-A001844(n))` -/
def P18165938838346188122.Spec : Prop :=
  ∀ n, P18165938838346188122.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P16963632692792964617

`A237616(2*n+1)+A000217(n+1)-A002412(n+1)`
-/

namespace A100160.P16963632692792964617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) + (A000217 (n + 1) - A002412 (n + 1))

end

end A100160.P16963632692792964617

namespace A100160

/-- `A237616(2*n+1)+A000217(n+1)-A002412(n+1)` -/
def P16963632692792964617.Spec : Prop :=
  ∀ n, P16963632692792964617.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P6512933191624308542

`A237616(2*n+1)+A050441(n+1)-A237616(n+1)`
-/

namespace A100160.P6512933191624308542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) + (A050441 (n + 1) - A237616 (n + 1))

end

end A100160.P6512933191624308542

namespace A100160

/-- `A237616(2*n+1)+A050441(n+1)-A237616(n+1)` -/
def P6512933191624308542.Spec : Prop :=
  ∀ n, P6512933191624308542.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P3759702651402341315

`A237616(2*n+1)+A237616(n+1)-A237618(n+1)`
-/

namespace A100160.P3759702651402341315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) + (A237616 (n + 1) - A237618 (n + 1))

end

end A100160.P3759702651402341315

namespace A100160

/-- `A237616(2*n+1)+A237616(n+1)-A237618(n+1)` -/
def P3759702651402341315.Spec : Prop :=
  ∀ n, P3759702651402341315.a n = A100160 (n + 1)

end A100160

/-! ## A100160.P6918764582601897730

`A237616(2*n+1)+A256645(n+1)-A256649(n+1)`
-/

namespace A100160.P6918764582601897730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) + (A256645 (n + 1) - A256649 (n + 1))

end

end A100160.P6918764582601897730

namespace A100160

/-- `A237616(2*n+1)+A256645(n+1)-A256649(n+1)` -/
def P6918764582601897730.Spec : Prop :=
  ∀ n, P6918764582601897730.a n = A100160 (n + 1)

end A100160

/-!
# A100161: Structured disdyakis dodecahedral numbers (vertex structure 9).

The programs for A100161, the canonical program `A100161.P8924781367915412725` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100161 has offset 1).

The definition of A100161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100161.P13804008779520357214

`ogf((1+22x+17x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100161.P13804008779520357214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 22, 17] [1, -4, 6, -4, 1] n

end

end A100161.P13804008779520357214

namespace A100161

/-- `ogf((1+22x+17x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13804008779520357214.Spec : Prop :=
  ∀ n, P13804008779520357214.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P8924781367915412725

`(40*(n+1)^3-48*(n+1)²+14*(n+1))/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100161

/-- `(40*(n+1)^3-48*(n+1)²+14*(n+1))/6` -/
def P8924781367915412725.Spec : Prop :=
  ∀ n, P8924781367915412725.a n = (A100161 (n + 1) : ℚ)

end A100161

/-! ## A100161.P9330552335174060855

`Δ[n²]^3-C(Δ[n²], 3)`
-/

namespace A100161.P9330552335174060855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3 - (Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 : ℤ)

end

end A100161.P9330552335174060855

namespace A100161

/-- `Δ[n²]^3-C(Δ[n²], 3)` -/
def P9330552335174060855.Spec : Prop :=
  ∀ n, P9330552335174060855.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P8213420708148672924

`C(4*n+3, 3)-n*(2*n+1)²`
-/

namespace A100161.P8213420708148672924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 3) 3 : ℤ) - (n * (2 * n + 1) ^ 2 : ℤ)

end

end A100161.P8213420708148672924

namespace A100161

/-- `C(4*n+3, 3)-n*(2*n+1)²` -/
def P8213420708148672924.Spec : Prop :=
  ∀ n, P8213420708148672924.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P13901104776622579159

`Δ[C(2*n², 2)]-n*((2*n)²-1)/3`
-/

namespace A100161.P13901104776622579159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - ((n : ℤ) * (((2 * n) ^ 2 : ℤ) - 1) : ℚ) / 3

end

end A100161.P13901104776622579159

namespace A100161

/-- `Δ[C(2*n², 2)]-n*((2*n)²-1)/3` -/
def P13901104776622579159.Spec : Prop :=
  ∀ n, P13901104776622579159.a n = (A100161 (n + 1) : ℚ)

end A100161

/-! ## A100161.P3535657712822350905

`2*A035005(n+1)+n+1`
-/

namespace A100161.P3535657712822350905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035005 (n + 1) + (n + 1 : ℤ)

end

end A100161.P3535657712822350905

namespace A100161

/-- `2*A035005(n+1)+n+1` -/
def P3535657712822350905.Spec : Prop :=
  ∀ n, P3535657712822350905.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P2483871483968668514

`2*A100174(n+1)-(n+1)`
-/

namespace A100161.P2483871483968668514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100174 (n + 1) - (n + 1 : ℤ)

end

end A100161.P2483871483968668514

namespace A100161

/-- `2*A100174(n+1)-(n+1)` -/
def P2483871483968668514.Spec : Prop :=
  ∀ n, P2483871483968668514.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P2358934115344102926

`4*A144945(n+1)+n+1`
-/

namespace A100161.P2358934115344102926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A144945 (n + 1) + (n + 1 : ℤ)

end

end A100161.P2358934115344102926

namespace A100161

/-- `4*A144945(n+1)+n+1` -/
def P2358934115344102926.Spec : Prop :=
  ∀ n, P2358934115344102926.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P8476198953295238812

`A011199(n)+A006331(n)`
-/

namespace A100161.P8476198953295238812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 n + A006331 n

end

end A100161.P8476198953295238812

namespace A100161

/-- `A011199(n)+A006331(n)` -/
def P8476198953295238812.Spec : Prop :=
  ∀ n, P8476198953295238812.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P13381419992248054722

`A371532(n)+A033954(n)`
-/

namespace A100161.P13381419992248054722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371532 n + A033954 n

end

end A100161.P13381419992248054722

namespace A100161

/-- `A371532(n)+A033954(n)` -/
def P13381419992248054722.Spec : Prop :=
  ∀ n, P13381419992248054722.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P3960452739157401154

`A016755(n)-A000447(n)`
-/

namespace A100161.P3960452739157401154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A000447 n

end

end A100161.P3960452739157401154

namespace A100161

/-- `A016755(n)-A000447(n)` -/
def P3960452739157401154.Spec : Prop :=
  ∀ n, P3960452739157401154.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P5111319901902375018

`A079588(n)-A002492(n)`
-/

namespace A100161.P5111319901902375018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - A002492 n

end

end A100161.P5111319901902375018

namespace A100161

/-- `A079588(n)-A002492(n)` -/
def P5111319901902375018.Spec : Prop :=
  ∀ n, P5111319901902375018.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P358561910336458499

`A015219(n)-A084367(n)`
-/

namespace A100161.P358561910336458499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n - A084367 n

end

end A100161.P358561910336458499

namespace A100161

/-- `A015219(n)-A084367(n)` -/
def P358561910336458499.Spec : Prop :=
  ∀ n, P358561910336458499.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P7683387424554308916

`A100149(n+1)+A006002(n)`
-/

namespace A100161.P7683387424554308916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) + A006002 n

end

end A100161.P7683387424554308916

namespace A100161

/-- `A100149(n+1)+A006002(n)` -/
def P7683387424554308916.Spec : Prop :=
  ∀ n, P7683387424554308916.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P563688021871664387

`A100155(n+1)+A011379(n)`
-/

namespace A100161.P563688021871664387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100155 (n + 1) + A011379 n

end

end A100161.P563688021871664387

namespace A100161

/-- `A100155(n+1)+A011379(n)` -/
def P563688021871664387.Spec : Prop :=
  ∀ n, P563688021871664387.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P1745550827180807514

`A095265(n+1)+A046092(n)`
-/

namespace A100161.P1745550827180807514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (n + 1) + A046092 n

end

end A100161.P1745550827180807514

namespace A100161

/-- `A095265(n+1)+A046092(n)` -/
def P1745550827180807514.Spec : Prop :=
  ∀ n, P1745550827180807514.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P9895694565951783191

`A144945(n+1)+A027849(n)`
-/

namespace A100161.P9895694565951783191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) + A027849 n

end

end A100161.P9895694565951783191

namespace A100161

/-- `A144945(n+1)+A027849(n)` -/
def P9895694565951783191.Spec : Prop :=
  ∀ n, P9895694565951783191.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P1601119933464481849

`A214092(n+1)+A016061(n)`
-/

namespace A100161.P1601119933464481849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1) + A016061 n

end

end A100161.P1601119933464481849

namespace A100161

/-- `A214092(n+1)+A016061(n)` -/
def P1601119933464481849.Spec : Prop :=
  ∀ n, P1601119933464481849.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P7550360425857990467

`A300758(n)+A100157(n+1)`
-/

namespace A100161.P7550360425857990467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A100157 (n + 1)

end

end A100161.P7550360425857990467

namespace A100161

/-- `A300758(n)+A100157(n+1)` -/
def P7550360425857990467.Spec : Prop :=
  ∀ n, P7550360425857990467.a n = A100161 (n + 1)

end A100161

/-! ## A100161.P5352462864938115724

`A268684(n)+A213842(n+1)`
-/

namespace A100161.P5352462864938115724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A213842 (n + 1)

end

end A100161.P5352462864938115724

namespace A100161

/-- `A268684(n)+A213842(n+1)` -/
def P5352462864938115724.Spec : Prop :=
  ∀ n, P5352462864938115724.a n = A100161 (n + 1)

end A100161

/-!
# A100162: Structured disdyakis dodecahedral numbers (vertex structure 7).

The programs for A100162, the canonical program `A100162.P2043848038057619524` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100162 has offset 1).

The definition of A100162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100162.P1544283274548710687

`ogf((1+22x+19x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100162.P1544283274548710687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 22, 19] [1, -4, 6, -4, 1] n

end

end A100162.P1544283274548710687

namespace A100162

/-- `ogf((1+22x+19x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1544283274548710687.Spec : Prop :=
  ∀ n, P1544283274548710687.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P2043848038057619524

`1/6*(42*(n+1)^3-54*(n+1)²+18*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100162

/-- `1/6*(42*(n+1)^3-54*(n+1)²+18*(n+1))` -/
def P2043848038057619524.Spec : Prop :=
  ∀ n, P2043848038057619524.a n = (A100162 (n + 1) : ℚ)

end A100162

/-! ## A100162.P15355320803625746220

`A016755(n)-n^3`
-/

namespace A100162.P15355320803625746220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - (n ^ 3 : ℤ)

end

end A100162.P15355320803625746220

namespace A100162

/-- `A016755(n)-n^3` -/
def P15355320803625746220.Spec : Prop :=
  ∀ n, P15355320803625746220.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P15643614588111931167

`∑[3*A092277(n)+1]`
-/

namespace A100162.P15643614588111931167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A092277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100162.P15643614588111931167

namespace A100162

/-- `∑[3*A092277(n)+1]` -/
def P15643614588111931167.Spec : Prop :=
  ∀ n, P15643614588111931167.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P18312026145028842480

`record[xor(1, n)^3]-A000578(n)`
-/

namespace A100162.P18312026145028842480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A000578 n

end

end A100162.P18312026145028842480

namespace A100162

/-- `record[xor(1, n)^3]-A000578(n)` -/
def P18312026145028842480.Spec : Prop :=
  ∀ n, P18312026145028842480.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P11555140349764022280

`2*A100171(n+1)-(n+1)`
-/

namespace A100162.P11555140349764022280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100171 (n + 1) - (n + 1 : ℤ)

end

end A100162.P11555140349764022280

namespace A100162

/-- `2*A100171(n+1)-(n+1)` -/
def P11555140349764022280.Spec : Prop :=
  ∀ n, P11555140349764022280.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P10153242964526035789

`∑[(A016921(n)+n)*3*n+1]`
-/

namespace A100162.P10153242964526035789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + (n : ℤ)) * (3 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100162.P10153242964526035789

namespace A100162

/-- `∑[(A016921(n)+n)*3*n+1]` -/
def P10153242964526035789.Spec : Prop :=
  ∀ n, P10153242964526035789.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P6772369497609193629

`A011379(n)+A011199(n)`
-/

namespace A100162.P6772369497609193629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + A011199 n

end

end A100162.P6772369497609193629

namespace A100162

/-- `A011379(n)+A011199(n)` -/
def P6772369497609193629.Spec : Prop :=
  ∀ n, P6772369497609193629.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P11733987614614070470

`A055112(n)+A027849(n)`
-/

namespace A100162.P11733987614614070470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A027849 n

end

end A100162.P11733987614614070470

namespace A100162

/-- `A055112(n)+A027849(n)` -/
def P11733987614614070470.Spec : Prop :=
  ∀ n, P11733987614614070470.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P4118781915292210350

`A139757(n)+A027903(n)`
-/

namespace A100162.P4118781915292210350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + A027903 n

end

end A100162.P4118781915292210350

namespace A100162

/-- `A139757(n)+A027903(n)` -/
def P4118781915292210350.Spec : Prop :=
  ∀ n, P4118781915292210350.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P2360456177611547327

`A300758(n)+A005915(n)`
-/

namespace A100162.P2360456177611547327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A005915 n

end

end A100162.P2360456177611547327

namespace A100162

/-- `A300758(n)+A005915(n)` -/
def P2360456177611547327.Spec : Prop :=
  ∀ n, P2360456177611547327.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P15008938570990266858

`A062938(n)-A132998(n)`
-/

namespace A100162.P15008938570990266858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 n - A132998 n

end

end A100162.P15008938570990266858

namespace A100162

/-- `A062938(n)-A132998(n)` -/
def P15008938570990266858.Spec : Prop :=
  ∀ n, P15008938570990266858.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P7820585204362665966

`A005904(n)-A249354(n)`
-/

namespace A100162.P7820585204362665966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A249354 n

end

end A100162.P7820585204362665966

namespace A100162

/-- `A005904(n)-A249354(n)` -/
def P7820585204362665966.Spec : Prop :=
  ∀ n, P7820585204362665966.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P8972881245755460113

`∑[A144314(n)+A056107(n)]`
-/

namespace A100162.P8972881245755460113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100162.P8972881245755460113

namespace A100162

/-- `∑[A144314(n)+A056107(n)]` -/
def P8972881245755460113.Spec : Prop :=
  ∀ n, P8972881245755460113.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P11730915974928110008

`A100150(n+1)+A006331(n)`
-/

namespace A100162.P11730915974928110008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100150 (n + 1) + A006331 n

end

end A100162.P11730915974928110008

namespace A100162

/-- `A100150(n+1)+A006331(n)` -/
def P11730915974928110008.Spec : Prop :=
  ∀ n, P11730915974928110008.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P12568585597466975298

`A059986(n)+A050492(n+1)`
-/

namespace A100162.P12568585597466975298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n + A050492 (n + 1)

end

end A100162.P12568585597466975298

namespace A100162

/-- `A059986(n)+A050492(n+1)` -/
def P12568585597466975298.Spec : Prop :=
  ∀ n, P12568585597466975298.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P2365131917060449504

`A214092(n+1)+A059270(n)`
-/

namespace A100162.P2365131917060449504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1) + A059270 n

end

end A100162.P2365131917060449504

namespace A100162

/-- `A214092(n+1)+A059270(n)` -/
def P2365131917060449504.Spec : Prop :=
  ∀ n, P2365131917060449504.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P1228120670380499170

`A268684(n)+A100155(n+1)`
-/

namespace A100162.P1228120670380499170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A100155 (n + 1)

end

end A100162.P1228120670380499170

namespace A100162

/-- `A268684(n)+A100155(n+1)` -/
def P1228120670380499170.Spec : Prop :=
  ∀ n, P1228120670380499170.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P11493076726465651070

`A005910(n+1)-A085409(n)`
-/

namespace A100162.P11493076726465651070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005910 (n + 1) - A085409 n

end

end A100162.P11493076726465651070

namespace A100162

/-- `A005910(n+1)-A085409(n)` -/
def P11493076726465651070.Spec : Prop :=
  ∀ n, P11493076726465651070.a n = A100162 (n + 1)

end A100162

/-! ## A100162.P9445801531609108825

`A100165(n+1)-A055112(n)`
-/

namespace A100162.P9445801531609108825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100165 (n + 1) - A055112 n

end

end A100162.P9445801531609108825

namespace A100162

/-- `A100165(n+1)-A055112(n)` -/
def P9445801531609108825.Spec : Prop :=
  ∀ n, P9445801531609108825.a n = A100162 (n + 1)

end A100162

/-!
# A100163: Structured disdyakis dodecahedral numbers (vertex structure 5).

The programs for A100163, the canonical program `A100163.P4236165410989739409` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100163 has offset 1).

The definition of A100163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100163.P1581136923843247875

`ogf((1+22x+21x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100163.P1581136923843247875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 22, 21] [1, -4, 6, -4, 1] n

end

end A100163.P1581136923843247875

namespace A100163

/-- `ogf((1+22x+21x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1581136923843247875.Spec : Prop :=
  ∀ n, P1581136923843247875.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P4236165410989739409

`1/6*(44*(n+1)^3-60*(n+1)²+22*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100163

/-- `1/6*(44*(n+1)^3-60*(n+1)²+22*(n+1))` -/
def P4236165410989739409.Spec : Prop :=
  ∀ n, P4236165410989739409.a n = (A100163 (n + 1) : ℚ)

end A100163

/-! ## A100163.P14694074317820208825

`∑[or(1, (2+22*n)*n+1)]`
-/

namespace A100163.P14694074317820208825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 + 22 * n) * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100163.P14694074317820208825

namespace A100163

/-- `∑[or(1, (2+22*n)*n+1)]` -/
def P14694074317820208825.Spec : Prop :=
  ∀ n, (P14694074317820208825.a n : ℤ) = A100163 (n + 1)

end A100163

/-! ## A100163.P7367852247369615790

`22*n²+1+2*n+a(n-1)` with `a(0)=1`
-/

namespace A100163.P7367852247369615790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  22 * n ^ 2 + 1 + 2 * n + a (n - 1)

end

end A100163.P7367852247369615790

namespace A100163

/-- `22*n²+1+2*n+a(n-1)` -/
def P7367852247369615790.Spec : Prop :=
  ∀ n, (P7367852247369615790.a n : ℤ) = A100163 (n + 1)

end A100163

/-! ## A100163.P6629940962870647874

`∑[A010012(n)]+n²`
-/

namespace A100163.P6629940962870647874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A100163.P6629940962870647874

namespace A100163

/-- `∑[A010012(n)]+n²` -/
def P6629940962870647874.Spec : Prop :=
  ∀ n, P6629940962870647874.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P4229646359847878140

`∑[A064762(n)+(n+1)²]`
-/

namespace A100163.P4229646359847878140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064762 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100163.P4229646359847878140

namespace A100163

/-- `∑[A064762(n)+(n+1)²]` -/
def P4229646359847878140.Spec : Prop :=
  ∀ n, P4229646359847878140.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P7410088423398196381

`∑[A195323(n)]+(n+1)²`
-/

namespace A100163.P7410088423398196381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A100163.P7410088423398196381

namespace A100163

/-- `∑[A195323(n)]+(n+1)²` -/
def P7410088423398196381.Spec : Prop :=
  ∀ n, P7410088423398196381.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P15087100748493344595

`A268684(n)+A011199(n)`
-/

namespace A100163.P15087100748493344595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A011199 n

end

end A100163.P15087100748493344595

namespace A100163

/-- `A268684(n)+A011199(n)` -/
def P15087100748493344595.Spec : Prop :=
  ∀ n, P15087100748493344595.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P14459371616370769859

`A016755(n)-A005900(n)`
-/

namespace A100163.P14459371616370769859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A005900 n

end

end A100163.P14459371616370769859

namespace A100163

/-- `A016755(n)-A005900(n)` -/
def P14459371616370769859.Spec : Prop :=
  ∀ n, P14459371616370769859.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P3375132327329019985

`A079588(n)-A210440(n)`
-/

namespace A100163.P3375132327329019985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - A210440 n

end

end A100163.P3375132327329019985

namespace A100163

/-- `A079588(n)-A210440(n)` -/
def P3375132327329019985.Spec : Prop :=
  ∀ n, P3375132327329019985.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P3290390132268927891

`A100150(n+1)+A011379(n)`
-/

namespace A100163.P3290390132268927891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100150 (n + 1) + A011379 n

end

end A100163.P3290390132268927891

namespace A100163

/-- `A100150(n+1)+A011379(n)` -/
def P3290390132268927891.Spec : Prop :=
  ∀ n, P3290390132268927891.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P7518376430572420402

`A100187(n+1)+A027903(n)`
-/

namespace A100163.P7518376430572420402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100187 (n + 1) + A027903 n

end

end A100163.P7518376430572420402

namespace A100163

/-- `A100187(n+1)+A027903(n)` -/
def P7518376430572420402.Spec : Prop :=
  ∀ n, P7518376430572420402.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P16027718317807479932

`A213839(n+1)+A055112(n)`
-/

namespace A100163.P16027718317807479932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + A055112 n

end

end A100163.P16027718317807479932

namespace A100163

/-- `A213839(n+1)+A055112(n)` -/
def P16027718317807479932.Spec : Prop :=
  ∀ n, P16027718317807479932.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P10659297389191302739

`A210440(n)+A095265(n+1)`
-/

namespace A100163.P10659297389191302739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A095265 (n + 1)

end

end A100163.P10659297389191302739

namespace A100163

/-- `A210440(n)+A095265(n+1)` -/
def P10659297389191302739.Spec : Prop :=
  ∀ n, P10659297389191302739.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P11485281383464404594

`A214092(n+1)+A132124(n)`
-/

namespace A100163.P11485281383464404594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (n + 1) + A132124 n

end

end A100163.P11485281383464404594

namespace A100163

/-- `A214092(n+1)+A132124(n)` -/
def P11485281383464404594.Spec : Prop :=
  ∀ n, P11485281383464404594.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P18093991181220793166

`A300758(n)+A100174(n+1)`
-/

namespace A100163.P18093991181220793166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A100174 (n + 1)

end

end A100163.P18093991181220793166

namespace A100163

/-- `A300758(n)+A100174(n+1)` -/
def P18093991181220793166.Spec : Prop :=
  ∀ n, P18093991181220793166.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P9042944116580858492

`A050492(n+1)+A035005(n+1)`
-/

namespace A100163.P9042944116580858492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) + A035005 (n + 1)

end

end A100163.P9042944116580858492

namespace A100163

/-- `A050492(n+1)+A035005(n+1)` -/
def P9042944116580858492.Spec : Prop :=
  ∀ n, P9042944116580858492.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P1840148754323930964

`A169711(n+1)+A135036(n+1)`
-/

namespace A100163.P1840148754323930964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) + A135036 (n + 1)

end

end A100163.P1840148754323930964

namespace A100163

/-- `A169711(n+1)+A135036(n+1)` -/
def P1840148754323930964.Spec : Prop :=
  ∀ n, P1840148754323930964.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P706052591435836230

`A100165(n+1)-A144945(n+1)`
-/

namespace A100163.P706052591435836230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100165 (n + 1) - A144945 (n + 1)

end

end A100163.P706052591435836230

namespace A100163

/-- `A100165(n+1)-A144945(n+1)` -/
def P706052591435836230.Spec : Prop :=
  ∀ n, P706052591435836230.a n = A100163 (n + 1)

end A100163

/-! ## A100163.P14526960998580132926

`A100174(n+1)+2*A055112(n)`
-/

namespace A100163.P14526960998580132926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + 2 * A055112 n

end

end A100163.P14526960998580132926

namespace A100163

/-- `A100174(n+1)+2*A055112(n)` -/
def P14526960998580132926.Spec : Prop :=
  ∀ n, P14526960998580132926.a n = A100163 (n + 1)

end A100163

/-!
# A100164: Structured rhombic triacontahedral numbers (vertex structure 11).

The programs for A100164, the canonical program `A100164.P17230189847089659107` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100164 has offset 1).

The definition of A100164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100164.P3228544698753553868

`ogf((1+28x+21x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100164.P3228544698753553868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 21] [1, -4, 6, -4, 1] n

end

end A100164.P3228544698753553868

namespace A100164

/-- `ogf((1+28x+21x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3228544698753553868.Spec : Prop :=
  ∀ n, P3228544698753553868.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P17230189847089659107

`(5*n+1)*(5*n+3)*(5*n+5)/15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100164

/-- `(5*n+1)*(5*n+3)*(5*n+5)/15` -/
def P17230189847089659107.Spec : Prop :=
  ∀ n, P17230189847089659107.a n = (A100164 (n + 1) : ℚ)

end A100164

/-! ## A100164.P2706817291555493324

`∑[(A017282(n)-5)/4+2]`
-/

namespace A100164.P2706817291555493324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017282 n - 5 : ℚ) / 4 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100164.P2706817291555493324

namespace A100164

/-- `∑[(A017282(n)-5)/4+2]` -/
def P2706817291555493324.Spec : Prop :=
  ∀ n, P2706817291555493324.a n = (A100164 (n + 1) : ℚ)

end A100164

/-! ## A100164.P3395432922360155873

`5*A144945(n+1)+n+1`
-/

namespace A100164.P3395432922360155873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A144945 (n + 1) + (n + 1 : ℤ)

end

end A100164.P3395432922360155873

namespace A100164

/-- `5*A144945(n+1)+n+1` -/
def P3395432922360155873.Spec : Prop :=
  ∀ n, P3395432922360155873.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P14859053849479144038

`A005904(n)-A004466(n)`
-/

namespace A100164.P14859053849479144038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A004466 n

end

end A100164.P14859053849479144038

namespace A100164

/-- `A005904(n)-A004466(n)` -/
def P14859053849479144038.Spec : Prop :=
  ∀ n, P14859053849479144038.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P4874750130353788398

`A079588(n)+∑[A002378(n)]`
-/

namespace A100164.P4874750130353788398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100164.P4874750130353788398

namespace A100164

/-- `A079588(n)+∑[A002378(n)]` -/
def P4874750130353788398.Spec : Prop :=
  ∀ n, P4874750130353788398.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P17188079971797885573

`A035005(n+1)+A027849(n)`
-/

namespace A100164.P17188079971797885573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) + A027849 n

end

end A100164.P17188079971797885573

namespace A100164

/-- `A035005(n+1)+A027849(n)` -/
def P17188079971797885573.Spec : Prop :=
  ∀ n, P17188079971797885573.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P8706846347429859916

`A213842(n+1)+A027903(n)`
-/

namespace A100164.P8706846347429859916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213842 (n + 1) + A027903 n

end

end A100164.P8706846347429859916

namespace A100164

/-- `A213842(n+1)+A027903(n)` -/
def P8706846347429859916.Spec : Prop :=
  ∀ n, P8706846347429859916.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P6932125105291551247

`A213839(n+1)+A059986(n)`
-/

namespace A100164.P6932125105291551247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + A059986 n

end

end A100164.P6932125105291551247

namespace A100164

/-- `A213839(n+1)+A059986(n)` -/
def P6932125105291551247.Spec : Prop :=
  ∀ n, P6932125105291551247.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P16087525784886324018

`A192796(n+1)+A167875(n)`
-/

namespace A100164.P16087525784886324018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192796 (n + 1) + A167875 n

end

end A100164.P16087525784886324018

namespace A100164

/-- `A192796(n+1)+A167875(n)` -/
def P16087525784886324018.Spec : Prop :=
  ∀ n, P16087525784886324018.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P2043636193219990373

`A079588(n)+A210440(n)/2`
-/

namespace A100164.P2043636193219990373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079588 n : ℚ) + (A210440 n : ℚ) / 2

end

end A100164.P2043636193219990373

namespace A100164

/-- `A079588(n)+A210440(n)/2` -/
def P2043636193219990373.Spec : Prop :=
  ∀ n, P2043636193219990373.a n = (A100164 (n + 1) : ℚ)

end A100164

/-! ## A100164.P520126631118368688

`A100150(n+1)+A035006(n+1)`
-/

namespace A100164.P520126631118368688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100150 (n + 1) + A035006 (n + 1)

end

end A100164.P520126631118368688

namespace A100164

/-- `A100150(n+1)+A035006(n+1)` -/
def P520126631118368688.Spec : Prop :=
  ∀ n, P520126631118368688.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P8576615994596674003

`A135036(n+1)+A100162(n+1)`
-/

namespace A100164.P8576615994596674003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1) + A100162 (n + 1)

end

end A100164.P8576615994596674003

namespace A100164

/-- `A135036(n+1)+A100162(n+1)` -/
def P8576615994596674003.Spec : Prop :=
  ∀ n, P8576615994596674003.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P1626817956733117581

`A144945(n+1)+A100161(n+1)`
-/

namespace A100164.P1626817956733117581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) + A100161 (n + 1)

end

end A100164.P1626817956733117581

namespace A100164

/-- `A144945(n+1)+A100161(n+1)` -/
def P1626817956733117581.Spec : Prop :=
  ∀ n, P1626817956733117581.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P17501272170974898862

`A100167(n+1)-A144945(n+1)`
-/

namespace A100164.P17501272170974898862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100167 (n + 1) - A144945 (n + 1)

end

end A100164.P17501272170974898862

namespace A100164

/-- `A100167(n+1)-A144945(n+1)` -/
def P17501272170974898862.Spec : Prop :=
  ∀ n, P17501272170974898862.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P2610162172022260049

`A287335(n+1)-A112524(n+1)`
-/

namespace A100164.P2610162172022260049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287335 (n + 1) - A112524 (n + 1)

end

end A100164.P2610162172022260049

namespace A100164

/-- `A287335(n+1)-A112524(n+1)` -/
def P2610162172022260049.Spec : Prop :=
  ∀ n, P2610162172022260049.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P18247462436478252137

`A027849(n)+2*A144945(n+1)`
-/

namespace A100164.P18247462436478252137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n + 2 * A144945 (n + 1)

end

end A100164.P18247462436478252137

namespace A100164

/-- `A027849(n)+2*A144945(n+1)` -/
def P18247462436478252137.Spec : Prop :=
  ∀ n, P18247462436478252137.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P17297872979808118994

`2*A100161(n+1)-A027849(n)`
-/

namespace A100164.P17297872979808118994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100161 (n + 1) - A027849 n

end

end A100164.P17297872979808118994

namespace A100164

/-- `2*A100161(n+1)-A027849(n)` -/
def P17297872979808118994.Spec : Prop :=
  ∀ n, P17297872979808118994.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P17710829740106548655

`A100173(n+1)+n-A004068(n)`
-/

namespace A100164.P17710829740106548655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100173 (n + 1) + ((n : ℤ) - A004068 n)

end

end A100164.P17710829740106548655

namespace A100164

/-- `A100173(n+1)+n-A004068(n)` -/
def P17710829740106548655.Spec : Prop :=
  ∀ n, P17710829740106548655.a n = A100164 (n + 1)

end A100164

/-! ## A100164.P7897757598696632386

`A024381(n+1)+n*A028896(n)`
-/

namespace A100164.P7897757598696632386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024381 (n + 1) + (n : ℤ) * A028896 n

end

end A100164.P7897757598696632386

namespace A100164

/-- `A024381(n+1)+n*A028896(n)` -/
def P7897757598696632386.Spec : Prop :=
  ∀ n, P7897757598696632386.a n = A100164 (n + 1)

end A100164

/-!
# A100165: Structured rhombic triacontahedral numbers (vertex structure 7).

The programs for A100165, the canonical program `A100165.P5468383146734630604` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100165 has offset 1).

The definition of A100165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100165.P8597722197939630552

`ogf((1+28x+25x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100165.P8597722197939630552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 25] [1, -4, 6, -4, 1] n

end

end A100165.P8597722197939630552

namespace A100165

/-- `ogf((1+28x+25x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P8597722197939630552.Spec : Prop :=
  ∀ n, P8597722197939630552.a n = A100165 (n + 1)

end A100165

/-! ## A100165.P5468383146734630604

`(n+1)*(3*(n+1)-2)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100165

/-- `(n+1)*(3*(n+1)-2)²` -/
def P5468383146734630604.Spec : Prop :=
  ∀ n, P5468383146734630604.a n = A100165 (n + 1)

theorem P5468383146734630604.correct : P5468383146734630604.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel]

end A100165

/-! ## A100165.P7257685308411419334

`∑[lcm(9*n+1, 3*n)+1]`
-/

namespace A100165.P7257685308411419334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 * n + 1) (3 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100165.P7257685308411419334

namespace A100165

/-- `∑[lcm(9*n+1, 3*n)+1]` -/
def P7257685308411419334.Spec : Prop :=
  ∀ n, (P7257685308411419334.a n : ℤ) = A100165 (n + 1)

end A100165

/-! ## A100165.P2048427303564936323

`n*∑[a(n-1)+18]+1` with `a(0)=7, a(1)=24`
-/

namespace A100165.P2048427303564936323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 24] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100165.P2048427303564936323

namespace A100165

/-- `n*∑[a(n-1)+18]+1` -/
def P2048427303564936323.Spec : Prop :=
  ∀ n, (P2048427303564936323.a n : ℤ) = A100165 (n + 1)

end A100165

/-! ## A100165.P12750504722606264459

`∑[a(n-1)+6]²/(n+1)` with `a(0)=1`
-/

namespace A100165.P12750504722606264459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A100165.P12750504722606264459

namespace A100165

/-- `∑[a(n-1)+6]²/(n+1)` -/
def P12750504722606264459.Spec : Prop :=
  ∀ n, P12750504722606264459.a n = (A100165 (n + 1) : ℚ)

end A100165

/-! ## A100165.P9781550851458349129

`∑[or(1, 6*C(9*n+1, 2)/9)]`
-/

namespace A100165.P9781550851458349129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (6 * ((Nat.choose (9 * n + 1) 2 : ℚ) / 9)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100165.P9781550851458349129

namespace A100165

/-- `∑[or(1, 6*C(9*n+1, 2)/9)]` -/
def P9781550851458349129.Spec : Prop :=
  ∀ n, P9781550851458349129.a n = A100165 (n + 1)

end A100165

/-! ## A100165.P11967865146219369426

`2*n*C(2*n+n+3, 2)+n+1`
-/

namespace A100165.P11967865146219369426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (2 * n + (n + 3)) 2 + (n + 1)

end

end A100165.P11967865146219369426

namespace A100165

/-- `2*n*C(2*n+n+3, 2)+n+1` -/
def P11967865146219369426.Spec : Prop :=
  ∀ n, (P11967865146219369426.a n : ℤ) = A100165 (n + 1)

theorem P11967865146219369426.correct : P11967865146219369426.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P11967865146219369426.a, A100165.P5468383146734630604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P8562676513920923243

`A005904(n)-n^3`
-/

namespace A100165.P8562676513920923243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - (n ^ 3 : ℤ)

end

end A100165.P8562676513920923243

namespace A100165

/-- `A005904(n)-n^3` -/
def P8562676513920923243.Spec : Prop :=
  ∀ n, P8562676513920923243.a n = A100165 (n + 1)

theorem P8562676513920923243.correct : P8562676513920923243.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P8562676513920923243.a, A100165.P5468383146734630604.a, A005904, A005904.P6150330656000877991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P15425484801585647834

`∑[A304836(n+1)+1]`
-/

namespace A100165.P15425484801585647834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304836 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100165.P15425484801585647834

namespace A100165

/-- `∑[A304836(n+1)+1]` -/
def P15425484801585647834.Spec : Prop :=
  ∀ n, P15425484801585647834.a n = A100165 (n + 1)

end A100165

/-! ## A100165.P4751359911172932632

`∑[A277990(n)/2+1]`
-/

namespace A100165.P4751359911172932632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277990 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100165.P4751359911172932632

namespace A100165

/-- `∑[A277990(n)/2+1]` -/
def P4751359911172932632.Spec : Prop :=
  ∀ n, P4751359911172932632.a n = (A100165 (n + 1) : ℚ)

end A100165

/-! ## A100165.P2586426115159886261

`n*A304163(n+1)+1`
-/

namespace A100165.P2586426115159886261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A304163 (n + 1) + 1

end

end A100165.P2586426115159886261

namespace A100165

/-- `n*A304163(n+1)+1` -/
def P2586426115159886261.Spec : Prop :=
  ∀ n, P2586426115159886261.a n = A100165 (n + 1)

theorem P2586426115159886261.correct : P2586426115159886261.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P2586426115159886261.a, A100165.P5468383146734630604.a, A304163, A304163.P8672911586747893723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P6919760969309697391

`∑[A016921(n)]²/(n+1)`
-/

namespace A100165.P6919760969309697391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A100165.P6919760969309697391

namespace A100165

/-- `∑[A016921(n)]²/(n+1)` -/
def P6919760969309697391.Spec : Prop :=
  ∀ n, P6919760969309697391.a n = (A100165 (n + 1) : ℚ)

end A100165

/-! ## A100165.P16177980000952033556

`n*∑[A063136(n+1)]+1`
-/

namespace A100165.P16177980000952033556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100165.P16177980000952033556

namespace A100165

/-- `n*∑[A063136(n+1)]+1` -/
def P16177980000952033556.Spec : Prop :=
  ∀ n, P16177980000952033556.a n = A100165 (n + 1)

end A100165

/-! ## A100165.P2192661064269932851

`(A016778(n)+1)*(n+1)-(n+1)`
-/

namespace A100165.P2192661064269932851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 n + 1) * (n + 1 : ℤ) - (n + 1 : ℤ)

end

end A100165.P2192661064269932851

namespace A100165

/-- `(A016778(n)+1)*(n+1)-(n+1)` -/
def P2192661064269932851.Spec : Prop :=
  ∀ n, P2192661064269932851.a n = A100165 (n + 1)

theorem P2192661064269932851.correct : P2192661064269932851.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P2192661064269932851.a, A100165.P5468383146734630604.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P8411686836495947574

`(A046092(n)+(n+1)²)²/(n+1)`
-/

namespace A100165.P8411686836495947574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A046092 n + ((n + 1) ^ 2 : ℤ)) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A100165.P8411686836495947574

namespace A100165

/-- `(A046092(n)+(n+1)²)²/(n+1)` -/
def P8411686836495947574.Spec : Prop :=
  ∀ n, P8411686836495947574.a n = (A100165 (n + 1) : ℚ)

theorem P8411686836495947574.correct : P8411686836495947574.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P8411686836495947574.a, A100165.P5468383146734630604.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P7779150071697839970

`A027903(n)+A011199(n)`
-/

namespace A100165.P7779150071697839970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n + A011199 n

end

end A100165.P7779150071697839970

namespace A100165

/-- `A027903(n)+A011199(n)` -/
def P7779150071697839970.Spec : Prop :=
  ∀ n, P7779150071697839970.a n = A100165 (n + 1)

theorem P7779150071697839970.correct : P7779150071697839970.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P7779150071697839970.a, A100165.P5468383146734630604.a, A011199, A011199.P5039899721906082050.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P13398449258460994278

`A079588(n)+A011379(n)`
-/

namespace A100165.P13398449258460994278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + A011379 n

end

end A100165.P13398449258460994278

namespace A100165

/-- `A079588(n)+A011379(n)` -/
def P13398449258460994278.Spec : Prop :=
  ∀ n, P13398449258460994278.a n = A100165 (n + 1)

end A100165

/-! ## A100165.P15273026706978826569

`A085409(n)+A033577(n)`
-/

namespace A100165.P15273026706978826569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085409 n + A033577 n

end

end A100165.P15273026706978826569

namespace A100165

/-- `A085409(n)+A033577(n)` -/
def P15273026706978826569.Spec : Prop :=
  ∀ n, P15273026706978826569.a n = A100165 (n + 1)

theorem P15273026706978826569.correct : P15273026706978826569.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P15273026706978826569.a, A100165.P5468383146734630604.a, A033577, A033577.P191086975953029494.a, A085409, A085409.P4278820891763862298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P2907436943977019771

`A300758(n)+A027849(n)`
-/

namespace A100165.P2907436943977019771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A027849 n

end

end A100165.P2907436943977019771

namespace A100165

/-- `A300758(n)+A027849(n)` -/
def P2907436943977019771.Spec : Prop :=
  ∀ n, P2907436943977019771.a n = A100165 (n + 1)

theorem P2907436943977019771.correct : P2907436943977019771.Spec := by
  intro n
  simp only [A100165, Nat.add_sub_cancel, A100165.P2907436943977019771.a, A100165.P5468383146734630604.a, A027849, A027849.P11589793859807254720.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100165

/-! ## A100165.P79548442077872701

`A005915(n)+∑[A195321(n)]`
-/

namespace A100165.P79548442077872701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100165.P79548442077872701

namespace A100165

/-- `A005915(n)+∑[A195321(n)]` -/
def P79548442077872701.Spec : Prop :=
  ∀ n, P79548442077872701.a n = A100165 (n + 1)

end A100165

/-!
# A100166: Structured deltoidal hexacontahedral numbers (vertex structure 9).

The programs for A100166, the canonical program `A100166.P9225708390662255170` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100166 has offset 1).

The definition of A100166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100166.P3975433197674766664

`ogf((1+58x+53x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100166.P3975433197674766664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 58, 53] [1, -4, 6, -4, 1] n

end

end A100166.P3975433197674766664

namespace A100166

/-- `ogf((1+58x+53x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3975433197674766664.Spec : Prop :=
  ∀ n, P3975433197674766664.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P9225708390662255170

`1/6*(112*(n+1)^3-156*(n+1)²+50*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100166

/-- `1/6*(112*(n+1)^3-156*(n+1)²+50*(n+1))` -/
def P9225708390662255170.Spec : Prop :=
  ∀ n, P9225708390662255170.a n = (A100166 (n + 1) : ℚ)

end A100166

/-! ## A100166.P2084204854790109688

`Δ[C(2*(n+1), 4)]+∑[48*n²]`
-/

namespace A100166.P2084204854790109688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100166.P2084204854790109688

namespace A100166

/-- `Δ[C(2*(n+1), 4)]+∑[48*n²]` -/
def P2084204854790109688.Spec : Prop :=
  ∀ n, P2084204854790109688.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P7440023971538639913

`A160674(n)-A000447(n)`
-/

namespace A100166.P7440023971538639913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A000447 n

end

end A100166.P7440023971538639913

namespace A100166

/-- `A160674(n)-A000447(n)` -/
def P7440023971538639913.Spec : Prop :=
  ∀ n, P7440023971538639913.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P6273727025282331176

`A100151(n+1)+A006002(n)`
-/

namespace A100166.P6273727025282331176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100151 (n + 1) + A006002 n

end

end A100166.P6273727025282331176

namespace A100166

/-- `A100151(n+1)+A006002(n)` -/
def P6273727025282331176.Spec : Prop :=
  ∀ n, P6273727025282331176.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P15796944084471999896

`A100148(n+1)+A006331(n)`
-/

namespace A100166.P15796944084471999896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + A006331 n

end

end A100166.P15796944084471999896

namespace A100166

/-- `A100148(n+1)+A006331(n)` -/
def P15796944084471999896.Spec : Prop :=
  ∀ n, P15796944084471999896.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P13577165647980675384

`A181773(n+1)+A100157(n+1)`
-/

namespace A100166.P13577165647980675384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + A100157 (n + 1)

end

end A100166.P13577165647980675384

namespace A100166

/-- `A181773(n+1)+A100157(n+1)` -/
def P13577165647980675384.Spec : Prop :=
  ∀ n, P13577165647980675384.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P6558583783733491399

`(A100159(n+1)+A100158(n+1))/2`
-/

namespace A100166.P6558583783733491399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100159 (n + 1) + A100158 (n + 1) : ℚ) / 2

end

end A100166.P6558583783733491399

namespace A100166

/-- `(A100159(n+1)+A100158(n+1))/2` -/
def P6558583783733491399.Spec : Prop :=
  ∀ n, P6558583783733491399.a n = (A100166 (n + 1) : ℚ)

end A100166

/-! ## A100166.P6159755121860971896

`A100158(n+1)+A100160(n+1)-A100159(n+1)`
-/

namespace A100166.P6159755121860971896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100158 (n + 1) + (A100160 (n + 1) - A100159 (n + 1))

end

end A100166.P6159755121860971896

namespace A100166

/-- `A100158(n+1)+A100160(n+1)-A100159(n+1)` -/
def P6159755121860971896.Spec : Prop :=
  ∀ n, P6159755121860971896.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P7437806643276238469

`record[∑[∑[14*n+1]]*char[2*n]]`
-/

namespace A100166.P7437806643276238469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (if ∃ j, f4 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100166.P7437806643276238469

namespace A100166

/-- `record[∑[∑[14*n+1]]*char[2*n]]` -/
def P7437806643276238469.Spec : Prop :=
  ∀ n, (P7437806643276238469.a n : ℤ) = A100166 (n + 1)

end A100166

/-! ## A100166.P10499906440421715953

`A172076(Δ[n²])`
-/

namespace A100166.P10499906440421715953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100166.P10499906440421715953

namespace A100166

/-- `A172076(Δ[n²])` -/
def P10499906440421715953.Spec : Prop :=
  ∀ n, P10499906440421715953.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P16080336994230547828

`or(char[2], A172076(2*n+1))`
-/

namespace A100166.P16080336994230547828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A172076 (2 * n + 1))

end

end A100166.P16080336994230547828

namespace A100166

/-- `or(char[2], A172076(2*n+1))` -/
def P16080336994230547828.Spec : Prop :=
  ∀ n, P16080336994230547828.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P3325395420682822744

`A063522(2*n+1)-A000447(n)`
-/

namespace A100166.P3325395420682822744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n + 1) - A000447 n

end

end A100166.P3325395420682822744

namespace A100166

/-- `A063522(2*n+1)-A000447(n)` -/
def P3325395420682822744.Spec : Prop :=
  ∀ n, P3325395420682822744.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P9607470580046203695

`A181773(n+1)+A000330(2*n+1)`
-/

namespace A100166.P9607470580046203695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + A000330 (2 * n + 1)

end

end A100166.P9607470580046203695

namespace A100166

/-- `A181773(n+1)+A000330(2*n+1)` -/
def P9607470580046203695.Spec : Prop :=
  ∀ n, P9607470580046203695.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P7522038945959312803

`A063521(2*n+1)+A000217(2*n)`
-/

namespace A100166.P7522038945959312803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 (2 * n + 1) + A000217 (2 * n)

end

end A100166.P7522038945959312803

namespace A100166

/-- `A063521(2*n+1)+A000217(2*n)` -/
def P7522038945959312803.Spec : Prop :=
  ∀ n, P7522038945959312803.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P8941344204525106969

`A177890(2*n+1)+A000292(2*n)`
-/

namespace A100166.P8941344204525106969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177890 (2 * n + 1) + A000292 (2 * n)

end

end A100166.P8941344204525106969

namespace A100166

/-- `A177890(2*n+1)+A000292(2*n)` -/
def P8941344204525106969.Spec : Prop :=
  ∀ n, P8941344204525106969.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P2775294919873553256

`A172076(2*n)+A051868(2*n+1)`
-/

namespace A100166.P2775294919873553256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 (2 * n) + A051868 (2 * n + 1)

end

end A100166.P2775294919873553256

namespace A100166

/-- `A172076(2*n)+A051868(2*n+1)` -/
def P2775294919873553256.Spec : Prop :=
  ∀ n, P2775294919873553256.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P3433917585057372410

`A237616(2*n+1)-A000292(2*n)`
-/

namespace A100166.P3433917585057372410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n + 1) - A000292 (2 * n)

end

end A100166.P3433917585057372410

namespace A100166

/-- `A237616(2*n+1)-A000292(2*n)` -/
def P3433917585057372410.Spec : Prop :=
  ∀ n, P3433917585057372410.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P8661296831053183127

`A264850(2*n+1)-A264850(2*n)`
-/

namespace A100166.P8661296831053183127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 (2 * n + 1) - A264850 (2 * n)

end

end A100166.P8661296831053183127

namespace A100166

/-- `A264850(2*n+1)-A264850(2*n)` -/
def P8661296831053183127.Spec : Prop :=
  ∀ n, P8661296831053183127.a n = A100166 (n + 1)

end A100166

/-! ## A100166.P2848315050822108025

`∑[A051868(2*n+1)+A051868(2*n)]`
-/

namespace A100166.P2848315050822108025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 (2 * n + 1) + A051868 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100166.P2848315050822108025

namespace A100166

/-- `∑[A051868(2*n+1)+A051868(2*n)]` -/
def P2848315050822108025.Spec : Prop :=
  ∀ n, P2848315050822108025.a n = A100166 (n + 1)

end A100166

/-!
# A100167: Structured pentagonal icositetrahedral numbers (vertex structure 13).

The programs for A100167, the canonical program `A100167.P4692913706944864841` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100167 has offset 1).

The definition of A100167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100167.P9496705068725237658

`ogf((1+34x+25x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100167.P9496705068725237658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 34, 25] [1, -4, 6, -4, 1] n

end

end A100167.P9496705068725237658

namespace A100167

/-- `ogf((1+34x+25x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P9496705068725237658.Spec : Prop :=
  ∀ n, P9496705068725237658.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P4692913706944864841

`(60*(n+1)^3-72*(n+1)²+18*(n+1))/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100167

/-- `(60*(n+1)^3-72*(n+1)²+18*(n+1))/6` -/
def P4692913706944864841.Spec : Prop :=
  ∀ n, P4692913706944864841.a n = (A100167 (n + 1) : ℚ)

end A100167

/-! ## A100167.P6782712491563185562

`2*A027849(n)-(n+1)`
-/

namespace A100167.P6782712491563185562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027849 n - (n + 1 : ℤ)

end

end A100167.P6782712491563185562

namespace A100167

/-- `2*A027849(n)-(n+1)` -/
def P6782712491563185562.Spec : Prop :=
  ∀ n, P6782712491563185562.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P4284390023770108537

`(n+1)*(A033571(n)+n)`
-/

namespace A100167.P4284390023770108537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A033571 n + (n : ℤ))

end

end A100167.P4284390023770108537

namespace A100167

/-- `(n+1)*(A033571(n)+n)` -/
def P4284390023770108537.Spec : Prop :=
  ∀ n, P4284390023770108537.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P11350604685069502260

`n*∑[A063155(n+1)]+1`
-/

namespace A100167.P11350604685069502260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100167.P11350604685069502260

namespace A100167

/-- `n*∑[A063155(n+1)]+1` -/
def P11350604685069502260.Spec : Prop :=
  ∀ n, P11350604685069502260.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P1286979391320971956

`(n+1)*∑[A114698(n+1)]`
-/

namespace A100167.P1286979391320971956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100167.P1286979391320971956

namespace A100167

/-- `(n+1)*∑[A114698(n+1)]` -/
def P1286979391320971956.Spec : Prop :=
  ∀ n, P1286979391320971956.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P14684799064645629977

`3*A035005(n+1)+n+1`
-/

namespace A100167.P14684799064645629977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035005 (n + 1) + (n + 1 : ℤ)

end

end A100167.P14684799064645629977

namespace A100167

/-- `3*A035005(n+1)+n+1` -/
def P14684799064645629977.Spec : Prop :=
  ∀ n, P14684799064645629977.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P10874183288706566637

`(2*n*A016897(n)+1)*(n+1)`
-/

namespace A100167.P10874183288706566637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) * A016897 n) + 1) * (n + 1 : ℤ)

end

end A100167.P10874183288706566637

namespace A100167

/-- `(2*n*A016897(n)+1)*(n+1)` -/
def P10874183288706566637.Spec : Prop :=
  ∀ n, P10874183288706566637.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P2220575161441390827

`(5*n+4)*A046092(n)+1+n`
-/

namespace A100167.P2220575161441390827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 4 : ℤ) * A046092 n + 1 + (n : ℤ)

end

end A100167.P2220575161441390827

namespace A100167

/-- `(5*n+4)*A046092(n)+1+n` -/
def P2220575161441390827.Spec : Prop :=
  ∀ n, P2220575161441390827.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P4778533179149634557

`(A005563(n)+(3*n+1)²)*(n+1)`
-/

namespace A100167.P4778533179149634557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n + ((3 * n + 1) ^ 2 : ℤ)) * (n + 1 : ℤ)

end

end A100167.P4778533179149634557

namespace A100167

/-- `(A005563(n)+(3*n+1)²)*(n+1)` -/
def P4778533179149634557.Spec : Prop :=
  ∀ n, P4778533179149634557.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P6969457398531255686

`((A016885(n)+1)*2*n+1)*(n+1)`
-/

namespace A100167.P6969457398531255686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n + 1) * (2 * n : ℤ) + 1) * (n + 1 : ℤ)

end

end A100167.P6969457398531255686

namespace A100167

/-- `((A016885(n)+1)*2*n+1)*(n+1)` -/
def P6969457398531255686.Spec : Prop :=
  ∀ n, P6969457398531255686.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P7398231771235102600

`(A016777(n)²+n²+n+n)*(n+1)`
-/

namespace A100167.P7398231771235102600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n ^ 2 + (n ^ 2 + n : ℤ) + (n : ℤ)) * (n + 1 : ℤ)

end

end A100167.P7398231771235102600

namespace A100167

/-- `(A016777(n)²+n²+n+n)*(n+1)` -/
def P7398231771235102600.Spec : Prop :=
  ∀ n, P7398231771235102600.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P5257195255950325174

`((A004767(n)+n+1)*2*n+1)*(n+1)`
-/

namespace A100167.P5257195255950325174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004767 n + (n + 1 : ℤ)) * (2 * n : ℤ) + 1) * (n + 1 : ℤ)

end

end A100167.P5257195255950325174

namespace A100167

/-- `((A004767(n)+n+1)*2*n+1)*(n+1)` -/
def P5257195255950325174.Spec : Prop :=
  ∀ n, P5257195255950325174.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P18170181411150658701

`A045944(n)+A005904(n)`
-/

namespace A100167.P18170181411150658701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + A005904 n

end

end A100167.P18170181411150658701

namespace A100167

/-- `A045944(n)+A005904(n)` -/
def P18170181411150658701.Spec : Prop :=
  ∀ n, P18170181411150658701.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P11893075164947057612

`A079588(n)+A035006(n+1)`
-/

namespace A100167.P11893075164947057612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + A035006 (n + 1)

end

end A100167.P11893075164947057612

namespace A100167

/-- `A079588(n)+A035006(n+1)` -/
def P11893075164947057612.Spec : Prop :=
  ∀ n, P11893075164947057612.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P13908977497908952921

`A100162(n+1)+A059986(n)`
-/

namespace A100167.P13908977497908952921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100162 (n + 1) + A059986 n

end

end A100167.P13908977497908952921

namespace A100167

/-- `A100162(n+1)+A059986(n)` -/
def P13908977497908952921.Spec : Prop :=
  ∀ n, P13908977497908952921.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P127996899414336391

`A267370(n)+A100172(n+1)`
-/

namespace A100167.P127996899414336391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A100172 (n + 1)

end

end A100167.P127996899414336391

namespace A100167

/-- `A267370(n)+A100172(n+1)` -/
def P127996899414336391.Spec : Prop :=
  ∀ n, P127996899414336391.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P1496670277208836919

`A272399(n+1)+A244729(n)`
-/

namespace A100167.P1496670277208836919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (n + 1) + A244729 n

end

end A100167.P1496670277208836919

namespace A100167

/-- `A272399(n+1)+A244729(n)` -/
def P1496670277208836919.Spec : Prop :=
  ∀ n, P1496670277208836919.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P8050305105711520839

`A128822(n+1)-A005898(n)`
-/

namespace A100167.P8050305105711520839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128822 (n + 1) - A005898 n

end

end A100167.P8050305105711520839

namespace A100167

/-- `A128822(n+1)-A005898(n)` -/
def P8050305105711520839.Spec : Prop :=
  ∀ n, P8050305105711520839.a n = A100167 (n + 1)

end A100167

/-! ## A100167.P7788552369465416713

`A193228(n+1)-A007588(n)`
-/

namespace A100167.P7788552369465416713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) - A007588 n

end

end A100167.P7788552369465416713

namespace A100167

/-- `A193228(n+1)-A007588(n)` -/
def P7788552369465416713.Spec : Prop :=
  ∀ n, P7788552369465416713.a n = A100167 (n + 1)

end A100167

/-!
# A100168: Structured pentagonal icositetrahedral numbers (vertex structure 10).

The programs for A100168, the canonical program `A100168.P13765369549332869318` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100168 has offset 1).

The definition of A100168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100168.P10892292027051993570

`ogf((1+34x+28x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100168.P10892292027051993570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 34, 28] [1, -4, 6, -4, 1] n

end

end A100168.P10892292027051993570

namespace A100168

/-- `ogf((1+34x+28x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10892292027051993570.Spec : Prop :=
  ∀ n, P10892292027051993570.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P8777256521945537944

`(63*(n+1)^3-81*(n+1)²+24*(n+1))/6`
-/

namespace A100168.P8777256521945537944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((63 * (n + 1) ^ 3 : ℤ) - (81 * (n + 1) ^ 2 : ℤ) + (24 * (n + 1) : ℤ) : ℚ) / 6

end

end A100168.P8777256521945537944

namespace A100168

/-- `(63*(n+1)^3-81*(n+1)²+24*(n+1))/6` -/
def P8777256521945537944.Spec : Prop :=
  ∀ n, P8777256521945537944.a n = (A100168 (n + 1) : ℚ)

theorem P8777256521945537944.correct : P8777256521945537944.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100168, Nat.add_sub_cancel, A100168.P8777256521945537944.a, A100168.P13765369549332869318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100168, Nat.add_sub_cancel, A100168.P8777256521945537944.a, A100168.P13765369549332869318.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100168

/-! ## A100168.P13765369549332869318

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=38, a(2)=174, a(3)=472`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100168

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13765369549332869318.Spec : Prop :=
  ∀ n, P13765369549332869318.a n = A100168 (n + 1)

theorem P13765369549332869318.correct : P13765369549332869318.Spec := by
  intro n
  simp only [A100168, Nat.add_sub_cancel]

end A100168

/-! ## A100168.P9000394652857929691

`∑[3*C(n, 2)]+∑[(5*n+1)*6*n+1]`
-/

namespace A100168.P9000394652857929691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n + 1) * (6 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100168.P9000394652857929691

namespace A100168

/-- `∑[3*C(n, 2)]+∑[(5*n+1)*6*n+1]` -/
def P9000394652857929691.Spec : Prop :=
  ∀ n, (P9000394652857929691.a n : ℤ) = A100168 (n + 1)

end A100168

/-! ## A100168.P17225248884506158164

`(A033571(n)+∑[n])*(n+1)`
-/

namespace A100168.P17225248884506158164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033571 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (n + 1 : ℤ)

end

end A100168.P17225248884506158164

namespace A100168

/-- `(A033571(n)+∑[n])*(n+1)` -/
def P17225248884506158164.Spec : Prop :=
  ∀ n, P17225248884506158164.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P760032378084011336

`(∑[3*n]+A016777(n)²)*(n+1)`
-/

namespace A100168.P760032378084011336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A016777 n ^ 2) * (n + 1 : ℤ)

end

end A100168.P760032378084011336

namespace A100168

/-- `(∑[3*n]+A016777(n)²)*(n+1)` -/
def P760032378084011336.Spec : Prop :=
  ∀ n, P760032378084011336.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P4313211753477853200

`A135503(n)+A100167(n+1)`
-/

namespace A100168.P4313211753477853200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A100167 (n + 1)

end

end A100168.P4313211753477853200

namespace A100168

/-- `A135503(n)+A100167(n+1)` -/
def P4313211753477853200.Spec : Prop :=
  ∀ n, P4313211753477853200.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P262180126768195494

`A318159(n+1)+A028896(n)`
-/

namespace A100168.P262180126768195494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318159 (n + 1) + A028896 n

end

end A100168.P262180126768195494

namespace A100168

/-- `A318159(n+1)+A028896(n)` -/
def P262180126768195494.Spec : Prop :=
  ∀ n, P262180126768195494.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P9044000912089288907

`A193228(n+1)-A004188(n)`
-/

namespace A100168.P9044000912089288907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) - A004188 n

end

end A100168.P9044000912089288907

namespace A100168

/-- `A193228(n+1)-A004188(n)` -/
def P9044000912089288907.Spec : Prop :=
  ∀ n, P9044000912089288907.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P16890424444454669844

`A135036(n+1)+A100173(n+1)`
-/

namespace A100168.P16890424444454669844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1) + A100173 (n + 1)

end

end A100168.P16890424444454669844

namespace A100168

/-- `A135036(n+1)+A100173(n+1)` -/
def P16890424444454669844.Spec : Prop :=
  ∀ n, P16890424444454669844.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P1813130032606172816

`2*A214092(n+1)-A100175(n+1)`
-/

namespace A100168.P1813130032606172816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214092 (n + 1) - A100175 (n + 1)

end

end A100168.P1813130032606172816

namespace A100168

/-- `2*A214092(n+1)-A100175(n+1)` -/
def P1813130032606172816.Spec : Prop :=
  ∀ n, P1813130032606172816.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P9480771419399317263

`A000326(n+1)*A016993(n)-A002378(n)`
-/

namespace A100168.P9480771419399317263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) * A016993 n - A002378 n

end

end A100168.P9480771419399317263

namespace A100168

/-- `A000326(n+1)*A016993(n)-A002378(n)` -/
def P9480771419399317263.Spec : Prop :=
  ∀ n, P9480771419399317263.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P3466770212275153958

`A006566(n+1)+A005904(n)-A005917(n+1)`
-/

namespace A100168.P3466770212275153958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 1) + (A005904 n - A005917 (n + 1))

end

end A100168.P3466770212275153958

namespace A100168

/-- `A006566(n+1)+A005904(n)-A005917(n+1)` -/
def P3466770212275153958.Spec : Prop :=
  ∀ n, P3466770212275153958.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P16051680301852932971

`A051673(n+1)+A100167(n+1)-A100156(n+1)`
-/

namespace A100168.P16051680301852932971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 (n + 1) + (A100167 (n + 1) - A100156 (n + 1))

end

end A100168.P16051680301852932971

namespace A100168

/-- `A051673(n+1)+A100167(n+1)-A100156(n+1)` -/
def P16051680301852932971.Spec : Prop :=
  ∀ n, P16051680301852932971.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P1125306318812076770

`A004188(Δ[n²])-A004188(n)`
-/

namespace A100168.P1125306318812076770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A004188 n

end

end A100168.P1125306318812076770

namespace A100168

/-- `A004188(Δ[n²])-A004188(n)` -/
def P1125306318812076770.Spec : Prop :=
  ∀ n, P1125306318812076770.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P8413249823223416798

`A304993(n)+A007584(2*n+1)`
-/

namespace A100168.P8413249823223416798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A007584 (2 * n + 1)

end

end A100168.P8413249823223416798

namespace A100168

/-- `A304993(n)+A007584(2*n+1)` -/
def P8413249823223416798.Spec : Prop :=
  ∀ n, P8413249823223416798.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P3212101840794766770

`(A000566(Δ[n²])+A000217(n))*(n+1)`
-/

namespace A100168.P3212101840794766770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000217 n) * (n + 1 : ℤ)

end

end A100168.P3212101840794766770

namespace A100168

/-- `(A000566(Δ[n²])+A000217(n))*(n+1)` -/
def P3212101840794766770.Spec : Prop :=
  ∀ n, P3212101840794766770.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P17001732560992733947

`A007584(2*n+1)+A007584(n+1)-A000384(n+1)`
-/

namespace A100168.P17001732560992733947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (2 * n + 1) + (A007584 (n + 1) - A000384 (n + 1))

end

end A100168.P17001732560992733947

namespace A100168

/-- `A007584(2*n+1)+A007584(n+1)-A000384(n+1)` -/
def P17001732560992733947.Spec : Prop :=
  ∀ n, P17001732560992733947.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P16735982297124367630

`A007586(2*n+1)+A000567(n+1)-A007586(n+1)`
-/

namespace A100168.P16735982297124367630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 (2 * n + 1) + (A000567 (n + 1) - A007586 (n + 1))

end

end A100168.P16735982297124367630

namespace A100168

/-- `A007586(2*n+1)+A000567(n+1)-A007586(n+1)` -/
def P16735982297124367630.Spec : Prop :=
  ∀ n, P16735982297124367630.a n = A100168 (n + 1)

end A100168

/-! ## A100168.P17023665219519412827

`A004188(2*n+1)-∪[A004188(2*n), A004188(n+1)]`
-/

namespace A100168.P17023665219519412827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (2 * n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A100168.P17023665219519412827

namespace A100168

/-- `A004188(2*n+1)-∪[A004188(2*n), A004188(n+1)]` -/
def P17023665219519412827.Spec : Prop :=
  ∀ n, P17023665219519412827.a n = A100168 (n + 1)

end A100168

/-!
# A100169: Structured pentagonal hexacontahedral numbers (vertex structure 16).

The programs for A100169, the canonical program `A100169.P82816131175825601` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100169 has offset 1).

The definition of A100169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100169.P17953980754446192870

`ogf((1+88x+76x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100169.P17953980754446192870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 88, 76] [1, -4, 6, -4, 1] n

end

end A100169.P17953980754446192870

namespace A100169

/-- `ogf((1+88x+76x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17953980754446192870.Spec : Prop :=
  ∀ n, P17953980754446192870.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P82816131175825601

`(55*(n+1)^3-75*(n+1)²+22*(n+1))/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100169

/-- `(55*(n+1)^3-75*(n+1)²+22*(n+1))/2` -/
def P82816131175825601.Spec : Prop :=
  ∀ n, P82816131175825601.a n = (A100169 (n + 1) : ℚ)

end A100169

/-! ## A100169.P17151457277946420629

`3*(A100173(n+1)-(n+1))+n+1`
-/

namespace A100169.P17151457277946420629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A100173 (n + 1) - (n + 1 : ℤ)) + (n + 1 : ℤ)

end

end A100169.P17151457277946420629

namespace A100169

/-- `3*(A100173(n+1)-(n+1))+n+1` -/
def P17151457277946420629.Spec : Prop :=
  ∀ n, P17151457277946420629.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P10396891344631152345

`A193248(n+1)-A063522(n)`
-/

namespace A100169.P10396891344631152345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193248 (n + 1) - A063522 n

end

end A100169.P10396891344631152345

namespace A100169

/-- `A193248(n+1)-A063522(n)` -/
def P10396891344631152345.Spec : Prop :=
  ∀ n, P10396891344631152345.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P6207570101962168845

`(n+1)*(A033576(n)+∑[A008589(n)])`
-/

namespace A100169.P6207570101962168845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A033576 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100169.P6207570101962168845

namespace A100169

/-- `(n+1)*(A033576(n)+∑[A008589(n)])` -/
def P6207570101962168845.Spec : Prop :=
  ∀ n, P6207570101962168845.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P12439339031635657900

`2*A100158(n+1)-A100173(n+1)`
-/

namespace A100169.P12439339031635657900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100158 (n + 1) - A100173 (n + 1)

end

end A100169.P12439339031635657900

namespace A100169

/-- `2*A100158(n+1)-A100173(n+1)` -/
def P12439339031635657900.Spec : Prop :=
  ∀ n, P12439339031635657900.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P8981378316673958953

`A322830(n)-(A063522(n)+A055112(n))`
-/

namespace A100169.P8981378316673958953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322830 n - (A063522 n + A055112 n)

end

end A100169.P8981378316673958953

namespace A100169

/-- `A322830(n)-(A063522(n)+A055112(n))` -/
def P8981378316673958953.Spec : Prop :=
  ∀ n, P8981378316673958953.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P16912539972948240278

`A193248(n+1)+A004006(n)-A259110(n)`
-/

namespace A100169.P16912539972948240278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193248 (n + 1) + (A004006 n - A259110 n)

end

end A100169.P16912539972948240278

namespace A100169

/-- `A193248(n+1)+A004006(n)-A259110(n)` -/
def P16912539972948240278.Spec : Prop :=
  ∀ n, P16912539972948240278.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P8480485287166915100

`A135503(n)+∑[A298027(A008588(n))]`
-/

namespace A100169.P8480485287166915100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 (A008588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100169.P8480485287166915100

namespace A100169

/-- `A135503(n)+∑[A298027(A008588(n))]` -/
def P8480485287166915100.Spec : Prop :=
  ∀ n, P8480485287166915100.a n = A100169 (n + 1)

end A100169

/-! ## A100169.P1951690523293124054

`(n+1)*(A033576(n)+A008589(∑[n]))`
-/

namespace A100169.P1951690523293124054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A033576 n + A008589 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A100169.P1951690523293124054

namespace A100169

/-- `(n+1)*(A033576(n)+A008589(∑[n]))` -/
def P1951690523293124054.Spec : Prop :=
  ∀ n, P1951690523293124054.a n = A100169 (n + 1)

end A100169

/-!
# A100170: Structured pentagonal hexacontahedral numbers (vertex structure 10).

The programs for A100170, the canonical program `A100170.P14391321665225161067` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100170 has offset 1).

The definition of A100170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100170.P7473062257556411664

`ogf((1+88x+82x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100170.P7473062257556411664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 88, 82] [1, -4, 6, -4, 1] n

end

end A100170.P7473062257556411664

namespace A100170

/-- `ogf((1+88x+82x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7473062257556411664.Spec : Prop :=
  ∀ n, P7473062257556411664.a n = A100170 (n + 1)

end A100170

/-! ## A100170.P14391321665225161067

`(n+1)*(171*(n+1)²-243*(n+1)+78)/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100170

/-- `(n+1)*(171*(n+1)²-243*(n+1)+78)/6` -/
def P14391321665225161067.Spec : Prop :=
  ∀ n, P14391321665225161067.a n = (A100170 (n + 1) : ℚ)

end A100170

/-! ## A100170.P13657415818565633589

`∑[A017162(n)+∑[9*n]+1]`
-/

namespace A100170.P13657415818565633589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017162 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100170.P13657415818565633589

namespace A100170

/-- `∑[A017162(n)+∑[9*n]+1]` -/
def P13657415818565633589.Spec : Prop :=
  ∀ n, P13657415818565633589.a n = A100170 (n + 1)

end A100170

/-! ## A100170.P1656559693947638712

`3*A100172(n+1)-2*(n+1)`
-/

namespace A100170.P1656559693947638712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A100172 (n + 1) - (2 * (n + 1) : ℤ)

end

end A100170.P1656559693947638712

namespace A100170

/-- `3*A100172(n+1)-2*(n+1)` -/
def P1656559693947638712.Spec : Prop :=
  ∀ n, P1656559693947638712.a n = A100170 (n + 1)

end A100170

/-! ## A100170.P3103579519059374447

`A193248(n+1)-A004188(n)`
-/

namespace A100170.P3103579519059374447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193248 (n + 1) - A004188 n

end

end A100170.P3103579519059374447

namespace A100170

/-- `A193248(n+1)-A004188(n)` -/
def P3103579519059374447.Spec : Prop :=
  ∀ n, P3103579519059374447.a n = A100170 (n + 1)

end A100170

/-! ## A100170.P9990531830679002680

`A004188(n+1)+∑[(9*n)²]`
-/

namespace A100170.P9990531830679002680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100170.P9990531830679002680

namespace A100170

/-- `A004188(n+1)+∑[(9*n)²]` -/
def P9990531830679002680.Spec : Prop :=
  ∀ n, P9990531830679002680.a n = A100170 (n + 1)

end A100170

/-! ## A100170.P14715802469132904795

`A081438(3*n)+n*A005448(n+2)`
-/

namespace A100170.P14715802469132904795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 (3 * n) + (n : ℤ) * A005448 (n + 2)

end

end A100170.P14715802469132904795

namespace A100170

/-- `A081438(3*n)+n*A005448(n+2)` -/
def P14715802469132904795.Spec : Prop :=
  ∀ n, P14715802469132904795.a n = A100170 (n + 1)

end A100170

/-!
# A100171: Structured triakis octahedral numbers (vertex structure 4).

The programs for A100171, the canonical program `A100171.P8015729168448380627` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100171 has offset 1).

The definition of A100171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100171.P1952741765078379906

`ogf((1+10x+10x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100171.P1952741765078379906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 10] [1, -4, 6, -4, 1] n

end

end A100171.P1952741765078379906

namespace A100171

/-- `ogf((1+10x+10x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1952741765078379906.Spec : Prop :=
  ∀ n, P1952741765078379906.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P15896349973502935436

`(21*(n+1)^3-27*(n+1)²+12*(n+1))/6`
-/

namespace A100171.P15896349973502935436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * (n + 1) ^ 3 : ℤ) - (27 * (n + 1) ^ 2 : ℤ) + (12 * (n + 1) : ℤ) : ℚ) / 6

end

end A100171.P15896349973502935436

namespace A100171

/-- `(21*(n+1)^3-27*(n+1)²+12*(n+1))/6` -/
def P15896349973502935436.Spec : Prop :=
  ∀ n, P15896349973502935436.a n = (A100171 (n + 1) : ℚ)

theorem P15896349973502935436.correct : P15896349973502935436.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100171, Nat.add_sub_cancel, A100171.P15896349973502935436.a, A100171.P8015729168448380627.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100171, Nat.add_sub_cancel, A100171.P15896349973502935436.a, A100171.P8015729168448380627.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100171

/-! ## A100171.P8015729168448380627

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=60, a(3)=160`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100171

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8015729168448380627.Spec : Prop :=
  ∀ n, P8015729168448380627.a n = A100171 (n + 1)

theorem P8015729168448380627.correct : P8015729168448380627.Spec := by
  intro n
  simp only [A100171, Nat.add_sub_cancel]

end A100171

/-! ## A100171.P10968109740423792098

`∑[∑[a(n-1)+21]]` with `a(0)=1, a(1)=12`
-/

namespace A100171.P10968109740423792098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100171.P10968109740423792098

namespace A100171

/-- `∑[∑[a(n-1)+21]]` -/
def P10968109740423792098.Spec : Prop :=
  ∀ n, (P10968109740423792098.a n : ℤ) = A100171 (n + 1)

end A100171

/-! ## A100171.P7763402439471647862

`∑[3*C(n, 2)]+(n+1)*Δ[n^3]`
-/

namespace A100171.P7763402439471647862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A100171.P7763402439471647862

namespace A100171

/-- `∑[3*C(n, 2)]+(n+1)*Δ[n^3]` -/
def P7763402439471647862.Spec : Prop :=
  ∀ n, P7763402439471647862.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P190721600354347674

`∑[A022279(n)+n+1]`
-/

namespace A100171.P190721600354347674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100171.P190721600354347674

namespace A100171

/-- `∑[A022279(n)+n+1]` -/
def P190721600354347674.Spec : Prop :=
  ∀ n, P190721600354347674.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P2199317520823825679

`Δ[n²²]-A006003(n)`
-/

namespace A100171.P2199317520823825679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A006003 n

end

end A100171.P2199317520823825679

namespace A100171

/-- `Δ[n²²]-A006003(n)` -/
def P2199317520823825679.Spec : Prop :=
  ∀ n, P2199317520823825679.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P15305759372641446947

`(n+1)*(A179986(n)+1)`
-/

namespace A100171.P15305759372641446947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A179986 n + 1)

end

end A100171.P15305759372641446947

namespace A100171

/-- `(n+1)*(A179986(n)+1)` -/
def P15305759372641446947.Spec : Prop :=
  ∀ n, P15305759372641446947.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P10054507121513171535

`3*A304993(n)+n+1`
-/

namespace A100171.P10054507121513171535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A304993 n + (n + 1 : ℤ)

end

end A100171.P10054507121513171535

namespace A100171

/-- `3*A304993(n)+n+1` -/
def P10054507121513171535.Spec : Prop :=
  ∀ n, P10054507121513171535.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P11476427395440528693

`(n+1)*(A389615(n)+n)`
-/

namespace A100171.P11476427395440528693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A389615 n + (n : ℤ))

end

end A100171.P11476427395440528693

namespace A100171

/-- `(n+1)*(A389615(n)+n)` -/
def P11476427395440528693.Spec : Prop :=
  ∀ n, P11476427395440528693.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P5615601357416503669

`∑[A022276(n)+(n+1)²]`
-/

namespace A100171.P5615601357416503669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100171.P5615601357416503669

namespace A100171

/-- `∑[A022276(n)+(n+1)²]` -/
def P5615601357416503669.Spec : Prop :=
  ∀ n, P5615601357416503669.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P4922817924349154081

`∑[A022278(n)]+(n+1)²`
-/

namespace A100171.P4922817924349154081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A100171.P4922817924349154081

namespace A100171

/-- `∑[A022278(n)]+(n+1)²` -/
def P4922817924349154081.Spec : Prop :=
  ∀ n, P4922817924349154081.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P18042233562570095433

`A364401(n+1)-∑[n²]`
-/

namespace A100171.P18042233562570095433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364401 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100171.P18042233562570095433

namespace A100171

/-- `A364401(n+1)-∑[n²]` -/
def P18042233562570095433.Spec : Prop :=
  ∀ n, P18042233562570095433.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P12695310334864164423

`(n+1)*(A186029(n)+1+n)`
-/

namespace A100171.P12695310334864164423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A186029 n + 1 + (n : ℤ))

end

end A100171.P12695310334864164423

namespace A100171

/-- `(n+1)*(A186029(n)+1+n)` -/
def P12695310334864164423.Spec : Prop :=
  ∀ n, P12695310334864164423.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P3239508615401971330

`(n+1)*(A024966(n)+1-n)`
-/

namespace A100171.P3239508615401971330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A024966 n + (1 - (n : ℤ)))

end

end A100171.P3239508615401971330

namespace A100171

/-- `(n+1)*(A024966(n)+1-n)` -/
def P3239508615401971330.Spec : Prop :=
  ∀ n, P3239508615401971330.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P110698426271335619

`(n+1)*(A069099(n+1)-n)`
-/

namespace A100171.P110698426271335619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A069099 (n + 1) - (n : ℤ))

end

end A100171.P110698426271335619

namespace A100171

/-- `(n+1)*(A069099(n+1)-n)` -/
def P110698426271335619.Spec : Prop :=
  ∀ n, P110698426271335619.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P18059866993756307613

`A100186(n+1)-∑[∑[n]+n]`
-/

namespace A100171.P18059866993756307613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100171.P18059866993756307613

namespace A100171

/-- `A100186(n+1)-∑[∑[n]+n]` -/
def P18059866993756307613.Spec : Prop :=
  ∀ n, P18059866993756307613.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P4784613387809131219

`(n+1)*(A209294(n+1)-(n+1))`
-/

namespace A100171.P4784613387809131219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A209294 (n + 1) - (n + 1 : ℤ))

end

end A100171.P4784613387809131219

namespace A100171

/-- `(n+1)*(A209294(n+1)-(n+1))` -/
def P4784613387809131219.Spec : Prop :=
  ∀ n, P4784613387809131219.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P14371800886271575904

`(A016945(n)+n+2)*∑[n]+1+n`
-/

namespace A100171.P14371800886271575904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n + (n : ℤ) + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1 + (n : ℤ)

end

end A100171.P14371800886271575904

namespace A100171

/-- `(A016945(n)+n+2)*∑[n]+1+n` -/
def P14371800886271575904.Spec : Prop :=
  ∀ n, P14371800886271575904.a n = A100171 (n + 1)

end A100171

/-! ## A100171.P11670043732257633462

`A077043(n)+A007202(n)`
-/

namespace A100171.P11670043732257633462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A007202 n

end

end A100171.P11670043732257633462

namespace A100171

/-- `A077043(n)+A007202(n)` -/
def P11670043732257633462.Spec : Prop :=
  ∀ n, P11670043732257633462.a n = A100171 (n + 1)

end A100171

/-!
# A100172: Structured triakis icosahedral numbers (vertex structure 4).

The programs for A100172, the canonical program `A100172.P10568565338609333835` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100172 has offset 1).

The definition of A100172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100172.P1050551716890830272

`ogf((1+28x+28x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100172.P1050551716890830272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 28] [1, -4, 6, -4, 1] n

end

end A100172.P1050551716890830272

namespace A100172

/-- `ogf((1+28x+28x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1050551716890830272.Spec : Prop :=
  ∀ n, P1050551716890830272.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P10568565338609333835

`1/6*(57*(n+1)^3-81*(n+1)²+30*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100172

/-- `1/6*(57*(n+1)^3-81*(n+1)²+30*(n+1))` -/
def P10568565338609333835.Spec : Prop :=
  ∀ n, P10568565338609333835.a n = (A100172 (n + 1) : ℚ)

end A100172

/-! ## A100172.P1845137656144941890

`(A100159(n+1)+n+1)/2`
-/

namespace A100172.P1845137656144941890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100159 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A100172.P1845137656144941890

namespace A100172

/-- `(A100159(n+1)+n+1)/2` -/
def P1845137656144941890.Spec : Prop :=
  ∀ n, P1845137656144941890.a n = (A100172 (n + 1) : ℚ)

end A100172

/-! ## A100172.P2621128762703534725

`A005904(n)-(n^3+n)/2`
-/

namespace A100172.P2621128762703534725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005904 n : ℚ) - (n ^ 3 + n : ℚ) / 2

end

end A100172.P2621128762703534725

namespace A100172

/-- `A005904(n)-(n^3+n)/2` -/
def P2621128762703534725.Spec : Prop :=
  ∀ n, P2621128762703534725.a n = (A100172 (n + 1) : ℚ)

end A100172

/-! ## A100172.P12485351854596680756

`A015219(n)-A101165(n)`
-/

namespace A100172.P12485351854596680756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n - A101165 n

end

end A100172.P12485351854596680756

namespace A100172

/-- `A015219(n)-A101165(n)` -/
def P12485351854596680756.Spec : Prop :=
  ∀ n, P12485351854596680756.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P15154995175903521251

`A135503(n)+A100165(n+1)`
-/

namespace A100172.P15154995175903521251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A100165 (n + 1)

end

end A100172.P15154995175903521251

namespace A100172

/-- `A135503(n)+A100165(n+1)` -/
def P15154995175903521251.Spec : Prop :=
  ∀ n, P15154995175903521251.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P1606769684787985618

`A100167(n+1)-A267370(n)`
-/

namespace A100172.P1606769684787985618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100167 (n + 1) - A267370 n

end

end A100172.P1606769684787985618

namespace A100172

/-- `A100167(n+1)-A267370(n)` -/
def P1606769684787985618.Spec : Prop :=
  ∀ n, P1606769684787985618.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P7322614345696016194

`A100154(n+1)-A192796(n+1)`
-/

namespace A100172.P7322614345696016194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100154 (n + 1) - A192796 (n + 1)

end

end A100172.P7322614345696016194

namespace A100172

/-- `A100154(n+1)-A192796(n+1)` -/
def P7322614345696016194.Spec : Prop :=
  ∀ n, P7322614345696016194.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P16548673089974593916

`2*A100150(n+1)-A100184(n+1)`
-/

namespace A100172.P16548673089974593916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100150 (n + 1) - A100184 (n + 1)

end

end A100172.P16548673089974593916

namespace A100172

/-- `2*A100150(n+1)-A100184(n+1)` -/
def P16548673089974593916.Spec : Prop :=
  ∀ n, P16548673089974593916.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P9994364075458331681

`A000292(n+1)+A005904(n)-A005894(n)`
-/

namespace A100172.P9994364075458331681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A005904 n - A005894 n)

end

end A100172.P9994364075458331681

namespace A100172

/-- `A000292(n+1)+A005904(n)-A005894(n)` -/
def P9994364075458331681.Spec : Prop :=
  ∀ n, P9994364075458331681.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P3064130054283959642

`A256649(n+1)+2*A237616(n)`
-/

namespace A100172.P3064130054283959642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256649 (n + 1) + 2 * A237616 n

end

end A100172.P3064130054283959642

namespace A100172

/-- `A256649(n+1)+2*A237616(n)` -/
def P3064130054283959642.Spec : Prop :=
  ∀ n, P3064130054283959642.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P1003248510181296239

`A051682(n+1)+n*A051873(n+1)`
-/

namespace A100172.P1003248510181296239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n + 1) + (n : ℤ) * A051873 (n + 1)

end

end A100172.P1003248510181296239

namespace A100172

/-- `A051682(n+1)+n*A051873(n+1)` -/
def P1003248510181296239.Spec : Prop :=
  ∀ n, P1003248510181296239.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P721799482002498811

`A256649(n+1)+A256649(n)+A002411(n)`
-/

namespace A100172.P721799482002498811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256649 (n + 1) + (A256649 n + A002411 n)

end

end A100172.P721799482002498811

namespace A100172

/-- `A256649(n+1)+A256649(n)+A002411(n)` -/
def P721799482002498811.Spec : Prop :=
  ∀ n, P721799482002498811.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P10259168438327011434

`A051673(n+1)+A100165(n+1)-A100156(n+1)`
-/

namespace A100172.P10259168438327011434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 (n + 1) + (A100165 (n + 1) - A100156 (n + 1))

end

end A100172.P10259168438327011434

namespace A100172

/-- `A051673(n+1)+A100165(n+1)-A100156(n+1)` -/
def P10259168438327011434.Spec : Prop :=
  ∀ n, P10259168438327011434.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P11566623223513993927

`A172482(2*n)+1-A255211(n+1)`
-/

namespace A100172.P11566623223513993927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172482 (2 * n) + (1 - A255211 (n + 1))

end

end A100172.P11566623223513993927

namespace A100172

/-- `A172482(2*n)+1-A255211(n+1)` -/
def P11566623223513993927.Spec : Prop :=
  ∀ n, P11566623223513993927.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P1131848049415416200

`A004126(2*n+1)+A005581(n+1)-n`
-/

namespace A100172.P1131848049415416200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 (2 * n + 1) + (A005581 (n + 1) - (n : ℤ))

end

end A100172.P1131848049415416200

namespace A100172

/-- `A004126(2*n+1)+A005581(n+1)-n` -/
def P1131848049415416200.Spec : Prop :=
  ∀ n, P1131848049415416200.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P3720483929257193930

`A160378(2*n+1)+A007586(n+1)-n`
-/

namespace A100172.P3720483929257193930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (2 * n + 1) + (A007586 (n + 1) - (n : ℤ))

end

end A100172.P3720483929257193930

namespace A100172

/-- `A160378(2*n+1)+A007586(n+1)-n` -/
def P3720483929257193930.Spec : Prop :=
  ∀ n, P3720483929257193930.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P4316160405190305891

`A007585(2*n+1)+A000292(n+1)-A000292(2*n+1)`
-/

namespace A100172.P4316160405190305891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (2 * n + 1) + (A000292 (n + 1) - A000292 (2 * n + 1))

end

end A100172.P4316160405190305891

namespace A100172

/-- `A007585(2*n+1)+A000292(n+1)-A000292(2*n+1)` -/
def P4316160405190305891.Spec : Prop :=
  ∀ n, P4316160405190305891.a n = A100172 (n + 1)

end A100172

/-! ## A100172.P17584270903982369630

`(A016969(3*n+1)+n)*A000217(n)+1+n`
-/

namespace A100172.P17584270903982369630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 (3 * n + 1) + (n : ℤ)) * A000217 n + 1 + (n : ℤ)

end

end A100172.P17584270903982369630

namespace A100172

/-- `(A016969(3*n+1)+n)*A000217(n)+1+n` -/
def P17584270903982369630.Spec : Prop :=
  ∀ n, P17584270903982369630.a n = A100172 (n + 1)

end A100172

/-!
# A100173: Structured pentakis dodecahedral numbers (vertex structure 6).

The programs for A100173, the canonical program `A100173.P14496285199054990467` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100173 has offset 1).

The definition of A100173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100173.P4113182504959425062

`ogf((1+28x+26x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100173.P4113182504959425062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 26] [1, -4, 6, -4, 1] n

end

end A100173.P4113182504959425062

namespace A100173

/-- `ogf((1+28x+26x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4113182504959425062.Spec : Prop :=
  ∀ n, P4113182504959425062.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P14496285199054990467

`1/6*(55*(n+1)^3-75*(n+1)²+26*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100173

/-- `1/6*(55*(n+1)^3-75*(n+1)²+26*(n+1))` -/
def P14496285199054990467.Spec : Prop :=
  ∀ n, P14496285199054990467.a n = (A100173 (n + 1) : ℚ)

end A100173

/-! ## A100173.P3119495474606291622

`∑[A005891(n)+(5*n)²]`
-/

namespace A100173.P3119495474606291622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + ((5 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100173.P3119495474606291622

namespace A100173

/-- `∑[A005891(n)+(5*n)²]` -/
def P3119495474606291622.Spec : Prop :=
  ∀ n, P3119495474606291622.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P9654441074521803667

`(A100158(n+1)+n+1)/2`
-/

namespace A100173.P9654441074521803667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A100173.P9654441074521803667

namespace A100173

/-- `(A100158(n+1)+n+1)/2` -/
def P9654441074521803667.Spec : Prop :=
  ∀ n, P9654441074521803667.a n = (A100173 (n + 1) : ℚ)

end A100173

/-! ## A100173.P7395310062847918761

`∑[∑[n+1]+2*A022285(n)]`
-/

namespace A100173.P7395310062847918761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 2 * A022285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100173.P7395310062847918761

namespace A100173

/-- `∑[∑[n+1]+2*A022285(n)]` -/
def P7395310062847918761.Spec : Prop :=
  ∀ n, P7395310062847918761.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P10376357824719766031

`A100149(n+1)+∑[(3*n)²-n]`
-/

namespace A100173.P10376357824719766031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100173.P10376357824719766031

namespace A100173

/-- `A100149(n+1)+∑[(3*n)²-n]` -/
def P10376357824719766031.Spec : Prop :=
  ∀ n, P10376357824719766031.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P9110870832905134843

`A005904(n)-A004068(n)`
-/

namespace A100173.P9110870832905134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A004068 n

end

end A100173.P9110870832905134843

namespace A100173

/-- `A005904(n)-A004068(n)` -/
def P9110870832905134843.Spec : Prop :=
  ∀ n, P9110870832905134843.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P2345495332210953666

`A188050(n)+A006564(n+1)`
-/

namespace A100173.P2345495332210953666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n + A006564 (n + 1)

end

end A100173.P2345495332210953666

namespace A100173

/-- `A188050(n)+A006564(n+1)` -/
def P2345495332210953666.Spec : Prop :=
  ∀ n, P2345495332210953666.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P7605302534023803330

`A100168(n+1)-A135036(n+1)`
-/

namespace A100173.P7605302534023803330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100168 (n + 1) - A135036 (n + 1)

end

end A100173.P7605302534023803330

namespace A100173

/-- `A100168(n+1)-A135036(n+1)` -/
def P7605302534023803330.Spec : Prop :=
  ∀ n, P7605302534023803330.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P15306115563403756916

`A256650(n+1)+A256649(n)`
-/

namespace A100173.P15306115563403756916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256650 (n + 1) + A256649 n

end

end A100173.P15306115563403756916

namespace A100173

/-- `A256650(n+1)+A256649(n)` -/
def P15306115563403756916.Spec : Prop :=
  ∀ n, P15306115563403756916.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P4970942542737573975

`∑[A255187(n)+A254474(n+1)]`
-/

namespace A100173.P4970942542737573975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n + A254474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100173.P4970942542737573975

namespace A100173

/-- `∑[A255187(n)+A254474(n+1)]` -/
def P4970942542737573975.Spec : Prop :=
  ∀ n, P4970942542737573975.a n = A100173 (n + 1)

end A100173

/-! ## A100173.P8655427347261501882

`A256649(n+1)+A256649(n)+A000292(n)`
-/

namespace A100173.P8655427347261501882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256649 (n + 1) + (A256649 n + A000292 n)

end

end A100173.P8655427347261501882

namespace A100173

/-- `A256649(n+1)+A256649(n)+A000292(n)` -/
def P8655427347261501882.Spec : Prop :=
  ∀ n, P8655427347261501882.a n = A100173 (n + 1)

end A100173

/-!
# A100174: Structured tetrakis hexahedral numbers (vertex structure 5).

The programs for A100174, the canonical program `A100174.P14392812240721064556` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100174 has offset 1).

The definition of A100174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100174.P15257946103999700661

`ogf((1+10x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100174.P15257946103999700661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 9] [1, -4, 6, -4, 1] n

end

end A100174.P15257946103999700661

namespace A100174

/-- `ogf((1+10x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15257946103999700661.Spec : Prop :=
  ∀ n, P15257946103999700661.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P8058061398566548298

`1/6*(20*(n+1)^3-24*(n+1)²+10*(n+1))`
-/

namespace A100174.P8058061398566548298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((20 * (n + 1) ^ 3 : ℤ) - (24 * (n + 1) ^ 2 : ℤ) + (10 * (n + 1) : ℤ) : ℚ)

end

end A100174.P8058061398566548298

namespace A100174

/-- `1/6*(20*(n+1)^3-24*(n+1)²+10*(n+1))` -/
def P8058061398566548298.Spec : Prop :=
  ∀ n, P8058061398566548298.a n = (A100174 (n + 1) : ℚ)

theorem P8058061398566548298.correct : P8058061398566548298.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100174, Nat.add_sub_cancel, A100174.P8058061398566548298.a, A100174.P14392812240721064556.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100174, Nat.add_sub_cancel, A100174.P8058061398566548298.a, A100174.P14392812240721064556.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100174

/-! ## A100174.P14392812240721064556

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=59, a(3)=156`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100174

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14392812240721064556.Spec : Prop :=
  ∀ n, P14392812240721064556.a n = A100174 (n + 1)

theorem P14392812240721064556.correct : P14392812240721064556.Spec := by
  intro n
  simp only [A100174, Nat.add_sub_cancel]

end A100174

/-! ## A100174.P8391392612974035997

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=12`
-/

namespace A100174.P8391392612974035997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100174.P8391392612974035997

namespace A100174

/-- `∑[∑[a(n-1)+20]]` -/
def P8391392612974035997.Spec : Prop :=
  ∀ n, (P8391392612974035997.a n : ℤ) = A100174 (n + 1)

end A100174

/-! ## A100174.P10238507993135616977

`(3*n)²+a(n-1)+(n+1)²` with `a(0)=1`
-/

namespace A100174.P10238507993135616977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n) ^ 2 + (a (n - 1) + (n + 1) ^ 2)

end

end A100174.P10238507993135616977

namespace A100174

/-- `(3*n)²+a(n-1)+(n+1)²` -/
def P10238507993135616977.Spec : Prop :=
  ∀ n, (P10238507993135616977.a n : ℤ) = A100174 (n + 1)

end A100174

/-! ## A100174.P7228296727091429235

`A005902(n)+n²`
-/

namespace A100174.P7228296727091429235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + (n ^ 2 : ℤ)

end

end A100174.P7228296727091429235

namespace A100174

/-- `A005902(n)+n²` -/
def P7228296727091429235.Spec : Prop :=
  ∀ n, P7228296727091429235.a n = A100174 (n + 1)

theorem P7228296727091429235.correct : P7228296727091429235.Spec := by
  intro n
  simp only [A100174, Nat.add_sub_cancel, A100174.P7228296727091429235.a, A100174.P14392812240721064556.a, A005902, A005902.P17180095149968854473.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100174

/-! ## A100174.P12444205777147832457

`A220084(n)-∑[n]`
-/

namespace A100174.P12444205777147832457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100174.P12444205777147832457

namespace A100174

/-- `A220084(n)-∑[n]` -/
def P12444205777147832457.Spec : Prop :=
  ∀ n, P12444205777147832457.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P17113456513217355724

`Δ[A346636(n)]-n`
-/

namespace A100174.P17113456513217355724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A100174.P17113456513217355724

namespace A100174

/-- `Δ[A346636(n)]-n` -/
def P17113456513217355724.Spec : Prop :=
  ∀ n, P17113456513217355724.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P5273980650018733625

`∑[A005901(n)]+n²`
-/

namespace A100174.P5273980650018733625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A100174.P5273980650018733625

namespace A100174

/-- `∑[A005901(n)]+n²` -/
def P5273980650018733625.Spec : Prop :=
  ∀ n, P5273980650018733625.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P16868494537367888205

`Δ[n²²]-A005900(n)`
-/

namespace A100174.P16868494537367888205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A005900 n

end

end A100174.P16868494537367888205

namespace A100174

/-- `Δ[n²²]-A005900(n)` -/
def P16868494537367888205.Spec : Prop :=
  ∀ n, P16868494537367888205.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P7018734939519625278

`A035005(n+1)+1+n`
-/

namespace A100174.P7018734939519625278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) + 1 + (n : ℤ)

end

end A100174.P7018734939519625278

namespace A100174

/-- `A035005(n+1)+1+n` -/
def P7018734939519625278.Spec : Prop :=
  ∀ n, P7018734939519625278.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P7100968473225632520

`∑[A016766(n)+(n+1)²]`
-/

namespace A100174.P7100968473225632520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100174.P7100968473225632520

namespace A100174

/-- `∑[A016766(n)+(n+1)²]` -/
def P7100968473225632520.Spec : Prop :=
  ∀ n, P7100968473225632520.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P12819485029435123565

`∑[A033583(n)]+(n+1)²`
-/

namespace A100174.P12819485029435123565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A100174.P12819485029435123565

namespace A100174

/-- `∑[A033583(n)]+(n+1)²` -/
def P12819485029435123565.Spec : Prop :=
  ∀ n, P12819485029435123565.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P7696602227231342809

`A220443(n)+∑[(n+1)²]`
-/

namespace A100174.P7696602227231342809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100174.P7696602227231342809

namespace A100174

/-- `A220443(n)+∑[(n+1)²]` -/
def P7696602227231342809.Spec : Prop :=
  ∀ n, P7696602227231342809.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P3388905126544178842

`∑[A158187(n)]+n²+n`
-/

namespace A100174.P3388905126544178842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 + n : ℤ)

end

end A100174.P3388905126544178842

namespace A100174

/-- `∑[A158187(n)]+n²+n` -/
def P3388905126544178842.Spec : Prop :=
  ∀ n, P3388905126544178842.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P18438393331984819650

`A034720(n+1)-∑[2*n]`
-/

namespace A100174.P18438393331984819650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100174.P18438393331984819650

namespace A100174

/-- `A034720(n+1)-∑[2*n]` -/
def P18438393331984819650.Spec : Prop :=
  ∀ n, P18438393331984819650.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P17659336162196071057

`2*A144945(n+1)+n+1`
-/

namespace A100174.P17659336162196071057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144945 (n + 1) + (n + 1 : ℤ)

end

end A100174.P17659336162196071057

namespace A100174

/-- `2*A144945(n+1)+n+1` -/
def P17659336162196071057.Spec : Prop :=
  ∀ n, P17659336162196071057.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P6940074389185745705

`(A100161(n+1)+n+1)/2`
-/

namespace A100174.P6940074389185745705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100161 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A100174.P6940074389185745705

namespace A100174

/-- `(A100161(n+1)+n+1)/2` -/
def P6940074389185745705.Spec : Prop :=
  ∀ n, P6940074389185745705.a n = (A100174 (n + 1) : ℚ)

end A100174

/-! ## A100174.P11826675388181767882

`∑[A295906(n+1)]-(n+1)²`
-/

namespace A100174.P11826675388181767882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A100174.P11826675388181767882

namespace A100174

/-- `∑[A295906(n+1)]-(n+1)²` -/
def P11826675388181767882.Spec : Prop :=
  ∀ n, P11826675388181767882.a n = A100174 (n + 1)

end A100174

/-! ## A100174.P13817838449265916238

`A336288(n+1)+∑[∑[4*n]]`
-/

namespace A100174.P13817838449265916238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100174.P13817838449265916238

namespace A100174

/-- `A336288(n+1)+∑[∑[4*n]]` -/
def P13817838449265916238.Spec : Prop :=
  ∀ n, P13817838449265916238.a n = A100174 (n + 1)

end A100174

/-!
# A100175: Structured triakis tetrahedral numbers (vertex structure 4).

The programs for A100175, the canonical program `A100175.P13745386835479757498` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100175 has offset 1).

The definition of A100175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100175.P7516576353575271630

`ogf((1+4x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100175.P7516576353575271630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -4, 6, -4, 1] n

end

end A100175.P7516576353575271630

namespace A100175

/-- `ogf((1+4x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7516576353575271630.Spec : Prop :=
  ∀ n, P7516576353575271630.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P13745386835479757498

`(3*(n+1)^3-3*(n+1)²+2*(n+1))/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100175

/-- `(3*(n+1)^3-3*(n+1)²+2*(n+1))/2` -/
def P13745386835479757498.Spec : Prop :=
  ∀ n, P13745386835479757498.a n = (A100175 (n + 1) : ℚ)

end A100175

/-! ## A100175.P9065798222292791147

`∑[C(1+3*n, 2)+1]`
-/

namespace A100175.P9065798222292791147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + 3 * n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P9065798222292791147

namespace A100175

/-- `∑[C(1+3*n, 2)+1]` -/
def P9065798222292791147.Spec : Prop :=
  ∀ n, (P9065798222292791147.a n : ℤ) = A100175 (n + 1)

end A100175

/-! ## A100175.P2340958584632873717

`∑[∑[a(n-1)+9]]` with `a(0)=1, a(1)=6`
-/

namespace A100175.P2340958584632873717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P2340958584632873717

namespace A100175

/-- `∑[∑[a(n-1)+9]]` -/
def P2340958584632873717.Spec : Prop :=
  ∀ n, (P2340958584632873717.a n : ℤ) = A100175 (n + 1)

end A100175

/-! ## A100175.P15370704584076961962

`∑[∑[ogf((1+4x+4x^2)/(1-2x+x^2))]]`
-/

namespace A100175.P15370704584076961962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P15370704584076961962

namespace A100175

/-- `∑[∑[ogf((1+4x+4x^2)/(1-2x+x^2))]]` -/
def P15370704584076961962.Spec : Prop :=
  ∀ n, P15370704584076961962.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P17529113012157813314

`∑[4-∑[a(n-1)-9]]` with `a(0)=3`
-/

namespace A100175.P17529113012157813314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P17529113012157813314

namespace A100175

/-- `∑[4-∑[a(n-1)-9]]` -/
def P17529113012157813314.Spec : Prop :=
  ∀ n, P17529113012157813314.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P9375840929867042992

`(2*n)²+a(n-1)+C(n+2, 2)` with `a(0)=1`
-/

namespace A100175.P9375840929867042992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n) ^ 2 + (a (n - 1) + Nat.choose (n + 2) 2)

end

end A100175.P9375840929867042992

namespace A100175

/-- `(2*n)²+a(n-1)+C(n+2, 2)` -/
def P9375840929867042992.Spec : Prop :=
  ∀ n, (P9375840929867042992.a n : ℤ) = A100175 (n + 1)

end A100175

/-! ## A100175.P9652469507503552227

`(2*n+n+3)*C(n+1, 2)+n+1`
-/

namespace A100175.P9652469507503552227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 3)) * Nat.choose (n + 1) 2 + (n + 1)

end

end A100175.P9652469507503552227

namespace A100175

/-- `(2*n+n+3)*C(n+1, 2)+n+1` -/
def P9652469507503552227.Spec : Prop :=
  ∀ n, (P9652469507503552227.a n : ℤ) = A100175 (n + 1)

end A100175

/-! ## A100175.P11289678405899295002

`∑[A038764(n)]`
-/

namespace A100175.P11289678405899295002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P11289678405899295002

namespace A100175

/-- `∑[A038764(n)]` -/
def P11289678405899295002.Spec : Prop :=
  ∀ n, P11289678405899295002.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P14729395095321735927

`∑[∑[A122709(n)]]`
-/

namespace A100175.P14729395095321735927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P14729395095321735927

namespace A100175

/-- `∑[∑[A122709(n)]]` -/
def P14729395095321735927.Spec : Prop :=
  ∀ n, P14729395095321735927.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P10444444726641392724

`∑[A081266(n)+1]`
-/

namespace A100175.P10444444726641392724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P10444444726641392724

namespace A100175

/-- `∑[A081266(n)+1]` -/
def P10444444726641392724.Spec : Prop :=
  ∀ n, P10444444726641392724.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P9135473864314163408

`∑[A006137(n)+n]`
-/

namespace A100175.P9135473864314163408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P9135473864314163408

namespace A100175

/-- `∑[A006137(n)+n]` -/
def P9135473864314163408.Spec : Prop :=
  ∀ n, P9135473864314163408.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P4309964812411825453

`A143690(n)+∑[n]`
-/

namespace A100175.P4309964812411825453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143690 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100175.P4309964812411825453

namespace A100175

/-- `A143690(n)+∑[n]` -/
def P4309964812411825453.Spec : Prop :=
  ∀ n, P4309964812411825453.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P2579262177333850634

`A005920(n)-∑[n]`
-/

namespace A100175.P2579262177333850634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100175.P2579262177333850634

namespace A100175

/-- `A005920(n)-∑[n]` -/
def P2579262177333850634.Spec : Prop :=
  ∀ n, P2579262177333850634.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P17839628229280586030

`∑[A064225(n)-n]`
-/

namespace A100175.P17839628229280586030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P17839628229280586030

namespace A100175

/-- `∑[A064225(n)-n]` -/
def P17839628229280586030.Spec : Prop :=
  ∀ n, P17839628229280586030.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P17084343001859907257

`∑[A389615(n)+n²]`
-/

namespace A100175.P17084343001859907257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P17084343001859907257

namespace A100175

/-- `∑[A389615(n)+n²]` -/
def P17084343001859907257.Spec : Prop :=
  ∀ n, P17084343001859907257.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P8535909392689940203

`ceil((A005915(n)+n)/2)`
-/

namespace A100175.P8535909392689940203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005915 n + (n : ℤ) : ℚ) / 2⌉

end

end A100175.P8535909392689940203

namespace A100175

/-- `ceil((A005915(n)+n)/2)` -/
def P8535909392689940203.Spec : Prop :=
  ∀ n, P8535909392689940203.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P5161676474021542127

`∑[A022267(n)+n+1]`
-/

namespace A100175.P5161676474021542127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100175.P5161676474021542127

namespace A100175

/-- `∑[A022267(n)+n+1]` -/
def P5161676474021542127.Spec : Prop :=
  ∀ n, P5161676474021542127.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P6912366774857346635

`(n+1)*∑[A008486(n)]`
-/

namespace A100175.P6912366774857346635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100175.P6912366774857346635

namespace A100175

/-- `(n+1)*∑[A008486(n)]` -/
def P6912366774857346635.Spec : Prop :=
  ∀ n, P6912366774857346635.a n = A100175 (n + 1)

end A100175

/-! ## A100175.P3899313082584298814

`A050509(n)-∑[2*n]`
-/

namespace A100175.P3899313082584298814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100175.P3899313082584298814

namespace A100175

/-- `A050509(n)-∑[2*n]` -/
def P3899313082584298814.Spec : Prop :=
  ∀ n, P3899313082584298814.a n = A100175 (n + 1)

end A100175

/-!
# A100176: Structured octagonal prism numbers.

The programs for A100176, the canonical program `A100176.P16581623128881660207` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100176 has offset 1).

The definition of A100176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100176.P4414431198411101758

`ogf((1+12x+5x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100176.P4414431198411101758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 5] [1, -4, 6, -4, 1] n

end

end A100176.P4414431198411101758

namespace A100176

/-- `ogf((1+12x+5x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4414431198411101758.Spec : Prop :=
  ∀ n, P4414431198411101758.a n = A100176 (n + 1)

end A100176

/-! ## A100176.P16581623128881660207

`3*(n+1)^3-2*(n+1)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100176

/-- `3*(n+1)^3-2*(n+1)²` -/
def P16581623128881660207.Spec : Prop :=
  ∀ n, P16581623128881660207.a n = A100176 (n + 1)

theorem P16581623128881660207.correct : P16581623128881660207.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel]

end A100176

/-! ## A100176.P1881064603920550453

`(n+1)²*A016777(n)`
-/

namespace A100176.P1881064603920550453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016777 n

end

end A100176.P1881064603920550453

namespace A100176

/-- `(n+1)²*A016777(n)` -/
def P1881064603920550453.Spec : Prop :=
  ∀ n, P1881064603920550453.a n = A100176 (n + 1)

theorem P1881064603920550453.correct : P1881064603920550453.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P1881064603920550453.a, A100176.P16581623128881660207.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100176

/-! ## A100176.P1751237840345352595

`(n+1)*A000567(n+1)`
-/

namespace A100176.P1751237840345352595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000567 (n + 1)

end

end A100176.P1751237840345352595

namespace A100176

/-- `(n+1)*A000567(n+1)` -/
def P1751237840345352595.Spec : Prop :=
  ∀ n, P1751237840345352595.a n = A100176 (n + 1)

theorem P1751237840345352595.correct : P1751237840345352595.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P1751237840345352595.a, A100176.P16581623128881660207.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100176

/-! ## A100176.P17105802982947989624

`∑{#}[n, (n+1)*(6*#+1)]`
-/

namespace A100176.P17105802982947989624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1) * (6 * k + 1)

end

end A100176.P17105802982947989624

namespace A100176

/-- `∑{#}[n, (n+1)*(6*#+1)]` -/
def P17105802982947989624.Spec : Prop :=
  ∀ n, (P17105802982947989624.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P8635756037683365630

`(n+1)*∑[or(1, 6*n)]`
-/

namespace A100176.P8635756037683365630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100176.P8635756037683365630

namespace A100176

/-- `(n+1)*∑[or(1, 6*n)]` -/
def P8635756037683365630.Spec : Prop :=
  ∀ n, (P8635756037683365630.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P13311515373073279216

`(n+1)*∑[xor(1, 6*n)]`
-/

namespace A100176.P13311515373073279216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100176.P13311515373073279216

namespace A100176

/-- `(n+1)*∑[xor(1, 6*n)]` -/
def P13311515373073279216.Spec : Prop :=
  ∀ n, (P13311515373073279216.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P9281648702421347520

`(n+1)*∑[a(n-1)+6]` with `a(0)=1`
-/

namespace A100176.P9281648702421347520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100176.P9281648702421347520

namespace A100176

/-- `(n+1)*∑[a(n-1)+6]` -/
def P9281648702421347520.Spec : Prop :=
  ∀ n, (P9281648702421347520.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P15965483666372633642

`(Δ[C(2*n, 2)]-n)*(n+1)²`
-/

namespace A100176.P15965483666372633642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A100176.P15965483666372633642

namespace A100176

/-- `(Δ[C(2*n, 2)]-n)*(n+1)²` -/
def P15965483666372633642.Spec : Prop :=
  ∀ n, P15965483666372633642.a n = A100176 (n + 1)

theorem P15965483666372633642.correct : P15965483666372633642.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P15965483666372633642.f1, A100176.P15965483666372633642.a, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100176

/-! ## A100176.P543637027543000007

`n*Δ[lcm(n, (n+1)²)]+n+1`
-/

namespace A100176.P543637027543000007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n + 1 : ℤ)

end

end A100176.P543637027543000007

namespace A100176

/-- `n*Δ[lcm(n, (n+1)²)]+n+1` -/
def P543637027543000007.Spec : Prop :=
  ∀ n, P543637027543000007.a n = A100176 (n + 1)

end A100176

/-! ## A100176.P1759264448056383065

`(lcm(2, 2*n)+n+1)*(n+1)²`
-/

namespace A100176.P1759264448056383065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) + (n + 1)) * (n + 1) ^ 2

end

end A100176.P1759264448056383065

namespace A100176

/-- `(lcm(2, 2*n)+n+1)*(n+1)²` -/
def P1759264448056383065.Spec : Prop :=
  ∀ n, (P1759264448056383065.a n : ℤ) = A100176 (n + 1)

theorem P1759264448056383065.correct : P1759264448056383065.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P1759264448056383065.a, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A100176

/-! ## A100176.P3508388821668729906

`(2*n+1+n)*C(n+1, n)²`
-/

namespace A100176.P3508388821668729906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * Nat.choose (n + 1) n ^ 2

end

end A100176.P3508388821668729906

namespace A100176

/-- `(2*n+1+n)*C(n+1, n)²` -/
def P3508388821668729906.Spec : Prop :=
  ∀ n, (P3508388821668729906.a n : ℤ) = A100176 (n + 1)

theorem P3508388821668729906.correct : P3508388821668729906.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P3508388821668729906.a, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A100176

/-! ## A100176.P2165497056175236409

`(a(n-1)/n²+3)*(n+1)²` with `a(0)=1`
-/

namespace A100176.P2165497056175236409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) / (n ^ 2 : ℚ) + 3) * ((n + 1) ^ 2 : ℚ)

end

end A100176.P2165497056175236409

namespace A100176

/-- `(a(n-1)/n²+3)*(n+1)²` -/
def P2165497056175236409.Spec : Prop :=
  ∀ n, P2165497056175236409.a n = (A100176 (n + 1) : ℚ)

end A100176

/-! ## A100176.P10732952895878161112

`(n+1)*∑[Δ[C(2*n, 2)]+2*n]`
-/

namespace A100176.P10732952895878161112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100176.P10732952895878161112

namespace A100176

/-- `(n+1)*∑[Δ[C(2*n, 2)]+2*n]` -/
def P10732952895878161112.Spec : Prop :=
  ∀ n, P10732952895878161112.a n = A100176 (n + 1)

end A100176

/-! ## A100176.P9464523336910474605

`(gcd(n, 2*n)+2*n+1)*(n+1)²`
-/

namespace A100176.P9464523336910474605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) + (2 * n + 1)) * (n + 1) ^ 2

end

end A100176.P9464523336910474605

namespace A100176

/-- `(gcd(n, 2*n)+2*n+1)*(n+1)²` -/
def P9464523336910474605.Spec : Prop :=
  ∀ n, (P9464523336910474605.a n : ℤ) = A100176 (n + 1)

theorem P9464523336910474605.correct : P9464523336910474605.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P9464523336910474605.a, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A100176

/-! ## A100176.P18320127492947842837

`(2*n+1+n)*(n+1)*C(n+1, n)`
-/

namespace A100176.P18320127492947842837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * ((n + 1) * Nat.choose (n + 1) n)

end

end A100176.P18320127492947842837

namespace A100176

/-- `(2*n+1+n)*(n+1)*C(n+1, n)` -/
def P18320127492947842837.Spec : Prop :=
  ∀ n, (P18320127492947842837.a n : ℤ) = A100176 (n + 1)

theorem P18320127492947842837.correct : P18320127492947842837.Spec := by
  intro n
  simp only [A100176, Nat.add_sub_cancel, A100176.P18320127492947842837.a, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A100176

/-! ## A100176.P7667824266655530813

`(and(2*n+1, 2*n)+n+1)*(n+1)²`
-/

namespace A100176.P7667824266655530813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) + (n + 1)) * (n + 1) ^ 2

end

end A100176.P7667824266655530813

namespace A100176

/-- `(and(2*n+1, 2*n)+n+1)*(n+1)²` -/
def P7667824266655530813.Spec : Prop :=
  ∀ n, (P7667824266655530813.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P7061545781627875749

`lcm(n+1, (2*n+1+n)*∑[2*n+1])`
-/

namespace A100176.P7061545781627875749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((2 * n + 1 + n) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A100176.P7061545781627875749

namespace A100176

/-- `lcm(n+1, (2*n+1+n)*∑[2*n+1])` -/
def P7061545781627875749.Spec : Prop :=
  ∀ n, (P7061545781627875749.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P11080168038934744576

`(n+1)*(and(2*n+1, 2*n)+n+1)*(n+1)`
-/

namespace A100176.P11080168038934744576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((Nat.land (2 * n + 1) (2 * n) + (n + 1)) * (n + 1))

end

end A100176.P11080168038934744576

namespace A100176

/-- `(n+1)*(and(2*n+1, 2*n)+n+1)*(n+1)` -/
def P11080168038934744576.Spec : Prop :=
  ∀ n, (P11080168038934744576.a n : ℤ) = A100176 (n + 1)

end A100176

/-! ## A100176.P14996049235742984534

`∑[A214675(n+1)]`
-/

namespace A100176.P14996049235742984534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100176.P14996049235742984534

namespace A100176

/-- `∑[A214675(n+1)]` -/
def P14996049235742984534.Spec : Prop :=
  ∀ n, P14996049235742984534.a n = A100176 (n + 1)

end A100176

/-!
# A100177: Structured meta-prism numbers, the n-th number from a structured n-gonal prism number sequence.

The programs for A100177, the canonical program `A100177.P3857334006661998900` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100177 has offset 1).

The definition of A100177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100177.P15464101250509617324

`ogf((1-x+8x^2+4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A100177.P15464101250509617324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 8, 4] [1, -5, 10, -10, 5, -1] n

end

end A100177.P15464101250509617324

namespace A100177

/-- `ogf((1-x+8x^2+4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15464101250509617324.Spec : Prop :=
  ∀ n, P15464101250509617324.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P14299519929413403552

`(3*(n+1)^4-9*(n+1)^3+12*(n+1)²)/6`
-/

namespace A100177.P14299519929413403552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) ^ 4 : ℤ) - (9 * (n + 1) ^ 3 : ℤ) + (12 * (n + 1) ^ 2 : ℤ) : ℚ) / 6

end

end A100177.P14299519929413403552

namespace A100177

/-- `(3*(n+1)^4-9*(n+1)^3+12*(n+1)²)/6` -/
def P14299519929413403552.Spec : Prop :=
  ∀ n, P14299519929413403552.a n = (A100177 (n + 1) : ℚ)

theorem P14299519929413403552.correct : P14299519929413403552.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A100177, Nat.add_sub_cancel, A100177.P14299519929413403552.a, A100177.P3857334006661998900.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A100177, Nat.add_sub_cancel, A100177.P14299519929413403552.a, A100177.P3857334006661998900.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100177

/-! ## A100177.P3857334006661998900

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=18, a(3)=64, a(4)=175`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100177

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3857334006661998900.Spec : Prop :=
  ∀ n, P3857334006661998900.a n = A100177 (n + 1)

theorem P3857334006661998900.correct : P3857334006661998900.Spec := by
  intro n
  simp only [A100177, Nat.add_sub_cancel]

end A100177

/-! ## A100177.P14157709575821857203

`A060354(n+1)*(n+1)`
-/

namespace A100177.P14157709575821857203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (n + 1) * (n + 1 : ℤ)

end

end A100177.P14157709575821857203

namespace A100177

/-- `A060354(n+1)*(n+1)` -/
def P14157709575821857203.Spec : Prop :=
  ∀ n, P14157709575821857203.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P3935203392392873863

`(1+C(n, 2))*(n+1)²`
-/

namespace A100177.P3935203392392873863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + Nat.choose n 2) * (n + 1) ^ 2

end

end A100177.P3935203392392873863

namespace A100177

/-- `(1+C(n, 2))*(n+1)²` -/
def P3935203392392873863.Spec : Prop :=
  ∀ n, (P3935203392392873863.a n : ℤ) = A100177 (n + 1)

end A100177

/-! ## A100177.P3990257778993053963

`(n+1)*∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=0`
-/

namespace A100177.P3990257778993053963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100177.P3990257778993053963

namespace A100177

/-- `(n+1)*∑[∑[a(n-1)+3]]` -/
def P3990257778993053963.Spec : Prop :=
  ∀ n, (P3990257778993053963.a n : ℤ) = A100177 (n + 1)

end A100177

/-! ## A100177.P13861470401332077767

`lcm(n+1, (∑[n-1]+2)*(n+1)²)`
-/

namespace A100177.P13861470401332077767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((∑ j ∈ Finset.range (n + 1), f1 j + 2) * ((n + 1) ^ 2 : ℤ))

end

end A100177.P13861470401332077767

namespace A100177

/-- `lcm(n+1, (∑[n-1]+2)*(n+1)²)` -/
def P13861470401332077767.Spec : Prop :=
  ∀ n, (P13861470401332077767.a n : ℤ) = A100177 (n + 1)

end A100177

/-! ## A100177.P2876890873529263287

`∑[∑[n+1]+2*n*lcm(n, n-1)]`
-/

namespace A100177.P2876890873529263287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n * Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100177.P2876890873529263287

namespace A100177

/-- `∑[∑[n+1]+2*n*lcm(n, n-1)]` -/
def P2876890873529263287.Spec : Prop :=
  ∀ n, (P2876890873529263287.a n : ℤ) = A100177 (n + 1)

end A100177

/-! ## A100177.P13919343243542960917

`∑[2*n+1]+C(n, 2)*∑[2*n+1]`
-/

namespace A100177.P13919343243542960917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A100177.P13919343243542960917

namespace A100177

/-- `∑[2*n+1]+C(n, 2)*∑[2*n+1]` -/
def P13919343243542960917.Spec : Prop :=
  ∀ n, (P13919343243542960917.a n : ℤ) = A100177 (n + 1)

end A100177

/-! ## A100177.P13469097576853300824

`A071237(n)+1+n`
-/

namespace A100177.P13469097576853300824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n + 1 + (n : ℤ)

end

end A100177.P13469097576853300824

namespace A100177

/-- `A071237(n)+1+n` -/
def P13469097576853300824.Spec : Prop :=
  ∀ n, P13469097576853300824.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P17644289548040630124

`ceil(A053699(n)/2+n)`
-/

namespace A100177.P17644289548040630124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053699 n : ℚ) / 2 + (n : ℚ)⌉

end

end A100177.P17644289548040630124

namespace A100177

/-- `ceil(A053699(n)/2+n)` -/
def P17644289548040630124.Spec : Prop :=
  ∀ n, P17644289548040630124.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P1644196785088974485

`(n+1)*(A006003(n)+1)`
-/

namespace A100177.P1644196785088974485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A006003 n + 1)

end

end A100177.P1644196785088974485

namespace A100177

/-- `(n+1)*(A006003(n)+1)` -/
def P1644196785088974485.Spec : Prop :=
  ∀ n, P1644196785088974485.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P5875440870653054252

`A027445(n)/2+n+1`
-/

namespace A100177.P5875440870653054252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027445 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A100177.P5875440870653054252

namespace A100177

/-- `A027445(n)/2+n+1` -/
def P5875440870653054252.Spec : Prop :=
  ∀ n, P5875440870653054252.a n = (A100177 (n + 1) : ℚ)

theorem P5875440870653054252.correct : P5875440870653054252.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A100177, Nat.add_sub_cancel, A100177.P5875440870653054252.a, A100177.P3857334006661998900.a, A027445, A027445.P2062535294747488403.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A100177, Nat.add_sub_cancel, A100177.P5875440870653054252.a, A100177.P3857334006661998900.a, A027445, A027445.P2062535294747488403.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100177

/-! ## A100177.P9807550276907816719

`(n+1)*(A158842(n)+n)`
-/

namespace A100177.P9807550276907816719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158842 n + (n : ℤ))

end

end A100177.P9807550276907816719

namespace A100177

/-- `(n+1)*(A158842(n)+n)` -/
def P9807550276907816719.Spec : Prop :=
  ∀ n, P9807550276907816719.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P9224117504633362499

`(n+1)²*A152947(n+1)`
-/

namespace A100177.P9224117504633362499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A152947 (n + 1)

end

end A100177.P9224117504633362499

namespace A100177

/-- `(n+1)²*A152947(n+1)` -/
def P9224117504633362499.Spec : Prop :=
  ∀ n, P9224117504633362499.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P16466366078657249834

`(n+1)*(A135503(n)+n+1)`
-/

namespace A100177.P16466366078657249834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A135503 n + (n + 1 : ℤ))

end

end A100177.P16466366078657249834

namespace A100177

/-- `(n+1)*(A135503(n)+n+1)` -/
def P16466366078657249834.Spec : Prop :=
  ∀ n, P16466366078657249834.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P330515861368642222

`A006011(n+1)+∑[1-n]²`
-/

namespace A100177.P330515861368642222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100177.P330515861368642222

namespace A100177

/-- `A006011(n+1)+∑[1-n]²` -/
def P330515861368642222.Spec : Prop :=
  ∀ n, P330515861368642222.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P350269325549352541

`(n²+1)*A000217(n)+1+n`
-/

namespace A100177.P350269325549352541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A000217 n + 1 + (n : ℤ)

end

end A100177.P350269325549352541

namespace A100177

/-- `(n²+1)*A000217(n)+1+n` -/
def P350269325549352541.Spec : Prop :=
  ∀ n, P350269325549352541.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P109509027767292903

`(n+1)²+(n+1)²*A161680(n)`
-/

namespace A100177.P109509027767292903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) * A161680 n

end

end A100177.P109509027767292903

namespace A100177

/-- `(n+1)²+(n+1)²*A161680(n)` -/
def P109509027767292903.Spec : Prop :=
  ∀ n, P109509027767292903.a n = A100177 (n + 1)

end A100177

/-! ## A100177.P15813960838423563200

`A064808(n)+A027441(n)`
-/

namespace A100177.P15813960838423563200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n + A027441 n

end

end A100177.P15813960838423563200

namespace A100177

/-- `A064808(n)+A027441(n)` -/
def P15813960838423563200.Spec : Prop :=
  ∀ n, P15813960838423563200.a n = A100177 (n + 1)

end A100177

/-!
# A100178: Structured hexagonal diamond numbers (vertex structure 5).

The programs for A100178, the canonical program `A100178.P17087872585813602044` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100178 has offset 1).

The definition of A100178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100178.P3815156493521145391

`ogf((1+4x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100178.P3815156493521145391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, -4, 6, -4, 1] n

end

end A100178.P3815156493521145391

namespace A100178

/-- `ogf((1+4x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3815156493521145391.Spec : Prop :=
  ∀ n, P3815156493521145391.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P4280588764492127932

`1/6*(8*(n+1)^3-6*(n+1)²+4*(n+1))`
-/

namespace A100178.P4280588764492127932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((8 * (n + 1) ^ 3 : ℤ) - (6 * (n + 1) ^ 2 : ℤ) + (4 * (n + 1) : ℤ) : ℚ)

end

end A100178.P4280588764492127932

namespace A100178

/-- `1/6*(8*(n+1)^3-6*(n+1)²+4*(n+1))` -/
def P4280588764492127932.Spec : Prop :=
  ∀ n, P4280588764492127932.a n = (A100178 (n + 1) : ℚ)

theorem P4280588764492127932.correct : P4280588764492127932.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100178, Nat.add_sub_cancel, A100178.P4280588764492127932.a, A100178.P17087872585813602044.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100178, Nat.add_sub_cancel, A100178.P4280588764492127932.a, A100178.P17087872585813602044.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100178

/-! ## A100178.P17087872585813602044

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=29, a(3)=72`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100178

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17087872585813602044.Spec : Prop :=
  ∀ n, P17087872585813602044.a n = A100178 (n + 1)

theorem P17087872585813602044.correct : P17087872585813602044.Spec := by
  intro n
  simp only [A100178, Nat.add_sub_cancel]

end A100178

/-! ## A100178.P5069988245534207713

`A167471(n+1)/16`
-/

namespace A100178.P5069988245534207713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167471 (n + 1) : ℚ) / 16

end

end A100178.P5069988245534207713

namespace A100178

/-- `A167471(n+1)/16` -/
def P5069988245534207713.Spec : Prop :=
  ∀ n, P5069988245534207713.a n = (A100178 (n + 1) : ℚ)

end A100178

/-! ## A100178.P6125138908614864929

`A019558(n+1)/48`
-/

namespace A100178.P6125138908614864929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019558 (n + 1) : ℚ) / 48

end

end A100178.P6125138908614864929

namespace A100178

/-- `A019558(n+1)/48` -/
def P6125138908614864929.Spec : Prop :=
  ∀ n, P6125138908614864929.a n = (A100178 (n + 1) : ℚ)

end A100178

/-! ## A100178.P256622920508023837

`∑[record[or(1, n)²-n]]`
-/

namespace A100178.P256622920508023837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100178.P256622920508023837

namespace A100178

/-- `∑[record[or(1, n)²-n]]` -/
def P256622920508023837.Spec : Prop :=
  ∀ n, P256622920508023837.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P3474307167801400162

`∑[record[xor(1, n)²-n]]`
-/

namespace A100178.P3474307167801400162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100178.P3474307167801400162

namespace A100178

/-- `∑[record[xor(1, n)²-n]]` -/
def P3474307167801400162.Spec : Prop :=
  ∀ n, P3474307167801400162.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P16090432771073248953

`or(1, ∑[∑[8*n]])-n²`
-/

namespace A100178.P16090432771073248953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n ^ 2 : ℤ)

end

end A100178.P16090432771073248953

namespace A100178

/-- `or(1, ∑[∑[8*n]])-n²` -/
def P16090432771073248953.Spec : Prop :=
  ∀ n, P16090432771073248953.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P13804521585057420630

`Δ[n^3]+C(Δ[n²], 3)`
-/

namespace A100178.P13804521585057420630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 : ℤ)

end

end A100178.P13804521585057420630

namespace A100178

/-- `Δ[n^3]+C(Δ[n²], 3)` -/
def P13804521585057420630.Spec : Prop :=
  ∀ n, P13804521585057420630.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P11723821339327041643

`∑[floor((2/acot(n))²)]+n²`
-/

namespace A100178.P11723821339327041643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A100178.P11723821339327041643

namespace A100178

/-- `∑[floor((2/acot(n))²)]+n²` -/
def P11723821339327041643.Spec : Prop :=
  ∀ n, P11723821339327041643.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P5663709426776866830

`∑[∑[ogf((1+4x+3x^2)/(1-2x+x^2))]]`
-/

namespace A100178.P5663709426776866830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100178.P5663709426776866830

namespace A100178

/-- `∑[∑[ogf((1+4x+3x^2)/(1-2x+x^2))]]` -/
def P5663709426776866830.Spec : Prop :=
  ∀ n, P5663709426776866830.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P4205208227943220045

`record[(n-1)²]+∑[(2*n)²]`
-/

namespace A100178.P4205208227943220045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100178.P4205208227943220045

namespace A100178

/-- `record[(n-1)²]+∑[(2*n)²]` -/
def P4205208227943220045.Spec : Prop :=
  ∀ n, P4205208227943220045.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P17443805262857014075

`∑[Δ[n²]²]-lcm(n, n+1)`
-/

namespace A100178.P17443805262857014075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.lcm n (n + 1) : ℤ)

end

end A100178.P17443805262857014075

namespace A100178

/-- `∑[Δ[n²]²]-lcm(n, n+1)` -/
def P17443805262857014075.Spec : Prop :=
  ∀ n, P17443805262857014075.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P13702410648221038013

`C(2*(n+1), 3)+(n+1)²`
-/

namespace A100178.P13702410648221038013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 3 + (n + 1) ^ 2

end

end A100178.P13702410648221038013

namespace A100178

/-- `C(2*(n+1), 3)+(n+1)²` -/
def P13702410648221038013.Spec : Prop :=
  ∀ n, (P13702410648221038013.a n : ℤ) = A100178 (n + 1)

end A100178

/-! ## A100178.P2373304701597375248

`∑[lcm(2, (2*n)²)]+(n+1)²`
-/

namespace A100178.P2373304701597375248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A100178.P2373304701597375248

namespace A100178

/-- `∑[lcm(2, (2*n)²)]+(n+1)²` -/
def P2373304701597375248.Spec : Prop :=
  ∀ n, (P2373304701597375248.a n : ℤ) = A100178 (n + 1)

end A100178

/-! ## A100178.P15602644402719858424

`-∑[2*n-xor(1, 2*n)²]`
-/

namespace A100178.P15602644402719858424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.xor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100178.P15602644402719858424

namespace A100178

/-- `-∑[2*n-xor(1, 2*n)²]` -/
def P15602644402719858424.Spec : Prop :=
  ∀ n, P15602644402719858424.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P1273691459909241670

`∑[or(1, (2*n)²)]+∑[2*n]`
-/

namespace A100178.P1273691459909241670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100178.P1273691459909241670

namespace A100178

/-- `∑[or(1, (2*n)²)]+∑[2*n]` -/
def P1273691459909241670.Spec : Prop :=
  ∀ n, (P1273691459909241670.a n : ℤ) = A100178 (n + 1)

end A100178

/-! ## A100178.P11185729771416949889

`∑[xor(1, (2*n)²)]+∑[2*n]`
-/

namespace A100178.P11185729771416949889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100178.P11185729771416949889

namespace A100178

/-- `∑[xor(1, (2*n)²)]+∑[2*n]` -/
def P11185729771416949889.Spec : Prop :=
  ∀ n, (P11185729771416949889.a n : ℤ) = A100178 (n + 1)

end A100178

/-! ## A100178.P10118621930045454670

`∑[xor(1, 2*n)²]-∑[2*n]`
-/

namespace A100178.P10118621930045454670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100178.P10118621930045454670

namespace A100178

/-- `∑[xor(1, 2*n)²]-∑[2*n]` -/
def P10118621930045454670.Spec : Prop :=
  ∀ n, P10118621930045454670.a n = A100178 (n + 1)

end A100178

/-! ## A100178.P10124915642548197764

`∑[∑[a(n-1)+8]]+n` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A100178.P10124915642548197764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 14] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A100178.P10124915642548197764

namespace A100178

/-- `∑[∑[a(n-1)+8]]+n` -/
def P10124915642548197764.Spec : Prop :=
  ∀ n, (P10124915642548197764.a n : ℤ) = A100178 (n + 1)

end A100178

/-!
# A100179: Structured heptagonal diamond numbers (vertex structure 5).

The programs for A100179, the canonical program `A100179.P14615233005988607207` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100179 has offset 1).

The definition of A100179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100179.P10796242968811211953

`ogf((1+5x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100179.P10796242968811211953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 4] [1, -4, 6, -4, 1] n

end

end A100179.P10796242968811211953

namespace A100179

/-- `ogf((1+5x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10796242968811211953.Spec : Prop :=
  ∀ n, P10796242968811211953.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P4613065696645545048

`(10*(n+1)^3-9*(n+1)²+5*(n+1))/6`
-/

namespace A100179.P4613065696645545048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) ^ 3 : ℤ) - (9 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) : ℚ) / 6

end

end A100179.P4613065696645545048

namespace A100179

/-- `(10*(n+1)^3-9*(n+1)²+5*(n+1))/6` -/
def P4613065696645545048.Spec : Prop :=
  ∀ n, P4613065696645545048.a n = (A100179 (n + 1) : ℚ)

theorem P4613065696645545048.correct : P4613065696645545048.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100179, Nat.add_sub_cancel, A100179.P4613065696645545048.a, A100179.P14615233005988607207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100179, Nat.add_sub_cancel, A100179.P4613065696645545048.a, A100179.P14615233005988607207.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100179

/-! ## A100179.P14615233005988607207

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=34, a(3)=86`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100179

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14615233005988607207.Spec : Prop :=
  ∀ n, P14615233005988607207.a n = A100179 (n + 1)

theorem P14615233005988607207.correct : P14615233005988607207.Spec := by
  intro n
  simp only [A100179, Nat.add_sub_cancel]

end A100179

/-! ## A100179.P17803477952523694631

`∑[∑[a(n-1)+10]]` with `a(0)=1, a(1)=7`
-/

namespace A100179.P17803477952523694631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P17803477952523694631

namespace A100179

/-- `∑[∑[a(n-1)+10]]` -/
def P17803477952523694631.Spec : Prop :=
  ∀ n, (P17803477952523694631.a n : ℤ) = A100179 (n + 1)

end A100179

/-! ## A100179.P4351512958620137649

`∑[∑[ogf((1+5x+4x^2)/(1-2x+x^2))]]`
-/

namespace A100179.P4351512958620137649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P4351512958620137649

namespace A100179

/-- `∑[∑[ogf((1+5x+4x^2)/(1-2x+x^2))]]` -/
def P4351512958620137649.Spec : Prop :=
  ∀ n, P4351512958620137649.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P10955600153054264013

`∑[C(2*n, 2)]+(n+1)^3`
-/

namespace A100179.P10955600153054264013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A100179.P10955600153054264013

namespace A100179

/-- `∑[C(2*n, 2)]+(n+1)^3` -/
def P10955600153054264013.Spec : Prop :=
  ∀ n, (P10955600153054264013.a n : ℤ) = A100179 (n + 1)

end A100179

/-! ## A100179.P17262875252601838086

`∑[n+1]²-∑[lcm(n, (1-n)²)]`
-/

namespace A100179.P17262875252601838086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A100179.P17262875252601838086

namespace A100179

/-- `∑[n+1]²-∑[lcm(n, (1-n)²)]` -/
def P17262875252601838086.Spec : Prop :=
  ∀ n, P17262875252601838086.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P5080889167848309808

`(2*n)²+a(n-1)+(n+1)²` with `a(0)=1`
-/

namespace A100179.P5080889167848309808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n) ^ 2 + (a (n - 1) + (n + 1) ^ 2)

end

end A100179.P5080889167848309808

namespace A100179

/-- `(2*n)²+a(n-1)+(n+1)²` -/
def P5080889167848309808.Spec : Prop :=
  ∀ n, (P5080889167848309808.a n : ℤ) = A100179 (n + 1)

end A100179

/-! ## A100179.P7231001324001974592

`∑[lcm(n+1, 2*n+1)]+(n+1)*n²`
-/

namespace A100179.P7231001324001974592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * n ^ 2

end

end A100179.P7231001324001974592

namespace A100179

/-- `∑[lcm(n+1, 2*n+1)]+(n+1)*n²` -/
def P7231001324001974592.Spec : Prop :=
  ∀ n, (P7231001324001974592.a n : ℤ) = A100179 (n + 1)

end A100179

/-! ## A100179.P15332423092459892503

`∑[A168668(n)+1]`
-/

namespace A100179.P15332423092459892503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P15332423092459892503

namespace A100179

/-- `∑[A168668(n)+1]` -/
def P15332423092459892503.Spec : Prop :=
  ∀ n, P15332423092459892503.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P3394343275600084852

`∑[A273982(n+1)]`
-/

namespace A100179.P3394343275600084852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P3394343275600084852

namespace A100179

/-- `∑[A273982(n+1)]` -/
def P3394343275600084852.Spec : Prop :=
  ∀ n, P3394343275600084852.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P1638630553651684987

`A096000(n)-∑[n]`
-/

namespace A100179.P1638630553651684987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100179.P1638630553651684987

namespace A100179

/-- `A096000(n)-∑[n]` -/
def P1638630553651684987.Spec : Prop :=
  ∀ n, P1638630553651684987.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P15371612473451504986

`∑[∑[A160912(n+1)]]`
-/

namespace A100179.P15371612473451504986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P15371612473451504986

namespace A100179

/-- `∑[∑[A160912(n+1)]]` -/
def P15371612473451504986.Spec : Prop :=
  ∀ n, P15371612473451504986.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P13737061176181651008

`∑[A010001(n)]+n²`
-/

namespace A100179.P13737061176181651008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A100179.P13737061176181651008

namespace A100179

/-- `∑[A010001(n)]+n²` -/
def P13737061176181651008.Spec : Prop :=
  ∀ n, P13737061176181651008.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P8378004910615227275

`∑[A295906(n+1)/2]`
-/

namespace A100179.P8378004910615227275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295906 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P8378004910615227275

namespace A100179

/-- `∑[A295906(n+1)/2]` -/
def P8378004910615227275.Spec : Prop :=
  ∀ n, P8378004910615227275.a n = (A100179 (n + 1) : ℚ)

end A100179

/-! ## A100179.P3770371434270395354

`A063489(n+1)+n²`
-/

namespace A100179.P3770371434270395354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1) + (n ^ 2 : ℤ)

end

end A100179.P3770371434270395354

namespace A100179

/-- `A063489(n+1)+n²` -/
def P3770371434270395354.Spec : Prop :=
  ∀ n, P3770371434270395354.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P12428446101360493679

`A102296(n)-(n+1)²`
-/

namespace A100179.P12428446101360493679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102296 n - ((n + 1) ^ 2 : ℤ)

end

end A100179.P12428446101360493679

namespace A100179

/-- `A102296(n)-(n+1)²` -/
def P12428446101360493679.Spec : Prop :=
  ∀ n, P12428446101360493679.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P17625908537511584584

`∑[A202803(n)+n+1]`
-/

namespace A100179.P17625908537511584584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100179.P17625908537511584584

namespace A100179

/-- `∑[A202803(n)+n+1]` -/
def P17625908537511584584.Spec : Prop :=
  ∀ n, P17625908537511584584.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P17131311126528600820

`A002412(n)+(n+1)^3`
-/

namespace A100179.P17131311126528600820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n + ((n + 1) ^ 3 : ℤ)

end

end A100179.P17131311126528600820

namespace A100179

/-- `A002412(n)+(n+1)^3` -/
def P17131311126528600820.Spec : Prop :=
  ∀ n, P17131311126528600820.a n = A100179 (n + 1)

end A100179

/-! ## A100179.P17761239584461988186

`A002492(n)+∑[(n+1)²]`
-/

namespace A100179.P17761239584461988186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100179.P17761239584461988186

namespace A100179

/-- `A002492(n)+∑[(n+1)²]` -/
def P17761239584461988186.Spec : Prop :=
  ∀ n, P17761239584461988186.a n = A100179 (n + 1)

end A100179

/-!
# A100180: Gaps associated with the record prime gaps described in A133429, A133430.

The programs for A100180, there is no canonical definition to state claims against.
-/

/-! ## A100180.P15841935306558316269

`floor(2/acot(A133430(n+1)))`
-/

namespace A100180.P15841935306558316269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A133430 (n + 1) : ℝ)⌋

end

end A100180.P15841935306558316269

/-! ## A100180.P6936732760872410907

`A004277(A133430(1+n))`
-/

namespace A100180.P6936732760872410907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A133430 (1 + n)).toNat

end

end A100180.P6936732760872410907

/-! ## A100180.P9341221160764481224

`A004275(A133430(n+1)+1)`
-/

namespace A100180.P9341221160764481224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A133430 (n + 1) + 1).toNat

end

end A100180.P9341221160764481224

/-! ## A100180.P12704347232007961268

`A028310(2*A133430(n+1))`
-/

namespace A100180.P12704347232007961268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A133430 (n + 1)).toNat

end

end A100180.P12704347232007961268

/-! ## A100180.P10681639061536546828

`A092533(4*A133430(n+1))`
-/

namespace A100180.P10681639061536546828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (4 * A133430 (n + 1)).toNat

end

end A100180.P10681639061536546828

/-! ## A100180.P6147183861352481707

`A065033(2*2*A133430(n+1))`
-/

namespace A100180.P6147183861352481707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (2 * A133430 (n + 1))).toNat

end

end A100180.P6147183861352481707

/-! ## A100180.P10050017790237116141

`A000007(n)+2*A133430(n+1)`
-/

namespace A100180.P10050017790237116141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A133430 (n + 1)

end

end A100180.P10050017790237116141

/-! ## A100180.P9700182765938893663

`A020639(a(n-1))*A133430(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A100180.P9700182765938893663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A133430 (n + 1)

end

end A100180.P9700182765938893663

/-! ## A100180.P16707961906121807686

`val(A000040(n+1), 2)+2*A133430(n+1)`
-/

namespace A100180.P16707961906121807686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + 2 * A133430 (n + 1)

end

end A100180.P16707961906121807686

/-! ## A100180.P14925644441878898040

`A008619(A008574(A133430(n+1))-1)`
-/

namespace A100180.P14925644441878898040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008574 (A133430 (n + 1)).toNat - 1).toNat

end

end A100180.P14925644441878898040

/-! ## A100180.P15212155552988401927

`A005843(A133430(n+1))+A000007(n)`
-/

namespace A100180.P15212155552988401927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A133430 (n + 1)).toNat + A000007 n

end

end A100180.P15212155552988401927

/-! ## A100180.P14688269581822757775

`A005408(A133430(n+1))-A057427(n)`
-/

namespace A100180.P14688269581822757775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A133430 (n + 1)).toNat - A057427 n

end

end A100180.P14688269581822757775

/-! ## A100180.P8626732067977790308

`A008574(A133430(n+1))/A040000(n)`
-/

namespace A100180.P8626732067977790308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A133430 (n + 1)).toNat : ℚ) / (A040000 n : ℚ)

end

end A100180.P8626732067977790308

/-! ## A100180.P12059426154887029437

`A133430(n+1)+A133430(A028310(n)+1)`
-/

namespace A100180.P12059426154887029437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (n + 1) + A133430 (A028310 n + 1).toNat

end

end A100180.P12059426154887029437

/-! ## A100180.P8060155877610041175

`A008574(A133430(n+1))/A036453(n+1)`
-/

namespace A100180.P8060155877610041175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A133430 (n + 1)).toNat : ℚ) / (A036453 (n + 1) : ℚ)

end

end A100180.P8060155877610041175

/-! ## A100180.P107135114900962299

`A005843(A133430(n+1))^(A000040(n+1)%2)`
-/

namespace A100180.P107135114900962299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A133430 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A100180.P107135114900962299

/-! ## A100180.P17775433637463202025

`A005843(A133430(n+1))^(A060888(n+1)%(n+1))`
-/

namespace A100180.P17775433637463202025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A133430 (n + 1)).toNat : ℚ) ^ (Int.tmod (A060888 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A100180.P17775433637463202025

/-! ## A100180.P15659849429749414866

`A000108(floor(2/(n+1)))+A005408(A133430(n+1))-2`
-/

namespace A100180.P15659849429749414866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊2 / (n + 1 : ℚ)⌋.toNat + (A005408 (A133430 (n + 1)).toNat - 2)

end

end A100180.P15659849429749414866

/-! ## A100180.P2420430681967659298

`A008574(A133430(n+1))/A020639(A008574(n))`
-/

namespace A100180.P2420430681967659298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A133430 (n + 1)).toNat : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A100180.P2420430681967659298

/-! ## A100180.P1307332399094344255

`A296529(∑[n])+2*A133430(n+1)`
-/

namespace A100180.P1307332399094344255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * A133430 (n + 1)

end

end A100180.P1307332399094344255

/-!
# A100181: Odd terms in A120070.

The programs for A100181, the canonical program `A100181.P3918827157118808602` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100181 has offset 1).

The definition of A100181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100181.P3918827157118808602

`A120070(3*(n+1)-comp[n²]+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100181

/-- `A120070(3*(n+1)-comp[n²]+1)` -/
def P3918827157118808602.Spec : Prop :=
  ∀ n, P3918827157118808602.a n = A100181 (n + 1)

theorem P3918827157118808602.correct : P3918827157118808602.Spec := by
  intro n
  simp only [A100181, Nat.add_sub_cancel]

end A100181

/-! ## A100181.P16894659739883987908

`filter[A120070(2+n), A039982(#)]`
-/

namespace A100181.P16894659739883987908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A100181.P16894659739883987908

namespace A100181

/-- `filter[A120070(2+n), A039982(#)]` -/
def P16894659739883987908.Spec : Prop :=
  ∀ n, P16894659739883987908.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P12405171131259617653

`filter[A120070(n+2), A098725(#)]`
-/

namespace A100181.P12405171131259617653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A100181.P12405171131259617653

namespace A100181

/-- `filter[A120070(n+2), A098725(#)]` -/
def P12405171131259617653.Spec : Prop :=
  ∀ n, P12405171131259617653.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P10461554836224549197

`filter[A120070(n+2), A166486(#)]`
-/

namespace A100181.P10461554836224549197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A100181.P10461554836224549197

namespace A100181

/-- `filter[A120070(n+2), A166486(#)]` -/
def P10461554836224549197.Spec : Prop :=
  ∀ n, P10461554836224549197.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P4206534106535111878

`A141616(n+1)-A143730(n+1)`
-/

namespace A100181.P4206534106535111878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141616 (n + 1) - A143730 (n + 1)

end

end A100181.P4206534106535111878

namespace A100181

/-- `A141616(n+1)-A143730(n+1)` -/
def P4206534106535111878.Spec : Prop :=
  ∀ n, P4206534106535111878.a n = A100181 (n + 1)

theorem P4206534106535111878.correct : P4206534106535111878.Spec := by
  intro n
  simp only [A100181, Nat.add_sub_cancel, A100181.P4206534106535111878.a, A100181.P3918827157118808602.f1, A100181.P3918827157118808602.a, A120070, A120070.P8418683465396432844.a, A141616, A141616.P13865560224781549027.f2, A141616.P13865560224781549027.f1, A141616.P13865560224781549027.a, A143730, A143730.P16899165122371351592.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100181

/-! ## A100181.P1763464278610520101

`A167268(n+1)+A143218(A091995(n+1))`
-/

namespace A100181.P1763464278610520101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167268 (n + 1) + A143218 (A091995 (n + 1)).toNat

end

end A100181.P1763464278610520101

namespace A100181

/-- `A167268(n+1)+A143218(A091995(n+1))` -/
def P1763464278610520101.Spec : Prop :=
  ∀ n, P1763464278610520101.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P2407407963954069303

`A094728(floor(sqrt(n))+2*n+3)`
-/

namespace A100181.P2407407963954069303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (Nat.sqrt n + (2 * n + 3))

end

end A100181.P2407407963954069303

namespace A100181

/-- `A094728(floor(sqrt(n))+2*n+3)` -/
def P2407407963954069303.Spec : Prop :=
  ∀ n, P2407407963954069303.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P9664905096195999072

`filter[A120070(n+2), A000035(#)]`
-/

namespace A100181.P9664905096195999072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A100181.P9664905096195999072

namespace A100181

/-- `filter[A120070(n+2), A000035(#)]` -/
def P9664905096195999072.Spec : Prop :=
  ∀ n, P9664905096195999072.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P641882138350933958

`filter[A120070(n+2), A266070(#)]`
-/

namespace A100181.P641882138350933958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A100181.P641882138350933958

namespace A100181

/-- `filter[A120070(n+2), A266070(#)]` -/
def P641882138350933958.Spec : Prop :=
  ∀ n, P641882138350933958.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P11948253949837853330

`filter[A120070(n+2), A266719(#)]`
-/

namespace A100181.P11948253949837853330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A100181.P11948253949837853330

namespace A100181

/-- `filter[A120070(n+2), A266719(#)]` -/
def P11948253949837853330.Spec : Prop :=
  ∀ n, P11948253949837853330.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P6472566936586556729

`filter[A120070(n+2), A267256(#)]`
-/

namespace A100181.P6472566936586556729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A100181.P6472566936586556729

namespace A100181

/-- `filter[A120070(n+2), A267256(#)]` -/
def P6472566936586556729.Spec : Prop :=
  ∀ n, P6472566936586556729.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P7881188632064974783

`filter[A120070(n+2), A296066(#)]`
-/

namespace A100181.P7881188632064974783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A100181.P7881188632064974783

namespace A100181

/-- `filter[A120070(n+2), A296066(#)]` -/
def P7881188632064974783.Spec : Prop :=
  ∀ n, P7881188632064974783.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P4615133020162652260

`A098353(A274428(n+1))`
-/

namespace A100181.P4615133020162652260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (A274428 (n + 1)).toNat

end

end A100181.P4615133020162652260

namespace A100181

/-- `A098353(A274428(n+1))` -/
def P4615133020162652260.Spec : Prop :=
  ∀ n, P4615133020162652260.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P15913074551364672366

`filter[A128590(2*(n+1)), A000035(#)]`
-/

namespace A100181.P15913074551364672366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128590 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A100181.P15913074551364672366

namespace A100181

/-- `filter[A128590(2*(n+1)), A000035(#)]` -/
def P15913074551364672366.Spec : Prop :=
  ∀ n, P15913074551364672366.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P6536845025575108818

`filter[A128590(2*(n+1)), A266070(#)]`
-/

namespace A100181.P6536845025575108818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128590 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A100181.P6536845025575108818

namespace A100181

/-- `filter[A128590(2*(n+1)), A266070(#)]` -/
def P6536845025575108818.Spec : Prop :=
  ∀ n, P6536845025575108818.a n = A100181 (n + 1)

end A100181

/-! ## A100181.P8292047900114701869

`filter[A120070(n+2), A179775(#)]`
-/

namespace A100181.P8292047900114701869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A100181.P8292047900114701869

namespace A100181

/-- `filter[A120070(n+2), A179775(#)]` -/
def P8292047900114701869.Spec : Prop :=
  ∀ n, P8292047900114701869.a n = A100181 (n + 1)

end A100181

/-!
# A100182: Structured tetragonal anti-prism numbers.

The programs for A100182, the canonical program `A100182.P455290244468639896` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100182 has offset 1).

The definition of A100182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100182.P13847508256470055664

`ogf((1+4x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100182.P13847508256470055664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2] [1, -4, 6, -4, 1] n

end

end A100182.P13847508256470055664

namespace A100182

/-- `ogf((1+4x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13847508256470055664.Spec : Prop :=
  ∀ n, P13847508256470055664.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P455290244468639896

`C(n+1, 3)+(n+1)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100182

/-- `C(n+1, 3)+(n+1)^3` -/
def P455290244468639896.Spec : Prop :=
  ∀ n, (P455290244468639896.a n : ℤ) = A100182 (n + 1)

theorem P455290244468639896.correct : P455290244468639896.Spec := by
  intro n
  simp only [A100182, Nat.add_sub_cancel]

end A100182

/-! ## A100182.P5253102222421822927

`(7*(n+1)^3-3*(n+1)²+2*(n+1))/6`
-/

namespace A100182.P5253102222421822927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (2 * (n + 1) : ℤ) : ℚ) / 6

end

end A100182.P5253102222421822927

namespace A100182

/-- `(7*(n+1)^3-3*(n+1)²+2*(n+1))/6` -/
def P5253102222421822927.Spec : Prop :=
  ∀ n, P5253102222421822927.a n = (A100182 (n + 1) : ℚ)

theorem P5253102222421822927.correct : P5253102222421822927.Spec := by
  intro n
  simp only [A100182, Nat.add_sub_cancel, A100182.P5253102222421822927.a, A100182.P455290244468639896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100182

/-! ## A100182.P16295626208035403742

`∑[∑[a(n-1)+7]]` with `a(0)=1, a(1)=6`
-/

namespace A100182.P16295626208035403742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P16295626208035403742

namespace A100182

/-- `∑[∑[a(n-1)+7]]` -/
def P16295626208035403742.Spec : Prop :=
  ∀ n, (P16295626208035403742.a n : ℤ) = A100182 (n + 1)

end A100182

/-! ## A100182.P3005101347938677501

`∑[C(n, 2)]+(n+1)^3`
-/

namespace A100182.P3005101347938677501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A100182.P3005101347938677501

namespace A100182

/-- `∑[C(n, 2)]+(n+1)^3` -/
def P3005101347938677501.Spec : Prop :=
  ∀ n, (P3005101347938677501.a n : ℤ) = A100182 (n + 1)

end A100182

/-! ## A100182.P18112354209017785453

`Δ[∑[n]²]+C(n+1, 3)`
-/

namespace A100182.P18112354209017785453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (n + 1) 3 : ℤ)

end

end A100182.P18112354209017785453

namespace A100182

/-- `Δ[∑[n]²]+C(n+1, 3)` -/
def P18112354209017785453.Spec : Prop :=
  ∀ n, P18112354209017785453.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P14488531725429197946

`∑[∑[ogf((1+4x+2x^2)/(1-2x+x^2))]]`
-/

namespace A100182.P14488531725429197946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P14488531725429197946

namespace A100182

/-- `∑[∑[ogf((1+4x+2x^2)/(1-2x+x^2))]]` -/
def P14488531725429197946.Spec : Prop :=
  ∀ n, P14488531725429197946.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P10016230838634730386

`∑[2-∑[a(n-1)-7]]` with `a(0)=1`
-/

namespace A100182.P10016230838634730386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P10016230838634730386

namespace A100182

/-- `∑[2-∑[a(n-1)-7]]` -/
def P10016230838634730386.Spec : Prop :=
  ∀ n, P10016230838634730386.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P1903864352939384188

`∑[∑[6*n]]+∑[C(n, 2)+1]`
-/

namespace A100182.P1903864352939384188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A100182.P1903864352939384188

namespace A100182

/-- `∑[∑[6*n]]+∑[C(n, 2)+1]` -/
def P1903864352939384188.Spec : Prop :=
  ∀ n, (P1903864352939384188.a n : ℤ) = A100182 (n + 1)

end A100182

/-! ## A100182.P11417961068872642971

`∑[∑[1-n]+lcm(2*n+1, 2*n)]`
-/

namespace A100182.P11417961068872642971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.lcm (2 * n + 1) (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P11417961068872642971

namespace A100182

/-- `∑[∑[1-n]+lcm(2*n+1, 2*n)]` -/
def P11417961068872642971.Spec : Prop :=
  ∀ n, P11417961068872642971.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P4972280670519232533

`((2*n)²+(n+3)*a(n-1))/n` with `a(0)=1`
-/

namespace A100182.P4972280670519232533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((2 * n) ^ 2 : ℚ) + (n + 3 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A100182.P4972280670519232533

namespace A100182

/-- `((2*n)²+(n+3)*a(n-1))/n` -/
def P4972280670519232533.Spec : Prop :=
  ∀ n, P4972280670519232533.a n = (A100182 (n + 1) : ℚ)

end A100182

/-! ## A100182.P3495601043867701304

`∑[(2*n+1)*and(2*n+1, 2*n)-∑[n-1]]`
-/

namespace A100182.P3495601043867701304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land (2 * n + 1) (2 * n) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P3495601043867701304

namespace A100182

/-- `∑[(2*n+1)*and(2*n+1, 2*n)-∑[n-1]]` -/
def P3495601043867701304.Spec : Prop :=
  ∀ n, P3495601043867701304.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P5047021858821690755

`∑[A179986(n)+1]`
-/

namespace A100182.P5047021858821690755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P5047021858821690755

namespace A100182

/-- `∑[A179986(n)+1]` -/
def P5047021858821690755.Spec : Prop :=
  ∀ n, P5047021858821690755.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P5724673891223061638

`∑[A389615(n)+n]`
-/

namespace A100182.P5724673891223061638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P5724673891223061638

namespace A100182

/-- `∑[A389615(n)+n]` -/
def P5724673891223061638.Spec : Prop :=
  ∀ n, P5724673891223061638.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P13208084507289570005

`A255687(n)+1+n`
-/

namespace A100182.P13208084507289570005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255687 n + 1 + (n : ℤ)

end

end A100182.P13208084507289570005

namespace A100182

/-- `A255687(n)+1+n` -/
def P13208084507289570005.Spec : Prop :=
  ∀ n, P13208084507289570005.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P11246695138523129147

`A143058(n)+n^3`
-/

namespace A100182.P11246695138523129147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + (n ^ 3 : ℤ)

end

end A100182.P11246695138523129147

namespace A100182

/-- `A143058(n)+n^3` -/
def P11246695138523129147.Spec : Prop :=
  ∀ n, P11246695138523129147.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P14135935994087771303

`∑[A005891(n)+n²]`
-/

namespace A100182.P14135935994087771303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P14135935994087771303

namespace A100182

/-- `∑[A005891(n)+n²]` -/
def P14135935994087771303.Spec : Prop :=
  ∀ n, P14135935994087771303.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P11315743683441876375

`A005920(n)-∑[n²]`
-/

namespace A100182.P11315743683441876375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100182.P11315743683441876375

namespace A100182

/-- `A005920(n)-∑[n²]` -/
def P11315743683441876375.Spec : Prop :=
  ∀ n, P11315743683441876375.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P7897175433236661501

`∑[A064225(n)-n²]`
-/

namespace A100182.P7897175433236661501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100182.P7897175433236661501

namespace A100182

/-- `∑[A064225(n)-n²]` -/
def P7897175433236661501.Spec : Prop :=
  ∀ n, P7897175433236661501.a n = A100182 (n + 1)

end A100182

/-! ## A100182.P4474391336322867515

`A081436(n)+∑[∑[n]]`
-/

namespace A100182.P4474391336322867515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100182.P4474391336322867515

namespace A100182

/-- `A081436(n)+∑[∑[n]]` -/
def P4474391336322867515.Spec : Prop :=
  ∀ n, P4474391336322867515.a n = A100182 (n + 1)

end A100182

/-!
# A100183: Structured hexagonal anti-prism numbers.

The programs for A100183, the canonical program `A100183.P2047780514495996586` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100183 has offset 1).

The definition of A100183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100183.P10446977293558307655

`ogf((1+8x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100183.P10446977293558307655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 4] [1, -4, 6, -4, 1] n

end

end A100183.P10446977293558307655

namespace A100183

/-- `ogf((1+8x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10446977293558307655.Spec : Prop :=
  ∀ n, P10446977293558307655.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P2047780514495996586

`(13*(n+1)^3-9*(n+1)²+2*(n+1))/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100183

/-- `(13*(n+1)^3-9*(n+1)²+2*(n+1))/6` -/
def P2047780514495996586.Spec : Prop :=
  ∀ n, P2047780514495996586.a n = (A100183 (n + 1) : ℚ)

end A100183

/-! ## A100183.P4476743971087286323

`∑[∑[a(n-1)+13]]` with `a(0)=1, a(1)=10`
-/

namespace A100183.P4476743971087286323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100183.P4476743971087286323

namespace A100183

/-- `∑[∑[a(n-1)+13]]` -/
def P4476743971087286323.Spec : Prop :=
  ∀ n, (P4476743971087286323.a n : ℤ) = A100183 (n + 1)

end A100183

/-! ## A100183.P4466142407665413063

`C(n+3, 3)+2*n*(n+1)²`
-/

namespace A100183.P4466142407665413063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 2 * n * (n + 1) ^ 2

end

end A100183.P4466142407665413063

namespace A100183

/-- `C(n+3, 3)+2*n*(n+1)²` -/
def P4466142407665413063.Spec : Prop :=
  ∀ n, (P4466142407665413063.a n : ℤ) = A100183 (n + 1)

end A100183

/-! ## A100183.P1797707991650816539

`∑[3*C(n, 2)]+∑[∑[10*n]+1]`
-/

namespace A100183.P1797707991650816539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100183.P1797707991650816539

namespace A100183

/-- `∑[3*C(n, 2)]+∑[∑[10*n]+1]` -/
def P1797707991650816539.Spec : Prop :=
  ∀ n, (P1797707991650816539.a n : ℤ) = A100183 (n + 1)

end A100183

/-! ## A100183.P16887239891903277307

`∑[A342914(n)-n]`
-/

namespace A100183.P16887239891903277307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342914 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100183.P16887239891903277307

namespace A100183

/-- `∑[A342914(n)-n]` -/
def P16887239891903277307.Spec : Prop :=
  ∀ n, P16887239891903277307.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P15015219206467479888

`A304993(n)+(n+1)^3`
-/

namespace A100183.P15015219206467479888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + ((n + 1) ^ 3 : ℤ)

end

end A100183.P15015219206467479888

namespace A100183

/-- `A304993(n)+(n+1)^3` -/
def P15015219206467479888.Spec : Prop :=
  ∀ n, P15015219206467479888.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P12112385676988565403

`(n+1)²²-A011195(n)`
-/

namespace A100183.P12112385676988565403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A011195 n

end

end A100183.P12112385676988565403

namespace A100183

/-- `(n+1)²²-A011195(n)` -/
def P12112385676988565403.Spec : Prop :=
  ∀ n, P12112385676988565403.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P16216861706712072437

`A254407(n)+∑[(n+1)²]`
-/

namespace A100183.P16216861706712072437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100183.P16216861706712072437

namespace A100183

/-- `A254407(n)+∑[(n+1)²]` -/
def P16216861706712072437.Spec : Prop :=
  ∀ n, P16216861706712072437.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P10605834615883072211

`∑[A254963(n)+(n+1)²]`
-/

namespace A100183.P10605834615883072211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100183.P10605834615883072211

namespace A100183

/-- `∑[A254963(n)+(n+1)²]` -/
def P10605834615883072211.Spec : Prop :=
  ∀ n, P10605834615883072211.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P12689831498640089330

`A050509(n)+∑[2*n²]`
-/

namespace A100183.P12689831498640089330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100183.P12689831498640089330

namespace A100183

/-- `A050509(n)+∑[2*n²]` -/
def P12689831498640089330.Spec : Prop :=
  ∀ n, P12689831498640089330.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P6167049499931419258

`A213772(n+1)+∑[∑[n]]`
-/

namespace A100183.P6167049499931419258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213772 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100183.P6167049499931419258

namespace A100183

/-- `A213772(n+1)+∑[∑[n]]` -/
def P6167049499931419258.Spec : Prop :=
  ∀ n, P6167049499931419258.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P298366240464571138

`A213837(n+1)-n*∑[n]`
-/

namespace A100183.P298366240464571138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213837 (n + 1) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A100183.P298366240464571138

namespace A100183

/-- `A213837(n+1)-n*∑[n]` -/
def P298366240464571138.Spec : Prop :=
  ∀ n, P298366240464571138.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P16592063666278811245

`A176060(n+1)-∑[1-n]²`
-/

namespace A100183.P16592063666278811245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A100183.P16592063666278811245

namespace A100183

/-- `A176060(n+1)-∑[1-n]²` -/
def P16592063666278811245.Spec : Prop :=
  ∀ n, P16592063666278811245.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P5628729637940676188

`∑[n*A016969(n)]+C(n, 3)+1`
-/

namespace A100183.P5628729637940676188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 3 + 1 : ℤ)

end

end A100183.P5628729637940676188

namespace A100183

/-- `∑[n*A016969(n)]+C(n, 3)+1` -/
def P5628729637940676188.Spec : Prop :=
  ∀ n, P5628729637940676188.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P17337509322249900102

`A000292(n+1)+n*2*(n+1)²`
-/

namespace A100183.P17337509322249900102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (n * (2 * (n + 1) ^ 2) : ℤ)

end

end A100183.P17337509322249900102

namespace A100183

/-- `A000292(n+1)+n*2*(n+1)²` -/
def P17337509322249900102.Spec : Prop :=
  ∀ n, P17337509322249900102.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P1710339378805785894

`A016061(n)+A005920(n)`
-/

namespace A100183.P1710339378805785894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n + A005920 n

end

end A100183.P1710339378805785894

namespace A100183

/-- `A016061(n)+A005920(n)` -/
def P1710339378805785894.Spec : Prop :=
  ∀ n, P1710339378805785894.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P9678511014625702796

`A051895(n)+A008778(n)`
-/

namespace A100183.P9678511014625702796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + A008778 n

end

end A100183.P9678511014625702796

namespace A100183

/-- `A051895(n)+A008778(n)` -/
def P9678511014625702796.Spec : Prop :=
  ∀ n, P9678511014625702796.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P13122021738590310672

`A081438(n)+A007584(n)`
-/

namespace A100183.P13122021738590310672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + A007584 n

end

end A100183.P13122021738590310672

namespace A100183

/-- `A081438(n)+A007584(n)` -/
def P13122021738590310672.Spec : Prop :=
  ∀ n, P13122021738590310672.a n = A100183 (n + 1)

end A100183

/-! ## A100183.P9566372693082059486

`A096000(n)+A006002(n)`
-/

namespace A100183.P9566372693082059486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + A006002 n

end

end A100183.P9566372693082059486

namespace A100183

/-- `A096000(n)+A006002(n)` -/
def P9566372693082059486.Spec : Prop :=
  ∀ n, P9566372693082059486.a n = A100183 (n + 1)

end A100183

/-!
# A100184: Structured octagonal anti-prism numbers.

The programs for A100184, the canonical program `A100184.P2007160916125721185` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100184 has offset 1).

The definition of A100184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100184.P4422565154782473487

`ogf((1+12x+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100184.P4422565154782473487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 6] [1, -4, 6, -4, 1] n

end

end A100184.P4422565154782473487

namespace A100184

/-- `ogf((1+12x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4422565154782473487.Spec : Prop :=
  ∀ n, P4422565154782473487.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P2007160916125721185

`1/6*(19*(n+1)^3-15*(n+1)²+2*(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100184

/-- `1/6*(19*(n+1)^3-15*(n+1)²+2*(n+1))` -/
def P2007160916125721185.Spec : Prop :=
  ∀ n, P2007160916125721185.a n = (A100184 (n + 1) : ℚ)

end A100184

/-! ## A100184.P4869217385652862993

`∑{#}[n, (n+1+#)*(n+1+2*#)]`
-/

namespace A100184.P4869217385652862993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 + k) * (n + 1 + 2 * k)

end

end A100184.P4869217385652862993

namespace A100184

/-- `∑{#}[n, (n+1+#)*(n+1+2*#)]` -/
def P4869217385652862993.Spec : Prop :=
  ∀ n, (P4869217385652862993.a n : ℤ) = A100184 (n + 1)

end A100184

/-! ## A100184.P1557367473960931868

`∑[∑[a(n-1)+19]]` with `a(0)=1, a(1)=14`
-/

namespace A100184.P1557367473960931868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P1557367473960931868

namespace A100184

/-- `∑[∑[a(n-1)+19]]` -/
def P1557367473960931868.Spec : Prop :=
  ∀ n, (P1557367473960931868.a n : ℤ) = A100184 (n + 1)

end A100184

/-! ## A100184.P5080274637499655162

`∑[n*(7*n-3)/2+12*C(n+1, 2)+1]`
-/

namespace A100184.P5080274637499655162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n : ℤ) - 3) : ℚ) / 2 + (12 * Nat.choose (n + 1) 2 + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P5080274637499655162

namespace A100184

/-- `∑[n*(7*n-3)/2+12*C(n+1, 2)+1]` -/
def P5080274637499655162.Spec : Prop :=
  ∀ n, P5080274637499655162.a n = (A100184 (n + 1) : ℚ)

end A100184

/-! ## A100184.P11992062844732969594

`∑[A381109(n)-n²]`
-/

namespace A100184.P11992062844732969594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381109 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P11992062844732969594

namespace A100184

/-- `∑[A381109(n)-n²]` -/
def P11992062844732969594.Spec : Prop :=
  ∀ n, P11992062844732969594.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P11219796892368040270

`∑[A080860(n)-∑[n]]`
-/

namespace A100184.P11219796892368040270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P11219796892368040270

namespace A100184

/-- `∑[A080860(n)-∑[n]]` -/
def P11219796892368040270.Spec : Prop :=
  ∀ n, P11219796892368040270.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P882877988079378196

`∑[A272039(n)-C(n, 2)]`
-/

namespace A100184.P882877988079378196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P882877988079378196

namespace A100184

/-- `∑[A272039(n)-C(n, 2)]` -/
def P882877988079378196.Spec : Prop :=
  ∀ n, P882877988079378196.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P4197393006002273215

`∑[A220083(n)+2*n²]`
-/

namespace A100184.P4197393006002273215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n + (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P4197393006002273215

namespace A100184

/-- `∑[A220083(n)+2*n²]` -/
def P4197393006002273215.Spec : Prop :=
  ∀ n, P4197393006002273215.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P18149369320269102425

`∑[A045945(n)+∑[n+1]]`
-/

namespace A100184.P18149369320269102425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P18149369320269102425

namespace A100184

/-- `∑[A045945(n)+∑[n+1]]` -/
def P18149369320269102425.Spec : Prop :=
  ∀ n, P18149369320269102425.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P4784355654282257396

`∑[A051936(n+4)+(3*n)²]`
-/

namespace A100184.P4784355654282257396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051936 (n + 4) + ((3 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P4784355654282257396

namespace A100184

/-- `∑[A051936(n+4)+(3*n)²]` -/
def P4784355654282257396.Spec : Prop :=
  ∀ n, P4784355654282257396.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P17219009560513391262

`∑[A000567(n)+∑[13*n]+1]`
-/

namespace A100184.P17219009560513391262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P17219009560513391262

namespace A100184

/-- `∑[A000567(n)+∑[13*n]+1]` -/
def P17219009560513391262.Spec : Prop :=
  ∀ n, P17219009560513391262.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P1282101300256854843

`∑[∑[n+1]+n*A017197(n)]`
-/

namespace A100184.P1282101300256854843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n : ℤ) * A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100184.P1282101300256854843

namespace A100184

/-- `∑[∑[n+1]+n*A017197(n)]` -/
def P1282101300256854843.Spec : Prop :=
  ∀ n, P1282101300256854843.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P2492325635108899497

`A254407(n)+A051662(n)`
-/

namespace A100184.P2492325635108899497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n + A051662 n

end

end A100184.P2492325635108899497

namespace A100184

/-- `A254407(n)+A051662(n)` -/
def P2492325635108899497.Spec : Prop :=
  ∀ n, P2492325635108899497.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P578475832500019126

`A257093(n)+A081438(n)`
-/

namespace A100184.P578475832500019126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n + A081438 n

end

end A100184.P578475832500019126

namespace A100184

/-- `A257093(n)+A081438(n)` -/
def P578475832500019126.Spec : Prop :=
  ∀ n, P578475832500019126.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P14191187902732152044

`A255211(n)+A135712(n)`
-/

namespace A100184.P14191187902732152044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n + A135712 n

end

end A100184.P14191187902732152044

namespace A100184

/-- `A255211(n)+A135712(n)` -/
def P14191187902732152044.Spec : Prop :=
  ∀ n, P14191187902732152044.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P16745273029365416069

`A299646(n)+A203551(n)`
-/

namespace A100184.P16745273029365416069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n + A203551 n

end

end A100184.P16745273029365416069

namespace A100184

/-- `A299646(n)+A203551(n)` -/
def P16745273029365416069.Spec : Prop :=
  ∀ n, P16745273029365416069.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P6304309065609549835

`A027849(n)-A132112(n)`
-/

namespace A100184.P6304309065609549835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n - A132112 n

end

end A100184.P6304309065609549835

namespace A100184

/-- `A027849(n)-A132112(n)` -/
def P6304309065609549835.Spec : Prop :=
  ∀ n, P6304309065609549835.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P2619520899296838339

`A103532(n)-A162148(n)`
-/

namespace A100184.P2619520899296838339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n - A162148 n

end

end A100184.P2619520899296838339

namespace A100184

/-- `A103532(n)-A162148(n)` -/
def P2619520899296838339.Spec : Prop :=
  ∀ n, P2619520899296838339.a n = A100184 (n + 1)

end A100184

/-! ## A100184.P4399893526660233742

`A100156(n+1)+A002492(n)`
-/

namespace A100184.P4399893526660233742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100156 (n + 1) + A002492 n

end

end A100184.P4399893526660233742

namespace A100184

/-- `A100156(n+1)+A002492(n)` -/
def P4399893526660233742.Spec : Prop :=
  ∀ n, P4399893526660233742.a n = A100184 (n + 1)

end A100184

/-!
# A100185: Structured meta-anti-prism numbers, the n-th number from a structured n-gonal anti-prism number sequence.

The programs for A100185, the canonical program `A100185.P18373092756516890742` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100185 has offset 1).

The definition of A100185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100185.P7874696242592435380

`ogf((1-x+9x^2+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A100185.P7874696242592435380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 9, 3] [1, -5, 10, -10, 5, -1] n

end

end A100185.P7874696242592435380

namespace A100185

/-- `ogf((1-x+9x^2+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P7874696242592435380.Spec : Prop :=
  ∀ n, P7874696242592435380.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P8153609571737546163

`(n+1)*((n+1)*((n+1)*(3*(n+1)-8)+9)+2)/6`
-/

namespace A100185.P8153609571737546163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 1 : ℤ) * ((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 8) + 9) + 2) : ℚ) / 6

end

end A100185.P8153609571737546163

namespace A100185

/-- `(n+1)*((n+1)*((n+1)*(3*(n+1)-8)+9)+2)/6` -/
def P8153609571737546163.Spec : Prop :=
  ∀ n, P8153609571737546163.a n = (A100185 (n + 1) : ℚ)

theorem P8153609571737546163.correct : P8153609571737546163.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A100185, Nat.add_sub_cancel, A100185.P8153609571737546163.a, A100185.P18373092756516890742.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A100185, Nat.add_sub_cancel, A100185.P8153609571737546163.a, A100185.P18373092756516890742.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100185

/-! ## A100185.P18373092756516890742

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=68, a(4)=185`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100185

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18373092756516890742.Spec : Prop :=
  ∀ n, P18373092756516890742.a n = A100185 (n + 1)

theorem P18373092756516890742.correct : P18373092756516890742.Spec := by
  intro n
  simp only [A100185, Nat.add_sub_cancel]

end A100185

/-! ## A100185.P13523310392589975500

`∑[n*C(2*n, 2)+n+1]`
-/

namespace A100185.P13523310392589975500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100185.P13523310392589975500

namespace A100185

/-- `∑[n*C(2*n, 2)+n+1]` -/
def P13523310392589975500.Spec : Prop :=
  ∀ n, (P13523310392589975500.a n : ℤ) = A100185 (n + 1)

end A100185

/-! ## A100185.P10696928352813579689

`∑[(2*n+1)*lcm(n, n-1)]+(n+1)²`
-/

namespace A100185.P10696928352813579689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A100185.P10696928352813579689

namespace A100185

/-- `∑[(2*n+1)*lcm(n, n-1)]+(n+1)²` -/
def P10696928352813579689.Spec : Prop :=
  ∀ n, (P10696928352813579689.a n : ℤ) = A100185 (n + 1)

end A100185

/-! ## A100185.P7636944537192684040

`a(n-1)+(2*n+1)*((1-n)²+n)` with `a(0)=1`
-/

namespace A100185.P7636944537192684040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 : ℤ) * ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

end

end A100185.P7636944537192684040

namespace A100185

/-- `a(n-1)+(2*n+1)*((1-n)²+n)` -/
def P7636944537192684040.Spec : Prop :=
  ∀ n, P7636944537192684040.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P13530058624267390303

`∑[A015237(n)+n+1]`
-/

namespace A100185.P13530058624267390303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100185.P13530058624267390303

namespace A100185

/-- `∑[A015237(n)+n+1]` -/
def P13530058624267390303.Spec : Prop :=
  ∀ n, P13530058624267390303.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P3751981583599096522

`A103220(n)+∑[n+1]`
-/

namespace A100185.P3751981583599096522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100185.P3751981583599096522

namespace A100185

/-- `A103220(n)+∑[n+1]` -/
def P3751981583599096522.Spec : Prop :=
  ∀ n, P3751981583599096522.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P17062567293283062403

`∑[∑[A111284(n+1)]]+C(n², 2)`
-/

namespace A100185.P17062567293283062403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A100185.P17062567293283062403

namespace A100185

/-- `∑[∑[A111284(n+1)]]+C(n², 2)` -/
def P17062567293283062403.Spec : Prop :=
  ∀ n, P17062567293283062403.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P17212085803583156570

`∑[∑[n]+1]+∑[n]*A000290(n)`
-/

namespace A100185.P17212085803583156570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A000290 n

end

end A100185.P17212085803583156570

namespace A100185

/-- `∑[∑[n]+1]+∑[n]*A000290(n)` -/
def P17212085803583156570.Spec : Prop :=
  ∀ n, P17212085803583156570.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P2327767945090844838

`A071237(n)+A000125(n)`
-/

namespace A100185.P2327767945090844838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n + A000125 n

end

end A100185.P2327767945090844838

namespace A100185

/-- `A071237(n)+A000125(n)` -/
def P2327767945090844838.Spec : Prop :=
  ∀ n, P2327767945090844838.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P8739952611993531396

`A055998(n)+A046998(n)`
-/

namespace A100185.P8739952611993531396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A046998 n

end

end A100185.P8739952611993531396

namespace A100185

/-- `A055998(n)+A046998(n)` -/
def P8739952611993531396.Spec : Prop :=
  ∀ n, P8739952611993531396.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P5961772709667492384

`A188475(n)+A101374(n)`
-/

namespace A100185.P5961772709667492384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n + A101374 n

end

end A100185.P5961772709667492384

namespace A100185

/-- `A188475(n)+A101374(n)` -/
def P5961772709667492384.Spec : Prop :=
  ∀ n, P5961772709667492384.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P787789179139793655

`A058310(n)-A332698(n)`
-/

namespace A100185.P787789179139793655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 n - A332698 n

end

end A100185.P787789179139793655

namespace A100185

/-- `A058310(n)-A332698(n)` -/
def P787789179139793655.Spec : Prop :=
  ∀ n, P787789179139793655.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P16126643018228761466

`A167875(n)+A036464(n+1)`
-/

namespace A100185.P16126643018228761466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A036464 (n + 1)

end

end A100185.P16126643018228761466

namespace A100185

/-- `A167875(n)+A036464(n+1)` -/
def P16126643018228761466.Spec : Prop :=
  ∀ n, P16126643018228761466.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P14209199496862224815

`A179297(n+1)+A062392(n)`
-/

namespace A100185.P14209199496862224815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (n + 1) + A062392 n

end

end A100185.P14209199496862224815

namespace A100185

/-- `A179297(n+1)+A062392(n)` -/
def P14209199496862224815.Spec : Prop :=
  ∀ n, P14209199496862224815.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P10577752382469130350

`A212560(n)+A081489(n+1)`
-/

namespace A100185.P10577752382469130350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n + A081489 (n + 1)

end

end A100185.P10577752382469130350

namespace A100185

/-- `A212560(n)+A081489(n+1)` -/
def P10577752382469130350.Spec : Prop :=
  ∀ n, P10577752382469130350.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P1053209434830702653

`A092365(n+1)-A162148(n)`
-/

namespace A100185.P1053209434830702653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092365 (n + 1) - A162148 n

end

end A100185.P1053209434830702653

namespace A100185

/-- `A092365(n+1)-A162148(n)` -/
def P1053209434830702653.Spec : Prop :=
  ∀ n, P1053209434830702653.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P1523579537690465439

`A336535(n+1)-A101986(n)`
-/

namespace A100185.P1523579537690465439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336535 (n + 1) - A101986 n

end

end A100185.P1523579537690465439

namespace A100185

/-- `A336535(n+1)-A101986(n)` -/
def P1523579537690465439.Spec : Prop :=
  ∀ n, P1523579537690465439.a n = A100185 (n + 1)

end A100185

/-! ## A100185.P349863189070743263

`A128091(n+1)-A172123(n+1)`
-/

namespace A100185.P349863189070743263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128091 (n + 1) - A172123 (n + 1)

end

end A100185.P349863189070743263

namespace A100185

/-- `A128091(n+1)-A172123(n+1)` -/
def P349863189070743263.Spec : Prop :=
  ∀ n, P349863189070743263.a n = A100185 (n + 1)

end A100185

/-!
# A100186: Structured heptagonal anti-diamond numbers (vertex structure 7).

The programs for A100186, the canonical program `A100186.P8329219847746561558` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100186 has offset 1).

The definition of A100186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100186.P2928910312584959400

`ogf((1+12x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100186.P2928910312584959400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 9] [1, -4, 6, -4, 1] n

end

end A100186.P2928910312584959400

namespace A100186

/-- `ogf((1+12x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2928910312584959400.Spec : Prop :=
  ∀ n, P2928910312584959400.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P8329219847746561558

`(22*(n+1)^3-24*(n+1)²+8*(n+1))/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100186

/-- `(22*(n+1)^3-24*(n+1)²+8*(n+1))/6` -/
def P8329219847746561558.Spec : Prop :=
  ∀ n, P8329219847746561558.a n = (A100186 (n + 1) : ℚ)

end A100186

/-! ## A100186.P4065913188512983380

`∑[lcm(2*n+1, n+1)+(3*n)²]`
-/

namespace A100186.P4065913188512983380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n + 1) + (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100186.P4065913188512983380

namespace A100186

/-- `∑[lcm(2*n+1, n+1)+(3*n)²]` -/
def P4065913188512983380.Spec : Prop :=
  ∀ n, (P4065913188512983380.a n : ℤ) = A100186 (n + 1)

end A100186

/-! ## A100186.P1712325100721919250

`A220084(n)+∑[n²]`
-/

namespace A100186.P1712325100721919250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100186.P1712325100721919250

namespace A100186

/-- `A220084(n)+∑[n²]` -/
def P1712325100721919250.Spec : Prop :=
  ∀ n, P1712325100721919250.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P17024607949096720108

`∑[2*A254963(n)+1]`
-/

namespace A100186.P17024607949096720108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254963 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100186.P17024607949096720108

namespace A100186

/-- `∑[2*A254963(n)+1]` -/
def P17024607949096720108.Spec : Prop :=
  ∀ n, P17024607949096720108.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P11647818537277736599

`2*A254407(n)+n+1`
-/

namespace A100186.P11647818537277736599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254407 n + (n + 1 : ℤ)

end

end A100186.P11647818537277736599

namespace A100186

/-- `2*A254407(n)+n+1` -/
def P11647818537277736599.Spec : Prop :=
  ∀ n, P11647818537277736599.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P6979353105323572377

`A063494(n+1)-n^3`
-/

namespace A100186.P6979353105323572377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063494 (n + 1) - (n ^ 3 : ℤ)

end

end A100186.P6979353105323572377

namespace A100186

/-- `A063494(n+1)-n^3` -/
def P6979353105323572377.Spec : Prop :=
  ∀ n, P6979353105323572377.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P3528787578847638742

`∑[A244805(n+1)-n²]`
-/

namespace A100186.P3528787578847638742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244805 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100186.P3528787578847638742

namespace A100186

/-- `∑[A244805(n+1)-n²]` -/
def P3528787578847638742.Spec : Prop :=
  ∀ n, P3528787578847638742.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P15535557783275974284

`A139757(n)-∑[∑[2*n]]`
-/

namespace A100186.P15535557783275974284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100186.P15535557783275974284

namespace A100186

/-- `A139757(n)-∑[∑[2*n]]` -/
def P15535557783275974284.Spec : Prop :=
  ∀ n, P15535557783275974284.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P161793103510984628

`A006331(n)+A005915(n)`
-/

namespace A100186.P161793103510984628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A005915 n

end

end A100186.P161793103510984628

namespace A100186

/-- `A006331(n)+A005915(n)` -/
def P161793103510984628.Spec : Prop :=
  ∀ n, P161793103510984628.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P16810267836450437026

`A096000(n)+A055112(n)`
-/

namespace A100186.P16810267836450437026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + A055112 n

end

end A100186.P16810267836450437026

namespace A100186

/-- `A096000(n)+A055112(n)` -/
def P16810267836450437026.Spec : Prop :=
  ∀ n, P16810267836450437026.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P5397864407539689605

`A169607(n)+A051662(n)`
-/

namespace A100186.P5397864407539689605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + A051662 n

end

end A100186.P5397864407539689605

namespace A100186

/-- `A169607(n)+A051662(n)` -/
def P5397864407539689605.Spec : Prop :=
  ∀ n, P5397864407539689605.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P15232907371772210031

`A163833(n)+A139488(n)`
-/

namespace A100186.P15232907371772210031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163833 n + A139488 n

end

end A100186.P15232907371772210031

namespace A100186

/-- `A163833(n)+A139488(n)` -/
def P15232907371772210031.Spec : Prop :=
  ∀ n, P15232907371772210031.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P15019379701441250607

`A304659(n)+A081438(n)`
-/

namespace A100186.P15019379701441250607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304659 n + A081438 n

end

end A100186.P15019379701441250607

namespace A100186

/-- `A304659(n)+A081438(n)` -/
def P15019379701441250607.Spec : Prop :=
  ∀ n, P15019379701441250607.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P5710779323796431490

`A248575(n)+A213388(n)`
-/

namespace A100186.P5710779323796431490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248575 n + A213388 n

end

end A100186.P5710779323796431490

namespace A100186

/-- `A248575(n)+A213388(n)` -/
def P5710779323796431490.Spec : Prop :=
  ∀ n, P5710779323796431490.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P10260059107962620167

`A027849(n)-A002492(n)`
-/

namespace A100186.P10260059107962620167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n - A002492 n

end

end A100186.P10260059107962620167

namespace A100186

/-- `A027849(n)-A002492(n)` -/
def P10260059107962620167.Spec : Prop :=
  ∀ n, P10260059107962620167.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P17100949929120416441

`A063492(n+1)+A005449(n)`
-/

namespace A100186.P17100949929120416441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063492 (n + 1) + A005449 n

end

end A100186.P17100949929120416441

namespace A100186

/-- `A063492(n+1)+A005449(n)` -/
def P17100949929120416441.Spec : Prop :=
  ∀ n, P17100949929120416441.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P5954990492168409392

`A100157(n+1)+A011379(n)`
-/

namespace A100186.P5954990492168409392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1) + A011379 n

end

end A100186.P5954990492168409392

namespace A100186

/-- `A100157(n+1)+A011379(n)` -/
def P5954990492168409392.Spec : Prop :=
  ∀ n, P5954990492168409392.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P15279236985857758874

`A100179(n+1)+A051895(n)`
-/

namespace A100186.P15279236985857758874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100179 (n + 1) + A051895 n

end

end A100186.P15279236985857758874

namespace A100186

/-- `A100179(n+1)+A051895(n)` -/
def P15279236985857758874.Spec : Prop :=
  ∀ n, P15279236985857758874.a n = A100186 (n + 1)

end A100186

/-! ## A100186.P512720884720029717

`A131423(n+1)+A027903(n)`
-/

namespace A100186.P512720884720029717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 (n + 1) + A027903 n

end

end A100186.P512720884720029717

namespace A100186

/-- `A131423(n+1)+A027903(n)` -/
def P512720884720029717.Spec : Prop :=
  ∀ n, P512720884720029717.a n = A100186 (n + 1)

end A100186

/-!
# A100187: Structured octagonal anti-diamond numbers (vertex structure 7).

The programs for A100187, the canonical program `A100187.P3087054527281197724` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100187 has offset 1).

The definition of A100187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100187.P15411249384564414061

`ogf((1+14x+11x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100187.P15411249384564414061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14, 11] [1, -4, 6, -4, 1] n

end

end A100187.P15411249384564414061

namespace A100187

/-- `ogf((1+14x+11x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15411249384564414061.Spec : Prop :=
  ∀ n, P15411249384564414061.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P11735706106787461254

`(13*(n+1)^3-15*(n+1)²+5*(n+1))/3`
-/

namespace A100187.P11735706106787461254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * (n + 1) ^ 3 : ℤ) - (15 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) : ℚ) / 3

end

end A100187.P11735706106787461254

namespace A100187

/-- `(13*(n+1)^3-15*(n+1)²+5*(n+1))/3` -/
def P11735706106787461254.Spec : Prop :=
  ∀ n, P11735706106787461254.a n = (A100187 (n + 1) : ℚ)

theorem P11735706106787461254.correct : P11735706106787461254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100187, Nat.add_sub_cancel, A100187.P11735706106787461254.a, A100187.P3087054527281197724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100187, Nat.add_sub_cancel, A100187.P11735706106787461254.a, A100187.P3087054527281197724.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100187

/-! ## A100187.P3087054527281197724

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=18, a(2)=77, a(3)=204`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100187

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3087054527281197724.Spec : Prop :=
  ∀ n, P3087054527281197724.a n = A100187 (n + 1)

theorem P3087054527281197724.correct : P3087054527281197724.Spec := by
  intro n
  simp only [A100187, Nat.add_sub_cancel]

end A100187

/-! ## A100187.P12845444501440342201

`∑[(record[xor(3, n)]+n)*2*n]+n^3+1`
-/

namespace A100187.P12845444501440342201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 3 + 1

end

end A100187.P12845444501440342201

namespace A100187

/-- `∑[(record[xor(3, n)]+n)*2*n]+n^3+1` -/
def P12845444501440342201.Spec : Prop :=
  ∀ n, (P12845444501440342201.a n : ℤ) = A100187 (n + 1)

end A100187

/-! ## A100187.P13185934962876391153

`A063496(n+1)-n^3`
-/

namespace A100187.P13185934962876391153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) - (n ^ 3 : ℤ)

end

end A100187.P13185934962876391153

namespace A100187

/-- `A063496(n+1)-n^3` -/
def P13185934962876391153.Spec : Prop :=
  ∀ n, P13185934962876391153.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P8881413199350264084

`∑[A244805(n+1)+n²]`
-/

namespace A100187.P8881413199350264084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244805 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100187.P8881413199350264084

namespace A100187

/-- `∑[A244805(n+1)+n²]` -/
def P8881413199350264084.Spec : Prop :=
  ∀ n, P8881413199350264084.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P13520779912213212049

`∑[A396289(n)+(n+1)²]`
-/

namespace A100187.P13520779912213212049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396289 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100187.P13520779912213212049

namespace A100187

/-- `∑[A396289(n)+(n+1)²]` -/
def P13520779912213212049.Spec : Prop :=
  ∀ n, P13520779912213212049.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P1023820244135593447

`A005915(n)+∑[(2*n)²]`
-/

namespace A100187.P1023820244135593447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100187.P1023820244135593447

namespace A100187

/-- `A005915(n)+∑[(2*n)²]` -/
def P1023820244135593447.Spec : Prop :=
  ∀ n, P1023820244135593447.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P10997486083320329912

`∑[n*A017341(n)]+n^3+1`
-/

namespace A100187.P10997486083320329912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 3 : ℤ) + 1

end

end A100187.P10997486083320329912

namespace A100187

/-- `∑[n*A017341(n)]+n^3+1` -/
def P10997486083320329912.Spec : Prop :=
  ∀ n, P10997486083320329912.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P9015146252006539664

`∑[A016742(n)]+(n+1)*Δ[n^3]`
-/

namespace A100187.P9015146252006539664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A100187.P9015146252006539664

namespace A100187

/-- `∑[A016742(n)]+(n+1)*Δ[n^3]` -/
def P9015146252006539664.Spec : Prop :=
  ∀ n, P9015146252006539664.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P14143180881361365395

`∑[floor((2/acot(2*n))²)]-A000578(n)`
-/

namespace A100187.P14143180881361365395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000578 n

end

end A100187.P14143180881361365395

namespace A100187

/-- `∑[floor((2/acot(2*n))²)]-A000578(n)` -/
def P14143180881361365395.Spec : Prop :=
  ∀ n, P14143180881361365395.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P11585179866264369697

`A006002(n)+A005906(n)`
-/

namespace A100187.P11585179866264369697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + A005906 n

end

end A100187.P11585179866264369697

namespace A100187

/-- `A006002(n)+A005906(n)` -/
def P11585179866264369697.Spec : Prop :=
  ∀ n, P11585179866264369697.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P7436121498503703317

`A135712(n)+A050409(n)`
-/

namespace A100187.P7436121498503703317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 n + A050409 n

end

end A100187.P7436121498503703317

namespace A100187

/-- `A135712(n)+A050409(n)` -/
def P7436121498503703317.Spec : Prop :=
  ∀ n, P7436121498503703317.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P17426392476255517267

`A220443(n)+A051662(n)`
-/

namespace A100187.P17426392476255517267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A051662 n

end

end A100187.P17426392476255517267

namespace A100187

/-- `A220443(n)+A051662(n)` -/
def P17426392476255517267.Spec : Prop :=
  ∀ n, P17426392476255517267.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P8740304727974099291

`A220084(n)+A059270(n)`
-/

namespace A100187.P8740304727974099291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + A059270 n

end

end A100187.P8740304727974099291

namespace A100187

/-- `A220084(n)+A059270(n)` -/
def P8740304727974099291.Spec : Prop :=
  ∀ n, P8740304727974099291.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P15958911541671114629

`A027849(n)-A006331(n)`
-/

namespace A100187.P15958911541671114629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n - A006331 n

end

end A100187.P15958911541671114629

namespace A100187

/-- `A027849(n)-A006331(n)` -/
def P15958911541671114629.Spec : Prop :=
  ∀ n, P15958911541671114629.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P11330010020877707719

`A371532(n)-A063521(n)`
-/

namespace A100187.P11330010020877707719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371532 n - A063521 n

end

end A100187.P11330010020877707719

namespace A100187

/-- `A371532(n)-A063521(n)` -/
def P11330010020877707719.Spec : Prop :=
  ∀ n, P11330010020877707719.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P13426774229068185579

`A400618(n)-A054602(n)`
-/

namespace A100187.P13426774229068185579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400618 n - A054602 n

end

end A100187.P13426774229068185579

namespace A100187

/-- `A400618(n)-A054602(n)` -/
def P13426774229068185579.Spec : Prop :=
  ∀ n, P13426774229068185579.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P3655913955683938848

`A024215(n+1)+A007585(n)`
-/

namespace A100187.P3655913955683938848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024215 (n + 1) + A007585 n

end

end A100187.P3655913955683938848

namespace A100187

/-- `A024215(n+1)+A007585(n)` -/
def P3655913955683938848.Spec : Prop :=
  ∀ n, P3655913955683938848.a n = A100187 (n + 1)

end A100187

/-! ## A100187.P14748750096733784463

`A034720(n+1)+A011379(n)`
-/

namespace A100187.P14748750096733784463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) + A011379 n

end

end A100187.P14748750096733784463

namespace A100187

/-- `A034720(n+1)+A011379(n)` -/
def P14748750096733784463.Spec : Prop :=
  ∀ n, P14748750096733784463.a n = A100187 (n + 1)

end A100187

/-!
# A100188: Polar structured meta-anti-diamond numbers, the n-th number from a polar structured n-gonal anti-diamond number sequence.

The programs for A100188, the canonical program `A100188.P13168695682581424372` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100188 has offset 1).

The definition of A100188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100188.P10674120988213737561

`ogf((1+x+7x^2-x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A100188.P10674120988213737561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 7, -1] [1, -5, 10, -10, 5, -1] n

end

end A100188.P10674120988213737561

namespace A100188

/-- `ogf((1+x+7x^2-x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10674120988213737561.Spec : Prop :=
  ∀ n, P10674120988213737561.a n = A100188 (n + 1)

end A100188

/-! ## A100188.P13216385740767809914

`((n+1)^4-(n+1)²+3*(n+1))/3`
-/

namespace A100188.P13216385740767809914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 4 : ℤ) - ((n + 1) ^ 2 : ℤ) + (3 * (n + 1) : ℤ) : ℚ) / 3

end

end A100188.P13216385740767809914

namespace A100188

/-- `((n+1)^4-(n+1)²+3*(n+1))/3` -/
def P13216385740767809914.Spec : Prop :=
  ∀ n, P13216385740767809914.a n = (A100188 (n + 1) : ℚ)

theorem P13216385740767809914.correct : P13216385740767809914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A100188, Nat.add_sub_cancel, A100188.P13216385740767809914.a, A100188.P13168695682581424372.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A100188, Nat.add_sub_cancel, A100188.P13216385740767809914.a, A100188.P13168695682581424372.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100188

/-! ## A100188.P13168695682581424372

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=84, a(4)=205`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100188

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13168695682581424372.Spec : Prop :=
  ∀ n, P13168695682581424372.a n = A100188 (n + 1)

theorem P13168695682581424372.correct : P13168695682581424372.Spec := by
  intro n
  simp only [A100188, Nat.add_sub_cancel]

end A100188

/-! ## A100188.P4255999808591886478

`∑[or(1, ∑[(2*n)²])]`
-/

namespace A100188.P4255999808591886478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100188.P4255999808591886478

namespace A100188

/-- `∑[or(1, ∑[(2*n)²])]` -/
def P4255999808591886478.Spec : Prop :=
  ∀ n, (P4255999808591886478.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P7276702165859622152

`∑[xor(1, ∑[(2*n)²])]`
-/

namespace A100188.P7276702165859622152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100188.P7276702165859622152

namespace A100188

/-- `∑[xor(1, ∑[(2*n)²])]` -/
def P7276702165859622152.Spec : Prop :=
  ∀ n, (P7276702165859622152.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P2351860901857255155

`∑[C(2*(n+1), 3)+1]`
-/

namespace A100188.P2351860901857255155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100188.P2351860901857255155

namespace A100188

/-- `∑[C(2*(n+1), 3)+1]` -/
def P2351860901857255155.Spec : Prop :=
  ∀ n, (P2351860901857255155.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P16069081516778645474

`∑[a(n-1)+(2*n)²]` with `a(0)=1`
-/

namespace A100188.P16069081516778645474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100188.P16069081516778645474

namespace A100188

/-- `∑[a(n-1)+(2*n)²]` -/
def P16069081516778645474.Spec : Prop :=
  ∀ n, (P16069081516778645474.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P8016878261965210465

`(n+1)*xor(1, ∑[∑[2*n]])`
-/

namespace A100188.P8016878261965210465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100188.P8016878261965210465

namespace A100188

/-- `(n+1)*xor(1, ∑[∑[2*n]])` -/
def P8016878261965210465.Spec : Prop :=
  ∀ n, (P8016878261965210465.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P17904085548331056762

`(n+1)*(∑[lcm(n, n+1)]+1)`
-/

namespace A100188.P17904085548331056762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100188.P17904085548331056762

namespace A100188

/-- `(n+1)*(∑[lcm(n, n+1)]+1)` -/
def P17904085548331056762.Spec : Prop :=
  ∀ n, (P17904085548331056762.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P442330935582993681

`(2*C(n+2, 3)+1)*(n+1)`
-/

namespace A100188.P442330935582993681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 3 + 1) * (n + 1)

end

end A100188.P442330935582993681

namespace A100188

/-- `(2*C(n+2, 3)+1)*(n+1)` -/
def P442330935582993681.Spec : Prop :=
  ∀ n, (P442330935582993681.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P2364686355130454866

`(n+1)*∑[n^(2%(n+1))+n]`
-/

namespace A100188.P2364686355130454866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100188.P2364686355130454866

namespace A100188

/-- `(n+1)*∑[n^(2%(n+1))+n]` -/
def P2364686355130454866.Spec : Prop :=
  ∀ n, (P2364686355130454866.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P8184086263742212379

`(n+1)*∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A100188.P8184086263742212379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100188.P8184086263742212379

namespace A100188

/-- `(n+1)*∑[∑[a(n-1)+2]]` -/
def P8184086263742212379.Spec : Prop :=
  ∀ n, (P8184086263742212379.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P8837152444712607917

`(∑[∑[2*n]]+gcd(n, n+1))*(n+1)`
-/

namespace A100188.P8837152444712607917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (n + 1)) * (n + 1)

end

end A100188.P8837152444712607917

namespace A100188

/-- `(∑[∑[2*n]]+gcd(n, n+1))*(n+1)` -/
def P8837152444712607917.Spec : Prop :=
  ∀ n, (P8837152444712607917.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P2121604519776811751

`(n+1)*(∑[(n+1)*n%(n+1)]+1)`
-/

namespace A100188.P2121604519776811751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100188.P2121604519776811751

namespace A100188

/-- `(n+1)*(∑[(n+1)*n%(n+1)]+1)` -/
def P2121604519776811751.Spec : Prop :=
  ∀ n, (P2121604519776811751.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P2156910672442455473

`(n+1)*(a(n-1)/n+n²+n)` with `a(0)=1`
-/

namespace A100188.P2156910672442455473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (n : ℚ) + (n ^ 2 + n : ℚ))

end

end A100188.P2156910672442455473

namespace A100188

/-- `(n+1)*(a(n-1)/n+n²+n)` -/
def P2156910672442455473.Spec : Prop :=
  ∀ n, P2156910672442455473.a n = (A100188 (n + 1) : ℚ)

end A100188

/-! ## A100188.P16292870623061513879

`(∑[∑[and(2*n+1, 2*n)]]+1)*(n+1)`
-/

namespace A100188.P16292870623061513879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1)

end

end A100188.P16292870623061513879

namespace A100188

/-- `(∑[∑[and(2*n+1, 2*n)]]+1)*(n+1)` -/
def P16292870623061513879.Spec : Prop :=
  ∀ n, (P16292870623061513879.a n : ℤ) = A100188 (n + 1)

end A100188

/-! ## A100188.P13098573389616728972

`(a(n-1)/n+n*(n+1))*(n+1)` with `a(0)=1`
-/

namespace A100188.P13098573389616728972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) / (n : ℚ) + (n * (n + 1) : ℚ)) * (n + 1 : ℚ)

end

end A100188.P13098573389616728972

namespace A100188

/-- `(a(n-1)/n+n*(n+1))*(n+1)` -/
def P13098573389616728972.Spec : Prop :=
  ∀ n, P13098573389616728972.a n = (A100188 (n + 1) : ℚ)

end A100188

/-! ## A100188.P4367525731879605187

`∑[A166464(n)]`
-/

namespace A100188.P4367525731879605187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100188.P4367525731879605187

namespace A100188

/-- `∑[A166464(n)]` -/
def P4367525731879605187.Spec : Prop :=
  ∀ n, P4367525731879605187.a n = A100188 (n + 1)

end A100188

/-! ## A100188.P9131274991231061360

`∑[A002492(n)+1]`
-/

namespace A100188.P9131274991231061360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100188.P9131274991231061360

namespace A100188

/-- `∑[A002492(n)+1]` -/
def P9131274991231061360.Spec : Prop :=
  ∀ n, P9131274991231061360.a n = A100188 (n + 1)

end A100188

/-! ## A100188.P18444373022591849159

`(n+1)*A064999(n)`
-/

namespace A100188.P18444373022591849159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064999 n

end

end A100188.P18444373022591849159

namespace A100188

/-- `(n+1)*A064999(n)` -/
def P18444373022591849159.Spec : Prop :=
  ∀ n, P18444373022591849159.a n = A100188 (n + 1)

end A100188

/-!
# A100189: Equatorial structured meta-anti-diamond numbers, the n-th number from an equatorial structured n-gonal anti-diamond number sequence.

The programs for A100189, the canonical program `A100189.P1862372462027390378` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100189 has offset 1).

The definition of A100189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100189.P2703780859293626163

`ogf((1+x+7x^2+7x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A100189.P2703780859293626163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 7, 7] [1, -5, 10, -10, 5, -1] n

end

end A100189.P2703780859293626163

namespace A100189

/-- `ogf((1+x+7x^2+7x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2703780859293626163.Spec : Prop :=
  ∀ n, P2703780859293626163.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P1703029406567216008

`(4*(n+1)^4-12*(n+1)^3+20*(n+1)²-6*(n+1))/6`
-/

namespace A100189.P1703029406567216008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) ^ 4 : ℤ) - (12 * (n + 1) ^ 3 : ℤ) + (20 * (n + 1) ^ 2 : ℤ) - (6 * (n + 1) : ℤ) : ℚ) / 6

end

end A100189.P1703029406567216008

namespace A100189

/-- `(4*(n+1)^4-12*(n+1)^3+20*(n+1)²-6*(n+1))/6` -/
def P1703029406567216008.Spec : Prop :=
  ∀ n, P1703029406567216008.a n = (A100189 (n + 1) : ℚ)

theorem P1703029406567216008.correct : P1703029406567216008.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A100189, Nat.add_sub_cancel, A100189.P1703029406567216008.a, A100189.P1862372462027390378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A100189, Nat.add_sub_cancel, A100189.P1703029406567216008.a, A100189.P1862372462027390378.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100189

/-! ## A100189.P1862372462027390378

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=92, a(4)=245`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100189

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1862372462027390378.Spec : Prop :=
  ∀ n, P1862372462027390378.a n = A100189 (n + 1)

theorem P1862372462027390378.correct : P1862372462027390378.Spec := by
  intro n
  simp only [A100189, Nat.add_sub_cancel]

end A100189

/-! ## A100189.P8331516361049266788

`(∑[4*C(n, 2)+1]+n)*(n+1)`
-/

namespace A100189.P8331516361049266788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * (n + 1)

end

end A100189.P8331516361049266788

namespace A100189

/-- `(∑[4*C(n, 2)+1]+n)*(n+1)` -/
def P8331516361049266788.Spec : Prop :=
  ∀ n, (P8331516361049266788.a n : ℤ) = A100189 (n + 1)

end A100189

/-! ## A100189.P9579135157693124985

`(n+1)*∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A100189.P9579135157693124985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100189.P9579135157693124985

namespace A100189

/-- `(n+1)*∑[∑[a(n-1)+4]]` -/
def P9579135157693124985.Spec : Prop :=
  ∀ n, (P9579135157693124985.a n : ℤ) = A100189 (n + 1)

end A100189

/-! ## A100189.P5893303903762437967

`∑[A168547(n)+2*n]`
-/

namespace A100189.P5893303903762437967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100189.P5893303903762437967

namespace A100189

/-- `∑[A168547(n)+2*n]` -/
def P5893303903762437967.Spec : Prop :=
  ∀ n, P5893303903762437967.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P9911323605691693744

`(n+1)²+2*A071238(n)`
-/

namespace A100189.P9911323605691693744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A071238 n

end

end A100189.P9911323605691693744

namespace A100189

/-- `(n+1)²+2*A071238(n)` -/
def P9911323605691693744.Spec : Prop :=
  ∀ n, P9911323605691693744.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P6945700055314644863

`(n+1)*(A005900(n)+n+1)`
-/

namespace A100189.P6945700055314644863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005900 n + (n + 1 : ℤ))

end

end A100189.P6945700055314644863

namespace A100189

/-- `(n+1)*(A005900(n)+n+1)` -/
def P6945700055314644863.Spec : Prop :=
  ∀ n, P6945700055314644863.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P5815200041790054635

`A071270(n)+A005894(n)`
-/

namespace A100189.P5815200041790054635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n + A005894 n

end

end A100189.P5815200041790054635

namespace A100189

/-- `A071270(n)+A005894(n)` -/
def P5815200041790054635.Spec : Prop :=
  ∀ n, P5815200041790054635.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P11952073012651420441

`A081492(n+1)+A071238(n)`
-/

namespace A100189.P11952073012651420441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 1) + A071238 n

end

end A100189.P11952073012651420441

namespace A100189

/-- `A081492(n+1)+A071238(n)` -/
def P11952073012651420441.Spec : Prop :=
  ∀ n, P11952073012651420441.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P18300813666408725180

`A330700(n)+A307621(n+1)`
-/

namespace A100189.P18300813666408725180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + A307621 (n + 1)

end

end A100189.P18300813666408725180

namespace A100189

/-- `A330700(n)+A307621(n+1)` -/
def P18300813666408725180.Spec : Prop :=
  ∀ n, P18300813666408725180.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P14864207506520487626

`A098077(n+1)-A005915(n)`
-/

namespace A100189.P14864207506520487626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) - A005915 n

end

end A100189.P14864207506520487626

namespace A100189

/-- `A098077(n+1)-A005915(n)` -/
def P14864207506520487626.Spec : Prop :=
  ∀ n, P14864207506520487626.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P14731477847564774370

`A213840(n+1)-A135713(n)`
-/

namespace A100189.P14731477847564774370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) - A135713 n

end

end A100189.P14731477847564774370

namespace A100189

/-- `A213840(n+1)-A135713(n)` -/
def P14731477847564774370.Spec : Prop :=
  ∀ n, P14731477847564774370.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P9583288409325929685

`A213843(n+1)-A169607(n)`
-/

namespace A100189.P9583288409325929685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) - A169607 n

end

end A100189.P9583288409325929685

namespace A100189

/-- `A213843(n+1)-A169607(n)` -/
def P9583288409325929685.Spec : Prop :=
  ∀ n, P9583288409325929685.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P15330836258613431553

`A056109(n)+2*A330700(n)`
-/

namespace A100189.P15330836258613431553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n + 2 * A330700 n

end

end A100189.P15330836258613431553

namespace A100189

/-- `A056109(n)+2*A330700(n)` -/
def P15330836258613431553.Spec : Prop :=
  ∀ n, P15330836258613431553.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P7489476543938601359

`A005894(n)+n*A005900(n)`
-/

namespace A100189.P7489476543938601359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + (n : ℤ) * A005900 n

end

end A100189.P7489476543938601359

namespace A100189

/-- `A005894(n)+n*A005900(n)` -/
def P7489476543938601359.Spec : Prop :=
  ∀ n, P7489476543938601359.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P963641832476395597

`A037270(n)+A132366(n)-n²`
-/

namespace A100189.P963641832476395597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + (A132366 n - (n ^ 2 : ℤ))

end

end A100189.P963641832476395597

namespace A100189

/-- `A037270(n)+A132366(n)-n²` -/
def P963641832476395597.Spec : Prop :=
  ∀ n, P963641832476395597.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P18051569867353711216

`2*A307621(n+1)-A056109(n)`
-/

namespace A100189.P18051569867353711216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307621 (n + 1) - A056109 n

end

end A100189.P18051569867353711216

namespace A100189

/-- `2*A307621(n+1)-A056109(n)` -/
def P18051569867353711216.Spec : Prop :=
  ∀ n, P18051569867353711216.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P8168262802726182366

`A100185(n+1)+n*A000125(n)`
-/

namespace A100189.P8168262802726182366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100185 (n + 1) + (n : ℤ) * A000125 n

end

end A100189.P8168262802726182366

namespace A100189

/-- `A100185(n+1)+n*A000125(n)` -/
def P8168262802726182366.Spec : Prop :=
  ∀ n, P8168262802726182366.a n = A100189 (n + 1)

end A100189

/-! ## A100189.P13495783115273021176

`A100177(n+1)+A006484(n)+A002411(n)`
-/

namespace A100189.P13495783115273021176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100177 (n + 1) + (A006484 n + A002411 n)

end

end A100189.P13495783115273021176

namespace A100189

/-- `A100177(n+1)+A006484(n)+A002411(n)` -/
def P13495783115273021176.Spec : Prop :=
  ∀ n, P13495783115273021176.a n = A100189 (n + 1)

end A100189

/-!
# A100190: The (4,1)-entry in the 4 X 4 matrix M^n, where M = [1,0,0,0 / 3,3,0,0 / 3,6,3,0 / 1,3,3,1].

The programs for A100190, the canonical program `A100190.P3795710407610840572` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100190 has offset 1).

The definition of A100190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100190.P16914813031290552192

`ogf((1+12x+9x^2)/(1-8x+22x^2-24x^3+9x^4))`
-/

namespace A100190.P16914813031290552192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 9] [1, -8, 22, -24, 9] n

end

end A100190.P16914813031290552192

namespace A100190

/-- `ogf((1+12x+9x^2)/(1-8x+22x^2-24x^3+9x^4))` -/
def P16914813031290552192.Spec : Prop :=
  ∀ n, P16914813031290552192.a n = A100190 (n + 1)

end A100190

/-! ## A100190.P3746010124345132593

`((11+3^(2+n+1))*(n+1)-18*(3^(n+1)-1))/2`
-/

namespace A100190.P3746010124345132593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((11 + 3 ^ (2 + (n + 1))) * (n + 1) : ℤ) - 18 * ((3 ^ (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A100190.P3746010124345132593

namespace A100190

/-- `((11+3^(2+n+1))*(n+1)-18*(3^(n+1)-1))/2` -/
def P3746010124345132593.Spec : Prop :=
  ∀ n, P3746010124345132593.a n = (A100190 (n + 1) : ℚ)

theorem P3746010124345132593.correct : P3746010124345132593.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A100190, Nat.add_sub_cancel, A100190.P3746010124345132593.a, A100190.P3795710407610840572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A100190, Nat.add_sub_cancel, A100190.P3746010124345132593.a, A100190.P3795710407610840572.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A100190

/-! ## A100190.P3795710407610840572

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=20, a(2)=147, a(3)=760`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100190

/-- `8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` -/
def P3795710407610840572.Spec : Prop :=
  ∀ n, P3795710407610840572.a n = A100190 (n + 1)

theorem P3795710407610840572.correct : P3795710407610840572.Spec := by
  intro n
  simp only [A100190, Nat.add_sub_cancel]

end A100190

/-! ## A100190.P8171944597868316948

`∑[∑[A008458(n)*3^n]]`
-/

namespace A100190.P8171944597868316948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * (3 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100190.P8171944597868316948

namespace A100190

/-- `∑[∑[A008458(n)*3^n]]` -/
def P8171944597868316948.Spec : Prop :=
  ∀ n, P8171944597868316948.a n = A100190 (n + 1)

end A100190

/-! ## A100190.P5066670177658706329

`∑[6*A289399(n)]+1+n`
-/

namespace A100190.P5066670177658706329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A289399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A100190.P5066670177658706329

namespace A100190

/-- `∑[6*A289399(n)]+1+n` -/
def P5066670177658706329.Spec : Prop :=
  ∀ n, P5066670177658706329.a n = A100190 (n + 1)

end A100190

/-!
# A100191: The (1,1)-entry in the 3 X 3 matrix M^n, where M = [1,2,1 / 2,2,0 / 1,0,0].

The programs for A100191, the canonical program `A100191.P2640990557942061788` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100191 has offset 1).

The definition of A100191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100191.P6488426023323647924

`ogf((1+3x-2x^2)/(1-3x-3x^2+2x^3))`
-/

namespace A100191.P6488426023323647924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2] [1, -3, -3, 2] n

end

end A100191.P6488426023323647924

namespace A100191

/-- `ogf((1+3x-2x^2)/(1-3x-3x^2+2x^3))` -/
def P6488426023323647924.Spec : Prop :=
  ∀ n, P6488426023323647924.a n = A100191 (n + 1)

end A100191

/-! ## A100191.P2640990557942061788

`3*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=6, a(2)=19`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100191

/-- `3*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P2640990557942061788.Spec : Prop :=
  ∀ n, P2640990557942061788.a n = A100191 (n + 1)

theorem P2640990557942061788.correct : P2640990557942061788.Spec := by
  intro n
  simp only [A100191, Nat.add_sub_cancel]

end A100191

/-! ## A100191.P1255701498405892639

`A123950(n+3)`
-/

namespace A100191.P1255701498405892639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123950 (n + 3)

end

end A100191.P1255701498405892639

namespace A100191

/-- `A123950(n+3)` -/
def P1255701498405892639.Spec : Prop :=
  ∀ n, P1255701498405892639.a n = A100191 (n + 1)

end A100191

/-! ## A100191.P80296988324053839

`record[A123950(A080513(A007599(n)))]`
-/

namespace A100191.P80296988324053839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123950 (A080513 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100191.P80296988324053839

namespace A100191

/-- `record[A123950(A080513(A007599(n)))]` -/
def P80296988324053839.Spec : Prop :=
  ∀ n, P80296988324053839.a n = A100191 (n + 1)

end A100191

/-! ## A100191.P3949074991057857

`record[A123950(A080513(A099375(n)))]`
-/

namespace A100191.P3949074991057857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123950 (A080513 (A099375 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100191.P3949074991057857

namespace A100191

/-- `record[A123950(A080513(A099375(n)))]` -/
def P3949074991057857.Spec : Prop :=
  ∀ n, P3949074991057857.a n = A100191 (n + 1)

end A100191

/-! ## A100191.P12654303869129296308

`A189247(n+1)/2^(n+1)`
-/

namespace A100191.P12654303869129296308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189247 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A100191.P12654303869129296308

namespace A100191

/-- `A189247(n+1)/2^(n+1)` -/
def P12654303869129296308.Spec : Prop :=
  ∀ n, P12654303869129296308.a n = (A100191 (n + 1) : ℚ)

end A100191

/-!
# A100192: a(n) = Sum_{k=0..n} binomial(2*n,n+k)*2^k.

The programs for A100192, the canonical program `A100192.P9456211528036847764` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100192 has offset 0).

The definition of A100192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n, n+#)*2^#]` (program `A100192.P9456211528036847764`, by `A100192.P9456211528036847764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100192.P9456211528036847764

`∑{#}[n, C(2*n, n+#)*2^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100192

/-- `∑{#}[n, C(2*n, n+#)*2^#]` -/
def P9456211528036847764.Spec : Prop :=
  ∀ n, (P9456211528036847764.a n : ℤ) = A100192 n

theorem P9456211528036847764.correct : P9456211528036847764.Spec := by
  intro n
  simp only [A100192]

end A100192

/-! ## A100192.P10449991430075084447

`2*A007854(n)-A000984(n)`
-/

namespace A100192.P10449991430075084447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - A000984 n

end

end A100192.P10449991430075084447

namespace A100192

/-- `2*A007854(n)-A000984(n)` -/
def P10449991430075084447.Spec : Prop :=
  ∀ n, P10449991430075084447.a n = A100192 n

end A100192

/-! ## A100192.P13419064152159815906

`2*A007854(n)-record[A126930(n)]`
-/

namespace A100192.P13419064152159815906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100192.P13419064152159815906

namespace A100192

/-- `2*A007854(n)-record[A126930(n)]` -/
def P13419064152159815906.Spec : Prop :=
  ∀ n, P13419064152159815906.a n = A100192 n

end A100192

/-! ## A100192.P12157758379197132805

`2*A007854(n)-A056040(A004277(n))`
-/

namespace A100192.P12157758379197132805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - A056040 (A004277 n).toNat

end

end A100192.P12157758379197132805

namespace A100192

/-- `2*A007854(n)-A056040(A004277(n))` -/
def P12157758379197132805.Spec : Prop :=
  ∀ n, P12157758379197132805.a n = A100192 n

end A100192

/-! ## A100192.P3137862037552700526

`2*A007854(n)-A126869(A005843(n))`
-/

namespace A100192.P3137862037552700526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - A126869 (A005843 n).toNat

end

end A100192.P3137862037552700526

namespace A100192

/-- `2*A007854(n)-A126869(A005843(n))` -/
def P3137862037552700526.Spec : Prop :=
  ∀ n, P3137862037552700526.a n = A100192 n

end A100192

/-! ## A100192.P12290651743071185436

`∑{#}[n, 2^(n-#)*C(2*n, #)]`
-/

namespace A100192.P12290651743071185436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * n) k : ℚ)

end

end A100192.P12290651743071185436

namespace A100192

/-- `∑{#}[n, 2^(n-#)*C(2*n, #)]` -/
def P12290651743071185436.Spec : Prop :=
  ∀ n, P12290651743071185436.a n = (A100192 n : ℚ)

end A100192

/-! ## A100192.P6372713919230839118

`A106516(∑[4*n])`
-/

namespace A100192.P6372713919230839118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100192.P6372713919230839118

namespace A100192

/-- `A106516(∑[4*n])` -/
def P6372713919230839118.Spec : Prop :=
  ∀ n, P6372713919230839118.a n = A100192 n

end A100192

/-! ## A100192.P9222746341750317026

`A131249(∑[4*n])`
-/

namespace A100192.P9222746341750317026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100192.P9222746341750317026

namespace A100192

/-- `A131249(∑[4*n])` -/
def P9222746341750317026.Spec : Prop :=
  ∀ n, P9222746341750317026.a n = A100192 n

end A100192

/-!
# A100193: a(n) = Sum_{k=0..n} binomial(2*n,n+k)*3^k.

The programs for A100193, the canonical program `A100193.P8477904111845854566` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100193 has offset 0).

The definition of A100193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n, n+#)*3^#]` (program `A100193.P8477904111845854566`, by `A100193.P8477904111845854566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100193.P8477904111845854566

`∑{#}[n, C(2*n, n+#)*3^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100193

/-- `∑{#}[n, C(2*n, n+#)*3^#]` -/
def P8477904111845854566.Spec : Prop :=
  ∀ n, (P8477904111845854566.a n : ℤ) = A100193 n

theorem P8477904111845854566.correct : P8477904111845854566.Spec := by
  intro n
  simp only [A100193]

end A100193

/-! ## A100193.P16215837900538251078

`2*A104530(n)-A088218(n)`
-/

namespace A100193.P16215837900538251078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104530 n - A088218 n

end

end A100193.P16215837900538251078

namespace A100193

/-- `2*A104530(n)-A088218(n)` -/
def P16215837900538251078.Spec : Prop :=
  ∀ n, P16215837900538251078.a n = A100193 n

end A100193

/-! ## A100193.P2733963673643332805

`∑{#}[n, 3^#*C(2*n, n-#)]`
-/

namespace A100193.P2733963673643332805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (2 * n) ((n : ℤ) - (k : ℤ)).toNat

end

end A100193.P2733963673643332805

namespace A100193

/-- `∑{#}[n, 3^#*C(2*n, n-#)]` -/
def P2733963673643332805.Spec : Prop :=
  ∀ n, (P2733963673643332805.a n : ℤ) = A100193 n

end A100193

/-!
# A100194: Incrementally largest denominators of the Bernoulli numbers.

The programs for A100194, there is no canonical definition to state claims against.
-/

/-! ## A100194.P8203628709868842364

`record[A106458(n)]`
-/

namespace A100194.P8203628709868842364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100194.P8203628709868842364

/-! ## A100194.P8785089428999650812

`record[A141056(n)]`
-/

namespace A100194.P8785089428999650812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100194.P8785089428999650812

/-! ## A100194.P8673946736716048582

`record[A027642(n)]`
-/

namespace A100194.P8673946736716048582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100194.P8673946736716048582

/-! ## A100194.P183057449119390475

`A027642(A100195(n+1))`
-/

namespace A100194.P183057449119390475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A100195 (n + 1)).toNat

end

end A100194.P183057449119390475

/-! ## A100194.P15315716440239309548

`record[sqrt(A172282(n))]`
-/

namespace A100194.P15315716440239309548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172282 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100194.P15315716440239309548

/-!
# A100195: Numbers n such that the denominator of BernoulliB(n) is a record.

The programs for A100195, there is no canonical definition to state claims against.
-/

/-! ## A100195.P10141391428821965785

`lt[A303837(n+1)², A049076(n+1)]`
-/

namespace A100195.P10141391428821965785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100195.P10141391428821965785

/-! ## A100195.P2300714709384914619

`eq[A318504(n+1), A318518(A324895(n))]`
-/

namespace A100195.P2300714709384914619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A324895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100195.P2300714709384914619

/-! ## A100195.P3252423293510885524

`lt[A072861(n+1), A262087(A072363(n+1))]`
-/

namespace A100195.P3252423293510885524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A072363 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100195.P3252423293510885524

/-! ## A100195.P16413234618564025946

`eq[A007318(A238618(n+2)), A325352(n+1)]`
-/

namespace A100195.P16413234618564025946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A238618 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100195.P16413234618564025946

/-! ## A100195.P13740954729040666380

`lt[A174088(A349172(n+1)), A309592(3*n+2)]`
-/

namespace A100195.P13740954729040666380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (A349172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100195.P13740954729040666380

/-!
# A100196: Number of positive integer cubes <= n^2.

The programs for A100196, the canonical program `A100196.P5989948745544554590` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100196 has offset 0).

The definition of A100196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100196.P16824194357648544254

`floor(n^(2/3))`
-/

namespace A100196.P16824194357648544254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌋

end

end A100196.P16824194357648544254

namespace A100196

/-- `floor(n^(2/3))` -/
def P16824194357648544254.Spec : Prop :=
  ∀ n, P16824194357648544254.a n = A100196 n

theorem P16824194357648544254.correct : P16824194357648544254.Spec := by
  intro n
  simp only [A100196, Nat.add_sub_cancel, A100196.P16824194357648544254.a, A100196.P5989948745544554590.a, A077113, A077113.P17279487553956293738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100196

/-! ## A100196.P5989948745544554590

`A077113(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100196

/-- `A077113(n)-1` -/
def P5989948745544554590.Spec : Prop :=
  ∀ n, P5989948745544554590.a n = A100196 n

theorem P5989948745544554590.correct : P5989948745544554590.Spec := by
  intro n
  simp only [A100196]

end A100196

/-! ## A100196.P9434510145260271663

`A077106(n)^(1/3)`
-/

namespace A100196.P9434510145260271663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077106 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A100196.P9434510145260271663

namespace A100196

/-- `A077106(n)^(1/3)` -/
def P9434510145260271663.Spec : Prop :=
  ∀ n, P9434510145260271663.a n = (A100196 n : ℝ)

end A100196

/-! ## A100196.P220575307982380703

`C(n, n)*floor(root(n, 3)²)`
-/

namespace A100196.P220575307982380703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n n : ℤ) * ⌊((n : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌋

end

end A100196.P220575307982380703

namespace A100196

/-- `C(n, n)*floor(root(n, 3)²)` -/
def P220575307982380703.Spec : Prop :=
  ∀ n, P220575307982380703.a n = A100196 n

end A100196

/-! ## A100196.P11821395269683248800

`floor(root(n, 3)²)/C(n, n)`
-/

namespace A100196.P11821395269683248800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((n : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌋ : ℚ) / (Nat.choose n n : ℚ)

end

end A100196.P11821395269683248800

namespace A100196

/-- `floor(root(n, 3)²)/C(n, n)` -/
def P11821395269683248800.Spec : Prop :=
  ∀ n, P11821395269683248800.a n = (A100196 n : ℚ)

end A100196

/-! ## A100196.P12718122309524878932

`floor(root(n²+1, 3))%(n+1)`
-/

namespace A100196.P12718122309524878932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ (n + 1 : ℤ)

end

end A100196.P12718122309524878932

namespace A100196

/-- `floor(root(n²+1, 3))%(n+1)` -/
def P12718122309524878932.Spec : Prop :=
  ∀ n, P12718122309524878932.a n = A100196 n

end A100196

/-! ## A100196.P16246030578187374417

`∑[char[∑[A144968(n)]]]`
-/

namespace A100196.P16246030578187374417
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100196.P16246030578187374417

namespace A100196

/-- `∑[char[∑[A144968(n)]]]` -/
def P16246030578187374417.Spec : Prop :=
  ∀ n, (P16246030578187374417.a n : ℤ) = A100196 n

end A100196

/-! ## A100196.P3690714437621330788

`∑[char[A185549(n+1)]]`
-/

namespace A100196.P3690714437621330788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100196.P3690714437621330788

namespace A100196

/-- `∑[char[A185549(n+1)]]` -/
def P3690714437621330788.Spec : Prop :=
  ∀ n, (P3690714437621330788.a n : ℤ) = A100196 n

end A100196

/-! ## A100196.P9664728734056731968

`∑[char[A185549(n)]]-1`
-/

namespace A100196.P9664728734056731968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A100196.P9664728734056731968

namespace A100196

/-- `∑[char[A185549(n)]]-1` -/
def P9664728734056731968.Spec : Prop :=
  ∀ n, P9664728734056731968.a n = A100196 n

end A100196

/-! ## A100196.P13689372818266465430

`floor(root(n²+1, 3))-A000007(n)`
-/

namespace A100196.P13689372818266465430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ - A000007 n

end

end A100196.P13689372818266465430

namespace A100196

/-- `floor(root(n²+1, 3))-A000007(n)` -/
def P13689372818266465430.Spec : Prop :=
  ∀ n, P13689372818266465430.a n = A100196 n

end A100196

/-! ## A100196.P4543908285683444549

`floor(root(n²+1, 3))*A057427(n)`
-/

namespace A100196.P4543908285683444549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ * A057427 n

end

end A100196.P4543908285683444549

namespace A100196

/-- `floor(root(n²+1, 3))*A057427(n)` -/
def P4543908285683444549.Spec : Prop :=
  ∀ n, P4543908285683444549.a n = A100196 n

end A100196

/-! ## A100196.P5028015688371272730

`A000196(A129011(n))`
-/

namespace A100196.P5028015688371272730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A129011 n).toNat

end

end A100196.P5028015688371272730

namespace A100196

/-- `A000196(A129011(n))` -/
def P5028015688371272730.Spec : Prop :=
  ∀ n, P5028015688371272730.a n = A100196 n

end A100196

/-! ## A100196.P15311751534872908524

`A003059(A129011(n)+1)-1`
-/

namespace A100196.P15311751534872908524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A129011 n + 1).toNat - 1

end

end A100196.P15311751534872908524

namespace A100196

/-- `A003059(A129011(n)+1)-1` -/
def P15311751534872908524.Spec : Prop :=
  ∀ n, P15311751534872908524.a n = A100196 n

end A100196

/-! ## A100196.P3974837148303202639

`A276611(A261226(n²))`
-/

namespace A100196.P3974837148303202639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A261226 (n ^ 2)).toNat

end

end A100196.P3974837148303202639

namespace A100196

/-- `A276611(A261226(n²))` -/
def P3974837148303202639.Spec : Prop :=
  ∀ n, P3974837148303202639.a n = A100196 n

end A100196

/-! ## A100196.P18347760243241658799

`A018852(A077106(n))`
-/

namespace A100196.P18347760243241658799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A077106 n).toNat

end

end A100196.P18347760243241658799

namespace A100196

/-- `A018852(A077106(n))` -/
def P18347760243241658799.Spec : Prop :=
  ∀ n, P18347760243241658799.a n = A100196 n

end A100196

/-! ## A100196.P13012420378756662687

`A048766(n²)`
-/

namespace A100196.P13012420378756662687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (n ^ 2)

end

end A100196.P13012420378756662687

namespace A100196

/-- `A048766(n²)` -/
def P13012420378756662687.Spec : Prop :=
  ∀ n, P13012420378756662687.a n = A100196 n

end A100196

/-! ## A100196.P8725259412639660882

`n²-A064524(n²)`
-/

namespace A100196.P8725259412639660882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A064524 (n ^ 2)

end

end A100196.P8725259412639660882

namespace A100196

/-- `n²-A064524(n²)` -/
def P8725259412639660882.Spec : Prop :=
  ∀ n, P8725259412639660882.a n = A100196 n

end A100196

/-! ## A100196.P11212945321542770332

`A018852(A048762(n²))`
-/

namespace A100196.P11212945321542770332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A048762 (n ^ 2)).toNat

end

end A100196.P11212945321542770332

namespace A100196

/-- `A018852(A048762(n²))` -/
def P11212945321542770332.Spec : Prop :=
  ∀ n, P11212945321542770332.a n = A100196 n

end A100196

/-! ## A100196.P8894688887524829366

`A032513(A032513(A048766(n*n)))`
-/

namespace A100196.P8894688887524829366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 (A032513 (A048766 (n * n)).toNat).toNat

end

end A100196.P8894688887524829366

namespace A100196

/-- `A032513(A032513(A048766(n*n)))` -/
def P8894688887524829366.Spec : Prop :=
  ∀ n, P8894688887524829366.a n = A100196 n

end A100196

/-! ## A100196.P5780248871126704975

`A134914(n²+1)-1`
-/

namespace A100196.P5780248871126704975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n ^ 2 + 1) - 1

end

end A100196.P5780248871126704975

namespace A100196

/-- `A134914(n²+1)-1` -/
def P5780248871126704975.Spec : Prop :=
  ∀ n, P5780248871126704975.a n = A100196 n

end A100196

/-!
# A100197: Numbers of squares in the range [n^3, (n+1)^3].

The programs for A100197, the canonical program `A100197.P6569012522722400177` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100197 has offset 0).

The definition of A100197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100197.P6569012522722400177

`floor(sqrt((n+1)^3)-ceil(sqrt(n^3)))+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100197

/-- `floor(sqrt((n+1)^3)-ceil(sqrt(n^3)))+1` -/
def P6569012522722400177.Spec : Prop :=
  ∀ n, P6569012522722400177.a n = A100197 n

theorem P6569012522722400177.correct : P6569012522722400177.Spec := by
  intro n
  simp only [A100197]

end A100197

/-! ## A100197.P15472634768146593979

`(char[n²]+Δ[floor(n^(3/2))])%(2*n+3)`
-/

namespace A100197.P15472634768146593979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)) (2 * n + 3 : ℤ)

end

end A100197.P15472634768146593979

namespace A100197

/-- `(char[n²]+Δ[floor(n^(3/2))])%(2*n+3)` -/
def P15472634768146593979.Spec : Prop :=
  ∀ n, P15472634768146593979.a n = A100197 n

end A100197

/-! ## A100197.P9987026137614183710

`Δ[A000196(n)+ceil(sqrt(n^3))]`
-/

namespace A100197.P9987026137614183710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100197.P9987026137614183710

namespace A100197

/-- `Δ[A000196(n)+ceil(sqrt(n^3))]` -/
def P9987026137614183710.Spec : Prop :=
  ∀ n, P9987026137614183710.a n = A100197 n

end A100197

/-! ## A100197.P6909267831235917647

`A106618(char[n²]+Δ[floor(n^(3/2))])`
-/

namespace A100197.P6909267831235917647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)).toNat

end

end A100197.P6909267831235917647

namespace A100197

/-- `A106618(char[n²]+Δ[floor(n^(3/2))])` -/
def P6909267831235917647.Spec : Prop :=
  ∀ n, P6909267831235917647.a n = A100197 n

end A100197

/-!
# A100198: Let f(0) = -1, f(n) = Moebius(n) = A008683(n) for n>0. Sequence gives partial sums a(n) = Sum_{ 0 <= i <= n} f(i).

The programs for A100198, the canonical program `A100198.P10240011160398371287` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100198 has offset 0).

The definition of A100198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100198.P1175809112600303876

`∑[round(acot(∏{e}[n, -#]))]-2`
-/

namespace A100198.P1175809112600303876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A100198.P1175809112600303876

namespace A100198

/-- `∑[round(acot(∏{e}[n, -#]))]-2` -/
def P1175809112600303876.Spec : Prop :=
  ∀ n, P1175809112600303876.a n = A100198 n

end A100198

/-! ## A100198.P10240011160398371287

`∏{e}[n, -floor(1/#)]+2*a(n-1)-a(n-1)` with `a(0)=-1, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A100198

/-- `∏{e}[n, -floor(1/#)]+2*a(n-1)-a(n-1)` -/
def P10240011160398371287.Spec : Prop :=
  ∀ n, P10240011160398371287.a n = A100198 n

theorem P10240011160398371287.correct : P10240011160398371287.Spec := by
  intro n
  simp only [A100198]

end A100198

/-! ## A100198.P11421828375566649373

`∑[∏{e}[n+1, -#!]%2]-(∏{e}[n+1, -floor(1/#)]+1)`
-/

namespace A100198.P11421828375566649373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorial (Nat.factorization (f2 n) p) : ℤ))) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∏ p ∈ Nat.primeFactors (f3 n), (-⌊1 / (Nat.factorization (f3 n) p : ℚ)⌋) + 1)

end

end A100198.P11421828375566649373

namespace A100198

/-- `∑[∏{e}[n+1, -#!]%2]-(∏{e}[n+1, -floor(1/#)]+1)` -/
def P11421828375566649373.Spec : Prop :=
  ∀ n, P11421828375566649373.a n = A100198 n

end A100198

/-! ## A100198.P14617154053497841794

`∑[∏{e}[n+1, (-2)^#/2]%2]-(∏{e}[n+1, (-2)^#/2]%2+1)`
-/

namespace A100198.P14617154053497841794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), ((-2) ^ Nat.factorization (f2 n) p : ℚ) / 2)) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f3 n), ((-2) ^ Nat.factorization (f3 n) p : ℚ) / 2)) 2 + 1)

end

end A100198.P14617154053497841794

namespace A100198

/-- `∑[∏{e}[n+1, (-2)^#/2]%2]-(∏{e}[n+1, (-2)^#/2]%2+1)` -/
def P14617154053497841794.Spec : Prop :=
  ∀ n, P14617154053497841794.a n = A100198 n

end A100198

/-! ## A100198.P13700701822530243792

`∑[A054527(∑[n+3])]`
-/

namespace A100198.P13700701822530243792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100198.P13700701822530243792

namespace A100198

/-- `∑[A054527(∑[n+3])]` -/
def P13700701822530243792.Spec : Prop :=
  ∀ n, P13700701822530243792.a n = A100198 n

end A100198

/-! ## A100198.P6501121460689522097

`∑[A008683(abs(1-n)+1)]`
-/

namespace A100198.P6501121460689522097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100198.P6501121460689522097

namespace A100198

/-- `∑[A008683(abs(1-n)+1)]` -/
def P6501121460689522097.Spec : Prop :=
  ∀ n, P6501121460689522097.a n = A100198 n

end A100198

/-! ## A100198.P9937110209464530313

`A008683(n)+a(n-1)` with `a(0)=-1`
-/

namespace A100198.P9937110209464530313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  A008683 n + a (n - 1)

end

end A100198.P9937110209464530313

namespace A100198

/-- `A008683(n)+a(n-1)` -/
def P9937110209464530313.Spec : Prop :=
  ∀ n, P9937110209464530313.a n = A100198 n

end A100198

/-! ## A100198.P1407655607271991024

`A002321(abs(1-n)+1)-1`
-/

namespace A100198.P1407655607271991024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A100198.P1407655607271991024

namespace A100198

/-- `A002321(abs(1-n)+1)-1` -/
def P1407655607271991024.Spec : Prop :=
  ∀ n, P1407655607271991024.a n = A100198 n

end A100198

/-! ## A100198.P16411737332498703048

`∑[A008683(ceil(abs(γ-n)))]-2`
-/

namespace A100198.P16411737332498703048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A100198.P16411737332498703048

namespace A100198

/-- `∑[A008683(ceil(abs(γ-n)))]-2` -/
def P16411737332498703048.Spec : Prop :=
  ∀ n, P16411737332498703048.a n = A100198 n

end A100198

/-! ## A100198.P15313989971993541446

`∑[∑{d}[n, A008683(n*#)]]-1`
-/

namespace A100198.P15313989971993541446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 (n * d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100198.P15313989971993541446

namespace A100198

/-- `∑[∑{d}[n, A008683(n*#)]]-1` -/
def P15313989971993541446.Spec : Prop :=
  ∀ n, P15313989971993541446.a n = A100198 n

end A100198

/-! ## A100198.P16709872890042408343

`∑[A162512(abs(1-n)+1)%2]`
-/

namespace A100198.P16709872890042408343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (|1 - (n : ℤ)| + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100198.P16709872890042408343

namespace A100198

/-- `∑[A162512(abs(1-n)+1)%2]` -/
def P16709872890042408343.Spec : Prop :=
  ∀ n, P16709872890042408343.a n = A100198 n

end A100198

/-! ## A100198.P9869592204531813922

`∑[A008683(floor(acot(n)²+n))%3]`
-/

namespace A100198.P9869592204531813922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100198.P9869592204531813922

namespace A100198

/-- `∑[A008683(floor(acot(n)²+n))%3]` -/
def P9869592204531813922.Spec : Prop :=
  ∀ n, P9869592204531813922.a n = A100198 n

end A100198

/-! ## A100198.P14617334164588899803

`∑[A008683(floor(2/acot(n))-n)%2]-2`
-/

namespace A100198.P14617334164588899803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A100198.P14617334164588899803

namespace A100198

/-- `∑[A008683(floor(2/acot(n))-n)%2]-2` -/
def P14617334164588899803.Spec : Prop :=
  ∀ n, P14617334164588899803.a n = A100198 n

end A100198

/-! ## A100198.P4438093067745165479

`∑[A008683(2*round(1/acot(n))-n)%2]`
-/

namespace A100198.P4438093067745165479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (2 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - (n : ℤ)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100198.P4438093067745165479

namespace A100198

/-- `∑[A008683(2*round(1/acot(n))-n)%2]` -/
def P4438093067745165479.Spec : Prop :=
  ∀ n, P4438093067745165479.a n = A100198 n

end A100198

/-! ## A100198.P12052784976903990623

`∑[A162512(A007318(∑[n]+1))%2]-2`
-/

namespace A100198.P12052784976903990623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A100198.P12052784976903990623

namespace A100198

/-- `∑[A162512(A007318(∑[n]+1))%2]-2` -/
def P12052784976903990623.Spec : Prop :=
  ∀ n, P12052784976903990623.a n = A100198 n

end A100198

/-! ## A100198.P11923023364201898873

`∑[A008683(n+1)]-1-A008683(n+1)`
-/

namespace A100198.P11923023364201898873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A008683 (n + 1)

end

end A100198.P11923023364201898873

namespace A100198

/-- `∑[A008683(n+1)]-1-A008683(n+1)` -/
def P11923023364201898873.Spec : Prop :=
  ∀ n, P11923023364201898873.a n = A100198 n

end A100198

/-! ## A100198.P6926536445004624811

`∑[A346254(n+1)%2]-A007423(n+1)`
-/

namespace A100198.P6926536445004624811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007423 (n + 1)

end

end A100198.P6926536445004624811

namespace A100198

/-- `∑[A346254(n+1)%2]-A007423(n+1)` -/
def P6926536445004624811.Spec : Prop :=
  ∀ n, P6926536445004624811.a n = A100198 n

end A100198

/-! ## A100198.P5937223772164642779

`∑[A346477(n+1)%2]-A007423(n+1)`
-/

namespace A100198.P5937223772164642779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346477 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007423 (n + 1)

end

end A100198.P5937223772164642779

namespace A100198

/-- `∑[A346477(n+1)%2]-A007423(n+1)` -/
def P5937223772164642779.Spec : Prop :=
  ∀ n, P5937223772164642779.a n = A100198 n

end A100198

/-! ## A100198.P14785795403091948633

`A072613(n+1)-(A070549(n+1)+A008683(n+1))`
-/

namespace A100198.P14785795403091948633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) - (A070549 (n + 1) + A008683 (n + 1))

end

end A100198.P14785795403091948633

namespace A100198

/-- `A072613(n+1)-(A070549(n+1)+A008683(n+1))` -/
def P14785795403091948633.Spec : Prop :=
  ∀ n, P14785795403091948633.a n = A100198 n

end A100198

