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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A181300: Number of columns with top entry equal to bottom entry in all the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181300, the canonical program `A181300.P8386514330720844755` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181300 has offset 0).

The definition of A181300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181300.P16879272510587933944

`A181331(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A181300.P16879272510587933944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181331 (n - 1) - a (n - 1)

end

end A181300.P16879272510587933944

namespace A181300

/-- `A181331(n-1)-a(n-1)` -/
def P16879272510587933944.Spec : Prop :=
  ∀ n, P16879272510587933944.a n = A181300 n

end A181300

/-! ## A181300.P8386514330720844755

`Δ[A181305(A004275(n)-n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181300

/-- `Δ[A181305(A004275(n)-n)]` -/
def P8386514330720844755.Spec : Prop :=
  ∀ n, P8386514330720844755.a n = A181300 n

theorem P8386514330720844755.correct : P8386514330720844755.Spec := by
  intro n
  simp only [A181300]

end A181300

/-! ## A181300.P18196515621664448791

`A181328(n)-A181326((2*n)%(n+1))`
-/

namespace A181300.P18196515621664448791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181328 n - A181326 (2 * n % (n + 1))

end

end A181300.P18196515621664448791

namespace A181300

/-- `A181328(n)-A181326((2*n)%(n+1))` -/
def P18196515621664448791.Spec : Prop :=
  ∀ n, P18196515621664448791.a n = A181300 n

end A181300

/-! ## A181300.P16628090815009947015

`A181290(n)-A181296(n)`
-/

namespace A181300.P16628090815009947015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181296 n

end

end A181300.P16628090815009947015

namespace A181300

/-- `A181290(n)-A181296(n)` -/
def P16628090815009947015.Spec : Prop :=
  ∀ n, P16628090815009947015.a n = A181300 n

end A181300

/-! ## A181300.P16150845941400261477

`A181298(n)-A181290(n)`
-/

namespace A181300.P16150845941400261477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181298 n - A181290 n

end

end A181300.P16150845941400261477

namespace A181300

/-- `A181298(n)-A181290(n)` -/
def P16150845941400261477.Spec : Prop :=
  ∀ n, P16150845941400261477.a n = A181300 n

end A181300

/-! ## A181300.P7224568670759149394

`A181337(n)-A181305(n)`
-/

namespace A181300.P7224568670759149394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 n - A181305 n

end

end A181300.P7224568670759149394

namespace A181300

/-- `A181337(n)-A181305(n)` -/
def P7224568670759149394.Spec : Prop :=
  ∀ n, P7224568670759149394.a n = A181300 n

end A181300

/-! ## A181300.P6657157492849943903

`A181290(n)-2*A181305(n)`
-/

namespace A181300.P6657157492849943903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - 2 * A181305 n

end

end A181300.P6657157492849943903

namespace A181300

/-- `A181290(n)-2*A181305(n)` -/
def P6657157492849943903.Spec : Prop :=
  ∀ n, P6657157492849943903.a n = A181300 n

end A181300

/-! ## A181300.P5857183500624530224

`2*A181337(n)-A181290(n)`
-/

namespace A181300.P5857183500624530224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181337 n - A181290 n

end

end A181300.P5857183500624530224

namespace A181300

/-- `2*A181337(n)-A181290(n)` -/
def P5857183500624530224.Spec : Prop :=
  ∀ n, P5857183500624530224.a n = A181300 n

end A181300

/-! ## A181300.P4906783906832462188

`A181298(n)/2-A181305(n)`
-/

namespace A181300.P4906783906832462188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181298 n : ℚ) / 2 - (A181305 n : ℚ)

end

end A181300.P4906783906832462188

namespace A181300

/-- `A181298(n)/2-A181305(n)` -/
def P4906783906832462188.Spec : Prop :=
  ∀ n, P4906783906832462188.a n = (A181300 n : ℚ)

end A181300

/-! ## A181300.P5570982037540321859

`A181337(n)-A181296(n)/2`
-/

namespace A181300.P5570982037540321859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181337 n : ℚ) - (A181296 n : ℚ) / 2

end

end A181300.P5570982037540321859

namespace A181300

/-- `A181337(n)-A181296(n)/2` -/
def P5570982037540321859.Spec : Prop :=
  ∀ n, P5570982037540321859.a n = (A181300 n : ℚ)

end A181300

/-!
# A181301: Number of 2-compositions of n having no column with equal entries. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181301, the canonical program `A181301.P1335141616400074036` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181301 has offset 0).

The definition of A181301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181301.P13097259575159709652

`ogf((1-x-x^2+x^3)/(1-3x-x^2+x^3))`
-/

namespace A181301.P13097259575159709652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 1] [1, -3, -1, 1] n

end

end A181301.P13097259575159709652

namespace A181301

/-- `ogf((1-x-x^2+x^3)/(1-3x-x^2+x^3))` -/
def P13097259575159709652.Spec : Prop :=
  ∀ n, P13097259575159709652.a n = A181301 n

end A181301

/-! ## A181301.P1335141616400074036

`Δ[3*a(n-1)+a(n-2)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181301

/-- `Δ[3*a(n-1)+a(n-2)-a(n-3)]` -/
def P1335141616400074036.Spec : Prop :=
  ∀ n, P1335141616400074036.a n = A181301 n

theorem P1335141616400074036.correct : P1335141616400074036.Spec := by
  intro n
  simp only [A181301]

end A181301

/-! ## A181301.P9209867753121574220

`Δ[A036453(n+1)*A287275(n)]`
-/

namespace A181301.P9209867753121574220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181301.P9209867753121574220

namespace A181301

/-- `Δ[A036453(n+1)*A287275(n)]` -/
def P9209867753121574220.Spec : Prop :=
  ∀ n, P9209867753121574220.a n = A181301 n

end A181301

/-! ## A181301.P17065769425009835204

`Δ[A020639(A004277(n))*A287275(n)]`
-/

namespace A181301.P17065769425009835204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181301.P17065769425009835204

namespace A181301

/-- `Δ[A020639(A004277(n))*A287275(n)]` -/
def P17065769425009835204.Spec : Prop :=
  ∀ n, P17065769425009835204.a n = A181301 n

end A181301

/-! ## A181301.P14201789192356486140

`Δ[A014963(A061142(n+1))*A287275(n)]`
-/

namespace A181301.P14201789192356486140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061142 (n + 1)).toNat * A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181301.P14201789192356486140

namespace A181301

/-- `Δ[A014963(A061142(n+1))*A287275(n)]` -/
def P14201789192356486140.Spec : Prop :=
  ∀ n, P14201789192356486140.a n = A181301 n

end A181301

/-!
# A181303: Numbers of the form i*7^j-1 (i=1..6, j >= 0).

The programs for A181303, the canonical program `A181303.P2192349190471917972` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181303 has offset 1).

The definition of A181303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181303.P2192349190471917972

`floor(∑[7^floor((n-1)/6)])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181303

/-- `floor(∑[7^floor((n-1)/6)])` -/
def P2192349190471917972.Spec : Prop :=
  ∀ n, P2192349190471917972.a n = A181303 (n + 1)

theorem P2192349190471917972.correct : P2192349190471917972.Spec := by
  intro n
  simp only [A181303, Nat.add_sub_cancel]

end A181303

/-! ## A181303.P11677513617618550064

`∩[A023749(n+1), A023763(n+1)-1]`
-/

namespace A181303.P11677513617618550064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023763 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181303.P11677513617618550064

namespace A181303

/-- `∩[A023749(n+1), A023763(n+1)-1]` -/
def P11677513617618550064.Spec : Prop :=
  ∀ n, (P11677513617618550064.a n : ℤ) = A181303 (n + 1)

end A181303

/-! ## A181303.P934415934274387557

`A273734(n+6)-A001222(A000230(n))`
-/

namespace A181303.P934415934274387557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273734 (n + 6) - A001222 (A000230 n).toNat

end

end A181303.P934415934274387557

namespace A181303

/-- `A273734(n+6)-A001222(A000230(n))` -/
def P934415934274387557.Spec : Prop :=
  ∀ n, P934415934274387557.a n = A181303 (n + 1)

end A181303

/-! ## A181303.P10775357128942498229

`lt[A242603(n+1), 7]`
-/

namespace A181303.P10775357128942498229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A181303.P10775357128942498229

namespace A181303

/-- `lt[A242603(n+1), 7]` -/
def P10775357128942498229.Spec : Prop :=
  ∀ n, (P10775357128942498229.a n : ℤ) = A181303 (n + 1)

end A181303

/-! ## A181303.P4965109409950710333

`(A273734(n+6)-1)%A139766(n+1)`
-/

namespace A181303.P4965109409950710333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273734 (n + 6) - 1) (A139766 (n + 1))

end

end A181303.P4965109409950710333

namespace A181303

/-- `(A273734(n+6)-1)%A139766(n+1)` -/
def P4965109409950710333.Spec : Prop :=
  ∀ n, P4965109409950710333.a n = A181303 (n + 1)

end A181303

/-!
# A181305: Number of increasing columns in all 2-compositions of n.

The programs for A181305, the canonical program `A181305.P8476751815903758168` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181305 has offset 0).

The definition of A181305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181305.P13319844454916501429

`A181296(n)/2`
-/

namespace A181305.P13319844454916501429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181296 n : ℚ) / 2

end

end A181305.P13319844454916501429

namespace A181305

/-- `A181296(n)/2` -/
def P13319844454916501429.Spec : Prop :=
  ∀ n, P13319844454916501429.a n = (A181305 n : ℚ)

end A181305

/-! ## A181305.P1159583624418510512

`∑[A181300(n+1)]`
-/

namespace A181305.P1159583624418510512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P1159583624418510512

namespace A181305

/-- `∑[A181300(n+1)]` -/
def P1159583624418510512.Spec : Prop :=
  ∀ n, P1159583624418510512.a n = A181305 n

end A181305

/-! ## A181305.P8476751815903758168

`A054146(n)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181305

/-- `A054146(n)-a(n-1)` -/
def P8476751815903758168.Spec : Prop :=
  ∀ n, P8476751815903758168.a n = A181305 n

theorem P8476751815903758168.correct : P8476751815903758168.Spec := by
  intro n
  simp only [A181305]

end A181305

/-! ## A181305.P8034424994609587463

`A181331(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A181305.P8034424994609587463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A181331 n + a (n - 2)

end

end A181305.P8034424994609587463

namespace A181305

/-- `A181331(n)+a(n-2)` -/
def P8034424994609587463.Spec : Prop :=
  ∀ n, P8034424994609587463.a n = A181305 n

end A181305

/-! ## A181305.P14510230854542518836

`A181290(n)-A181337(n)`
-/

namespace A181305.P14510230854542518836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181337 n

end

end A181305.P14510230854542518836

namespace A181305

/-- `A181290(n)-A181337(n)` -/
def P14510230854542518836.Spec : Prop :=
  ∀ n, P14510230854542518836.a n = A181305 n

end A181305

/-! ## A181305.P3013334901292992682

`A181337(n)-A181300(n)`
-/

namespace A181305.P3013334901292992682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 n - A181300 n

end

end A181305.P3013334901292992682

namespace A181305

/-- `A181337(n)-A181300(n)` -/
def P3013334901292992682.Spec : Prop :=
  ∀ n, P3013334901292992682.a n = A181305 n

end A181305

/-! ## A181305.P12703383934483278826

`∑[record[A181300(A051162(n))]]`
-/

namespace A181305.P12703383934483278826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (A051162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P12703383934483278826

namespace A181305

/-- `∑[record[A181300(A051162(n))]]` -/
def P12703383934483278826.Spec : Prop :=
  ∀ n, P12703383934483278826.a n = A181305 n

end A181305

/-! ## A181305.P266297359460834395

`∑[record[A181300(A142150(n))]]`
-/

namespace A181305.P266297359460834395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P266297359460834395

namespace A181305

/-- `∑[record[A181300(A142150(n))]]` -/
def P266297359460834395.Spec : Prop :=
  ∀ n, P266297359460834395.a n = A181305 n

end A181305

/-! ## A181305.P4294170865483188317

`∑[record[A181300(A344180(n))]]`
-/

namespace A181305.P4294170865483188317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P4294170865483188317

namespace A181305

/-- `∑[record[A181300(A344180(n))]]` -/
def P4294170865483188317.Spec : Prop :=
  ∀ n, P4294170865483188317.a n = A181305 n

end A181305

/-! ## A181305.P6779104146411160845

`∑[A181331(n)-A181300(n)]`
-/

namespace A181305.P6779104146411160845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n - A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P6779104146411160845

namespace A181305

/-- `∑[A181331(n)-A181300(n)]` -/
def P6779104146411160845.Spec : Prop :=
  ∀ n, P6779104146411160845.a n = A181305 n

end A181305

/-! ## A181305.P14641549014278135475

`A181290(n)-A181298(n)/2`
-/

namespace A181305.P14641549014278135475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181290 n : ℚ) - (A181298 n : ℚ) / 2

end

end A181305.P14641549014278135475

namespace A181305

/-- `A181290(n)-A181298(n)/2` -/
def P14641549014278135475.Spec : Prop :=
  ∀ n, P14641549014278135475.a n = (A181305 n : ℚ)

end A181305

/-! ## A181305.P14360074955108255365

`(A181290(n)-A181300(n))/2`
-/

namespace A181305.P14360074955108255365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181290 n - A181300 n : ℚ) / 2

end

end A181305.P14360074955108255365

namespace A181305

/-- `(A181290(n)-A181300(n))/2` -/
def P14360074955108255365.Spec : Prop :=
  ∀ n, P14360074955108255365.a n = (A181305 n : ℚ)

end A181305

/-! ## A181305.P6834527317626196485

`A181298(n)/2-A181300(n)`
-/

namespace A181305.P6834527317626196485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181298 n : ℚ) / 2 - (A181300 n : ℚ)

end

end A181305.P6834527317626196485

namespace A181305

/-- `A181298(n)/2-A181300(n)` -/
def P6834527317626196485.Spec : Prop :=
  ∀ n, P6834527317626196485.a n = (A181305 n : ℚ)

end A181305

/-! ## A181305.P3273651328818343210

`∑[record[A181300(A004481(n))]]`
-/

namespace A181305.P3273651328818343210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (A004481 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P3273651328818343210

namespace A181305

/-- `∑[record[A181300(A004481(n))]]` -/
def P3273651328818343210.Spec : Prop :=
  ∀ n, P3273651328818343210.a n = A181305 n

end A181305

/-! ## A181305.P2325571451466261369

`∑[record[A181300(A025581(n))]]`
-/

namespace A181305.P2325571451466261369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181305.P2325571451466261369

namespace A181305

/-- `∑[record[A181300(A025581(n))]]` -/
def P2325571451466261369.Spec : Prop :=
  ∀ n, P2325571451466261369.a n = A181305 n

end A181305

/-!
# A181306: Number of 2-compositions of n having no increasing columns.

The programs for A181306, the canonical program `A181306.P4395506633955808408` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181306 has offset 0).

The definition of A181306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181306.P4395506633955808408

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181306

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P4395506633955808408.Spec : Prop :=
  ∀ n, P4395506633955808408.a n = A181306 n

theorem P4395506633955808408.correct : P4395506633955808408.Spec := by
  intro n
  simp only [A181306]

end A181306

/-! ## A181306.P15867827487910611379

`ogf((1-x-x^2+x^3)/(1-2x-2x^2+2x^3))`
-/

namespace A181306.P15867827487910611379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 1] [1, -2, -2, 2] n

end

end A181306.P15867827487910611379

namespace A181306

/-- `ogf((1-x-x^2+x^3)/(1-2x-2x^2+2x^3))` -/
def P15867827487910611379.Spec : Prop :=
  ∀ n, P15867827487910611379.a n = A181306 n

end A181306

/-! ## A181306.P16898174642527371255

`ceil(∑[A052528(n)/2])`
-/

namespace A181306.P16898174642527371255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052528 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A181306.P16898174642527371255

namespace A181306

/-- `ceil(∑[A052528(n)/2])` -/
def P16898174642527371255.Spec : Prop :=
  ∀ n, P16898174642527371255.a n = A181306 n

end A181306

/-! ## A181306.P8537713742318539566

`ceil(A077937(n)/2)`
-/

namespace A181306.P8537713742318539566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077937 n : ℚ) / 2⌉

end

end A181306.P8537713742318539566

namespace A181306

/-- `ceil(A077937(n)/2)` -/
def P8537713742318539566.Spec : Prop :=
  ∀ n, P8537713742318539566.a n = A181306 n

end A181306

/-! ## A181306.P351280424184947066

`lcm(2, A077981(n))/2`
-/

namespace A181306.P351280424184947066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A077981 n) : ℚ) / 2

end

end A181306.P351280424184947066

namespace A181306

/-- `lcm(2, A077981(n))/2` -/
def P351280424184947066.Spec : Prop :=
  ∀ n, P351280424184947066.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P4527926073628562215

`A077981(n)/A280560(n)`
-/

namespace A181306.P4527926073628562215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077981 n : ℚ) / (A280560 n : ℚ)

end

end A181306.P4527926073628562215

namespace A181306

/-- `A077981(n)/A280560(n)` -/
def P4527926073628562215.Spec : Prop :=
  ∀ n, P4527926073628562215.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P1115219465382168559

`A077937(n)/A036453(n+1)`
-/

namespace A181306.P1115219465382168559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077937 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A181306.P1115219465382168559

namespace A181306

/-- `A077937(n)/A036453(n+1)` -/
def P1115219465382168559.Spec : Prop :=
  ∀ n, P1115219465382168559.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P15011251089036898928

`∑[A052528(n)]/A280560(2*n)`
-/

namespace A181306.P15011251089036898928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A181306.P15011251089036898928

namespace A181306

/-- `∑[A052528(n)]/A280560(2*n)` -/
def P15011251089036898928.Spec : Prop :=
  ∀ n, P15011251089036898928.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P13384579506944406871

`∑[A052528(n)]/A014963(A001316(n))`
-/

namespace A181306.P13384579506944406871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A181306.P13384579506944406871

namespace A181306

/-- `∑[A052528(n)]/A014963(A001316(n))` -/
def P13384579506944406871.Spec : Prop :=
  ∀ n, P13384579506944406871.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P7836633932811027543

`∑[A052528(n)]/A020639(A000118(n))`
-/

namespace A181306.P7836633932811027543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A020639 (A000118 n).toNat : ℚ)

end

end A181306.P7836633932811027543

namespace A181306

/-- `∑[A052528(n)]/A020639(A000118(n))` -/
def P7836633932811027543.Spec : Prop :=
  ∀ n, P7836633932811027543.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P8240428763350837431

`A077937(n)/A020639(A006093(n+1))`
-/

namespace A181306.P8240428763350837431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077937 n : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A181306.P8240428763350837431

namespace A181306

/-- `A077937(n)/A020639(A006093(n+1))` -/
def P8240428763350837431.Spec : Prop :=
  ∀ n, P8240428763350837431.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P4431878587796281522

`∑[A052528(n)]/A020639(A002618(n+1))`
-/

namespace A181306.P4431878587796281522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A020639 (A002618 (n + 1)).toNat : ℚ)

end

end A181306.P4431878587796281522

namespace A181306

/-- `∑[A052528(n)]/A020639(A002618(n+1))` -/
def P4431878587796281522.Spec : Prop :=
  ∀ n, P4431878587796281522.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P10248556231499983180

`A011782(n)/∑[A011782(n)]*A077937(n)`
-/

namespace A181306.P10248556231499983180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A077937 n : ℚ)

end

end A181306.P10248556231499983180

namespace A181306

/-- `A011782(n)/∑[A011782(n)]*A077937(n)` -/
def P10248556231499983180.Spec : Prop :=
  ∀ n, P10248556231499983180.a n = (A181306 n : ℚ)

end A181306

/-! ## A181306.P2261876951855454614

`∑[A052528(n)]/A000122(n²)`
-/

namespace A181306.P2261876951855454614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A181306.P2261876951855454614

namespace A181306

/-- `∑[A052528(n)]/A000122(n²)` -/
def P2261876951855454614.Spec : Prop :=
  ∀ n, P2261876951855454614.a n = (A181306 n : ℚ)

end A181306

/-!
# A181310: Highly abundant numbers (A002093) whose largest prime factor has power greater than 1.

The programs for A181310, there is no canonical definition to state claims against.
-/

/-! ## A181310.P18317442522802074985

`∩[A002093(n+1), A070003(n+1)]`
-/

namespace A181310.P18317442522802074985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181310.P18317442522802074985

/-! ## A181310.P4488665965833453398

`filter[A002093(n+1), A319988(#)]`
-/

namespace A181310.P4488665965833453398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A181310.P4488665965833453398

/-! ## A181310.P816243815449083223

`filter[A316886(n+1), A319988(#)]`
-/

namespace A181310.P816243815449083223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A181310.P816243815449083223

/-! ## A181310.P8356004020760853996

`∩[A070003(n+1), A316886(n+1)]`
-/

namespace A181310.P8356004020760853996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181310.P8356004020760853996

/-! ## A181310.P13238123372434731477

`∩[A226385(n+1), A316886(n+1)]`
-/

namespace A181310.P13238123372434731477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181310.P13238123372434731477

/-!
# A181311: Highly abundant numbers k whose largest prime factor is less than log(k).

The programs for A181311, there is no canonical definition to state claims against.
-/

/-! ## A181311.P6436769004605835988

`∩[A002093(n+1), A137845(n+1)]`
-/

