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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A000501: a(n) = floor(cosh(n)).

The programs for A000501, the canonical program `A000501.P7374093131514780775` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000501 has offset 0).

The definition of A000501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(cosh(n))` (program `A000501.P7374093131514780775`, by `A000501.P7374093131514780775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000501.P7374093131514780775

`floor(cosh(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000501

/-- `floor(cosh(n))` -/
def P7374093131514780775.Spec : Prop :=
  ∀ n, P7374093131514780775.a n = A000501 n

theorem P7374093131514780775.correct : P7374093131514780775.Spec := by
  intro n
  simp only [A000501]

end A000501

/-! ## A000501.P13223617891392264883

`floor((exp(n)+acot(n)²)/2)`
-/

namespace A000501.P13223617891392264883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp (n : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2) / 2⌋

end

end A000501.P13223617891392264883

namespace A000501

/-- `floor((exp(n)+acot(n)²)/2)` -/
def P13223617891392264883.Spec : Prop :=
  ∀ n, P13223617891392264883.a n = A000501 n

end A000501

/-! ## A000501.P9422487660885941669

`floor(2*sinh(n/2)²)+1`
-/

namespace A000501.P9422487660885941669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sinh ((n : ℚ) / 2 : ℝ) ^ 2⌋ + 1

end

end A000501.P9422487660885941669

namespace A000501

/-- `floor(2*sinh(n/2)²)+1` -/
def P9422487660885941669.Spec : Prop :=
  ∀ n, P9422487660885941669.a n = A000501 n

end A000501

/-! ## A000501.P14038113925051798765

`floor(exp(A028310(n))/2)`
-/

namespace A000501.P14038113925051798765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A028310 n : ℝ) / 2⌋

end

end A000501.P14038113925051798765

namespace A000501

/-- `floor(exp(A028310(n))/2)` -/
def P14038113925051798765.Spec : Prop :=
  ∀ n, P14038113925051798765.a n = A000501 n

end A000501

/-! ## A000501.P13232969620360446998

`floor(exp(A123108(2*n))/2)`
-/

namespace A000501.P13232969620360446998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A123108 (2 * n) : ℝ) / 2⌋

end

end A000501.P13232969620360446998

namespace A000501

/-- `floor(exp(A123108(2*n))/2)` -/
def P13232969620360446998.Spec : Prop :=
  ∀ n, P13232969620360446998.a n = A000501 n

end A000501

/-! ## A000501.P16619752732501002617

`floor(exp(n)/A036453(n+1))`
-/

namespace A000501.P16619752732501002617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) / (A036453 (n + 1) : ℝ)⌋

end

end A000501.P16619752732501002617

namespace A000501

/-- `floor(exp(n)/A036453(n+1))` -/
def P16619752732501002617.Spec : Prop :=
  ∀ n, P16619752732501002617.a n = A000501 n

end A000501

/-! ## A000501.P16446943387370413059

`A000149(n)-floor(ceil(exp(n))/2)`
-/

namespace A000501.P16446943387370413059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n - ⌊(⌈Real.exp (n : ℝ)⌉ : ℚ) / 2⌋

end

end A000501.P16446943387370413059

namespace A000501

/-- `A000149(n)-floor(ceil(exp(n))/2)` -/
def P16446943387370413059.Spec : Prop :=
  ∀ n, P16446943387370413059.a n = A000501 n

end A000501

/-! ## A000501.P17034420497241350428

`A000471(n)%(4*a(n-1))` with `a(0)=1`
-/

namespace A000501.P17034420497241350428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000471 n) (4 * a (n - 1))

end

end A000501.P17034420497241350428

namespace A000501

/-- `A000471(n)%(4*a(n-1))` -/
def P17034420497241350428.Spec : Prop :=
  ∀ n, P17034420497241350428.a n = A000501 n

end A000501

/-! ## A000501.P11135760785941776877

`ceil(exp(A004277(n)-n)/2)-1`
-/

namespace A000501.P11135760785941776877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (A004277 n - (n : ℤ) : ℝ) / 2⌉ - 1

end

end A000501.P11135760785941776877

namespace A000501

/-- `ceil(exp(A004277(n)-n)/2)-1` -/
def P11135760785941776877.Spec : Prop :=
  ∀ n, P11135760785941776877.a n = A000501 n

end A000501

/-! ## A000501.P10582639597117661487

`A000471(A028310(n))`
-/

namespace A000501.P10582639597117661487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000471 (A028310 n).toNat

end

end A000501.P10582639597117661487

namespace A000501

/-- `A000471(A028310(n))` -/
def P10582639597117661487.Spec : Prop :=
  ∀ n, P10582639597117661487.a n = A000501 n

end A000501

/-! ## A000501.P11538624773191905657

`A000471(A000007(n)+n)`
-/

namespace A000501.P11538624773191905657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000471 (A000007 n + (n : ℤ)).toNat

end

end A000501.P11538624773191905657

namespace A000501

/-- `A000471(A000007(n)+n)` -/
def P11538624773191905657.Spec : Prop :=
  ∀ n, P11538624773191905657.a n = A000501 n

end A000501

/-! ## A000501.P8697892019259455379

`A000471(xor(n, A000007(n)))`
-/

namespace A000501.P8697892019259455379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000471 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A000501.P8697892019259455379

namespace A000501

/-- `A000471(xor(n, A000007(n)))` -/
def P8697892019259455379.Spec : Prop :=
  ∀ n, P8697892019259455379.a n = A000501 n

end A000501

/-! ## A000501.P2732529037702895254

`A214077(A008486(n))-A000495(n)`
-/

namespace A000501.P2732529037702895254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214077 (A008486 n).toNat - A000495 n

end

end A000501.P2732529037702895254

namespace A000501

/-- `A214077(A008486(n))-A000495(n)` -/
def P2732529037702895254.Spec : Prop :=
  ∀ n, P2732529037702895254.a n = A000501 n

end A000501

/-! ## A000501.P149984911252406844

`ceil(abs(1-sinh(n)))`
-/

namespace A000501.P149984911252406844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|1 - Real.sinh (n : ℝ)|⌉

end

end A000501.P149984911252406844

namespace A000501

/-- `ceil(abs(1-sinh(n)))` -/
def P149984911252406844.Spec : Prop :=
  ∀ n, P149984911252406844.a n = A000501 n

end A000501

/-! ## A000501.P17501576787719310289

`floor(exp(n)-sinh(n))`
-/

namespace A000501.P17501576787719310289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) - Real.sinh (n : ℝ)⌋

end

end A000501.P17501576787719310289

namespace A000501

/-- `floor(exp(n)-sinh(n))` -/
def P17501576787719310289.Spec : Prop :=
  ∀ n, P17501576787719310289.a n = A000501 n

theorem P17501576787719310289.correct : P17501576787719310289.Spec := by
  intro n
  simp only [A000501, Nat.add_sub_cancel, A000501.P17501576787719310289.a, A000501.P7374093131514780775.a, SequenceMachineLib.memo_apply]
  try simp

end A000501

/-! ## A000501.P748799224433741643

`round(cosh(n)-1/2)`
-/

namespace A000501.P748799224433741643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) - ((1 : ℚ) / 2 : ℝ))

end

end A000501.P748799224433741643

namespace A000501

/-- `round(cosh(n)-1/2)` -/
def P748799224433741643.Spec : Prop :=
  ∀ n, P748799224433741643.a n = A000501 n

end A000501

/-! ## A000501.P11657541325984856976

`n-ceil(n-cosh(n))`
-/

namespace A000501.P11657541325984856976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - Real.cosh (n : ℝ)⌉

end

end A000501.P11657541325984856976

namespace A000501

/-- `n-ceil(n-cosh(n))` -/
def P11657541325984856976.Spec : Prop :=
  ∀ n, P11657541325984856976.a n = A000501 n

end A000501

/-! ## A000501.P5836207713630291059

`floor(sinh(n^((n+2)%(n+1))))`
-/

namespace A000501.P5836207713630291059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (n ^ ((n + 2) % (n + 1)) : ℝ)⌋

end

end A000501.P5836207713630291059

namespace A000501

/-- `floor(sinh(n^((n+2)%(n+1))))` -/
def P5836207713630291059.Spec : Prop :=
  ∀ n, P5836207713630291059.a n = A000501 n

end A000501

/-!
# A000502: Number of genus 0 rooted maps with 6 faces and n vertices.

The programs for A000502, there is no canonical definition to state claims against.
-/

/-! ## A000502.P6898095328876936967

`A269920(A167499(n+4))`
-/

namespace A000502.P6898095328876936967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A167499 (n + 4)).toNat

end

end A000502.P6898095328876936967

/-! ## A000502.P9614778980768685333

`A269920(eq[5, A002262(n)])`
-/

namespace A000502.P9614778980768685333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000502.P9614778980768685333

/-! ## A000502.P9681958599907758918

`A269920(A000096(n+4)+6)`
-/

namespace A000502.P9681958599907758918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A000096 (n + 4) + 6).toNat

end

end A000502.P9681958599907758918

/-! ## A000502.P11701617700590000651

`A269920(A000217(n+5)+5)`
-/

namespace A000502.P11701617700590000651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A000217 (n + 5) + 5).toNat

end

end A000502.P11701617700590000651

/-! ## A000502.P1363220508113422859

`A269920(∑[n+6]+9)`
-/

namespace A000502.P1363220508113422859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A000502.P1363220508113422859

/-!
# A000503: a(n) = floor(tan(n)).

The programs for A000503, the canonical program `A000503.P652587286000263430` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000503 has offset 0).

The definition of A000503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(n))` (program `A000503.P652587286000263430`, by `A000503.P652587286000263430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000503.P652587286000263430

`floor(tan(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000503

/-- `floor(tan(n))` -/
def P652587286000263430.Spec : Prop :=
  ∀ n, P652587286000263430.a n = A000503 n

theorem P652587286000263430.correct : P652587286000263430.Spec := by
  intro n
  simp only [A000503]

end A000503

/-! ## A000503.P15487796168981685203

`-ceil(tan(-n))`
-/

namespace A000503.P15487796168981685203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.tan (-(n : ℤ) : ℝ)⌉

end

end A000503.P15487796168981685203

namespace A000503

/-- `-ceil(tan(-n))` -/
def P15487796168981685203.Spec : Prop :=
  ∀ n, P15487796168981685203.a n = A000503 n

end A000503

/-! ## A000503.P6093855114723515509

`floor(sin(n)/cos(n))`
-/

namespace A000503.P6093855114723515509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ) / Real.cos (n : ℝ)⌋

end

end A000503.P6093855114723515509

namespace A000503

/-- `floor(sin(n)/cos(n))` -/
def P6093855114723515509.Spec : Prop :=
  ∀ n, P6093855114723515509.a n = A000503 n

end A000503

/-! ## A000503.P15734229156796099629

`n-ceil(n-tan(n))`
-/

namespace A000503.P15734229156796099629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - Real.tan (n : ℝ)⌉

end

end A000503.P15734229156796099629

namespace A000503

/-- `n-ceil(n-tan(n))` -/
def P15734229156796099629.Spec : Prop :=
  ∀ n, P15734229156796099629.a n = A000503 n

end A000503

/-! ## A000503.P4983667956567776455

`floor(cot(cot(11)+11-n))`
-/

namespace A000503.P4983667956567776455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.cot (11 : ℝ) + (11 - (n : ℤ) : ℝ))⌋

end

end A000503.P4983667956567776455

namespace A000503

/-- `floor(cot(cot(11)+11-n))` -/
def P4983667956567776455.Spec : Prop :=
  ∀ n, P4983667956567776455.a n = A000503 n

end A000503

/-! ## A000503.P3595000103483362790

`round(tan(n)-n/(2*n+1))`
-/

namespace A000503.P3595000103483362790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ) - ((n : ℚ) / (2 * n + 1 : ℚ) : ℝ))

end

end A000503.P3595000103483362790

namespace A000503

/-- `round(tan(n)-n/(2*n+1))` -/
def P3595000103483362790.Spec : Prop :=
  ∀ n, P3595000103483362790.a n = A000503 n

end A000503

/-! ## A000503.P15815544293151682500

`ceil(A057428(n)+tan(n))`
-/

namespace A000503.P15815544293151682500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.tan (n : ℝ)⌉

end

end A000503.P15815544293151682500

namespace A000503

/-- `ceil(A057428(n)+tan(n))` -/
def P15815544293151682500.Spec : Prop :=
  ∀ n, P15815544293151682500.a n = A000503 n

end A000503

/-! ## A000503.P9355651529292937770

`ceil(tan(n)-A057427(n))`
-/

namespace A000503.P9355651529292937770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) - (A057427 n : ℝ)⌉

end

end A000503.P9355651529292937770

namespace A000503

/-- `ceil(tan(n)-A057427(n))` -/
def P9355651529292937770.Spec : Prop :=
  ∀ n, P9355651529292937770.a n = A000503 n

end A000503

/-! ## A000503.P5617493016299952854

`A195910(n)+A057428(n)`
-/

namespace A000503.P5617493016299952854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n + A057428 n

end

end A000503.P5617493016299952854

namespace A000503

/-- `A195910(n)+A057428(n)` -/
def P5617493016299952854.Spec : Prop :=
  ∀ n, P5617493016299952854.a n = A000503 n

end A000503

/-! ## A000503.P8829715577940020672

`A195910(n)-A057427(n)`
-/

namespace A000503.P8829715577940020672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n - A057427 n

end

end A000503.P8829715577940020672

namespace A000503

/-- `A195910(n)-A057427(n)` -/
def P8829715577940020672.Spec : Prop :=
  ∀ n, P8829715577940020672.a n = A000503 n

end A000503

/-! ## A000503.P7156878029078032083

`xor(A126564(n), A328376(n))`
-/

namespace A000503.P7156878029078032083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126564 n) (A328376 n)

end

end A000503.P7156878029078032083

namespace A000503

/-- `xor(A126564(n), A328376(n))` -/
def P7156878029078032083.Spec : Prop :=
  ∀ n, P7156878029078032083.a n = A000503 n

end A000503

/-! ## A000503.P4975856298792411524

`A005657(n)+A195910(n)-A005699(n)`
-/

namespace A000503.P4975856298792411524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005657 n + (A195910 n - A005699 n)

end

end A000503.P4975856298792411524

namespace A000503

/-- `A005657(n)+A195910(n)-A005699(n)` -/
def P4975856298792411524.Spec : Prop :=
  ∀ n, P4975856298792411524.a n = A000503 n

end A000503

/-! ## A000503.P2708090889538255885

`A195910(n)-A001221(A195943(n+1))`
-/

namespace A000503.P2708090889538255885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n - A001221 (A195943 (n + 1)).toNat

end

end A000503.P2708090889538255885

namespace A000503

/-- `A195910(n)-A001221(A195943(n+1))` -/
def P2708090889538255885.Spec : Prop :=
  ∀ n, P2708090889538255885.a n = A000503 n

end A000503

/-! ## A000503.P5724795645975969509

`ceil(tan(n)-tanh(n))`
-/

namespace A000503.P5724795645975969509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) - Real.tanh (n : ℝ)⌉

end

end A000503.P5724795645975969509

namespace A000503

/-- `ceil(tan(n)-tanh(n))` -/
def P5724795645975969509.Spec : Prop :=
  ∀ n, P5724795645975969509.a n = A000503 n

end A000503

/-!
# A000504: S2(j,2j+3) where S2(n,k) is a 2-associated Stirling number of the second kind.

The programs for A000504, there is no canonical definition to state claims against.
-/

/-! ## A000504.P17056361202795371397

`A134991(A055998(n+2))`
-/

namespace A000504.P17056361202795371397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A055998 (n + 2)).toNat

end

end A000504.P17056361202795371397

/-! ## A000504.P484234280876278964

`A134991(A155212(n)+5)`
-/

namespace A000504.P484234280876278964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A155212 n + 5).toNat

end

end A000504.P484234280876278964

/-! ## A000504.P8823901620026347518

`A134991(eq[3, A193592(n)])`
-/

namespace A000504.P8823901620026347518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000504.P8823901620026347518

/-! ## A000504.P16156964470392910383

`A134991(eq[4, A140996(n)])`
-/

namespace A000504.P16156964470392910383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000504.P16156964470392910383

/-! ## A000504.P11775227024148296552

`A134991(A052905(n+1)+2)`
-/

namespace A000504.P11775227024148296552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A052905 (n + 1) + 2).toNat

end

end A000504.P11775227024148296552

/-! ## A000504.P16925343914112442779

`A134991(A000096(n+3)-2)`
-/

namespace A000504.P16925343914112442779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A000096 (n + 3) - 2).toNat

end

end A000504.P16925343914112442779

/-! ## A000504.P16346103366771977783

`A134991(A000217(n+3)+n+1)`
-/

namespace A000504.P16346103366771977783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A000504.P16346103366771977783

/-! ## A000504.P14027528710454699034

`A134991(A167614(n+1)+A005408(n))`
-/

namespace A000504.P14027528710454699034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A167614 (n + 1) + A005408 n).toNat

end

end A000504.P14027528710454699034

/-!
# A000505: Eulerian numbers (Euler's triangle: column k=5 of A008292, column k=4 of A173018).

The programs for A000505, there is no canonical definition to state claims against.
-/

/-! ## A000505.P4089102176776696723

`A008292(A374005(n+1))`
-/

namespace A000505.P4089102176776696723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A374005 (n + 1)).toNat

end

end A000505.P4089102176776696723

/-! ## A000505.P16917776202303723184

`A008292(A167499(n+3))`
-/

namespace A000505.P16917776202303723184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A167499 (n + 3)).toNat

end

end A000505.P16917776202303723184

/-! ## A000505.P16663906682726397141

`A123125(A167499(n+4))`
-/

namespace A000505.P16663906682726397141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A167499 (n + 4)).toNat

end

end A000505.P16663906682726397141

/-! ## A000505.P2921676316098418220

`A008292(A077169(n+5))`
-/

namespace A000505.P2921676316098418220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A077169 (n + 5)).toNat

end

end A000505.P2921676316098418220

/-! ## A000505.P13659781410851700271

`A008292(A155212(n)+13)`
-/

namespace A000505.P13659781410851700271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A155212 n + 13).toNat

end

end A000505.P13659781410851700271

/-! ## A000505.P11365747579330132615

`A008292(A056000(n)+15)`
-/

namespace A000505.P11365747579330132615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A056000 n + 15).toNat

end

end A000505.P11365747579330132615

/-! ## A000505.P6696823978381689693

`A173018(A056115(n)+19)`
-/

namespace A000505.P6696823978381689693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A056115 n + 19).toNat

end

end A000505.P6696823978381689693

/-! ## A000505.P14254648865421998541

`A008292(A000124(n+4)+4)`
-/

namespace A000505.P14254648865421998541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000124 (n + 4) + 4).toNat

end

end A000505.P14254648865421998541

/-! ## A000505.P11730464935394935903

`A008292(A000096(n+3)+6)`
-/

namespace A000505.P11730464935394935903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000096 (n + 3) + 6).toNat

end

end A000505.P11730464935394935903

/-! ## A000505.P2213216996855101346

`A123125(eq[6, A002260(n+1)])`
-/

namespace A000505.P2213216996855101346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000505.P2213216996855101346

/-!
# A000506: One half of the number of permutations of [n] such that the differences have 5 runs with the same signs.

The programs for A000506, there is no canonical definition to state claims against.
-/

/-! ## A000506.P13516685634148137524

`A008970(A155212(n)+14)`
-/

namespace A000506.P13516685634148137524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A155212 n + 14).toNat

end

end A000506.P13516685634148137524

/-! ## A000506.P6113723907328932387

`A008970(A056000(n)+16)`
-/

namespace A000506.P6113723907328932387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A056000 n + 16).toNat

end

end A000506.P6113723907328932387

/-! ## A000506.P11063642787906018736

`A008970(A167614(n+3)+3)`
-/

namespace A000506.P11063642787906018736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A167614 (n + 3) + 3).toNat

end

end A000506.P11063642787906018736

/-! ## A000506.P17509716633487667551

`A008970(A051936(n+4)+15)`
-/

namespace A000506.P17509716633487667551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A051936 (n + 4) + 15).toNat

end

end A000506.P17509716633487667551

/-! ## A000506.P7208026432086144079

`A008970(A000217(n+5)-(n-1))`
-/

namespace A000506.P7208026432086144079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A000217 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A000506.P7208026432086144079

/-! ## A000506.P6563599875775473852

`A008970(Δ[Δ[A006504(n+1)]]-2*n)`
-/

namespace A000506.P6563599875775473852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A000506.P6563599875775473852

/-!
# A000507: Number of permutations of [n] with exactly 3 increasing runs of length at least 2.

The programs for A000507, there is no canonical definition to state claims against.
-/

/-! ## A000507.P6491278955547642933

`A008971(eq[3, A055087(n)])`
-/

namespace A000507.P6491278955547642933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000507.P6491278955547642933

/-!
# A000508: Generalized class numbers c_(n,3).

The programs for A000508, there is no canonical definition to state claims against.
-/

/-! ## A000508.P12729856366851634359

`A235605(A167614(n+2)+1)`
-/

namespace A000508.P12729856366851634359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A167614 (n + 2) + 1).toNat

end

end A000508.P12729856366851634359

/-! ## A000508.P7564732935040675646

`A235605(A133263(n+3)+2)`
-/

namespace A000508.P7564732935040675646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A133263 (n + 3) + 2).toNat

end

end A000508.P7564732935040675646

/-! ## A000508.P6938674417138264641

`A235605(eq[5, A131818(n+1)])`
-/

namespace A000508.P6938674417138264641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000508.P6938674417138264641

/-! ## A000508.P1578837400598683540

`A235605(A016777(n+3)+A000217(n))`
-/

namespace A000508.P1578837400598683540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A016777 (n + 3) + A000217 n).toNat

end

end A000508.P1578837400598683540

/-! ## A000508.P16777637524051999435

`A235605(C(A090108(3*n+5)-2*n, 2)-n)`
-/

namespace A000508.P16777637524051999435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (Nat.choose (A090108 (3 * n + 5) - (2 * n : ℤ)).toNat 2 - n)

end

end A000508.P16777637524051999435

/-!
# A000511: Number of n-step spiral self-avoiding walks on hexagonal lattice, where at each step one may continue in same direction or make turn of 2*Pi/3 counterclockwise.

The programs for A000511, there is no canonical definition to state claims against.
-/

/-! ## A000511.P2367329707690593049

`or(A163540(n+1), A353838(A067659(2*(n+1))))`
-/

namespace A000511.P2367329707690593049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163540 (n + 1)) (A353838 (A067659 (2 * (n + 1))).toNat)

end

end A000511.P2367329707690593049

/-! ## A000511.P15349873526593423450

`A003003(A387179(n))`
-/

namespace A000511.P15349873526593423450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A387179 n).toNat

end

end A000511.P15349873526593423450

/-! ## A000511.P17138915661901464714

`A173599(n)+A037800(A153967(n))`
-/

namespace A000511.P17138915661901464714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173599 n + A037800 (A153967 n).toNat

end

end A000511.P17138915661901464714

/-! ## A000511.P3522718083208966376

`A122921(A348377(n+4)-A000009(3*n+4))`
-/

namespace A000511.P3522718083208966376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A348377 (n + 4) - A000009 (3 * n + 4)).toNat

end

end A000511.P3522718083208966376

/-! ## A000511.P4897590135408732018

`A061071(A148208(n))`
-/

namespace A000511.P4897590135408732018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A148208 n).toNat

end

end A000511.P4897590135408732018

/-!
# A000512: Number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to 3, where equivalence is defined by row and column permutations.

The programs for A000512, there is no canonical definition to state claims against.
-/

/-! ## A000512.P13958987142689697717

`2*A004066(n+1)-A000840(n+1)`
-/

namespace A000512.P13958987142689697717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004066 (n + 1) - A000840 (n + 1)

end

end A000512.P13958987142689697717

/-! ## A000512.P17034860494386020221

`A005843(A004066(n+1))-A000840(n+1)`
-/

namespace A000512.P17034860494386020221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004066 (n + 1)).toNat - A000840 (n + 1)

end

end A000512.P17034860494386020221

/-!
# A000513: Number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to 4, where equivalence is defined by row and column permutations. Also number of isomorphism classes of bicolored quartic bipartite graphs, where isomorphism cannot exchange the colors.

The programs for A000513, there is no canonical definition to state claims against.
-/

/-! ## A000513.P7748267897632749142

`A373069(A092684(n+1))`
-/

namespace A000513.P7748267897632749142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373069 (A092684 (n + 1)).toNat

end

end A000513.P7748267897632749142

/-! ## A000513.P1086534907585879488

`A373069(A113409(n+1))`
-/

namespace A000513.P1086534907585879488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373069 (A113409 (n + 1)).toNat

end

end A000513.P1086534907585879488

/-! ## A000513.P8842858493964830172

`A367219(A176503(n+1))`
-/

namespace A000513.P8842858493964830172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367219 (A176503 (n + 1)).toNat

end

end A000513.P8842858493964830172

/-! ## A000513.P4497343712262520450

`A373070(A374517(n+1))`
-/

namespace A000513.P4497343712262520450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373070 (A374517 (n + 1)).toNat

end

end A000513.P4497343712262520450

/-!
# A000514: Eulerian numbers (Euler's triangle: column k=6 of A008292, column k=5 of A173018).

The programs for A000514, there is no canonical definition to state claims against.
-/

/-! ## A000514.P729224219657041789

`A008292(A374007(n+1))`
-/

namespace A000514.P729224219657041789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A374007 (n + 1)).toNat

end

end A000514.P729224219657041789

/-! ## A000514.P12126719001357355299

`A008292(A166136(n+4))`
-/

namespace A000514.P12126719001357355299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A166136 (n + 4)).toNat

end

end A000514.P12126719001357355299

/-! ## A000514.P615625484783735192

`A173018(A167499(n+5))`
-/

namespace A000514.P615625484783735192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A167499 (n + 5)).toNat

end

end A000514.P615625484783735192

/-! ## A000514.P1962814251055910550

`A008292(A056115(n)+21)`
-/

namespace A000514.P1962814251055910550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A056115 n + 21).toNat

end

end A000514.P1962814251055910550

/-! ## A000514.P15142683655315468532

`A008292(A167499(n+4)+1)`
-/

namespace A000514.P15142683655315468532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A167499 (n + 4) + 1).toNat

end

end A000514.P15142683655315468532

/-! ## A000514.P7201501472918954873

`A173018(A167614(n+5)+2)`
-/

namespace A000514.P7201501472918954873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A167614 (n + 5) + 2).toNat

end

end A000514.P7201501472918954873

/-! ## A000514.P8925886494424090674

`A008292(A000124(n+5)+5)`
-/

namespace A000514.P8925886494424090674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000124 (n + 5) + 5).toNat

end

end A000514.P8925886494424090674

/-! ## A000514.P468293013600268741

`A008292(A134869(n+5)+5)`
-/

namespace A000514.P468293013600268741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A134869 (n + 5) + 5).toNat

end

end A000514.P468293013600268741

/-! ## A000514.P18299755287859696933

`A008292(A000217(n+5)+6)`
-/

namespace A000514.P18299755287859696933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000217 (n + 5) + 6).toNat

end

end A000514.P18299755287859696933

/-! ## A000514.P16524497674625625621

`A123125(eq[7, A002260(n+1)])`
-/

namespace A000514.P16524497674625625621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000514.P16524497674625625621

/-!
# A000515: a(n) = (2n)!(2n+1)!/n!^4, or equally (2n+1)*binomial(2n,n)^2.

The programs for A000515, the canonical program `A000515.P6732800617001162931` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000515 has offset 0).

The definition of A000515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*C(2*n, n)²` (program `A000515.P6732800617001162931`, by `A000515.P6732800617001162931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000515.P6732800617001162931

`(2*n+1)*C(2*n, n)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000515

/-- `(2*n+1)*C(2*n, n)²` -/
def P6732800617001162931.Spec : Prop :=
  ∀ n, (P6732800617001162931.a n : ℤ) = A000515 n

theorem P6732800617001162931.correct : P6732800617001162931.Spec := by
  intro n
  simp only [A000515]

end A000515

/-! ## A000515.P10931614770403874596

`(2*n)!*(2*n+1)!/n!^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000515.P10931614770403874596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n ^ 4 : ℚ)

end

end A000515.P10931614770403874596

namespace A000515

/-- `(2*n)!*(2*n+1)!/n!^4` -/
def P10931614770403874596.Spec : Prop :=
  ∀ n, P10931614770403874596.a n = (A000515 n : ℚ)

end A000515

/-! ## A000515.P6461821074294281437

`C(2*n, n)²*Δ[n²]`
-/

namespace A000515.P6461821074294281437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A000515.P6461821074294281437

namespace A000515

/-- `C(2*n, n)²*Δ[n²]` -/
def P6461821074294281437.Spec : Prop :=
  ∀ n, P6461821074294281437.a n = A000515 n

theorem P6461821074294281437.correct : P6461821074294281437.Spec := by
  intro n
  simp only [A000515, Nat.add_sub_cancel, A000515.P6461821074294281437.f1, A000515.P6461821074294281437.a, A000515.P6732800617001162931.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000515

/-! ## A000515.P6746868232987026681

`a(n-1)*4*((2*n)²-1)/n²` with `a(0)=1`
-/

namespace A000515.P6746868232987026681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (4 * ((((2 * n) ^ 2 : ℤ) - 1 : ℚ) / (n ^ 2 : ℚ)))

end

end A000515.P6746868232987026681

namespace A000515

/-- `a(n-1)*4*((2*n)²-1)/n²` -/
def P6746868232987026681.Spec : Prop :=
  ∀ n, P6746868232987026681.a n = (A000515 n : ℚ)

end A000515

/-! ## A000515.P12067578809535757318

`(n+1)*C(2*n+1, n)*C(2*n, n)`
-/

namespace A000515.P12067578809535757318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.choose (2 * n + 1) n * Nat.choose (2 * n) n)

end

end A000515.P12067578809535757318

namespace A000515

/-- `(n+1)*C(2*n+1, n)*C(2*n, n)` -/
def P12067578809535757318.Spec : Prop :=
  ∀ n, (P12067578809535757318.a n : ℤ) = A000515 n

end A000515

/-! ## A000515.P6676889066952785651

`(n+1)*A000894(n)`
-/

namespace A000515.P6676889066952785651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000894 n

end

end A000515.P6676889066952785651

namespace A000515

/-- `(n+1)*A000894(n)` -/
def P6676889066952785651.Spec : Prop :=
  ∀ n, P6676889066952785651.a n = A000515 n

end A000515

/-! ## A000515.P14605892382757925897

`Δ[n²]*A002894(n)`
-/

namespace A000515.P14605892382757925897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A002894 n

end

end A000515.P14605892382757925897

namespace A000515

/-- `Δ[n²]*A002894(n)` -/
def P14605892382757925897.Spec : Prop :=
  ∀ n, P14605892382757925897.a n = A000515 n

end A000515

/-! ## A000515.P5336402727893440026

`(n+1)²*A000891(n)`
-/

namespace A000515.P5336402727893440026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000891 n

end

end A000515.P5336402727893440026

namespace A000515

/-- `(n+1)²*A000891(n)` -/
def P5336402727893440026.Spec : Prop :=
  ∀ n, P5336402727893440026.a n = A000515 n

end A000515

/-! ## A000515.P10376910047855539786

`∑[n+1]*A172392(n)`
-/

namespace A000515.P10376910047855539786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A172392 n

end

end A000515.P10376910047855539786

namespace A000515

/-- `∑[n+1]*A172392(n)` -/
def P10376910047855539786.Spec : Prop :=
  ∀ n, P10376910047855539786.a n = A000515 n

end A000515

/-! ## A000515.P17986079107524863310

`A000984(n)²*Δ[n²]`
-/

namespace A000515.P17986079107524863310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A000515.P17986079107524863310

namespace A000515

/-- `A000984(n)²*Δ[n²]` -/
def P17986079107524863310.Spec : Prop :=
  ∀ n, P17986079107524863310.a n = A000515 n

end A000515

/-!
# A000516: Number of equivalence classes of n X n matrices over {0,1} with rows and columns summing to 5, where equivalence is defined by row and column permutations. Isomorphism classes of bicolored 5-regular bipartite graphs, where isomorphism cannot exchange the colors.

The programs for A000516, there is no canonical definition to state claims against.
-/

/-! ## A000516.P2020668721377657307

`A133687(A167499(n))%∑[A058528(n)]`
-/

namespace A000516.P2020668721377657307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133687 (A167499 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000516.P2020668721377657307

/-!
# A000517: Number of permutations of length n with exactly three valleys.

The programs for A000517, there is no canonical definition to state claims against.
-/

/-! ## A000517.P17669401569437278353

`A159712(A020722(n))/A020722(n)`
-/

namespace A000517.P17669401569437278353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159712 (A020722 n).toNat : ℚ) / (A020722 n : ℚ)

end

end A000517.P17669401569437278353

/-!
# A000518: Generalized tangent numbers d_(n,4).

The programs for A000518, there is no canonical definition to state claims against.
-/

/-! ## A000518.P122627795011935697

`A235606(A052905(n)+9)`
-/

namespace A000518.P122627795011935697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A052905 n + 9).toNat

end

end A000518.P122627795011935697

/-! ## A000518.P2242195633358540322

`A235606(A055999(n)+10)`
-/

namespace A000518.P2242195633358540322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A055999 n + 10).toNat

end

end A000518.P2242195633358540322

/-! ## A000518.P18309858043511545959

`A235606(A167614(n+2)+1)`
-/

namespace A000518.P18309858043511545959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A167614 (n + 2) + 1).toNat

end

end A000518.P18309858043511545959

/-! ## A000518.P18390663802190768564

`A235606(A167499(n+2)-1)`
-/

namespace A000518.P18390663802190768564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A167499 (n + 2) - 1).toNat

end

end A000518.P18390663802190768564

/-! ## A000518.P11204214329902046548

`A235606(A000217(n+3)+4)`
-/

namespace A000518.P11204214329902046548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A000217 (n + 3) + 4).toNat

end

end A000518.P11204214329902046548

/-!
# A000519: Number of equivalence classes of nonzero regular 0-1 matrices of order n.

The programs for A000519, there is no canonical definition to state claims against.
-/

/-! ## A000519.P4182510034985931502

`A333681(n+1)-1`
-/

namespace A000519.P4182510034985931502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333681 (n + 1) - 1

end

end A000519.P4182510034985931502

/-! ## A000519.P13959410568168538059

`∑[abs(Δ[A333681(n)])]`
-/

namespace A000519.P13959410568168538059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000519.P13959410568168538059

/-! ## A000519.P17079346676047884401

`record[Δ[A333681(A025581(n))]]`
-/

namespace A000519.P17079346676047884401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333681 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000519.P17079346676047884401

/-! ## A000519.P4777588390316164151

`∑[A025466(n)+Δ[A333681(n)]]`
-/

namespace A000519.P4777588390316164151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000519.P4777588390316164151

/-! ## A000519.P18420626179754778940

`Δ[∑[A333681(n)]-A141213(n)]`
-/

namespace A000519.P18420626179754778940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000519.P18420626179754778940

/-!
# A000520: Nearest integer to log_10(n).

The programs for A000520, the canonical program `A000520.P740625616792287926` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000520 has offset 1).

The definition of A000520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000520.P17031466442420640022

`round(log(n+1)/log(10))`
-/

namespace A000520.P17031466442420640022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ) / Real.log (10 : ℝ))

end

end A000520.P17031466442420640022

namespace A000520

/-- `round(log(n+1)/log(10))` -/
def P17031466442420640022.Spec : Prop :=
  ∀ n, P17031466442420640022.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P1738638898961077203

`∑[char[A017934(2*n+1)]]`
-/

namespace A000520.P1738638898961077203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000520.P1738638898961077203

namespace A000520

/-- `∑[char[A017934(2*n+1)]]` -/
def P1738638898961077203.Spec : Prop :=
  ∀ n, (P1738638898961077203.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P2204299505740252364

`∑[char[A049416(2*n+1)]]`
-/

namespace A000520.P2204299505740252364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000520.P2204299505740252364

namespace A000520

/-- `∑[char[A049416(2*n+1)]]` -/
def P2204299505740252364.Spec : Prop :=
  ∀ n, (P2204299505740252364.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P740625616792287926

`A077429(n+1)-A004216(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A000520

/-- `A077429(n+1)-A004216(n+1)` -/
def P740625616792287926.Spec : Prop :=
  ∀ n, P740625616792287926.a n = A000520 (n + 1)

theorem P740625616792287926.correct : P740625616792287926.Spec := by
  intro n
  simp only [A000520, Nat.add_sub_cancel]

end A000520

/-! ## A000520.P3298494168586361420

`A185679(n+1)-A055642(n+1)`
-/

namespace A000520.P3298494168586361420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (n + 1) - A055642 (n + 1)

end

end A000520.P3298494168586361420

namespace A000520

/-- `A185679(n+1)-A055642(n+1)` -/
def P3298494168586361420.Spec : Prop :=
  ∀ n, P3298494168586361420.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P9997844263951182562

`floor(sqrt(log2(A135304(n+1))))`
-/

namespace A000520.P9997844263951182562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.logb 2 (A135304 (n + 1) : ℝ))⌋

end

end A000520.P9997844263951182562

namespace A000520

/-- `floor(sqrt(log2(A135304(n+1))))` -/
def P9997844263951182562.Spec : Prop :=
  ∀ n, P9997844263951182562.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P1684340230965233924

`A001221(A000010(ceil(log2(n+2))!))`
-/

namespace A000520.P1684340230965233924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (Nat.factorial ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat)).toNat

end

end A000520.P1684340230965233924

namespace A000520

/-- `A001221(A000010(ceil(log2(n+2))!))` -/
def P1684340230965233924.Spec : Prop :=
  ∀ n, P1684340230965233924.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P17839605395648644697

`A000120(A000523(A000523(n+1)!))`
-/

namespace A000520.P17839605395648644697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000523 (Nat.factorial (A000523 (n + 1)).toNat)).toNat

end

end A000520.P17839605395648644697

namespace A000520

/-- `A000120(A000523(A000523(n+1)!))` -/
def P17839605395648644697.Spec : Prop :=
  ∀ n, P17839605395648644697.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P14262307034777237878

`A274070(A036467(n))`
-/

namespace A000520.P14262307034777237878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274070 (A036467 n).toNat

end

end A000520.P14262307034777237878

namespace A000520

/-- `A274070(A036467(n))` -/
def P14262307034777237878.Spec : Prop :=
  ∀ n, P14262307034777237878.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P449830691643799385

`val(A330719(2*(n+1)), 8)`
-/

namespace A000520.P449830691643799385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A330719 (2 * (n + 1))).toNat 8

end

end A000520.P449830691643799385

namespace A000520

/-- `val(A330719(2*(n+1)), 8)` -/
def P449830691643799385.Spec : Prop :=
  ∀ n, (P449830691643799385.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P10148936174576428648

`val(A051426(n+1), 8)`
-/

namespace A000520.P10148936174576428648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051426 (n + 1)).toNat 8

end

end A000520.P10148936174576428648

namespace A000520

/-- `val(A051426(n+1), 8)` -/
def P10148936174576428648.Spec : Prop :=
  ∀ n, (P10148936174576428648.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P6053187137643936035

`val(A392539(n+1), 8)`
-/

namespace A000520.P6053187137643936035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A392539 (n + 1)).toNat 8

end

end A000520.P6053187137643936035

namespace A000520

/-- `val(A392539(n+1), 8)` -/
def P6053187137643936035.Spec : Prop :=
  ∀ n, (P6053187137643936035.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P18409209242538461785

`val(A282503(2*(n+1)), 8)`
-/

namespace A000520.P18409209242538461785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A282503 (2 * (n + 1))).toNat 8

end

end A000520.P18409209242538461785

namespace A000520

/-- `val(A282503(2*(n+1)), 8)` -/
def P18409209242538461785.Spec : Prop :=
  ∀ n, (P18409209242538461785.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P11077373415316928604

`val(A073841(n+1), 8)`
-/

namespace A000520.P11077373415316928604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073841 (n + 1)).toNat 8

end

end A000520.P11077373415316928604

namespace A000520

/-- `val(A073841(n+1), 8)` -/
def P11077373415316928604.Spec : Prop :=
  ∀ n, (P11077373415316928604.a n : ℤ) = A000520 (n + 1)

end A000520

/-! ## A000520.P6403009997640981142

`A055642(A092627(2*n+1))-2`
-/

namespace A000520.P6403009997640981142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A092627 (2 * n + 1)).toNat - 2

end

end A000520.P6403009997640981142

namespace A000520

/-- `A055642(A092627(2*n+1))-2` -/
def P6403009997640981142.Spec : Prop :=
  ∀ n, P6403009997640981142.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P8761397060574988796

`A211666(A029034(n))`
-/

namespace A000520.P8761397060574988796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A029034 n).toNat

end

end A000520.P8761397060574988796

namespace A000520

/-- `A211666(A029034(n))` -/
def P8761397060574988796.Spec : Prop :=
  ∀ n, P8761397060574988796.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P11026491809976183646

`A211666(A029039(n))`
-/

namespace A000520.P11026491809976183646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A029039 n).toNat

end

end A000520.P11026491809976183646

namespace A000520

/-- `A211666(A029039(n))` -/
def P11026491809976183646.Spec : Prop :=
  ∀ n, P11026491809976183646.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P2529353298611033308

`∑[A359605((2*(n+1))²)]`
-/

namespace A000520.P2529353298611033308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 ((2 * (n + 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000520.P2529353298611033308

namespace A000520

/-- `∑[A359605((2*(n+1))²)]` -/
def P2529353298611033308.Spec : Prop :=
  ∀ n, P2529353298611033308.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P17562653514940499317

`A000120(A080791(A000788(A136494(n))))`
-/

namespace A000520.P17562653514940499317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080791 (A000788 (A136494 n).toNat).toNat).toNat

end

end A000520.P17562653514940499317

namespace A000520

/-- `A000120(A080791(A000788(A136494(n))))` -/
def P17562653514940499317.Spec : Prop :=
  ∀ n, P17562653514940499317.a n = A000520 (n + 1)

end A000520

/-! ## A000520.P2312744728045726606

`val(A072157(n+1), 8)`
-/

namespace A000520.P2312744728045726606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072157 (n + 1)).toNat 8

end

end A000520.P2312744728045726606

namespace A000520

/-- `val(A072157(n+1), 8)` -/
def P2312744728045726606.Spec : Prop :=
  ∀ n, (P2312744728045726606.a n : ℤ) = A000520 (n + 1)

end A000520

/-!
# A000522: Total number of ordered k-tuples (k=0..n) of distinct elements from an n-element set: a(n) = Sum_{k=0..n} n!/k!.

The programs for A000522, the canonical program `A000522.P12126844601845706129` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000522 has offset 0).

The definition of A000522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000522.P12126844601845706129

`1+n*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000522

/-- `1+n*a(n-1)` -/
def P12126844601845706129.Spec : Prop :=
  ∀ n, (P12126844601845706129.a n : ℤ) = A000522 n

theorem P12126844601845706129.correct : P12126844601845706129.Spec := by
  intro n
  simp only [A000522]

end A000522

/-! ## A000522.P2762906308955896669

`A007526(n)+1`
-/

namespace A000522.P2762906308955896669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n + 1

end

end A000522.P2762906308955896669

namespace A000522

/-- `A007526(n)+1` -/
def P2762906308955896669.Spec : Prop :=
  ∀ n, P2762906308955896669.a n = A000522 n

end A000522

/-! ## A000522.P7828060121082239621

`a(n-1)+A001339(n-1)` with `a(0)=1`
-/

namespace A000522.P7828060121082239621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001339 (n - 1)

end

end A000522.P7828060121082239621

namespace A000522

/-- `a(n-1)+A001339(n-1)` -/
def P7828060121082239621.Spec : Prop :=
  ∀ n, P7828060121082239621.a n = A000522 n

end A000522

/-! ## A000522.P3216917137142749647

`A061354(n)*A093101(n)`
-/

namespace A000522.P3216917137142749647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061354 n * A093101 n

end

end A000522.P3216917137142749647

namespace A000522

/-- `A061354(n)*A093101(n)` -/
def P3216917137142749647.Spec : Prop :=
  ∀ n, P3216917137142749647.a n = A000522 n

end A000522

/-! ## A000522.P18434460500713218413

`2*abs(A009578(n+1))/(n+1)-1`
-/

namespace A000522.P18434460500713218413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * |A009578 (n + 1)| : ℚ) / (n + 1 : ℚ) - 1

end

end A000522.P18434460500713218413

namespace A000522

/-- `2*abs(A009578(n+1))/(n+1)-1` -/
def P18434460500713218413.Spec : Prop :=
  ∀ n, P18434460500713218413.a n = (A000522 n : ℚ)

end A000522

/-! ## A000522.P7936038144701585932

`A038155(n+2)/A000217(n+1)`
-/

namespace A000522.P7936038144701585932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038155 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A000522.P7936038144701585932

namespace A000522

/-- `A038155(n+2)/A000217(n+1)` -/
def P7936038144701585932.Spec : Prop :=
  ∀ n, P7936038144701585932.a n = (A000522 n : ℚ)

end A000522

/-! ## A000522.P13968063939419374626

`n!*∑[1/n!]`
-/

namespace A000522.P13968063939419374626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000522.P13968063939419374626

namespace A000522

/-- `n!*∑[1/n!]` -/
def P13968063939419374626.Spec : Prop :=
  ∀ n, P13968063939419374626.a n = (A000522 n : ℚ)

end A000522

/-! ## A000522.P6986232779230039384

`1-floor(-(n*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000522.P6986232779230039384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A000522.P6986232779230039384

namespace A000522

/-- `1-floor(-(n*a(n-1)))` -/
def P6986232779230039384.Spec : Prop :=
  ∀ n, P6986232779230039384.a n = A000522 n

end A000522

/-! ## A000522.P13699541095656273005

`1-ceil(-(n*a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A000522.P13699541095656273005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A000522.P13699541095656273005

namespace A000522

/-- `1-ceil(-(n*a(n-1)))` -/
def P13699541095656273005.Spec : Prop :=
  ∀ n, P13699541095656273005.a n = A000522 n

end A000522

/-! ## A000522.P4515761164755836862

`abs(xor(n*a(n-1), -1))` with `a(0)=1`
-/

namespace A000522.P4515761164755836862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor ((n : ℤ) * a (n - 1)) (-1)|

end

end A000522.P4515761164755836862

namespace A000522

/-- `abs(xor(n*a(n-1), -1))` -/
def P4515761164755836862.Spec : Prop :=
  ∀ n, P4515761164755836862.a n = A000522 n

end A000522

/-!
# A000523: a(n) = floor(log_2(n)).

The programs for A000523, the canonical program `A000523.P3314682526375882520` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000523 has offset 1).

The definition of A000523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))` (program `A000523.P3314682526375882520`, by `A000523.P3314682526375882520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000523.P3314682526375882520

`floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000523

/-- `floor(log2(n+1))` -/
def P3314682526375882520.Spec : Prop :=
  ∀ n, (P3314682526375882520.a n : ℤ) = A000523 (n + 1)

theorem P3314682526375882520.correct : P3314682526375882520.Spec := by
  intro n
  simp only [A000523, Nat.add_sub_cancel]

end A000523

/-! ## A000523.P7110260380636736999

`a(floor((n+1)/2)-1)+1` with `a(0)=0`
-/

namespace A000523.P7110260380636736999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1

end

end A000523.P7110260380636736999

namespace A000523

/-- `a(floor((n+1)/2)-1)+1` -/
def P7110260380636736999.Spec : Prop :=
  ∀ n, (P7110260380636736999.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P6332265902927997432

`A113473(n+1)-1`
-/

namespace A000523.P6332265902927997432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - 1

end

end A000523.P6332265902927997432

namespace A000523

/-- `A113473(n+1)-1` -/
def P6332265902927997432.Spec : Prop :=
  ∀ n, P6332265902927997432.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P1808591395846087338

`A070939(n+1)-1`
-/

namespace A000523.P1808591395846087338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - 1

end

end A000523.P1808591395846087338

namespace A000523

/-- `A070939(n+1)-1` -/
def P1808591395846087338.Spec : Prop :=
  ∀ n, P1808591395846087338.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P13497661969828391487

`∑[char[xor(n, n+1)]]`
-/

namespace A000523.P13497661969828391487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000523.P13497661969828391487

namespace A000523

/-- `∑[char[xor(n, n+1)]]` -/
def P13497661969828391487.Spec : Prop :=
  ∀ n, (P13497661969828391487.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P6770914514368547489

`abs(ceil(log2(acot(n+1))))`
-/

namespace A000523.P6770914514368547489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉|

end

end A000523.P6770914514368547489

namespace A000523

/-- `abs(ceil(log2(acot(n+1))))` -/
def P6770914514368547489.Spec : Prop :=
  ∀ n, P6770914514368547489.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P12696064353755098055

`-ceil(log2(acot(n+1)))`
-/

namespace A000523.P12696064353755098055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A000523.P12696064353755098055

namespace A000523

/-- `-ceil(log2(acot(n+1)))` -/
def P12696064353755098055.Spec : Prop :=
  ∀ n, P12696064353755098055.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P11149630889851971474

`ceil(log2(cosh(log(n+1))))`
-/

namespace A000523.P11149630889851971474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cosh (Real.log (n + 1 : ℝ)))⌉

end

end A000523.P11149630889851971474

namespace A000523

/-- `ceil(log2(cosh(log(n+1))))` -/
def P11149630889851971474.Spec : Prop :=
  ∀ n, P11149630889851971474.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P3373352038764932148

`ceil(log2(sinh(log(n+2))))`
-/

namespace A000523.P3373352038764932148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sinh (Real.log (n + 2 : ℝ)))⌉

end

end A000523.P3373352038764932148

namespace A000523

/-- `ceil(log2(sinh(log(n+2))))` -/
def P3373352038764932148.Spec : Prop :=
  ∀ n, P3373352038764932148.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P8732344285481378081

`∑[char[∑{d}[2^n, #]]]`
-/

namespace A000523.P8732344285481378081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000523.P8732344285481378081

namespace A000523

/-- `∑[char[∑{d}[2^n, #]]]` -/
def P8732344285481378081.Spec : Prop :=
  ∀ n, (P8732344285481378081.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P2026659867892797670

`round(log2(sqrt(C(n+2, 2))))`
-/

namespace A000523.P2026659867892797670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (Nat.choose (n + 2) 2 : ℝ)))

end

end A000523.P2026659867892797670

namespace A000523

/-- `round(log2(sqrt(C(n+2, 2))))` -/
def P2026659867892797670.Spec : Prop :=
  ∀ n, P2026659867892797670.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P14622739333143006629

`ceil(log2(cot(2/(n+2))))`
-/

namespace A000523.P14622739333143006629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cot (2 / (n + 2 : ℚ) : ℝ))⌉

end

end A000523.P14622739333143006629

namespace A000523

/-- `ceil(log2(cot(2/(n+2))))` -/
def P14622739333143006629.Spec : Prop :=
  ∀ n, P14622739333143006629.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P7451323866201388347

`∑[and(1, char[∑[2^n]])]`
-/

namespace A000523.P7451323866201388347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000523.P7451323866201388347

namespace A000523

/-- `∑[and(1, char[∑[2^n]])]` -/
def P7451323866201388347.Spec : Prop :=
  ∀ n, (P7451323866201388347.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P13121350840793066072

`∑[char[or(1, ∑[2^n])]]`
-/

namespace A000523.P13121350840793066072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000523.P13121350840793066072

namespace A000523

/-- `∑[char[or(1, ∑[2^n])]]` -/
def P13121350840793066072.Spec : Prop :=
  ∀ n, (P13121350840793066072.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P16774727268886654170

`∑[char[record[or(n, n+1)]]]`
-/

namespace A000523.P16774727268886654170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000523.P16774727268886654170

namespace A000523

/-- `∑[char[record[or(n, n+1)]]]` -/
def P16774727268886654170.Spec : Prop :=
  ∀ n, (P16774727268886654170.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P17197721550278830293

`∑[char[ogf(1/(1-3x+2x^2))]]`
-/

namespace A000523.P17197721550278830293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 2] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000523.P17197721550278830293

namespace A000523

/-- `∑[char[ogf(1/(1-3x+2x^2))]]` -/
def P17197721550278830293.Spec : Prop :=
  ∀ n, (P17197721550278830293.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P9260609042525815370

`1+a(floor((n-1)/2))` with `a(0)=0`
-/

namespace A000523.P9260609042525815370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A000523.P9260609042525815370

namespace A000523

/-- `1+a(floor((n-1)/2))` -/
def P9260609042525815370.Spec : Prop :=
  ∀ n, (P9260609042525815370.a n : ℤ) = A000523 (n + 1)

end A000523

/-! ## A000523.P6280553203798702044

`∑[∏{p}[n+1, val(#, 2)]]-1`
-/

namespace A000523.P6280553203798702044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000523.P6280553203798702044

namespace A000523

/-- `∑[∏{p}[n+1, val(#, 2)]]-1` -/
def P6280553203798702044.Spec : Prop :=
  ∀ n, P6280553203798702044.a n = A000523 (n + 1)

end A000523

/-! ## A000523.P2517205739410409962

`∑[C(2, ∑{p}[n+1, #])]-1`
-/

namespace A000523.P2517205739410409962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000523.P2517205739410409962

namespace A000523

/-- `∑[C(2, ∑{p}[n+1, #])]-1` -/
def P2517205739410409962.Spec : Prop :=
  ∀ n, P2517205739410409962.a n = A000523 (n + 1)

end A000523

/-!
# A000524: Number of rooted trees with n nodes, 2 of which are labeled.

The programs for A000524, there is no canonical definition to state claims against.
-/

/-! ## A000524.P14800082033389789698

`A008295(∑[n+2]+3)`
-/

namespace A000524.P14800082033389789698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000524.P14800082033389789698

/-! ## A000524.P12903973799778016559

`A008295(A133263(n+2))+A000007(2*(n+1))`
-/

namespace A000524.P12903973799778016559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A133263 (n + 2)).toNat + A000007 (2 * (n + 1))

end

end A000524.P12903973799778016559

/-! ## A000524.P16923370606556921681

`A008295(A133263(n+2))*A178334(3*(n+1))`
-/

namespace A000524.P16923370606556921681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A133263 (n + 2)).toNat * A178334 (3 * (n + 1))

end

end A000524.P16923370606556921681

/-!
# A000525: Number of partially labeled rooted trees with n nodes (4 of which are labeled).

The programs for A000525, there is no canonical definition to state claims against.
-/

/-! ## A000525.P6527335825085521072

`A008295(eq[3, A141169(n)])`
-/

namespace A000525.P6527335825085521072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000525.P6527335825085521072

/-! ## A000525.P6793783947593453320

`A008295(eq[4, A002262(n)])`
-/

namespace A000525.P6793783947593453320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000525.P6793783947593453320

/-! ## A000525.P16659721814862838173

`A008295(eq[5, A140207(n)])`
-/

namespace A000525.P16659721814862838173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000525.P16659721814862838173

/-! ## A000525.P7994574356421136029

`A008295(eq[16, A059268(n)])`
-/

namespace A000525.P7994574356421136029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000525.P7994574356421136029

/-! ## A000525.P17118871242995130153

`A008295(A133263(n+4)+2)`
-/

namespace A000525.P17118871242995130153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A133263 (n + 4) + 2).toNat

end

end A000525.P17118871242995130153

/-!
# A000526: Number of partially labeled trees with n nodes (5 of which are labeled).

The programs for A000526, there is no canonical definition to state claims against.
-/

/-! ## A000526.P4368413867252352663

`A034799(eq[5, A002262(n)])`
-/

namespace A000526.P4368413867252352663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000526.P4368413867252352663

/-! ## A000526.P3290416261668984606

`A034799(eq[5, A141169(n)])`
-/

namespace A000526.P3290416261668984606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000526.P3290416261668984606

/-! ## A000526.P14465208819301316282

`A034799(eq[7, A140207(n)])`
-/

namespace A000526.P14465208819301316282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000526.P14465208819301316282

/-! ## A000526.P4544981336861818220

`A034799(eq[5, A025675(n+1)])`
-/

namespace A000526.P4544981336861818220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000526.P4544981336861818220

/-! ## A000526.P2419742508380307849

`A034799(eq[6, A002260(n+1)])`
-/

namespace A000526.P2419742508380307849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000526.P2419742508380307849

/-!
# A000527: Series-parallel numbers.

The programs for A000527, there is no canonical definition to state claims against.
-/

/-! ## A000527.P11162397066732639321

`A036654(A155212(n)+12)`
-/

namespace A000527.P11162397066732639321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (A155212 n + 12).toNat

end

end A000527.P11162397066732639321

/-! ## A000527.P8096897188708456632

`A036654(eq[4, A002262(n)])`
-/

namespace A000527.P8096897188708456632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000527.P8096897188708456632

/-! ## A000527.P12191839287833260103

`A036654(eq[16, A059268(n)])`
-/

namespace A000527.P12191839287833260103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000527.P12191839287833260103

/-! ## A000527.P18051342928772400936

`A036654(eq[5, A002260(n+1)])`
-/

namespace A000527.P18051342928772400936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000527.P18051342928772400936

/-! ## A000527.P2755719053279099212

`A036654(eq[11, A037126(n+1)])`
-/

namespace A000527.P2755719053279099212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000527.P2755719053279099212

/-!
# A000528: Number of types of Latin squares of order n. Equivalently, number of nonisomorphic 1-factorizations of K_{n,n}.

The programs for A000528, there is no canonical definition to state claims against.
-/

/-! ## A000528.P86196983951794854

`A117267(A288146(n))`
-/

namespace A000528.P86196983951794854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117267 (A288146 n).toNat

end

end A000528.P86196983951794854

/-! ## A000528.P12766826015813907907

`A035250(∏[A213091(n)])`
-/

namespace A000528.P12766826015813907907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000528.P12766826015813907907

/-! ## A000528.P16468286440691544951

`A208993(record[abs(A137346(n))])`
-/

namespace A000528.P16468286440691544951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137346 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000528.P16468286440691544951

/-!
# A000529: Powers of rooted tree enumerator.

The programs for A000529, the canonical program `A000529.P3189955386639158654` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000529 has offset 1).

The definition of A000529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000529.P3189955386639158654

`∑[∑[A023545(n+2)]+3]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000529

/-- `∑[∑[A023545(n+2)]+3]` -/
def P3189955386639158654.Spec : Prop :=
  ∀ n, P3189955386639158654.a n = A000529 (n + 1)

theorem P3189955386639158654.correct : P3189955386639158654.Spec := by
  intro n
  simp only [A000529, Nat.add_sub_cancel]

end A000529

/-! ## A000529.P380762910975149790

`A006503(n)+∑[A006504(n+2)]`
-/

namespace A000529.P380762910975149790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P380762910975149790

namespace A000529

/-- `A006503(n)+∑[A006504(n+2)]` -/
def P380762910975149790.Spec : Prop :=
  ∀ n, P380762910975149790.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P13425668894299562702

`∑[A055998(n)+A006504(n+2)]`
-/

namespace A000529.P13425668894299562702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A006504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P13425668894299562702

namespace A000529

/-- `∑[A055998(n)+A006504(n+2)]` -/
def P13425668894299562702.Spec : Prop :=
  ∀ n, P13425668894299562702.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P17995285067517402809

`∑[A005586(n)+A005287(n+5)]`
-/

namespace A000529.P17995285067517402809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + A005287 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P17995285067517402809

namespace A000529

/-- `∑[A005586(n)+A005287(n+5)]` -/
def P17995285067517402809.Spec : Prop :=
  ∀ n, P17995285067517402809.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P17559047615729335306

`∑[A005287(n+5)+A005286(n)-1]`
-/

namespace A000529.P17559047615729335306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 5) + (A005286 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P17559047615729335306

namespace A000529

/-- `∑[A005287(n+5)+A005286(n)-1]` -/
def P17559047615729335306.Spec : Prop :=
  ∀ n, P17559047615729335306.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P1828543342694625715

`∑[A006504(n+2)+A000096(n)+n]`
-/

namespace A000529.P1828543342694625715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 2) + (A000096 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P1828543342694625715

namespace A000529

/-- `∑[A006504(n+2)+A000096(n)+n]` -/
def P1828543342694625715.Spec : Prop :=
  ∀ n, P1828543342694625715.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P5328573742749485485

`∑[A000332(n+8)-A001105(n+5)]`
-/

namespace A000529.P5328573742749485485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 8) - A001105 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P5328573742749485485

namespace A000529

/-- `∑[A000332(n+8)-A001105(n+5)]` -/
def P5328573742749485485.Spec : Prop :=
  ∀ n, P5328573742749485485.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P1788423942122530618

`A339067(A052905(n+3))`
-/

namespace A000529.P1788423942122530618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A052905 (n + 3)).toNat

end

end A000529.P1788423942122530618

namespace A000529

/-- `A339067(A052905(n+3))` -/
def P1788423942122530618.Spec : Prop :=
  ∀ n, P1788423942122530618.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P12777046914061203705

`A339067(Δ[A023545(n+2)]-1)`
-/

namespace A000529.P12777046914061203705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (f1 (n + 1) - f1 n - 1).toNat

end

end A000529.P12777046914061203705

namespace A000529

/-- `A339067(Δ[A023545(n+2)]-1)` -/
def P12777046914061203705.Spec : Prop :=
  ∀ n, P12777046914061203705.a n = A000529 (n + 1)

end A000529

/-! ## A000529.P5879560210807582973

`A339067((n+5)²-A167614(n+2))`
-/

namespace A000529.P5879560210807582973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (((n + 5) ^ 2 : ℤ) - A167614 (n + 2)).toNat

end

end A000529.P5879560210807582973

namespace A000529

/-- `A339067((n+5)²-A167614(n+2))` -/
def P5879560210807582973.Spec : Prop :=
  ∀ n, P5879560210807582973.a n = A000529 (n + 1)

end A000529

/-!
# A000530: Let p(n, s, x) be predicate that number of occurrences of s's in x >= 2*n - the length of the longest sequence of s's in x. Then a(n)=#{x in {0,1}* | x ends in 0 and p(n,0,x) and (there is no prefix y of x such that p(n,0,y) or p(n,1,y))}.

The programs for A000530, there is no canonical definition to state claims against.
-/

/-! ## A000530.P11125980845613702220

`A074147(A229651(n)+A084520(n))`
-/

namespace A000530.P11125980845613702220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A229651 n + A084520 n).toNat

end

end A000530.P11125980845613702220

/-!
# A000531: From area of cyclic polygon of 2n + 1 sides.

The programs for A000531, the canonical program `A000531.P3974317347879618799` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000531 has offset 1).

The definition of A000531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000531.P3974317347879618799

`((2*(n+1)+1)!/(n+1)!²-4^(n+1))/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000531

/-- `((2*(n+1)+1)!/(n+1)!²-4^(n+1))/2` -/
def P3974317347879618799.Spec : Prop :=
  ∀ n, P3974317347879618799.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P14508772923009973685

`∏[2/(n+1)+4]/2-2*4^n`
-/

namespace A000531.P14508772923009973685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (2 * 4 ^ n : ℚ)

end

end A000531.P14508772923009973685

namespace A000531

/-- `∏[2/(n+1)+4]/2-2*4^n` -/
def P14508772923009973685.Spec : Prop :=
  ∀ n, P14508772923009973685.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P15208092294368478756

`A296663(Δ[n²])`
-/

namespace A000531.P15208092294368478756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000531.P15208092294368478756

namespace A000531

/-- `A296663(Δ[n²])` -/
def P15208092294368478756.Spec : Prop :=
  ∀ n, P15208092294368478756.a n = A000531 (n + 1)

end A000531

/-! ## A000531.P963725755851896922

`A172060(n+1)/2`
-/

namespace A000531.P963725755851896922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172060 (n + 1) : ℚ) / 2

end

end A000531.P963725755851896922

namespace A000531

/-- `A172060(n+1)/2` -/
def P963725755851896922.Spec : Prop :=
  ∀ n, P963725755851896922.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P2378618655338012829

`A107373(2*n+3)`
-/

namespace A000531.P2378618655338012829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * n + 3)

end

end A000531.P2378618655338012829

namespace A000531

/-- `A107373(2*n+3)` -/
def P2378618655338012829.Spec : Prop :=
  ∀ n, P2378618655338012829.a n = A000531 (n + 1)

end A000531

/-! ## A000531.P1635684033498294509

`abs(∏[2/(n+1)+4]/2-A004171(n))`
-/

namespace A000531.P1635684033498294509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (A004171 n : ℚ)|

end

end A000531.P1635684033498294509

namespace A000531

/-- `abs(∏[2/(n+1)+4]/2-A004171(n))` -/
def P1635684033498294509.Spec : Prop :=
  ∀ n, P1635684033498294509.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P10061954046547467365

`A048896(n)*A173384(n+1)`
-/

namespace A000531.P10061954046547467365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A173384 (n + 1)

end

end A000531.P10061954046547467365

namespace A000531

/-- `A048896(n)*A173384(n+1)` -/
def P10061954046547467365.Spec : Prop :=
  ∀ n, P10061954046547467365.a n = A000531 (n + 1)

end A000531

/-! ## A000531.P4713123444667222266

`(A002457(n+1)-A000302(n+1))/2`
-/

namespace A000531.P4713123444667222266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 (n + 1) - A000302 (n + 1) : ℚ) / 2

end

end A000531.P4713123444667222266

namespace A000531

/-- `(A002457(n+1)-A000302(n+1))/2` -/
def P4713123444667222266.Spec : Prop :=
  ∀ n, P4713123444667222266.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P15507285298560388724

`(A296770(n+1)-A001700(n+1))/2`
-/

namespace A000531.P15507285298560388724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296770 (n + 1) - A001700 (n + 1) : ℚ) / 2

end

end A000531.P15507285298560388724

namespace A000531

/-- `(A296770(n+1)-A001700(n+1))/2` -/
def P15507285298560388724.Spec : Prop :=
  ∀ n, P15507285298560388724.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P6502078562261976288

`A001316(n+1)/2*A173384(n+1)`
-/

namespace A000531.P6502078562261976288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) : ℚ) / 2 * (A173384 (n + 1) : ℚ)

end

end A000531.P6502078562261976288

namespace A000531

/-- `A001316(n+1)/2*A173384(n+1)` -/
def P6502078562261976288.Spec : Prop :=
  ∀ n, P6502078562261976288.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P13988002720977760214

`record[A194590(n+2)]`
-/

namespace A000531.P13988002720977760214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000531.P13988002720977760214

namespace A000531

/-- `record[A194590(n+2)]` -/
def P13988002720977760214.Spec : Prop :=
  ∀ n, P13988002720977760214.a n = A000531 (n + 1)

end A000531

/-! ## A000531.P3468084256586717527

`A194590(2*(n+1))`
-/

namespace A000531.P3468084256586717527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (2 * (n + 1))

end

end A000531.P3468084256586717527

namespace A000531

/-- `A194590(2*(n+1))` -/
def P3468084256586717527.Spec : Prop :=
  ∀ n, P3468084256586717527.a n = A000531 (n + 1)

end A000531

/-! ## A000531.P14669919293194035721

`A068552(n+2)/8`
-/

namespace A000531.P14669919293194035721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068552 (n + 2) : ℚ) / 8

end

end A000531.P14669919293194035721

namespace A000531

/-- `A068552(n+2)/8` -/
def P14669919293194035721.Spec : Prop :=
  ∀ n, P14669919293194035721.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P3602418748362023620

`(A241524(n+1)-A079028(n+1))/2`
-/

namespace A000531.P3602418748362023620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241524 (n + 1) - A079028 (n + 1) : ℚ) / 2

end

end A000531.P3602418748362023620

namespace A000531

/-- `(A241524(n+1)-A079028(n+1))/2` -/
def P3602418748362023620.Spec : Prop :=
  ∀ n, P3602418748362023620.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P3018314771370666878

`A221058(2*n+3)/(n+1)`
-/

namespace A000531.P3018314771370666878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221058 (2 * n + 3) : ℚ) / (n + 1 : ℚ)

end

end A000531.P3018314771370666878

namespace A000531

/-- `A221058(2*n+3)/(n+1)` -/
def P3018314771370666878.Spec : Prop :=
  ∀ n, P3018314771370666878.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P12301097924399582686

`A118447(n+2)/(2*(n+2))`
-/

namespace A000531.P12301097924399582686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118447 (n + 2) : ℚ) / (2 * (n + 2) : ℚ)

end

end A000531.P12301097924399582686

namespace A000531

/-- `A118447(n+2)/(2*(n+2))` -/
def P12301097924399582686.Spec : Prop :=
  ∀ n, P12301097924399582686.a n = (A000531 (n + 1) : ℚ)

end A000531

/-! ## A000531.P12478983206995342366

`A046658(∑[n+1]+2)`
-/

namespace A000531.P12478983206995342366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000531.P12478983206995342366

namespace A000531

/-- `A046658(∑[n+1]+2)` -/
def P12478983206995342366.Spec : Prop :=
  ∀ n, P12478983206995342366.a n = A000531 (n + 1)

end A000531

/-!
# A000532: Number of Hamiltonian paths from NW to SW corners in an n X n grid.

The programs for A000532, there is no canonical definition to state claims against.
-/

/-! ## A000532.P15300378132320118445

`A271592(∑[4*n]+1)`
-/

namespace A000532.P15300378132320118445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000532.P15300378132320118445

/-! ## A000532.P11464292625407297721

`lcm((-1)^n, A271592(A001844(n)))`
-/

namespace A000532.P11464292625407297721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A271592 (A001844 n).toNat)

end

end A000532.P11464292625407297721

/-! ## A000532.P13659035483217222231

`gcd(A000038(n), A271592(A001844(n)))`
-/

namespace A000532.P13659035483217222231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A271592 (A001844 n).toNat)

end

end A000532.P13659035483217222231

/-! ## A000532.P10113854534983920780

`A014963(12*n+6)*A271592(A001844(n))`
-/

namespace A000532.P10113854534983920780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A271592 (A001844 n).toNat

end

end A000532.P10113854534983920780

/-! ## A000532.P12977731617072023704

`val(A005117(n+2), 3)!*A271592(A001844(n))`
-/

namespace A000532.P12977731617072023704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ) * A271592 (A001844 n).toNat

end

end A000532.P12977731617072023704

/-!
# A000533: a(0)=1; a(n) = 10^n + 1, n >= 1.

The programs for A000533, the canonical program `A000533.P11203370058495839217` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000533 has offset 0).

The definition of A000533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000533.P11203370058495839217