namespace A181311.P6436769004605835988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181311.P6436769004605835988

/-! ## A181311.P3372651881877119066

`∩[A051444(A034885(n+1)), A137845(n+1)]`
-/

namespace A181311.P3372651881877119066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A034885 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181311.P3372651881877119066

/-! ## A181311.P7718077561092810031

`∩[A137845(n+1), A070982(A034885(n+3))]`
-/

namespace A181311.P7718077561092810031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (A034885 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181311.P7718077561092810031

/-! ## A181311.P18156885538357897091

`∩[A209799(n+1), A333968(n+1)]`
-/

namespace A181311.P18156885538357897091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181311.P18156885538357897091

/-! ## A181311.P17624619391403604555

`∩[A333968(n+1), A350137(n+1)]`
-/

namespace A181311.P17624619391403604555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181311.P17624619391403604555

/-!
# A181312: Highly abundant numbers k whose largest prime factor is greater than log(k).

The programs for A181312, there is no canonical definition to state claims against.
-/

/-! ## A181312.P2880870676726502616

`∩[A002093(n+1), A087950(n+1)]`
-/

namespace A181312.P2880870676726502616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181312.P2880870676726502616

/-! ## A181312.P16451556509205180187

`∩[A087950(n+1), A309943(n+1)]`
-/

namespace A181312.P16451556509205180187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181312.P16451556509205180187

/-! ## A181312.P9624202256070579272

`∩[A087950(n+1), A316886(n+1)]`
-/

namespace A181312.P9624202256070579272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181312.P9624202256070579272

/-! ## A181312.P9752197912586511886

`∩[A087950(n+1), A330899(n+1)]`
-/

namespace A181312.P9752197912586511886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181312.P9752197912586511886

/-! ## A181312.P1143483494570356750

`∩[A128399(n+1), A158037(n+1)]`
-/

namespace A181312.P1143483494570356750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181312.P1143483494570356750

/-!
# A181313: Continued fraction expansion of the Fibonacci binary number.

The programs for A181313, there is no canonical definition to state claims against.
-/

/-! ## A181313.P661205638053797072

`A125600(n)-A000007(n)`
-/

namespace A181313.P661205638053797072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125600 n - A000007 n

end

end A181313.P661205638053797072

/-! ## A181313.P13847297000433460907

`A125600(n)/A054977(n)`
-/

namespace A181313.P13847297000433460907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125600 n : ℚ) / (A054977 n : ℚ)

end

end A181313.P13847297000433460907

/-! ## A181313.P8601450180438573944

`C(A125600(n), A001222(A105560(n+1)))`
-/

namespace A181313.P8601450180438573944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A125600 n).toNat (A001222 (A105560 (n + 1)).toNat).toNat

end

end A181313.P8601450180438573944

/-! ## A181313.P14467351520204302823

`A084119(n)+A125600(n)-A124091(n)`
-/

namespace A181313.P14467351520204302823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + (A125600 n - A124091 (n + 1))

end

end A181313.P14467351520204302823

/-! ## A181313.P13548333673982166832

`gcd(A067994(n), A125600(n))`
-/

namespace A181313.P13548333673982166832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067994 n) (A125600 n)

end

end A181313.P13548333673982166832

/-!
# A181314: a(n) = ADPE(n) is the total number of aperiodic k-double-palindromes of n up to cyclic equivalence, where 1 <= k <= n.

The programs for A181314, the canonical program `A181314.P4228565367849305824` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181314 has offset 1).

The definition of A181314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181314.P4228565367849305824

`A057428(n)+A056498(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A181314

/-- `A057428(n)+A056498(n+1)` -/
def P4228565367849305824.Spec : Prop :=
  ∀ n, P4228565367849305824.a n = A181314 (n + 1)

theorem P4228565367849305824.correct : P4228565367849305824.Spec := by
  intro n
  simp only [A181314, Nat.add_sub_cancel]

end A181314

/-! ## A181314.P8369785001149444451

`A056493(n+1)-A054977(n)`
-/

namespace A181314.P8369785001149444451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (n + 1) - A054977 n

end

end A181314.P8369785001149444451

namespace A181314

/-- `A056493(n+1)-A054977(n)` -/
def P8369785001149444451.Spec : Prop :=
  ∀ n, P8369785001149444451.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P4413307992342478970

`A056498(n+1)-A057427(n)`
-/

namespace A181314.P4413307992342478970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) - A057427 n

end

end A181314.P4413307992342478970

namespace A181314

/-- `A056498(n+1)-A057427(n)` -/
def P4413307992342478970.Spec : Prop :=
  ∀ n, P4413307992342478970.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P7793880842377508373

`A056498(n+1)-char[A262519(n)]`
-/

namespace A181314.P7793880842377508373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181314.P7793880842377508373

namespace A181314

/-- `A056498(n+1)-char[A262519(n)]` -/
def P7793880842377508373.Spec : Prop :=
  ∀ n, P7793880842377508373.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P5857464263637374580

`A056493(n+1)+A057427(n)-2`
-/

namespace A181314.P5857464263637374580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (n + 1) + (A057427 n - 2)

end

end A181314.P5857464263637374580

namespace A181314

/-- `A056493(n+1)+A057427(n)-2` -/
def P5857464263637374580.Spec : Prop :=
  ∀ n, P5857464263637374580.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P14222366245145895637

`A056493(n+1)-(A057428(n)+2)`
-/

namespace A181314.P14222366245145895637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (n + 1) - (A057428 n + 2)

end

end A181314.P14222366245145895637

namespace A181314

/-- `A056493(n+1)-(A057428(n)+2)` -/
def P14222366245145895637.Spec : Prop :=
  ∀ n, P14222366245145895637.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P1960917146391867119

`(1-A056493(n+1))*A134824(n)`
-/

namespace A181314.P1960917146391867119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A056493 (n + 1)) * A134824 n

end

end A181314.P1960917146391867119

namespace A181314

/-- `(1-A056493(n+1))*A134824(n)` -/
def P1960917146391867119.Spec : Prop :=
  ∀ n, P1960917146391867119.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P2242230690630966774

`A056498(n+1)-(1-A000122(n))²`
-/

namespace A181314.P2242230690630966774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) - (1 - A000122 n) ^ 2

end

end A181314.P2242230690630966774

namespace A181314

/-- `A056498(n+1)-(1-A000122(n))²` -/
def P2242230690630966774.Spec : Prop :=
  ∀ n, P2242230690630966774.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P2152776239016149386

`floor(A056498(n+1)-n/A001690(n+1))`
-/

namespace A181314.P2152776239016149386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056498 (n + 1) : ℚ) - (n : ℚ) / (A001690 (n + 1) : ℚ)⌋

end

end A181314.P2152776239016149386

namespace A181314

/-- `floor(A056498(n+1)-n/A001690(n+1))` -/
def P2152776239016149386.Spec : Prop :=
  ∀ n, P2152776239016149386.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P1646713035677544125

`A056498(n+1)+A092092(A008458(n))-1`
-/

namespace A181314.P1646713035677544125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) + (A092092 (A008458 n).toNat - 1)

end

end A181314.P1646713035677544125

namespace A181314

/-- `A056498(n+1)+A092092(A008458(n))-1` -/
def P1646713035677544125.Spec : Prop :=
  ∀ n, P1646713035677544125.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P7111479904394110921

`A056498(n+1)-A056498(n+1)/A056493(n+1)`
-/

namespace A181314.P7111479904394110921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056498 (n + 1) : ℚ) - (A056498 (n + 1) : ℚ) / (A056493 (n + 1) : ℚ)

end

end A181314.P7111479904394110921

namespace A181314

/-- `A056498(n+1)-A056498(n+1)/A056493(n+1)` -/
def P7111479904394110921.Spec : Prop :=
  ∀ n, P7111479904394110921.a n = (A181314 (n + 1) : ℚ)

end A181314

/-! ## A181314.P6325943302952519997

`(A056498(n+1)-1)%A027383(n)`
-/

namespace A181314.P6325943302952519997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056498 (n + 1) - 1) (A027383 n)

end

end A181314.P6325943302952519997

namespace A181314

/-- `(A056498(n+1)-1)%A027383(n)` -/
def P6325943302952519997.Spec : Prop :=
  ∀ n, P6325943302952519997.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P1744154325044223516

`and(A056493(n+1)-1, A000225(n))`
-/

namespace A181314.P1744154325044223516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1) - 1) (A000225 n)

end

end A181314.P1744154325044223516

namespace A181314

/-- `and(A056493(n+1)-1, A000225(n))` -/
def P1744154325044223516.Spec : Prop :=
  ∀ n, P1744154325044223516.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P12046962305902170280

`and(A056493(n+1)-1, A140683(n))`
-/

namespace A181314.P12046962305902170280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1) - 1) (A140683 n)

end

end A181314.P12046962305902170280

namespace A181314

/-- `and(A056493(n+1)-1, A140683(n))` -/
def P12046962305902170280.Spec : Prop :=
  ∀ n, P12046962305902170280.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P9863449751571747387

`and(A056493(n+1)-1, A153894(n))`
-/

namespace A181314.P9863449751571747387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1) - 1) (A153894 n)

end

end A181314.P9863449751571747387

namespace A181314

/-- `and(A056493(n+1)-1, A153894(n))` -/
def P9863449751571747387.Spec : Prop :=
  ∀ n, P9863449751571747387.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P11775847181378744890

`and(A056493(n+1)-1, A198274(n))`
-/

namespace A181314.P11775847181378744890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1) - 1) (A198274 n)

end

end A181314.P11775847181378744890

namespace A181314

/-- `and(A056493(n+1)-1, A198274(n))` -/
def P11775847181378744890.Spec : Prop :=
  ∀ n, P11775847181378744890.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P12699464612421140431

`A056498(n+1)-A007318(∑[n])%(n+1)`
-/

namespace A181314.P12699464612421140431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) - Int.tmod (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A181314.P12699464612421140431

namespace A181314

/-- `A056498(n+1)-A007318(∑[n])%(n+1)` -/
def P12699464612421140431.Spec : Prop :=
  ∀ n, P12699464612421140431.a n = A181314 (n + 1)

end A181314

/-! ## A181314.P4562171819882435021

`A327878(record[n+1-A327878(n+1)]+1)-1`
-/

namespace A181314.P4562171819882435021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A327878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327878 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat - 1

end

end A181314.P4562171819882435021

namespace A181314

/-- `A327878(record[n+1-A327878(n+1)]+1)-1` -/
def P4562171819882435021.Spec : Prop :=
  ∀ n, P4562171819882435021.a n = A181314 (n + 1)

end A181314

/-!
# A181315: G.f. A(x) satisfies A(x) = Product_{n>=1} (1 + x^n*A(x)^n).

The programs for A181315, there is no canonical definition to state claims against.
-/

/-! ## A181315.P11701413272618625932

`A393593(n)/(n+1)`
-/

namespace A181315.P11701413272618625932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393593 n : ℚ) / (n + 1 : ℚ)

end

end A181315.P11701413272618625932

/-! ## A181315.P281108563304938109

`A286335(A074148(Δ[n²]))/(n+1)`
-/

namespace A181315.P281108563304938109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286335 (A074148 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A181315.P281108563304938109

/-! ## A181315.P878707685429571587

`A286335(A054000(n+1)+1)/(n+1)`
-/

namespace A181315.P878707685429571587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286335 (A054000 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A181315.P878707685429571587

/-! ## A181315.P12841271860886284755

`A286335(A047838(2*(n+1)))/(n+1)`
-/

namespace A181315.P12841271860886284755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286335 (A047838 (2 * (n + 1))).toNat : ℚ) / (n + 1 : ℚ)

end

end A181315.P12841271860886284755

/-! ## A181315.P13062512483961248562

`A286335(A001844(n)+2*n)/(n+1)`
-/

namespace A181315.P13062512483961248562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286335 (A001844 n + (2 * n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181315.P13062512483961248562

/-! ## A181315.P12627172072429620531

`A286335(A104249(n)+A055999(n))/(n+1)`
-/

namespace A181315.P12627172072429620531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286335 (A104249 n + A055999 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A181315.P12627172072429620531

/-!
# A181317: Triangle in which n-th row lists all partitions of n, in the order of increasing smallest numbers of prime signatures.

The programs for A181317, there is no canonical definition to state claims against.
-/

/-! ## A181317.P1814852576350627104

`A330370(n+1)-char[A044336(n+1)]`
-/

namespace A181317.P1814852576350627104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181317.P1814852576350627104

/-! ## A181317.P7538273097274415474

`A330370(n+1)-char[A187700(n+1)]`
-/

namespace A181317.P7538273097274415474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181317.P7538273097274415474

/-! ## A181317.P892606994991260225

`A330370(n+1)-char[A217773(n+1)]`
-/

namespace A181317.P892606994991260225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181317.P892606994991260225

/-! ## A181317.P660030726852495105

`A330370(n+1)-char[A325604(n+1)]`
-/

namespace A181317.P660030726852495105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325604 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181317.P660030726852495105

/-! ## A181317.P130104545645884232

`A330370(n+1)-A085859(A085856(n))`
-/

namespace A181317.P130104545645884232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - A085859 (A085856 n).toNat

end

end A181317.P130104545645884232

/-! ## A181317.P3412898619420949592

`A330370(n+1)-A090620(A082859(n))`
-/

namespace A181317.P3412898619420949592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - A090620 (A082859 n).toNat

end

end A181317.P3412898619420949592

/-! ## A181317.P5557596590454473327

`A330370(n+1)-char[A059840(A004771(n))]`
-/

namespace A181317.P5557596590454473327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (A004771 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181317.P5557596590454473327

/-! ## A181317.P16789490597929506881

`A330370(n+1)-A025442(A002260(n+1))`
-/

namespace A181317.P16789490597929506881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - A025442 (A002260 (n + 1)).toNat

end

end A181317.P16789490597929506881

/-! ## A181317.P4173827094802257878

`A330370(n+1)-A308930(A114811(n+1))`
-/

namespace A181317.P4173827094802257878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - A308930 (A114811 (n + 1)).toNat

end

end A181317.P4173827094802257878

/-! ## A181317.P17256344006033818302

`A330370(n+1)-A179527(A064628(A002262(n)))`
-/

namespace A181317.P17256344006033818302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (n + 1) - A179527 (A064628 (A002262 n).toNat).toNat

end

end A181317.P17256344006033818302

/-!
# A181318: a(n) = A060819(n)^2.

The programs for A181318, the canonical program `A181318.P5538099628553252817` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181318 has offset 0).

The definition of A181318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181318.P5538099628553252817

`(n/gcd(n, 4))²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181318

/-- `(n/gcd(n, 4))²` -/
def P5538099628553252817.Spec : Prop :=
  ∀ n, P5538099628553252817.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P8079372121062624647

`(lcm(4, n)/4)²`
-/

namespace A181318.P8079372121062624647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 n : ℚ) / 4) ^ 2

end

end A181318.P8079372121062624647

namespace A181318

/-- `(lcm(4, n)/4)²` -/
def P8079372121062624647.Spec : Prop :=
  ∀ n, P8079372121062624647.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P13364896122882622872

`(A109045(n)/4)²`
-/

namespace A181318.P13364896122882622872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109045 n : ℚ) / 4) ^ 2

end

end A181318.P13364896122882622872

namespace A181318

/-- `(A109045(n)/4)²` -/
def P13364896122882622872.Spec : Prop :=
  ∀ n, P13364896122882622872.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P3486195151151175422

`n²/A010156(n)`
-/

namespace A181318.P3486195151151175422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A010156 n : ℚ)

end

end A181318.P3486195151151175422

namespace A181318

/-- `n²/A010156(n)` -/
def P3486195151151175422.Spec : Prop :=
  ∀ n, P3486195151151175422.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P6777997744037446972

`(n/A109008(n))²`
-/

namespace A181318.P6777997744037446972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A109008 n : ℚ)) ^ 2

end

end A181318.P6777997744037446972

namespace A181318

/-- `(n/A109008(n))²` -/
def P6777997744037446972.Spec : Prop :=
  ∀ n, P6777997744037446972.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P12574281157147317148

`gcd(n, A178242(n))²`
-/

namespace A181318.P12574281157147317148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A178242 n) ^ 2

end

end A181318.P12574281157147317148

namespace A181318

/-- `gcd(n, A178242(n))²` -/
def P12574281157147317148.Spec : Prop :=
  ∀ n, (P12574281157147317148.a n : ℤ) = A181318 n

end A181318

/-! ## A181318.P13593594585998968124

`n/4*A188134(n)`
-/

namespace A181318.P13593594585998968124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A188134 n : ℚ)

end

end A181318.P13593594585998968124

namespace A181318

/-- `n/4*A188134(n)` -/
def P13593594585998968124.Spec : Prop :=
  ∀ n, P13593594585998968124.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P14907080200901800284

`(n/dr(A010197(n)))²`
-/

namespace A181318.P14907080200901800284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (SequenceMachineLib.digitalRoot (A010197 n) : ℚ)) ^ 2

end

end A181318.P14907080200901800284

namespace A181318

/-- `(n/dr(A010197(n)))²` -/
def P14907080200901800284.Spec : Prop :=
  ∀ n, P14907080200901800284.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P13609589624360276654

`(n/dr(A040855(n)))²`
-/

namespace A181318.P13609589624360276654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (SequenceMachineLib.digitalRoot (A040855 n) : ℚ)) ^ 2

end

end A181318.P13609589624360276654

namespace A181318

/-- `(n/dr(A040855(n)))²` -/
def P13609589624360276654.Spec : Prop :=
  ∀ n, P13609589624360276654.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P14577152983047752355

`(n/(A323202(n)+2))²`
-/

namespace A181318.P14577152983047752355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A323202 n + 2 : ℚ)) ^ 2

end

end A181318.P14577152983047752355

namespace A181318

/-- `(n/(A323202(n)+2))²` -/
def P14577152983047752355.Spec : Prop :=
  ∀ n, P14577152983047752355.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P10443646948086103495

`A168077(A026741(n))`
-/

namespace A181318.P10443646948086103495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (A026741 n).toNat

end

end A181318.P10443646948086103495

namespace A181318

/-- `A168077(A026741(n))` -/
def P10443646948086103495.Spec : Prop :=
  ∀ n, P10443646948086103495.a n = A181318 n

end A181318

/-! ## A181318.P2987087135472834552

`A168077(sqrt(A168077(n)))`
-/

namespace A181318.P2987087135472834552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (SequenceMachineLib.roundAway (Real.sqrt (A168077 n : ℝ))).toNat

end

end A181318.P2987087135472834552

namespace A181318

/-- `A168077(sqrt(A168077(n)))` -/
def P2987087135472834552.Spec : Prop :=
  ∀ n, P2987087135472834552.a n = A181318 n

end A181318

/-! ## A181318.P8806056605145025993

`A168077(A109043(n)/2)`
-/

namespace A181318.P8806056605145025993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (SequenceMachineLib.roundAway ((A109043 n : ℚ) / 2)).toNat

end

end A181318.P8806056605145025993

namespace A181318

/-- `A168077(A109043(n)/2)` -/
def P8806056605145025993.Spec : Prop :=
  ∀ n, P8806056605145025993.a n = A181318 n

end A181318

/-! ## A181318.P9695457014486755804

`A142883(n)-A191567(n)`
-/

namespace A181318.P9695457014486755804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142883 n - A191567 n

end

end A181318.P9695457014486755804

namespace A181318

/-- `A142883(n)-A191567(n)` -/
def P9695457014486755804.Spec : Prop :=
  ∀ n, P9695457014486755804.a n = A181318 n

end A181318

/-! ## A181318.P6288409107651294104

`A168077(n)/A010121(n)`
-/

namespace A181318.P6288409107651294104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168077 n : ℚ) / (A010121 n : ℚ)

end

end A181318.P6288409107651294104

namespace A181318

/-- `A168077(n)/A010121(n)` -/
def P6288409107651294104.Spec : Prop :=
  ∀ n, P6288409107651294104.a n = (A181318 n : ℚ)

end A181318

/-! ## A181318.P14299117462547439465

`A168077(n/A040001(n))`
-/

namespace A181318.P14299117462547439465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A181318.P14299117462547439465

namespace A181318

/-- `A168077(n/A040001(n))` -/
def P14299117462547439465.Spec : Prop :=
  ∀ n, P14299117462547439465.a n = A181318 n

end A181318

/-! ## A181318.P2986916983855219695

`A061037(n+2)-A188134(n)`
-/

namespace A181318.P2986916983855219695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) - A188134 n

end

end A181318.P2986916983855219695

namespace A181318

/-- `A061037(n+2)-A188134(n)` -/
def P2986916983855219695.Spec : Prop :=
  ∀ n, P2986916983855219695.a n = A181318 n

end A181318

/-! ## A181318.P11750701817745279652

`A191567(n)-A061037(n+2)`
-/

namespace A181318.P11750701817745279652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n - A061037 (n + 2)

end

end A181318.P11750701817745279652

namespace A181318

/-- `A191567(n)-A061037(n+2)` -/
def P11750701817745279652.Spec : Prop :=
  ∀ n, P11750701817745279652.a n = A181318 n

end A181318

/-! ## A181318.P13571883245271333673

`gcd(A181763(n+2), A226008(n))`
-/

namespace A181318.P13571883245271333673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181763 (n + 2)) (A226008 n)

end

end A181318.P13571883245271333673

namespace A181318

/-- `gcd(A181763(n+2), A226008(n))` -/
def P13571883245271333673.Spec : Prop :=
  ∀ n, (P13571883245271333673.a n : ℤ) = A181318 n

end A181318

/-! ## A181318.P8947732357731032819

`(n/Δ[A047492(n+1)])²`
-/

namespace A181318.P8947732357731032819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047492 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (f1 (n + 1) - f1 n : ℚ)) ^ 2

end

end A181318.P8947732357731032819

namespace A181318

/-- `(n/Δ[A047492(n+1)])²` -/
def P8947732357731032819.Spec : Prop :=
  ∀ n, P8947732357731032819.a n = (A181318 n : ℚ)

end A181318

/-!
# A181322: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of partitions of 2*n into powers of 2 less than or equal to 2^k.

The programs for A181322, there is no canonical definition to state claims against.
-/

/-! ## A181322.P245477766085020755

`A262553(eq[0, A103452(n)])`
-/

namespace A181322.P245477766085020755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181322.P245477766085020755

/-! ## A181322.P1945944475455589248

`A262553(2*A014132(n+1)-n)`
-/

namespace A181322.P1945944475455589248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A181322.P1945944475455589248

/-! ## A181322.P16066994244556392772

`A262553(A014132(A014132(n+1)))`
-/

namespace A181322.P16066994244556392772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A181322.P16066994244556392772

/-! ## A181322.P4779455641025705334

`A262553(A140978(n+1)-A061579(n))`
-/

namespace A181322.P4779455641025705334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (A140978 (n + 1) - A061579 n).toNat

end

end A181322.P4779455641025705334

/-! ## A181322.P16780174098155669962

`A262553(eq[0, A145677(n)])`
-/

namespace A181322.P16780174098155669962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181322.P16780174098155669962

/-! ## A181322.P17004576128691827268

`A262553(eq[0, A158821(n)])`
-/

namespace A181322.P17004576128691827268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181322.P17004576128691827268

/-!
# A181324: G.f. 1/(1-sum(n=1,N,x^(n*(3*n-1)/2))).

The programs for A181324, there is no canonical definition to state claims against.
-/

/-! ## A181324.P18345312320874579758

`A133137(A322340(n))+A033104(A304633(n))`
-/

namespace A181324.P18345312320874579758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A322340 n).toNat + A033104 (A304633 n).toNat

end

end A181324.P18345312320874579758

/-! ## A181324.P15066088960441072052

`A282504(n)+∑[A025455(A285834(n))]`
-/

namespace A181324.P15066088960441072052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A285834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282504 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181324.P15066088960441072052

/-! ## A181324.P5467268785174856366

`A282504(n)+A082784(A387508(n))`
-/

namespace A181324.P5467268785174856366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282504 n + A082784 (A387508 n).toNat

end

end A181324.P5467268785174856366

/-! ## A181324.P9064212773361297417

`A003520(n)+A001222(∏[A147016(n+3)])`
-/

namespace A181324.P9064212773361297417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181324.P9064212773361297417

/-!
# A181325: Primes that can be written as the sum of a Fibonacci number (A000045) and a triangular number (A000217).

The programs for A181325, there is no canonical definition to state claims against.
-/

/-! ## A181325.P15139916434340032502

`A000040(lt[A205573(3*n+1), A003159(n+1)])`
-/

namespace A181325.P15139916434340032502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181325.P15139916434340032502

/-! ## A181325.P4656888680424054752

`A000040(lt[A205573(3*n+1), A212010(n+1)])`
-/

namespace A181325.P4656888680424054752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181325.P4656888680424054752

/-! ## A181325.P3203232693550849811

`A000040(lt[A205573(3*n+1), A377169(n+1)])`
-/

namespace A181325.P3203232693550849811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181325.P3203232693550849811

/-! ## A181325.P17100563154143856101

`A110923(lt[A217897(3*n+4), A104599(n+1)])`
-/

namespace A181325.P17100563154143856101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217897 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110923 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181325.P17100563154143856101

/-!
# A181326: Number of columns with an odd sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181326, the canonical program `A181326.P4111225017154132152` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181326 has offset 0).

The definition of A181326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181326.P4111225017154132152

`A181296(n)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181326

/-- `A181296(n)-a(n-1)` -/
def P4111225017154132152.Spec : Prop :=
  ∀ n, P4111225017154132152.a n = A181326 n

theorem P4111225017154132152.correct : P4111225017154132152.Spec := by
  intro n
  simp only [A181326]

end A181326

/-! ## A181326.P6928660884113717584

`A181290(n)-A181328(n)`
-/

namespace A181326.P6928660884113717584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181328 n

end

end A181326.P6928660884113717584

namespace A181326

/-- `A181290(n)-A181328(n)` -/
def P6928660884113717584.Spec : Prop :=
  ∀ n, P6928660884113717584.a n = A181326 n

end A181326

/-! ## A181326.P1807533287770679072

`abs(∑[A181305(n)*A280560(n)])`
-/

namespace A181326.P1807533287770679072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n * A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A181326.P1807533287770679072

namespace A181326

/-- `abs(∑[A181305(n)*A280560(n)])` -/
def P1807533287770679072.Spec : Prop :=
  ∀ n, P1807533287770679072.a n = A181326 n

end A181326

/-! ## A181326.P3810123328864005518

`∑[A033999(n)*A181305(n)]*A280560(n)`
-/

namespace A181326.P3810123328864005518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A181305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A280560 n

end

end A181326.P3810123328864005518

namespace A181326

/-- `∑[A033999(n)*A181305(n)]*A280560(n)` -/
def P3810123328864005518.Spec : Prop :=
  ∀ n, P3810123328864005518.a n = A181326 n

end A181326

/-! ## A181326.P14649562597159547679

`∑[A181305(n)*A280560(n)]*A010892(3*n)`
-/

namespace A181326.P14649562597159547679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n * A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * n)

end

end A181326.P14649562597159547679

namespace A181326

/-- `∑[A181305(n)*A280560(n)]*A010892(3*n)` -/
def P14649562597159547679.Spec : Prop :=
  ∀ n, P14649562597159547679.a n = A181326 n

end A181326

/-!
# A181328: Number of columns with an even sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181328, the canonical program `A181328.P11141749099102399961` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181328 has offset 0).

The definition of A181328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181328.P8374306645902265375

`A181290(n)-A181326(n)`
-/

namespace A181328.P8374306645902265375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181326 n

end

end A181328.P8374306645902265375

namespace A181328

/-- `A181290(n)-A181326(n)` -/
def P8374306645902265375.Spec : Prop :=
  ∀ n, P8374306645902265375.a n = A181328 n

end A181328

/-! ## A181328.P6910847906187043468

`A181290(n)%A181326(A028310(n))`
-/

namespace A181328.P6910847906187043468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181290 n) (A181326 (A028310 n).toNat)

end

end A181328.P6910847906187043468

namespace A181328

/-- `A181290(n)%A181326(A028310(n))` -/
def P6910847906187043468.Spec : Prop :=
  ∀ n, P6910847906187043468.a n = A181328 n

end A181328

/-! ## A181328.P15448138622378681678

`A054146(n)+A181331(n)-A181326(n)`
-/

namespace A181328.P15448138622378681678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n + (A181331 n - A181326 n)

end

end A181328.P15448138622378681678

namespace A181328

/-- `A054146(n)+A181331(n)-A181326(n)` -/
def P15448138622378681678.Spec : Prop :=
  ∀ n, P15448138622378681678.a n = A181328 n

end A181328

/-! ## A181328.P11141749099102399961

`A181296(n)+A181300(n)-A181326(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A181328

/-- `A181296(n)+A181300(n)-A181326(n)` -/
def P11141749099102399961.Spec : Prop :=
  ∀ n, P11141749099102399961.a n = A181328 n

theorem P11141749099102399961.correct : P11141749099102399961.Spec := by
  intro n
  simp only [A181328]

end A181328

/-! ## A181328.P11590057156390787881

`A181298(n)-(A181326(n)+A181300(n))`
-/

namespace A181328.P11590057156390787881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181298 n - (A181326 n + A181300 n)

end

end A181328.P11590057156390787881

namespace A181328

/-- `A181298(n)-(A181326(n)+A181300(n))` -/
def P11590057156390787881.Spec : Prop :=
  ∀ n, P11590057156390787881.a n = A181328 n

end A181328

/-!
# A181329: Number of 2-compositions of n having no column with an even sum. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181329, there is no canonical definition to state claims against.
-/

/-! ## A181329.P5266682325672273430

`A181327(floor((n+1)*(n+1)/4))`
-/

namespace A181329.P5266682325672273430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181327 ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) / 4)⌋.toNat

end

end A181329.P5266682325672273430

/-! ## A181329.P12163101354244358680

`record[A181327(n)/A008315(n)]`
-/

namespace A181329.P12163101354244358680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181327 n : ℚ) / (A008315 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181329.P12163101354244358680

/-! ## A181329.P13101666332598939952

`record[A181327(n)/A011973(n)]`
-/

namespace A181329.P13101666332598939952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181327 n : ℚ) / (A011973 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181329.P13101666332598939952

/-! ## A181329.P14259785072715105966

`record[A181327(n)/A102541(n)]`
-/

namespace A181329.P14259785072715105966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181327 n : ℚ) / (A102541 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181329.P14259785072715105966

/-! ## A181329.P42032041709498645

`record[A181327(n)/A124324(n)]`
-/

namespace A181329.P42032041709498645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181327 n : ℚ) / (A124324 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181329.P42032041709498645

/-!
# A181331: Number of 0's in the top rows of all 2-compositions of n.

The programs for A181331, the canonical program `A181331.P9429198291935471883` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181331 has offset 0).

The definition of A181331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181294, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181331.P9429198291935471883