`A178500(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000533

/-- `A178500(n)+1` -/
def P11203370058495839217.Spec : Prop :=
  ∀ n, P11203370058495839217.a n = A000533 n

theorem P11203370058495839217.correct : P11203370058495839217.Spec := by
  intro n
  simp only [A000533]

end A000533

/-! ## A000533.P13362132710362738353

`or(1, 10^n)`
-/

namespace A000533.P13362132710362738353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n)

end

end A000533.P13362132710362738353

namespace A000533

/-- `or(1, 10^n)` -/
def P13362132710362738353.Spec : Prop :=
  ∀ n, (P13362132710362738353.a n : ℤ) = A000533 n

end A000533

/-! ## A000533.P17092817922967431310

`ceil(tanh(n)+10^n)`
-/

namespace A000533.P17092817922967431310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n : ℝ) + (10 ^ n : ℝ)⌉

end

end A000533.P17092817922967431310

namespace A000533

/-- `ceil(tanh(n)+10^n)` -/
def P17092817922967431310.Spec : Prop :=
  ∀ n, P17092817922967431310.a n = A000533 n

end A000533

/-! ## A000533.P16667088898732713357

`round(tanh(n)+10^n)`
-/

namespace A000533.P16667088898732713357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (n : ℝ) + (10 ^ n : ℝ))

end

end A000533.P16667088898732713357

namespace A000533

/-- `round(tanh(n)+10^n)` -/
def P16667088898732713357.Spec : Prop :=
  ∀ n, P16667088898732713357.a n = A000533 n

end A000533

/-! ## A000533.P6903794024248967111

`and(10^n, -2)+1`
-/

namespace A000533.P6903794024248967111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2) + 1

end

end A000533.P6903794024248967111

namespace A000533

/-- `and(10^n, -2)+1` -/
def P6903794024248967111.Spec : Prop :=
  ∀ n, P6903794024248967111.a n = A000533 n

end A000533

/-! ## A000533.P12319602620800814305

`xor(1, and(10^n, -2))`
-/

namespace A000533.P12319602620800814305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (10 ^ n : ℤ) (-2))

end

end A000533.P12319602620800814305

namespace A000533

/-- `xor(1, and(10^n, -2))` -/
def P12319602620800814305.Spec : Prop :=
  ∀ n, P12319602620800814305.a n = A000533 n

end A000533

/-! ## A000533.P9415509286360158147

`xor(10^n, ceil(abs(sin(n))))`
-/

namespace A000533.P9415509286360158147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (10 ^ n : ℤ) ⌈|Real.sin (n : ℝ)|⌉

end

end A000533.P9415509286360158147

namespace A000533

/-- `xor(10^n, ceil(abs(sin(n))))` -/
def P9415509286360158147.Spec : Prop :=
  ∀ n, P9415509286360158147.a n = A000533 n

end A000533

/-! ## A000533.P9123614868408362159

`ogf((1-10x^2)/(1-11x+10x^2))`
-/

namespace A000533.P9123614868408362159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -10] [1, -11, 10] n

end

end A000533.P9123614868408362159

namespace A000533

/-- `ogf((1-10x^2)/(1-11x+10x^2))` -/
def P9123614868408362159.Spec : Prop :=
  ∀ n, P9123614868408362159.a n = A000533 n

end A000533

/-! ## A000533.P3214853867709808280

`floor(atan(n+1)+10^n)`
-/

namespace A000533.P3214853867709808280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (10 ^ n : ℝ)⌋

end

end A000533.P3214853867709808280

namespace A000533

/-- `floor(atan(n+1)+10^n)` -/
def P3214853867709808280.Spec : Prop :=
  ∀ n, P3214853867709808280.a n = A000533 n

end A000533

/-! ## A000533.P17815767659905044519

`10*a(n-1)-9` with `a(0)=1, a(1)=11`
-/

namespace A000533.P17815767659905044519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  10 * a (n - 1) - 9

end

end A000533.P17815767659905044519

namespace A000533

/-- `10*a(n-1)-9` -/
def P17815767659905044519.Spec : Prop :=
  ∀ n, P17815767659905044519.a n = A000533 n

end A000533

/-! ## A000533.P10052049301137537204

`abs(floor(acot(n))-(10^n+1))`
-/

namespace A000533.P10052049301137537204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (n : ℝ)⌋ - (10 ^ n + 1 : ℤ)|

end

end A000533.P10052049301137537204

namespace A000533

/-- `abs(floor(acot(n))-(10^n+1))` -/
def P10052049301137537204.Spec : Prop :=
  ∀ n, P10052049301137537204.a n = A000533 n

end A000533

/-! ## A000533.P786246928722568417

`a(n-1)%2+10^n` with `a(0)=1`
-/

namespace A000533.P786246928722568417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) % 2 + 10 ^ n

end

end A000533.P786246928722568417

namespace A000533

/-- `a(n-1)%2+10^n` -/
def P786246928722568417.Spec : Prop :=
  ∀ n, (P786246928722568417.a n : ℤ) = A000533 n

end A000533

/-! ## A000533.P11787178124145934980

`gcd(2, a(n-1))+10^n` with `a(0)=1`
-/

namespace A000533.P11787178124145934980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (a (n - 1)) + 10 ^ n

end

end A000533.P11787178124145934980

namespace A000533

/-- `gcd(2, a(n-1))+10^n` -/
def P11787178124145934980.Spec : Prop :=
  ∀ n, (P11787178124145934980.a n : ℤ) = A000533 n

end A000533

/-! ## A000533.P15306905869329851339

`xor(10^n, (n+2)%(n+1))`
-/

namespace A000533.P15306905869329851339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (10 ^ n) ((n + 2) % (n + 1))

end

end A000533.P15306905869329851339

namespace A000533

/-- `xor(10^n, (n+2)%(n+1))` -/
def P15306905869329851339.Spec : Prop :=
  ∀ n, (P15306905869329851339.a n : ℤ) = A000533 n

end A000533

/-! ## A000533.P9497263158025300220

`10*A178501(n)+1`
-/

namespace A000533.P9497263158025300220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A178501 n + 1

end

end A000533.P9497263158025300220

namespace A000533

/-- `10*A178501(n)+1` -/
def P9497263158025300220.Spec : Prop :=
  ∀ n, P9497263158025300220.a n = A000533 n

end A000533

/-! ## A000533.P11326295525370464413

`A266959(n+1)-n`
-/

namespace A000533.P11326295525370464413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266959 (n + 1) - (n : ℤ)

end

end A000533.P11326295525370464413

namespace A000533

/-- `A266959(n+1)-n` -/
def P11326295525370464413.Spec : Prop :=
  ∀ n, P11326295525370464413.a n = A000533 n

end A000533

/-! ## A000533.P8656111199188849959

`∑{d}[n, A218127(#)]+1`
-/

namespace A000533.P8656111199188849959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A218127 d + 1

end

end A000533.P8656111199188849959

namespace A000533

/-- `∑{d}[n, A218127(#)]+1` -/
def P8656111199188849959.Spec : Prop :=
  ∀ n, P8656111199188849959.a n = A000533 n

end A000533

/-! ## A000533.P4273018005356806183

`abs(1-A103461(n))+1`
-/

namespace A000533.P4273018005356806183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A103461 n| + 1

end

end A000533.P4273018005356806183

namespace A000533

/-- `abs(1-A103461(n))+1` -/
def P4273018005356806183.Spec : Prop :=
  ∀ n, P4273018005356806183.a n = A000533 n

end A000533

/-! ## A000533.P12609403948353420222

`A063945(n)+a(n-1)` with `a(0)=1`
-/

namespace A000533.P12609403948353420222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063945 n + a (n - 1)

end

end A000533.P12609403948353420222

namespace A000533

/-- `A063945(n)+a(n-1)` -/
def P12609403948353420222.Spec : Prop :=
  ∀ n, P12609403948353420222.a n = A000533 n

end A000533

/-! ## A000533.P5092567863506353925

`A109882(A017185(n))`
-/

namespace A000533.P5092567863506353925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109882 (A017185 n).toNat

end

end A000533.P5092567863506353925

namespace A000533

/-- `A109882(A017185(n))` -/
def P5092567863506353925.Spec : Prop :=
  ∀ n, P5092567863506353925.a n = A000533 n

end A000533

/-!
# A000534: Numbers that are not the sum of 4 nonzero squares.

The programs for A000534, there is no canonical definition to state claims against.
-/

/-! ## A000534.P18225922965174565431

`eq[0, A025428(n)]`
-/

namespace A000534.P18225922965174565431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000534.P18225922965174565431

/-! ## A000534.P13381900911523340046

`eq[0, A037216(n)]`
-/

namespace A000534.P13381900911523340046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000534.P13381900911523340046

/-! ## A000534.P4671373215323409280

`eq[0, A063730(n)]`
-/

namespace A000534.P4671373215323409280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000534.P4671373215323409280

/-! ## A000534.P551861226163801943

`eq[0, A307510(n)]`
-/

namespace A000534.P551861226163801943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000534.P551861226163801943

/-! ## A000534.P3608538908316641837

`eq[0, A347803(n)]`
-/

namespace A000534.P3608538908316641837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000534.P3608538908316641837

/-!
# A000535: Card matching: coefficients B[n,2] of t^2 in the reduced hit polynomial A[n,n,n](t).

The programs for A000535, there is no canonical definition to state claims against.
-/

/-! ## A000535.P7865827347788331993

`A059066(∑[A016777(n)]+2)`
-/

namespace A000535.P7865827347788331993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A000535.P7865827347788331993

/-! ## A000535.P10786333817600108920

`A059066(A143689(n+1)+1)`
-/

namespace A000535.P10786333817600108920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A143689 (n + 1) + 1).toNat

end

end A000535.P10786333817600108920

/-! ## A000535.P7341042093272406123

`A059066(A000326(n+1)+2)`
-/

namespace A000535.P7341042093272406123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A000326 (n + 1) + 2).toNat

end

end A000535.P7341042093272406123

/-! ## A000535.P11993691644064261357

`A059066(A166136(3*n+1)/3)`
-/

namespace A000535.P11993691644064261357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (SequenceMachineLib.roundAway ((A166136 (3 * n + 1) : ℚ) / 3)).toNat

end

end A000535.P11993691644064261357

/-!
# A000536: Number of 3-line Latin rectangles.

The programs for A000536, there is no canonical definition to state claims against.
-/

/-! ## A000536.P11334638950231052185

`(n+4)*A037184(n+3)`
-/

namespace A000536.P11334638950231052185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A037184 (n + 3)

end

end A000536.P11334638950231052185

/-! ## A000536.P10832589490770772797

`A033486(n+1)*A055790(n+1)`
-/

namespace A000536.P10832589490770772797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 (n + 1) * A055790 (n + 1)

end

end A000536.P10832589490770772797

/-! ## A000536.P17626832310997845631

`(A028552(n+2)+2)*A105927(n+2)`
-/

namespace A000536.P17626832310997845631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028552 (n + 2) + 2) * A105927 (n + 2)

end

end A000536.P17626832310997845631

/-! ## A000536.P2687730427967554025

`(n+4)*(A000166(n+3)-A000166(n+1))*A000217(n+2)`
-/

namespace A000536.P2687730427967554025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * ((A000166 (n + 3) - A000166 (n + 1)) * A000217 (n + 2))

end

end A000536.P2687730427967554025

/-!
# A000537: Sum of first n cubes; or n-th triangular number squared.

The programs for A000537, the canonical program `A000537.P7887993002585723883` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000537 has offset 0).

The definition of A000537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000537.P6518055178795695200

`C(n+1, 2)²`
-/

namespace A000537.P6518055178795695200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

end

end A000537.P6518055178795695200

namespace A000537

/-- `C(n+1, 2)²` -/
def P6518055178795695200.Spec : Prop :=
  ∀ n, (P6518055178795695200.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P7584303593881617082

`(n*(n+1)/2)²`
-/

namespace A000537.P7584303593881617082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℚ) / 2) ^ 2

end

end A000537.P7584303593881617082

namespace A000537

/-- `(n*(n+1)/2)²` -/
def P7584303593881617082.Spec : Prop :=
  ∀ n, P7584303593881617082.a n = (A000537 n : ℚ)

end A000537

/-! ## A000537.P11506434704047813329

`6*C(n+2, 4)+C(n+1, 2)`
-/

namespace A000537.P11506434704047813329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 2) 4 + Nat.choose (n + 1) 2

end

end A000537.P11506434704047813329

namespace A000537

/-- `6*C(n+2, 4)+C(n+1, 2)` -/
def P11506434704047813329.Spec : Prop :=
  ∀ n, (P11506434704047813329.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P9460087997710073397

`A035287(n+1)/4`
-/

namespace A000537.P9460087997710073397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035287 (n + 1) : ℚ) / 4

end

end A000537.P9460087997710073397

namespace A000537

/-- `A035287(n+1)/4` -/
def P9460087997710073397.Spec : Prop :=
  ∀ n, P9460087997710073397.a n = (A000537 n : ℚ)

end A000537

/-! ## A000537.P7887993002585723883

`6*A000332(n+2)+A000217(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000537

/-- `6*A000332(n+2)+A000217(n)` -/
def P7887993002585723883.Spec : Prop :=
  ∀ n, P7887993002585723883.a n = A000537 n

theorem P7887993002585723883.correct : P7887993002585723883.Spec := by
  intro n
  simp only [A000537]

end A000537

/-! ## A000537.P3476634321139240397

`A000217((n+1)²)-A000217(n+1)²`
-/

namespace A000537.P3476634321139240397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1) ^ 2) - A000217 (n + 1) ^ 2

end

end A000537.P3476634321139240397

namespace A000537

/-- `A000217((n+1)²)-A000217(n+1)²` -/
def P3476634321139240397.Spec : Prop :=
  ∀ n, P3476634321139240397.a n = A000537 n

end A000537

/-! ## A000537.P1990471042479457396

`∑[n]^acos(cos(2))`
-/

namespace A000537.P1990471042479457396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A000537.P1990471042479457396

namespace A000537

/-- `∑[n]^acos(cos(2))` -/
def P1990471042479457396.Spec : Prop :=
  ∀ n, P1990471042479457396.a n = (A000537 n : ℝ)

end A000537

/-! ## A000537.P6544776428681753110

`and(∑[n^3], -1)`
-/

namespace A000537.P6544776428681753110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A000537.P6544776428681753110

namespace A000537

/-- `and(∑[n^3], -1)` -/
def P6544776428681753110.Spec : Prop :=
  ∀ n, P6544776428681753110.a n = A000537 n

end A000537

/-! ## A000537.P8081735256005573707

`C(n+1, 2)^2`
-/

namespace A000537.P8081735256005573707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

end

end A000537.P8081735256005573707

namespace A000537

/-- `C(n+1, 2)^2` -/
def P8081735256005573707.Spec : Prop :=
  ∀ n, (P8081735256005573707.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P3649038968843273076

`xor(2, ∑[n]²+2)`
-/

namespace A000537.P3649038968843273076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2)

end

end A000537.P3649038968843273076

namespace A000537

/-- `xor(2, ∑[n]²+2)` -/
def P3649038968843273076.Spec : Prop :=
  ∀ n, (P3649038968843273076.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P3383829136780521567

`∑[n]^or(2, char[1])`
-/

namespace A000537.P3383829136780521567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0)

end

end A000537.P3383829136780521567

namespace A000537

/-- `∑[n]^or(2, char[1])` -/
def P3383829136780521567.Spec : Prop :=
  ∀ n, (P3383829136780521567.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P10029310789635881592

`∑[n]^xor(2, char[1])`
-/

namespace A000537.P10029310789635881592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.xor 2 (if ∃ j, f2 j = n then 1 else 0)

end

end A000537.P10029310789635881592

namespace A000537

/-- `∑[n]^xor(2, char[1])` -/
def P10029310789635881592.Spec : Prop :=
  ∀ n, (P10029310789635881592.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P5290222464829861018

`∑[lcm(n, (-n)^3)]`
-/

namespace A000537.P5290222464829861018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000537.P5290222464829861018

namespace A000537

/-- `∑[lcm(n, (-n)^3)]` -/
def P5290222464829861018.Spec : Prop :=
  ∀ n, (P5290222464829861018.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P2511316512478114833

`lcm(∑[n^3], ∑[n])`
-/

namespace A000537.P2511316512478114833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A000537.P2511316512478114833

namespace A000537

/-- `lcm(∑[n^3], ∑[n])` -/
def P2511316512478114833.Spec : Prop :=
  ∀ n, (P2511316512478114833.a n : ℤ) = A000537 n

end A000537

/-! ## A000537.P16171157733266515121

`floor(∑[n]/acot(∑[n]))`
-/

namespace A000537.P16171157733266515121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌋

end

end A000537.P16171157733266515121

namespace A000537

/-- `floor(∑[n]/acot(∑[n]))` -/
def P16171157733266515121.Spec : Prop :=
  ∀ n, P16171157733266515121.a n = A000537 n

end A000537

/-! ## A000537.P2537405553431215689

`round(∑[n]/acot(∑[n]))`
-/

namespace A000537.P2537405553431215689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

end

end A000537.P2537405553431215689

namespace A000537

/-- `round(∑[n]/acot(∑[n]))` -/
def P2537405553431215689.Spec : Prop :=
  ∀ n, P2537405553431215689.a n = A000537 n

end A000537

/-! ## A000537.P116668695103848568

`∑[n]^ceil(acot(acot(n)))`
-/

namespace A000537.P116668695103848568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉ : ℤ)

end

end A000537.P116668695103848568

namespace A000537

/-- `∑[n]^ceil(acot(acot(n)))` -/
def P116668695103848568.Spec : Prop :=
  ∀ n, P116668695103848568.a n = (A000537 n : ℚ)

end A000537

/-! ## A000537.P18219665656261666360

`or(2, ∑[n^3])-2`
-/

namespace A000537.P18219665656261666360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2

end

end A000537.P18219665656261666360

namespace A000537

/-- `or(2, ∑[n^3])-2` -/
def P18219665656261666360.Spec : Prop :=
  ∀ n, P18219665656261666360.a n = A000537 n

end A000537

/-! ## A000537.P1001633096105708529

`xor(2, ∑[n^3])-2`
-/

namespace A000537.P1001633096105708529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2

end

end A000537.P1001633096105708529

namespace A000537

/-- `xor(2, ∑[n^3])-2` -/
def P1001633096105708529.Spec : Prop :=
  ∀ n, P1001633096105708529.a n = A000537 n

end A000537

/-! ## A000537.P1072111050973225019

`∑[xor(1, xor(1, n^3))]`
-/

namespace A000537.P1072111050973225019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (n ^ 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000537.P1072111050973225019

namespace A000537

/-- `∑[xor(1, xor(1, n^3))]` -/
def P1072111050973225019.Spec : Prop :=
  ∀ n, (P1072111050973225019.a n : ℤ) = A000537 n

end A000537

/-!
# A000538: Sum of fourth powers: 0^4 + 1^4 + ... + n^4.

The programs for A000538, the canonical program `A000538.P5786260250335175589` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000538 has offset 0).

The definition of A000538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000538.P5786260250335175589

`n*(n+1)*(2*n+1)*(3*n²+3*n-1)/30`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000538

/-- `n*(n+1)*(2*n+1)*(3*n²+3*n-1)/30` -/
def P5786260250335175589.Spec : Prop :=
  ∀ n, P5786260250335175589.a n = (A000538 n : ℚ)

end A000538

/-! ## A000538.P5378215975961952619

`floor(∑[n/acot(n^3)])`
-/

namespace A000538.P5378215975961952619
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot (n ^ 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A000538.P5378215975961952619

namespace A000538

/-- `floor(∑[n/acot(n^3)])` -/
def P5378215975961952619.Spec : Prop :=
  ∀ n, P5378215975961952619.a n = A000538 n

end A000538

/-! ## A000538.P15699879293940065043

`round(∑[n/acot(n^3)])`
-/

namespace A000538.P15699879293940065043
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot (n ^ 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000538.P15699879293940065043

namespace A000538

/-- `round(∑[n/acot(n^3)])` -/
def P15699879293940065043.Spec : Prop :=
  ∀ n, P15699879293940065043.a n = A000538 n

end A000538

/-! ## A000538.P5716018885517467698

`a(n-1)+n^4` with `a(0)=0`
-/

namespace A000538.P5716018885517467698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 4

end

end A000538.P5716018885517467698

namespace A000538

/-- `a(n-1)+n^4` -/
def P5716018885517467698.Spec : Prop :=
  ∀ n, (P5716018885517467698.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P11870410087318915349

`n²²+a(n-1)` with `a(0)=0`
-/

namespace A000538.P11870410087318915349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2) ^ 2 + a (n - 1)

end

end A000538.P11870410087318915349

namespace A000538

/-- `n²²+a(n-1)` -/
def P11870410087318915349.Spec : Prop :=
  ∀ n, (P11870410087318915349.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P10658706882926793774

`∑[n²²]+and(2, n²)`
-/

namespace A000538.P10658706882926793774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 2 (n ^ 2)

end

end A000538.P10658706882926793774

namespace A000538

/-- `∑[n²²]+and(2, n²)` -/
def P10658706882926793774.Spec : Prop :=
  ∀ n, (P10658706882926793774.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P13085990263477492959

`gcd(and(2, n²), ∑[n²²])`
-/

namespace A000538.P13085990263477492959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.land 2 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000538.P13085990263477492959

namespace A000538

/-- `gcd(and(2, n²), ∑[n²²])` -/
def P13085990263477492959.Spec : Prop :=
  ∀ n, (P13085990263477492959.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P13534702939339824515

`lcm(ϕ-ϕ², ∑[n²²])`
-/

namespace A000538.P13534702939339824515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000538.P13534702939339824515

namespace A000538

/-- `lcm(ϕ-ϕ², ∑[n²²])` -/
def P13534702939339824515.Spec : Prop :=
  ∀ n, (P13534702939339824515.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P16571855239336702342

`C(∑[n²²], ϕ²-ϕ)`
-/

namespace A000538.P16571855239336702342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A000538.P16571855239336702342

namespace A000538

/-- `C(∑[n²²], ϕ²-ϕ)` -/
def P16571855239336702342.Spec : Prop :=
  ∀ n, (P16571855239336702342.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P1299775916305316137

`and(ϕ-ϕ², ∑[n²²])`
-/

namespace A000538.P1299775916305316137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000538.P1299775916305316137

namespace A000538

/-- `and(ϕ-ϕ², ∑[n²²])` -/
def P1299775916305316137.Spec : Prop :=
  ∀ n, P1299775916305316137.a n = A000538 n

end A000538

/-! ## A000538.P6734707300205372390

`∑[(lcm(2, 2*n)/2)²²]`
-/

namespace A000538.P6734707300205372390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 2 (2 * n) : ℚ) / 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000538.P6734707300205372390

namespace A000538

/-- `∑[(lcm(2, 2*n)/2)²²]` -/
def P6734707300205372390.Spec : Prop :=
  ∀ n, P6734707300205372390.a n = (A000538 n : ℚ)

end A000538

/-! ## A000538.P6410652905487565428

`∑[n²²]+C(2, n+3)`
-/

namespace A000538.P6410652905487565428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A000538.P6410652905487565428

namespace A000538

/-- `∑[n²²]+C(2, n+3)` -/
def P6410652905487565428.Spec : Prop :=
  ∀ n, (P6410652905487565428.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P8389598009262736178

`gcd(n, n+1)*∑[n²²]`
-/

namespace A000538.P8389598009262736178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000538.P8389598009262736178

namespace A000538

/-- `gcd(n, n+1)*∑[n²²]` -/
def P8389598009262736178.Spec : Prop :=
  ∀ n, (P8389598009262736178.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P18426063344288474680

`n^4-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000538.P18426063344288474680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 4 : ℤ) - (-a (n - 1))

end

end A000538.P18426063344288474680

namespace A000538

/-- `n^4-floor(-a(n-1))` -/
def P18426063344288474680.Spec : Prop :=
  ∀ n, P18426063344288474680.a n = A000538 n

end A000538

/-! ## A000538.P17110021354073867839

`n^4-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A000538.P17110021354073867839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 4 : ℤ) - (-a (n - 1))

end

end A000538.P17110021354073867839

namespace A000538

/-- `n^4-ceil(-a(n-1))` -/
def P17110021354073867839.Spec : Prop :=
  ∀ n, P17110021354073867839.a n = A000538 n

end A000538

/-! ## A000538.P12993614780856256345

`n^4-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A000538.P12993614780856256345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 4 : ℤ) - (-a (n - 1))

end

end A000538.P12993614780856256345

namespace A000538

/-- `n^4-round(-a(n-1))` -/
def P12993614780856256345.Spec : Prop :=
  ∀ n, P12993614780856256345.a n = A000538 n

end A000538

/-! ## A000538.P13046492563588518634

`∑[n²²]-and(1, 2*n)²`
-/

namespace A000538.P13046492563588518634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 (2 * n) ^ 2 : ℤ)

end

end A000538.P13046492563588518634

namespace A000538

/-- `∑[n²²]-and(1, 2*n)²` -/
def P13046492563588518634.Spec : Prop :=
  ∀ n, P13046492563588518634.a n = A000538 n

end A000538

/-! ## A000538.P7332067177475525193

`∑[∑[a(n-1)-2]²]` with `a(0)=0, a(1)=-1`
-/

namespace A000538.P7332067177475525193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000538.P7332067177475525193

namespace A000538

/-- `∑[∑[a(n-1)-2]²]` -/
def P7332067177475525193.Spec : Prop :=
  ∀ n, P7332067177475525193.a n = A000538 n

end A000538

/-! ## A000538.P11101463813423055823

`∑[n²²]%∑[(n+1)²]²²`
-/

namespace A000538.P11101463813423055823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

end

end A000538.P11101463813423055823

namespace A000538

/-- `∑[n²²]%∑[(n+1)²]²²` -/
def P11101463813423055823.Spec : Prop :=
  ∀ n, (P11101463813423055823.a n : ℤ) = A000538 n

end A000538

/-! ## A000538.P1592827958281067190

`floor(a(n-1))+n*n*n*n` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000538.P1592827958281067190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n * (n * n))

end

end A000538.P1592827958281067190

namespace A000538

/-- `floor(a(n-1))+n*n*n*n` -/
def P1592827958281067190.Spec : Prop :=
  ∀ n, (P1592827958281067190.a n : ℤ) = A000538 n

end A000538

/-!
# A000539: Sum of 5th powers: 0^5 + 1^5 + 2^5 + ... + n^5.

The programs for A000539, the canonical program `A000539.P15463173054537593707` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000539 has offset 0).

The definition of A000539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000539.P15463173054537593707

`a(n-1)+n^5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000539

/-- `a(n-1)+n^5` -/
def P15463173054537593707.Spec : Prop :=
  ∀ n, (P15463173054537593707.a n : ℤ) = A000539 n

theorem P15463173054537593707.correct : P15463173054537593707.Spec := by
  intro n
  simp only [A000539]

end A000539

/-! ## A000539.P4679518410799750034

`n²*(n+1)²*(2*n²+2*n-1)/12`
-/

namespace A000539.P4679518410799750034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((2 * n ^ 2 + 2 * n : ℤ) - 1) : ℚ) / 12

end

end A000539.P4679518410799750034

namespace A000539

/-- `n²*(n+1)²*(2*n²+2*n-1)/12` -/
def P4679518410799750034.Spec : Prop :=
  ∀ n, P4679518410799750034.a n = (A000539 n : ℚ)

theorem P4679518410799750034.correct : P4679518410799750034.Spec := by
  intro n
  induction n with
  | zero => simp [A000539, A000539.P4679518410799750034.a, A000539.P15463173054537593707.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A000539, Nat.add_sub_cancel, A000539.P4679518410799750034.a, A000539.P15463173054537593707.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A000539

/-! ## A000539.P8551315494695476850

`120*C(n+3, 6)+30*C(n+2, 4)+C(n+1, 2)`
-/

namespace A000539.P8551315494695476850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  120 * Nat.choose (n + 3) 6 + 30 * Nat.choose (n + 2) 4 + Nat.choose (n + 1) 2

end

end A000539.P8551315494695476850

namespace A000539

/-- `120*C(n+3, 6)+30*C(n+2, 4)+C(n+1, 2)` -/
def P8551315494695476850.Spec : Prop :=
  ∀ n, (P8551315494695476850.a n : ℤ) = A000539 n

end A000539

/-! ## A000539.P6412366074585796774

`4/3*A000217(n)^3-1/3*A000217(n)²`
-/

namespace A000539.P6412366074585796774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A000217 n ^ 3 : ℚ) - (1 : ℚ) / 3 * (A000217 n ^ 2 : ℚ)

end

end A000539.P6412366074585796774

namespace A000539

/-- `4/3*A000217(n)^3-1/3*A000217(n)²` -/
def P6412366074585796774.Spec : Prop :=
  ∀ n, P6412366074585796774.a n = (A000539 n : ℚ)

end A000539

/-! ## A000539.P4788760881071774942

`floor(∑[n/acot(n²²)])`
-/

namespace A000539.P4788760881071774942
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot ((n ^ 2) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A000539.P4788760881071774942

namespace A000539

/-- `floor(∑[n/acot(n²²)])` -/
def P4788760881071774942.Spec : Prop :=
  ∀ n, P4788760881071774942.a n = A000539 n

end A000539

/-! ## A000539.P4943892787841470127

`round(∑[n/acot(n²²)])`
-/

namespace A000539.P4943892787841470127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot ((n ^ 2) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000539.P4943892787841470127

namespace A000539

/-- `round(∑[n/acot(n²²)])` -/
def P4943892787841470127.Spec : Prop :=
  ∀ n, P4943892787841470127.a n = A000539 n

end A000539

/-! ## A000539.P16991180192036123328

`lcm(∑[n*n²²], ∑[n])`
-/

namespace A000539.P16991180192036123328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A000539.P16991180192036123328

namespace A000539

/-- `lcm(∑[n*n²²], ∑[n])` -/
def P16991180192036123328.Spec : Prop :=
  ∀ n, (P16991180192036123328.a n : ℤ) = A000539 n

end A000539

/-! ## A000539.P12758298279563646045

`abs(a(n-1)-(-n)^5)` with `a(0)=0`
-/

namespace A000539.P12758298279563646045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - (-(n : ℤ)) ^ 5|

end

end A000539.P12758298279563646045

namespace A000539

/-- `abs(a(n-1)-(-n)^5)` -/
def P12758298279563646045.Spec : Prop :=
  ∀ n, P12758298279563646045.a n = A000539 n

end A000539

/-! ## A000539.P12037906365476954520

`floor(a(n-1)-(-n)^5)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000539.P12037906365476954520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (-(n : ℤ)) ^ 5

end

end A000539.P12037906365476954520

namespace A000539

/-- `floor(a(n-1)-(-n)^5)` -/
def P12037906365476954520.Spec : Prop :=
  ∀ n, P12037906365476954520.a n = A000539 n

end A000539

/-! ## A000539.P12585348256224643998

`ceil(a(n-1)-(-n)^5)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A000539.P12585348256224643998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (-(n : ℤ)) ^ 5

end

end A000539.P12585348256224643998

namespace A000539

/-- `ceil(a(n-1)-(-n)^5)` -/
def P12585348256224643998.Spec : Prop :=
  ∀ n, P12585348256224643998.a n = A000539 n

end A000539

/-! ## A000539.P1339237327719625291

`round(a(n-1)-(-n)^5)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A000539.P1339237327719625291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (-(n : ℤ)) ^ 5

end

end A000539.P1339237327719625291

namespace A000539

/-- `round(a(n-1)-(-n)^5)` -/
def P1339237327719625291.Spec : Prop :=
  ∀ n, P1339237327719625291.a n = A000539 n

end A000539

/-! ## A000539.P3302310074024255665

`∑[C(2*n+1, 3)]*∑[n]`
-/

namespace A000539.P3302310074024255665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A000539.P3302310074024255665

namespace A000539

/-- `∑[C(2*n+1, 3)]*∑[n]` -/
def P3302310074024255665.Spec : Prop :=
  ∀ n, (P3302310074024255665.a n : ℤ) = A000539 n

end A000539

/-! ## A000539.P3884330349477291050

`floor(a(n-1))+n*n²²` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000539.P3884330349477291050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n ^ 2) ^ 2

end

end A000539.P3884330349477291050

namespace A000539

/-- `floor(a(n-1))+n*n²²` -/
def P3884330349477291050.Spec : Prop :=
  ∀ n, (P3884330349477291050.a n : ℤ) = A000539 n

theorem P3884330349477291050.correct : P3884330349477291050.Spec := by
  intro n
  simp only [A000539, Nat.add_sub_cancel, A000539.P3884330349477291050.a, A000539.P15463173054537593707.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000539

/-! ## A000539.P5586943921910719842

`n*(n²²+a(n-1)/n)` with `a(0)=0`
-/

namespace A000539.P5586943921910719842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (((n ^ 2) ^ 2 : ℚ) + a (n - 1) / (n : ℚ))

end

end A000539.P5586943921910719842

namespace A000539

/-- `n*(n²²+a(n-1)/n)` -/
def P5586943921910719842.Spec : Prop :=
  ∀ n, P5586943921910719842.a n = (A000539 n : ℚ)

end A000539

/-! ## A000539.P5704697188886474715

`2*a(n-1)-(a(n-1)-n^5)` with `a(0)=0`
-/

namespace A000539.P5704697188886474715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - (a (n - 1) - (n ^ 5 : ℤ))

end

end A000539.P5704697188886474715

namespace A000539

/-- `2*a(n-1)-(a(n-1)-n^5)` -/
def P5704697188886474715.Spec : Prop :=
  ∀ n, P5704697188886474715.a n = A000539 n

end A000539

/-! ## A000539.P10159701421535198289

`∑[sqrt(A008454(n))]`
-/

namespace A000539.P10159701421535198289
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008454 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000539.P10159701421535198289

namespace A000539

/-- `∑[sqrt(A008454(n))]` -/
def P10159701421535198289.Spec : Prop :=
  ∀ n, P10159701421535198289.a n = (A000539 n : ℝ)

end A000539

/-! ## A000539.P13769294765507964542

`∑[1-A024003(n)]`
-/

namespace A000539.P13769294765507964542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000539.P13769294765507964542

namespace A000539

/-- `∑[1-A024003(n)]` -/
def P13769294765507964542.Spec : Prop :=
  ∀ n, P13769294765507964542.a n = A000539 n

end A000539

/-! ## A000539.P15236379580448130740

`∑[n]+∑[A061167(n)]`
-/

namespace A000539.P15236379580448130740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A000539.P15236379580448130740

namespace A000539

/-- `∑[n]+∑[A061167(n)]` -/
def P15236379580448130740.Spec : Prop :=
  ∀ n, P15236379580448130740.a n = A000539 n

end A000539

/-! ## A000539.P5119780073270578941

`∑[A131471(n)]-∑[n]`
-/

namespace A000539.P5119780073270578941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A000539.P5119780073270578941

namespace A000539

/-- `∑[A131471(n)]-∑[n]` -/
def P5119780073270578941.Spec : Prop :=
  ∀ n, P5119780073270578941.a n = A000539 n

end A000539

/-! ## A000539.P6414421546383657845

`∑[A133754(n)]+∑[n]²`
-/

namespace A000539.P6414421546383657845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A000539.P6414421546383657845

namespace A000539

/-- `∑[A133754(n)]+∑[n]²` -/
def P6414421546383657845.Spec : Prop :=
  ∀ n, P6414421546383657845.a n = A000539 n

end A000539

/-!
# A000540: Sum of 6th powers: 0^6 + 1^6 + 2^6 + ... + n^6.

The programs for A000540, the canonical program `A000540.P889985645443037573` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000540 has offset 0).

The definition of A000540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000540.P889985645443037573

`n^7/7+n^6/2+n^5/2-n^3/6+n/42`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000540

/-- `n^7/7+n^6/2+n^5/2-n^3/6+n/42` -/
def P889985645443037573.Spec : Prop :=
  ∀ n, P889985645443037573.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P17854815699384078183

`floor(a(n-1)+(n*n²)²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000540.P17854815699384078183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n * n ^ 2) ^ 2

end

end A000540.P17854815699384078183

namespace A000540

/-- `floor(a(n-1)+(n*n²)²)` -/
def P17854815699384078183.Spec : Prop :=
  ∀ n, (P17854815699384078183.a n : ℤ) = A000540 n

end A000540

/-! ## A000540.P14363439355144804747

`A259109(n)/2`
-/

namespace A000540.P14363439355144804747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259109 n : ℚ) / 2

end

end A000540.P14363439355144804747

namespace A000540

/-- `A259109(n)/2` -/
def P14363439355144804747.Spec : Prop :=
  ∀ n, P14363439355144804747.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P13501362281035798570

`∑[sqrt(A008456(n))]`
-/

namespace A000540.P13501362281035798570
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008456 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000540.P13501362281035798570

namespace A000540

/-- `∑[sqrt(A008456(n))]` -/
def P13501362281035798570.Spec : Prop :=
  ∀ n, P13501362281035798570.a n = (A000540 n : ℝ)

end A000540

/-! ## A000540.P13438183705829000140

`abs(∑[1-A024004(n)])`
-/

namespace A000540.P13438183705829000140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A000540.P13438183705829000140

namespace A000540

/-- `abs(∑[1-A024004(n)])` -/
def P13438183705829000140.Spec : Prop :=
  ∀ n, P13438183705829000140.a n = A000540 n

end A000540

/-! ## A000540.P12034873508662807146

`2*∑[A001014(n)/2]`
-/

namespace A000540.P12034873508662807146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000540.P12034873508662807146

namespace A000540

/-- `2*∑[A001014(n)/2]` -/
def P12034873508662807146.Spec : Prop :=
  ∀ n, P12034873508662807146.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P512709178085978183

`∑[A000578(n)²]/A160357(n)²`
-/

namespace A000540.P512709178085978183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A160357 n ^ 2 : ℚ)

end

end A000540.P512709178085978183

namespace A000540

/-- `∑[A000578(n)²]/A160357(n)²` -/
def P512709178085978183.Spec : Prop :=
  ∀ n, P512709178085978183.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P16379548367700182219

`(A294301(n+1)+A294273(n+1))/2`
-/

namespace A000540.P16379548367700182219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294301 (n + 1) + A294273 (n + 1) : ℚ) / 2

end

end A000540.P16379548367700182219

namespace A000540

/-- `(A294301(n+1)+A294273(n+1))/2` -/
def P16379548367700182219.Spec : Prop :=
  ∀ n, P16379548367700182219.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P101647442773763495

`(∑[A106318(n+1)]-A106318(n+1))/2`
-/

namespace A000540.P101647442773763495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A106318 (n + 1) : ℤ) : ℚ) / 2

end

end A000540.P101647442773763495

namespace A000540

/-- `(∑[A106318(n+1)]-A106318(n+1))/2` -/
def P101647442773763495.Spec : Prop :=
  ∀ n, P101647442773763495.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P3727212489310549729

`A001221(A061142(n+1))*∑[A000578(n)²]`
-/

namespace A000540.P3727212489310549729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061142 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000540.P3727212489310549729

namespace A000540

/-- `A001221(A061142(n+1))*∑[A000578(n)²]` -/
def P3727212489310549729.Spec : Prop :=
  ∀ n, P3727212489310549729.a n = A000540 n

end A000540

/-! ## A000540.P12841315474784188609

`∑[Δ[Δ[C(n, 3)]²]²]`
-/

namespace A000540.P12841315474784188609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000540.P12841315474784188609

namespace A000540

/-- `∑[Δ[Δ[C(n, 3)]²]²]` -/
def P12841315474784188609.Spec : Prop :=
  ∀ n, P12841315474784188609.a n = A000540 n

end A000540

/-! ## A000540.P14796313764412123958

`∑[(ceil(∑[tanh(n)])^3)²]`
-/

namespace A000540.P14796313764412123958
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000540.P14796313764412123958

namespace A000540

/-- `∑[(ceil(∑[tanh(n)])^3)²]` -/
def P14796313764412123958.Spec : Prop :=
  ∀ n, P14796313764412123958.a n = A000540 n

end A000540

/-! ## A000540.P9601741501643254580

`∑[(round(∑[tanh(n)])^3)²]`
-/

namespace A000540.P9601741501643254580
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000540.P9601741501643254580

namespace A000540

/-- `∑[(round(∑[tanh(n)])^3)²]` -/
def P9601741501643254580.Spec : Prop :=
  ∀ n, P9601741501643254580.a n = A000540 n

end A000540

/-! ## A000540.P495672936498115671

`∑[A033431(n²)]/2`
-/

namespace A000540.P495672936498115671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A000540.P495672936498115671

namespace A000540

/-- `∑[A033431(n²)]/2` -/
def P495672936498115671.Spec : Prop :=
  ∀ n, P495672936498115671.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P18226113580760519444

`∑[A176581(n²)]/2`
-/

namespace A000540.P18226113580760519444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176581 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A000540.P18226113580760519444

namespace A000540

/-- `∑[A176581(n²)]/2` -/
def P18226113580760519444.Spec : Prop :=
  ∀ n, P18226113580760519444.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P6478524351989440104

`∑[A117642(n²)]/3`
-/

namespace A000540.P6478524351989440104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A000540.P6478524351989440104

namespace A000540

/-- `∑[A117642(n²)]/3` -/
def P6478524351989440104.Spec : Prop :=
  ∀ n, P6478524351989440104.a n = (A000540 n : ℚ)

end A000540

/-! ## A000540.P10826905704962441136

`∑[eq[1, char[n²]]^3]`
-/

namespace A000540.P10826905704962441136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000540.P10826905704962441136

namespace A000540

/-- `∑[eq[1, char[n²]]^3]` -/
def P10826905704962441136.Spec : Prop :=
  ∀ n, (P10826905704962441136.a n : ℤ) = A000540 n

end A000540

/-! ## A000540.P6196772135277304462

`∑[(floor(∑[tanh(n+1)])^3)²]`
-/

namespace A000540.P6196772135277304462
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n + 1 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000540.P6196772135277304462

namespace A000540

/-- `∑[(floor(∑[tanh(n+1)])^3)²]` -/
def P6196772135277304462.Spec : Prop :=
  ∀ n, P6196772135277304462.a n = A000540 n

end A000540

/-!
# A000541: Sum of 7th powers: 1^7 + 2^7 + ... + n^7.

The programs for A000541, the canonical program `A000541.P3279839016178629115` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000541 has offset 0).

The definition of A000541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000541.P3279839016178629115

`a(n-1)+n^7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000541

/-- `a(n-1)+n^7` -/
def P3279839016178629115.Spec : Prop :=
  ∀ n, (P3279839016178629115.a n : ℤ) = A000541 n

theorem P3279839016178629115.correct : P3279839016178629115.Spec := by
  intro n
  simp only [A000541]

end A000541

/-! ## A000541.P12492450199973149007

`n²*(n+1)²*(3*n^4+6*n^3-n²-4*n+2)/24`
-/

namespace A000541.P12492450199973149007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * (n + 1) ^ 2 : ℤ) * ((3 * n ^ 4 + 6 * n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (4 * n : ℤ) + 2) : ℚ) / 24

end

end A000541.P12492450199973149007

namespace A000541

/-- `n²*(n+1)²*(3*n^4+6*n^3-n²-4*n+2)/24` -/
def P12492450199973149007.Spec : Prop :=
  ∀ n, P12492450199973149007.a n = (A000541 n : ℚ)

theorem P12492450199973149007.correct : P12492450199973149007.Spec := by
  intro n
  induction n with
  | zero => simp [A000541, A000541.P12492450199973149007.a, A000541.P3279839016178629115.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A000541, Nat.add_sub_cancel, A000541.P12492450199973149007.a, A000541.P3279839016178629115.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A000541

/-! ## A000541.P12740002141601441551

`2*A000217(n)^4-A000539(n)`
-/

namespace A000541.P12740002141601441551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n ^ 4 - A000539 n

end

end A000541.P12740002141601441551

namespace A000541

/-- `2*A000217(n)^4-A000539(n)` -/
def P12740002141601441551.Spec : Prop :=
  ∀ n, P12740002141601441551.a n = A000541 n

end A000541

/-! ## A000541.P8164788310118619104

`∑[sqrt(A010802(n))]`
-/

namespace A000541.P8164788310118619104
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010802 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000541.P8164788310118619104

namespace A000541

/-- `∑[sqrt(A010802(n))]` -/
def P8164788310118619104.Spec : Prop :=
  ∀ n, P8164788310118619104.a n = (A000541 n : ℝ)

end A000541

/-! ## A000541.P16353899495449198938

`n+1-∑[A024005(n)]`
-/

namespace A000541.P16353899495449198938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000541.P16353899495449198938

namespace A000541

/-- `n+1-∑[A024005(n)]` -/
def P16353899495449198938.Spec : Prop :=
  ∀ n, P16353899495449198938.a n = A000541 n

end A000541

/-! ## A000541.P3856354403448246257

`∑[A258806(n)]-(n+1)`
-/

namespace A000541.P3856354403448246257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A000541.P3856354403448246257

namespace A000541

/-- `∑[A258806(n)]-(n+1)` -/
def P3856354403448246257.Spec : Prop :=
  ∀ n, P3856354403448246257.a n = A000541 n

end A000541

/-! ## A000541.P13867228564758561589

`A001015(n)+a(n-1)` with `a(0)=0`
-/

namespace A000541.P13867228564758561589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001015 n + a (n - 1)

end

end A000541.P13867228564758561589

namespace A000541

/-- `A001015(n)+a(n-1)` -/
def P13867228564758561589.Spec : Prop :=
  ∀ n, P13867228564758561589.a n = A000541 n

end A000541

/-! ## A000541.P17893241730934011492

`∑[A001015(n)]%A036087(n)`
-/

namespace A000541.P17893241730934011492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A036087 n)

end

end A000541.P17893241730934011492

namespace A000541

/-- `∑[A001015(n)]%A036087(n)` -/
def P17893241730934011492.Spec : Prop :=
  ∀ n, P17893241730934011492.a n = A000541 n

end A000541

/-! ## A000541.P11574493170444702757

`lcm(∑[A001015(n)], A001057(n))`
-/

namespace A000541.P11574493170444702757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A001057 n)

end

end A000541.P11574493170444702757

namespace A000541

/-- `lcm(∑[A001015(n)], A001057(n))` -/
def P11574493170444702757.Spec : Prop :=
  ∀ n, (P11574493170444702757.a n : ℤ) = A000541 n

end A000541

/-! ## A000541.P15766346080364817384

`2*A000537(n)²-A000539(n)`
-/

namespace A000541.P15766346080364817384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n ^ 2 - A000539 n

end

end A000541.P15766346080364817384

namespace A000541

/-- `2*A000537(n)²-A000539(n)` -/
def P15766346080364817384.Spec : Prop :=
  ∀ n, P15766346080364817384.a n = A000541 n

end A000541

/-! ## A000541.P9528752366795095704

`∑[2*A152726(n)]-A152726(n)`
-/

namespace A000541.P9528752366795095704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152726 n

end

end A000541.P9528752366795095704

namespace A000541

/-- `∑[2*A152726(n)]-A152726(n)` -/
def P9528752366795095704.Spec : Prop :=
  ∀ n, P9528752366795095704.a n = A000541 n

end A000541

/-! ## A000541.P9087779954138132091

`∑[A001015(n)]-A003215(n)%2+1`
-/

namespace A000541.P9087779954138132091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A003215 n) 2 + 1

end

end A000541.P9087779954138132091

namespace A000541

/-- `∑[A001015(n)]-A003215(n)%2+1` -/
def P9087779954138132091.Spec : Prop :=
  ∀ n, P9087779954138132091.a n = A000541 n

end A000541

/-! ## A000541.P2750923748586967413

`∑[A258808(n+1)]-A258808(n+1)+n`
-/

namespace A000541.P2750923748586967413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258808 (n + 1) + (n : ℤ)

end

end A000541.P2750923748586967413

namespace A000541

/-- `∑[A258808(n+1)]-A258808(n+1)+n` -/
def P2750923748586967413.Spec : Prop :=
  ∀ n, P2750923748586967413.a n = A000541 n

end A000541

/-! ## A000541.P12907428012665177867

`A231306(A004273(n)-n)+A231306(n)`
-/

namespace A000541.P12907428012665177867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231306 (A004273 n - (n : ℤ)).toNat + A231306 n

end

end A000541.P12907428012665177867

namespace A000541

/-- `A231306(A004273(n)-n)+A231306(n)` -/
def P12907428012665177867.Spec : Prop :=
  ∀ n, P12907428012665177867.a n = A000541 n

end A000541

/-! ## A000541.P3750068060629128016

`Δ[A239094(n)]`
-/

namespace A000541.P3750068060629128016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000541.P3750068060629128016

namespace A000541

/-- `Δ[A239094(n)]` -/
def P3750068060629128016.Spec : Prop :=
  ∀ n, P3750068060629128016.a n = A000541 n

end A000541

/-! ## A000541.P15570083158107407005

`A239094(n+1)-A239094(n)`
-/

namespace A000541.P15570083158107407005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239094 (n + 1) - A239094 n

end

end A000541.P15570083158107407005

namespace A000541

/-- `A239094(n+1)-A239094(n)` -/
def P15570083158107407005.Spec : Prop :=
  ∀ n, P15570083158107407005.a n = A000541 n

end A000541

/-! ## A000541.P3360586428606532014

`A036489(n²)+a(n-1)` with `a(0)=0`
-/

namespace A000541.P3360586428606532014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A036489 (n ^ 2) + a (n - 1)

end

end A000541.P3360586428606532014

namespace A000541

/-- `A036489(n²)+a(n-1)` -/
def P3360586428606532014.Spec : Prop :=
  ∀ n, P3360586428606532014.a n = A000541 n

end A000541

/-! ## A000541.P2765565693202735131

`A155014(n²)+a(n-1)` with `a(0)=0`
-/

namespace A000541.P2765565693202735131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A155014 (n ^ 2) + a (n - 1)

end

end A000541.P2765565693202735131

namespace A000541

/-- `A155014(n²)+a(n-1)` -/
def P2765565693202735131.Spec : Prop :=
  ∀ n, P2765565693202735131.a n = A000541 n

end A000541

/-!
# A000542: Sum of 8th powers: 1^8 + 2^8 + ... + n^8.

The programs for A000542, the canonical program `A000542.P554893304418534742` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000542 has offset 0).

The definition of A000542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000542.P554893304418534742

`a(n-1)+n^8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000542

/-- `a(n-1)+n^8` -/
def P554893304418534742.Spec : Prop :=
  ∀ n, (P554893304418534742.a n : ℤ) = A000542 n

theorem P554893304418534742.correct : P554893304418534742.Spec := by
  intro n
  simp only [A000542]

end A000542

/-! ## A000542.P11359511028192748702

`∑[n^8]`
-/

namespace A000542.P11359511028192748702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000542.P11359511028192748702

namespace A000542

/-- `∑[n^8]` -/
def P11359511028192748702.Spec : Prop :=
  ∀ n, (P11359511028192748702.a n : ℤ) = A000542 n

end A000542

/-! ## A000542.P16314704201118639072

`or(∑[n²²²], char[1])`
-/

namespace A000542.P16314704201118639072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = n then 1 else 0)

end

end A000542.P16314704201118639072

namespace A000542

/-- `or(∑[n²²²], char[1])` -/
def P16314704201118639072.Spec : Prop :=
  ∀ n, (P16314704201118639072.a n : ℤ) = A000542 n

end A000542

/-! ## A000542.P8648205971667627894

`abs(a(n-1)+n²²²)` with `a(0)=0`
-/

namespace A000542.P8648205971667627894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2) ^ 2) ^ 2

end

end A000542.P8648205971667627894

namespace A000542

/-- `abs(a(n-1)+n²²²)` -/
def P8648205971667627894.Spec : Prop :=
  ∀ n, (P8648205971667627894.a n : ℤ) = A000542 n

theorem P8648205971667627894.correct : P8648205971667627894.Spec := by
  intro n
  simp only [A000542, Nat.add_sub_cancel, A000542.P8648205971667627894.a, A000542.P554893304418534742.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000542

/-! ## A000542.P8161262482474574213

`floor(a(n-1)+n²²²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000542.P8161262482474574213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2) ^ 2) ^ 2

end

end A000542.P8161262482474574213

namespace A000542

/-- `floor(a(n-1)+n²²²)` -/
def P8161262482474574213.Spec : Prop :=
  ∀ n, (P8161262482474574213.a n : ℤ) = A000542 n

theorem P8161262482474574213.correct : P8161262482474574213.Spec := by
  intro n
  simp only [A000542, Nat.add_sub_cancel, A000542.P8161262482474574213.a, A000542.P554893304418534742.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000542

/-! ## A000542.P14826424570415380210

`ceil(a(n-1)+n²²²)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A000542.P14826424570415380210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2) ^ 2) ^ 2

end

end A000542.P14826424570415380210

namespace A000542

/-- `ceil(a(n-1)+n²²²)` -/
def P14826424570415380210.Spec : Prop :=
  ∀ n, (P14826424570415380210.a n : ℤ) = A000542 n

theorem P14826424570415380210.correct : P14826424570415380210.Spec := by
  intro n
  simp only [A000542, Nat.add_sub_cancel, A000542.P14826424570415380210.a, A000542.P554893304418534742.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A000542

/-! ## A000542.P17264598576596787931

`round(a(n-1)+n²²²)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A000542.P17264598576596787931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2) ^ 2) ^ 2

end

end A000542.P17264598576596787931

namespace A000542

/-- `round(a(n-1)+n²²²)` -/
def P17264598576596787931.Spec : Prop :=
  ∀ n, (P17264598576596787931.a n : ℤ) = A000542 n

theorem P17264598576596787931.correct : P17264598576596787931.Spec := by
  intro n
  simp only [A000542, Nat.add_sub_cancel, A000542.P17264598576596787931.a, A000542.P554893304418534742.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000542

/-! ## A000542.P15620655694612718116

`∑[n²²²]+C(2, n+3)`
-/

namespace A000542.P15620655694612718116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A000542.P15620655694612718116

namespace A000542

/-- `∑[n²²²]+C(2, n+3)` -/
def P15620655694612718116.Spec : Prop :=
  ∀ n, (P15620655694612718116.a n : ℤ) = A000542 n

end A000542

/-! ## A000542.P16339065309270461455

`∑[n²²²]+and(1, 2*n)`
-/

namespace A000542.P16339065309270461455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A000542.P16339065309270461455

namespace A000542

/-- `∑[n²²²]+and(1, 2*n)` -/
def P16339065309270461455.Spec : Prop :=
  ∀ n, (P16339065309270461455.a n : ℤ) = A000542 n

end A000542

/-! ## A000542.P1251255975092216895

`gcd(n, n+1)*∑[n²²²]`
-/

namespace A000542.P1251255975092216895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000542.P1251255975092216895

namespace A000542

/-- `gcd(n, n+1)*∑[n²²²]` -/
def P1251255975092216895.Spec : Prop :=
  ∀ n, (P1251255975092216895.a n : ℤ) = A000542 n

end A000542

/-! ## A000542.P4347839847485790775

`lcm(floor(acot(n))-1, ∑[n²²²])`
-/

namespace A000542.P4347839847485790775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000542.P4347839847485790775

namespace A000542

/-- `lcm(floor(acot(n))-1, ∑[n²²²])` -/
def P4347839847485790775.Spec : Prop :=
  ∀ n, (P4347839847485790775.a n : ℤ) = A000542 n

end A000542

/-! ## A000542.P13327022351624513769

`floor(∑[∑[a(n-1)-2]²²])` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A000542.P13327022351624513769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000542.P13327022351624513769

namespace A000542

/-- `floor(∑[∑[a(n-1)-2]²²])` -/
def P13327022351624513769.Spec : Prop :=
  ∀ n, P13327022351624513769.a n = A000542 n

end A000542

/-! ## A000542.P14433880248225583920

`∑[n]+∑[A195859(n)]`
-/

namespace A000542.P14433880248225583920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A000542.P14433880248225583920

namespace A000542

/-- `∑[n]+∑[A195859(n)]` -/
def P14433880248225583920.Spec : Prop :=
  ∀ n, P14433880248225583920.a n = A000542 n

end A000542

/-! ## A000542.P10699029817699848281

`∑[A196288(n)]-∑[n]`
-/

namespace A000542.P10699029817699848281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196288 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A000542.P10699029817699848281

namespace A000542

/-- `∑[A196288(n)]-∑[n]` -/
def P10699029817699848281.Spec : Prop :=
  ∀ n, P10699029817699848281.a n = A000542 n

end A000542

/-! ## A000542.P3381256533270489753

`2*∑[A001016(n)/2]`
-/

namespace A000542.P3381256533270489753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000542.P3381256533270489753

namespace A000542

/-- `2*∑[A001016(n)/2]` -/
def P3381256533270489753.Spec : Prop :=
  ∀ n, P3381256533270489753.a n = (A000542 n : ℚ)

end A000542

/-! ## A000542.P8047447545663188691

`1-∑[A024006(n)]+n`
-/

namespace A000542.P8047447545663188691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A000542.P8047447545663188691

namespace A000542

/-- `1-∑[A024006(n)]+n` -/
def P8047447545663188691.Spec : Prop :=
  ∀ n, P8047447545663188691.a n = A000542 n

end A000542

/-! ## A000542.P6012441725356826659

`∑[A060890(n)]-(n+1)`
-/

namespace A000542.P6012441725356826659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A000542.P6012441725356826659

namespace A000542

/-- `∑[A060890(n)]-(n+1)` -/
def P6012441725356826659.Spec : Prop :=
  ∀ n, P6012441725356826659.a n = A000542 n

end A000542

/-! ## A000542.P12474708476905009563

`∑[A028310(n)²²²]-1`
-/

namespace A000542.P12474708476905009563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A028310 n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000542.P12474708476905009563

namespace A000542

/-- `∑[A028310(n)²²²]-1` -/
def P12474708476905009563.Spec : Prop :=
  ∀ n, P12474708476905009563.a n = A000542 n

end A000542

/-! ## A000542.P16213801239105212396

`abs(∑[A000583(n)²]-n)+n`
-/

namespace A000542.P16213801239105212396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)| + (n : ℤ)

end

end A000542.P16213801239105212396

namespace A000542

/-- `abs(∑[A000583(n)²]-n)+n` -/
def P16213801239105212396.Spec : Prop :=
  ∀ n, P16213801239105212396.a n = A000542 n

end A000542

/-! ## A000542.P9090586313208922883

`A351766(n)-A351760(n)`
-/

namespace A000542.P9090586313208922883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351766 n - A351760 n

end

end A000542.P9090586313208922883

namespace A000542

/-- `A351766(n)-A351760(n)` -/
def P9090586313208922883.Spec : Prop :=
  ∀ n, P9090586313208922883.a n = A000542 n

end A000542

/-!
# A000543: Number of inequivalent ways to color vertices of a cube using at most n colors.

The programs for A000543, the canonical program `A000543.P3903818257764860570` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000543 has offset 0).

The definition of A000543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000543.P3903818257764860570

`1/24*n²*(n^6+17*n²+6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000543

/-- `1/24*n²*(n^6+17*n²+6)` -/
def P3903818257764860570.Spec : Prop :=
  ∀ n, P3903818257764860570.a n = (A000543 n : ℚ)

end A000543

/-! ## A000543.P6815294811506185235

`∑[A100789(n)]-A100789(n)`
-/

namespace A000543.P6815294811506185235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100789 n

end

end A000543.P6815294811506185235

namespace A000543

/-- `∑[A100789(n)]-A100789(n)` -/
def P6815294811506185235.Spec : Prop :=
  ∀ n, P6815294811506185235.a n = A000543 n

end A000543

/-! ## A000543.P2718404782740012450

`A128766(n+1)+A337896(n+1)-A100789(n)`
-/

namespace A000543.P2718404782740012450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128766 (n + 1) + (A337896 (n + 1) - A100789 n)

end

end A000543.P2718404782740012450

namespace A000543

/-- `A128766(n+1)+A337896(n+1)-A100789(n)` -/
def P2718404782740012450.Spec : Prop :=
  ∀ n, P2718404782740012450.a n = A000543 n

end A000543

/-! ## A000543.P9846181924714191248

`A316093(A000217(n+1))-A100789(n)`
-/

namespace A000543.P9846181924714191248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316093 (A000217 (n + 1)).toNat - A100789 n

end

end A000543.P9846181924714191248

namespace A000543

/-- `A316093(A000217(n+1))-A100789(n)` -/
def P9846181924714191248.Spec : Prop :=
  ∀ n, P9846181924714191248.a n = A000543 n

end A000543

/-!
# A000544: Number of permutations of length n by rises.

The programs for A000544, there is no canonical definition to state claims against.
-/

/-! ## A000544.P6184668656139586712

`A010030(A036572(n+3)+3)`
-/

namespace A000544.P6184668656139586712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (A036572 (n + 3) + 3).toNat

end

end A000544.P6184668656139586712

/-! ## A000544.P4418274140817061566

`A010030(lt[A084950(n+2), A005836(n+1)])`
-/

namespace A000544.P4418274140817061566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084950 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A000544.P4418274140817061566

/-!
# A000545: Number of ways of n-coloring a dodecahedron.

The programs for A000545, the canonical program `A000545.P1544247791197261382` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000545 has offset 1).

The definition of A000545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000545.P1544247791197261382

`((n+1)^12+15*(n+1)^6+44*(n+1)^4)/60`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000545

/-- `((n+1)^12+15*(n+1)^6+44*(n+1)^4)/60` -/
def P1544247791197261382.Spec : Prop :=
  ∀ n, P1544247791197261382.a n = (A000545 (n + 1) : ℚ)

end A000545

/-! ## A000545.P2675058592745055211

`A252705(n+1)+A337961(n+1)`
-/

namespace A000545.P2675058592745055211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (n + 1) + A337961 (n + 1)

end

end A000545.P2675058592745055211

namespace A000545

/-- `A252705(n+1)+A337961(n+1)` -/
def P2675058592745055211.Spec : Prop :=
  ∀ n, P2675058592745055211.a n = A000545 (n + 1)

end A000545

/-! ## A000545.P1233036678677199949

`2*A337961(n+1)+A337962(n+1)`
-/

namespace A000545.P1233036678677199949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337961 (n + 1) + A337962 (n + 1)

end

end A000545.P1233036678677199949

namespace A000545

/-- `2*A337961(n+1)+A337962(n+1)` -/
def P1233036678677199949.Spec : Prop :=
  ∀ n, P1233036678677199949.a n = A000545 (n + 1)

end A000545

/-! ## A000545.P6096403879560938115

`2*A252705(n+1)-A337962(n+1)`
-/

namespace A000545.P6096403879560938115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252705 (n + 1) - A337962 (n + 1)

end

end A000545.P6096403879560938115

namespace A000545

/-- `2*A252705(n+1)-A337962(n+1)` -/
def P6096403879560938115.Spec : Prop :=
  ∀ n, P6096403879560938115.a n = A000545 (n + 1)

end A000545

/-! ## A000545.P16524626425396801151

`A252705(A000027(n+1))+A252705(n+1)-A337962(n+1)`
-/

namespace A000545.P16524626425396801151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (A000027 (n + 1)).toNat + (A252705 (n + 1) - A337962 (n + 1))

end

end A000545.P16524626425396801151

namespace A000545

/-- `A252705(A000027(n+1))+A252705(n+1)-A337962(n+1)` -/
def P16524626425396801151.Spec : Prop :=
  ∀ n, P16524626425396801151.a n = A000545 (n + 1)

end A000545

/-! ## A000545.P10864295086938629981

`A252705(A028310(n+1))+A252705(n+1)-A337962(n+1)`
-/

namespace A000545.P10864295086938629981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (A028310 (n + 1)).toNat + (A252705 (n + 1) - A337962 (n + 1))

end

end A000545.P10864295086938629981

namespace A000545

/-- `A252705(A028310(n+1))+A252705(n+1)-A337962(n+1)` -/
def P10864295086938629981.Spec : Prop :=
  ∀ n, P10864295086938629981.a n = A000545 (n + 1)

end A000545

/-!
# A000547: Number of steps to reach 1 in sequence A000546.

The programs for A000547, there is no canonical definition to state claims against.
-/

/-! ## A000547.P15425653092744053596

`A006577(A000546(n+1))`
-/

namespace A000547.P15425653092744053596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000546 (n + 1)).toNat

end

end A000547.P15425653092744053596

/-! ## A000547.P15991396121237900505

`A008908(A000546(n+1))-A020985(n)²`
-/

namespace A000547.P15991396121237900505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A000546 (n + 1)).toNat - A020985 n ^ 2

end

end A000547.P15991396121237900505

/-! ## A000547.P10489888916232662260

`A139399(A000546(n+1))+A130130(2*n)`
-/

namespace A000547.P10489888916232662260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A000546 (n + 1)).toNat + A130130 (2 * n)

end

end A000547.P10489888916232662260

/-! ## A000547.P13731077990668076746

`A057428(3*n+1)+A008908(A000546(n+1))`
-/

namespace A000547.P13731077990668076746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 1) + A008908 (A000546 (n + 1)).toNat

end

end A000547.P13731077990668076746

/-! ## A000547.P17547220955976103385

`A008908(A000546(n+1))-A174500(2*n+1)`
-/

namespace A000547.P17547220955976103385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A000546 (n + 1)).toNat - A174500 (2 * n + 1)

end

end A000547.P17547220955976103385

/-!
# A000548: Squares that are not the sum of 2 nonzero squares.

The programs for A000548, the canonical program `A000548.P7784828733208022638` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000548 has offset 1).

The definition of A000548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000548.P3182720449007046319

`A004144(n+1)²`
-/

namespace A000548.P3182720449007046319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1) ^ 2

end

end A000548.P3182720449007046319

namespace A000548

/-- `A004144(n+1)²` -/
def P3182720449007046319.Spec : Prop :=
  ∀ n, P3182720449007046319.a n = A000548 (n + 1)

end A000548

/-! ## A000548.P5516423205669779044

`A050804(n+1)/2`
-/

namespace A000548.P5516423205669779044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050804 (n + 1) : ℚ) / 2

end

end A000548.P5516423205669779044

namespace A000548

/-- `A050804(n+1)/2` -/
def P5516423205669779044.Spec : Prop :=
  ∀ n, P5516423205669779044.a n = (A000548 (n + 1) : ℚ)

end A000548

/-! ## A000548.P715650045839228285

`A081324(n+2)/2`
-/

namespace A000548.P715650045839228285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081324 (n + 2) : ℚ) / 2

end

end A000548.P715650045839228285

namespace A000548

/-- `A081324(n+2)/2` -/
def P715650045839228285.Spec : Prop :=
  ∀ n, P715650045839228285.a n = (A000548 (n + 1) : ℚ)

end A000548

/-! ## A000548.P12012488666429172527

`(eq[0, A046080(n+1)]+1)²`
-/

namespace A000548.P12012488666429172527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A000548.P12012488666429172527

namespace A000548

/-- `(eq[0, A046080(n+1)]+1)²` -/
def P12012488666429172527.Spec : Prop :=
  ∀ n, (P12012488666429172527.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P4196420751698948164

`A004144(n+1)^(A035263(2*n+3)+1)`
-/

namespace A000548.P4196420751698948164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004144 (n + 1) : ℚ) ^ (A035263 (2 * n + 3) + 1 : ℤ)

end

end A000548.P4196420751698948164

namespace A000548

/-- `A004144(n+1)^(A035263(2*n+3)+1)` -/
def P4196420751698948164.Spec : Prop :=
  ∀ n, P4196420751698948164.a n = (A000548 (n + 1) : ℚ)

end A000548

/-! ## A000548.P9834147836776550174

`A004144(A000027(n+1))*A004144(n+1)`
-/

namespace A000548.P9834147836776550174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (A000027 (n + 1)).toNat * A004144 (n + 1)

end

end A000548.P9834147836776550174

namespace A000548

/-- `A004144(A000027(n+1))*A004144(n+1)` -/
def P9834147836776550174.Spec : Prop :=
  ∀ n, P9834147836776550174.a n = A000548 (n + 1)

end A000548

/-! ## A000548.P1180443750229724753

`A004144(A097362(2*n+1))*A004144(n+1)`
-/

namespace A000548.P1180443750229724753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (A097362 (2 * n + 1)).toNat * A004144 (n + 1)

end

end A000548.P1180443750229724753

namespace A000548

/-- `A004144(A097362(2*n+1))*A004144(n+1)` -/
def P1180443750229724753.Spec : Prop :=
  ∀ n, P1180443750229724753.a n = A000548 (n + 1)

end A000548

/-! ## A000548.P10998963029105159466

`A050804(n+1)-A004144(n+1)*A004144(n+1)`
-/

namespace A000548.P10998963029105159466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1) - A004144 (n + 1) * A004144 (n + 1)

end

end A000548.P10998963029105159466

namespace A000548

/-- `A050804(n+1)-A004144(n+1)*A004144(n+1)` -/
def P10998963029105159466.Spec : Prop :=
  ∀ n, P10998963029105159466.a n = A000548 (n + 1)

end A000548

/-! ## A000548.P9888668941887610863

`A081324(n+2)-A004144(n+1)*A004144(n+1)`
-/

namespace A000548.P9888668941887610863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081324 (n + 2) - A004144 (n + 1) * A004144 (n + 1)

end

end A000548.P9888668941887610863

namespace A000548

/-- `A081324(n+2)-A004144(n+1)*A004144(n+1)` -/
def P9888668941887610863.Spec : Prop :=
  ∀ n, P9888668941887610863.a n = A000548 (n + 1)

end A000548

/-! ## A000548.P14299489237153584169

`eq[4, A046109(n)]²`
-/

namespace A000548.P14299489237153584169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A000548.P14299489237153584169

namespace A000548

/-- `eq[4, A046109(n)]²` -/
def P14299489237153584169.Spec : Prop :=
  ∀ n, (P14299489237153584169.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P16394034842746804461

`record[A072438(n+1)²]`
-/

namespace A000548.P16394034842746804461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000548.P16394034842746804461

namespace A000548

/-- `record[A072438(n+1)²]` -/
def P16394034842746804461.Spec : Prop :=
  ∀ n, P16394034842746804461.a n = A000548 (n + 1)

end A000548

/-! ## A000548.P5007635123499341974

`(eq[1, A170818(n+1)]+1)²`
-/

namespace A000548.P5007635123499341974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A000548.P5007635123499341974

namespace A000548

/-- `(eq[1, A170818(n+1)]+1)²` -/
def P5007635123499341974.Spec : Prop :=
  ∀ n, (P5007635123499341974.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P15010165431594477899

`(eq[1, A256452(n+1)]+1)²`
-/

namespace A000548.P15010165431594477899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A000548.P15010165431594477899

namespace A000548

/-- `(eq[1, A256452(n+1)]+1)²` -/
def P15010165431594477899.Spec : Prop :=
  ∀ n, (P15010165431594477899.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P6005826975569250335

`(eq[1, A286361(n+1)]+1)²`
-/

namespace A000548.P6005826975569250335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A000548.P6005826975569250335

namespace A000548

/-- `(eq[1, A286361(n+1)]+1)²` -/
def P6005826975569250335.Spec : Prop :=
  ∀ n, (P6005826975569250335.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P7784828733208022638

`(lt[A005080(n+1), 1]+1)²`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000548

/-- `(lt[A005080(n+1), 1]+1)²` -/
def P7784828733208022638.Spec : Prop :=
  ∀ n, (P7784828733208022638.a n : ℤ) = A000548 (n + 1)

theorem P7784828733208022638.correct : P7784828733208022638.Spec := by
  intro n
  simp only [A000548, Nat.add_sub_cancel]

end A000548

/-! ## A000548.P1960168164518266804

`(lt[A005081(n+1), 1]+1)²`
-/

namespace A000548.P1960168164518266804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005081 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P1960168164518266804

namespace A000548

/-- `(lt[A005081(n+1), 1]+1)²` -/
def P1960168164518266804.Spec : Prop :=
  ∀ n, (P1960168164518266804.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P6871957440962501398

`(lt[A108707(n+1), 1]+1)²`
-/

namespace A000548.P6871957440962501398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P6871957440962501398

namespace A000548

/-- `(lt[A108707(n+1), 1]+1)²` -/
def P6871957440962501398.Spec : Prop :=
  ∀ n, (P6871957440962501398.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P381167063089632445

`(lt[A108708(n+1), 1]+1)²`
-/

namespace A000548.P381167063089632445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P381167063089632445

namespace A000548

/-- `(lt[A108708(n+1), 1]+1)²` -/
def P381167063089632445.Spec : Prop :=
  ∀ n, (P381167063089632445.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P8121389789829716236

`(lt[A309228(n+1), 2]+1)²`
-/

namespace A000548.P8121389789829716236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P8121389789829716236

namespace A000548

/-- `(lt[A309228(n+1), 2]+1)²` -/
def P8121389789829716236.Spec : Prop :=
  ∀ n, (P8121389789829716236.a n : ℤ) = A000548 (n + 1)

end A000548

/-! ## A000548.P5508882883500343202

`eq[A010152(n), A063014(n)]²`
-/

namespace A000548.P5508882883500343202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A000548.P5508882883500343202

namespace A000548

/-- `eq[A010152(n), A063014(n)]²` -/
def P5508882883500343202.Spec : Prop :=
  ∀ n, (P5508882883500343202.a n : ℤ) = A000548 (n + 1)

end A000548

/-!
# A000549: Numbers that are the sum of 2 squares but not sum of 3 nonzero squares.

The programs for A000549, there is no canonical definition to state claims against.
-/

/-! ## A000549.P6233650970768329669

`∪[A219222(n+1), A000079(n)]`
-/

namespace A000549.P6233650970768329669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P6233650970768329669

/-! ## A000549.P12114439445224157328

`∪[A000302(n), A219222(n+1)]`
-/

namespace A000549.P12114439445224157328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P12114439445224157328

/-! ## A000549.P13010660424383114787

`∪[A094958(n+1), A219222(n+1)]`
-/

namespace A000549.P13010660424383114787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P13010660424383114787

/-! ## A000549.P6009481205824417865

`∪[A151821(n+1), A219222(n+1)]`
-/

namespace A000549.P6009481205824417865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P6009481205824417865

/-! ## A000549.P7542718933155577342

`∪[A202274(n+1), A219222(n+1)]`
-/

namespace A000549.P7542718933155577342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P7542718933155577342

/-! ## A000549.P3661763986337229143

`∪[A219222(n+1), A272985(n+1)]`
-/

namespace A000549.P3661763986337229143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P3661763986337229143

/-! ## A000549.P5561189787921747151

`filter[A004214(n+1), A229062(#)]`
-/

namespace A000549.P5561189787921747151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A000549.P5561189787921747151

/-! ## A000549.P313870699763763616

`∩[A004214(n+1), A072437(n+1)]`
-/

namespace A000549.P313870699763763616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P313870699763763616

/-! ## A000549.P4692513469874464199

`∩[A004214(n+1), A245226(n+1)]`
-/

namespace A000549.P4692513469874464199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P4692513469874464199

/-! ## A000549.P8454411621298549842

`∩[A001481(n+1), A004214(n+1)]`
-/

namespace A000549.P8454411621298549842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000549.P8454411621298549842

/-!
# A000550: Number of trees of diameter 7.

The programs for A000550, there is no canonical definition to state claims against.
-/

/-! ## A000550.P4935624817784037411

`A034853(A166136(n+4)+2)`
-/

namespace A000550.P4935624817784037411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (A166136 (n + 4) + 2).toNat

end

end A000550.P4935624817784037411

/-! ## A000550.P3559084783979061610

`A034853(A133263(n+5)+6)`
-/

namespace A000550.P3559084783979061610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (A133263 (n + 5) + 6).toNat

end

end A000550.P3559084783979061610

/-! ## A000550.P5596887495693965294

`A034853(A000217(n+5)+8)`
-/

namespace A000550.P5596887495693965294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (A000217 (n + 5) + 8).toNat

end

end A000550.P5596887495693965294

/-! ## A000550.P14529021919915281615

`A034853(A046691(n+3)+12)`
-/

namespace A000550.P14529021919915281615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (A046691 (n + 3) + 12).toNat

end

end A000550.P14529021919915281615

/-! ## A000550.P315622687475002783

`A034853(A052905(n+4)-2*n)`
-/

namespace A000550.P315622687475002783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (A052905 (n + 4) - (2 * n : ℤ)).toNat

end

end A000550.P315622687475002783

/-!
# A000551: Number of labeled rooted trees of height 2 with n nodes.

The programs for A000551, there is no canonical definition to state claims against.
-/

/-! ## A000551.P12595825302007355153

`(n+3)*(n+2)*A074728(n+1)`
-/

namespace A000551.P12595825302007355153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (n + 2) : ℤ) * A074728 (n + 1)

end

end A000551.P12595825302007355153

/-! ## A000551.P8150567331053482218

`A052512(n+3)-(n+3)`
-/

namespace A000551.P8150567331053482218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052512 (n + 3) - (n + 3 : ℤ)

end

end A000551.P8150567331053482218

/-! ## A000551.P17102590150435289068

`(n+3)*A235596(n+3)`
-/

namespace A000551.P17102590150435289068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A235596 (n + 3)

end

end A000551.P17102590150435289068

/-! ## A000551.P12333929458805700434

`A034855(∑[n+1]+3)`
-/

namespace A000551.P12333929458805700434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000551.P12333929458805700434

/-! ## A000551.P5538011083569534985

`record[A010054(n+1)*A034855(n+4)]`
-/

namespace A000551.P5538011083569534985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A034855 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000551.P5538011083569534985

/-! ## A000551.P3091786884711689474

`record[A034855(n+4)*A073424(n+1)]`
-/

namespace A000551.P3091786884711689474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (n + 4) * A073424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000551.P3091786884711689474

/-! ## A000551.P18109841834873603886

`record[A034855(n+4)/A235595(n+3)]`
-/

namespace A000551.P18109841834873603886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 4) : ℚ) / (A235595 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000551.P18109841834873603886

/-!
# A000552: Number of labeled rooted trees of height 3 with n nodes.

The programs for A000552, there is no canonical definition to state claims against.
-/

/-! ## A000552.P997993209258535374

`A052513(n+4)-A052512(n+4)`
-/

namespace A000552.P997993209258535374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052513 (n + 4) - A052512 (n + 4)

end

end A000552.P997993209258535374

/-! ## A000552.P14626038924936358547

`A034855(∑[n+2]+5)`
-/

namespace A000552.P14626038924936358547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A000552.P14626038924936358547

/-! ## A000552.P2119097840050119695

`record[A034855(A167614(n+1)+A015156(n))]`
-/

namespace A000552.P2119097840050119695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A167614 (n + 1) + A015156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000552.P2119097840050119695

/-!
# A000553: Number of labeled rooted trees of height 4 with n nodes.

The programs for A000553, there is no canonical definition to state claims against.
-/

/-! ## A000553.P9183404570607454384

`A034855(A167499(n+2))`
-/

namespace A000553.P9183404570607454384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A167499 (n + 2)).toNat