`1/2*A181294(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181331

/-- `1/2*A181294(n)` -/
def P9429198291935471883.Spec : Prop :=
  ∀ n, P9429198291935471883.a n = (A181331 n : ℚ)

end A181331

/-! ## A181331.P12296895832559272534

`A181294(n)/2`
-/

namespace A181331.P12296895832559272534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181294 n : ℚ) / 2

end

end A181331.P12296895832559272534

namespace A181331

/-- `A181294(n)/2` -/
def P12296895832559272534.Spec : Prop :=
  ∀ n, P12296895832559272534.a n = (A181331 n : ℚ)

end A181331

/-! ## A181331.P15218643213395305994

`record[Δ[A054146(floor(n/2))]]`
-/

namespace A181331.P15218643213395305994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181331.P15218643213395305994

namespace A181331

/-- `record[Δ[A054146(floor(n/2))]]` -/
def P15218643213395305994.Spec : Prop :=
  ∀ n, P15218643213395305994.a n = A181331 n

end A181331

/-! ## A181331.P15180312517296205978

`A181290(n)-A054146(n)`
-/

namespace A181331.P15180312517296205978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A054146 n

end

end A181331.P15180312517296205978

namespace A181331

/-- `A181290(n)-A054146(n)` -/
def P15180312517296205978.Spec : Prop :=
  ∀ n, P15180312517296205978.a n = A181331 n

end A181331

/-! ## A181331.P13220669614568587300

`A181337(n)-∑[A181300(n)]`
-/

namespace A181331.P13220669614568587300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181331.P13220669614568587300

namespace A181331

/-- `A181337(n)-∑[A181300(n)]` -/
def P13220669614568587300.Spec : Prop :=
  ∀ n, P13220669614568587300.a n = A181331 n

end A181331

/-! ## A181331.P10000295318904593600

`Δ[A054146(A004273(n)-n)]`
-/

namespace A181331.P10000295318904593600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181331.P10000295318904593600

namespace A181331

/-- `Δ[A054146(A004273(n)-n)]` -/
def P10000295318904593600.Spec : Prop :=
  ∀ n, P10000295318904593600.a n = A181331 n

end A181331

/-! ## A181331.P5542928406023970590

`A181300(n+1)+A181300(n)`
-/

namespace A181331.P5542928406023970590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1) + A181300 n

end

end A181331.P5542928406023970590

namespace A181331

/-- `A181300(n+1)+A181300(n)` -/
def P5542928406023970590.Spec : Prop :=
  ∀ n, P5542928406023970590.a n = A181331 n

end A181331

/-! ## A181331.P14187736841613007945

`A054146(n)-A054146(A004273(n)-n)`
-/

namespace A181331.P14187736841613007945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n - A054146 (A004273 n - (n : ℤ)).toNat

end

end A181331.P14187736841613007945

namespace A181331

/-- `A054146(n)-A054146(A004273(n)-n)` -/
def P14187736841613007945.Spec : Prop :=
  ∀ n, P14187736841613007945.a n = A181331 n

end A181331

/-! ## A181331.P13792090342845300110

`A181305(n)-A181305(A004275(n)-n)`
-/

namespace A181331.P13792090342845300110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n - A181305 (A004275 n - (n : ℤ)).toNat

end

end A181331.P13792090342845300110

namespace A181331

/-- `A181305(n)-A181305(A004275(n)-n)` -/
def P13792090342845300110.Spec : Prop :=
  ∀ n, P13792090342845300110.a n = A181331 n

end A181331

/-! ## A181331.P2164331974120046512

`A181300(n)-(∑[A181300(n)]-A181305(n))`
-/

namespace A181331.P2164331974120046512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n - (∑ j ∈ Finset.range (n + 1), f1 j - A181305 n)

end

end A181331.P2164331974120046512

namespace A181331

/-- `A181300(n)-(∑[A181300(n)]-A181305(n))` -/
def P2164331974120046512.Spec : Prop :=
  ∀ n, P2164331974120046512.a n = A181331 n

end A181331

/-! ## A181331.P9057276699974384471

`Δ[A054145(A004273(n)-n)/2]`
-/

namespace A181331.P9057276699974384471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054145 (A004273 n - (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181331.P9057276699974384471

namespace A181331

/-- `Δ[A054145(A004273(n)-n)/2]` -/
def P9057276699974384471.Spec : Prop :=
  ∀ n, P9057276699974384471.a n = (A181331 n : ℚ)

end A181331

/-! ## A181331.P14853697824072315237

`A181290(n)+A181292(n)-∑[A181290(n)]`
-/

namespace A181331.P14853697824072315237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n + (A181292 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181331.P14853697824072315237

namespace A181331

/-- `A181290(n)+A181292(n)-∑[A181290(n)]` -/
def P14853697824072315237.Spec : Prop :=
  ∀ n, P14853697824072315237.a n = A181331 n

end A181331

/-! ## A181331.P14661843678728483725

`Δ[A054146(A003056(C(n, 2)))]`
-/

namespace A181331.P14661843678728483725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (A003056 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181331.P14661843678728483725

namespace A181331

/-- `Δ[A054146(A003056(C(n, 2)))]` -/
def P14661843678728483725.Spec : Prop :=
  ∀ n, P14661843678728483725.a n = A181331 n

end A181331

/-!
# A181332: Triangle read by rows: T(n,k) is the number of 2-compositions of n having k nonzero entries in the top row. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181332, there is no canonical definition to state claims against.
-/

/-! ## A181332.P2892942252206965783

`(A206306(n)+A124237(n))/2`
-/

namespace A181332.P2892942252206965783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206306 n + A124237 n : ℚ) / 2

end

end A181332.P2892942252206965783

/-! ## A181332.P13957749764956201443

`A014682(A206306(n)+A124237(n))`
-/

namespace A181332.P13957749764956201443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A206306 n + A124237 n).toNat

end

end A181332.P13957749764956201443

/-! ## A181332.P3340074491100624263

`A206306(n)+A004525(A124237(n)-A206306(n))`
-/

namespace A181332.P3340074491100624263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 n + A004525 (A124237 n - A206306 n).toNat

end

end A181332.P3340074491100624263

/-! ## A181332.P16833638413796163067

`A206306(n)+A038572(A124237(n)-A206306(n))`
-/

namespace A181332.P16833638413796163067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 n + A038572 (A124237 n - A206306 n).toNat

end

end A181332.P16833638413796163067

/-! ## A181332.P5358259422750766112

`A038572(A206306(n)+A124237(n))`
-/

namespace A181332.P5358259422750766112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A206306 n + A124237 n).toNat

end

end A181332.P5358259422750766112

/-!
# A181334: Let f(n) = Sum_{j>=1} j^n/binomial(2*j,j) = r_n*Pi*sqrt(3)/3^{t_n} + s_n/3; sequence gives r_n.

The programs for A181334, there is no canonical definition to state claims against.
-/

/-! ## A181334.P17869400081371474095

`A098763(a(n-2)+6)` with `a(0)=2, a(1)=2, a(2)=10`
-/

namespace A181334.P17869400081371474095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 10] fun n a =>
  A098763 (a (n - 2) + 6).toNat

end

end A181334.P17869400081371474095

/-!
# A181335: Partial products of A036691.

The programs for A181335, there is no canonical definition to state claims against.
-/

/-! ## A181335.P4032866911401536809

`a(n-1)*∏[lt[∑{p}[n, #], n]]` with `a(0)=1, a(1)=4`
-/

namespace A181335.P4032866911401536809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A181335.P4032866911401536809

/-! ## A181335.P15197839934483467200

`∏[A036691(n)]`
-/

namespace A181335.P15197839934483467200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181335.P15197839934483467200

/-! ## A181335.P18055968389682693898

`∏[A060880(n)+1]`
-/

namespace A181335.P18055968389682693898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060880 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181335.P18055968389682693898

/-! ## A181335.P14232433940817808221

`∏[∏[A018252(n+1)]]`
-/

namespace A181335.P14232433940817808221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181335.P14232433940817808221

/-! ## A181335.P7960927245991393633

`∏[∏[comp[A000040(n+1)-1]+1]]`
-/

namespace A181335.P7960927245991393633
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181335.P7960927245991393633

/-!
# A181337: Number of even entries in the top rows of all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181337, the canonical program `A181337.P8014274062187864923` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181337 has offset 0).

The definition of A181337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181337.P13412074166728396367

`A181298(n)/2`
-/

namespace A181337.P13412074166728396367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181298 n : ℚ) / 2

end

end A181337.P13412074166728396367

namespace A181337

/-- `A181298(n)/2` -/
def P13412074166728396367.Spec : Prop :=
  ∀ n, P13412074166728396367.a n = (A181337 n : ℚ)

end A181337

/-! ## A181337.P8014274062187864923

`A181305(n)+A181300(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181337

/-- `A181305(n)+A181300(n)` -/
def P8014274062187864923.Spec : Prop :=
  ∀ n, P8014274062187864923.a n = A181337 n

theorem P8014274062187864923.correct : P8014274062187864923.Spec := by
  intro n
  simp only [A181337]

end A181337

/-! ## A181337.P6579467461651099903

`A181290(n)-A181305(n)`
-/

namespace A181337.P6579467461651099903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181305 n

end

end A181337.P6579467461651099903

namespace A181337

/-- `A181290(n)-A181305(n)` -/
def P6579467461651099903.Spec : Prop :=
  ∀ n, P6579467461651099903.a n = A181337 n

end A181337

/-! ## A181337.P86356108857399528

`A181331(n)+∑[A181300(n)]`
-/

namespace A181337.P86356108857399528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181337.P86356108857399528

namespace A181337

/-- `A181331(n)+∑[A181300(n)]` -/
def P86356108857399528.Spec : Prop :=
  ∀ n, P86356108857399528.a n = A181337 n

end A181337

/-! ## A181337.P17764188868775603810

`(A181300(n)+A181290(n))/2`
-/

namespace A181337.P17764188868775603810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181300 n + A181290 n : ℚ) / 2

end

end A181337.P17764188868775603810

namespace A181337

/-- `(A181300(n)+A181290(n))/2` -/
def P17764188868775603810.Spec : Prop :=
  ∀ n, P17764188868775603810.a n = (A181337 n : ℚ)

end A181337

/-! ## A181337.P10792965364103374744

`A181300(n)+A181296(n)/2`
-/

namespace A181337.P10792965364103374744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181300 n : ℚ) + (A181296 n : ℚ) / 2

end

end A181337.P10792965364103374744

namespace A181337

/-- `A181300(n)+A181296(n)/2` -/
def P10792965364103374744.Spec : Prop :=
  ∀ n, P10792965364103374744.a n = (A181337 n : ℚ)

end A181337

/-! ## A181337.P8489436789794137991

`A181290(n)-A181296(n)/2`
-/

namespace A181337.P8489436789794137991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181290 n : ℚ) - (A181296 n : ℚ) / 2

end

end A181337.P8489436789794137991

namespace A181337

/-- `A181290(n)-A181296(n)/2` -/
def P8489436789794137991.Spec : Prop :=
  ∀ n, P8489436789794137991.a n = (A181337 n : ℚ)

end A181337

/-! ## A181337.P5157524523696339317

`A181300(n)+∑[A181300(n+1)]`
-/

namespace A181337.P5157524523696339317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181337.P5157524523696339317

namespace A181337

/-- `A181300(n)+∑[A181300(n+1)]` -/
def P5157524523696339317.Spec : Prop :=
  ∀ n, P5157524523696339317.a n = A181337 n

end A181337

/-! ## A181337.P1469107716854321252

`(Δ[A181305(n)]-A003480(n))/2`
-/

namespace A181337.P1469107716854321252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A003480 n : ℚ) / 2

end

end A181337.P1469107716854321252

namespace A181337

/-- `(Δ[A181305(n)]-A003480(n))/2` -/
def P1469107716854321252.Spec : Prop :=
  ∀ n, P1469107716854321252.a n = (A181337 n : ℚ)

end A181337

/-!
# A181339: Largest entry in a 2-composition of n, summed over all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181339, there is no canonical definition to state claims against.
-/

/-! ## A181339.P2675104632094923917

`A120751(A211843(n+1))`
-/

namespace A181339.P2675104632094923917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (A211843 (n + 1)).toNat

end

end A181339.P2675104632094923917

/-!
# A181340: Number of compound perfect squared squares of order n up to symmetries of the square and its squared subrectangles.

The programs for A181340, there is no canonical definition to state claims against.
-/

/-! ## A181340.P2837240360735959177

`A181735(n+1)-A006983(n+1)`
-/

namespace A181340.P2837240360735959177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) - A006983 (n + 1)

end

end A181340.P2837240360735959177

/-! ## A181340.P17082695559166182930

`A181735(n+1)+A006983(n+1)*A057428(n)`
-/

namespace A181340.P17082695559166182930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + A006983 (n + 1) * A057428 n

end

end A181340.P17082695559166182930

/-! ## A181340.P2001124789886441136

`A181735(n+1)+A006983(n+1)*A260196(n)`
-/

namespace A181340.P2001124789886441136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + A006983 (n + 1) * A260196 n

end

end A181340.P2001124789886441136

/-! ## A181340.P6370717653676034252

`A181735(n+1)+A217155(n+1)-A217156(n+1)`
-/

namespace A181340.P6370717653676034252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + (A217155 (n + 1) - A217156 (n + 1))

end

end A181340.P6370717653676034252

/-! ## A181340.P9717520739590988925

`A181735(A031285(n))-(A217156(n+1)-A217155(n+1))`
-/

namespace A181340.P9717520739590988925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (A031285 n).toNat - (A217156 (n + 1) - A217155 (n + 1))

end

end A181340.P9717520739590988925

/-!
# A181342: a(n) = (35*n^4 - 105*n^3 + 160*n^2 - 120*n + 36)/6.

The programs for A181342, the canonical program `A181342.P2715891462349596208` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181342 has offset 1).

The definition of A181342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(35*(n+1)^4-105*(n+1)^3+160*(n+1)²-120*(n+1)+36)/6` (program `A181342.P13035632045745877374`, by `A181342.P13035632045745877374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181342.P2715891462349596208

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+140` with `a(0)=1, a(1)=26, a(2)=186, a(3)=726`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181342

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+140` -/
def P2715891462349596208.Spec : Prop :=
  ∀ n, P2715891462349596208.a n = A181342 (n + 1)

theorem P2715891462349596208.correct : P2715891462349596208.Spec := by
  intro n
  simp only [A181342, Nat.add_sub_cancel]

end A181342

/-! ## A181342.P13035632045745877374

`(35*(n+1)^4-105*(n+1)^3+160*(n+1)²-120*(n+1)+36)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181342.P13035632045745877374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((35 * (n + 1) ^ 4 : ℤ) - (105 * (n + 1) ^ 3 : ℤ) + (160 * (n + 1) ^ 2 : ℤ) - (120 * (n + 1) : ℤ) + 36 : ℚ) / 6

end

end A181342.P13035632045745877374

namespace A181342

/-- `(35*(n+1)^4-105*(n+1)^3+160*(n+1)²-120*(n+1)+36)/6` -/
def P13035632045745877374.Spec : Prop :=
  ∀ n, P13035632045745877374.a n = (A181342 (n + 1) : ℚ)

theorem P13035632045745877374.correct : P13035632045745877374.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A181342, Nat.add_sub_cancel, A181342.P13035632045745877374.a, A181342.P2715891462349596208.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A181342, Nat.add_sub_cancel, A181342.P13035632045745877374.a, A181342.P2715891462349596208.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181342

/-! ## A181342.P13854334260672570359

`A175898(2*n)`
-/

namespace A181342.P13854334260672570359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 (2 * n)

end

end A181342.P13854334260672570359

namespace A181342

/-- `A175898(2*n)` -/
def P13854334260672570359.Spec : Prop :=
  ∀ n, P13854334260672570359.a n = A181342 (n + 1)

end A181342

/-! ## A181342.P16598030308950859263

`record[A175898(and(n, n+1))]`
-/

namespace A181342.P16598030308950859263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181342.P16598030308950859263

namespace A181342

/-- `record[A175898(and(n, n+1))]` -/
def P16598030308950859263.Spec : Prop :=
  ∀ n, P16598030308950859263.a n = A181342 (n + 1)

end A181342

/-! ## A181342.P9704873185803210818

`record[A175898(n)^(-1)^n]`
-/

namespace A181342.P9704873185803210818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175898 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181342.P9704873185803210818

namespace A181342

/-- `record[A175898(n)^(-1)^n]` -/
def P9704873185803210818.Spec : Prop :=
  ∀ n, P9704873185803210818.a n = (A181342 (n + 1) : ℚ)

end A181342

/-! ## A181342.P8668252763270728076

`record[A175898((∑[n]-1)%(n+1))]`
-/

namespace A181342.P8668252763270728076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181342.P8668252763270728076

namespace A181342

/-- `record[A175898((∑[n]-1)%(n+1))]` -/
def P8668252763270728076.Spec : Prop :=
  ∀ n, P8668252763270728076.a n = A181342 (n + 1)

end A181342

/-!
# A181343: a(n) = (35*n^4 - 35*n^3 + 55*n^2 - 25*n + 6)/6.

The programs for A181343, the canonical program `A181343.P16401128473370767170` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181343 has offset 1).

The definition of A181343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181343.P16401128473370767170

`(35*(n+1)^4-35*(n+1)^3+55*(n+1)²-25*(n+1)+6)/6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181343

/-- `(35*(n+1)^4-35*(n+1)^3+55*(n+1)²-25*(n+1)+6)/6` -/
def P16401128473370767170.Spec : Prop :=
  ∀ n, P16401128473370767170.a n = (A181343 (n + 1) : ℚ)

end A181343

/-! ## A181343.P14848600219606950203

`A181342(n+2)-A008383(n+1)`
-/

namespace A181343.P14848600219606950203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181342 (n + 2) - A008383 (n + 1)

end

end A181343.P14848600219606950203

namespace A181343

/-- `A181342(n+2)-A008383(n+1)` -/
def P14848600219606950203.Spec : Prop :=
  ∀ n, P14848600219606950203.a n = A181343 (n + 1)

end A181343

/-! ## A181343.P13888659023829603911

`A175898(Δ[n²])`
-/

namespace A181343.P13888659023829603911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A181343.P13888659023829603911

namespace A181343

/-- `A175898(Δ[n²])` -/
def P13888659023829603911.Spec : Prop :=
  ∀ n, P13888659023829603911.a n = A181343 (n + 1)

end A181343

/-! ## A181343.P4369358818361440783

`record[A175898(and(n, n+1)+1)]`
-/

namespace A181343.P4369358818361440783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181343.P4369358818361440783

namespace A181343

/-- `record[A175898(and(n, n+1)+1)]` -/
def P4369358818361440783.Spec : Prop :=
  ∀ n, P4369358818361440783.a n = A181343 (n + 1)

end A181343

/-! ## A181343.P16425349123029118854

`record[A175898(A000265(n+1))]`
-/

namespace A181343.P16425349123029118854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181343.P16425349123029118854

namespace A181343

/-- `record[A175898(A000265(n+1))]` -/
def P16425349123029118854.Spec : Prop :=
  ∀ n, P16425349123029118854.a n = A181343 (n + 1)

end A181343

/-! ## A181343.P14408544057650236754

`A175898(2*n+1)%A175898(n+1)²`
-/

namespace A181343.P14408544057650236754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175898 (2 * n + 1)) (A175898 (n + 1) ^ 2)

end

end A181343.P14408544057650236754

namespace A181343

/-- `A175898(2*n+1)%A175898(n+1)²` -/
def P14408544057650236754.Spec : Prop :=
  ∀ n, P14408544057650236754.a n = A181343 (n + 1)

end A181343

/-!
# A181344: Number of n X n matrices over {0,1} with rows and columns summing to 3, rows and columns sorted (>=) by value.

The programs for A181344, there is no canonical definition to state claims against.
-/

/-! ## A181344.P9702045341260943419

`Δ[round(A224978(n+3)/7)]`
-/

namespace A181344.P9702045341260943419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A224978 (n + 3) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181344.P9702045341260943419

/-! ## A181344.P16622668104508119751

`A137588(A112934(n))`
-/

namespace A181344.P16622668104508119751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A112934 n).toNat

end

end A181344.P16622668104508119751

/-! ## A181344.P5584668541408471940

`A114898(A248565(n!))`
-/

namespace A181344.P5584668541408471940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (A248565 (Nat.factorial n)).toNat

end

end A181344.P5584668541408471940

/-!
# A181345: Number of n X n matrices over {0,1} with rows and columns summing to 3, rows and columns sorted (>) by value.

The programs for A181345, there is no canonical definition to state claims against.
-/

/-! ## A181345.P14059625537912061026

`A081753(A351161(n)+A000087(n+1))`
-/

namespace A181345.P14059625537912061026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A351161 n + A000087 (n + 1)).toNat

end

end A181345.P14059625537912061026

/-! ## A181345.P744980277324872707

`A002265(A001519(2*n)%A263777(n))`
-/

namespace A181345.P744980277324872707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A001519 (2 * n)) (A263777 n)).toNat

end

end A181345.P744980277324872707

/-!
# A181346: Absolute difference between (sum of previous terms) and prime(n) with a(0) = 1 and a(1) = 2.

The programs for A181346, the canonical program `A181346.P5815690762823342949` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181346 has offset 0).

The definition of A181346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181346.P5815690762823342949

`Δ[A000040(n-and(1, a(n-2)))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181346

/-- `Δ[A000040(n-and(1, a(n-2)))]` -/
def P5815690762823342949.Spec : Prop :=
  ∀ n, P5815690762823342949.a n = A181346 n

theorem P5815690762823342949.correct : P5815690762823342949.Spec := by
  intro n
  simp only [A181346]

end A181346

/-! ## A181346.P10508400838428923409

`A001223(2*n+1-(n+2)%A003309(n+1))%(n+2)`
-/

namespace A181346.P10508400838428923409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 ((2 * n + 1 : ℤ) - Int.tmod (n + 2 : ℤ) (A003309 (n + 1))).toNat) (n + 2 : ℤ)

end

end A181346.P10508400838428923409

namespace A181346

/-- `A001223(2*n+1-(n+2)%A003309(n+1))%(n+2)` -/
def P10508400838428923409.Spec : Prop :=
  ∀ n, P10508400838428923409.a n = A181346 n

end A181346

/-! ## A181346.P5733990085257536674

`Δ[or(A057427(n), A158611(n+1))]`
-/

namespace A181346.P5733990085257536674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A158611 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P5733990085257536674

namespace A181346

/-- `Δ[or(A057427(n), A158611(n+1))]` -/
def P5733990085257536674.Spec : Prop :=
  ∀ n, P5733990085257536674.a n = A181346 n

end A181346

/-! ## A181346.P2703501377013488191

`Δ[or(A010051(n+1), A158611(n+1))]`
-/

namespace A181346.P2703501377013488191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A158611 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P2703501377013488191

namespace A181346

/-- `Δ[or(A010051(n+1), A158611(n+1))]` -/
def P2703501377013488191.Spec : Prop :=
  ∀ n, P2703501377013488191.a n = A181346 n

end A181346

/-! ## A181346.P2527173789382640983

`Δ[or(A061007(n+1), A158611(n+1))]`
-/

namespace A181346.P2527173789382640983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061007 (n + 1)) (A158611 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P2527173789382640983

namespace A181346

/-- `Δ[or(A061007(n+1), A158611(n+1))]` -/
def P2527173789382640983.Spec : Prop :=
  ∀ n, P2527173789382640983.a n = A181346 n

end A181346

/-! ## A181346.P9214728562368334242

`Δ[or(A158611(n+1), A351039(n+1))]`
-/

namespace A181346.P9214728562368334242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158611 (n + 1)) (A351039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P9214728562368334242

namespace A181346

/-- `Δ[or(A158611(n+1), A351039(n+1))]` -/
def P9214728562368334242.Spec : Prop :=
  ∀ n, P9214728562368334242.a n = A181346 n

end A181346

/-! ## A181346.P17081721359952259102

`Δ[A000040(n-A000035(a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A181346.P17081721359952259102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000040 ((n : ℤ) - A000035 (f1 (n - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P17081721359952259102

namespace A181346

/-- `Δ[A000040(n-A000035(a(n-2)))]` -/
def P17081721359952259102.Spec : Prop :=
  ∀ n, P17081721359952259102.a n = A181346 n

end A181346

/-! ## A181346.P3242888400213418308

`Δ[A003961(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A181346.P3242888400213418308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f1 =>
  A003961 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P3242888400213418308

namespace A181346

/-- `Δ[A003961(a(n-1))]` -/
def P3242888400213418308.Spec : Prop :=
  ∀ n, P3242888400213418308.a n = A181346 n

end A181346

/-! ## A181346.P18229299114379641505

`A008578(n+1)%A109613(p?[A006949(n)])`
-/

namespace A181346.P18229299114379641505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (A109613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A181346.P18229299114379641505

namespace A181346

/-- `A008578(n+1)%A109613(p?[A006949(n)])` -/
def P18229299114379641505.Spec : Prop :=
  ∀ n, P18229299114379641505.a n = A181346 n

end A181346

/-! ## A181346.P9380035646166628674

`Δ[A002131(A073846(A004278(n+1)))]`
-/

namespace A181346.P9380035646166628674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A073846 (A004278 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P9380035646166628674

namespace A181346

/-- `Δ[A002131(A073846(A004278(n+1)))]` -/
def P9380035646166628674.Spec : Prop :=
  ∀ n, P9380035646166628674.a n = A181346 n

end A181346

/-! ## A181346.P9359014927906782452

`A064614(A008578(n+1))-record[A259153(n)]`
-/

namespace A181346.P9359014927906782452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A008578 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181346.P9359014927906782452

namespace A181346

/-- `A064614(A008578(n+1))-record[A259153(n)]` -/
def P9359014927906782452.Spec : Prop :=
  ∀ n, P9359014927906782452.a n = A181346 n

end A181346

/-! ## A181346.P13977685384630762777

`p?[A014973(n+1)]-A064989(A008578(n+1))`
-/

namespace A181346.P13977685384630762777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064989 (A008578 (n + 1)).toNat

end

end A181346.P13977685384630762777

namespace A181346

/-- `p?[A014973(n+1)]-A064989(A008578(n+1))` -/
def P13977685384630762777.Spec : Prop :=
  ∀ n, P13977685384630762777.a n = A181346 n

end A181346

/-! ## A181346.P15439961965743520499

`p?[A092509(n+1)]-A064989(A008578(n+1))`
-/

namespace A181346.P15439961965743520499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064989 (A008578 (n + 1)).toNat

end

end A181346.P15439961965743520499

namespace A181346

/-- `p?[A092509(n+1)]-A064989(A008578(n+1))` -/
def P15439961965743520499.Spec : Prop :=
  ∀ n, P15439961965743520499.a n = A181346 n

end A181346

/-! ## A181346.P7212259784405890994

`Δ[A076273(n)-A156037(A233583(n+1))]`
-/

namespace A181346.P7212259784405890994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n - A156037 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P7212259784405890994

namespace A181346

/-- `Δ[A076273(n)-A156037(A233583(n+1))]` -/
def P7212259784405890994.Spec : Prop :=
  ∀ n, P7212259784405890994.a n = A181346 n

end A181346

/-!
# A181350: Denominators of row sums of the triangle (lower triangular matrix) log(F) with F:=A037027 (Fibonacci convolution matrix).

The programs for A181350, there is no canonical definition to state claims against.
-/

/-! ## A181350.P13700627092313136035

`A035050(A263822(n+1)+A079051(n))`
-/

namespace A181350.P13700627092313136035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (A263822 (n + 1) + A079051 n).toNat

end

end A181350.P13700627092313136035

/-! ## A181350.P13138222265866361869

`A072811(A304442(n)+A107763(n+1))`
-/

namespace A181350.P13138222265866361869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 (A304442 n + A107763 (n + 1)).toNat

end

end A181350.P13138222265866361869

/-!
# A181351: Exchange 2 and 5 in the prime factorization of n.

The programs for A181351, the canonical program `A181351.P12920238012766767383` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181351 has offset 1).

The definition of A181351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181351.P12920238012766767383

`(n+1)*(5/2)^val(n+1, 2)*(2/5)^val(n+1, 5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181351

/-- `(n+1)*(5/2)^val(n+1, 2)*(2/5)^val(n+1, 5)` -/
def P12920238012766767383.Spec : Prop :=
  ∀ n, P12920238012766767383.a n = (A181351 (n + 1) : ℚ)

end A181351

/-! ## A181351.P13425903292201195328

`A387377(A064614(n+1))`
-/

namespace A181351.P13425903292201195328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387377 (A064614 (n + 1)).toNat

end

end A181351.P13425903292201195328

namespace A181351

/-- `A387377(A064614(n+1))` -/
def P13425903292201195328.Spec : Prop :=
  ∀ n, P13425903292201195328.a n = A181351 (n + 1)

end A181351

/-! ## A181351.P251319925537730184

`A267099(A064614(A267099(n+1)))`
-/

namespace A181351.P251319925537730184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A064614 (A267099 (n + 1)).toNat).toNat

end

end A181351.P251319925537730184

namespace A181351

/-- `A267099(A064614(A267099(n+1)))` -/
def P251319925537730184.Spec : Prop :=
  ∀ n, P251319925537730184.a n = A181351 (n + 1)

end A181351

/-! ## A181351.P4811653663504914176

`A235200(A064614(A235200(n+1)))`
-/

namespace A181351.P4811653663504914176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A064614 (A235200 (n + 1)).toNat).toNat

end

end A181351.P4811653663504914176

namespace A181351

/-- `A235200(A064614(A235200(n+1)))` -/
def P4811653663504914176.Spec : Prop :=
  ∀ n, P4811653663504914176.a n = A181351 (n + 1)

end A181351

/-! ## A181351.P17860041310429963154

`A072029(A072027(A072026(A072029(n+1))))`
-/

namespace A181351.P17860041310429963154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072029 (A072027 (A072026 (A072029 (n + 1)).toNat).toNat).toNat

end

end A181351.P17860041310429963154

namespace A181351

/-- `A072029(A072027(A072026(A072029(n+1))))` -/
def P17860041310429963154.Spec : Prop :=
  ∀ n, P17860041310429963154.a n = A181351 (n + 1)

end A181351

/-! ## A181351.P14593515010748698771

`A061898(A072028(A072029(A072026(A061898(n+1)))))`
-/

namespace A181351.P14593515010748698771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A072028 (A072029 (A072026 (A061898 (n + 1)).toNat).toNat).toNat).toNat

end

end A181351.P14593515010748698771

namespace A181351

/-- `A061898(A072028(A072029(A072026(A061898(n+1)))))` -/
def P14593515010748698771.Spec : Prop :=
  ∀ n, P14593515010748698771.a n = A181351 (n + 1)

end A181351

/-!
# A181353: a(n) = 9*a(n-1) + 3*a(n-2); a(0) = 0, a(1) = 1.

The programs for A181353, the canonical program `A181353.P10190101741006145705` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181353 has offset 0).

The definition of A181353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+3*a(n-2)` (program `A181353.P10190101741006145705`, by `A181353.P10190101741006145705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181353.P10190101741006145705

`9*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181353

/-- `9*a(n-1)+3*a(n-2)` -/
def P10190101741006145705.Spec : Prop :=
  ∀ n, (P10190101741006145705.a n : ℤ) = A181353 n

theorem P10190101741006145705.correct : P10190101741006145705.Spec := by
  intro n
  simp only [A181353]

end A181353

/-! ## A181353.P10741614358211751814

`((9+sqrt(93))^n-(9-sqrt(93))^n)/(2^n*sqrt(93))`
-/

namespace A181353.P10741614358211751814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (93 : ℝ)) ^ n - (9 - Real.sqrt (93 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (93 : ℝ))

end

end A181353.P10741614358211751814

namespace A181353

/-- `((9+sqrt(93))^n-(9-sqrt(93))^n)/(2^n*sqrt(93))` -/
def P10741614358211751814.Spec : Prop :=
  ∀ n, P10741614358211751814.a n = (A181353 n : ℝ)

end A181353

/-! ## A181353.P16810036398909741137

`ogf(x/(1-9x-3x^2))`
-/

namespace A181353.P16810036398909741137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, -3] n

end

end A181353.P16810036398909741137

namespace A181353

/-- `ogf(x/(1-9x-3x^2))` -/
def P16810036398909741137.Spec : Prop :=
  ∀ n, P16810036398909741137.a n = A181353 n

end A181353

/-! ## A181353.P10020272679472918212

`3*(3*a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A181353.P10020272679472918212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (3 * a (n - 1) - (-a (n - 2)))

end

end A181353.P10020272679472918212

namespace A181353

/-- `3*(3*a(n-1)-floor(-a(n-2)))` -/
def P10020272679472918212.Spec : Prop :=
  ∀ n, P10020272679472918212.a n = A181353 n

end A181353

/-! ## A181353.P15674583495974750654

`3*(3-(3*(1-a(n-1))-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A181353.P15674583495974750654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (3 - (3 * (1 - a (n - 1)) - a (n - 2)))

end

end A181353.P15674583495974750654

namespace A181353

/-- `3*(3-(3*(1-a(n-1))-a(n-2)))` -/
def P15674583495974750654.Spec : Prop :=
  ∀ n, P15674583495974750654.a n = A181353 n

end A181353

/-!
# A181354: Number of n-digit perfect cubes.

The programs for A181354, the canonical program `A181354.P10064624979457329001` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181354 has offset 1).

The definition of A181354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181354.P6675224842005855746

`Δ[ceil(10^(n/3))]`
-/

namespace A181354.P6675224842005855746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181354.P6675224842005855746

namespace A181354

/-- `Δ[ceil(10^(n/3))]` -/
def P6675224842005855746.Spec : Prop :=
  ∀ n, P6675224842005855746.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P14150906428192254700

`Δ[floor(10^(n/3))]+1-n%3`
-/

namespace A181354.P14150906428192254700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - ((n % 3 : ℕ) : ℤ))

end

end A181354.P14150906428192254700

namespace A181354

/-- `Δ[floor(10^(n/3))]+1-n%3` -/
def P14150906428192254700.Spec : Prop :=
  ∀ n, P14150906428192254700.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P10064624979457329001

`abs(Δ[A018005(n+1)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181354

/-- `abs(Δ[A018005(n+1)])` -/
def P10064624979457329001.Spec : Prop :=
  ∀ n, P10064624979457329001.a n = A181354 (n + 1)

theorem P10064624979457329001.correct : P10064624979457329001.Spec := by
  intro n
  simp only [A181354, Nat.add_sub_cancel]

end A181354

/-! ## A181354.P8376204143719524652

`abs(Δ[A130080(Δ[n²])])`
-/

namespace A181354.P8376204143719524652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A181354.P8376204143719524652

namespace A181354

/-- `abs(Δ[A130080(Δ[n²])])` -/
def P8376204143719524652.Spec : Prop :=
  ∀ n, P8376204143719524652.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P10309710427026604054

`A062941(ceil(acot(n)+n))`
-/

namespace A181354.P10309710427026604054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062941 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A181354.P10309710427026604054

namespace A181354

/-- `A062941(ceil(acot(n)+n))` -/
def P10309710427026604054.Spec : Prop :=
  ∀ n, P10309710427026604054.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P11992439935996356221

`A062941(A254667(n+1))`
-/

namespace A181354.P11992439935996356221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062941 (A254667 (n + 1)).toNat

end

end A181354.P11992439935996356221

namespace A181354

/-- `A062941(A254667(n+1))` -/
def P11992439935996356221.Spec : Prop :=
  ∀ n, P11992439935996356221.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P2227425550380942105

`A062941(A233583(n+2))`
-/

namespace A181354.P2227425550380942105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062941 (A233583 (n + 2)).toNat

end

end A181354.P2227425550380942105

namespace A181354

/-- `A062941(A233583(n+2))` -/
def P2227425550380942105.Spec : Prop :=
  ∀ n, P2227425550380942105.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P13656250548123807130

`A062941(n+1)-A000007(n)`
-/

namespace A181354.P13656250548123807130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062941 (n + 1) - A000007 n

end

end A181354.P13656250548123807130

namespace A181354

/-- `A062941(n+1)-A000007(n)` -/
def P13656250548123807130.Spec : Prop :=
  ∀ n, P13656250548123807130.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P14309690857139235835

`A018005(n+2)-A018005(n+1)`
-/

namespace A181354.P14309690857139235835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 2) - A018005 (n + 1)

end

end A181354.P14309690857139235835

namespace A181354

/-- `A018005(n+2)-A018005(n+1)` -/
def P14309690857139235835.Spec : Prop :=
  ∀ n, P14309690857139235835.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P6397544261318174089

`A216656(2*(n+1))+A216656(A233583(2*(n+1)))`
-/

namespace A181354.P6397544261318174089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216656 (2 * (n + 1)) + A216656 (A233583 (2 * (n + 1))).toNat

end

end A181354.P6397544261318174089

namespace A181354

/-- `A216656(2*(n+1))+A216656(A233583(2*(n+1)))` -/
def P6397544261318174089.Spec : Prop :=
  ∀ n, P6397544261318174089.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P5268096644173558211

`A049415(n+1)+A062941(n+1)-A062940(n+1)`
-/

namespace A181354.P5268096644173558211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + (A062941 (n + 1) - A062940 (n + 1))

end

end A181354.P5268096644173558211

namespace A181354

/-- `A049415(n+1)+A062941(n+1)-A062940(n+1)` -/
def P5268096644173558211.Spec : Prop :=
  ∀ n, P5268096644173558211.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P5353076774774319610

`and(A062941(n+1), A198693(n))`
-/

namespace A181354.P5353076774774319610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062941 (n + 1)) (A198693 n)

end

end A181354.P5353076774774319610

namespace A181354

/-- `and(A062941(n+1), A198693(n))` -/
def P5353076774774319610.Spec : Prop :=
  ∀ n, P5353076774774319610.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P9715679385855979486

`and(A062941(n+1), A198694(n))`
-/

namespace A181354.P9715679385855979486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062941 (n + 1)) (A198694 n)

end

end A181354.P9715679385855979486

namespace A181354

/-- `and(A062941(n+1), A198694(n))` -/
def P9715679385855979486.Spec : Prop :=
  ∀ n, P9715679385855979486.a n = A181354 (n + 1)

end A181354

/-! ## A181354.P10961413432731807703

`and(A062941(n+1), A198695(n))`
-/

namespace A181354.P10961413432731807703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062941 (n + 1)) (A198695 n)

end

end A181354.P10961413432731807703

namespace A181354

/-- `and(A062941(n+1), A198695(n))` -/
def P10961413432731807703.Spec : Prop :=
  ∀ n, P10961413432731807703.a n = A181354 (n + 1)

end A181354

/-!
# A181356: Smallest k such that 2^(2^n) - k is a safe prime.

The programs for A181356, there is no canonical definition to state claims against.
-/

/-! ## A181356.P798430716306047349

`A057821(2^(n+2))`
-/

namespace A181356.P798430716306047349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057821 (2 ^ (n + 2))

end

end A181356.P798430716306047349

/-! ## A181356.P16361733622969862119

`or(1, A057821(A020707(n)))`
-/

namespace A181356.P16361733622969862119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057821 (A020707 n).toNat)

end

end A181356.P16361733622969862119

/-! ## A181356.P5371511764721470054

`A355451(n+1)+A057821(A020707(n))`
-/

namespace A181356.P5371511764721470054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (n + 1) + A057821 (A020707 n).toNat

end

end A181356.P5371511764721470054

/-! ## A181356.P13402301911822621492

`A188510(2*n)+A057821(A020707(n))`
-/

namespace A181356.P13402301911822621492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) + A057821 (A020707 n).toNat

end

end A181356.P13402301911822621492

/-! ## A181356.P10625504350430219190

`A057821(A020707(n))%A232312(n+1)`
-/

namespace A181356.P10625504350430219190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057821 (A020707 n).toNat) (A232312 (n + 1))

end

end A181356.P10625504350430219190

/-!
# A181357: Sum of squares of digits of Fibonacci(n).

The programs for A181357, the canonical program `A181357.P237192071809245977` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181357 has offset 1).

The definition of A181357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181357.P237192071809245977

`A003132(A000045(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181357

/-- `A003132(A000045(n+1))` -/
def P237192071809245977.Spec : Prop :=
  ∀ n, P237192071809245977.a n = A181357 (n + 1)

theorem P237192071809245977.correct : P237192071809245977.Spec := by
  intro n
  simp only [A181357, Nat.add_sub_cancel]

end A181357

/-! ## A181357.P5796532154746511614

`∑{digits}[A272918(n+1), #²]`
-/

namespace A181357.P5796532154746511614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P5796532154746511614

namespace A181357

/-- `∑{digits}[A272918(n+1), #²]` -/
def P5796532154746511614.Spec : Prop :=
  ∀ n, (P5796532154746511614.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P14994543045474167825

`∑{digits}[a(n-1)+a(n-2), #²]` with `a(0)=1, a(1)=1`
-/

namespace A181357.P14994543045474167825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P14994543045474167825

namespace A181357

/-- `∑{digits}[a(n-1)+a(n-2), #²]` -/
def P14994543045474167825.Spec : Prop :=
  ∀ n, (P14994543045474167825.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P17174809219898623965

`∑{digits}[∑[A212804(n)], #²]`
-/

namespace A181357.P17174809219898623965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P17174809219898623965

namespace A181357

/-- `∑{digits}[∑[A212804(n)], #²]` -/
def P17174809219898623965.Spec : Prop :=
  ∀ n, (P17174809219898623965.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P18288648804378414008

`∑{digits}[A004091(n+1), #²]`
-/

namespace A181357.P18288648804378414008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P18288648804378414008

namespace A181357

/-- `∑{digits}[A004091(n+1), #²]` -/
def P18288648804378414008.Spec : Prop :=
  ∀ n, (P18288648804378414008.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P17071826914839620944

`∑{digits}[A236191(n+1), #²]`
-/

namespace A181357.P17071826914839620944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P17071826914839620944

namespace A181357

/-- `∑{digits}[A236191(n+1), #²]` -/
def P17071826914839620944.Spec : Prop :=
  ∀ n, (P17071826914839620944.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P8769847412137417953

`∑{digits}[A273003(n+1), #²]`
-/

namespace A181357.P8769847412137417953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P8769847412137417953

namespace A181357

/-- `∑{digits}[A273003(n+1), #²]` -/
def P8769847412137417953.Spec : Prop :=
  ∀ n, (P8769847412137417953.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P2976549164059967936

`∑{digits}[A333378(n+1), #²]`
-/

namespace A181357.P2976549164059967936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P2976549164059967936

namespace A181357

/-- `∑{digits}[A333378(n+1), #²]` -/
def P2976549164059967936.Spec : Prop :=
  ∀ n, (P2976549164059967936.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P11291775451910185071

`∑{digits}[A022093(n+1), #²]`
-/

namespace A181357.P11291775451910185071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P11291775451910185071

namespace A181357

/-- `∑{digits}[A022093(n+1), #²]` -/
def P11291775451910185071.Spec : Prop :=
  ∀ n, (P11291775451910185071.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P8031088944716041722

`∑{digits}[A037027(∑[n]), #²]`
-/

namespace A181357.P8031088944716041722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P8031088944716041722

namespace A181357

/-- `∑{digits}[A037027(∑[n]), #²]` -/
def P8031088944716041722.Spec : Prop :=
  ∀ n, (P8031088944716041722.a n : ℤ) = A181357 (n + 1)

end A181357

/-! ## A181357.P2759373256538900592

`∑{digits}[A053538(∑[n]), #²]`
-/

namespace A181357.P2759373256538900592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P2759373256538900592

namespace A181357

/-- `∑{digits}[A053538(∑[n]), #²]` -/
def P2759373256538900592.Spec : Prop :=
  ∀ n, (P2759373256538900592.a n : ℤ) = A181357 (n + 1)

end A181357

/-!
# A181358: Number of twiddle factors in the first stage of a Pease Radix 4 Fast Fourier Transform.

The programs for A181358, the canonical program `A181358.P12611122177985028869` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181358 has offset 0).

The definition of A181358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181358.P12611122177985028869

`4*(3*4^n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181358

/-- `4*(3*4^n-1)` -/
def P12611122177985028869.Spec : Prop :=
  ∀ n, P12611122177985028869.a n = A181358 n

theorem P12611122177985028869.correct : P12611122177985028869.Spec := by
  intro n
  simp only [A181358]

end A181358

/-! ## A181358.P11850029307438658040

`5*a(n-1)-4*a(n-2)` with `a(0)=8, a(1)=44`
-/

namespace A181358.P11850029307438658040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 44] fun n a =>
  5 * a (n - 1) - 4 * a (n - 2)

end

end A181358.P11850029307438658040

namespace A181358

/-- `5*a(n-1)-4*a(n-2)` -/
def P11850029307438658040.Spec : Prop :=
  ∀ n, P11850029307438658040.a n = A181358 n

theorem P11850029307438658040.correct : P11850029307438658040.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A181358, Nat.add_sub_cancel, A181358.P11850029307438658040.a, A181358.P12611122177985028869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A181358, Nat.add_sub_cancel, A181358.P11850029307438658040.a, A181358.P12611122177985028869.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181358

/-! ## A181358.P14811480508633448765

`ogf((8+4x)/(1-5x+4x^2))`
-/

namespace A181358.P14811480508633448765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 4] [1, -5, 4] n

end

end A181358.P14811480508633448765

namespace A181358

/-- `ogf((8+4x)/(1-5x+4x^2))` -/
def P14811480508633448765.Spec : Prop :=
  ∀ n, P14811480508633448765.a n = A181358 n

end A181358

/-! ## A181358.P12173930725576104880

`lcm(3, 4^(n+1))-4`
-/

namespace A181358.P12173930725576104880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (4 ^ (n + 1)) : ℤ) - 4

end

end A181358.P12173930725576104880

namespace A181358

/-- `lcm(3, 4^(n+1))-4` -/
def P12173930725576104880.Spec : Prop :=
  ∀ n, P12173930725576104880.a n = A181358 n

end A181358

/-! ## A181358.P464817534554838793

`4*a(n-1)+12` with `a(0)=8`
-/

namespace A181358.P464817534554838793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  4 * a (n - 1) + 12

end

end A181358.P464817534554838793

namespace A181358

/-- `4*a(n-1)+12` -/
def P464817534554838793.Spec : Prop :=
  ∀ n, (P464817534554838793.a n : ℤ) = A181358 n

theorem P464817534554838793.correct : P464817534554838793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181358, Nat.add_sub_cancel, A181358.P464817534554838793.a, A181358.P12611122177985028869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181358, Nat.add_sub_cancel, A181358.P464817534554838793.a, A181358.P12611122177985028869.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181358

/-! ## A181358.P9778437512564715436

`lcm(4, a(n-1)+3)` with `a(0)=8`
-/

namespace A181358.P9778437512564715436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.lcm 4 (a (n - 1) + 3)

end

end A181358.P9778437512564715436

namespace A181358

/-- `lcm(4, a(n-1)+3)` -/
def P9778437512564715436.Spec : Prop :=
  ∀ n, (P9778437512564715436.a n : ℤ) = A181358 n

end A181358

/-! ## A181358.P2620765267835262130

`∑[4*a(n-1)]` with `a(0)=8, a(1)=36`
-/

namespace A181358.P2620765267835262130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 36] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181358.P2620765267835262130

namespace A181358

/-- `∑[4*a(n-1)]` -/
def P2620765267835262130.Spec : Prop :=
  ∀ n, (P2620765267835262130.a n : ℤ) = A181358 n

end A181358

/-! ## A181358.P3437471000173322132

`xor(1, Δ[4^(n+1)]-3)`
-/

namespace A181358.P3437471000173322132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 3)

end

end A181358.P3437471000173322132

namespace A181358

/-- `xor(1, Δ[4^(n+1)]-3)` -/
def P3437471000173322132.Spec : Prop :=
  ∀ n, P3437471000173322132.a n = A181358 n

end A181358

/-! ## A181358.P11587502011636288763

`(a(n-1)+3)/(1/2)²` with `a(0)=8`
-/

namespace A181358.P11587502011636288763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (a (n - 1) + 3) / ((1 : ℚ) / 2) ^ 2

end

end A181358.P11587502011636288763

namespace A181358

/-- `(a(n-1)+3)/(1/2)²` -/
def P11587502011636288763.Spec : Prop :=
  ∀ n, P11587502011636288763.a n = (A181358 n : ℚ)

theorem P11587502011636288763.correct : P11587502011636288763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181358, Nat.add_sub_cancel, A181358.P11587502011636288763.a, A181358.P12611122177985028869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181358, Nat.add_sub_cancel, A181358.P11587502011636288763.a, A181358.P12611122177985028869.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181358

/-! ## A181358.P14214219128697773707

`Δ[A107584(n+1)]`
-/

namespace A181358.P14214219128697773707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181358.P14214219128697773707

namespace A181358

/-- `Δ[A107584(n+1)]` -/
def P14214219128697773707.Spec : Prop :=
  ∀ n, P14214219128697773707.a n = A181358 n

end A181358

/-! ## A181358.P15571858948557875936

`Δ[A166754(2*n)]`
-/

namespace A181358.P15571858948557875936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166754 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181358.P15571858948557875936

namespace A181358

/-- `Δ[A166754(2*n)]` -/
def P15571858948557875936.Spec : Prop :=
  ∀ n, P15571858948557875936.a n = A181358 n

end A181358

/-! ## A181358.P8951470481463093671

`Δ[4*A024037(n)]`
-/

namespace A181358.P8951470481463093671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181358.P8951470481463093671

namespace A181358

/-- `Δ[4*A024037(n)]` -/
def P8951470481463093671.Spec : Prop :=
  ∀ n, P8951470481463093671.a n = A181358 n

end A181358

/-! ## A181358.P15546025058371121490

`Δ[A132732(Δ[n²])]`
-/

namespace A181358.P15546025058371121490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132732 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181358.P15546025058371121490

namespace A181358

/-- `Δ[A132732(Δ[n²])]` -/
def P15546025058371121490.Spec : Prop :=
  ∀ n, P15546025058371121490.a n = A181358 n

end A181358

/-! ## A181358.P10805028136943326643

`Δ[A145654(Δ[n²])]`
-/

namespace A181358.P10805028136943326643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145654 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181358.P10805028136943326643

namespace A181358

/-- `Δ[A145654(Δ[n²])]` -/
def P10805028136943326643.Spec : Prop :=
  ∀ n, P10805028136943326643.a n = A181358 n

end A181358

/-! ## A181358.P437721087847693293

`Δ[A183155(Δ[n²])]`
-/

namespace A181358.P437721087847693293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183155 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181358.P437721087847693293

namespace A181358

/-- `Δ[A183155(Δ[n²])]` -/
def P437721087847693293.Spec : Prop :=
  ∀ n, P437721087847693293.a n = A181358 n

end A181358

/-! ## A181358.P13617373110026103164

`A096045(n+1)-2`
-/

namespace A181358.P13617373110026103164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096045 (n + 1) - 2

end

end A181358.P13617373110026103164

namespace A181358

/-- `A096045(n+1)-2` -/
def P13617373110026103164.Spec : Prop :=
  ∀ n, P13617373110026103164.a n = A181358 n

end A181358

/-! ## A181358.P6007368238925057108

`A271017(n+1)+3`
-/

namespace A181358.P6007368238925057108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271017 (n + 1) + 3

end

end A181358.P6007368238925057108

namespace A181358

/-- `A271017(n+1)+3` -/
def P6007368238925057108.Spec : Prop :=
  ∀ n, P6007368238925057108.a n = A181358 n

end A181358

/-! ## A181358.P14590334248391134283

`A131128(2*(n+1))`
-/

namespace A181358.P14590334248391134283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 (2 * (n + 1))

end

end A181358.P14590334248391134283

namespace A181358

/-- `A131128(2*(n+1))` -/
def P14590334248391134283.Spec : Prop :=
  ∀ n, P14590334248391134283.a n = A181358 n

end A181358

/-! ## A181358.P9631433029652614344

`A198693(n+1)-3`
-/

namespace A181358.P9631433029652614344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 (n + 1) - 3

end

end A181358.P9631433029652614344

namespace A181358

/-- `A198693(n+1)-3` -/
def P9631433029652614344.Spec : Prop :=
  ∀ n, P9631433029652614344.a n = A181358 n

end A181358

/-! ## A181358.P18421489854693081695

`A164346(n+1)-4`
-/

namespace A181358.P18421489854693081695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 (n + 1) - 4

end

end A181358.P18421489854693081695

namespace A181358

/-- `A164346(n+1)-4` -/
def P18421489854693081695.Spec : Prop :=
  ∀ n, P18421489854693081695.a n = A181358 n

end A181358

/-!
# A181359: a(1)=1. After that, a(n) = a(n-1) XOR a(floor(sqrt(n))).

The programs for A181359, the canonical program `A181359.P15602091966244308938` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181359 has offset 1).

The definition of A181359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181359.P15602091966244308938

`A000035(a(n-1)+a(A000196(n+1)-1))` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181359

/-- `A000035(a(n-1)+a(A000196(n+1)-1))` -/
def P15602091966244308938.Spec : Prop :=
  ∀ n, P15602091966244308938.a n = A181359 (n + 1)

theorem P15602091966244308938.correct : P15602091966244308938.Spec := by
  intro n
  simp only [A181359, Nat.add_sub_cancel]

end A181359

/-! ## A181359.P2243618476856271964

`A097046(n+1)%2`
-/

namespace A181359.P2243618476856271964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097046 (n + 1)) 2

end

end A181359.P2243618476856271964

namespace A181359

/-- `A097046(n+1)%2` -/
def P2243618476856271964.Spec : Prop :=
  ∀ n, P2243618476856271964.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P7582077449352788814

`xor(a(A000196(n+1)-1), a(n-1))` with `a(0)=1`
-/

namespace A181359.P7582077449352788814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (A000196 (n + 1) - 1).toNat) (a (n - 1))

end

end A181359.P7582077449352788814

namespace A181359

/-- `xor(a(A000196(n+1)-1), a(n-1))` -/
def P7582077449352788814.Spec : Prop :=
  ∀ n, (P7582077449352788814.a n : ℤ) = A181359 (n + 1)

end A181359

/-! ## A181359.P9530391586775876420

`A277938((-1)^A097046(n+1)+1)`
-/

namespace A181359.P9530391586775876420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A097046 (n + 1) : ℤ) + 1)).toNat

end

end A181359.P9530391586775876420

namespace A181359

/-- `A277938((-1)^A097046(n+1)+1)` -/
def P9530391586775876420.Spec : Prop :=
  ∀ n, P9530391586775876420.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P4760646999943065009

`A000045(abs(a(n-1)-a(A000196(n+1)-1)))` with `a(0)=1`
-/

namespace A181359.P4760646999943065009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 |a (n - 1) - a (A000196 (n + 1) - 1).toNat|.toNat

end

end A181359.P4760646999943065009

namespace A181359

/-- `A000045(abs(a(n-1)-a(A000196(n+1)-1)))` -/
def P4760646999943065009.Spec : Prop :=
  ∀ n, P4760646999943065009.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P81567981694051906

`A000045((a(n-1)-a(A000196(n+1)-1))²)` with `a(0)=1`
-/

namespace A181359.P81567981694051906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 ((a (n - 1) - a (A000196 (n + 1) - 1).toNat) ^ 2).toNat

end

end A181359.P81567981694051906

namespace A181359

/-- `A000045((a(n-1)-a(A000196(n+1)-1))²)` -/
def P81567981694051906.Spec : Prop :=
  ∀ n, P81567981694051906.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P7990849944676537730

`A000035(A097046(n+1))`
-/

namespace A181359.P7990849944676537730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A097046 (n + 1)).toNat

end

end A181359.P7990849944676537730

namespace A181359

/-- `A000035(A097046(n+1))` -/
def P7990849944676537730.Spec : Prop :=
  ∀ n, P7990849944676537730.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P5506376829168490984

`and(A020737(n), A097046(n+1))`
-/

namespace A181359.P5506376829168490984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A097046 (n + 1))

end

end A181359.P5506376829168490984

namespace A181359

/-- `and(A020737(n), A097046(n+1))` -/
def P5506376829168490984.Spec : Prop :=
  ∀ n, P5506376829168490984.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P8550402433501271294

`and(A097046(n+1), A195744(n))`
-/

namespace A181359.P8550402433501271294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A195744 n)

end

end A181359.P8550402433501271294

namespace A181359

/-- `and(A097046(n+1), A195744(n))` -/
def P8550402433501271294.Spec : Prop :=
  ∀ n, P8550402433501271294.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P6601368510162815778

`and(A097046(n+1), A122041(n+1))`
-/

namespace A181359.P6601368510162815778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A122041 (n + 1))

end

end A181359.P6601368510162815778

namespace A181359

/-- `and(A097046(n+1), A122041(n+1))` -/
def P6601368510162815778.Spec : Prop :=
  ∀ n, P6601368510162815778.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P10168751611262224822

`and(A097046(n+1), A196657(n))`
-/

namespace A181359.P10168751611262224822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A196657 n)

end

end A181359.P10168751611262224822

namespace A181359

/-- `and(A097046(n+1), A196657(n))` -/
def P10168751611262224822.Spec : Prop :=
  ∀ n, P10168751611262224822.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P9159117549820661537

`and(A080267(n+1), A097046(n+1))`
-/

namespace A181359.P9159117549820661537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080267 (n + 1)) (A097046 (n + 1))

end

end A181359.P9159117549820661537

namespace A181359

/-- `and(A080267(n+1), A097046(n+1))` -/
def P9159117549820661537.Spec : Prop :=
  ∀ n, P9159117549820661537.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P9261281133659284122

`and(A048479(n), A097046(n+1))`
-/

namespace A181359.P9261281133659284122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A097046 (n + 1))

end

end A181359.P9261281133659284122

namespace A181359

/-- `and(A048479(n), A097046(n+1))` -/
def P9261281133659284122.Spec : Prop :=
  ∀ n, P9261281133659284122.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P9296172719223762683

`and(A027608(n), A097046(n+1))`
-/

namespace A181359.P9296172719223762683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A097046 (n + 1))

end

end A181359.P9296172719223762683

namespace A181359

/-- `and(A027608(n), A097046(n+1))` -/
def P9296172719223762683.Spec : Prop :=
  ∀ n, P9296172719223762683.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P13764169417251383663

`and(A097046(n+1), A211388(n))`
-/

namespace A181359.P13764169417251383663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A211388 n)

end

end A181359.P13764169417251383663

namespace A181359

/-- `and(A097046(n+1), A211388(n))` -/
def P13764169417251383663.Spec : Prop :=
  ∀ n, P13764169417251383663.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P2517942886277739338

`and(A097046(n+1), A209530(n+1))`
-/

namespace A181359.P2517942886277739338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A209530 (n + 1))

end

end A181359.P2517942886277739338

namespace A181359

/-- `and(A097046(n+1), A209530(n+1))` -/
def P2517942886277739338.Spec : Prop :=
  ∀ n, P2517942886277739338.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P14669342002259900720

`and(A097046(n+1), A189318(n))`
-/

namespace A181359.P14669342002259900720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A189318 n)

end

end A181359.P14669342002259900720

namespace A181359

/-- `and(A097046(n+1), A189318(n))` -/
def P14669342002259900720.Spec : Prop :=
  ∀ n, P14669342002259900720.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P6541892244658761593

`and(A097046(n+1), A204708(n+1))`
-/

namespace A181359.P6541892244658761593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A204708 (n + 1))

end

end A181359.P6541892244658761593

namespace A181359

/-- `and(A097046(n+1), A204708(n+1))` -/
def P6541892244658761593.Spec : Prop :=
  ∀ n, P6541892244658761593.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P2119091744697734593

`and(A097046(n+1), A113859(n))`
-/

namespace A181359.P2119091744697734593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A113859 n)

end

end A181359.P2119091744697734593

namespace A181359

/-- `and(A097046(n+1), A113859(n))` -/
def P2119091744697734593.Spec : Prop :=
  ∀ n, P2119091744697734593.a n = A181359 (n + 1)

end A181359

/-! ## A181359.P841730398705458125

`and(A097046(n+1), A172196(n))`
-/

namespace A181359.P841730398705458125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097046 (n + 1)) (A172196 n)

end

end A181359.P841730398705458125

namespace A181359

/-- `and(A097046(n+1), A172196(n))` -/
def P841730398705458125.Spec : Prop :=
  ∀ n, P841730398705458125.a n = A181359 (n + 1)

end A181359

/-!
# A181360: Number of forests of rooted trees containing n nodes not counting the root nodes.

The programs for A181360, there is no canonical definition to state claims against.
-/

/-! ## A181360.P2982106164014045413

`A033185(∑[4*n]+1)`
-/

namespace A181360.P2982106164014045413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181360.P2982106164014045413

/-! ## A181360.P9009675006983453587

`A106234(∑[4*n]+1)`
-/

namespace A181360.P9009675006983453587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181360.P9009675006983453587

/-! ## A181360.P6322170407471818706

`A033185(A001844(n))^floor(atan(n))`
-/

namespace A181360.P6322170407471818706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033185 (A001844 n).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A181360.P6322170407471818706

/-! ## A181360.P4960225725236781808

`A033185(A001844(n))*A290605(∑[n])`
-/

namespace A181360.P4960225725236781808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A001844 n).toNat * A290605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181360.P4960225725236781808

/-! ## A181360.P3968502374170680089

`A033185(A001844(n))%A050381(n+1)`
-/

namespace A181360.P3968502374170680089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033185 (A001844 n).toNat) (A050381 (n + 1))

end

end A181360.P3968502374170680089

/-! ## A181360.P2670884507878907595

`A033185(A001844(n))+and(n, A290623(n))`
-/

namespace A181360.P2670884507878907595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A001844 n).toNat + Int.land (n : ℤ) (A290623 n)

end

end A181360.P2670884507878907595

/-! ## A181360.P12327711139801884249

`gcd(A033185(A008619((2*n+1)²)), A151934(n))`
-/

namespace A181360.P12327711139801884249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033185 (A008619 ((2 * n + 1) ^ 2)).toNat) (A151934 n)

end

end A181360.P12327711139801884249

/-!
# A181361: Sum of cubes of digits of Fibonacci(n).

The programs for A181361, the canonical program `A181361.P13218759026643542293` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181361 has offset 0).

The definition of A181361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181361.P13218759026643542293

`A055012(A000045(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181361

/-- `A055012(A000045(n))` -/
def P13218759026643542293.Spec : Prop :=
  ∀ n, P13218759026643542293.a n = A181361 n

theorem P13218759026643542293.correct : P13218759026643542293.Spec := by
  intro n
  simp only [A181361]

end A181361

/-! ## A181361.P6413383109654966668

`∑{digits}[A000045(n), A000578(#)]`
-/

namespace A181361.P6413383109654966668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000578 x).sum

end

end A181361.P6413383109654966668

namespace A181361

/-- `∑{digits}[A000045(n), A000578(#)]` -/
def P6413383109654966668.Spec : Prop :=
  ∀ n, P6413383109654966668.a n = A181361 n

end A181361

/-! ## A181361.P17666293720867393274

`∑{digits}[A000045(n), A118880(#)]`
-/

namespace A181361.P17666293720867393274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A118880 x).sum

end

end A181361.P17666293720867393274

namespace A181361

/-- `∑{digits}[A000045(n), A118880(#)]` -/
def P17666293720867393274.Spec : Prop :=
  ∀ n, P17666293720867393274.a n = A181361 n

end A181361

/-! ## A181361.P13616646849031919618

`A055012(2-(∑[a(n-1)-(1-a(n-2))]-n))` with `a(0)=2, a(1)=0`
-/

namespace A181361.P13616646849031919618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))).toNat

end

end A181361.P13616646849031919618

namespace A181361

/-- `A055012(2-(∑[a(n-1)-(1-a(n-2))]-n))` -/
def P13616646849031919618.Spec : Prop :=
  ∀ n, P13616646849031919618.a n = A181361 n

end A181361

/-! ## A181361.P2875795426765735897

`A055012(A272918(n))`
-/

namespace A181361.P2875795426765735897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A272918 n).toNat

end

end A181361.P2875795426765735897

namespace A181361

/-- `A055012(A272918(n))` -/
def P2875795426765735897.Spec : Prop :=
  ∀ n, P2875795426765735897.a n = A181361 n

end A181361

/-!
# A181362: a(n) is the starting position of the n-th occurrence of n in the string 123456789101112131415161718192021... .

The programs for A181362, there is no canonical definition to state claims against.
-/

/-! ## A181362.P3040658348167720604

`A390926((n+1)²+n²)`
-/

namespace A181362.P3040658348167720604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390926 ((n + 1) ^ 2 + n ^ 2)

end

end A181362.P3040658348167720604

/-!
# A181363: 1 followed by the primes, interleaved recursively.

The programs for A181363, the canonical program `A181363.P272929501792705759` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181363 has offset 1).

The definition of A181363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181363.P272929501792705759

`A008578(A025480(n)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A181363

/-- `A008578(A025480(n)+1)` -/
def P272929501792705759.Spec : Prop :=
  ∀ n, P272929501792705759.a n = A181363 (n + 1)

theorem P272929501792705759.correct : P272929501792705759.Spec := by
  intro n
  simp only [A181363, Nat.add_sub_cancel]

end A181363

/-! ## A181363.P7197587621481763560

`A008578(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A181363.P7197587621481763560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A181363.P7197587621481763560

namespace A181363

/-- `A008578(floor(n/(xor(n, n+1)+1))+1)` -/
def P7197587621481763560.Spec : Prop :=
  ∀ n, P7197587621481763560.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P1516752399806845118

`A028815(floor(n/(xor(n, n+1)+1)))-1`
-/

namespace A181363.P1516752399806845118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat - 1

end

end A181363.P1516752399806845118

namespace A181363

/-- `A028815(floor(n/(xor(n, n+1)+1)))-1` -/
def P1516752399806845118.Spec : Prop :=
  ∀ n, P1516752399806845118.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P14347829937473503001

`A008578(A003602(n+1))`
-/

namespace A181363.P14347829937473503001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003602 (n + 1)).toNat

end

end A181363.P14347829937473503001

namespace A181363

/-- `A008578(A003602(n+1))` -/
def P14347829937473503001.Spec : Prop :=
  ∀ n, P14347829937473503001.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P14626548520160729579

`A130008(A000265(n+1))`
-/

namespace A181363.P14626548520160729579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A000265 (n + 1)).toNat

end

end A181363.P14626548520160729579

namespace A181363

/-- `A130008(A000265(n+1))` -/
def P14626548520160729579.Spec : Prop :=
  ∀ n, P14626548520160729579.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P17459677107007360128

`A073846(A322250(n+1))`
-/

namespace A181363.P17459677107007360128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A322250 (n + 1)).toNat

end

end A181363.P17459677107007360128

namespace A181363

/-- `A073846(A322250(n+1))` -/
def P17459677107007360128.Spec : Prop :=
  ∀ n, P17459677107007360128.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P10677852197103634162

`A158611(A025480(n)+2)`
-/

namespace A181363.P10677852197103634162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A025480 n + 2).toNat

end

end A181363.P10677852197103634162

namespace A181363

/-- `A158611(A025480(n)+2)` -/
def P10677852197103634162.Spec : Prop :=
  ∀ n, P10677852197103634162.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P5296902294475927716

`A158611(A103391(n+2))`
-/

namespace A181363.P5296902294475927716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A103391 (n + 2)).toNat

end

end A181363.P5296902294475927716

namespace A181363

/-- `A158611(A103391(n+2))` -/
def P5296902294475927716.Spec : Prop :=
  ∀ n, P5296902294475927716.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P4636260225111278727

`A001747(A025480(n)+1)/2`
-/

namespace A181363.P4636260225111278727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A025480 n + 1).toNat : ℚ) / 2

end

end A181363.P4636260225111278727

namespace A181363

/-- `A001747(A025480(n)+1)/2` -/
def P4636260225111278727.Spec : Prop :=
  ∀ n, P4636260225111278727.a n = (A181363 (n + 1) : ℚ)

end A181363

/-! ## A181363.P14467354352355464059

`A008578(ceil(A000265(n+1)/2))`
-/

namespace A181363.P14467354352355464059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ⌈(A000265 (n + 1) : ℚ) / 2⌉.toNat

end

end A181363.P14467354352355464059

namespace A181363

/-- `A008578(ceil(A000265(n+1)/2))` -/
def P14467354352355464059.Spec : Prop :=
  ∀ n, P14467354352355464059.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P6733311562267191971

`A008578((A000265(n+1)+1)/2)`
-/

namespace A181363.P6733311562267191971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A181363.P6733311562267191971

namespace A181363

/-- `A008578((A000265(n+1)+1)/2)` -/
def P6733311562267191971.Spec : Prop :=
  ∀ n, P6733311562267191971.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P10487988482626295991

`A158611((A000265(n+1)+1)/2+1)`
-/

namespace A181363.P10487988482626295991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2 + 1)).toNat

end

end A181363.P10487988482626295991

namespace A181363

/-- `A158611((A000265(n+1)+1)/2+1)` -/
def P10487988482626295991.Spec : Prop :=
  ∀ n, P10487988482626295991.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P7834218506960423412

`A008578(A065033((n+1)/and(n+1, -(n+1))))`
-/

namespace A181363.P7834218506960423412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A065033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A181363.P7834218506960423412

namespace A181363

/-- `A008578(A065033((n+1)/and(n+1, -(n+1))))` -/
def P7834218506960423412.Spec : Prop :=
  ∀ n, P7834218506960423412.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P16587138853456073552

`A008578(A325563((n+1)/and(n+1, -(n+1))+1))`
-/

namespace A181363.P16587138853456073552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A325563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1)).toNat).toNat