end

end A000553.P9183404570607454384

/-! ## A000553.P10614856282902803262

`A034855(A052905(n)+10)`
-/

namespace A000553.P10614856282902803262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A052905 n + 10).toNat

end

end A000553.P10614856282902803262

/-! ## A000553.P11166852272548529788

`A034855(A167614(n+2)+2)`
-/

namespace A000553.P11166852272548529788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A167614 (n + 2) + 2).toNat

end

end A000553.P11166852272548529788

/-! ## A000553.P9481253432657091279

`A034855(A000096(n+2)+6)`
-/

namespace A000553.P9481253432657091279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (A000096 (n + 2) + 6).toNat

end

end A000553.P9481253432657091279

/-! ## A000553.P13296610581636525140

`A034855(Δ[A023545(n+1)]-2*n)`
-/

namespace A000553.P13296610581636525140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034855 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A000553.P13296610581636525140

/-!
# A000554: Number of labeled trees of diameter 3 with n nodes.

The programs for A000554, the canonical program `A000554.P4597094706651654342` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000554 has offset 4).

The definition of A000554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000554.P4597094706651654342

`(n+4)*(n+3)*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000554

/-- `(n+4)*(n+3)*(2^(n+1)-1)` -/
def P4597094706651654342.Spec : Prop :=
  ∀ n, P4597094706651654342.a n = A000554 (n + 4)

theorem P4597094706651654342.correct : P4597094706651654342.Spec := by
  intro n
  simp only [A000554, Nat.add_sub_cancel]

end A000554

/-! ## A000554.P7753328463687511979

`record[A002620(n+7)*A077896(n)]`
-/

namespace A000554.P7753328463687511979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 7) * A077896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000554.P7753328463687511979

namespace A000554

/-- `record[A002620(n+7)*A077896(n)]` -/
def P7753328463687511979.Spec : Prop :=
  ∀ n, P7753328463687511979.a n = A000554 (n + 4)

end A000554

/-! ## A000554.P9883039530120949026

`A001788(n+3)-A002378(n+3)`
-/

namespace A000554.P9883039530120949026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 3) - A002378 (n + 3)

end

end A000554.P9883039530120949026

namespace A000554

/-- `A001788(n+3)-A002378(n+3)` -/
def P9883039530120949026.Spec : Prop :=
  ∀ n, P9883039530120949026.a n = A000554 (n + 4)

end A000554

/-! ## A000554.P16593787569762930889

`A348257(n+4)+A348257(n+4)`
-/

namespace A000554.P16593787569762930889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348257 (n + 4) + A348257 (n + 4)

end

end A000554.P16593787569762930889

namespace A000554

/-- `A348257(n+4)+A348257(n+4)` -/
def P16593787569762930889.Spec : Prop :=
  ∀ n, P16593787569762930889.a n = A000554 (n + 4)

end A000554

/-! ## A000554.P10425814573463553547

`∑[∑[A109975(n+1)]*A005843(n+3)]`
-/

namespace A000554.P10425814573463553547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A005843 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000554.P10425814573463553547

namespace A000554

/-- `∑[∑[A109975(n+1)]*A005843(n+3)]` -/
def P10425814573463553547.Spec : Prop :=
  ∀ n, P10425814573463553547.a n = A000554 (n + 4)

end A000554

/-! ## A000554.P1065815603246176398

`A052760(n+4)/2`
-/

namespace A000554.P1065815603246176398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052760 (n + 4) : ℚ) / 2

end

end A000554.P1065815603246176398

namespace A000554

/-- `A052760(n+4)/2` -/
def P1065815603246176398.Spec : Prop :=
  ∀ n, P1065815603246176398.a n = (A000554 (n + 4) : ℚ)

end A000554

/-! ## A000554.P14682092141556338154

`A362685(A253145(n+2)+n+2)`
-/

namespace A000554.P14682092141556338154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362685 (A253145 (n + 2) + (n + 2 : ℤ)).toNat

end

end A000554.P14682092141556338154

namespace A000554

/-- `A362685(A253145(n+2)+n+2)` -/
def P14682092141556338154.Spec : Prop :=
  ∀ n, P14682092141556338154.a n = A000554 (n + 4)

end A000554

/-! ## A000554.P5638949296808660730

`A055314(∑[n+3]+2)`
-/

namespace A000554.P5638949296808660730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000554.P5638949296808660730

namespace A000554

/-- `A055314(∑[n+3]+2)` -/
def P5638949296808660730.Spec : Prop :=
  ∀ n, P5638949296808660730.a n = A000554 (n + 4)

end A000554

/-!
# A000555: Number of labeled trees of diameter 4 with n nodes.

The programs for A000555, there is no canonical definition to state claims against.
-/

/-! ## A000555.P14295671492867056046

`A000551(n+5)-(n+5)*(n+4)*(2^(n+3)-1)`
-/

namespace A000555.P14295671492867056046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000551 (n + 5) - ((n + 5) * (n + 4) : ℤ) * ((2 ^ (n + 3) : ℤ) - 1)

end

end A000555.P14295671492867056046

/-! ## A000555.P13757741377138605920

`A034854(∑[n+2]+3)`
-/

namespace A000555.P13757741377138605920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034854 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000555.P13757741377138605920

/-!
# A000556: Expansion of exp(-x) / (1 - exp(x) + exp(-x)).

The programs for A000556, there is no canonical definition to state claims against.
-/

/-! ## A000556.P12021665995419271780

`A000557(n)-A320352(n)`
-/

namespace A000556.P12021665995419271780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n - A320352 n

end

end A000556.P12021665995419271780

/-! ## A000556.P3188750673663051975

`2*A364822(n)-A005923(n)`
-/

namespace A000556.P3188750673663051975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364822 n - A005923 n

end

end A000556.P3188750673663051975

/-! ## A000556.P12139219129244573753

`or(1, A005923(n)-A000557(n))`
-/

namespace A000556.P12139219129244573753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005923 n - A000557 n)

end

end A000556.P12139219129244573753

/-! ## A000556.P694294275211915677

`ceil(A245155(n)/2)-A320352(n)`
-/

namespace A000556.P694294275211915677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245155 n : ℚ) / 2⌉ - A320352 n

end

end A000556.P694294275211915677

/-! ## A000556.P18218650575509455044

`A005923(n)%A000557(round(sqrt(n²+1)))`
-/

namespace A000556.P18218650575509455044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005923 n) (A000557 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A000556.P18218650575509455044

/-! ## A000556.P4802321899067730088

`A000007(n)+A005923(n)-A000557(n)`
-/

namespace A000556.P4802321899067730088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A005923 n - A000557 n)

end

end A000556.P4802321899067730088

/-! ## A000556.P2625486511367747724

`A000557(n)+A005923(n)-A245155(n)`
-/

namespace A000556.P2625486511367747724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n + (A005923 n - A245155 n)

end

end A000556.P2625486511367747724

/-!
# A000557: Expansion of e.g.f. 1/(1 - 2*sinh(x)).

The programs for A000557, there is no canonical definition to state claims against.
-/

/-! ## A000557.P11726514796893094855

`A000556(n)+A320352(n)`
-/

namespace A000557.P11726514796893094855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + A320352 n

end

end A000557.P11726514796893094855

/-! ## A000557.P5723239742260592349

`ceil(A245155(n)/2)`
-/

namespace A000557.P5723239742260592349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245155 n : ℚ) / 2⌉

end

end A000557.P5723239742260592349

/-! ## A000557.P12311322206419815326

`A367887(n)+1-A005923(n)`
-/

namespace A000557.P12311322206419815326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367887 n + (1 - A005923 n)

end

end A000557.P12311322206419815326

/-! ## A000557.P16160510161166952664

`A020639(A001316(n))*A332257(n)`
-/

namespace A000557.P16160510161166952664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A332257 n

end

end A000557.P16160510161166952664

/-! ## A000557.P8088834058645359741

`A020639(A005899(n))*A332257(n)`
-/

namespace A000557.P8088834058645359741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005899 n).toNat * A332257 n

end

end A000557.P8088834058645359741

/-! ## A000557.P18252638186133418039

`A245155(n)/A020639(A008574(n))`
-/

namespace A000557.P18252638186133418039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245155 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A000557.P18252638186133418039

/-! ## A000557.P9725540552661435555

`A141256(A001222(n+1))*A332257(n)`
-/

namespace A000557.P9725540552661435555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A001222 (n + 1)).toNat * A332257 n

end

end A000557.P9725540552661435555

/-! ## A000557.P12376086043017491425

`A245155(n)/A020639(A007694(n+1))`
-/

namespace A000557.P12376086043017491425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245155 n : ℚ) / (A020639 (A007694 (n + 1)).toNat : ℚ)

end

end A000557.P12376086043017491425

/-!
# A000558: Generalized Stirling numbers of second kind.

The programs for A000558, there is no canonical definition to state claims against.
-/

/-! ## A000558.P635294530505584414

`A035009(n+2)-A000110(n+2)`
-/

namespace A000558.P635294530505584414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035009 (n + 2) - A000110 (n + 2)

end

end A000558.P635294530505584414

/-! ## A000558.P10540918176949404178

`A039810(∑[n+1]+2)`
-/

namespace A000558.P10540918176949404178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000558.P10540918176949404178

/-! ## A000558.P8849331340781302491

`A130191(∑[n+2]+3)`
-/

namespace A000558.P8849331340781302491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000558.P8849331340781302491

/-! ## A000558.P15220660967742769613

`or(char[3], A039810(A133263(n+1)))`
-/

namespace A000558.P15220660967742769613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A039810 (A133263 (n + 1)).toNat)

end

end A000558.P15220660967742769613

/-! ## A000558.P14132698433522297817

`A046817(∑[n+2]-1)`
-/

namespace A000558.P14132698433522297817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000558.P14132698433522297817

/-! ## A000558.P7848123694050893628

`A052896(n+2)/2`
-/

namespace A000558.P7848123694050893628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052896 (n + 2) : ℚ) / 2

end

end A000558.P7848123694050893628

/-!
# A000559: Generalized Stirling numbers of second kind.

The programs for A000559, there is no canonical definition to state claims against.
-/

/-! ## A000559.P7465283488810866137

`A039810(∑[n+2]+4)`
-/

namespace A000559.P7465283488810866137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000559.P7465283488810866137

/-! ## A000559.P708455169965352533

`A130191(A167614(n+2))`
-/

namespace A000559.P708455169965352533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A167614 (n + 2)).toNat

end

end A000559.P708455169965352533

/-! ## A000559.P4742106614977919189

`A130191(A052905(n)+8)`
-/

namespace A000559.P4742106614977919189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A052905 n + 8).toNat

end

end A000559.P4742106614977919189

/-! ## A000559.P27677615139075218

`A130191(A055999(n)+9)`
-/

namespace A000559.P27677615139075218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A055999 n + 9).toNat

end

end A000559.P27677615139075218

/-! ## A000559.P989372495861331044

`A130191(eq[3, A002262(n)])`
-/

namespace A000559.P989372495861331044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000559.P989372495861331044

/-! ## A000559.P15447590242069364449

`A130191(A000096(n+2)+4)`
-/

namespace A000559.P15447590242069364449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A000096 (n + 2) + 4).toNat

end

end A000559.P15447590242069364449

/-! ## A000559.P5125394868821088275

`A046817(∑[n+3])`
-/

namespace A000559.P5125394868821088275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000559.P5125394868821088275

/-! ## A000559.P6390303749216128689

`record[A046817(A027379(A271439(n)))]`
-/

namespace A000559.P6390303749216128689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (A027379 (A271439 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000559.P6390303749216128689

/-! ## A000559.P6170115964986962275

`record[A046817(A027379(A058933(n+1)))]`
-/

namespace A000559.P6170115964986962275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (A027379 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000559.P6170115964986962275

/-!
# A000560: Number of symmetric ways of folding a strip of n labeled stamps.

The programs for A000560, there is no canonical definition to state claims against.
-/

/-! ## A000560.P1749581109174050815

`A000682(n+3)/2`
-/

namespace A000560.P1749581109174050815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000682 (n + 3) : ℚ) / 2

end

end A000560.P1749581109174050815

/-! ## A000560.P12445256748134804430

`A000136(n+3)/(2*(n+2)+2)`
-/

namespace A000560.P12445256748134804430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 3) : ℚ) / (2 * (n + 2) + 2 : ℚ)

end

end A000560.P12445256748134804430

/-! ## A000560.P472006505032422845

`Δ[A330269(n+3)/2]`
-/

namespace A000560.P472006505032422845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330269 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000560.P472006505032422845

/-! ## A000560.P1214313043256503001

`record[A000136(n+1)/A103517(n)]`
-/

namespace A000560.P1214313043256503001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 1) : ℚ) / (A103517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000560.P1214313043256503001

/-! ## A000560.P3810029919728018422

`A259702(n+3)+A000682(n+2)`
-/

namespace A000560.P3810029919728018422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259702 (n + 3) + A000682 (n + 2)

end

end A000560.P3810029919728018422

/-!
# A000561: Number of discordant permutations.

The programs for A000561, the canonical program `A000561.P14435109691208436856` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000561 has offset 3).

The definition of A000561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000561.P14435109691208436856

`(n+3)*(9*(n+3)²-45*(n+3)+58)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000561

/-- `(n+3)*(9*(n+3)²-45*(n+3)+58)/2` -/
def P14435109691208436856.Spec : Prop :=
  ∀ n, P14435109691208436856.a n = (A000561 (n + 3) : ℚ)

end A000561

/-! ## A000561.P13865108831878723350

`(C(2*n+n+2, 2)+1)*(n+3)`
-/

namespace A000561.P13865108831878723350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + (n + 2)) 2 + 1) * (n + 3)

end

end A000561.P13865108831878723350

namespace A000561

/-- `(C(2*n+n+2, 2)+1)*(n+3)` -/
def P13865108831878723350.Spec : Prop :=
  ∀ n, (P13865108831878723350.a n : ℤ) = A000561 (n + 3)

end A000561

/-! ## A000561.P14618582912283894028

`(n+3)*A062123(n)`
-/

namespace A000561.P14618582912283894028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A062123 n

end

end A000561.P14618582912283894028

namespace A000561

/-- `(n+3)*A062123(n)` -/
def P14618582912283894028.Spec : Prop :=
  ∀ n, P14618582912283894028.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P11526992141877935508

`(n+1)*(A179436(n)-5)+4`
-/

namespace A000561.P11526992141877935508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A179436 n - 5) + 4

end

end A000561.P11526992141877935508

namespace A000561

/-- `(n+1)*(A179436(n)-5)+4` -/
def P11526992141877935508.Spec : Prop :=
  ∀ n, P11526992141877935508.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P15332753451951995184

`(n+1)*(A166148(n+1)+1)+4`
-/

namespace A000561.P15332753451951995184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A166148 (n + 1) + 1) + 4

end

end A000561.P15332753451951995184

namespace A000561

/-- `(n+1)*(A166148(n+1)+1)+4` -/
def P15332753451951995184.Spec : Prop :=
  ∀ n, P15332753451951995184.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P10017874219802937120

`A228888(n+1)-A017113(n)`
-/

namespace A000561.P10017874219802937120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228888 (n + 1) - A017113 n

end

end A000561.P10017874219802937120

namespace A000561

/-- `A228888(n+1)-A017113(n)` -/
def P10017874219802937120.Spec : Prop :=
  ∀ n, P10017874219802937120.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P1157344347719941286

`(n+3)*A000217(A016777(n))+3+n`
-/

namespace A000561.P1157344347719941286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000217 (A016777 n).toNat + 3 + (n : ℤ)

end

end A000561.P1157344347719941286

namespace A000561

/-- `(n+3)*A000217(A016777(n))+3+n` -/
def P1157344347719941286.Spec : Prop :=
  ∀ n, P1157344347719941286.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P12059161033612194906

`A006566(n+1)+A022267(n+1)+A022267(n)`
-/

namespace A000561.P12059161033612194906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 1) + (A022267 (n + 1) + A022267 n)

end

end A000561.P12059161033612194906

namespace A000561

/-- `A006566(n+1)+A022267(n+1)+A022267(n)` -/
def P12059161033612194906.Spec : Prop :=
  ∀ n, P12059161033612194906.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P281117785183274421

`A127876(n+2)-(A008706(2*n+1)+2)`
-/

namespace A000561.P281117785183274421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127876 (n + 2) - (A008706 (2 * n + 1) + 2)

end

end A000561.P281117785183274421

namespace A000561

/-- `A127876(n+2)-(A008706(2*n+1)+2)` -/
def P281117785183274421.Spec : Prop :=
  ∀ n, P281117785183274421.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P3863832053743484255

`A116721(3*(n+1))+n+1`
-/

namespace A000561.P3863832053743484255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A000561.P3863832053743484255

namespace A000561

/-- `A116721(3*(n+1))+n+1` -/
def P3863832053743484255.Spec : Prop :=
  ∀ n, P3863832053743484255.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P9088126069504314364

`A000292(A008585(n+1))-(8*n+4)`
-/

namespace A000561.P9088126069504314364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008585 (n + 1)).toNat - (8 * n + 4 : ℤ)

end

end A000561.P9088126069504314364

namespace A000561

/-- `A000292(A008585(n+1))-(8*n+4)` -/
def P9088126069504314364.Spec : Prop :=
  ∀ n, P9088126069504314364.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P5150654020231026286

`A061702(A167614(n+2))`
-/

namespace A000561.P5150654020231026286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A167614 (n + 2)).toNat

end

end A000561.P5150654020231026286

namespace A000561

/-- `A061702(A167614(n+2))` -/
def P5150654020231026286.Spec : Prop :=
  ∀ n, P5150654020231026286.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P8299929724933147389

`A061702(eq[2, A141169(n)])`
-/

namespace A000561.P8299929724933147389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000561.P8299929724933147389

namespace A000561

/-- `A061702(eq[2, A141169(n)])` -/
def P8299929724933147389.Spec : Prop :=
  ∀ n, P8299929724933147389.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P17590013158784855811

`A061702(eq[3, A002262(n)])`
-/

namespace A000561.P17590013158784855811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000561.P17590013158784855811

namespace A000561

/-- `A061702(eq[3, A002262(n)])` -/
def P17590013158784855811.Spec : Prop :=
  ∀ n, P17590013158784855811.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P16727682057836886731

`A061702(A166136(n+2)-3)`
-/

namespace A000561.P16727682057836886731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A166136 (n + 2) - 3).toNat

end

end A000561.P16727682057836886731

namespace A000561

/-- `A061702(A166136(n+2)-3)` -/
def P16727682057836886731.Spec : Prop :=
  ∀ n, P16727682057836886731.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P2755740966894788544

`A061702(eq[2, A002260(n+1)-2])`
-/

namespace A000561.P2755740966894788544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000561.P2755740966894788544

namespace A000561

/-- `A061702(eq[2, A002260(n+1)-2])` -/
def P2755740966894788544.Spec : Prop :=
  ∀ n, P2755740966894788544.a n = A000561 (n + 3)

end A000561

/-! ## A000561.P12330804002156370976

`A061702(eq[2, A002260(n+1)/2])`
-/

namespace A000561.P12330804002156370976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A000561.P12330804002156370976

namespace A000561

/-- `A061702(eq[2, A002260(n+1)/2])` -/
def P12330804002156370976.Spec : Prop :=
  ∀ n, P12330804002156370976.a n = A000561 (n + 3)

end A000561

/-!
# A000562: Number of discordant permutations.

The programs for A000562, there is no canonical definition to state claims against.
-/

/-! ## A000562.P11870329552756000311

`A061702(eq[3, A141169(n)])`
-/

namespace A000562.P11870329552756000311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000562.P11870329552756000311

/-! ## A000562.P13100066918855747192

`A061702(eq[4, A002262(n)])`
-/

namespace A000562.P13100066918855747192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000562.P13100066918855747192

/-! ## A000562.P3485171404859503492

`A061702(eq[4, log2(A059268(n))])`
-/

namespace A000562.P3485171404859503492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A000562.P3485171404859503492

/-! ## A000562.P14566680121565967477

`A061702(A167499(n+3)-1)`
-/

namespace A000562.P14566680121565967477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A167499 (n + 3) - 1).toNat

end

end A000562.P14566680121565967477

/-! ## A000562.P1458125123771629482

`A061702(A000096(n+3)+5)`
-/

namespace A000562.P1458125123771629482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A000096 (n + 3) + 5).toNat

end

end A000562.P1458125123771629482

/-! ## A000562.P5000232292710895684

`A061702(A046691(n+2)+8)`
-/

namespace A000562.P5000232292710895684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A046691 (n + 2) + 8).toNat

end

end A000562.P5000232292710895684

/-! ## A000562.P14128884927551810899

`A061702(eq[5, A002260(n+1)])`
-/

namespace A000562.P14128884927551810899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000562.P14128884927551810899

/-! ## A000562.P701561289048217773

`A061702(A000217(n+5)-(n+1))`
-/

namespace A000562.P701561289048217773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A000562.P701561289048217773

/-! ## A000562.P3888555051345233225

`A061702(Δ[A023551(n+1)-n²])`
-/

namespace A000562.P3888555051345233225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (f1 (n + 1) - f1 n).toNat

end

end A000562.P3888555051345233225

/-! ## A000562.P9301785519917689065

`A061702(A055998(n+4)-2-2*(n+1))`
-/

namespace A000562.P9301785519917689065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A055998 (n + 4) - 2 - (2 * (n + 1) : ℤ)).toNat

end

end A000562.P9301785519917689065

/-!
# A000563: Number of discordant permutations.

The programs for A000563, there is no canonical definition to state claims against.
-/

/-! ## A000563.P11675658289119183259

`A061702(eq[5, A002262(n)])`
-/

namespace A000563.P11675658289119183259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000563.P11675658289119183259

/-! ## A000563.P5436021949043854597

`A061702(A166136(n+4)-1)`
-/

namespace A000563.P5436021949043854597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A166136 (n + 4) - 1).toNat

end

end A000563.P5436021949043854597

/-! ## A000563.P6610654567097733620

`A061702(A000217(n+5)+5)`
-/

namespace A000563.P6610654567097733620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A000217 (n + 5) + 5).toNat

end

end A000563.P6610654567097733620

/-! ## A000563.P4305373853612259722

`A061702(A055998(n+3)+8)`
-/

namespace A000563.P4305373853612259722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A055998 (n + 3) + 8).toNat

end

end A000563.P4305373853612259722

/-! ## A000563.P3444380767419192300

`A061702(eq[5, A144328(n+1)])`
-/

namespace A000563.P3444380767419192300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000563.P3444380767419192300

/-! ## A000563.P1689976195154466395

`A061702(eq[6, A002260(n+1)])`
-/

namespace A000563.P1689976195154466395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000563.P1689976195154466395

/-!
# A000564: Number of discordant permutations.

The programs for A000564, there is no canonical definition to state claims against.
-/

/-! ## A000564.P6090155286465049914

`A061702(eq[6, A002262(n)])`
-/

namespace A000564.P6090155286465049914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000564.P6090155286465049914

/-! ## A000564.P9970053676667521838

`A061702(A000217(n+6)+6)`
-/

namespace A000564.P9970053676667521838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A000217 (n + 6) + 6).toNat

end

end A000564.P9970053676667521838

/-! ## A000564.P7777938598761203956

`A061702(eq[7, A002260(n+1)])`
-/

namespace A000564.P7777938598761203956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000564.P7777938598761203956

/-! ## A000564.P812621363702789028

`A061702(Δ[A023551(n+1)]+12)`
-/

namespace A000564.P812621363702789028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (f1 (n + 1) - f1 n + 12).toNat

end

end A000564.P812621363702789028

/-! ## A000564.P3348622850852392495

`A061702(A161680(n+8)-(n+1))`
-/

namespace A000564.P3348622850852392495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A161680 (n + 8) - (n + 1 : ℤ)).toNat

end

end A000564.P3348622850852392495

/-! ## A000564.P456240565509548665

`A061702(A077169(n+7)+2-A007318(C(n, 2)))`
-/

namespace A000564.P456240565509548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A077169 (n + 7) + 2 - A007318 (Nat.choose n 2)).toNat

end

end A000564.P456240565509548665

/-!
# A000565: Number of discordant permutations.

The programs for A000565, there is no canonical definition to state claims against.
-/

/-! ## A000565.P17326406266199648462

`A061702(eq[7, A002262(n)])`
-/

namespace A000565.P17326406266199648462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000565.P17326406266199648462

/-! ## A000565.P7121168484493778098

`A061702(A161680(n+8)+7)`
-/

namespace A000565.P7121168484493778098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A161680 (n + 8) + 7).toNat

end

end A000565.P7121168484493778098

/-! ## A000565.P4463226689232270305

`A061702(eq[8, A002260(n+1)])`
-/

namespace A000565.P4463226689232270305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000565.P4463226689232270305

/-! ## A000565.P10072786981061821650

`A061702(eq[8, A135223(n+1)])`
-/

namespace A000565.P10072786981061821650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000565.P10072786981061821650

/-! ## A000565.P14246266814168565821

`A061702(A000217(n+8)-(n+1))`
-/

namespace A000565.P14246266814168565821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A000565.P14246266814168565821

/-!
# A000566: Heptagonal numbers (or 7-gonal numbers): n*(5*n-3)/2.

The programs for A000566, the canonical program `A000566.P16729495925051193587` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000566 has offset 0).

The definition of A000566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n-3)/2` (program `A000566.P18156590210243993346`, by `A000566.P18156590210243993346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000566.P18156590210243993346

`n*(5*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000566.P18156590210243993346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((5 * n : ℤ) - 3) : ℚ) / 2

end

end A000566.P18156590210243993346

namespace A000566

/-- `n*(5*n-3)/2` -/
def P18156590210243993346.Spec : Prop :=
  ∀ n, P18156590210243993346.a n = (A000566 n : ℚ)

theorem P18156590210243993346.correct : P18156590210243993346.Spec := by
  intro n
  induction n with
  | zero => simp [A000566, A000566.P18156590210243993346.a, A000566.P16729495925051193587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A000566, Nat.add_sub_cancel, A000566.P18156590210243993346.a, A000566.P16729495925051193587.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A000566

/-! ## A000566.P16729495925051193587

`a(n-1)+5*n-4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000566

/-- `a(n-1)+5*n-4` -/
def P16729495925051193587.Spec : Prop :=
  ∀ n, P16729495925051193587.a n = A000566 n

theorem P16729495925051193587.correct : P16729495925051193587.Spec := by
  intro n
  simp only [A000566]

end A000566

/-! ## A000566.P12742394703751184972

`A130520(5*n)`
-/

namespace A000566.P12742394703751184972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * n)

end

end A000566.P12742394703751184972

namespace A000566

/-- `A130520(5*n)` -/
def P12742394703751184972.Spec : Prop :=
  ∀ n, P12742394703751184972.a n = A000566 n

end A000566

/-! ## A000566.P16742253360263329215

`5*C(n, 2)+n`
-/

namespace A000566.P16742253360263329215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

end

end A000566.P16742253360263329215

namespace A000566

/-- `5*C(n, 2)+n` -/
def P16742253360263329215.Spec : Prop :=
  ∀ n, (P16742253360263329215.a n : ℤ) = A000566 n

end A000566

/-! ## A000566.P1345930461323191700

`∑[comp[gcd(5, n)+n]]`
-/

namespace A000566.P1345930461323191700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000566.P1345930461323191700

namespace A000566

/-- `∑[comp[gcd(5, n)+n]]` -/
def P1345930461323191700.Spec : Prop :=
  ∀ n, (P1345930461323191700.a n : ℤ) = A000566 n

end A000566

/-! ## A000566.P14140842252346942345

`∑[a(n-1)+5]` with `a(0)=0, a(1)=1`
-/

namespace A000566.P14140842252346942345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000566.P14140842252346942345

namespace A000566

/-- `∑[a(n-1)+5]` -/
def P14140842252346942345.Spec : Prop :=
  ∀ n, (P14140842252346942345.a n : ℤ) = A000566 n

end A000566

/-! ## A000566.P18391473249442409808

`∑[ogf((x+4x^2)/(1-2x+x^2))]`
-/

namespace A000566.P18391473249442409808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000566.P18391473249442409808

namespace A000566

/-- `∑[ogf((x+4x^2)/(1-2x+x^2))]` -/
def P18391473249442409808.Spec : Prop :=
  ∀ n, P18391473249442409808.a n = A000566 n

end A000566

/-! ## A000566.P3372714092703196422

`ogf((x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A000566.P3372714092703196422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -3, 3, -1] n

end

end A000566.P3372714092703196422

namespace A000566

/-- `ogf((x+4x^2)/(1-3x+3x^2-x^3))` -/
def P3372714092703196422.Spec : Prop :=
  ∀ n, P3372714092703196422.a n = A000566 n

end A000566

/-! ## A000566.P17055602916176508293

`5*n-(4-a(n-1))` with `a(0)=0`
-/

namespace A000566.P17055602916176508293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - (4 - a (n - 1))

end

end A000566.P17055602916176508293

namespace A000566

/-- `5*n-(4-a(n-1))` -/
def P17055602916176508293.Spec : Prop :=
  ∀ n, P17055602916176508293.a n = A000566 n

end A000566

/-! ## A000566.P8650490642858704475

`n-∑[a(n-1)-5]` with `a(0)=0, a(1)=0`
-/

namespace A000566.P8650490642858704475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000566.P8650490642858704475

namespace A000566

/-- `n-∑[a(n-1)-5]` -/
def P8650490642858704475.Spec : Prop :=
  ∀ n, P8650490642858704475.a n = A000566 n

end A000566

/-! ## A000566.P7912948846666517376

`∑[lcm(2, 2*n-1)+n-2]`
-/

namespace A000566.P7912948846666517376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((2 * n : ℤ) - 1) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000566.P7912948846666517376

namespace A000566

/-- `∑[lcm(2, 2*n-1)+n-2]` -/
def P7912948846666517376.Spec : Prop :=
  ∀ n, P7912948846666517376.a n = A000566 n

end A000566

/-! ## A000566.P6868469854419454544

`∑[4*(2*n)%(n+1)+n]`
-/

namespace A000566.P6868469854419454544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000566.P6868469854419454544

namespace A000566

/-- `∑[4*(2*n)%(n+1)+n]` -/
def P6868469854419454544.Spec : Prop :=
  ∀ n, (P6868469854419454544.a n : ℤ) = A000566 n

end A000566

/-! ## A000566.P14135254581857246762

`a(n-1)-(a(n-2)-a(n-1)-5)` with `a(0)=0, a(1)=1`
-/

namespace A000566.P14135254581857246762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A000566.P14135254581857246762

namespace A000566

/-- `a(n-1)-(a(n-2)-a(n-1)-5)` -/
def P14135254581857246762.Spec : Prop :=
  ∀ n, P14135254581857246762.a n = A000566 n

end A000566

/-! ## A000566.P15592353527134618363

`A192136(n)-1`
-/

namespace A000566.P15592353527134618363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n - 1

end

end A000566.P15592353527134618363

namespace A000566

/-- `A192136(n)-1` -/
def P15592353527134618363.Spec : Prop :=
  ∀ n, P15592353527134618363.a n = A000566 n

end A000566

/-! ## A000566.P14414349530481084973

`A005476(n)-n`
-/

namespace A000566.P14414349530481084973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - (n : ℤ)

end

end A000566.P14414349530481084973

namespace A000566

/-- `A005476(n)-n` -/
def P14414349530481084973.Spec : Prop :=
  ∀ n, P14414349530481084973.a n = A000566 n

end A000566

/-! ## A000566.P4364345606107903068

`A218471(n)-n²`
-/

namespace A000566.P4364345606107903068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n - (n ^ 2 : ℤ)

end

end A000566.P4364345606107903068

namespace A000566

/-- `A218471(n)-n²` -/
def P4364345606107903068.Spec : Prop :=
  ∀ n, P4364345606107903068.a n = A000566 n

end A000566

/-! ## A000566.P549271125893932157

`A049450(n)-∑[n]`
-/

namespace A000566.P549271125893932157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000566.P549271125893932157

namespace A000566

/-- `A049450(n)-∑[n]` -/
def P549271125893932157.Spec : Prop :=
  ∀ n, P549271125893932157.a n = A000566 n

end A000566

/-! ## A000566.P8492055276246370504

`A326725(n)+2*n`
-/

namespace A000566.P8492055276246370504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + (2 * n : ℤ)

end

end A000566.P8492055276246370504

namespace A000566

/-- `A326725(n)+2*n` -/
def P8492055276246370504.Spec : Prop :=
  ∀ n, P8492055276246370504.a n = A000566 n

end A000566

/-! ## A000566.P65240220389167930

`A005475(n)-2*n`
-/

namespace A000566.P65240220389167930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - (2 * n : ℤ)

end

end A000566.P65240220389167930

namespace A000566

/-- `A005475(n)-2*n` -/
def P65240220389167930.Spec : Prop :=
  ∀ n, P65240220389167930.a n = A000566 n

end A000566

/-! ## A000566.P6867307651109230362

`A082450(n)-5+n`
-/

namespace A000566.P6867307651109230362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082450 n - 5 + (n : ℤ)

end

end A000566.P6867307651109230362

namespace A000566

/-- `A082450(n)-5+n` -/
def P6867307651109230362.Spec : Prop :=
  ∀ n, P6867307651109230362.a n = A000566 n

end A000566

/-!
# A000567: Octagonal numbers: n*(3*n-2). Also called star numbers.

The programs for A000567, the canonical program `A000567.P17850767079432249295` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000567 has offset 0).

The definition of A000567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n-2)` (program `A000567.P17850767079432249295`, by `A000567.P17850767079432249295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000567.P17850767079432249295

`n*(3*n-2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000567

/-- `n*(3*n-2)` -/
def P17850767079432249295.Spec : Prop :=
  ∀ n, P17850767079432249295.a n = A000567 n

theorem P17850767079432249295.correct : P17850767079432249295.Spec := by
  intro n
  simp only [A000567]

end A000567

/-! ## A000567.P9537360082275260803

`C(n+1, 2)+5*C(n, 2)`
-/

namespace A000567.P9537360082275260803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 5 * Nat.choose n 2

end

end A000567.P9537360082275260803

namespace A000567

/-- `C(n+1, 2)+5*C(n, 2)` -/
def P9537360082275260803.Spec : Prop :=
  ∀ n, (P9537360082275260803.a n : ℤ) = A000567 n

end A000567

/-! ## A000567.P3944723622289086042

`(A185212(n)-1)/4`
-/

namespace A000567.P3944723622289086042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185212 n - 1 : ℚ) / 4

end

end A000567.P3944723622289086042

namespace A000567

/-- `(A185212(n)-1)/4` -/
def P3944723622289086042.Spec : Prop :=
  ∀ n, P3944723622289086042.a n = (A000567 n : ℚ)

end A000567

/-! ## A000567.P6307831533590653991

`A000578(n)-A007531(n)`
-/

namespace A000567.P6307831533590653991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A007531 n

end

end A000567.P6307831533590653991

namespace A000567

/-- `A000578(n)-A007531(n)` -/
def P6307831533590653991.Spec : Prop :=
  ∀ n, P6307831533590653991.a n = A000567 n

end A000567

/-! ## A000567.P10568111989548813305

`A053755(n)-A000290(n+1)`
-/

namespace A000567.P10568111989548813305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n - A000290 (n + 1)

end

end A000567.P10568111989548813305

namespace A000567

/-- `A053755(n)-A000290(n+1)` -/
def P10568111989548813305.Spec : Prop :=
  ∀ n, P10568111989548813305.a n = A000567 n

end A000567

/-! ## A000567.P14374646428480180289

`A174709(6*n)`
-/

namespace A000567.P14374646428480180289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (6 * n)

end

end A000567.P14374646428480180289

namespace A000567

/-- `A174709(6*n)` -/
def P14374646428480180289.Spec : Prop :=
  ∀ n, P14374646428480180289.a n = A000567 n

end A000567

/-! ## A000567.P16534247482954623348

`6*C(n, 2)+n`
-/

namespace A000567.P16534247482954623348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 2 + n

end

end A000567.P16534247482954623348

namespace A000567

/-- `6*C(n, 2)+n` -/
def P16534247482954623348.Spec : Prop :=
  ∀ n, (P16534247482954623348.a n : ℤ) = A000567 n

end A000567

/-! ## A000567.P17726794933037003441

`∑[a(n-1)+6]` with `a(0)=0, a(1)=1`
-/

namespace A000567.P17726794933037003441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000567.P17726794933037003441

namespace A000567

/-- `∑[a(n-1)+6]` -/
def P17726794933037003441.Spec : Prop :=
  ∀ n, (P17726794933037003441.a n : ℤ) = A000567 n

end A000567

/-! ## A000567.P6957274968695810839

`Δ[lcm(n, (1-n)²)]-n`
-/

namespace A000567.P6957274968695810839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A000567.P6957274968695810839

namespace A000567

/-- `Δ[lcm(n, (1-n)²)]-n` -/
def P6957274968695810839.Spec : Prop :=
  ∀ n, P6957274968695810839.a n = A000567 n

end A000567

/-! ## A000567.P8685284101095276367

`∑[ogf((x+5x^2)/(1-2x+x^2))]`
-/

namespace A000567.P8685284101095276367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000567.P8685284101095276367

namespace A000567

/-- `∑[ogf((x+5x^2)/(1-2x+x^2))]` -/
def P8685284101095276367.Spec : Prop :=
  ∀ n, P8685284101095276367.a n = A000567 n

end A000567

/-! ## A000567.P9392661273453625469

`ogf((x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A000567.P9392661273453625469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -3, 3, -1] n

end

end A000567.P9392661273453625469

namespace A000567

/-- `ogf((x+5x^2)/(1-3x+3x^2-x^3))` -/
def P9392661273453625469.Spec : Prop :=
  ∀ n, P9392661273453625469.a n = A000567 n

end A000567

/-! ## A000567.P15510020585345973600

`5-∑[a(n-1)-6]` with `a(0)=5`
-/

namespace A000567.P15510020585345973600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000567.P15510020585345973600

namespace A000567

/-- `5-∑[a(n-1)-6]` -/
def P15510020585345973600.Spec : Prop :=
  ∀ n, P15510020585345973600.a n = A000567 n

end A000567

/-! ## A000567.P2573212090882053494

`xor(1, Δ[(n-1)^3])+n`
-/

namespace A000567.P2573212090882053494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A000567.P2573212090882053494

namespace A000567

/-- `xor(1, Δ[(n-1)^3])+n` -/
def P2573212090882053494.Spec : Prop :=
  ∀ n, P2573212090882053494.a n = A000567 n

end A000567

/-! ## A000567.P1679826850690287709

`or(1, Δ[(n-1)^3])+n-1`
-/

namespace A000567.P1679826850690287709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n) + ((n : ℤ) - 1)

end

end A000567.P1679826850690287709

namespace A000567

/-- `or(1, Δ[(n-1)^3])+n-1` -/
def P1679826850690287709.Spec : Prop :=
  ∀ n, P1679826850690287709.a n = A000567 n

end A000567

/-! ## A000567.P261719177005062729

`∑[5*(2*n)%(n+1)+n]`
-/

namespace A000567.P261719177005062729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000567.P261719177005062729

namespace A000567

/-- `∑[5*(2*n)%(n+1)+n]` -/
def P261719177005062729.Spec : Prop :=
  ∀ n, (P261719177005062729.a n : ℤ) = A000567 n

end A000567

/-! ## A000567.P11540708146339481732

`a(n-1)+a(n-1)+6-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000567.P11540708146339481732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (6 - a (n - 2)))

end

end A000567.P11540708146339481732

namespace A000567

/-- `a(n-1)+a(n-1)+6-a(n-2)` -/
def P11540708146339481732.Spec : Prop :=
  ∀ n, P11540708146339481732.a n = A000567 n

theorem P11540708146339481732.correct : P11540708146339481732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A000567, Nat.add_sub_cancel, A000567.P11540708146339481732.a, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A000567, Nat.add_sub_cancel, A000567.P11540708146339481732.a, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000567

/-! ## A000567.P5132103287390131631

`6-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A000567.P5132103287390131631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A000567.P5132103287390131631

namespace A000567

/-- `6-(a(n-2)-a(n-1)-a(n-1))` -/
def P5132103287390131631.Spec : Prop :=
  ∀ n, P5132103287390131631.a n = A000567 n

theorem P5132103287390131631.correct : P5132103287390131631.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A000567, Nat.add_sub_cancel, A000567.P5132103287390131631.a, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A000567, Nat.add_sub_cancel, A000567.P5132103287390131631.a, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000567

/-! ## A000567.P15898648544787857502

`A056105(n)-1`
-/

namespace A000567.P15898648544787857502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n - 1

end

end A000567.P15898648544787857502

namespace A000567

/-- `A056105(n)-1` -/
def P15898648544787857502.Spec : Prop :=
  ∀ n, P15898648544787857502.a n = A000567 n

end A000567

/-! ## A000567.P14795187273517058914

`A271740(n)-2`
-/

namespace A000567.P14795187273517058914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271740 n - 2

end

end A000567.P14795187273517058914

namespace A000567

/-- `A271740(n)-2` -/
def P14795187273517058914.Spec : Prop :=
  ∀ n, P14795187273517058914.a n = A000567 n

end A000567

/-! ## A000567.P6878928130096329986

`A139267(n)/2`
-/

namespace A000567.P6878928130096329986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139267 n : ℚ) / 2

end

end A000567.P6878928130096329986

namespace A000567

/-- `A139267(n)/2` -/
def P6878928130096329986.Spec : Prop :=
  ∀ n, P6878928130096329986.a n = (A000567 n : ℚ)

end A000567

/-!
# A000568: Number of outcomes of unlabeled n-team round-robin tournaments.

The programs for A000568, there is no canonical definition to state claims against.
-/

/-! ## A000568.P2228317498372583374

`A350912(A179865(n+1))`
-/

namespace A000568.P2228317498372583374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A179865 (n + 1)).toNat

end

end A000568.P2228317498372583374

/-! ## A000568.P15098254079530097993

`A350912(A212342(n)+1)`
-/

namespace A000568.P15098254079530097993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A212342 n + 1).toNat

end

end A000568.P15098254079530097993

/-! ## A000568.P6446262395607155950

`A350912(A123108(∑[2*n]))`
-/

namespace A000568.P6446262395607155950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A123108 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000568.P6446262395607155950

/-! ## A000568.P16683223321206398121

`A350912(A027379(n)-2*n)`
-/

namespace A000568.P16683223321206398121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A027379 n - (2 * n : ℤ)).toNat

end

end A000568.P16683223321206398121

/-! ## A000568.P1331734698595640233

`A350912(A027379(n)-n-n)`
-/

namespace A000568.P1331734698595640233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A027379 n - (n : ℤ) - (n : ℤ)).toNat

end

end A000568.P1331734698595640233

/-!
# A000569: Number of graphical partitions of 2n.

The programs for A000569, there is no canonical definition to state claims against.
-/

/-! ## A000569.P11734754887404257655

`A058696(n+1)-A339617(n+1)`
-/

namespace A000569.P11734754887404257655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A339617 (n + 1)

end

end A000569.P11734754887404257655

/-! ## A000569.P15750464917782834005

`A000041(2*(n+1))-A339617(n+1)`
-/

namespace A000569.P15750464917782834005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A339617 (n + 1)

end

end A000569.P15750464917782834005

/-! ## A000569.P3719897484383815295

`A288578(n)-A342910(9*n+10)`
-/

namespace A000569.P3719897484383815295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288578 n - A342910 (9 * n + 10)

end

end A000569.P3719897484383815295

/-! ## A000569.P13715195995080175758

`A288578(n)-A037909(A047152(n))`
-/

namespace A000569.P13715195995080175758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288578 n - A037909 (A047152 n).toNat

end

end A000569.P13715195995080175758

/-! ## A000569.P14350011315781387593

`or(A001221(A356698(n+3)), A160786(n))`
-/

namespace A000569.P14350011315781387593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A356698 (n + 3)).toNat) (A160786 n)

end

end A000569.P14350011315781387593

/-!
# A000570: Number of tournaments on n nodes determined by their score vectors.

The programs for A000570, the canonical program `A000570.P12073526556242968410` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000570 has offset 1).

The definition of A000570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000570.P12073526556242968410

`a(n-5)+a(n-4)+a(n-3)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000570

/-- `a(n-5)+a(n-4)+a(n-3)+a(n-1)` -/
def P12073526556242968410.Spec : Prop :=
  ∀ n, (P12073526556242968410.a n : ℤ) = A000570 (n + 1)

theorem P12073526556242968410.correct : P12073526556242968410.Spec := by
  intro n
  simp only [A000570, Nat.add_sub_cancel]

end A000570

/-! ## A000570.P18051760619501788784

`A000568(n+1)-A121272(n+1)`
-/

namespace A000570.P18051760619501788784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000568 (n + 1) - A121272 (n + 1)

end

end A000570.P18051760619501788784

namespace A000570

/-- `A000568(n+1)-A121272(n+1)` -/
def P18051760619501788784.Spec : Prop :=
  ∀ n, P18051760619501788784.a n = A000570 (n + 1)

end A000570

/-! ## A000570.P11982392589183201226

`A000571(n+1)-A121244(n+1)`
-/

namespace A000570.P11982392589183201226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1) - A121244 (n + 1)

end

end A000570.P11982392589183201226

namespace A000570

/-- `A000571(n+1)-A121244(n+1)` -/
def P11982392589183201226.Spec : Prop :=
  ∀ n, P11982392589183201226.a n = A000570 (n + 1)

end A000570

/-! ## A000570.P15737693585475997547

`A350912(A179865(n+2))-A121272(n+1)`
-/

namespace A000570.P15737693585475997547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A179865 (n + 2)).toNat - A121272 (n + 1)

end

end A000570.P15737693585475997547

namespace A000570

/-- `A350912(A179865(n+2))-A121272(n+1)` -/
def P15737693585475997547.Spec : Prop :=
  ∀ n, P15737693585475997547.a n = A000570 (n + 1)

end A000570

/-! ## A000570.P6513658695563084264

`A216256(A159035(n)+n%3*floor(n/3))`
-/

namespace A000570.P6513658695563084264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A159035 n + ((n % 3 : ℕ) : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A000570.P6513658695563084264

namespace A000570

/-- `A216256(A159035(n)+n%3*floor(n/3))` -/
def P6513658695563084264.Spec : Prop :=
  ∀ n, P6513658695563084264.a n = A000570 (n + 1)

end A000570

/-!
# A000571: Number of different score sequences that are possible in an n-team round-robin tournament.

The programs for A000571, there is no canonical definition to state claims against.
-/

/-! ## A000571.P555017405070237340

`A121244(A028310(n))+A000570(A028310(n))`
-/

namespace A000571.P555017405070237340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121244 (A028310 n).toNat + A000570 (A028310 n).toNat

end

end A000571.P555017405070237340

/-! ## A000571.P3877645767801329188

`floor(sqrt(A346488(n!)))`
-/

namespace A000571.P3877645767801329188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A346488 (Nat.factorial n))

end

end A000571.P3877645767801329188

/-! ## A000571.P17726223154755905405

`round(sqrt(A326203(n!)))`
-/

namespace A000571.P17726223154755905405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A326203 (Nat.factorial n) : ℝ))

end

end A000571.P17726223154755905405

/-! ## A000571.P8921493036195365544

`A077003(A001104(n+1))`
-/

namespace A000571.P8921493036195365544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077003 (A001104 (n + 1)).toNat

end

end A000571.P8921493036195365544

/-! ## A000571.P14693347207056343237

`A077003(A002998(n+1))`
-/

namespace A000571.P14693347207056343237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077003 (A002998 (n + 1)).toNat

end

end A000571.P14693347207056343237

/-!
# A000572: A Beatty sequence: [ n(e+1) ].

The programs for A000572, the canonical program `A000572.P3578859663019225295` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000572 has offset 1).

The definition of A000572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000572.P3578859663019225295

`floor((n+1)*(e+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000572

/-- `floor((n+1)*(e+1))` -/
def P3578859663019225295.Spec : Prop :=
  ∀ n, P3578859663019225295.a n = A000572 (n + 1)

theorem P3578859663019225295.correct : P3578859663019225295.Spec := by
  intro n
  simp only [A000572, Nat.add_sub_cancel]

end A000572

/-! ## A000572.P9470724114289782022

`∑[Δ[A022843(n)]+1]`
-/

namespace A000572.P9470724114289782022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000572.P9470724114289782022

namespace A000572

/-- `∑[Δ[A022843(n)]+1]` -/
def P9470724114289782022.Spec : Prop :=
  ∀ n, P9470724114289782022.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P1558211273217347304

`∑[A276859(n+1)+1]`
-/

namespace A000572.P1558211273217347304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000572.P1558211273217347304

namespace A000572

/-- `∑[A276859(n+1)+1]` -/
def P1558211273217347304.Spec : Prop :=
  ∀ n, P1558211273217347304.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P11864796643759364382

`∑[A000032(Δ[floor(e*n)])]`
-/

namespace A000572.P11864796643759364382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000572.P11864796643759364382

namespace A000572

/-- `∑[A000032(Δ[floor(e*n)])]` -/
def P11864796643759364382.Spec : Prop :=
  ∀ n, P11864796643759364382.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P3368919390686184358

`∑[A000203(Δ[floor(e*n)])]`
-/

namespace A000572.P3368919390686184358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000572.P3368919390686184358

namespace A000572

/-- `∑[A000203(Δ[floor(e*n)])]` -/
def P3368919390686184358.Spec : Prop :=
  ∀ n, P3368919390686184358.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P3241194610500949870

`A022843(n+1)+1+n`
-/

namespace A000572.P3241194610500949870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + 1 + (n : ℤ)

end

end A000572.P3241194610500949870

namespace A000572

/-- `A022843(n+1)+1+n` -/
def P3241194610500949870.Spec : Prop :=
  ∀ n, P3241194610500949870.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P10243084805860268316

`A184589(n+1)+2+n`
-/

namespace A000572.P10243084805860268316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + 2 + (n : ℤ)

end

end A000572.P10243084805860268316

namespace A000572

/-- `A184589(n+1)+2+n` -/
def P10243084805860268316.Spec : Prop :=
  ∀ n, P10243084805860268316.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P9549812153798286182

`A292664(n+1)+A014246(n+1)`
-/

namespace A000572.P9549812153798286182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) + A014246 (n + 1)

end

end A000572.P9549812153798286182

namespace A000572

/-- `A292664(n+1)+A014246(n+1)` -/
def P9549812153798286182.Spec : Prop :=
  ∀ n, P9549812153798286182.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P1082678278881793202

`A189520(n+1)-A292647(n+1)`
-/

namespace A000572.P1082678278881793202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189520 (n + 1) - A292647 (n + 1)

end

end A000572.P1082678278881793202

namespace A000572

/-- `A189520(n+1)-A292647(n+1)` -/
def P1082678278881793202.Spec : Prop :=
  ∀ n, P1082678278881793202.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P9166494634447030950

`A189523(n+1)-A292666(n+1)`
-/

namespace A000572.P9166494634447030950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189523 (n + 1) - A292666 (n + 1)

end

end A000572.P9166494634447030950

namespace A000572

/-- `A189523(n+1)-A292666(n+1)` -/
def P9166494634447030950.Spec : Prop :=
  ∀ n, P9166494634447030950.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P8410160273962606448

`A121384(n+1)+n`
-/

namespace A000572.P8410160273962606448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n + 1) + (n : ℤ)

end

end A000572.P8410160273962606448

namespace A000572

/-- `A121384(n+1)+n` -/
def P8410160273962606448.Spec : Prop :=
  ∀ n, P8410160273962606448.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P1322579249942945588

`record[A108599(n+1)+1]+n`
-/

namespace A000572.P1322579249942945588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A000572.P1322579249942945588

namespace A000572

/-- `record[A108599(n+1)+1]+n` -/
def P1322579249942945588.Spec : Prop :=
  ∀ n, P1322579249942945588.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P13529875545886946596

`A108599(A054385(n+1))+1+n`
-/

namespace A000572.P13529875545886946596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A054385 (n + 1)).toNat + 1 + (n : ℤ)

end

end A000572.P13529875545886946596

namespace A000572

/-- `A108599(A054385(n+1))+1+n` -/
def P13529875545886946596.Spec : Prop :=
  ∀ n, P13529875545886946596.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P1886697147645974356

`A279607(2*(n+1))+n+1`
-/

namespace A000572.P1886697147645974356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A000572.P1886697147645974356

namespace A000572

/-- `A279607(2*(n+1))+n+1` -/
def P1886697147645974356.Spec : Prop :=
  ∀ n, P1886697147645974356.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P9952574014309336187

`A184744(A022843(n+1))`
-/

namespace A000572.P9952574014309336187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184744 (A022843 (n + 1)).toNat

end

end A000572.P9952574014309336187

namespace A000572

/-- `A184744(A022843(n+1))` -/
def P9952574014309336187.Spec : Prop :=
  ∀ n, P9952574014309336187.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P15280656948365891044

`A000210(n+1)+2*(n+1)`
-/

namespace A000572.P15280656948365891044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (n + 1) + (2 * (n + 1) : ℤ)

end

end A000572.P15280656948365891044

namespace A000572

/-- `A000210(n+1)+2*(n+1)` -/
def P15280656948365891044.Spec : Prop :=
  ∀ n, P15280656948365891044.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P5478440868505656884

`A054385(A000210(n+1)+1)+n`
-/

namespace A000572.P5478440868505656884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A000210 (n + 1) + 1).toNat + (n : ℤ)

end

end A000572.P5478440868505656884

namespace A000572

/-- `A054385(A000210(n+1)+1)+n` -/
def P5478440868505656884.Spec : Prop :=
  ∀ n, P5478440868505656884.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P14056406949196572971

`A006594(A000210(n+1)+n)+2`
-/

namespace A000572.P14056406949196572971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (A000210 (n + 1) + (n : ℤ)).toNat + 2

end

end A000572.P14056406949196572971

namespace A000572

/-- `A006594(A000210(n+1)+n)+2` -/
def P14056406949196572971.Spec : Prop :=
  ∀ n, P14056406949196572971.a n = A000572 (n + 1)

end A000572

/-! ## A000572.P11008130143321129678

`A103517(A000210(n+1)+n)-A000210(n+1)`
-/

namespace A000572.P11008130143321129678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A000210 (n + 1) + (n : ℤ)).toNat - A000210 (n + 1)

end

end A000572.P11008130143321129678

namespace A000572

/-- `A103517(A000210(n+1)+n)-A000210(n+1)` -/
def P11008130143321129678.Spec : Prop :=
  ∀ n, P11008130143321129678.a n = A000572 (n + 1)

end A000572

/-!
# A000573: Number of 4 X n normalized Latin rectangles.

The programs for A000573, there is no canonical definition to state claims against.
-/

/-! ## A000573.P16378452007323756809

`A001009(A141214(n)+7)`
-/

namespace A000573.P16378452007323756809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (A141214 n + 7).toNat

end

end A000573.P16378452007323756809

/-! ## A000573.P1520961008890873939

`A001009(A052905(n)+9)`
-/

namespace A000573.P1520961008890873939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (A052905 n + 9).toNat

end

end A000573.P1520961008890873939

/-! ## A000573.P16935607659590597675

`A001009(A055999(n)+10)`
-/

namespace A000573.P16935607659590597675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (A055999 n + 10).toNat

end

end A000573.P16935607659590597675

/-! ## A000573.P8120365842298818166

`A001009(eq[5, A066657(n)])`
-/

namespace A000573.P8120365842298818166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000573.P8120365842298818166

/-!
# A000574: Coefficient of x^5 in expansion of (1 + x + x^2)^n.

The programs for A000574, the canonical program `A000574.P5153420698503820018` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000574 has offset 3).

The definition of A000574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000574.P17080476084721844537

`C(n+4, 4)*(n+15)/5`
-/

namespace A000574.P17080476084721844537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 * (n + 15) : ℚ) / 5

end

end A000574.P17080476084721844537

namespace A000574

/-- `C(n+4, 4)*(n+15)/5` -/
def P17080476084721844537.Spec : Prop :=
  ∀ n, P17080476084721844537.a n = (A000574 (n + 3) : ℚ)

end A000574

/-! ## A000574.P8778743664423434227

`3*C(n+5, 5)-2*C(n+4, 5)`
-/

namespace A000574.P8778743664423434227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 5) 5 : ℤ) - (2 * Nat.choose (n + 4) 5 : ℤ)

end

end A000574.P8778743664423434227

namespace A000574

/-- `3*C(n+5, 5)-2*C(n+4, 5)` -/
def P8778743664423434227.Spec : Prop :=
  ∀ n, P8778743664423434227.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P5153420698503820018

`3*C(n+3, 3)+4*C(n+3, 4)+C(n+3, 5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000574

/-- `3*C(n+3, 3)+4*C(n+3, 4)+C(n+3, 5)` -/
def P5153420698503820018.Spec : Prop :=
  ∀ n, (P5153420698503820018.a n : ℤ) = A000574 (n + 3)

theorem P5153420698503820018.correct : P5153420698503820018.Spec := by
  intro n
  simp only [A000574, Nat.add_sub_cancel]

end A000574

/-! ## A000574.P18439729999075577735

`∑[∑[∑[∑[3+n]]]]`
-/

namespace A000574.P18439729999075577735
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000574.P18439729999075577735

namespace A000574

/-- `∑[∑[∑[∑[3+n]]]]` -/
def P18439729999075577735.Spec : Prop :=
  ∀ n, (P18439729999075577735.a n : ℤ) = A000574 (n + 3)

end A000574

/-! ## A000574.P8290339897756431976

`A095661(n)+a(n-1)` with `a(0)=3`
-/

namespace A000574.P8290339897756431976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095661 n + a (n - 1)

end

end A000574.P8290339897756431976

namespace A000574

/-- `A095661(n)+a(n-1)` -/
def P8290339897756431976.Spec : Prop :=
  ∀ n, P8290339897756431976.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P5218421590833587529

`A005701(n)+∑[A005582(n)]`
-/

namespace A000574.P5218421590833587529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000574.P5218421590833587529

namespace A000574

/-- `A005701(n)+∑[A005582(n)]` -/
def P5218421590833587529.Spec : Prop :=
  ∀ n, P5218421590833587529.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P16559057552283712963

`∑[A095661(n)]%A095668(n)`
-/

namespace A000574.P16559057552283712963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095668 n)

end

end A000574.P16559057552283712963

namespace A000574

/-- `∑[A095661(n)]%A095668(n)` -/
def P16559057552283712963.Spec : Prop :=
  ∀ n, P16559057552283712963.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P1812634329188844586

`A006636(n)-A006504(n+1)`
-/

namespace A000574.P1812634329188844586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006636 n - A006504 (n + 1)

end

end A000574.P1812634329188844586

namespace A000574

/-- `A006636(n)-A006504(n+1)` -/
def P1812634329188844586.Spec : Prop :=
  ∀ n, P1812634329188844586.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P16508902282491620880

`A027789(n+1)-A051879(n)`
-/

namespace A000574.P16508902282491620880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027789 (n + 1) - A051879 n

end

end A000574.P16508902282491620880

namespace A000574

/-- `A027789(n+1)-A051879(n)` -/
def P16508902282491620880.Spec : Prop :=
  ∀ n, P16508902282491620880.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P4129549133540839017

`A101855(n+1)-A005701(n)`
-/

namespace A000574.P4129549133540839017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101855 (n + 1) - A005701 n

end

end A000574.P4129549133540839017

namespace A000574

/-- `A101855(n+1)-A005701(n)` -/
def P4129549133540839017.Spec : Prop :=
  ∀ n, P4129549133540839017.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P4903267413166040500

`A027764(n+3)-A034263(n)`
-/

namespace A000574.P4903267413166040500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) - A034263 n

end

end A000574.P4903267413166040500

namespace A000574

/-- `A027764(n+3)-A034263(n)` -/
def P4903267413166040500.Spec : Prop :=
  ∀ n, P4903267413166040500.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P5267173498215115246

`2*A095668(n)-A096943(n)`
-/

namespace A000574.P5267173498215115246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095668 n - A096943 n

end

end A000574.P5267173498215115246

namespace A000574

/-- `2*A095668(n)-A096943(n)` -/
def P5267173498215115246.Spec : Prop :=
  ∀ n, P5267173498215115246.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P14936922884066099258

`A253945(n+4)-A006411(n+1)`
-/

namespace A000574.P14936922884066099258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A006411 (n + 1)

end

end A000574.P14936922884066099258

namespace A000574

/-- `A253945(n+4)-A006411(n+1)` -/
def P14936922884066099258.Spec : Prop :=
  ∀ n, P14936922884066099258.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P870894287938172693

`A006411(n+1)-2*A277935(n+1)`
-/

namespace A000574.P870894287938172693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 1) - 2 * A277935 (n + 1)

end

end A000574.P870894287938172693

namespace A000574

/-- `A006411(n+1)-2*A277935(n+1)` -/
def P870894287938172693.Spec : Prop :=
  ∀ n, P870894287938172693.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P4070521466282384102

`A000217(n+1)+A005583(n+1)+A005582(n)`
-/

namespace A000574.P4070521466282384102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A005583 (n + 1) + A005582 n)

end

end A000574.P4070521466282384102

namespace A000574

/-- `A000217(n+1)+A005583(n+1)+A005582(n)` -/
def P4070521466282384102.Spec : Prop :=
  ∀ n, P4070521466282384102.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P8172266316125373584

`A051747(n+1)+A051747(n+1)-A027660(n)`
-/

namespace A000574.P8172266316125373584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) + (A051747 (n + 1) - A027660 n)

end

end A000574.P8172266316125373584

namespace A000574

/-- `A051747(n+1)+A051747(n+1)-A027660(n)` -/
def P8172266316125373584.Spec : Prop :=
  ∀ n, P8172266316125373584.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P6576247671753639474

`A051877(n+1)-A271663(n+1)`
-/

namespace A000574.P6576247671753639474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 (n + 1) - A271663 (n + 1)

end

end A000574.P6576247671753639474

namespace A000574

/-- `A051877(n+1)-A271663(n+1)` -/
def P6576247671753639474.Spec : Prop :=
  ∀ n, P6576247671753639474.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P1320701658131187916

`A051740(n+1)+A027800(n)-A034263(n+1)`
-/

namespace A000574.P1320701658131187916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 (n + 1) + (A027800 n - A034263 (n + 1))

end

end A000574.P1320701658131187916

namespace A000574

/-- `A051740(n+1)+A027800(n)-A034263(n+1)` -/
def P1320701658131187916.Spec : Prop :=
  ∀ n, P1320701658131187916.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P14763033412791407917

`A095662(n+1)-(A095662(n)+A095661(n+1))`
-/

namespace A000574.P14763033412791407917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 (n + 1) - (A095662 n + A095661 (n + 1))

end

end A000574.P14763033412791407917

namespace A000574

/-- `A095662(n+1)-(A095662(n)+A095661(n+1))` -/
def P14763033412791407917.Spec : Prop :=
  ∀ n, P14763033412791407917.a n = A000574 (n + 3)

end A000574

/-! ## A000574.P16586486896843322572

`A067056(n+2)+A067056(n+2)-A051877(n)`
-/

namespace A000574.P16586486896843322572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067056 (n + 2) + (A067056 (n + 2) - A051877 n)

end

end A000574.P16586486896843322572

namespace A000574

/-- `A067056(n+2)+A067056(n+2)-A051877(n)` -/
def P16586486896843322572.Spec : Prop :=
  ∀ n, P16586486896843322572.a n = A000574 (n + 3)

end A000574

/-!
# A000575: Tenth column of quintinomial coefficients.

The programs for A000575, the canonical program `A000575.P241324822496640098` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000575 has offset 0).

The definition of A000575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000575.P241324822496640098

`∑[A064058(n+1)]-A062988(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A000575

/-- `∑[A064058(n+1)]-A062988(n)` -/
def P241324822496640098.Spec : Prop :=
  ∀ n, P241324822496640098.a n = A000575 n

theorem P241324822496640098.correct : P241324822496640098.Spec := by
  intro n
  simp only [A000575]

end A000575

/-! ## A000575.P3648230255485827542

`A000582(n+11)-A027800(n+2)`
-/

namespace A000575.P3648230255485827542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 11) - A027800 (n + 2)

end

end A000575.P3648230255485827542

namespace A000575

/-- `A000582(n+11)-A027800(n+2)` -/
def P3648230255485827542.Spec : Prop :=
  ∀ n, P3648230255485827542.a n = A000575 n

end A000575

/-! ## A000575.P10602098656288910067

`∑[A064058(n+1)-A000332(n+5)]`
-/

namespace A000575.P10602098656288910067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (n + 1) - A000332 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000575.P10602098656288910067

namespace A000575

/-- `∑[A064058(n+1)-A000332(n+5)]` -/
def P10602098656288910067.Spec : Prop :=
  ∀ n, P10602098656288910067.a n = A000575 n

end A000575

/-! ## A000575.P13975771499703607605

`A035343((2*n+3)*(n+6))`
-/

namespace A000575.P13975771499703607605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 ((2 * n + 3) * (n + 6))

end

end A000575.P13975771499703607605

namespace A000575

/-- `A035343((2*n+3)*(n+6))` -/
def P13975771499703607605.Spec : Prop :=
  ∀ n, P13975771499703607605.a n = A000575 n

end A000575

/-!
# A000576: a(n) is the number of (n-2) X n normalized Latin rectangles.

The programs for A000576, there is no canonical definition to state claims against.
-/

/-! ## A000576.P1519039484711677076

`A001009(∑[n+3]+1)`
-/

namespace A000576.P1519039484711677076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000576.P1519039484711677076

/-!
# A000577: Number of triangular polyominoes (or triangular polyforms, or polyiamonds) with n cells (turning over is allowed, holes are allowed, must be connected along edges).

The programs for A000577, there is no canonical definition to state claims against.
-/

/-! ## A000577.P15485634186655581966

`A030224(n+1)+A030223(n+1)`
-/

namespace A000577.P15485634186655581966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030224 (n + 1) + A030223 (n + 1)

end

end A000577.P15485634186655581966

/-! ## A000577.P9334560859082277600

`A006534(n+1)-A030224(n+1)`
-/

namespace A000577.P9334560859082277600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - A030224 (n + 1)

end

end A000577.P9334560859082277600

/-! ## A000577.P15162509897542988459

`(A030223(n+1)+A006534(n+1))/2`
-/

namespace A000577.P15162509897542988459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030223 (n + 1) + A006534 (n + 1) : ℚ) / 2

end

end A000577.P15162509897542988459

/-! ## A000577.P6550690226222185619

`Δ[∑[A119532(n)]-A173271(n)]`
-/

namespace A000577.P6550690226222185619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000577.P6550690226222185619

/-! ## A000577.P1884712440976622914

`A119532(n+1)-Δ[A173271(n)]`
-/

namespace A000577.P1884712440976622914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 (n + 1) - (f1 (n + 1) - f1 n)

end

end A000577.P1884712440976622914

/-! ## A000577.P16078128299932692041

`A119532(n+1)-A000105(n+1)`
-/

namespace A000577.P16078128299932692041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 (n + 1) - A000105 (n + 1)

end

end A000577.P16078128299932692041

/-!
# A000578: The cubes: a(n) = n^3.

The programs for A000578, the canonical program `A000578.P12162961755414704816` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000578 has offset 0).

The definition of A000578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3` (program `A000578.P12162961755414704816`, by `A000578.P12162961755414704816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000578.P12162961755414704816

`n^3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000578

/-- `n^3` -/
def P12162961755414704816.Spec : Prop :=
  ∀ n, (P12162961755414704816.a n : ℤ) = A000578 n

theorem P12162961755414704816.correct : P12162961755414704816.Spec := by
  intro n
  simp only [A000578]

end A000578

/-!
# A000579: Figurate numbers or binomial coefficients C(n,6).

The programs for A000579, the canonical program `A000579.P13663713855180125612` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000579 has offset 0).

The definition of A000579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 6)` (program `A000579.P13663713855180125612`, by `A000579.P13663713855180125612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000579.P13663713855180125612

`C(n, 6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000579

/-- `C(n, 6)` -/
def P13663713855180125612.Spec : Prop :=
  ∀ n, (P13663713855180125612.a n : ℤ) = A000579 n

theorem P13663713855180125612.correct : P13663713855180125612.Spec := by
  intro n
  simp only [A000579]

end A000579

/-! ## A000579.P1153431607037014639

`n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/720`
-/

namespace A000579.P1153431607037014639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) * ((n : ℤ) - 4) * ((n : ℤ) - 5) : ℚ) / 720

end

end A000579.P1153431607037014639

namespace A000579

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/720` -/
def P1153431607037014639.Spec : Prop :=
  ∀ n, P1153431607037014639.a n = (A000579 n : ℚ)

end A000579

/-! ## A000579.P4674957853163020333

`∑[A000389(abs(1-n))]`
-/

namespace A000579.P4674957853163020333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000579.P4674957853163020333

namespace A000579

/-- `∑[A000389(abs(1-n))]` -/
def P4674957853163020333.Spec : Prop :=
  ∀ n, P4674957853163020333.a n = A000579 n

end A000579

/-! ## A000579.P15784407519462618165

`A008859(n)-A006261(n)`
-/

namespace A000579.P15784407519462618165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - A006261 n

end

end A000579.P15784407519462618165

namespace A000579

/-- `A008859(n)-A006261(n)` -/
def P15784407519462618165.Spec : Prop :=
  ∀ n, P15784407519462618165.a n = A000579 n

end A000579

/-! ## A000579.P14112777092959779858

`A115567(n)-A057703(n)`
-/

namespace A000579.P14112777092959779858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n - A057703 n

end

end A000579.P14112777092959779858

namespace A000579

/-- `A115567(n)-A057703(n)` -/
def P14112777092959779858.Spec : Prop :=
  ∀ n, P14112777092959779858.a n = A000579 n

end A000579

/-! ## A000579.P14258044928598450089

`A362194(n)-A362193(n)`
-/

namespace A000579.P14258044928598450089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362194 n - A362193 n

end

end A000579.P14258044928598450089

namespace A000579

/-- `A362194(n)-A362193(n)` -/
def P14258044928598450089.Spec : Prop :=
  ∀ n, P14258044928598450089.a n = A000579 n

end A000579

/-! ## A000579.P7888681622037316700

`∑[A000389(n)]-A000389(n)`
-/

namespace A000579.P7888681622037316700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000389 n

end

end A000579.P7888681622037316700

namespace A000579

/-- `∑[A000389(n)]-A000389(n)` -/
def P7888681622037316700.Spec : Prop :=
  ∀ n, P7888681622037316700.a n = A000579 n

end A000579

/-! ## A000579.P4336946972842936892

`A115567(n)+1-A006261(n)`
-/

namespace A000579.P4336946972842936892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n + (1 - A006261 n)

end

end A000579.P4336946972842936892

namespace A000579

/-- `A115567(n)+1-A006261(n)` -/
def P4336946972842936892.Spec : Prop :=
  ∀ n, P4336946972842936892.a n = A000579 n

end A000579

/-! ## A000579.P16638179294529592642

`A008859(n+1)-A059174(n+1)`
-/

namespace A000579.P16638179294529592642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (n + 1) - A059174 (n + 1)

end

end A000579.P16638179294529592642

namespace A000579

/-- `A008859(n+1)-A059174(n+1)` -/
def P16638179294529592642.Spec : Prop :=
  ∀ n, P16638179294529592642.a n = A000579 n

end A000579

/-! ## A000579.P7016644277366273592

`A166829(n+1)-A166841(n+1)`
-/

namespace A000579.P7016644277366273592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) - A166841 (n + 1)

end

end A000579.P7016644277366273592

namespace A000579

/-- `A166829(n+1)-A166841(n+1)` -/
def P7016644277366273592.Spec : Prop :=
  ∀ n, P7016644277366273592.a n = A000579 n

end A000579

/-! ## A000579.P5723478846779307770

`A008860(n+1)-(A008860(n)+A006261(n))`
-/

namespace A000579.P5723478846779307770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 (n + 1) - (A008860 n + A006261 n)

end

end A000579.P5723478846779307770

namespace A000579

/-- `A008860(n+1)-(A008860(n)+A006261(n))` -/
def P5723478846779307770.Spec : Prop :=
  ∀ n, P5723478846779307770.a n = A000579 n

end A000579

/-! ## A000579.P3743739503540473023

`A008859(n)+A008859(n)-A008859(n+1)`
-/

namespace A000579.P3743739503540473023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n + (A008859 n - A008859 (n + 1))

end

end A000579.P3743739503540473023

namespace A000579

/-- `A008859(n)+A008859(n)-A008859(n+1)` -/
def P3743739503540473023.Spec : Prop :=
  ∀ n, P3743739503540473023.a n = A000579 n

end A000579

/-! ## A000579.P11780672529673636085

`A115567(n)-(A055795(n+1)+A000389(n))`
-/