end

end A181363.P16587138853456073552

namespace A181363

/-- `A008578(A325563((n+1)/and(n+1, -(n+1))+1))` -/
def P16587138853456073552.Spec : Prop :=
  ∀ n, P16587138853456073552.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P8085494263922523238

`A008578(A325641((n+1)/and(n+1, -(n+1))+1))`
-/

namespace A181363.P8085494263922523238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A325641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1)).toNat).toNat

end

end A181363.P8085494263922523238

namespace A181363

/-- `A008578(A325641((n+1)/and(n+1, -(n+1))+1))` -/
def P8085494263922523238.Spec : Prop :=
  ∀ n, P8085494263922523238.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P15631406865314090900

`A008578(A048673(A064989(n+1)))`
-/

namespace A181363.P15631406865314090900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A048673 (A064989 (n + 1)).toNat).toNat

end

end A181363.P15631406865314090900

namespace A181363

/-- `A008578(A048673(A064989(n+1)))` -/
def P15631406865314090900.Spec : Prop :=
  ∀ n, P15631406865314090900.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P4678920386999045729

`A064989(A382129(n+1))`
-/

namespace A181363.P4678920386999045729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A382129 (n + 1)).toNat

end

end A181363.P4678920386999045729

namespace A181363

/-- `A064989(A382129(n+1))` -/
def P4678920386999045729.Spec : Prop :=
  ∀ n, P4678920386999045729.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P13663031639457551650