namespace A000579.P11780672529673636085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n - (A055795 (n + 1) + A000389 n)

end

end A000579.P11780672529673636085

namespace A000579

/-- `A115567(n)-(A055795(n+1)+A000389(n))` -/
def P11780672529673636085.Spec : Prop :=
  ∀ n, P11780672529673636085.a n = A000579 n

end A000579

/-! ## A000579.P1641825958241399129

`A008501(n+1)-(A008501(n)+A008500(n+1))`
-/

namespace A000579.P1641825958241399129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008501 (n + 1) - (A008501 n + A008500 (n + 1))

end

end A000579.P1641825958241399129

namespace A000579

/-- `A008501(n+1)-(A008501(n)+A008500(n+1))` -/
def P1641825958241399129.Spec : Prop :=
  ∀ n, P1641825958241399129.a n = A000579 n

end A000579

/-! ## A000579.P2095986214582340276

`A008859(n)-Δ[Δ[A008860(n)]]`
-/

namespace A000579.P2095986214582340276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (f1 (n + 1) - f1 n)

end

end A000579.P2095986214582340276

namespace A000579

/-- `A008859(n)-Δ[Δ[A008860(n)]]` -/
def P2095986214582340276.Spec : Prop :=
  ∀ n, P2095986214582340276.a n = A000579 n

end A000579

/-! ## A000579.P16451316379354963407

`A115567(n)-(A004006(n)+A000389(n+1))`
-/

namespace A000579.P16451316379354963407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n - (A004006 n + A000389 (n + 1))

end

end A000579.P16451316379354963407

namespace A000579

/-- `A115567(n)-(A004006(n)+A000389(n+1))` -/
def P16451316379354963407.Spec : Prop :=
  ∀ n, P16451316379354963407.a n = A000579 n

end A000579

/-! ## A000579.P11153841915191740330

`A116082(n+1)-(A116082(n)+A006261(n))`
-/

namespace A000579.P11153841915191740330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 (n + 1) - (A116082 n + A006261 n)

end

end A000579.P11153841915191740330

namespace A000579

/-- `A116082(n+1)-(A116082(n)+A006261(n))` -/
def P11153841915191740330.Spec : Prop :=
  ∀ n, P11153841915191740330.a n = A000579 n

end A000579

/-! ## A000579.P12994184256922471587

`A035038(n)-A035039(n)`
-/

namespace A000579.P12994184256922471587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n - A035039 n

end

end A000579.P12994184256922471587

namespace A000579

/-- `A035038(n)-A035039(n)` -/
def P12994184256922471587.Spec : Prop :=
  ∀ n, P12994184256922471587.a n = A000579 n

end A000579

/-! ## A000579.P17031714087285538491

`A084636(n)-A084638(n)`
-/

namespace A000579.P17031714087285538491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084636 n - A084638 n

end

end A000579.P17031714087285538491

namespace A000579

/-- `A084636(n)-A084638(n)` -/
def P17031714087285538491.Spec : Prop :=
  ∀ n, P17031714087285538491.a n = A000579 n

end A000579

/-! ## A000579.P17799771900810066483

`A084637(n+1)-A084638(n+1)`
-/

namespace A000579.P17799771900810066483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 (n + 1) - A084638 (n + 1)

end

end A000579.P17799771900810066483

namespace A000579

/-- `A084637(n+1)-A084638(n+1)` -/
def P17799771900810066483.Spec : Prop :=
  ∀ n, P17799771900810066483.a n = A000579 n

end A000579

/-!
# A000580: a(n) = binomial coefficient C(n,7).

The programs for A000580, the canonical program `A000580.P16667415707980948191` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000580 has offset 7).

The definition of A000580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)` (program `A000580.P16667415707980948191`, by `A000580.P16667415707980948191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000580.P16667415707980948191

`C(n+7, 7)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000580

/-- `C(n+7, 7)` -/
def P16667415707980948191.Spec : Prop :=
  ∀ n, (P16667415707980948191.a n : ℤ) = A000580 (n + 7)

theorem P16667415707980948191.correct : P16667415707980948191.Spec := by
  intro n
  simp only [A000580, Nat.add_sub_cancel]

end A000580

/-! ## A000580.P16612301789443515619

`A000579(n+7)*(n+1)/7`
-/

namespace A000580.P16612301789443515619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 7) * (n + 1 : ℤ) : ℚ) / 7

end

end A000580.P16612301789443515619

namespace A000580

/-- `A000579(n+7)*(n+1)/7` -/
def P16612301789443515619.Spec : Prop :=
  ∀ n, P16612301789443515619.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P15176217465951428032

`∑[∑[∑[∑[∑[∑[1+n]]]]]]`
-/

namespace A000580.P15176217465951428032
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000580.P15176217465951428032

namespace A000580

/-- `∑[∑[∑[∑[∑[∑[1+n]]]]]]` -/
def P15176217465951428032.Spec : Prop :=
  ∀ n, (P15176217465951428032.a n : ℤ) = A000580 (n + 7)

end A000580

/-! ## A000580.P5591698965574045798

`(7/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A000580.P5591698965574045798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (7 / (n : ℚ) + 1) * a (n - 1)

end

end A000580.P5591698965574045798

namespace A000580

/-- `(7/n+1)*a(n-1)` -/
def P5591698965574045798.Spec : Prop :=
  ∀ n, P5591698965574045798.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P10960725683059342393

`A124090(n+7)+1`
-/

namespace A000580.P10960725683059342393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 7) + 1

end

end A000580.P10960725683059342393

namespace A000580

/-- `A124090(n+7)+1` -/
def P10960725683059342393.Spec : Prop :=
  ∀ n, P10960725683059342393.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P12626998985936411201

`A253947(n+6)/6`
-/

namespace A000580.P12626998985936411201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253947 (n + 6) : ℚ) / 6

end

end A000580.P12626998985936411201

namespace A000580

/-- `A253947(n+6)/6` -/
def P12626998985936411201.Spec : Prop :=
  ∀ n, P12626998985936411201.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P601364004915875992

`A056001(n)/(n+1)`
-/

namespace A000580.P601364004915875992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056001 n : ℚ) / (n + 1 : ℚ)

end

end A000580.P601364004915875992

namespace A000580

/-- `A056001(n)/(n+1)` -/
def P601364004915875992.Spec : Prop :=
  ∀ n, P601364004915875992.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P18266624121905635507

`∑[A052226(n)]/(n+1)`
-/

namespace A000580.P18266624121905635507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052226 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A000580.P18266624121905635507

namespace A000580

/-- `∑[A052226(n)]/(n+1)` -/
def P18266624121905635507.Spec : Prop :=
  ∀ n, P18266624121905635507.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P16195949005665158048

`A104670(n)/∑[n+1]`
-/

namespace A000580.P16195949005665158048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A000580.P16195949005665158048

namespace A000580

/-- `A104670(n)/∑[n+1]` -/
def P16195949005665158048.Spec : Prop :=
  ∀ n, P16195949005665158048.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P10693407160718830419

`2/(n+2)*A052181(n)`
-/

namespace A000580.P10693407160718830419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A052181 n : ℚ)

end

end A000580.P10693407160718830419

namespace A000580

/-- `2/(n+2)*A052181(n)` -/
def P10693407160718830419.Spec : Prop :=
  ∀ n, P10693407160718830419.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P9035680412028280564

`A050486(n)-a(n-1)` with `a(0)=1`
-/

namespace A000580.P9035680412028280564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050486 n - a (n - 1)

end

end A000580.P9035680412028280564

namespace A000580

/-- `A050486(n)-a(n-1)` -/
def P9035680412028280564.Spec : Prop :=
  ∀ n, P9035680412028280564.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P6211590785089165927

`A040977(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A000580.P6211590785089165927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A040977 n + a (n - 2)

end

end A000580.P6211590785089165927

namespace A000580

/-- `A040977(n)+a(n-2)` -/
def P6211590785089165927.Spec : Prop :=
  ∀ n, P6211590785089165927.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P9765251604152009876

`A050494(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A000580.P9765251604152009876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050494 n - (a (n - 1) + a (n - 1))

end

end A000580.P9765251604152009876

namespace A000580

/-- `A050494(n)-(a(n-1)+a(n-1))` -/
def P9765251604152009876.Spec : Prop :=
  ∀ n, P9765251604152009876.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P6238010332790876152

`A062990(n)-A062966(n)`
-/

namespace A000580.P6238010332790876152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n - A062966 n

end

end A000580.P6238010332790876152

namespace A000580

/-- `A062990(n)-A062966(n)` -/
def P6238010332790876152.Spec : Prop :=
  ∀ n, P6238010332790876152.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P14807595898138304632

`A063262(n)-A064056(n)`
-/

namespace A000580.P14807595898138304632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n - A064056 n

end

end A000580.P14807595898138304632

namespace A000580

/-- `A063262(n)-A064056(n)` -/
def P14807595898138304632.Spec : Prop :=
  ∀ n, P14807595898138304632.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P15855342140185049574

`A095671(n)-A095664(n)`
-/

namespace A000580.P15855342140185049574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n - A095664 n

end

end A000580.P15855342140185049574

namespace A000580

/-- `A095671(n)-A095664(n)` -/
def P15855342140185049574.Spec : Prop :=
  ∀ n, P15855342140185049574.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P9779700432191488826

`A096946(n)-A095671(n)`
-/

namespace A000580.P9779700432191488826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n - A095671 n

end

end A000580.P9779700432191488826

namespace A000580

/-- `A096946(n)-A095671(n)` -/
def P9779700432191488826.Spec : Prop :=
  ∀ n, P9779700432191488826.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P10082659867370608449

`A097299(n)-A096946(n)`
-/

namespace A000580.P10082659867370608449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 n - A096946 n

end

end A000580.P10082659867370608449

namespace A000580

/-- `A097299(n)-A096946(n)` -/
def P10082659867370608449.Spec : Prop :=
  ∀ n, P10082659867370608449.a n = A000580 (n + 7)

end A000580

/-! ## A000580.P5195842868741624047

`A105254(n)/A001288(n)`
-/

namespace A000580.P5195842868741624047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105254 n : ℚ) / (A001288 (n + 11) : ℚ)

end

end A000580.P5195842868741624047

namespace A000580

/-- `A105254(n)/A001288(n)` -/
def P5195842868741624047.Spec : Prop :=
  ∀ n, P5195842868741624047.a n = (A000580 (n + 7) : ℚ)

end A000580

/-! ## A000580.P15935264625852789008

`A107422(n)/A001287(n)`
-/

namespace A000580.P15935264625852789008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107422 n : ℚ) / (A001287 (n + 10) : ℚ)

end

end A000580.P15935264625852789008

namespace A000580

/-- `A107422(n)/A001287(n)` -/
def P15935264625852789008.Spec : Prop :=
  ∀ n, P15935264625852789008.a n = (A000580 (n + 7) : ℚ)

end A000580

/-!
# A000581: a(n) = binomial coefficient C(n,8).

The programs for A000581, the canonical program `A000581.P12083568850536544774` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000581 has offset 8).

The definition of A000581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)` (program `A000581.P12083568850536544774`, by `A000581.P12083568850536544774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000581.P12083568850536544774

`C(n+8, 8)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000581

/-- `C(n+8, 8)` -/
def P12083568850536544774.Spec : Prop :=
  ∀ n, (P12083568850536544774.a n : ℤ) = A000581 (n + 8)

theorem P12083568850536544774.correct : P12083568850536544774.Spec := by
  intro n
  simp only [A000581, Nat.add_sub_cancel]

end A000581

/-! ## A000581.P2977941873954638876

`A000580(n+8)*(n+1)/8`
-/

namespace A000581.P2977941873954638876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 8) * (n + 1 : ℤ) : ℚ) / 8

end

end A000581.P2977941873954638876

namespace A000581

/-- `A000580(n+8)*(n+1)/8` -/
def P2977941873954638876.Spec : Prop :=
  ∀ n, P2977941873954638876.a n = (A000581 (n + 8) : ℚ)

end A000581

/-! ## A000581.P8432827280927362900

`∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]`
-/

namespace A000581.P8432827280927362900
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

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

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000581.P8432827280927362900

namespace A000581

/-- `∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]` -/
def P8432827280927362900.Spec : Prop :=
  ∀ n, (P8432827280927362900.a n : ℤ) = A000581 (n + 8)

end A000581

/-! ## A000581.P11506583577118938851

`(8/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A000581.P11506583577118938851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 / (n : ℚ) + 1) * a (n - 1)

end

end A000581.P11506583577118938851

namespace A000581

/-- `(8/n+1)*a(n-1)` -/
def P11506583577118938851.Spec : Prop :=
  ∀ n, P11506583577118938851.a n = (A000581 (n + 8) : ℚ)

end A000581

/-! ## A000581.P6302295477515790599

`A165618(n)+1`
-/

namespace A000581.P6302295477515790599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n + 1

end

end A000581.P6302295477515790599

namespace A000581

/-- `A165618(n)+1` -/
def P6302295477515790599.Spec : Prop :=
  ∀ n, P6302295477515790599.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P7730565477130343755

`A056003(n)/(n+1)`
-/

namespace A000581.P7730565477130343755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056003 n : ℚ) / (n + 1 : ℚ)

end

end A000581.P7730565477130343755

namespace A000581

/-- `A056003(n)/(n+1)` -/
def P7730565477130343755.Spec : Prop :=
  ∀ n, P7730565477130343755.a n = (A000581 (n + 8) : ℚ)

end A000581

/-! ## A000581.P6484302650457166433

`∑[A056117(n)]/(n+1)`
-/

namespace A000581.P6484302650457166433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056117 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A000581.P6484302650457166433

namespace A000581

/-- `∑[A056117(n)]/(n+1)` -/
def P6484302650457166433.Spec : Prop :=
  ∀ n, P6484302650457166433.a n = (A000581 (n + 8) : ℚ)

end A000581

/-! ## A000581.P2522829535976468781

`3/(n+3)*A053310(n)`
-/

namespace A000581.P2522829535976468781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A053310 n : ℚ)

end

end A000581.P2522829535976468781

namespace A000581

/-- `3/(n+3)*A053310(n)` -/
def P2522829535976468781.Spec : Prop :=
  ∀ n, P2522829535976468781.a n = (A000581 (n + 8) : ℚ)

end A000581

/-! ## A000581.P14626112613938563826

`A053347(n)-a(n-1)` with `a(0)=1`
-/

namespace A000581.P14626112613938563826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053347 n - a (n - 1)

end

end A000581.P14626112613938563826

namespace A000581

/-- `A053347(n)-a(n-1)` -/
def P14626112613938563826.Spec : Prop :=
  ∀ n, P14626112613938563826.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P15151183084304010777

`A050486(n)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A000581.P15151183084304010777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A050486 n + a (n - 2)

end

end A000581.P15151183084304010777

namespace A000581

/-- `A050486(n)+a(n-2)` -/
def P15151183084304010777.Spec : Prop :=
  ∀ n, P15151183084304010777.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P17296030849388323662

`A053367(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A000581.P17296030849388323662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053367 n - (a (n - 1) + a (n - 1))

end

end A000581.P17296030849388323662

namespace A000581

/-- `A053367(n)-(a(n-1)+a(n-1))` -/
def P17296030849388323662.Spec : Prop :=
  ∀ n, P17296030849388323662.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P3827820849841429956

`A063417(n)-A063262(n)`
-/

namespace A000581.P3827820849841429956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - A063262 n

end

end A000581.P3827820849841429956

namespace A000581

/-- `A063417(n)-A063262(n)` -/
def P3827820849841429956.Spec : Prop :=
  ∀ n, P3827820849841429956.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P12310457872281931914

`A063263(n)-A064057(n)`
-/

namespace A000581.P12310457872281931914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n - A064057 n

end

end A000581.P12310457872281931914

namespace A000581

/-- `A063263(n)-A064057(n)` -/
def P12310457872281931914.Spec : Prop :=
  ∀ n, P12310457872281931914.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P15664042796380395073

`A095819(n)-A095665(n)`
-/

namespace A000581.P15664042796380395073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 n - A095665 n

end

end A000581.P15664042796380395073

namespace A000581

/-- `A095819(n)-A095665(n)` -/
def P15664042796380395073.Spec : Prop :=
  ∀ n, P15664042796380395073.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P17033178313407582389

`A096947(n)-A095819(n)`
-/

namespace A000581.P17033178313407582389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096947 n - A095819 n

end

end A000581.P17033178313407582389

namespace A000581

/-- `A096947(n)-A095819(n)` -/
def P17033178313407582389.Spec : Prop :=
  ∀ n, P17033178313407582389.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P9655160043563014393

`A097300(n)-A096947(n)`
-/

namespace A000581.P9655160043563014393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097300 n - A096947 n

end

end A000581.P9655160043563014393

namespace A000581

/-- `A097300(n)-A096947(n)` -/
def P9655160043563014393.Spec : Prop :=
  ∀ n, P9655160043563014393.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P11826915904459895450

`∑[A095671(n)]-A095665(n)`
-/

namespace A000581.P11826915904459895450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095665 n

end

end A000581.P11826915904459895450

namespace A000581

/-- `∑[A095671(n)]-A095665(n)` -/
def P11826915904459895450.Spec : Prop :=
  ∀ n, P11826915904459895450.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P8067250541288785756

`A104671(n)/A000292(n+1)`
-/

namespace A000581.P8067250541288785756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104671 n : ℚ) / (A000292 (n + 1) : ℚ)

end

end A000581.P8067250541288785756

namespace A000581

/-- `A104671(n)/A000292(n+1)` -/
def P8067250541288785756.Spec : Prop :=
  ∀ n, P8067250541288785756.a n = (A000581 (n + 8) : ℚ)

end A000581

/-! ## A000581.P18080093516712371080

`2*A001780(n)-A001779(n)`
-/

namespace A000581.P18080093516712371080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001780 n - A001779 n

end

end A000581.P18080093516712371080

namespace A000581

/-- `2*A001780(n)-A001779(n)` -/
def P18080093516712371080.Spec : Prop :=
  ∀ n, P18080093516712371080.a n = A000581 (n + 8)

end A000581

/-! ## A000581.P1162165850506242935

`2*A053347(n)-A053367(n)`
-/

namespace A000581.P1162165850506242935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053347 n - A053367 n

end

end A000581.P1162165850506242935

namespace A000581

/-- `2*A053347(n)-A053367(n)` -/
def P1162165850506242935.Spec : Prop :=
  ∀ n, P1162165850506242935.a n = A000581 (n + 8)

end A000581

/-!
# A000582: a(n) = binomial coefficient C(n,9).

The programs for A000582, the canonical program `A000582.P5339973766427948568` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000582 has offset 9).

The definition of A000582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)` (program `A000582.P5339973766427948568`, by `A000582.P5339973766427948568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000582.P5339973766427948568

`C(n+9, 9)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000582

/-- `C(n+9, 9)` -/
def P5339973766427948568.Spec : Prop :=
  ∀ n, (P5339973766427948568.a n : ℤ) = A000582 (n + 9)

theorem P5339973766427948568.correct : P5339973766427948568.Spec := by
  intro n
  simp only [A000582, Nat.add_sub_cancel]

end A000582

/-! ## A000582.P18297757911050834925

`A000581(n+9)*(n+1)/9`
-/

namespace A000582.P18297757911050834925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 9) * (n + 1 : ℤ) : ℚ) / 9

end

end A000582.P18297757911050834925

namespace A000582

/-- `A000581(n+9)*(n+1)/9` -/
def P18297757911050834925.Spec : Prop :=
  ∀ n, P18297757911050834925.a n = (A000582 (n + 9) : ℚ)

end A000582

/-! ## A000582.P1787733754935738498

`(9/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A000582.P1787733754935738498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 / (n : ℚ) + 1) * a (n - 1)

end

end A000582.P1787733754935738498

namespace A000582

/-- `(9/n+1)*a(n-1)` -/
def P1787733754935738498.Spec : Prop :=
  ∀ n, P1787733754935738498.a n = (A000582 (n + 9) : ℚ)

end A000582

/-! ## A000582.P2483261719087243964

`∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]`
-/

namespace A000582.P2483261719087243964
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

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

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000582.P2483261719087243964

namespace A000582

/-- `∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]` -/
def P2483261719087243964.Spec : Prop :=
  ∀ n, (P2483261719087243964.a n : ℤ) = A000582 (n + 9)

end A000582

/-! ## A000582.P9970244975601681341

`A035927(n)+1`
-/

namespace A000582.P9970244975601681341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 n + 1

end

end A000582.P9970244975601681341

namespace A000582

/-- `A035927(n)+1` -/
def P9970244975601681341.Spec : Prop :=
  ∀ n, P9970244975601681341.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P308341686977172816

`A056114(n)/(n+1)`
-/

namespace A000582.P308341686977172816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056114 n : ℚ) / (n + 1 : ℚ)

end

end A000582.P308341686977172816

namespace A000582

/-- `A056114(n)/(n+1)` -/
def P308341686977172816.Spec : Prop :=
  ∀ n, P308341686977172816.a n = (A000582 (n + 9) : ℚ)

end A000582

/-! ## A000582.P9127770110113105823

`∑[A093646(n)]/(n+1)`
-/

namespace A000582.P9127770110113105823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A000582.P9127770110113105823

namespace A000582

/-- `∑[A093646(n)]/(n+1)` -/
def P9127770110113105823.Spec : Prop :=
  ∀ n, P9127770110113105823.a n = (A000582 (n + 9) : ℚ)

end A000582

/-! ## A000582.P17056673192969125109

`A054333(n)-a(n-1)` with `a(0)=1`
-/

namespace A000582.P17056673192969125109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054333 n - a (n - 1)

end

end A000582.P17056673192969125109

namespace A000582

/-- `A054333(n)-a(n-1)` -/
def P17056673192969125109.Spec : Prop :=
  ∀ n, P17056673192969125109.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P7253375928504936017

`A053347(n)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A000582.P7253375928504936017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A053347 n + a (n - 2)

end

end A000582.P7253375928504936017

namespace A000582

/-- `A053347(n)+a(n-2)` -/
def P7253375928504936017.Spec : Prop :=
  ∀ n, P7253375928504936017.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P16230333053652577998

`A053310(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A000582.P16230333053652577998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053310 n - (a (n - 1) + a (n - 1))

end

end A000582.P16230333053652577998

namespace A000582

/-- `A053310(n)-(a(n-1)+a(n-1))` -/
def P16230333053652577998.Spec : Prop :=
  ∀ n, P16230333053652577998.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P14235910838500569620

`A282077(n)+A018213(n)`
-/

namespace A000582.P14235910838500569620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 n + A018213 n

end

end A000582.P14235910838500569620

namespace A000582

/-- `A282077(n)+A018213(n)` -/
def P14235910838500569620.Spec : Prop :=
  ∀ n, P14235910838500569620.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P15361926017257228568

`A063418(n)-A063263(n)`
-/

namespace A000582.P15361926017257228568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063418 n - A063263 n

end

end A000582.P15361926017257228568

namespace A000582

/-- `A063418(n)-A063263(n)` -/
def P15361926017257228568.Spec : Prop :=
  ∀ n, P15361926017257228568.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P5949393340988544539

`A063264(n)-A064058(n)`
-/

namespace A000582.P5949393340988544539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063264 n - A064058 n

end

end A000582.P5949393340988544539

namespace A000582

/-- `A063264(n)-A064058(n)` -/
def P5949393340988544539.Spec : Prop :=
  ∀ n, P5949393340988544539.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P1380054254231780381

`2*A001781(n)-A001780(n)`
-/

namespace A000582.P1380054254231780381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001781 n - A001780 n

end

end A000582.P1380054254231780381

namespace A000582

/-- `2*A001781(n)-A001780(n)` -/
def P1380054254231780381.Spec : Prop :=
  ∀ n, P1380054254231780381.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P16361248373631293035

`2*A054333(n)-A053310(n)`
-/

namespace A000582.P16361248373631293035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054333 n - A053310 n

end

end A000582.P16361248373631293035

namespace A000582

/-- `2*A054333(n)-A053310(n)` -/
def P16361248373631293035.Spec : Prop :=
  ∀ n, P16361248373631293035.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P1278634897138407647

`A027769(n+8)/A020723(n)`
-/

namespace A000582.P1278634897138407647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027769 (n + 8) : ℚ) / (A020723 n : ℚ)

end

end A000582.P1278634897138407647

namespace A000582

/-- `A027769(n+8)/A020723(n)` -/
def P1278634897138407647.Spec : Prop :=
  ∀ n, P1278634897138407647.a n = (A000582 (n + 9) : ℚ)

end A000582

/-! ## A000582.P14625418949081241620

`∪[A053131(n+9), A053138(n)]`
-/

namespace A000582.P14625418949081241620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053131 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053138 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000582.P14625418949081241620

namespace A000582

/-- `∪[A053131(n+9), A053138(n)]` -/
def P14625418949081241620.Spec : Prop :=
  ∀ n, (P14625418949081241620.a n : ℤ) = A000582 (n + 9)

end A000582

/-! ## A000582.P4015412436650635906

`(A054333(n)+A000581(n+8))/2`
-/

namespace A000582.P4015412436650635906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054333 n + A000581 (n + 8) : ℚ) / 2

end

end A000582.P4015412436650635906

namespace A000582

/-- `(A054333(n)+A000581(n+8))/2` -/
def P4015412436650635906.Spec : Prop :=
  ∀ n, P4015412436650635906.a n = (A000582 (n + 9) : ℚ)

end A000582

/-! ## A000582.P9610462210781662491

`A095665(n)-2*A000581(n+8)`
-/

namespace A000582.P9610462210781662491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095665 n - 2 * A000581 (n + 8)

end

end A000582.P9610462210781662491

namespace A000582

/-- `A095665(n)-2*A000581(n+8)` -/
def P9610462210781662491.Spec : Prop :=
  ∀ n, P9610462210781662491.a n = A000582 (n + 9)

end A000582

/-! ## A000582.P18034611211239507263

`A000292(n+1)/A107418(n)*A107421(n)`
-/

namespace A000582.P18034611211239507263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) / (A107418 n : ℚ) * (A107421 n : ℚ)

end

end A000582.P18034611211239507263

namespace A000582

/-- `A000292(n+1)/A107418(n)*A107421(n)` -/
def P18034611211239507263.Spec : Prop :=
  ∀ n, P18034611211239507263.a n = (A000582 (n + 9) : ℚ)

end A000582

/-!
# A000583: Fourth powers: a(n) = n^4.

The programs for A000583, the canonical program `A000583.P14547500281748394449` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000583 has offset 0).

The definition of A000583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4` (program `A000583.P14547500281748394449`, by `A000583.P14547500281748394449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000583.P14547500281748394449

`n^4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000583

/-- `n^4` -/
def P14547500281748394449.Spec : Prop :=
  ∀ n, (P14547500281748394449.a n : ℤ) = A000583 n

theorem P14547500281748394449.correct : P14547500281748394449.Spec := by
  intro n
  simp only [A000583]

end A000583

/-!
# A000584: Fifth powers: a(n) = n^5.

The programs for A000584, the canonical program `A000584.P5477385692209315495` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000584 has offset 0).

The definition of A000584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5` (program `A000584.P5477385692209315495`, by `A000584.P5477385692209315495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000584.P5477385692209315495

`n^5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000584

/-- `n^5` -/
def P5477385692209315495.Spec : Prop :=
  ∀ n, (P5477385692209315495.a n : ℤ) = A000584 n

theorem P5477385692209315495.correct : P5477385692209315495.Spec := by
  intro n
  simp only [A000584]

end A000584

/-!
# A000585: Number of equivalence classes of Boolean functions of n variables under GL(n,2).

The programs for A000585, there is no canonical definition to state claims against.
-/

/-! ## A000585.P14845692044080799264

`2*A000613(n+1)`
-/

namespace A000585.P14845692044080799264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000613 (n + 1)

end

end A000585.P14845692044080799264

/-! ## A000585.P11635952041184175585

`A000613(A000027(n+1))+A000613(n+1)`
-/

namespace A000585.P11635952041184175585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000613 (A000027 (n + 1)).toNat + A000613 (n + 1)

end

end A000585.P11635952041184175585

/-! ## A000585.P12015893072800100127

`A000613(n+1)+A000613(A074779(n+1))`
-/

namespace A000585.P12015893072800100127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000613 (n + 1) + A000613 (A074779 (n + 1)).toNat

end

end A000585.P12015893072800100127

/-! ## A000585.P7916637358236691611

`A000613(n+1)+A000613(A362076(n+1))`
-/

namespace A000585.P7916637358236691611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000613 (n + 1) + A000613 (A362076 (n + 1)).toNat

end

end A000585.P7916637358236691611

/-!
# A000586: Number of partitions of n into distinct primes.

The programs for A000586, there is no canonical definition to state claims against.
-/

/-! ## A000586.P11216393220595997637

`A184171(n)+A184172(n)`
-/

namespace A000586.P11216393220595997637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n + A184172 n

end

end A000586.P11216393220595997637

/-! ## A000586.P9998986944611667633

`A036497(n)-a(n-1)` with `a(0)=1`
-/

namespace A000586.P9998986944611667633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036497 n - a (n - 1)

end

end A000586.P9998986944611667633

/-! ## A000586.P10159596031539956490

`A046675(n)+2*A184172(n)`
-/

namespace A000586.P10159596031539956490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n + 2 * A184172 n

end

end A000586.P10159596031539956490

/-! ## A000586.P5302873386979994773

`2*A184171(n)-A046675(n)`
-/

namespace A000586.P5302873386979994773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184171 n - A046675 n

end

end A000586.P5302873386979994773

/-! ## A000586.P2933835584456775963

`A184171(xor(1, A014681(n)))+A184171(n)`
-/

namespace A000586.P2933835584456775963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (Int.xor 1 (A014681 n)).toNat + A184171 n

end

end A000586.P2933835584456775963

/-! ## A000586.P2469272541776728272

`A024937(n+2)+A024937(n)`
-/

namespace A000586.P2469272541776728272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (n + 2) + A024937 n

end

end A000586.P2469272541776728272

/-! ## A000586.P7283990844103660779

`A339383(n+1)+A184172(n)-A184172(n+1)`
-/

namespace A000586.P7283990844103660779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (n + 1) + (A184172 n - A184172 (n + 1))

end

end A000586.P7283990844103660779

/-! ## A000586.P14611208849389279427

`A024939(n)+A024937(n)`
-/

namespace A000586.P14611208849389279427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 n + A024937 n

end

end A000586.P14611208849389279427

/-! ## A000586.P14985924002447171200

`A339382(n+1)+A184171(n)-A184171(n+1)`
-/

namespace A000586.P14985924002447171200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 (n + 1) + (A184171 n - A184171 (n + 1))

end

end A000586.P14985924002447171200

/-! ## A000586.P7808288631299550150

`A000607(n)-A331849(n)`
-/

namespace A000586.P7808288631299550150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A331849 n

end

end A000586.P7808288631299550150

/-! ## A000586.P13171407643017800267

`A382955(∑[n])`
-/

namespace A000586.P13171407643017800267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000586.P13171407643017800267

/-!
# A000587: Rao Uppuluri-Carpenter numbers (or complementary Bell numbers): e.g.f. = exp(1 - exp(x)).

The programs for A000587, there is no canonical definition to state claims against.
-/

/-! ## A000587.P16542163115133402168

`A213953(∑[n])`
-/

namespace A000587.P16542163115133402168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000587.P16542163115133402168

/-! ## A000587.P6894082463147789492

`A293051(∑[n]+n)`
-/

namespace A000587.P6894082463147789492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000587.P6894082463147789492

/-! ## A000587.P1885411065260220621

`or(A000007(n), A293051(A000096(n)))`
-/

namespace A000587.P1885411065260220621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293051 (A000096 n).toNat)

end

end A000587.P1885411065260220621

/-! ## A000587.P15402742341102278161

`A293051(A000096(n))+A000007(n+2)`
-/

namespace A000587.P15402742341102278161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A000096 n).toNat + A000007 (n + 2)

end

end A000587.P15402742341102278161

/-! ## A000587.P1567040947971742151

`A057427(n+2)*A293051(A000096(n))`
-/

namespace A000587.P1567040947971742151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A293051 (A000096 n).toNat

end

end A000587.P1567040947971742151

/-! ## A000587.P8258833406272935236

`or(A293051(A000096(n)), A319691(n+1))`
-/

namespace A000587.P8258833406272935236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293051 (A000096 n).toNat) (A319691 (n + 1))

end

end A000587.P8258833406272935236

/-! ## A000587.P775439914674677850

`A319691(3*n+2)+A293051(A000096(n))`
-/

namespace A000587.P775439914674677850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319691 (3 * n + 2) + A293051 (A000096 n).toNat

end

end A000587.P775439914674677850

/-! ## A000587.P3064222288957586110

`A143628(n)+A143630(n)-A143631(n)`
-/

namespace A000587.P3064222288957586110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143628 n + (A143630 n - A143631 n)

end

end A000587.P3064222288957586110

/-! ## A000587.P13791113014401409811

`A292861(∑[n+2]-1)`
-/

namespace A000587.P13791113014401409811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000587.P13791113014401409811

/-! ## A000587.P11137015867382489420

`A024430(n)-A024429(n)`
-/

namespace A000587.P11137015867382489420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024430 n - A024429 n

end

end A000587.P11137015867382489420

/-!
# A000588: a(n) = 7*binomial(2n,n-3)/(n+4).

The programs for A000588, the canonical program `A000588.P2240156739823594693` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000588 has offset 0).

The definition of A000588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000588.P2240156739823594693