`A091203(A305422(A014580(A305423(A305422(n+1)))))`
-/

namespace A181363.P13663031639457551650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A305422 (A014580 (A305423 (A305422 (n + 1)).toNat).toNat).toNat).toNat

end

end A181363.P13663031639457551650

namespace A181363

/-- `A091203(A305422(A014580(A305423(A305422(n+1)))))` -/
def P13663031639457551650.Spec : Prop :=
  ∀ n, P13663031639457551650.a n = A181363 (n + 1)

end A181363

/-! ## A181363.P13045121619942664275

`A064989(A000040(A005941(A064989(A005940(n+1)))))`
-/

namespace A181363.P13045121619942664275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000040 (A005941 (A064989 (A005940 (n + 1)).toNat).toNat).toNat).toNat

end

end A181363.P13045121619942664275

namespace A181363

/-- `A064989(A000040(A005941(A064989(A005940(n+1)))))` -/
def P13045121619942664275.Spec : Prop :=
  ∀ n, P13045121619942664275.a n = A181363 (n + 1)

end A181363

/-!
# A181364: Fibonacci numbers whose digits, when squared, sum to a prime.

The programs for A181364, there is no canonical definition to state claims against.
-/

/-! ## A181364.P3650437553360905561

`A000045(A178838(n+1))`
-/

namespace A181364.P3650437553360905561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A178838 (n + 1)).toNat

end

end A181364.P3650437553360905561

/-! ## A181364.P11015671698927570754

`A212804(A178838(n+1)+1)`
-/

namespace A181364.P11015671698927570754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A178838 (n + 1) + 1).toNat

end

end A181364.P11015671698927570754

/-! ## A181364.P10622749027542535925

`A020695(A178838(n+1)-3)`
-/

namespace A181364.P10622749027542535925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A178838 (n + 1) - 3).toNat

end

end A181364.P10622749027542535925

/-! ## A181364.P9255485343573833542

`A103609(2*A178838(n+1))`
-/

namespace A181364.P9255485343573833542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A178838 (n + 1)).toNat

end

end A181364.P9255485343573833542

/-! ## A181364.P8905979453452915259

`∑{d}[A178838(n+1), A007436(#)]`
-/

namespace A181364.P8905979453452915259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A181364.P8905979453452915259

/-! ## A181364.P4805234637171959406

`A103609(A178838(n+1)+A178838(n+1)+1)`
-/

namespace A181364.P4805234637171959406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A178838 (n + 1) + (A178838 (n + 1) + 1)).toNat

end

end A181364.P4805234637171959406

/-!
# A181366: Least entry in a 2-composition of n, summed over all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181366, there is no canonical definition to state claims against.
-/

/-! ## A181366.P13302032857638275650

`A185283(A026627(n))-A103128(A109070(n))`
-/

namespace A181366.P13302032857638275650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A026627 n).toNat - A103128 (A109070 n).toNat

end

end A181366.P13302032857638275650

/-! ## A181366.P792644859685461241

`A055086(Δ[A219231(n)])`
-/

namespace A181366.P792644859685461241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (n + 1) - f1 n).toNat

end

end A181366.P792644859685461241

/-! ## A181366.P2329810699049976422

`A235963(A048121(n+2))`
-/

namespace A181366.P2329810699049976422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A048121 (n + 2)).toNat

end

end A181366.P2329810699049976422

/-! ## A181366.P7890724406227589272

`∑[A000196(∑[A145138(n)])]`
-/

namespace A181366.P7890724406227589272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181366.P7890724406227589272

/-! ## A181366.P4949386848066580785

`∑[A241065(∑[A036710(n)])]`
-/

namespace A181366.P4949386848066580785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241065 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181366.P4949386848066580785

/-!
# A181367: Number of 2-compositions of n containing at least one 0 entry. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181367, the canonical program `A181367.P11083133926418273287` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181367 has offset 1).

The definition of A181367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181367.P6985004961151342337

`record[A181365(n+1)]`
-/

namespace A181367.P6985004961151342337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181367.P6985004961151342337

namespace A181367

/-- `record[A181365(n+1)]` -/
def P6985004961151342337.Spec : Prop :=
  ∀ n, P6985004961151342337.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P8745842484097041123

`A181365(∑[∑[char[2*n]]])`
-/

namespace A181367.P8745842484097041123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181367.P8745842484097041123

namespace A181367

/-- `A181365(∑[∑[char[2*n]]])` -/
def P8745842484097041123.Spec : Prop :=
  ∀ n, P8745842484097041123.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P11083133926418273287

`Δ[A007052(n)]-floor(2^(n-1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181367

/-- `Δ[A007052(n)]-floor(2^(n-1))` -/
def P11083133926418273287.Spec : Prop :=
  ∀ n, P11083133926418273287.a n = A181367 (n + 1)

theorem P11083133926418273287.correct : P11083133926418273287.Spec := by
  intro n
  simp only [A181367, Nat.add_sub_cancel]

end A181367

/-! ## A181367.P7121094485485401649

`ceil(A094806(n+2)+2^(n-1))`
-/

namespace A181367.P7121094485485401649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094806 (n + 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A181367.P7121094485485401649

namespace A181367

/-- `ceil(A094806(n+2)+2^(n-1))` -/
def P7121094485485401649.Spec : Prop :=
  ∀ n, P7121094485485401649.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P8781333046216334391

`∑[A094821(n+1)]+ceil(2^(n-1))`
-/

namespace A181367.P8781333046216334391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A181367.P8781333046216334391

namespace A181367

/-- `∑[A094821(n+1)]+ceil(2^(n-1))` -/
def P8781333046216334391.Spec : Prop :=
  ∀ n, P8781333046216334391.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P15417707472985757323

`A020727(n)-A131577(n)`
-/

namespace A181367.P15417707472985757323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - A131577 n

end

end A181367.P15417707472985757323

namespace A181367

/-- `A020727(n)-A131577(n)` -/
def P15417707472985757323.Spec : Prop :=
  ∀ n, P15417707472985757323.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P11191660091517915415

`A020727(n)-Δ[A011782(n)]`
-/

namespace A181367.P11191660091517915415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - (f1 (n + 1) - f1 n)

end

end A181367.P11191660091517915415

namespace A181367

/-- `A020727(n)-Δ[A011782(n)]` -/
def P11191660091517915415.Spec : Prop :=
  ∀ n, P11191660091517915415.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P4926969923405176551

`A094821(n+1)+A003480(n)`
-/

namespace A181367.P4926969923405176551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 1) + A003480 n

end

end A181367.P4926969923405176551

namespace A181367

/-- `A094821(n+1)+A003480(n)` -/
def P4926969923405176551.Spec : Prop :=
  ∀ n, P4926969923405176551.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P14651153813620435035

`A094806(n+2)+A011782(n)`
-/

namespace A181367.P14651153813620435035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094806 (n + 2) + A011782 n

end

end A181367.P14651153813620435035

namespace A181367

/-- `A094806(n+2)+A011782(n)` -/
def P14651153813620435035.Spec : Prop :=
  ∀ n, P14651153813620435035.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P848348515247698568

`A003480(n+1)-A131577(n)`
-/

namespace A181367.P848348515247698568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) - A131577 n

end

end A181367.P848348515247698568

namespace A181367

/-- `A003480(n+1)-A131577(n)` -/
def P848348515247698568.Spec : Prop :=
  ∀ n, P848348515247698568.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P15997721146940835104

`Δ[∑[A003480(n)]-A011782(n)]`
-/

namespace A181367.P15997721146940835104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181367.P15997721146940835104

namespace A181367

/-- `Δ[∑[A003480(n)]-A011782(n)]` -/
def P15997721146940835104.Spec : Prop :=
  ∀ n, P15997721146940835104.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P16102672751682073847

`Δ[Δ[A204089(n)]-A131577(n)]`
-/

namespace A181367.P16102672751682073847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181367.P16102672751682073847

namespace A181367

/-- `Δ[Δ[A204089(n)]-A131577(n)]` -/
def P16102672751682073847.Spec : Prop :=
  ∀ n, P16102672751682073847.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P6578152873154931748

`A003480(n+1)+Δ[A122958(n)]`
-/

namespace A181367.P6578152873154931748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) + (f1 (n + 1) - f1 n)

end

end A181367.P6578152873154931748

namespace A181367

/-- `A003480(n+1)+Δ[A122958(n)]` -/
def P6578152873154931748.Spec : Prop :=
  ∀ n, P6578152873154931748.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P6726115805260247924

`A003480(n+1)-Δ[A011782(n)]`
-/

namespace A181367.P6726115805260247924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) - (f1 (n + 1) - f1 n)

end

end A181367.P6726115805260247924

namespace A181367

/-- `A003480(n+1)-Δ[A011782(n)]` -/
def P6726115805260247924.Spec : Prop :=
  ∀ n, P6726115805260247924.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P16454786852622535821

`A003480(n+1)-A034008(n+1)`
-/

namespace A181367.P16454786852622535821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) - A034008 (n + 1)

end

end A181367.P16454786852622535821

namespace A181367

/-- `A003480(n+1)-A034008(n+1)` -/
def P16454786852622535821.Spec : Prop :=
  ∀ n, P16454786852622535821.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P13350302618113085954

`A003480(n+1)+A000007(n)-A011782(n)`
-/

namespace A181367.P13350302618113085954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) + (A000007 n - A011782 n)

end

end A181367.P13350302618113085954

namespace A181367

/-- `A003480(n+1)+A000007(n)-A011782(n)` -/
def P13350302618113085954.Spec : Prop :=
  ∀ n, P13350302618113085954.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P13659698872552434053

`A003480(n+1)+A011782(n)-A011782(n+1)`
-/

namespace A181367.P13659698872552434053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) + (A011782 n - A011782 (n + 1))

end

end A181367.P13659698872552434053

namespace A181367

/-- `A003480(n+1)+A011782(n)-A011782(n+1)` -/
def P13659698872552434053.Spec : Prop :=
  ∀ n, P13659698872552434053.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P6686013384209019429

`A006012(n+1)+A003480(n)-A024175(n+1)`
-/

namespace A181367.P6686013384209019429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + (A003480 n - A024175 (n + 1))

end

end A181367.P6686013384209019429

namespace A181367

/-- `A006012(n+1)+A003480(n)-A024175(n+1)` -/
def P6686013384209019429.Spec : Prop :=
  ∀ n, P6686013384209019429.a n = A181367 (n + 1)

end A181367

/-! ## A181367.P4528680850467125475

`A003480(n+1)+A003480(n)-A094803(n+1)`
-/

namespace A181367.P4528680850467125475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) + (A003480 n - A094803 (n + 1))

end

end A181367.P4528680850467125475

namespace A181367

/-- `A003480(n+1)+A003480(n)-A094803(n+1)` -/
def P4528680850467125475.Spec : Prop :=
  ∀ n, P4528680850467125475.a n = A181367 (n + 1)

end A181367

/-!
# A181368: Triangle read by rows: T(n,k) is the number of L-convex polyominoes of semiperimeter n, having k maximal rectangles (n >= 2, 1 <= k <= floor(n/2)). An L-convex polyomino is a convex polyomino in which any two cells can be connected by a path internal to the polyomino and which has at most 1 change of direction (i.e., one of the four orientations of the letter L). A maximal rectangle in an L-convex polyomino P is a rectangle included in P that is maximal with respect to inclusion.

The programs for A181368, there is no canonical definition to state claims against.
-/

/-! ## A181368.P16278468125073361954

`A210753(2*n+1-floor(n^(1/2)))`
-/

namespace A181368.P16278468125073361954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210753 ((2 * n + 1 : ℤ) - ⌊(n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋).toNat

end

end A181368.P16278468125073361954

/-!
# A181369: Number of maximal rectangles in all L-convex polyominoes of semiperimeter n. An L-convex polyomino is a convex polyomino where any two cells can be connected by a path internal to the polyomino and which has at most 1 change of direction (i.e., one of the four orientations of the letter L). A maximal rectangle in an L-convex polyomino P is a rectangle included in P that is maximal with respect to inclusion.

The programs for A181369, there is no canonical definition to state claims against.
-/

/-! ## A181369.P2944038542574888801

`A023443(A003500(n))-A192955(n)`
-/

namespace A181369.P2944038542574888801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003500 n).toNat - A192955 n

end

end A181369.P2944038542574888801

/-! ## A181369.P12086901307146133407

`A214392(A256530(n)+A171477(n))`
-/

namespace A181369.P12086901307146133407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A256530 n + A171477 n).toNat

end

end A181369.P12086901307146133407

/-!
# A181370: Square array read by antidiagonals: T(m,n) is the number of L-convex polyominoes with m rows and n columns.

The programs for A181370, there is no canonical definition to state claims against.
-/

/-! ## A181370.P11340249228321945975

`A326676(A132789(n+1))+A008459(n)`
-/

namespace A181370.P11340249228321945975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326676 (A132789 (n + 1)).toNat + A008459 n

end

end A181370.P11340249228321945975

/-! ## A181370.P10149153567388190682

`A132881(2^A167172(n))+A008459(n)`
-/

namespace A181370.P10149153567388190682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A167172 n : ℤ))).toNat + A008459 n

end

end A181370.P10149153567388190682

/-! ## A181370.P12695952797816073147

`A326676(A132789(n+1))+A007318(n)²`
-/

namespace A181370.P12695952797816073147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326676 (A132789 (n + 1)).toNat + A007318 n ^ 2

end

end A181370.P12695952797816073147

/-! ## A181370.P6069126715242947136

`A076437(A001263(n+1))+2*A101164(n)`
-/

namespace A181370.P6069126715242947136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A001263 (n + 1)).toNat + 2 * A101164 n

end

end A181370.P6069126715242947136

/-! ## A181370.P6760151981214846866

`A076437(A001263(n+1))+A005843(A101164(n))`
-/

namespace A181370.P6760151981214846866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A001263 (n + 1)).toNat + A005843 (A101164 n).toNat

end

end A181370.P6760151981214846866

/-!
# A181371: Triangle read by rows: T(n,k) is the number of ternary words (i.e., finite sequences of 0's, 1's and 2's) of length n having k occurrences of 01's (0 <= k <= floor(n/2)).

The programs for A181371, there is no canonical definition to state claims against.
-/

/-! ## A181371.P3047154225030384075

`A125662(A091018(n))`
-/

namespace A181371.P3047154225030384075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 (A091018 n).toNat

end

end A181371.P3047154225030384075

/-! ## A181371.P7865784026122284981

`A125662(A056536(n+1)-1)`
-/

namespace A181371.P7865784026122284981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 (A056536 (n + 1) - 1).toNat

end

end A181371.P7865784026122284981

/-! ## A181371.P13714292952512299660

`lcm(A020985(n), A207815(A091018(n)))`
-/

namespace A181371.P13714292952512299660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207815 (A091018 n).toNat)

end

end A181371.P13714292952512299660

/-! ## A181371.P2328067078802741401

`lcm(-A207815(A091018(n)), A097807(n))`
-/

namespace A181371.P2328067078802741401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A207815 (A091018 n).toNat) (A097807 n)

end

end A181371.P2328067078802741401

/-! ## A181371.P13566316545930516941

`A238941(comp[n²]+n)`
-/

namespace A181371.P13566316545930516941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238941 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A181371.P13566316545930516941

/-!
# A181373: Least m>0 such that prime(n) divides S(m)=A007908(m)=123...m and all numbers obtained by cyclic permutations of its digits; 0 if no such m exists.

The programs for A181373, there is no canonical definition to state claims against.
-/

/-! ## A181373.P1421450975326946231

`and(A007089(3*n), A240167(A230951(n)))`
-/

namespace A181373.P1421450975326946231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007089 (3 * n)) (A240167 (A230951 n).toNat)

end

end A181373.P1421450975326946231

/-! ## A181373.P8338016759686847295

`and(A007089(3*n), A016861(A339533(2*(n+1))))`
-/

namespace A181373.P8338016759686847295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007089 (3 * n)) (A016861 (A339533 (2 * (n + 1))).toNat)

end

end A181373.P8338016759686847295

/-!
# A181375: Total number of positive integers below 10^n requiring 2 positive cubes in their representation as sum of cubes.

The programs for A181375, there is no canonical definition to state claims against.
-/

/-! ## A181375.P2282987253930838068

`∑[A181376(n+1)]`
-/

namespace A181375.P2282987253930838068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181375.P2282987253930838068

/-! ## A181375.P16060080358785391413

`∑[record[A181376(A000174(n))]]`
-/

namespace A181375.P16060080358785391413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181376 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181375.P16060080358785391413

/-! ## A181375.P1407793054673303935

`∑[record[A181376(A020986(n))]]`
-/

namespace A181375.P1407793054673303935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181376 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181375.P1407793054673303935

/-! ## A181375.P4999200826632872350

`∑[record[A181376(A033930(n))]]`
-/

namespace A181375.P4999200826632872350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181376 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181375.P4999200826632872350

/-! ## A181375.P17684577051916942193

`∑[record[A181376(A065648(n))]]`
-/

namespace A181375.P17684577051916942193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181376 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181375.P17684577051916942193

/-!
# A181376: Total number of n-digit numbers requiring 2 positive cubes in their representation as a sum of cubes.

The programs for A181376, there is no canonical definition to state claims against.
-/

/-! ## A181376.P5616121560291082316

`Δ[∑{e}[2*a(n-1), A181375(#)]]` with `a(0)=1`
-/

namespace A181376.P5616121560291082316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A181375 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181376.P5616121560291082316

/-! ## A181376.P2832098260173578696

`A000038(n)+Δ[A181375(A028310(n))]`
-/

namespace A181376.P2832098260173578696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181375 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A181376.P2832098260173578696

/-! ## A181376.P1336752663618217281

`Δ[A057427(n)*A181375(A028310(n))]`
-/

namespace A181376.P1336752663618217281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A181375 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181376.P1336752663618217281

/-! ## A181376.P8899141410417984010

`Δ[A181375(A028310(n))%A093137(n)]`
-/

namespace A181376.P8899141410417984010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181375 (A028310 n).toNat) (A093137 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181376.P8899141410417984010

/-! ## A181376.P9452200485281758750

`A181375(n+1)+A000038(n)-A181375(A028310(n))`
-/

namespace A181376.P9452200485281758750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181375 (n + 1) + (A000038 n - A181375 (A028310 n).toNat)

end

end A181376.P9452200485281758750

/-!
# A181377: Total number of positive integers below 10^n requiring 3 positive cubes in their representation as sum of cubes.

The programs for A181377, there is no canonical definition to state claims against.
-/

/-! ## A181377.P6088378538892740541

`∑[A181378(n+1)]`
-/

namespace A181377.P6088378538892740541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181377.P6088378538892740541

/-! ## A181377.P13377213295066596203

`∑[record[A181378(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A181377.P13377213295066596203
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181378 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181377.P13377213295066596203

/-! ## A181377.P15402361593590982972

`∑[record[A181378(A000121(n))]]`
-/

namespace A181377.P15402361593590982972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181378 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181377.P15402361593590982972

/-! ## A181377.P18131588607292694551

`∑[record[A181378(A020986(n))]]`
-/

namespace A181377.P18131588607292694551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181378 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181377.P18131588607292694551

/-! ## A181377.P15833827560420938177

`∑[record[A181378(A033930(n))]]`
-/

namespace A181377.P15833827560420938177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181378 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181377.P15833827560420938177

/-!
# A181379: Total number of positive integers below 10^n requiring 4 positive cubes in their representation as sum of cubes.

The programs for A181379, there is no canonical definition to state claims against.
-/

/-! ## A181379.P18304787222303030938

`∑[A181380(n+1)]`
-/

namespace A181379.P18304787222303030938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181379.P18304787222303030938

/-! ## A181379.P2801768776179369241

`∑[record[A181380(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A181379.P2801768776179369241
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181380 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181379.P2801768776179369241

/-! ## A181379.P4336684669687656699

`∑[record[A181380(A000174(n))]]`
-/

namespace A181379.P4336684669687656699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181380 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181379.P4336684669687656699

/-! ## A181379.P5901672481346889473

`∑[record[A181380(A020986(n))]]`
-/

namespace A181379.P5901672481346889473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181380 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181379.P5901672481346889473

/-! ## A181379.P12070835964954288883

`∑[record[A181380(A033930(n))]]`
-/

namespace A181379.P12070835964954288883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181380 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181379.P12070835964954288883

/-!
# A181381: Total number of positive integers below 10^n requiring 5 positive cubes in their representation as sum of cubes.

The programs for A181381, there is no canonical definition to state claims against.
-/

/-! ## A181381.P12018386108250853824

`∑[A181384(n+1)]`
-/

namespace A181381.P12018386108250853824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181381.P12018386108250853824

/-! ## A181381.P781053947840618209

`∑[record[A181384(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A181381.P781053947840618209
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181384 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181381.P781053947840618209

/-! ## A181381.P15954207906547164388

`∑[record[A181384(A000119(n))]]`
-/

namespace A181381.P15954207906547164388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181384 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181381.P15954207906547164388

/-! ## A181381.P6552937156959682001

`∑[record[A181384(A020986(n))]]`
-/

namespace A181381.P6552937156959682001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181384 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181381.P6552937156959682001

/-! ## A181381.P10609533414845543584

`∑[record[A181384(A033930(n))]]`
-/

namespace A181381.P10609533414845543584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181384 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181381.P10609533414845543584

/-!
# A181382: The (10^n)-th lucky number.

The programs for A181382, there is no canonical definition to state claims against.
-/

/-! ## A181382.P10379548413519627897

`A000959(10^n)`
-/

namespace A181382.P10379548413519627897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (10 ^ n)

end

end A181382.P10379548413519627897

/-! ## A181382.P9168947299747301779

`record[A000959(A038303(n))]`
-/

namespace A181382.P9168947299747301779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A038303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181382.P9168947299747301779

/-!
# A181383: The (2^n)-th lucky number.

The programs for A181383, there is no canonical definition to state claims against.
-/

/-! ## A181383.P17224911364682255379

`A000959(2^n)`
-/

namespace A181383.P17224911364682255379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 ^ n)

end

end A181383.P17224911364682255379

/-! ## A181383.P404137764480548344

`record[A000959(A029930(n))]`
-/

namespace A181383.P404137764480548344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181383.P404137764480548344

/-! ## A181383.P15055073593960689410

`record[A000959(A048483(n))]`
-/

namespace A181383.P15055073593960689410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181383.P15055073593960689410

/-! ## A181383.P10497740694522094615

`record[A000959(A055248(n))]`
-/

namespace A181383.P10497740694522094615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181383.P10497740694522094615

/-! ## A181383.P463663143304038771

`record[A000959(A059268(n))]`
-/

namespace A181383.P463663143304038771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181383.P463663143304038771

/-!
# A181384: Total number of n-digit numbers requiring 5 positive cubes in their representation as sum of cubes.

The programs for A181384, there is no canonical definition to state claims against.
-/

/-! ## A181384.P15902491947096730031

`Δ[A181381(a(floor(n/10))+n)]` with `a(0)=0`
-/

namespace A181384.P15902491947096730031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A181381 (f1 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181384.P15902491947096730031

/-!
# A181385: Maximal number that can be obtained by reversing n in an integer base.

The programs for A181385, the canonical program `A181385.P1040938623917572723` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181385 has offset 0).

The definition of A181385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181385.P1040938623917572723

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=7, a(6)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181385

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P1040938623917572723.Spec : Prop :=
  ∀ n, P1040938623917572723.a n = A181385 n

theorem P1040938623917572723.correct : P1040938623917572723.Spec := by
  intro n
  simp only [A181385]

end A181385

/-! ## A181385.P6198497099299462800

`ceil(char[2]+(n/2)²)`
-/

namespace A181385.P6198497099299462800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉

end

end A181385.P6198497099299462800

namespace A181385

/-- `ceil(char[2]+(n/2)²)` -/
def P6198497099299462800.Spec : Prop :=
  ∀ n, P6198497099299462800.a n = A181385 n

end A181385

/-! ## A181385.P4611834566977553904

`char[2]+floor((n/2)²)+n%2`
-/

namespace A181385.P4611834566977553904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (⌊((n : ℚ) / 2) ^ 2⌋ + ((n % 2 : ℕ) : ℤ))

end

end A181385.P4611834566977553904

namespace A181385

/-- `char[2]+floor((n/2)²)+n%2` -/
def P4611834566977553904.Spec : Prop :=
  ∀ n, P4611834566977553904.a n = A181385 n

end A181385

/-! ## A181385.P15135717353087135308

`∑[a(n-2)+1]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A181385.P15135717353087135308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181385.P15135717353087135308

namespace A181385

/-- `∑[a(n-2)+1]` -/
def P15135717353087135308.Spec : Prop :=
  ∀ n, (P15135717353087135308.a n : ℤ) = A181385 n

end A181385

/-! ## A181385.P7885004901421399888

`n-1+a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A181385.P7885004901421399888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  (n : ℤ) - 1 + a (n - 2)

end

end A181385.P7885004901421399888

namespace A181385

/-- `n-1+a(n-2)` -/
def P7885004901421399888.Spec : Prop :=
  ∀ n, P7885004901421399888.a n = A181385 n

end A181385

/-! ## A181385.P14747053619999497343

`n-(1-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A181385.P14747053619999497343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  (n : ℤ) - (1 - a (n - 2))

end

end A181385.P14747053619999497343

namespace A181385

/-- `n-(1-a(n-2))` -/
def P14747053619999497343.Spec : Prop :=
  ∀ n, P14747053619999497343.a n = A181385 n

end A181385

/-! ## A181385.P14100988605420189604

`char[2]+round(or(2, (n+1)*(n-1))/4)`
-/

namespace A181385.P14100988605420189604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Int.lor 2 ((n + 1 : ℤ) * ((n : ℤ) - 1)) : ℚ) / 4)

end

end A181385.P14100988605420189604

namespace A181385

/-- `char[2]+round(or(2, (n+1)*(n-1))/4)` -/
def P14100988605420189604.Spec : Prop :=
  ∀ n, P14100988605420189604.a n = A181385 n

end A181385

/-! ## A181385.P7933596005682764327

`round(A030978(n)/2)`
-/

namespace A181385.P7933596005682764327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030978 n : ℚ) / 2)

end

end A181385.P7933596005682764327

namespace A181385

/-- `round(A030978(n)/2)` -/
def P7933596005682764327.Spec : Prop :=
  ∀ n, P7933596005682764327.a n = A181385 n

end A181385

/-! ## A181385.P7831792868950102170

`A004652(n)+char[2]`
-/

namespace A181385.P7831792868950102170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181385.P7831792868950102170

namespace A181385

/-- `A004652(n)+char[2]` -/
def P7831792868950102170.Spec : Prop :=
  ∀ n, P7831792868950102170.a n = A181385 n

end A181385

/-! ## A181385.P978088583243120785

`round((A000982(n)+char[2])/2)`
-/

namespace A181385.P978088583243120785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000982 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / 2)

end

end A181385.P978088583243120785

namespace A181385

/-- `round((A000982(n)+char[2])/2)` -/
def P978088583243120785.Spec : Prop :=
  ∀ n, P978088583243120785.a n = A181385 n

end A181385

/-! ## A181385.P18427749467612142930

`∪[A035106(n+1)+1, n²]`
-/

namespace A181385.P18427749467612142930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A181385.P18427749467612142930

namespace A181385

/-- `∪[A035106(n+1)+1, n²]` -/
def P18427749467612142930.Spec : Prop :=
  ∀ n, (P18427749467612142930.a n : ℤ) = A181385 n

end A181385

/-! ## A181385.P12862425413953657901

`∪[A064796(n+1)+1, n²]`
-/

namespace A181385.P12862425413953657901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A181385.P12862425413953657901

namespace A181385

/-- `∪[A064796(n+1)+1, n²]` -/
def P12862425413953657901.Spec : Prop :=
  ∀ n, (P12862425413953657901.a n : ℤ) = A181385 n

end A181385

/-! ## A181385.P2757896051529054136

`A185012(n)+A004652(n)`
-/

namespace A181385.P2757896051529054136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + A004652 n

end

end A181385.P2757896051529054136

namespace A181385

/-- `A185012(n)+A004652(n)` -/
def P2757896051529054136.Spec : Prop :=
  ∀ n, P2757896051529054136.a n = A181385 n

end A181385

/-! ## A181385.P3178868386713591030

`A033638(n)-A267043(n)`
-/

namespace A181385.P3178868386713591030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A267043 n

end

end A181385.P3178868386713591030

namespace A181385

/-- `A033638(n)-A267043(n)` -/
def P3178868386713591030.Spec : Prop :=
  ∀ n, P3178868386713591030.a n = A181385 n

end A181385

/-! ## A181385.P8097331922005684585

`A004652(n)*A294619(n)`
-/

namespace A181385.P8097331922005684585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n * A294619 n

end

end A181385.P8097331922005684585

namespace A181385

/-- `A004652(n)*A294619(n)` -/
def P8097331922005684585.Spec : Prop :=
  ∀ n, P8097331922005684585.a n = A181385 n

end A181385

/-! ## A181385.P364771256593096052

`A004652(n)*A329684(n)`
-/

namespace A181385.P364771256593096052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n * A329684 n

end

end A181385.P364771256593096052

namespace A181385

/-- `A004652(n)*A329684(n)` -/
def P364771256593096052.Spec : Prop :=
  ∀ n, P364771256593096052.a n = A181385 n

end A181385

/-! ## A181385.P12918714455468096865

`A182531(n+1)-A004526(n)`
-/

namespace A181385.P12918714455468096865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1) - A004526 n

end

end A181385.P12918714455468096865

namespace A181385

/-- `A182531(n+1)-A004526(n)` -/
def P12918714455468096865.Spec : Prop :=
  ∀ n, P12918714455468096865.a n = A181385 n

end A181385

/-! ## A181385.P11356621307407746521

`A397990(n)-A186783(n+1)`
-/

namespace A181385.P11356621307407746521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n - A186783 (n + 1)

end

end A181385.P11356621307407746521

namespace A181385

/-- `A397990(n)-A186783(n+1)` -/
def P11356621307407746521.Spec : Prop :=
  ∀ n, P11356621307407746521.a n = A181385 n

end A181385

/-! ## A181385.P8626256910948911588

`char[2]+A000982(n)-A002620(n)`
-/

namespace A181385.P8626256910948911588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A000982 n - A002620 n)