`A000108(n+3)-5*A000108(n+2)+6*A000108(n+1)-A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000588

/-- `A000108(n+3)-5*A000108(n+2)+6*A000108(n+1)-A000108(n)` -/
def P2240156739823594693.Spec : Prop :=
  ∀ n, P2240156739823594693.a n = A000588 n

theorem P2240156739823594693.correct : P2240156739823594693.Spec := by
  intro n
  simp only [A000588]

end A000588

/-! ## A000588.P5468974018419152839

`abs(A115146(n+4))`
-/

namespace A000588.P5468974018419152839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115146 (n + 4)|

end

end A000588.P5468974018419152839

namespace A000588

/-- `abs(A115146(n+4))` -/
def P5468974018419152839.Spec : Prop :=
  ∀ n, P5468974018419152839.a n = A000588 n

end A000588

/-! ## A000588.P6479729201978991529

`A026029(n)-A026012(n)`
-/

namespace A000588.P6479729201978991529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n - A026012 n

end

end A000588.P6479729201978991529

namespace A000588

/-- `A026029(n)-A026012(n)` -/
def P6479729201978991529.Spec : Prop :=
  ∀ n, P6479729201978991529.a n = A000588 n

end A000588

/-! ## A000588.P12189077609234670294

`A026029(n)-Δ[A000245(n)]`
-/

namespace A000588.P12189077609234670294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n - (f1 (n + 1) - f1 n)

end

end A000588.P12189077609234670294

namespace A000588

/-- `A026029(n)-Δ[A000245(n)]` -/
def P12189077609234670294.Spec : Prop :=
  ∀ n, P12189077609234670294.a n = A000588 n

end A000588

/-! ## A000588.P1543866976628235723

`A026029(n)-A071738(n+1)`
-/

namespace A000588.P1543866976628235723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n - A071738 (n + 1)

end

end A000588.P1543866976628235723

namespace A000588

/-- `A026029(n)-A071738(n+1)` -/
def P1543866976628235723.Spec : Prop :=
  ∀ n, P1543866976628235723.a n = A000588 n

end A000588

/-! ## A000588.P16132907149050671447

`A026034(2*n)-A026012(n)`
-/

namespace A000588.P16132907149050671447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n) - A026012 n

end

end A000588.P16132907149050671447

namespace A000588

/-- `A026034(2*n)-A026012(n)` -/
def P16132907149050671447.Spec : Prop :=
  ∀ n, P16132907149050671447.a n = A000588 n

end A000588

/-! ## A000588.P12607156019730654951

`A026029(n)-Δ[Δ[A000108(n)]]`
-/

namespace A000588.P12607156019730654951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n - (f1 (n + 1) - f1 n)

end

end A000588.P12607156019730654951

namespace A000588

/-- `A026029(n)-Δ[Δ[A000108(n)]]` -/
def P12607156019730654951.Spec : Prop :=
  ∀ n, P12607156019730654951.a n = A000588 n

end A000588

/-! ## A000588.P15892793239343911950

`lcm(Δ[A008611(n)], A115146(n+4))`
-/

namespace A000588.P15892793239343911950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A115146 (n + 4))

end

end A000588.P15892793239343911950

namespace A000588

/-- `lcm(Δ[A008611(n)], A115146(n+4))` -/
def P15892793239343911950.Spec : Prop :=
  ∀ n, (P15892793239343911950.a n : ℤ) = A000588 n

end A000588

/-! ## A000588.P17563885775644816876

`A000245(n)+A026029(n)-A000245(n+1)`
-/

namespace A000588.P17563885775644816876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (A026029 n - A000245 (n + 1))

end

end A000588.P17563885775644816876

namespace A000588

/-- `A000245(n)+A026029(n)-A000245(n+1)` -/
def P17563885775644816876.Spec : Prop :=
  ∀ n, P17563885775644816876.a n = A000588 n

end A000588

/-! ## A000588.P5122839138428067092

`A071737(n)-A002057(n)`
-/

namespace A000588.P5122839138428067092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071737 n - A002057 n

end

end A000588.P5122839138428067092

namespace A000588

/-- `A071737(n)-A002057(n)` -/
def P5122839138428067092.Spec : Prop :=
  ∀ n, P5122839138428067092.a n = A000588 n

end A000588

/-! ## A000588.P13374181268696616399

`A033434(n)-A070031(n)`
-/

namespace A000588.P13374181268696616399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n - A070031 n

end

end A000588.P13374181268696616399

namespace A000588

/-- `A033434(n)-A070031(n)` -/
def P13374181268696616399.Spec : Prop :=
  ∀ n, P13374181268696616399.a n = A000588 n

end A000588

/-! ## A000588.P7496512573055693499

`A071723(n)-A071719(n)`
-/

namespace A000588.P7496512573055693499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 n - A071719 n

end

end A000588.P7496512573055693499

namespace A000588

/-- `A071723(n)-A071719(n)` -/
def P7496512573055693499.Spec : Prop :=
  ∀ n, P7496512573055693499.a n = A000588 n

end A000588

/-! ## A000588.P18412430791868733517

`A071740(n)-A000245(n+1)`
-/

namespace A000588.P18412430791868733517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071740 n - A000245 (n + 1)

end

end A000588.P18412430791868733517

namespace A000588

/-- `A071740(n)-A000245(n+1)` -/
def P18412430791868733517.Spec : Prop :=
  ∀ n, P18412430791868733517.a n = A000588 n

end A000588

/-! ## A000588.P8988312997077863084

`A026016(n+1)-A071722(n)`
-/

namespace A000588.P8988312997077863084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) - A071722 n

end

end A000588.P8988312997077863084

namespace A000588

/-- `A026016(n+1)-A071722(n)` -/
def P8988312997077863084.Spec : Prop :=
  ∀ n, P8988312997077863084.a n = A000588 n

end A000588

/-! ## A000588.P4091310990601695889

`A071740(n)-A071724(n+1)`
-/

namespace A000588.P4091310990601695889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071740 n - A071724 (n + 1)

end

end A000588.P4091310990601695889

namespace A000588

/-- `A071740(n)-A071724(n+1)` -/
def P4091310990601695889.Spec : Prop :=
  ∀ n, P4091310990601695889.a n = A000588 n

end A000588

/-! ## A000588.P5174647432953931846

`Δ[A071738(n+1)]-A070031(n)`
-/

namespace A000588.P5174647432953931846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070031 n

end

end A000588.P5174647432953931846

namespace A000588

/-- `Δ[A071738(n+1)]-A070031(n)` -/
def P5174647432953931846.Spec : Prop :=
  ∀ n, P5174647432953931846.a n = A000588 n

end A000588

/-! ## A000588.P13133278545989534436

`A071756(n+1)-A071724(n+2)`
-/

namespace A000588.P13133278545989534436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071756 (n + 1) - A071724 (n + 2)

end

end A000588.P13133278545989534436

namespace A000588

/-- `A071756(n+1)-A071724(n+2)` -/
def P13133278545989534436.Spec : Prop :=
  ∀ n, P13133278545989534436.a n = A000588 n

end A000588

/-! ## A000588.P12611264008887990357

`(A068875(n)+A002057(n))%A026012(n)`
-/

namespace A000588.P12611264008887990357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068875 n + A002057 n) (A026012 n)

end

end A000588.P12611264008887990357

namespace A000588

/-- `(A068875(n)+A002057(n))%A026012(n)` -/
def P12611264008887990357.Spec : Prop :=
  ∀ n, P12611264008887990357.a n = A000588 n

end A000588

/-! ## A000588.P2679529473781782927

`Δ[A099376(n)-A000245(n)]-A099376(n)`
-/

namespace A000588.P2679529473781782927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A000588.P2679529473781782927

namespace A000588

/-- `Δ[A099376(n)-A000245(n)]-A099376(n)` -/
def P2679529473781782927.Spec : Prop :=
  ∀ n, P2679529473781782927.a n = A000588 n

end A000588

/-! ## A000588.P15221728601409091495

`A099376(n+1)-(A099376(n)+A071722(n))`
-/

namespace A000588.P15221728601409091495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) - (A099376 n + A071722 n)

end

end A000588.P15221728601409091495

namespace A000588

/-- `A099376(n+1)-(A099376(n)+A071722(n))` -/
def P15221728601409091495.Spec : Prop :=
  ∀ n, P15221728601409091495.a n = A000588 n

end A000588

/-!
# A000589: a(n) = 11*binomial(2n,n-5)/(n+6).

The programs for A000589, the canonical program `A000589.P13450582615708353823` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000589 has offset 5).

The definition of A000589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000589.P13450582615708353823

`11*C(2*(n+5), n)/(n+11)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000589

/-- `11*C(2*(n+5), n)/(n+11)` -/
def P13450582615708353823.Spec : Prop :=
  ∀ n, P13450582615708353823.a n = (A000589 (n + 5) : ℚ)

end A000589

/-! ## A000589.P12166055581901707499

`A003519(n+5)-A001392(n+5)`
-/

namespace A000589.P12166055581901707499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003519 (n + 5) - A001392 (n + 5)

end

end A000589.P12166055581901707499

namespace A000589

/-- `A003519(n+5)-A001392(n+5)` -/
def P12166055581901707499.Spec : Prop :=
  ∀ n, P12166055581901707499.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P16258725357747811230

`A003519(n+5)-(A003519(n+4)+A003518(n+4))`
-/

namespace A000589.P16258725357747811230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003519 (n + 5) - (A003519 (n + 4) + A003518 (n + 4))

end

end A000589.P16258725357747811230

namespace A000589

/-- `A003519(n+5)-(A003519(n+4)+A003518(n+4))` -/
def P16258725357747811230.Spec : Prop :=
  ∀ n, P16258725357747811230.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P450169198277332595

`A107842(A167614(n+2))`
-/

namespace A000589.P450169198277332595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107842 (A167614 (n + 2)).toNat

end

end A000589.P450169198277332595

namespace A000589

/-- `A107842(A167614(n+2))` -/
def P450169198277332595.Spec : Prop :=
  ∀ n, P450169198277332595.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P6940168326900724246

`A050155(A155212(n)+13)`
-/

namespace A000589.P6940168326900724246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050155 (A155212 n + 13).toNat

end

end A000589.P6940168326900724246

namespace A000589

/-- `A050155(A155212(n)+13)` -/
def P6940168326900724246.Spec : Prop :=
  ∀ n, P6940168326900724246.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P18205713245043820522

`A039599(eq[5, A002262(n)])`
-/

namespace A000589.P18205713245043820522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000589.P18205713245043820522

namespace A000589

/-- `A039599(eq[5, A002262(n)])` -/
def P18205713245043820522.Spec : Prop :=
  ∀ n, P18205713245043820522.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P4893485583513754341

`A039599(eq[6, A002260(n+1)])`
-/

namespace A000589.P4893485583513754341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000589.P4893485583513754341

namespace A000589

/-- `A039599(eq[6, A002260(n+1)])` -/
def P4893485583513754341.Spec : Prop :=
  ∀ n, P4893485583513754341.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P9303169202184914028

`A009766(A000217(n+11)-11)`
-/

namespace A000589.P9303169202184914028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 11) - 11).toNat

end

end A000589.P9303169202184914028

namespace A000589

/-- `A009766(A000217(n+11)-11)` -/
def P9303169202184914028.Spec : Prop :=
  ∀ n, P9303169202184914028.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P3212131441621929103

`A008315((n+6)²-6)`
-/

namespace A000589.P3212131441621929103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((n + 6) ^ 2 - 6)

end

end A000589.P3212131441621929103

namespace A000589

/-- `A008315((n+6)²-6)` -/
def P3212131441621929103.Spec : Prop :=
  ∀ n, P3212131441621929103.a n = A000589 (n + 5)

end A000589

/-! ## A000589.P9471824869259699383

`A008313((n+6)²-(n+1))`
-/

namespace A000589.P9471824869259699383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 ((n + 6) ^ 2 - (n + 1))

end

end A000589.P9471824869259699383

namespace A000589

/-- `A008313((n+6)²-(n+1))` -/
def P9471824869259699383.Spec : Prop :=
  ∀ n, P9471824869259699383.a n = A000589 (n + 5)

end A000589

/-!
# A000590: a(n) = 13*binomial(2n,n-6)/(n+7).

The programs for A000590, the canonical program `A000590.P9708195866616479349` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000590 has offset 6).

The definition of A000590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000590.P9708195866616479349

`13*C(2*(n+6), n)/(n+13)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000590

/-- `13*C(2*(n+6), n)/(n+13)` -/
def P9708195866616479349.Spec : Prop :=
  ∀ n, P9708195866616479349.a n = (A000590 (n + 6) : ℚ)

end A000590

/-! ## A000590.P2016636262549572993

`A090749(n+6)-(A090749(n+5)+A003519(n+5))`
-/

namespace A000590.P2016636262549572993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090749 (n + 6) - (A090749 (n + 5) + A003519 (n + 5))

end

end A000590.P2016636262549572993

namespace A000590

/-- `A090749(n+6)-(A090749(n+5)+A003519(n+5))` -/
def P2016636262549572993.Spec : Prop :=
  ∀ n, P2016636262549572993.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P14007957951919701175

`A050155(A000217(n+5)+6)`
-/

namespace A000590.P14007957951919701175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050155 (A000217 (n + 5) + 6).toNat

end

end A000590.P14007957951919701175

namespace A000590

/-- `A050155(A000217(n+5)+6)` -/
def P14007957951919701175.Spec : Prop :=
  ∀ n, P14007957951919701175.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P10287770225480863494

`A039599(A166136(n+5))`
-/

namespace A000590.P10287770225480863494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A166136 (n + 5)).toNat

end

end A000590.P10287770225480863494

namespace A000590

/-- `A039599(A166136(n+5))` -/
def P10287770225480863494.Spec : Prop :=
  ∀ n, P10287770225480863494.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P1870766302050602661

`A039599(eq[6, A002262(n)])`
-/

namespace A000590.P1870766302050602661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000590.P1870766302050602661

namespace A000590

/-- `A039599(eq[6, A002262(n)])` -/
def P1870766302050602661.Spec : Prop :=
  ∀ n, P1870766302050602661.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P5516843514932716303

`A039599(A000217(n+6)+6)`
-/

namespace A000590.P5516843514932716303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A000217 (n + 6) + 6).toNat

end

end A000590.P5516843514932716303

namespace A000590

/-- `A039599(A000217(n+6)+6)` -/
def P5516843514932716303.Spec : Prop :=
  ∀ n, P5516843514932716303.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P3560748190475677241

`A039599(eq[7, A002260(n+1)])`
-/

namespace A000590.P3560748190475677241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000590.P3560748190475677241

namespace A000590

/-- `A039599(eq[7, A002260(n+1)])` -/
def P3560748190475677241.Spec : Prop :=
  ∀ n, P3560748190475677241.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P8242391921334134927

`A033184(A000217(n+12)+13)`
-/

namespace A000590.P8242391921334134927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000217 (n + 12) + 13).toNat

end

end A000590.P8242391921334134927

namespace A000590

/-- `A033184(A000217(n+12)+13)` -/
def P8242391921334134927.Spec : Prop :=
  ∀ n, P8242391921334134927.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P17751657215755013266

`A009766(A000217(n+12)+n)`
-/

namespace A000590.P17751657215755013266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A000590.P17751657215755013266

namespace A000590

/-- `A009766(A000217(n+12)+n)` -/
def P17751657215755013266.Spec : Prop :=
  ∀ n, P17751657215755013266.a n = A000590 (n + 6)

end A000590

/-! ## A000590.P10147516277650757647

`A106566(A000096(n+13)-n)`
-/

namespace A000590.P10147516277650757647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A000096 (n + 13) - (n : ℤ)).toNat

end

end A000590.P10147516277650757647

namespace A000590

/-- `A106566(A000096(n+13)-n)` -/
def P10147516277650757647.Spec : Prop :=
  ∀ n, P10147516277650757647.a n = A000590 (n + 6)

end A000590

/-!
# A000592: Number of nonnegative solutions of x^2 + y^2 = z in first n shells.

The programs for A000592, the canonical program `A000592.P15353079189797970692` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000592 has offset 0).

The definition of A000592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000592.P4153380588607220916

`∑[A000925(A001481(n+1))]`
-/

namespace A000592.P4153380588607220916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A001481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P4153380588607220916

namespace A000592

/-- `∑[A000925(A001481(n+1))]` -/
def P4153380588607220916.Spec : Prop :=
  ∀ n, P4153380588607220916.a n = A000592 n

end A000592

/-! ## A000592.P1757855920379074518

`∑[A000925(eq[0, A070176(n)])]`
-/

namespace A000592.P1757855920379074518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P1757855920379074518

namespace A000592

/-- `∑[A000925(eq[0, A070176(n)])]` -/
def P1757855920379074518.Spec : Prop :=
  ∀ n, P1757855920379074518.a n = A000592 n

end A000592

/-! ## A000592.P17247122396718181050

`∑[A000925(lt[0, A000161(n)])]`
-/

namespace A000592.P17247122396718181050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P17247122396718181050

namespace A000592

/-- `∑[A000925(lt[0, A000161(n)])]` -/
def P17247122396718181050.Spec : Prop :=
  ∀ n, P17247122396718181050.a n = A000592 n

end A000592

/-! ## A000592.P3143490829219473240

`∑[A000925(lt[0, A000925(n)])]`
-/

namespace A000592.P3143490829219473240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P3143490829219473240

namespace A000592

/-- `∑[A000925(lt[0, A000925(n)])]` -/
def P3143490829219473240.Spec : Prop :=
  ∀ n, P3143490829219473240.a n = A000592 n

end A000592

/-! ## A000592.P4151871026101018594

`∑[A000925(eq[1, A229062(n)])]`
-/

namespace A000592.P4151871026101018594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P4151871026101018594

namespace A000592

/-- `∑[A000925(eq[1, A229062(n)])]` -/
def P4151871026101018594.Spec : Prop :=
  ∀ n, P4151871026101018594.a n = A000592 n

end A000592

/-! ## A000592.P15353079189797970692

`A224212(A001481(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A000592

/-- `A224212(A001481(n+1))` -/
def P15353079189797970692.Spec : Prop :=
  ∀ n, P15353079189797970692.a n = A000592 n

theorem P15353079189797970692.correct : P15353079189797970692.Spec := by
  intro n
  simp only [A000592]

end A000592

/-! ## A000592.P12047263312996453390

`record[A224212(n)%A224212(n+2)]`
-/

namespace A000592.P12047263312996453390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224212 n) (A224212 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000592.P12047263312996453390

namespace A000592

/-- `record[A224212(n)%A224212(n+2)]` -/
def P12047263312996453390.Spec : Prop :=
  ∀ n, P12047263312996453390.a n = A000592 n

end A000592

/-! ## A000592.P7434278317250846625

`∑[A235141(2*n+1)]`
-/

namespace A000592.P7434278317250846625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P7434278317250846625

namespace A000592

/-- `∑[A235141(2*n+1)]` -/
def P7434278317250846625.Spec : Prop :=
  ∀ n, P7434278317250846625.a n = A000592 n

end A000592

/-! ## A000592.P8346083683256475028

`record[A235141(n+1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A000592.P8346083683256475028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A235141 (n + 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000592.P8346083683256475028

namespace A000592

/-- `record[A235141(n+1)+a(n-2)]` -/
def P8346083683256475028.Spec : Prop :=
  ∀ n, P8346083683256475028.a n = A000592 n

end A000592

/-! ## A000592.P11557621606895632650

`∑[abs(A235141(A005408(n)))]`
-/

namespace A000592.P11557621606895632650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A235141 (A005408 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P11557621606895632650

namespace A000592

/-- `∑[abs(A235141(A005408(n)))]` -/
def P11557621606895632650.Spec : Prop :=
  ∀ n, P11557621606895632650.a n = A000592 n

end A000592

/-! ## A000592.P7801040990932506612

`∑[A235141(A004277(n)+1)]+1`
-/

namespace A000592.P7801040990932506612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A004277 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000592.P7801040990932506612

namespace A000592

/-- `∑[A235141(A004277(n)+1)]+1` -/
def P7801040990932506612.Spec : Prop :=
  ∀ n, P7801040990932506612.a n = A000592 n

end A000592

/-! ## A000592.P1780495892380108450

`∑[A234300(2*n+1)-A234300(2*n)]`
-/

namespace A000592.P1780495892380108450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (2 * n + 1) - A234300 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000592.P1780495892380108450

namespace A000592

/-- `∑[A234300(2*n+1)-A234300(2*n)]` -/
def P1780495892380108450.Spec : Prop :=
  ∀ n, P1780495892380108450.a n = A000592 n

end A000592

/-!
# A000593: Sum of odd divisors of n.

The programs for A000593, the canonical program `A000593.P13640346029616979906` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000593 has offset 1).

The definition of A000593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000593.P13509965722412849875

`A000203(A000265(n+1))`
-/

namespace A000593.P13509965722412849875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (n + 1)).toNat

end

end A000593.P13509965722412849875

namespace A000593

/-- `A000203(A000265(n+1))` -/
def P13509965722412849875.Spec : Prop :=
  ∀ n, P13509965722412849875.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P11505671693442210174

`A050449(n+1)+A050452(n+1)`
-/

namespace A000593.P11505671693442210174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + A050452 (n + 1)

end

end A000593.P11505671693442210174

namespace A000593

/-- `A050449(n+1)+A050452(n+1)` -/
def P11505671693442210174.Spec : Prop :=
  ∀ n, P11505671693442210174.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P14796753761598326342

`A054785(n+1)-A000203(n+1)`
-/

namespace A000593.P14796753761598326342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A000203 (n + 1)

end

end A000593.P14796753761598326342

namespace A000593

/-- `A054785(n+1)-A000203(n+1)` -/
def P14796753761598326342.Spec : Prop :=
  ∀ n, P14796753761598326342.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P7600326308555355326

`A000203(n+1)-A146076(n+1)`
-/

namespace A000593.P7600326308555355326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A146076 (n + 1)

end

end A000593.P7600326308555355326

namespace A000593

/-- `A000203(n+1)-A146076(n+1)` -/
def P7600326308555355326.Spec : Prop :=
  ∀ n, P7600326308555355326.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P13640346029616979906

`A000203(n+1)/A038712(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000593

/-- `A000203(n+1)/A038712(n+1)` -/
def P13640346029616979906.Spec : Prop :=
  ∀ n, P13640346029616979906.a n = (A000593 (n + 1) : ℚ)

end A000593

/-! ## A000593.P6038009722189548117

`2*A002131(n+1)-A000203(n+1)`
-/

namespace A000593.P6038009722189548117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002131 (n + 1) - A000203 (n + 1)

end

end A000593.P6038009722189548117

namespace A000593

/-- `2*A002131(n+1)-A000203(n+1)` -/
def P6038009722189548117.Spec : Prop :=
  ∀ n, P6038009722189548117.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P10304984328921503473

`A000203(2*(n+1))-2*A000203(n+1)`
-/

namespace A000593.P10304984328921503473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - 2 * A000203 (n + 1)

end

end A000593.P10304984328921503473

namespace A000593

/-- `A000203(2*(n+1))-2*A000203(n+1)` -/
def P10304984328921503473.Spec : Prop :=
  ∀ n, P10304984328921503473.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P12486223362964133778

`2/3*A002131(n+1)+1/3*A002129(n+1)`
-/

namespace A000593.P12486223362964133778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A002131 (n + 1) : ℚ) + (1 : ℚ) / 3 * (A002129 (n + 1) : ℚ)

end

end A000593.P12486223362964133778

namespace A000593

/-- `2/3*A002131(n+1)+1/3*A002129(n+1)` -/
def P12486223362964133778.Spec : Prop :=
  ∀ n, P12486223362964133778.a n = (A000593 (n + 1) : ℚ)

end A000593

/-! ## A000593.P1130674692223747277

`2/3*A002131(n+1)+(-1)^(n+2)*1/3*A113184(n+1)`
-/

namespace A000593.P1130674692223747277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A002131 (n + 1) : ℚ) + ((-1) ^ (n + 2) : ℚ) * ((1 : ℚ) / 3) * (A113184 (n + 1) : ℚ)

end

end A000593.P1130674692223747277

namespace A000593

/-- `2/3*A002131(n+1)+(-1)^(n+2)*1/3*A113184(n+1)` -/
def P1130674692223747277.Spec : Prop :=
  ∀ n, P1130674692223747277.a n = (A000593 (n + 1) : ℚ)

end A000593

/-! ## A000593.P11147806866021153753

`A000203(n+1)/(2^(1+A183063(n+1)/A001227(n+1))-1)`
-/

namespace A000593.P11147806866021153753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℝ) / ((2 : ℝ) ^ (1 + (A183063 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) : ℝ) - 1)

end

end A000593.P11147806866021153753

namespace A000593

/-- `A000203(n+1)/(2^(1+A183063(n+1)/A001227(n+1))-1)` -/
def P11147806866021153753.Spec : Prop :=
  ∀ n, P11147806866021153753.a n = (A000593 (n + 1) : ℝ)

end A000593

/-! ## A000593.P10331878810394225172

`∑{d}[n+1, #%2*#]`
-/

namespace A000593.P10331878810394225172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 2 * d

end

end A000593.P10331878810394225172

namespace A000593

/-- `∑{d}[n+1, #%2*#]` -/
def P10331878810394225172.Spec : Prop :=
  ∀ n, (P10331878810394225172.a n : ℤ) = A000593 (n + 1)

end A000593

/-! ## A000593.P9769493945786130694

`∑{d}[n+1, lcm(2, #)-#]`
-/

namespace A000593.P9769493945786130694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ))

end

end A000593.P9769493945786130694

namespace A000593

/-- `∑{d}[n+1, lcm(2, #)-#]` -/
def P9769493945786130694.Spec : Prop :=
  ∀ n, P9769493945786130694.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P14629698676108565776

`∑{d}[n+1, #*and(1, #)]`
-/

namespace A000593.P14629698676108565776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.land 1 d

end

end A000593.P14629698676108565776

namespace A000593

/-- `∑{d}[n+1, #*and(1, #)]` -/
def P14629698676108565776.Spec : Prop :=
  ∀ n, (P14629698676108565776.a n : ℤ) = A000593 (n + 1)

end A000593

/-! ## A000593.P232454527511247755

`∑{d}[n+1, and(#, (-1)^#)]`
-/

namespace A000593.P232454527511247755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) ((-1) ^ d)

end

end A000593.P232454527511247755

namespace A000593

/-- `∑{d}[n+1, and(#, (-1)^#)]` -/
def P232454527511247755.Spec : Prop :=
  ∀ n, P232454527511247755.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P6505592037206393697

`∑{d}[n+1, #/xor(n, n+1)]`
-/

namespace A000593.P6505592037206393697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Nat.xor n (n + 1) : ℚ)

end

end A000593.P6505592037206393697

namespace A000593

/-- `∑{d}[n+1, #/xor(n, n+1)]` -/
def P6505592037206393697.Spec : Prop :=
  ∀ n, P6505592037206393697.a n = (A000593 (n + 1) : ℚ)

end A000593

/-! ## A000593.P1148663463872526297

`∑{d}[(n+1)/and(n+1, -(n+1)), #]`
-/

namespace A000593.P1148663463872526297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A000593.P1148663463872526297

namespace A000593

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), #]` -/
def P1148663463872526297.Spec : Prop :=
  ∀ n, (P1148663463872526297.a n : ℤ) = A000593 (n + 1)

end A000593

/-! ## A000593.P3652959852570567842

`∑{d}[(n+1)/or(n+1, -(n+1)), #]`
-/

namespace A000593.P3652959852570567842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A000593.P3652959852570567842

namespace A000593

/-- `∑{d}[(n+1)/or(n+1, -(n+1)), #]` -/
def P3652959852570567842.Spec : Prop :=
  ∀ n, (P3652959852570567842.a n : ℤ) = A000593 (n + 1)

end A000593

/-! ## A000593.P9038702425407796972

`-∑{d}[n+1, (-1)^((n+1)/#)*#]`
-/

namespace A000593.P9038702425407796972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ) * (d : ℝ))

end

end A000593.P9038702425407796972

namespace A000593

/-- `-∑{d}[n+1, (-1)^((n+1)/#)*#]` -/
def P9038702425407796972.Spec : Prop :=
  ∀ n, P9038702425407796972.a n = (A000593 (n + 1) : ℝ)

end A000593

/-! ## A000593.P5685495399431352666

`abs(A115607(n+1))`
-/

namespace A000593.P5685495399431352666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115607 (n + 1)|

end

end A000593.P5685495399431352666

namespace A000593

/-- `abs(A115607(n+1))` -/
def P5685495399431352666.Spec : Prop :=
  ∀ n, P5685495399431352666.a n = A000593 (n + 1)

end A000593

/-! ## A000593.P13870164161262767447

`A326990(n+1)+1`
-/

namespace A000593.P13870164161262767447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (n + 1) + 1

end

end A000593.P13870164161262767447

namespace A000593

/-- `A326990(n+1)+1` -/
def P13870164161262767447.Spec : Prop :=
  ∀ n, P13870164161262767447.a n = A000593 (n + 1)

end A000593

/-!
# A000594: Ramanujan's tau function (or Ramanujan numbers, or tau numbers).

The programs for A000594, there is no canonical definition to state claims against.
-/

/-! ## A000594.P2218809531652414450

`A145155(n)/(n+1)`
-/

namespace A000594.P2218809531652414450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 n : ℚ) / (n + 1 : ℚ)

end

end A000594.P2218809531652414450

/-! ## A000594.P15479958154000136717

`∑{d}[n+1, A308492(#)]`
-/

namespace A000594.P15479958154000136717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308492 d

end

end A000594.P15479958154000136717

/-! ## A000594.P1201351048339547595

`A078463(n)+a(n-1)` with `a(0)=1`
-/

namespace A000594.P1201351048339547595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078463 n + a (n - 1)

end

end A000594.P1201351048339547595

/-! ## A000594.P12000797422693714739

`∑{d}[n+1, A008683(#)*A034777((n+1)/#)]`
-/

namespace A000594.P12000797422693714739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000594.P12000797422693714739

/-! ## A000594.P5314878241558101751

`∑{d}[n+1, A034778(#)*A181104((n+1)/#)]`
-/

namespace A000594.P5314878241558101751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034778 d * A181104 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000594.P5314878241558101751

/-! ## A000594.P12513797738351634353

`A292781(A006463(n)+n)`
-/

namespace A000594.P12513797738351634353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A006463 n + (n : ℤ)).toNat

end

end A000594.P12513797738351634353

/-! ## A000594.P13499317563994424816

`A292781(A075349(n+1)-1)`
-/

namespace A000594.P13499317563994424816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 1) - 1).toNat

end

end A000594.P13499317563994424816

/-! ## A000594.P15151727054679332511

`A292781(A075349(n+2))`
-/

namespace A000594.P15151727054679332511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 2)).toNat

end

end A000594.P15151727054679332511

/-! ## A000594.P6670986131761109786

`A055978(4*(n+1))`
-/

namespace A000594.P6670986131761109786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (4 * (n + 1))

end

end A000594.P6670986131761109786

/-!
# A000595: Number of binary relations on n unlabeled points.

The programs for A000595, there is no canonical definition to state claims against.
-/

/-! ## A000595.P938712190586013521

`∑[∑[A381089(n)]]`
-/

namespace A000595.P938712190586013521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000595.P938712190586013521

/-! ## A000595.P17578336757217549845

`A055974(n)+A055973(n)`
-/

namespace A000595.P17578336757217549845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055974 n + A055973 n

end

end A000595.P17578336757217549845

/-! ## A000595.P13971014866457034411

`2*A029849(n)-A002500(n)`
-/

namespace A000595.P13971014866457034411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - A002500 n

end

end A000595.P13971014866457034411

/-! ## A000595.P16621774912693237337

`A000171(2*n+1)+2*A055974(n)`
-/

namespace A000595.P16621774912693237337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (2 * n + 1) + 2 * A055974 n

end

end A000595.P16621774912693237337

/-! ## A000595.P8037497761671522861

`2*A055973(n)-A000171(2*n+1)`
-/

namespace A000595.P8037497761671522861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055973 n - A000171 (2 * n + 1)

end

end A000595.P8037497761671522861

/-!
# A000596: Central factorial numbers: A008955(n,2).

The programs for A000596, the canonical program `A000596.P6516375790021542149` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000596 has offset 3).

The definition of A000596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000596.P6516375790021542149

`(n+3)*(n+2)*(n+1)*(2*(n+3)-1)*(2*(n+3)-3)*(5*(n+3)+1)/360`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000596

/-- `(n+3)*(n+2)*(n+1)*(2*(n+3)-1)*(2*(n+3)-3)*(5*(n+3)+1)/360` -/
def P6516375790021542149.Spec : Prop :=
  ∀ n, P6516375790021542149.a n = (A000596 (n + 3) : ℚ)

end A000596

/-! ## A000596.P17530913424096715215

`A108673(n+1)-A108674(n+1)`
-/

namespace A000596.P17530913424096715215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108673 (n + 1) - A108674 (n + 1)

end

end A000596.P17530913424096715215

namespace A000596

/-- `A108673(n+1)-A108674(n+1)` -/
def P17530913424096715215.Spec : Prop :=
  ∀ n, P17530913424096715215.a n = A000596 (n + 3)

end A000596

/-! ## A000596.P10143562215449035754

`A060060(n)-∑[∑[A000447(n+1)]]`
-/

namespace A000596.P10143562215449035754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060060 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000596.P10143562215449035754

namespace A000596

/-- `A060060(n)-∑[∑[A000447(n+1)]]` -/
def P10143562215449035754.Spec : Prop :=
  ∀ n, P10143562215449035754.a n = A000596 (n + 3)

end A000596

/-! ## A000596.P12793751693201139887

`A060493(n+2)-A000538(n+2)`
-/

namespace A000596.P12793751693201139887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060493 (n + 2) - A000538 (n + 2)

end

end A000596.P12793751693201139887

namespace A000596

/-- `A060493(n+2)-A000538(n+2)` -/
def P12793751693201139887.Spec : Prop :=
  ∀ n, P12793751693201139887.a n = A000596 (n + 3)

end A000596

/-! ## A000596.P7632556521536559081

`∑[A107983(2*(n+1)²)]`
-/

namespace A000596.P7632556521536559081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107983 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000596.P7632556521536559081

namespace A000596

/-- `∑[A107983(2*(n+1)²)]` -/
def P7632556521536559081.Spec : Prop :=
  ∀ n, P7632556521536559081.a n = A000596 (n + 3)

end A000596

/-!
# A000597: Central factorial numbers: A008955(n,3).

The programs for A000597, the canonical program `A000597.P3799721904336741852` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000597 has offset 4).

The definition of A000597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000597.P3799721904336741852

`C(2*(n+4), 7)*(35*(n+4)²+21*(n+4)+4)/144`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000597

/-- `C(2*(n+4), 7)*(35*(n+4)²+21*(n+4)+4)/144` -/
def P3799721904336741852.Spec : Prop :=
  ∀ n, P3799721904336741852.a n = (A000597 (n + 4) : ℚ)

end A000597

/-! ## A000597.P18191972273385764327

`∑[∑[(n+2)²*∑[(n+1)²]]*(n+3)²]`
-/

namespace A000597.P18191972273385764327
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000597.P18191972273385764327

namespace A000597

/-- `∑[∑[(n+2)²*∑[(n+1)²]]*(n+3)²]` -/
def P18191972273385764327.Spec : Prop :=
  ∀ n, (P18191972273385764327.a n : ℤ) = A000597 (n + 4)

end A000597

/-! ## A000597.P10397778508386172062

`A008955(A167614(n+2))`
-/

namespace A000597.P10397778508386172062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A167614 (n + 2)).toNat

end

end A000597.P10397778508386172062

namespace A000597

/-- `A008955(A167614(n+2))` -/
def P10397778508386172062.Spec : Prop :=
  ∀ n, P10397778508386172062.a n = A000597 (n + 4)

end A000597

/-! ## A000597.P15250875100794629972

`A008955(A052905(n)+8)`
-/

namespace A000597.P15250875100794629972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A052905 n + 8).toNat

end

end A000597.P15250875100794629972

namespace A000597

/-- `A008955(A052905(n)+8)` -/
def P15250875100794629972.Spec : Prop :=
  ∀ n, P15250875100794629972.a n = A000597 (n + 4)

end A000597

/-! ## A000597.P5310868793876817943

`A008955(eq[3, A002262(n)])`
-/

namespace A000597.P5310868793876817943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000597.P5310868793876817943

namespace A000597

/-- `A008955(eq[3, A002262(n)])` -/
def P5310868793876817943.Spec : Prop :=
  ∀ n, P5310868793876817943.a n = A000597 (n + 4)

end A000597

/-!
# A000598: Number of rooted ternary trees with n nodes; number of n-carbon alkyl radicals C(n)H(2n+1) ignoring stereoisomers.

The programs for A000598, there is no canonical definition to state claims against.
-/

/-! ## A000598.P17762312987720682809

`A000642(n+2)-A000599(n+1)`
-/

namespace A000598.P17762312987720682809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000642 (n + 2) - A000599 (n + 1)

end

end A000598.P17762312987720682809

/-! ## A000598.P17135874945352202091

`floor(acot(n))+A000678(n)-A036669(n)`
-/

namespace A000598.P17135874945352202091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A000678 n - A036669 n)

end

end A000598.P17135874945352202091

/-! ## A000598.P5244134684965984492

`A000678(round(sqrt(n²+1)))-A036669(n)`
-/

namespace A000598.P5244134684965984492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A036669 n

end

end A000598.P5244134684965984492

/-! ## A000598.P3826705460093160298

`A000007(n)+A000678(n)-A036669(n)`
-/

namespace A000598.P3826705460093160298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000678 n - A036669 n)

end

end A000598.P3826705460093160298

/-! ## A000598.P4027502874625168458

`A000678(A028310(n))+A036669(n)*A057428(n)`
-/

namespace A000598.P4027502874625168458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 (A028310 n).toNat + A036669 n * A057428 n

end

end A000598.P4027502874625168458

/-! ## A000598.P4943151680422808094

`(A000678(A028310(n))-A036669(n))^A000038(n)!`
-/

namespace A000598.P4943151680422808094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000678 (A028310 n).toNat - A036669 n) ^ Nat.factorial (A000038 n).toNat

end

end A000598.P4943151680422808094

/-! ## A000598.P10320319531383755892

`(A000678(A028310(n))-A036669(n))*A008836(n+1)²`
-/

namespace A000598.P10320319531383755892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000678 (A028310 n).toNat - A036669 n) * A008836 (n + 1) ^ 2

end

end A000598.P10320319531383755892

/-! ## A000598.P15260208389607023334

`(A000678(A028310(n))-A036669(n))%A168610(n)`
-/

namespace A000598.P15260208389607023334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000678 (A028310 n).toNat - A036669 n) (A168610 n)

end

end A000598.P15260208389607023334

/-! ## A000598.P1429167362077601552

`A299038(∑[n+4]+2)`
-/

namespace A000598.P1429167362077601552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000598.P1429167362077601552

/-! ## A000598.P4265353583653907678

`or(char[1], A299038(A046691(n+2)))`
-/

namespace A000598.P4265353583653907678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299038 (A046691 (n + 2)).toNat)

end

end A000598.P4265353583653907678

/-! ## A000598.P1345241477530934847

`A299038(A046691(n+2))%A299010(n+1)`
-/

namespace A000598.P1345241477530934847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299038 (A046691 (n + 2)).toNat) (A299010 (n + 1))

end

end A000598.P1345241477530934847

/-! ## A000598.P16604940414577662531

`A008836(n+1)²*A299038(A155212(n)+4)`
-/

namespace A000598.P16604940414577662531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A299038 (A155212 n + 4).toNat

end

end A000598.P16604940414577662531

/-!
# A000599: Number of secondary alcohols (alkanols or alkyl alcohols C_n H_{2n+1} OH) with n carbon atoms.

The programs for A000599, there is no canonical definition to state claims against.
-/

/-! ## A000599.P149282826250342916

`A227083(A036719(n))`
-/

namespace A000599.P149282826250342916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227083 (A036719 n).toNat

end

end A000599.P149282826250342916

/-! ## A000599.P14377098191157376085

`A102705(A396090(n))`
-/

namespace A000599.P14377098191157376085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A396090 n).toNat

end

end A000599.P14377098191157376085

/-! ## A000599.P9527457752443994222

`A273859(A014265(n+1))`
-/

namespace A000599.P9527457752443994222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A014265 (n + 1)).toNat

end

end A000599.P9527457752443994222

/-! ## A000599.P3569210888956752702

`A012265(A335470(n+1))`
-/

namespace A000599.P3569210888956752702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A335470 (n + 1)).toNat

end

end A000599.P3569210888956752702

/-! ## A000599.P15782813305298419708

`A101788(A259117(n+1))`
-/

namespace A000599.P15782813305298419708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101788 (A259117 (n + 1)).toNat

end

end A000599.P15782813305298419708