end

end A181385.P8626256910948911588

namespace A181385

/-- `char[2]+A000982(n)-A002620(n)` -/
def P8626256910948911588.Spec : Prop :=
  ∀ n, P8626256910948911588.a n = A181385 n

end A181385

/-! ## A181385.P2069181839272798213

`A182531(n+1)+1-A008619(n)`
-/

namespace A181385.P2069181839272798213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1) + (1 - A008619 n)

end

end A181385.P2069181839272798213

namespace A181385

/-- `A182531(n+1)+1-A008619(n)` -/
def P2069181839272798213.Spec : Prop :=
  ∀ n, P2069181839272798213.a n = A181385 n

end A181385

/-!
# A181388: a(n) = Sum_{k=1..n} 2^T(k-1), where T = A000217 are the triangular numbers 0, 1, 3, 6, 10, ... . For n=0 we have the empty sum equal to 0.

The programs for A181388, the canonical program `A181388.P12900204317383567121` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181388 has offset 0).

The definition of A181388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181388.P12900204317383567121

`a(n-1)+2*(a(n-1)-a(n-2))²/(a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181388

/-- `a(n-1)+2*(a(n-1)-a(n-2))²/(a(n-2)-a(n-3))` -/
def P12900204317383567121.Spec : Prop :=
  ∀ n, P12900204317383567121.a n = (A181388 n : ℚ)

end A181388

/-! ## A181388.P12077870574003432849

`∑[2^C(n, 2)]-1`
-/

namespace A181388.P12077870574003432849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A181388.P12077870574003432849

namespace A181388

/-- `∑[2^C(n, 2)]-1` -/
def P12077870574003432849.Spec : Prop :=
  ∀ n, P12077870574003432849.a n = A181388 n

end A181388

/-! ## A181388.P3710262585709019404

`∑[2^(∑[n]-n)]-1`
-/

namespace A181388.P3710262585709019404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181388.P3710262585709019404

namespace A181388

/-- `∑[2^(∑[n]-n)]-1` -/
def P3710262585709019404.Spec : Prop :=
  ∀ n, P3710262585709019404.a n = (A181388 n : ℚ)

end A181388

/-! ## A181388.P11515034092639094408

`or(2^C(n, 2), a(n-1))` with `a(0)=0`
-/

namespace A181388.P11515034092639094408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (2 ^ Nat.choose n 2) (a (n - 1))

end

end A181388.P11515034092639094408

namespace A181388

/-- `or(2^C(n, 2), a(n-1))` -/
def P11515034092639094408.Spec : Prop :=
  ∀ n, (P11515034092639094408.a n : ℤ) = A181388 n

end A181388

/-! ## A181388.P8814792841499613812

`xor(2^C(n, 2), a(n-1))` with `a(0)=0`
-/

namespace A181388.P8814792841499613812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (2 ^ Nat.choose n 2) (a (n - 1))

end

end A181388.P8814792841499613812

namespace A181388

/-- `xor(2^C(n, 2), a(n-1))` -/
def P8814792841499613812.Spec : Prop :=
  ∀ n, (P8814792841499613812.a n : ℤ) = A181388 n

end A181388

/-!
# A181389: Absolute difference between (sum of previous terms) and (n-th-even square) with a(1) = 2.

The programs for A181389, the canonical program `A181389.P5685691145183711518` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181389 has offset 1).

The definition of A181389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181389.P5685691145183711518

`a(n-1)+8` with `a(0)=2, a(1)=2, a(2)=0, a(3)=12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181389

/-- `a(n-1)+8` -/
def P5685691145183711518.Spec : Prop :=
  ∀ n, (P5685691145183711518.a n : ℤ) = A181389 (n + 1)

theorem P5685691145183711518.correct : P5685691145183711518.Spec := by
  intro n
  simp only [A181389, Nat.add_sub_cancel]

end A181389

/-!
# A181390: Absolute difference between (sum of previous terms) and (n-th-odd square) with a(1) = 1.

The programs for A181390, the canonical program `A181390.P5864383081590466827` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181390 has offset 1).

The definition of A181390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181390.P5864383081590466827

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181390

/-- `2*a(n-1)-a(n-2)` -/
def P5864383081590466827.Spec : Prop :=
  ∀ n, P5864383081590466827.a n = A181390 (n + 1)

theorem P5864383081590466827.correct : P5864383081590466827.Spec := by
  intro n
  simp only [A181390, Nat.add_sub_cancel]

end A181390

/-!
# A181391: Van Eck's sequence: For n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and set a(n+1) = n-m; otherwise a(n+1) = 0. Start with a(1)=0.

The programs for A181391, there is no canonical definition to state claims against.
-/

/-! ## A181391.P16884501959636259013

`A171958(n)+a(n-1)` with `a(0)=0`
-/

namespace A181391.P16884501959636259013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171958 n + a (n - 1)

end

end A181391.P16884501959636259013

/-! ## A181391.P8903295796174208744

`Δ[A171957(abs(1-n)+1)]`
-/

namespace A181391.P8903295796174208744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181391.P8903295796174208744

/-! ## A181391.P6565521014625227783

`∑[A171958(A028310(n))]`
-/

namespace A181391.P6565521014625227783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181391.P6565521014625227783

/-! ## A181391.P12312124057480154004

`∑[A171958(A000007(n)+n)]`
-/

namespace A181391.P12312124057480154004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181391.P12312124057480154004

/-! ## A181391.P15412116316700957238

`∑[A171958(n+1)]-A171958(n+1)`
-/

namespace A181391.P15412116316700957238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171958 (n + 1)

end

end A181391.P15412116316700957238

/-! ## A181391.P18370240744182695568

`Δ[A171957(n+1)]-A171958(n+1)`
-/

namespace A181391.P18370240744182695568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A171958 (n + 1)

end

end A181391.P18370240744182695568

/-! ## A181391.P433887048034833326

`A171957(n+1)-A171957(A028310(n))`
-/

namespace A181391.P433887048034833326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (n + 1) - A171957 (A028310 n).toNat

end

end A181391.P433887048034833326

/-! ## A181391.P12262281208527146626

`A171957(n+2)-(A171958(n+1)+A171957(n+1))`
-/

namespace A181391.P12262281208527146626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171957 (n + 2) - (A171958 (n + 1) + A171957 (n + 1))

end

end A181391.P12262281208527146626

/-! ## A181391.P12527399343641117957

`A028310(A337980(n+2))-1`
-/

namespace A181391.P12527399343641117957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A337980 (n + 2)).toNat - 1

end

end A181391.P12527399343641117957

/-! ## A181391.P672777780268771178

`∑[A171958(A065033(2*n))]`
-/

namespace A181391.P672777780268771178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181391.P672777780268771178

/-! ## A181391.P14167559805711954434

`∑[A171958(A123108(2*n))]`
-/

namespace A181391.P14167559805711954434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181391.P14167559805711954434

/-! ## A181391.P12404298857706666182

`A259361(A337980(n+2)²)`
-/

namespace A181391.P12404298857706666182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A337980 (n + 2) ^ 2).toNat

end

end A181391.P12404298857706666182

/-! ## A181391.P17670927200161798486

`A337980(n+2)-A057427(A337980(n+2)²)`
-/

namespace A181391.P17670927200161798486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 2) - A057427 (A337980 (n + 2) ^ 2).toNat

end

end A181391.P17670927200161798486

/-! ## A181391.P7350446129324453948

`∑[A171958(A003056(A000124(n)))]`
-/

namespace A181391.P7350446129324453948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181391.P7350446129324453948

/-!
# A181392: 

The programs for A181392, there is no canonical definition to state claims against.
-/

/-! ## A181392.P15618667646684184377

`A356071(n+1)²`
-/

namespace A181392.P15618667646684184377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356071 (n + 1) ^ 2

end

end A181392.P15618667646684184377

/-! ## A181392.P14771104885144118384

`A356071(n+1)^A000005(A356048(n+1))`
-/

namespace A181392.P14771104885144118384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356071 (n + 1) : ℚ) ^ (A000005 (A356048 (n + 1)).toNat : ℤ)

end

end A181392.P14771104885144118384

/-! ## A181392.P11832905023180453845

`A356071(n+1)^A000005(A356060(n+1))`
-/

namespace A181392.P11832905023180453845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356071 (n + 1) : ℚ) ^ (A000005 (A356060 (n + 1)).toNat : ℤ)

end

end A181392.P11832905023180453845

/-! ## A181392.P1290241171546335921

`A356071(n+1)^A020639(A356016(n+1))`
-/

namespace A181392.P1290241171546335921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356071 (n + 1) : ℚ) ^ (A020639 (A356016 (n + 1)).toNat : ℤ)

end

end A181392.P1290241171546335921

/-! ## A181392.P857411892542585766

`A356071(n+1)^A000005(A356079(n+1))`
-/

namespace A181392.P857411892542585766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356071 (n + 1) : ℚ) ^ (A000005 (A356079 (n + 1)).toNat : ℤ)

end

end A181392.P857411892542585766

/-!
# A181393: Numbers of the form Fibonacci(2^c)/Fibonacci(2^b), 1 <= b < c.

The programs for A181393, there is no canonical definition to state claims against.
-/

/-! ## A181393.P1778958940640595647

`A075149(eq[7, a(and(n, -(2*n+1))-1)+1]+1)` with `a(0)=5`
-/

namespace A181393.P1778958940640595647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075149 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A181393.P1778958940640595647

/-! ## A181393.P6215062957580716437

`A050613(A043569(n+1))`
-/

namespace A181393.P6215062957580716437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (A043569 (n + 1)).toNat

end

end A181393.P6215062957580716437

/-! ## A181393.P13078929273920327833

`A050613(A043735(n+1))`
-/

namespace A181393.P13078929273920327833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (A043735 (n + 1)).toNat

end

end A181393.P13078929273920327833

/-! ## A181393.P11221636961669481124

`A050613(A043741(n+1))`
-/

namespace A181393.P11221636961669481124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (A043741 (n + 1)).toNat

end

end A181393.P11221636961669481124

/-! ## A181393.P10380221461511564213

`A050613(A043748(n+1))`
-/

namespace A181393.P10380221461511564213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (A043748 (n + 1)).toNat

end

end A181393.P10380221461511564213

/-!
# A181394: Summed lengths of all nonintersecting rook paths on a 3 x n board.

The programs for A181394, there is no canonical definition to state claims against.
-/

/-! ## A181394.P15710918604272885308

`A181399(∑[n+3]+1)`
-/

namespace A181394.P15710918604272885308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181394.P15710918604272885308

/-! ## A181394.P12741212915425409239

`lcm(2, A181399(A167614(n+1)))`
-/

namespace A181394.P12741212915425409239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181399 (A167614 (n + 1)).toNat)

end

end A181394.P12741212915425409239

/-! ## A181394.P4848218571125183118

`A181399(A167614(n+1))+A034504(n+1)`
-/

namespace A181394.P4848218571125183118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A167614 (n + 1)).toNat + A034504 (n + 1)

end

end A181394.P4848218571125183118

/-! ## A181394.P508434262258825478

`A181399(A167614(n+1))%A181395(n+1)`
-/

namespace A181394.P508434262258825478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181399 (A167614 (n + 1)).toNat) (A181395 (n + 1))

end

end A181394.P508434262258825478

/-! ## A181394.P8031488157014933068

`A181399(A167614(n+1))+A000007(A225184(n+2))`
-/

namespace A181394.P8031488157014933068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A167614 (n + 1)).toNat + A000007 (A225184 (n + 2)).toNat

end

end A181394.P8031488157014933068

/-!
# A181395: Summed lengths of nonintersecting rook paths on a 4 X n board.

The programs for A181395, there is no canonical definition to state claims against.
-/

/-! ## A181395.P2974634462987760471

`A181399(A141214(n+1))`
-/

namespace A181395.P2974634462987760471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A141214 (n + 1)).toNat

end

end A181395.P2974634462987760471

/-! ## A181395.P8127433824268518027

`A181399(A374004(n+1))`
-/

namespace A181395.P8127433824268518027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A374004 (n + 1)).toNat

end

end A181395.P8127433824268518027

/-! ## A181395.P13377095106743660137

`A181399(A155212(n)+5)`
-/

namespace A181395.P13377095106743660137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A155212 n + 5).toNat

end

end A181395.P13377095106743660137

/-! ## A181395.P6181575759202733293

`A181399(A052905(n)+9)`
-/

namespace A181395.P6181575759202733293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A052905 n + 9).toNat

end

end A181395.P6181575759202733293

/-! ## A181395.P1994180468744333319

`A181399(A055999(n)+10)`
-/

namespace A181395.P1994180468744333319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A055999 n + 10).toNat

end

end A181395.P1994180468744333319

/-!
# A181396: Summed lengths of nonintersecting rook paths on a 5 X n board.

The programs for A181396, there is no canonical definition to state claims against.
-/

/-! ## A181396.P16616043977098485027

`A181399(A374005(n+1))`
-/

namespace A181396.P16616043977098485027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A374005 (n + 1)).toNat

end

end A181396.P16616043977098485027

/-! ## A181396.P18200118920865145469

`A181399(A046691(n+3))`
-/

namespace A181396.P18200118920865145469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A046691 (n + 3)).toNat

end

end A181396.P18200118920865145469

/-! ## A181396.P17611110502306143201

`A181399(A155212(n)+13)`
-/

namespace A181396.P17611110502306143201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A155212 n + 13).toNat

end

end A181396.P17611110502306143201

/-! ## A181396.P11388170084222318663

`A181399(eq[4, A193592(n)])`
-/

namespace A181396.P11388170084222318663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181396.P11388170084222318663

/-! ## A181396.P1195177216925691273

`A181399(eq[7, A066657(n)])`
-/

namespace A181396.P1195177216925691273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181396.P1195177216925691273

/-!
# A181397: Summed lengths of nonintersecting rook paths on a 6 X n board.

The programs for A181397, there is no canonical definition to state claims against.
-/

/-! ## A181397.P5071734333323093603

`A181399(A374007(n+1))`
-/

namespace A181397.P5071734333323093603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A374007 (n + 1)).toNat

end

end A181397.P5071734333323093603

/-! ## A181397.P11853795538495006910

`A181399(A052905(n+3))`
-/

namespace A181397.P11853795538495006910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A052905 (n + 3)).toNat

end

end A181397.P11853795538495006910

/-! ## A181397.P15652195463775055047

`A181399(eq[5, A193592(n)])`
-/

namespace A181397.P15652195463775055047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181397.P15652195463775055047

/-! ## A181397.P9876098596130135207

`A181399(eq[7, A131818(n+1)])`
-/

namespace A181397.P9876098596130135207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181397.P9876098596130135207

/-! ## A181397.P15267435107520336673

`A181399(eq[8, A185782(n+1)])`
-/

namespace A181397.P15267435107520336673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181397.P15267435107520336673

/-!
# A181398: Summed lengths of nonintersecting rook paths on an n X n board.

The programs for A181398, there is no canonical definition to state claims against.
-/

/-! ## A181398.P3084069181382396232

`A181399(∑[4*n]+1)`
-/

namespace A181398.P3084069181382396232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181398.P3084069181382396232

/-! ## A181398.P451771407235176950

`lcm(2, A181399(A001844(n)))`
-/

namespace A181398.P451771407235176950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181399 (A001844 n).toNat)

end

end A181398.P451771407235176950

/-! ## A181398.P6359952281476033252

`A016236(n)*A181399(A001844(n))`
-/

namespace A181398.P6359952281476033252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016236 n * A181399 (A001844 n).toNat

end

end A181398.P6359952281476033252

/-! ## A181398.P16306170583934127635

`A181399(A001844(n))+A034504(n+1)`
-/

namespace A181398.P16306170583934127635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A001844 n).toNat + A034504 (n + 1)

end

end A181398.P16306170583934127635

/-! ## A181398.P4751510217152351010

`A181399(A001844(n))+A000007(A052905(n))`
-/

namespace A181398.P4751510217152351010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181399 (A001844 n).toNat + A000007 (A052905 n).toNat

end

end A181398.P4751510217152351010

/-!
# A181399: Summed lengths of nonintersecting rook paths on an n X k board (square array by antidiagonals).

The programs for A181399, there is no canonical definition to state claims against.
-/

/-! ## A181399.P14523307880817145203

`lcm(A006075(A008459(n)), A141387(n))`
-/

namespace A181399.P14523307880817145203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006075 (A008459 n).toNat) (A141387 n)

end

end A181399.P14523307880817145203

/-! ## A181399.P9067690013206376378

`A123578(A221234(n+1))-A221234(A174546(n))`
-/

namespace A181399.P9067690013206376378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A221234 (n + 1)).toNat - A221234 (A174546 n).toNat

end

end A181399.P9067690013206376378

/-! ## A181399.P1073083684660953755

`A115878(A108090(n+1))*A207890(A115878(2*(n+1)))`
-/

namespace A181399.P1073083684660953755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A108090 (n + 1)).toNat * A207890 (A115878 (2 * (n + 1))).toNat

end

end A181399.P1073083684660953755

