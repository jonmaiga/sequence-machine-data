import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
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
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155600: a(n) = 9^n-2^n+1^n.

The programs for A155600, the canonical program `A155600.P14989511661301931076` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155600 has offset 0).

The definition of A155600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-2^n+1` (program `A155600.P14989511661301931076`, by `A155600.P14989511661301931076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155600.P14989511661301931076

`9^n-2^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155600

/-- `9^n-2^n+1` -/
def P14989511661301931076.Spec : Prop :=
  ∀ n, P14989511661301931076.a n = A155600 n

theorem P14989511661301931076.correct : P14989511661301931076.Spec := by
  intro n
  simp only [A155600]

end A155600

/-! ## A155600.P6836246321954914862

`9^n-2^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155600.P6836246321954914862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - (2 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155600.P6836246321954914862

namespace A155600

/-- `9^n-2^n+1^n` -/
def P6836246321954914862.Spec : Prop :=
  ∀ n, P6836246321954914862.a n = A155600 n

theorem P6836246321954914862.correct : P6836246321954914862.Spec := by
  intro n
  simp only [A155600, Nat.add_sub_cancel, A155600.P6836246321954914862.a, A155600.P14989511661301931076.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155600

/-! ## A155600.P1155454266528308746

`abs(2^n-A062396(n))`
-/

namespace A155600.P1155454266528308746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A062396 n|

end

end A155600.P1155454266528308746

namespace A155600

/-- `abs(2^n-A062396(n))` -/
def P1155454266528308746.Spec : Prop :=
  ∀ n, P1155454266528308746.a n = A155600 n

end A155600

/-! ## A155600.P15553158356170961305

`abs(9^n-A000225(n))`
-/

namespace A155600.P15553158356170961305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - A000225 n|

end

end A155600.P15553158356170961305

namespace A155600

/-- `abs(9^n-A000225(n))` -/
def P15553158356170961305.Spec : Prop :=
  ∀ n, P15553158356170961305.a n = A155600 n

end A155600

/-! ## A155600.P448296951673627318

`abs(∑[2^n]-A074604(n))`
-/

namespace A155600.P448296951673627318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A074604 n|

end

end A155600.P448296951673627318

namespace A155600

/-- `abs(∑[2^n]-A074604(n))` -/
def P448296951673627318.Spec : Prop :=
  ∀ n, P448296951673627318.a n = A155600 n

end A155600

/-! ## A155600.P142784568511184947

`abs(2^n-1-A001019(n))`
-/

namespace A155600.P142784568511184947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A001019 n|

end

end A155600.P142784568511184947

namespace A155600

/-- `abs(2^n-1-A001019(n))` -/
def P142784568511184947.Spec : Prop :=
  ∀ n, P142784568511184947.a n = A155600 n

end A155600

/-! ## A155600.P6504673032217415342

`abs(2^n-1-A000244(n)²)`
-/

namespace A155600.P6504673032217415342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A000244 n ^ 2|

end

end A155600.P6504673032217415342

namespace A155600

/-- `abs(2^n-1-A000244(n)²)` -/
def P6504673032217415342.Spec : Prop :=
  ∀ n, P6504673032217415342.a n = A155600 n

end A155600

/-! ## A155600.P13541526726767676048

`∑[A055275(n)-floor(2^(n-1))]`
-/

namespace A155600.P13541526726767676048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155600.P13541526726767676048

namespace A155600

/-- `∑[A055275(n)-floor(2^(n-1))]` -/
def P13541526726767676048.Spec : Prop :=
  ∀ n, P13541526726767676048.a n = A155600 n

end A155600

/-! ## A155600.P15680876453330233734

`abs(A007689(n)-A034513(n))`
-/

namespace A155600.P15680876453330233734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007689 n - A034513 n|

end

end A155600.P15680876453330233734

namespace A155600

/-- `abs(A007689(n)-A034513(n))` -/
def P15680876453330233734.Spec : Prop :=
  ∀ n, P15680876453330233734.a n = A155600 n

end A155600

/-! ## A155600.P14648210774197240695

`Δ[A002452(n)-A000295(n)]`
-/

namespace A155600.P14648210774197240695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155600.P14648210774197240695

namespace A155600

/-- `Δ[A002452(n)-A000295(n)]` -/
def P14648210774197240695.Spec : Prop :=
  ∀ n, P14648210774197240695.a n = A155600 n

end A155600

/-! ## A155600.P719749669711709359

`record[A140303(n)²-A173787(n)]`
-/

namespace A155600.P719749669711709359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 - A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155600.P719749669711709359

namespace A155600

/-- `record[A140303(n)²-A173787(n)]` -/
def P719749669711709359.Spec : Prop :=
  ∀ n, P719749669711709359.a n = A155600 n

end A155600

/-! ## A155600.P6412376668408238657

`abs(A000244(n)²-A000051(n)+2)`
-/

namespace A155600.P6412376668408238657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - A000051 n + 2|

end

end A155600.P6412376668408238657

namespace A155600

/-- `abs(A000244(n)²-A000051(n)+2)` -/
def P6412376668408238657.Spec : Prop :=
  ∀ n, P6412376668408238657.a n = A155600 n

end A155600

/-! ## A155600.P5617533073165131643

`abs(A000244(2*n)-A000051(n)+2)`
-/

namespace A155600.P5617533073165131643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 (2 * n) - A000051 n + 2|

end

end A155600.P5617533073165131643

namespace A155600

/-- `abs(A000244(2*n)-A000051(n)+2)` -/
def P5617533073165131643.Spec : Prop :=
  ∀ n, P5617533073165131643.a n = A155600 n

end A155600

/-!
# A155601: a(n) = 10^n - 2^n + 1^n.

The programs for A155601, the canonical program `A155601.P5202583027568048052` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155601 has offset 0).

The definition of A155601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-2^n+1` (program `A155601.P5202583027568048052`, by `A155601.P5202583027568048052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155601.P5202583027568048052

`10^n-2^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155601

/-- `10^n-2^n+1` -/
def P5202583027568048052.Spec : Prop :=
  ∀ n, P5202583027568048052.a n = A155601 n

theorem P5202583027568048052.correct : P5202583027568048052.Spec := by
  intro n
  simp only [A155601]

end A155601

/-! ## A155601.P8110362747604874974

`10^n-2^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155601.P8110362747604874974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - (2 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155601.P8110362747604874974

namespace A155601

/-- `10^n-2^n+1^n` -/
def P8110362747604874974.Spec : Prop :=
  ∀ n, P8110362747604874974.a n = A155601 n

theorem P8110362747604874974.correct : P8110362747604874974.Spec := by
  intro n
  simp only [A155601, Nat.add_sub_cancel, A155601.P8110362747604874974.a, A155601.P5202583027568048052.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155601

/-! ## A155601.P5897885176096199959

`or(1, 10^n-2^n)`
-/

namespace A155601.P5897885176096199959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((10 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A155601.P5897885176096199959

namespace A155601

/-- `or(1, 10^n-2^n)` -/
def P5897885176096199959.Spec : Prop :=
  ∀ n, P5897885176096199959.a n = A155601 n

end A155601

/-! ## A155601.P12386655523406280335

`xor(1, 10^n-2^n)`
-/

namespace A155601.P12386655523406280335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((10 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A155601.P12386655523406280335

namespace A155601

/-- `xor(1, 10^n-2^n)` -/
def P12386655523406280335.Spec : Prop :=
  ∀ n, P12386655523406280335.a n = A155601 n

end A155601

/-! ## A155601.P3370265656684694870

`abs(10^n-A000225(n))`
-/

namespace A155601.P3370265656684694870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A000225 n|

end

end A155601.P3370265656684694870

namespace A155601

/-- `abs(10^n-A000225(n))` -/
def P3370265656684694870.Spec : Prop :=
  ∀ n, P3370265656684694870.a n = A155601 n

end A155601

/-! ## A155601.P9809147694668591462

`abs(10^n-1-A000918(n))`
-/

namespace A155601.P9809147694668591462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - 1 - A000918 n|

end

end A155601.P9809147694668591462

namespace A155601

/-- `abs(10^n-1-A000918(n))` -/
def P9809147694668591462.Spec : Prop :=
  ∀ n, P9809147694668591462.a n = A155601 n

end A155601

/-! ## A155601.P8842013126980817207

`abs(A000225(n)-A011557(n))`
-/

namespace A155601.P8842013126980817207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A011557 n|

end

end A155601.P8842013126980817207

namespace A155601

/-- `abs(A000225(n)-A011557(n))` -/
def P8842013126980817207.Spec : Prop :=
  ∀ n, P8842013126980817207.a n = A155601 n

end A155601

/-! ## A155601.P9691822730430029750

`abs(2^n-A062397(n))`
-/

namespace A155601.P9691822730430029750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A062397 n|

end

end A155601.P9691822730430029750

namespace A155601

/-- `abs(2^n-A062397(n))` -/
def P9691822730430029750.Spec : Prop :=
  ∀ n, P9691822730430029750.a n = A155601 n

end A155601

/-! ## A155601.P7668125112493953549

`and(A000533(n), A103456(n))`
-/

namespace A155601.P7668125112493953549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000533 n) (A103456 n)

end

end A155601.P7668125112493953549

namespace A155601

/-- `and(A000533(n), A103456(n))` -/
def P7668125112493953549.Spec : Prop :=
  ∀ n, P7668125112493953549.a n = A155601 n

end A155601

/-! ## A155601.P9021236828849518919

`Δ[A002275(n)-A000295(n)]`
-/

namespace A155601.P9021236828849518919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155601.P9021236828849518919

namespace A155601

/-- `Δ[A002275(n)-A000295(n)]` -/
def P9021236828849518919.Spec : Prop :=
  ∀ n, P9021236828849518919.a n = A155601 n

end A155601

/-! ## A155601.P15539890822363393581

`Δ[A002275(n)-A000325(n)]`
-/

namespace A155601.P15539890822363393581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A000325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155601.P15539890822363393581

namespace A155601

/-- `Δ[A002275(n)-A000325(n)]` -/
def P15539890822363393581.Spec : Prop :=
  ∀ n, P15539890822363393581.a n = A155601 n

end A155601

/-! ## A155601.P763674861241232877

`Δ[A047855(n)-A000295(n)]`
-/

namespace A155601.P763674861241232877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155601.P763674861241232877

namespace A155601

/-- `Δ[A047855(n)-A000295(n)]` -/
def P763674861241232877.Spec : Prop :=
  ∀ n, P763674861241232877.a n = A155601 n

end A155601

/-! ## A155601.P1352795874549050214

`and(A155594(n)+2, A155594(n))`
-/

namespace A155601.P1352795874549050214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155594 n + 2) (A155594 n)

end

end A155601.P1352795874549050214

namespace A155601

/-- `and(A155594(n)+2, A155594(n))` -/
def P1352795874549050214.Spec : Prop :=
  ∀ n, P1352795874549050214.a n = A155601 n

end A155601

/-! ## A155601.P11154939529150208088

`and(-A000225(n+1), A000533(n))`
-/

namespace A155601.P11154939529150208088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000225 (n + 1)) (A000533 n)

end

end A155601.P11154939529150208088

namespace A155601

/-- `and(-A000225(n+1), A000533(n))` -/
def P11154939529150208088.Spec : Prop :=
  ∀ n, P11154939529150208088.a n = A155601 n

end A155601

/-! ## A155601.P14589826973218157082

`abs(or(1-A062397(n), A000079(n+1)-1))`
-/

namespace A155601.P14589826973218157082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (1 - A062397 n) (A000079 (n + 1) - 1)|

end

end A155601.P14589826973218157082

namespace A155601

/-- `abs(or(1-A062397(n), A000079(n+1)-1))` -/
def P14589826973218157082.Spec : Prop :=
  ∀ n, P14589826973218157082.a n = A155601 n

end A155601

/-! ## A155601.P16227103487748595645

`and(A188346(n)-A147596(n+1), A000533(n))`
-/

namespace A155601.P16227103487748595645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188346 n - A147596 (n + 1)) (A000533 n)

end

end A155601.P16227103487748595645

namespace A155601

/-- `and(A188346(n)-A147596(n+1), A000533(n))` -/
def P16227103487748595645.Spec : Prop :=
  ∀ n, P16227103487748595645.a n = A155601 n

end A155601

/-! ## A155601.P16009177023186731383

`and(A000533(n)-2*A000010(n+1), A000533(n))`
-/

namespace A155601.P16009177023186731383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000533 n - 2 * A000010 (n + 1)) (A000533 n)

end

end A155601.P16009177023186731383

namespace A155601

/-- `and(A000533(n)-2*A000010(n+1), A000533(n))` -/
def P16009177023186731383.Spec : Prop :=
  ∀ n, P16009177023186731383.a n = A155601 n

end A155601

/-!
# A155602: a(n) = 4^n + 3^n - 1.

The programs for A155602, the canonical program `A155602.P2314691985141275640` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155602 has offset 0).

The definition of A155602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+3^n-1` (program `A155602.P2314691985141275640`, by `A155602.P2314691985141275640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155602.P2314691985141275640

`4^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155602

/-- `4^n+3^n-1` -/
def P2314691985141275640.Spec : Prop :=
  ∀ n, P2314691985141275640.a n = A155602 n

theorem P2314691985141275640.correct : P2314691985141275640.Spec := by
  intro n
  simp only [A155602]

end A155602

/-! ## A155602.P15317003359885670357

`or(3^n-1, 4^n)`
-/

namespace A155602.P15317003359885670357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - 1) (4 ^ n : ℤ)

end

end A155602.P15317003359885670357

namespace A155602

/-- `or(3^n-1, 4^n)` -/
def P15317003359885670357.Spec : Prop :=
  ∀ n, P15317003359885670357.a n = A155602 n

end A155602

/-! ## A155602.P3402023344528202080

`xor(3^n-1, 4^n)`
-/

namespace A155602.P3402023344528202080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((3 ^ n : ℤ) - 1) (4 ^ n : ℤ)

end

end A155602.P3402023344528202080

namespace A155602

/-- `xor(3^n-1, 4^n)` -/
def P3402023344528202080.Spec : Prop :=
  ∀ n, P3402023344528202080.a n = A155602 n

end A155602

/-! ## A155602.P16742014743141370757

`abs(1-A074605(n))`
-/

namespace A155602.P16742014743141370757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074605 n|

end

end A155602.P16742014743141370757

namespace A155602

/-- `abs(1-A074605(n))` -/
def P16742014743141370757.Spec : Prop :=
  ∀ n, P16742014743141370757.a n = A155602 n

end A155602

/-! ## A155602.P12311764183734157387

`abs(2-A074506(n))`
-/

namespace A155602.P12311764183734157387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074506 n|

end

end A155602.P12311764183734157387

namespace A155602

/-- `abs(2-A074506(n))` -/
def P12311764183734157387.Spec : Prop :=
  ∀ n, P12311764183734157387.a n = A155602 n

end A155602

/-! ## A155602.P11306961372148843616

`abs(1-(A074526(n)-2^n))`
-/

namespace A155602.P11306961372148843616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A074526 n - (2 ^ n : ℤ))|

end

end A155602.P11306961372148843616

namespace A155602

/-- `abs(1-(A074526(n)-2^n))` -/
def P11306961372148843616.Spec : Prop :=
  ∀ n, P11306961372148843616.a n = A155602 n

end A155602

/-! ## A155602.P9674517834963025305

`record[A122803(n)+A048328(n)]`
-/

namespace A155602.P9674517834963025305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + A048328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155602.P9674517834963025305

namespace A155602

/-- `record[A122803(n)+A048328(n)]` -/
def P9674517834963025305.Spec : Prop :=
  ∀ n, P9674517834963025305.a n = A155602 n

end A155602

/-! ## A155602.P184758762671359782

`(A099430(2*n+1)+A025192(n+1))/2`
-/

namespace A155602.P184758762671359782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099430 (2 * n + 1) + A025192 (n + 1) : ℚ) / 2

end

end A155602.P184758762671359782

namespace A155602

/-- `(A099430(2*n+1)+A025192(n+1))/2` -/
def P184758762671359782.Spec : Prop :=
  ∀ n, P184758762671359782.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P6050635632528453344

`(A060647(2*n)+A000225(2*n+1))/2`
-/

namespace A155602.P6050635632528453344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060647 (2 * n) + A000225 (2 * n + 1) : ℚ) / 2

end

end A155602.P6050635632528453344

namespace A155602

/-- `(A060647(2*n)+A000225(2*n+1))/2` -/
def P6050635632528453344.Spec : Prop :=
  ∀ n, P6050635632528453344.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P3024317985886124927

`(A062318(2*(n+1))+A000225(2*n+1))/2`
-/

namespace A155602.P3024317985886124927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062318 (2 * (n + 1)) + A000225 (2 * n + 1) : ℚ) / 2

end

end A155602.P3024317985886124927

namespace A155602

/-- `(A062318(2*(n+1))+A000225(2*n+1))/2` -/
def P3024317985886124927.Spec : Prop :=
  ∀ n, P3024317985886124927.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P7491081277822178313

`(A068911(2*n+1)+A000918(2*n+1))/2`
-/

namespace A155602.P7491081277822178313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 (2 * n + 1) + A000918 (2 * n + 1) : ℚ) / 2

end

end A155602.P7491081277822178313

namespace A155602

/-- `(A068911(2*n+1)+A000918(2*n+1))/2` -/
def P7491081277822178313.Spec : Prop :=
  ∀ n, P7491081277822178313.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P14833735314624617410

`(A079362(2*n+1)+A000225(2*n+1))/2`
-/

namespace A155602.P14833735314624617410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079362 (2 * n + 1) + A000225 (2 * n + 1) : ℚ) / 2

end

end A155602.P14833735314624617410

namespace A155602

/-- `(A079362(2*n+1)+A000225(2*n+1))/2` -/
def P14833735314624617410.Spec : Prop :=
  ∀ n, P14833735314624617410.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P1761944555942124014

`(A062547(2*n+1)+A036563(2*n+1))/2`
-/

namespace A155602.P1761944555942124014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062547 (2 * n + 1) + A036563 (2 * n + 1) : ℚ) / 2

end

end A155602.P1761944555942124014

namespace A155602

/-- `(A062547(2*n+1)+A036563(2*n+1))/2` -/
def P1761944555942124014.Spec : Prop :=
  ∀ n, P1761944555942124014.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P13661499216080007643

`(A099430(2*n+1)+A038754(2*n+1))/2`
-/

namespace A155602.P13661499216080007643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099430 (2 * n + 1) + A038754 (2 * n + 1) : ℚ) / 2

end

end A155602.P13661499216080007643

namespace A155602

/-- `(A099430(2*n+1)+A038754(2*n+1))/2` -/
def P13661499216080007643.Spec : Prop :=
  ∀ n, P13661499216080007643.a n = (A155602 n : ℚ)

end A155602

/-! ## A155602.P4258722407366403584

`(A074620(n)-A000079(n))/A000079(n)`
-/

namespace A155602.P4258722407366403584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074620 n - A000079 n : ℚ) / (A000079 n : ℚ)

end

end A155602.P4258722407366403584

namespace A155602

/-- `(A074620(n)-A000079(n))/A000079(n)` -/
def P4258722407366403584.Spec : Prop :=
  ∀ n, P4258722407366403584.a n = (A155602 n : ℚ)

end A155602

/-!
# A155603: a(n) = 5^n+3^n-1.

The programs for A155603, the canonical program `A155603.P7470402468352684501` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155603 has offset 0).

The definition of A155603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+3^n-1` (program `A155603.P7470402468352684501`, by `A155603.P7470402468352684501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155603.P7470402468352684501

`5^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155603

/-- `5^n+3^n-1` -/
def P7470402468352684501.Spec : Prop :=
  ∀ n, P7470402468352684501.a n = A155603 n

theorem P7470402468352684501.correct : P7470402468352684501.Spec := by
  intro n
  simp only [A155603]

end A155603

/-! ## A155603.P11275604271016706574

`abs(1-A074606(n))`
-/

namespace A155603.P11275604271016706574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074606 n|

end

end A155603.P11275604271016706574

namespace A155603

/-- `abs(1-A074606(n))` -/
def P11275604271016706574.Spec : Prop :=
  ∀ n, P11275604271016706574.a n = A155603 n

end A155603

/-! ## A155603.P5267476336550694655

`abs(2-A074507(n))`
-/

namespace A155603.P5267476336550694655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074507 n|

end

end A155603.P5267476336550694655

namespace A155603

/-- `abs(2-A074507(n))` -/
def P5267476336550694655.Spec : Prop :=
  ∀ n, P5267476336550694655.a n = A155603 n

end A155603

/-! ## A155603.P3588214191555854428

`or(1, A024049(n)+3^n)`
-/

namespace A155603.P3588214191555854428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024049 n + (3 ^ n : ℤ))

end

end A155603.P3588214191555854428

namespace A155603

/-- `or(1, A024049(n)+3^n)` -/
def P3588214191555854428.Spec : Prop :=
  ∀ n, P3588214191555854428.a n = A155603 n

end A155603

/-! ## A155603.P14500397856615813055

`abs(2*n+1-A120949(n))`
-/

namespace A155603.P14500397856615813055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A120949 n|

end

end A155603.P14500397856615813055

namespace A155603

/-- `abs(2*n+1-A120949(n))` -/
def P14500397856615813055.Spec : Prop :=
  ∀ n, P14500397856615813055.a n = A155603 n

end A155603

/-! ## A155603.P8302925392857734536

`abs(A000051(n)-A074527(n))`
-/

namespace A155603.P8302925392857734536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074527 n|

end

end A155603.P8302925392857734536

namespace A155603

/-- `abs(A000051(n)-A074527(n))` -/
def P8302925392857734536.Spec : Prop :=
  ∀ n, P8302925392857734536.a n = A155603 n

end A155603

/-! ## A155603.P3784115448757160234

`xor(1, A155616(n)-A155609(n))`
-/

namespace A155603.P3784115448757160234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155616 n - A155609 n)

end

end A155603.P3784115448757160234

namespace A155603

/-- `xor(1, A155616(n)-A155609(n))` -/
def P3784115448757160234.Spec : Prop :=
  ∀ n, P3784115448757160234.a n = A155603 n

end A155603

/-! ## A155603.P12181863482880871245

`abs(1-(A000351(n)+A000244(n)))`
-/

namespace A155603.P12181863482880871245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000351 n + A000244 n)|

end

end A155603.P12181863482880871245

namespace A155603

/-- `abs(1-(A000351(n)+A000244(n)))` -/
def P12181863482880871245.Spec : Prop :=
  ∀ n, P12181863482880871245.a n = A155603 n

end A155603

/-! ## A155603.P15688445609075853608

`and(A024049(n)+3^n, A008683(A032591(n)))`
-/

namespace A155603.P15688445609075853608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024049 n + (3 ^ n : ℤ)) (A008683 (A032591 n).toNat)

end

end A155603.P15688445609075853608

namespace A155603

/-- `and(A024049(n)+3^n, A008683(A032591(n)))` -/
def P15688445609075853608.Spec : Prop :=
  ∀ n, P15688445609075853608.a n = A155603 n

end A155603

/-! ## A155603.P3400312260277620177

`Δ[(A120950(n)-A034478(n))/2]`
-/

namespace A155603.P3400312260277620177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120950 n - A034478 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155603.P3400312260277620177

namespace A155603

/-- `Δ[(A120950(n)-A034478(n))/2]` -/
def P3400312260277620177.Spec : Prop :=
  ∀ n, P3400312260277620177.a n = (A155603 n : ℚ)

end A155603

/-! ## A155603.P8535299011419795170

`(A024049(n)+3^n)*A007318(∑[n])`
-/

namespace A155603.P8535299011419795170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024049 n + (3 ^ n : ℤ)) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155603.P8535299011419795170

namespace A155603

/-- `(A024049(n)+3^n)*A007318(∑[n])` -/
def P8535299011419795170.Spec : Prop :=
  ∀ n, P8535299011419795170.a n = A155603 n

end A155603

/-! ## A155603.P741387906058670717

`record[A074606(A025581(n))-1]`
-/

namespace A155603.P741387906058670717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074606 (A025581 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155603.P741387906058670717

namespace A155603

/-- `record[A074606(A025581(n))-1]` -/
def P741387906058670717.Spec : Prop :=
  ∀ n, P741387906058670717.a n = A155603 n

end A155603

/-! ## A155603.P15039811641441642145

`record[A098355(n)+A227076(n)-1]`
-/

namespace A155603.P15039811641441642145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n + (A227076 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155603.P15039811641441642145

namespace A155603

/-- `record[A098355(n)+A227076(n)-1]` -/
def P15039811641441642145.Spec : Prop :=
  ∀ n, P15039811641441642145.a n = A155603 n

end A155603

/-! ## A155603.P11510966562654851348

`and(A024049(n)+3^n, A008683(A032592(n)))`
-/

namespace A155603.P11510966562654851348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024049 n + (3 ^ n : ℤ)) (A008683 (A032592 n).toNat)

end

end A155603.P11510966562654851348

namespace A155603

/-- `and(A024049(n)+3^n, A008683(A032592(n)))` -/
def P11510966562654851348.Spec : Prop :=
  ∀ n, P11510966562654851348.a n = A155603 n

end A155603

/-!
# A155604: a(n) = 6^n + 3^n - 1.

The programs for A155604, the canonical program `A155604.P16530662911435381620` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155604 has offset 0).

The definition of A155604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+3^n-1` (program `A155604.P16530662911435381620`, by `A155604.P16530662911435381620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155604.P16530662911435381620

`6^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155604

/-- `6^n+3^n-1` -/
def P16530662911435381620.Spec : Prop :=
  ∀ n, P16530662911435381620.a n = A155604 n

theorem P16530662911435381620.correct : P16530662911435381620.Spec := by
  intro n
  simp only [A155604]

end A155604

/-! ## A155604.P4653989488385061974

`xor(-1, -(3^n+6^n))`
-/

namespace A155604.P4653989488385061974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(3 ^ n + 6 ^ n : ℤ))

end

end A155604.P4653989488385061974

namespace A155604

/-- `xor(-1, -(3^n+6^n))` -/
def P4653989488385061974.Spec : Prop :=
  ∀ n, P4653989488385061974.a n = A155604 n

end A155604

/-! ## A155604.P7332263219490260075

`abs(1-A074607(n))`
-/

namespace A155604.P7332263219490260075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074607 n|

end

end A155604.P7332263219490260075

namespace A155604

/-- `abs(1-A074607(n))` -/
def P7332263219490260075.Spec : Prop :=
  ∀ n, P7332263219490260075.a n = A155604 n

end A155604

/-! ## A155604.P10411272775343767659

`abs(2-A074508(n))`
-/

namespace A155604.P10411272775343767659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074508 n|

end

end A155604.P10411272775343767659

namespace A155604

/-- `abs(2-A074508(n))` -/
def P10411272775343767659.Spec : Prop :=
  ∀ n, P10411272775343767659.a n = A155604 n

end A155604

/-! ## A155604.P4844703648431135992

`abs(1-3^n*A000051(n))`
-/

namespace A155604.P4844703648431135992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 ^ n : ℤ) * A000051 n|

end

end A155604.P4844703648431135992

namespace A155604

/-- `abs(1-3^n*A000051(n))` -/
def P4844703648431135992.Spec : Prop :=
  ∀ n, P4844703648431135992.a n = A155604 n

end A155604

/-! ## A155604.P8098580357205242796

`abs(A074612(n)-A155609(n))`
-/

namespace A155604.P8098580357205242796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074612 n - A155609 n|

end

end A155604.P8098580357205242796

namespace A155604

/-- `abs(A074612(n)-A155609(n))` -/
def P8098580357205242796.Spec : Prop :=
  ∀ n, P8098580357205242796.a n = A155604 n

end A155604

/-! ## A155604.P17996820564861250680

`abs(A008683(A045326(n+1))+3^n+6^n)`
-/

namespace A155604.P17996820564861250680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A045326 (n + 1)).toNat + (3 ^ n + 6 ^ n : ℤ)|

end

end A155604.P17996820564861250680

namespace A155604

/-- `abs(A008683(A045326(n+1))+3^n+6^n)` -/
def P17996820564861250680.Spec : Prop :=
  ∀ n, P17996820564861250680.a n = A155604 n

end A155604

/-! ## A155604.P5051274854027907692

`floor(A212850(2*n+1)/A212850(n+1))`
-/

namespace A155604.P5051274854027907692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212850 (2 * n + 1) : ℚ) / (A212850 (n + 1) : ℚ)⌋

end

end A155604.P5051274854027907692

namespace A155604

/-- `floor(A212850(2*n+1)/A212850(n+1))` -/
def P5051274854027907692.Spec : Prop :=
  ∀ n, P5051274854027907692.a n = A155604 n

end A155604

/-!
# A155605: a(n) = 7^n+3^n-1.

The programs for A155605, the canonical program `A155605.P10722146233848865176` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155605 has offset 0).

The definition of A155605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+3^n-1` (program `A155605.P10722146233848865176`, by `A155605.P10722146233848865176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155605.P10722146233848865176

`7^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155605

/-- `7^n+3^n-1` -/
def P10722146233848865176.Spec : Prop :=
  ∀ n, P10722146233848865176.a n = A155605 n

theorem P10722146233848865176.correct : P10722146233848865176.Spec := by
  intro n
  simp only [A155605]

end A155605

/-! ## A155605.P9896360400406883772

`xor(3, 3^n+7^n)`
-/

namespace A155605.P9896360400406883772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (3 ^ n + 7 ^ n)

end

end A155605.P9896360400406883772

namespace A155605

/-- `xor(3, 3^n+7^n)` -/
def P9896360400406883772.Spec : Prop :=
  ∀ n, (P9896360400406883772.a n : ℤ) = A155605 n

end A155605

/-! ## A155605.P11743948581066731111

`and(3^n+7^n+1, -3)`
-/

namespace A155605.P11743948581066731111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n + (7 ^ n + 1) : ℤ) (-3)

end

end A155605.P11743948581066731111

namespace A155605

/-- `and(3^n+7^n+1, -3)` -/
def P11743948581066731111.Spec : Prop :=
  ∀ n, P11743948581066731111.a n = A155605 n

end A155605

/-! ## A155605.P11329532549853129775

`abs(1-A074608(n))`
-/

namespace A155605.P11329532549853129775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074608 n|

end

end A155605.P11329532549853129775

namespace A155605

/-- `abs(1-A074608(n))` -/
def P11329532549853129775.Spec : Prop :=
  ∀ n, P11329532549853129775.a n = A155605 n

end A155605

/-! ## A155605.P10098223501927245041

`abs(2-A074509(n))`
-/

namespace A155605.P10098223501927245041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074509 n|

end

end A155605.P10098223501927245041

namespace A155605

/-- `abs(2-A074509(n))` -/
def P10098223501927245041.Spec : Prop :=
  ∀ n, P10098223501927245041.a n = A155605 n

end A155605

/-! ## A155605.P1377489856768161614

`abs(1-2*A081336(n))`
-/

namespace A155605.P1377489856768161614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A081336 n|

end

end A155605.P1377489856768161614

namespace A155605

/-- `abs(1-2*A081336(n))` -/
def P1377489856768161614.Spec : Prop :=
  ∀ n, P1377489856768161614.a n = A155605 n

end A155605

/-! ## A155605.P14371300090908172207

`or(1, A024075(n)+A024023(n))`
-/

namespace A155605.P14371300090908172207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024075 n + A024023 n)

end

end A155605.P14371300090908172207

namespace A155605

/-- `or(1, A024075(n)+A024023(n))` -/
def P14371300090908172207.Spec : Prop :=
  ∀ n, P14371300090908172207.a n = A155605 n

end A155605

/-! ## A155605.P4516874133540515031

`ceil(A155590(n)+Δ[A260217(n+1)/4])`
-/

namespace A155605.P4516874133540515031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260217 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155590 n : ℚ) + (f1 (n + 1) - f1 n)⌉

end

end A155605.P4516874133540515031

namespace A155605

/-- `ceil(A155590(n)+Δ[A260217(n+1)/4])` -/
def P4516874133540515031.Spec : Prop :=
  ∀ n, P4516874133540515031.a n = A155605 n

end A155605

/-! ## A155605.P12421818264333399337

`abs(A008683(A007520(n+1))+3^n+7^n)`
-/

namespace A155605.P12421818264333399337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007520 (n + 1)).toNat + (3 ^ n + 7 ^ n : ℤ)|

end

end A155605.P12421818264333399337

namespace A155605

/-- `abs(A008683(A007520(n+1))+3^n+7^n)` -/
def P12421818264333399337.Spec : Prop :=
  ∀ n, P12421818264333399337.a n = A155605 n

end A155605

/-! ## A155605.P11455501292479791650

`A074559(n)%A062396(n)`
-/

namespace A155605.P11455501292479791650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074559 n) (A062396 n)

end

end A155605.P11455501292479791650

namespace A155605

/-- `A074559(n)%A062396(n)` -/
def P11455501292479791650.Spec : Prop :=
  ∀ n, P11455501292479791650.a n = A155605 n

end A155605

/-!
# A155606: a(n) = 8^n + 3^n - 1.

The programs for A155606, the canonical program `A155606.P9774463501778138714` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155606 has offset 0).

The definition of A155606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+3^n-1` (program `A155606.P9774463501778138714`, by `A155606.P9774463501778138714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155606.P9774463501778138714

`8^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155606

/-- `8^n+3^n-1` -/
def P9774463501778138714.Spec : Prop :=
  ∀ n, P9774463501778138714.a n = A155606 n

theorem P9774463501778138714.correct : P9774463501778138714.Spec := by
  intro n
  simp only [A155606]

end A155606

/-! ## A155606.P7212538614262741189

`or(3^n-1, 8^n)`
-/

namespace A155606.P7212538614262741189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155606.P7212538614262741189

namespace A155606

/-- `or(3^n-1, 8^n)` -/
def P7212538614262741189.Spec : Prop :=
  ∀ n, P7212538614262741189.a n = A155606 n

end A155606

/-! ## A155606.P8452249981818479215

`xor(3^n-1, 8^n)`
-/

namespace A155606.P8452249981818479215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((3 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155606.P8452249981818479215

namespace A155606

/-- `xor(3^n-1, 8^n)` -/
def P8452249981818479215.Spec : Prop :=
  ∀ n, P8452249981818479215.a n = A155606 n

end A155606

/-! ## A155606.P10447735509512554274

`abs(1-A074609(n))`
-/

namespace A155606.P10447735509512554274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074609 n|

end

end A155606.P10447735509512554274

namespace A155606

/-- `abs(1-A074609(n))` -/
def P10447735509512554274.Spec : Prop :=
  ∀ n, P10447735509512554274.a n = A155606 n

end A155606

/-! ## A155606.P12167228783725288339

`abs(2-A074510(n))`
-/

namespace A155606.P12167228783725288339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074510 n|

end

end A155606.P12167228783725288339

namespace A155606

/-- `abs(2-A074510(n))` -/
def P12167228783725288339.Spec : Prop :=
  ∀ n, P12167228783725288339.a n = A155606 n

end A155606

/-! ## A155606.P9625901214205525793

`abs(1-(A062395(n)+A024023(n)))`
-/

namespace A155606.P9625901214205525793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A062395 n + A024023 n)|

end

end A155606.P9625901214205525793

namespace A155606

/-- `abs(1-(A062395(n)+A024023(n)))` -/
def P9625901214205525793.Spec : Prop :=
  ∀ n, P9625901214205525793.a n = A155606 n

end A155606

/-! ## A155606.P13576797212270801170

`(A063481(n)-A155609(n))%A063481(n)`
-/

namespace A155606.P13576797212270801170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063481 n - A155609 n) (A063481 n)

end

end A155606.P13576797212270801170

namespace A155606

/-- `(A063481(n)-A155609(n))%A063481(n)` -/
def P13576797212270801170.Spec : Prop :=
  ∀ n, P13576797212270801170.a n = A155606 n

end A155606

/-! ## A155606.P10949581225685455360

`ceil(A155613(2*n)/A155613(n))`
-/

namespace A155606.P10949581225685455360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155613 (2 * n) : ℚ) / (A155613 n : ℚ)⌉

end

end A155606.P10949581225685455360

namespace A155606

/-- `ceil(A155613(2*n)/A155613(n))` -/
def P10949581225685455360.Spec : Prop :=
  ∀ n, P10949581225685455360.a n = A155606 n

end A155606

/-!
# A155607: a(n) = 9^n + 3^n - 1.

The programs for A155607, the canonical program `A155607.P13592015036391020534` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155607 has offset 0).

The definition of A155607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+3^n-1` (program `A155607.P13592015036391020534`, by `A155607.P13592015036391020534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155607.P13592015036391020534

`9^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155607

/-- `9^n+3^n-1` -/
def P13592015036391020534.Spec : Prop :=
  ∀ n, P13592015036391020534.a n = A155607 n

theorem P13592015036391020534.correct : P13592015036391020534.Spec := by
  intro n
  simp only [A155607]

end A155607

/-! ## A155607.P794150645959218629

`abs(1-A074610(n))`
-/

namespace A155607.P794150645959218629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074610 n|

end

end A155607.P794150645959218629

namespace A155607

/-- `abs(1-A074610(n))` -/
def P794150645959218629.Spec : Prop :=
  ∀ n, P794150645959218629.a n = A155607 n

end A155607

/-! ## A155607.P4458363769893215268

`abs(2-A034513(n))`
-/

namespace A155607.P4458363769893215268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A034513 n|

end

end A155607.P4458363769893215268

namespace A155607

/-- `abs(2-A034513(n))` -/
def P4458363769893215268.Spec : Prop :=
  ∀ n, P4458363769893215268.a n = A155607 n

end A155607

/-! ## A155607.P16896224560227895898

`∑[C(A003946(n)+1, 2)]`
-/

namespace A155607.P16896224560227895898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003946 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155607.P16896224560227895898

namespace A155607

/-- `∑[C(A003946(n)+1, 2)]` -/
def P16896224560227895898.Spec : Prop :=
  ∀ n, (P16896224560227895898.a n : ℤ) = A155607 n

end A155607

/-! ## A155607.P974224662170487367

`(A198410(n+2)-4)/3`
-/

namespace A155607.P974224662170487367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198410 (n + 2) - 4 : ℚ) / 3

end

end A155607.P974224662170487367

namespace A155607

/-- `(A198410(n+2)-4)/3` -/
def P974224662170487367.Spec : Prop :=
  ∀ n, P974224662170487367.a n = (A155607 n : ℚ)

end A155607

/-! ## A155607.P17102295515924913543

`(A169724(n+1)-5)/4`
-/

namespace A155607.P17102295515924913543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169724 (n + 1) - 5 : ℚ) / 4

end

end A155607.P17102295515924913543

namespace A155607

/-- `(A169724(n+1)-5)/4` -/
def P17102295515924913543.Spec : Prop :=
  ∀ n, P17102295515924913543.a n = (A155607 n : ℚ)

end A155607

/-! ## A155607.P8473546119571752697

`abs(1-A032124(2*n+1))`
-/

namespace A155607.P8473546119571752697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A032124 (2 * n + 1)|

end

end A155607.P8473546119571752697

namespace A155607

/-- `abs(1-A032124(2*n+1))` -/
def P8473546119571752697.Spec : Prop :=
  ∀ n, P8473546119571752697.a n = A155607 n

end A155607

/-! ## A155607.P4496880021016220299

`(A074610(n)-1)%A074621(n)`
-/

namespace A155607.P4496880021016220299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074610 n - 1) (A074621 n)

end

end A155607.P4496880021016220299

namespace A155607

/-- `(A074610(n)-1)%A074621(n)` -/
def P4496880021016220299.Spec : Prop :=
  ∀ n, P4496880021016220299.a n = A155607 n

end A155607

/-! ## A155607.P4498215864961344350

`record[A074610(val(A036561(n), 3))-1]`
-/

namespace A155607.P4498215864961344350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074610 (SequenceMachineLib.valuation (A036561 n).toNat 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155607.P4498215864961344350

namespace A155607

/-- `record[A074610(val(A036561(n), 3))-1]` -/
def P4498215864961344350.Spec : Prop :=
  ∀ n, P4498215864961344350.a n = A155607 n

end A155607

/-!
# A155608: a(n) = 10^n + 3^n - 1.

The programs for A155608, the canonical program `A155608.P13306753782237281724` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155608 has offset 0).

The definition of A155608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+3^n-1` (program `A155608.P13306753782237281724`, by `A155608.P13306753782237281724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155608.P13306753782237281724

`10^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155608

/-- `10^n+3^n-1` -/
def P13306753782237281724.Spec : Prop :=
  ∀ n, P13306753782237281724.a n = A155608 n

theorem P13306753782237281724.correct : P13306753782237281724.Spec := by
  intro n
  simp only [A155608]

end A155608

/-! ## A155608.P10059189453456988690

`abs(1-A245806(n))`
-/

namespace A155608.P10059189453456988690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A245806 n|

end

end A155608.P10059189453456988690

namespace A155608

/-- `abs(1-A245806(n))` -/
def P10059189453456988690.Spec : Prop :=
  ∀ n, P10059189453456988690.a n = A155608 n

end A155608

/-! ## A155608.P18047299813743205006

`abs(10^n-(1-A000244(n)))`
-/

namespace A155608.P18047299813743205006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - (1 - A000244 n)|

end

end A155608.P18047299813743205006

namespace A155608

/-- `abs(10^n-(1-A000244(n)))` -/
def P18047299813743205006.Spec : Prop :=
  ∀ n, P18047299813743205006.a n = A155608 n

end A155608

/-! ## A155608.P441734658374416638

`record[A245806(A025581(n))-1]`
-/

namespace A155608.P441734658374416638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245806 (A025581 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155608.P441734658374416638

namespace A155608

/-- `record[A245806(A025581(n))-1]` -/
def P441734658374416638.Spec : Prop :=
  ∀ n, P441734658374416638.a n = A155608 n

end A155608

/-! ## A155608.P1249463324816458840

`Δ[A003462(n)+A002275(n)-n]`
-/

namespace A155608.P1249463324816458840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A002275 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155608.P1249463324816458840

namespace A155608

/-- `Δ[A003462(n)+A002275(n)-n]` -/
def P1249463324816458840.Spec : Prop :=
  ∀ n, P1249463324816458840.a n = A155608 n

end A155608

/-! ## A155608.P685013740971655600

`floor(sqrt(A001019(n))+A011557(n)-1)`
-/

namespace A155608.P685013740971655600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001019 n : ℝ) + (A011557 n - 1 : ℝ)⌋

end

end A155608.P685013740971655600

namespace A155608

/-- `floor(sqrt(A001019(n))+A011557(n)-1)` -/
def P685013740971655600.Spec : Prop :=
  ∀ n, P685013740971655600.a n = A155608 n

end A155608

/-! ## A155608.P16992248765614994520

`Δ[A007051(n)+A002275(n)+1-n]`
-/

namespace A155608.P16992248765614994520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A002275 n + (1 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155608.P16992248765614994520

namespace A155608

/-- `Δ[A007051(n)+A002275(n)+1-n]` -/
def P16992248765614994520.Spec : Prop :=
  ∀ n, P16992248765614994520.a n = A155608 n

end A155608

/-! ## A155608.P12067013141656728840

`xor(A019427(A004277(n)), A245806(n))`
-/

namespace A155608.P12067013141656728840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019427 (A004277 n).toNat) (A245806 n)

end

end A155608.P12067013141656728840

namespace A155608

/-- `xor(A019427(A004277(n)), A245806(n))` -/
def P12067013141656728840.Spec : Prop :=
  ∀ n, P12067013141656728840.a n = A155608 n

end A155608

/-! ## A155608.P15252714567368255190

`abs(A245806(n)+A008683(A045326(n+1)))`
-/

namespace A155608.P15252714567368255190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245806 n + A008683 (A045326 (n + 1)).toNat|

end

end A155608.P15252714567368255190

namespace A155608

/-- `abs(A245806(n)+A008683(A045326(n+1)))` -/
def P15252714567368255190.Spec : Prop :=
  ∀ n, P15252714567368255190.a n = A155608 n

end A155608

/-! ## A155608.P13784362426648429567

`abs(A002283(n)+A005061(n)-A002250(n))`
-/

namespace A155608.P13784362426648429567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002283 n + (A005061 n - A002250 n)|

end

end A155608.P13784362426648429567

namespace A155608

/-- `abs(A002283(n)+A005061(n)-A002250(n))` -/
def P13784362426648429567.Spec : Prop :=
  ∀ n, P13784362426648429567.a n = A155608 n

end A155608

/-!
# A155609: a(n) = 4^n - 3^n + 1.

The programs for A155609, the canonical program `A155609.P4227555059231911855` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155609 has offset 0).

The definition of A155609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3^n+1` (program `A155609.P4227555059231911855`, by `A155609.P4227555059231911855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155609.P4227555059231911855

`4^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155609

/-- `4^n-3^n+1` -/
def P4227555059231911855.Spec : Prop :=
  ∀ n, P4227555059231911855.a n = A155609 n

theorem P4227555059231911855.correct : P4227555059231911855.Spec := by
  intro n
  simp only [A155609]

end A155609

/-! ## A155609.P17197963035521624820

`abs(xor(4^n-3^n, -1))`
-/

namespace A155609.P17197963035521624820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((4 ^ n : ℤ) - (3 ^ n : ℤ)) (-1)|

end

end A155609.P17197963035521624820

namespace A155609

/-- `abs(xor(4^n-3^n, -1))` -/
def P17197963035521624820.Spec : Prop :=
  ∀ n, P17197963035521624820.a n = A155609 n

end A155609

/-! ## A155609.P7508348451795015665

`-xor(4^n-3^n, -1)`
-/

namespace A155609.P7508348451795015665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((4 ^ n : ℤ) - (3 ^ n : ℤ)) (-1)

end

end A155609.P7508348451795015665

namespace A155609

/-- `-xor(4^n-3^n, -1)` -/
def P7508348451795015665.Spec : Prop :=
  ∀ n, P7508348451795015665.a n = A155609 n

end A155609

/-! ## A155609.P6025922595181958369

`abs(4^n-3^n-cos(-π))`
-/

namespace A155609.P6025922595181958369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((4 ^ n : ℤ) - (3 ^ n : ℤ) : ℝ) - Real.cos (-Real.pi)|

end

end A155609.P6025922595181958369

namespace A155609

/-- `abs(4^n-3^n-cos(-π))` -/
def P6025922595181958369.Spec : Prop :=
  ∀ n, P6025922595181958369.a n = (A155609 n : ℝ)

end A155609

/-! ## A155609.P6093995492886699451

`root(A005061(n)+1, 2)²`
-/

namespace A155609.P6093995492886699451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A005061 n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A155609.P6093995492886699451

namespace A155609

/-- `root(A005061(n)+1, 2)²` -/
def P6093995492886699451.Spec : Prop :=
  ∀ n, P6093995492886699451.a n = (A155609 n : ℝ)

end A155609

/-! ## A155609.P9892689952998581261

`abs(3^n-A052539(n))`
-/

namespace A155609.P9892689952998581261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A052539 n|

end

end A155609.P9892689952998581261

namespace A155609

/-- `abs(3^n-A052539(n))` -/
def P9892689952998581261.Spec : Prop :=
  ∀ n, P9892689952998581261.a n = A155609 n

end A155609

/-! ## A155609.P14595983240959803526

`abs(A000051(2*n)-3^n)`
-/

namespace A155609.P14595983240959803526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 (2 * n) - (3 ^ n : ℤ)|

end

end A155609.P14595983240959803526

namespace A155609

/-- `abs(A000051(2*n)-3^n)` -/
def P14595983240959803526.Spec : Prop :=
  ∀ n, P14595983240959803526.a n = A155609 n

end A155609

/-! ## A155609.P9652123720375404807

`record[A167762(A014681(n))+1]`
-/

namespace A155609.P9652123720375404807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (A014681 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155609.P9652123720375404807

namespace A155609

/-- `record[A167762(A014681(n))+1]` -/
def P9652123720375404807.Spec : Prop :=
  ∀ n, P9652123720375404807.a n = A155609 n

end A155609

/-! ## A155609.P14980879582249930174

`record[A167936(A237420(n))+1]`
-/

namespace A155609.P14980879582249930174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (A237420 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155609.P14980879582249930174

namespace A155609

/-- `record[A167936(A237420(n))+1]` -/
def P14980879582249930174.Spec : Prop :=
  ∀ n, P14980879582249930174.a n = A155609 n

end A155609

/-! ## A155609.P864908469203275215

`abs(A001576(n)-A007689(n))`
-/

namespace A155609.P864908469203275215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001576 n - A007689 n|

end

end A155609.P864908469203275215

namespace A155609

/-- `abs(A001576(n)-A007689(n))` -/
def P864908469203275215.Spec : Prop :=
  ∀ n, P864908469203275215.a n = A155609 n

end A155609

/-! ## A155609.P17894350963006617268

`abs(A000302(n)-A024023(n))`
-/

namespace A155609.P17894350963006617268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A024023 n|

end

end A155609.P17894350963006617268

namespace A155609

/-- `abs(A000302(n)-A024023(n))` -/
def P17894350963006617268.Spec : Prop :=
  ∀ n, P17894350963006617268.a n = A155609 n

end A155609

/-! ## A155609.P3371812643488036441

`abs(A052539(n)-A000244(n))`
-/

namespace A155609.P3371812643488036441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052539 n - A000244 n|

end

end A155609.P3371812643488036441

namespace A155609

/-- `abs(A052539(n)-A000244(n))` -/
def P3371812643488036441.Spec : Prop :=
  ∀ n, P3371812643488036441.a n = A155609 n

end A155609

/-! ## A155609.P7524135426866518935

`record[A122803(n)-A048328(n)]`
-/

namespace A155609.P7524135426866518935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n - A048328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155609.P7524135426866518935

namespace A155609

/-- `record[A122803(n)-A048328(n)]` -/
def P7524135426866518935.Spec : Prop :=
  ∀ n, P7524135426866518935.a n = A155609 n

end A155609

/-! ## A155609.P11866336199872638094

`lcm(A005061(n)+1, A008836(n+1))`
-/

namespace A155609.P11866336199872638094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005061 n + 1) (A008836 (n + 1))

end

end A155609.P11866336199872638094

namespace A155609

/-- `lcm(A005061(n)+1, A008836(n+1))` -/
def P11866336199872638094.Spec : Prop :=
  ∀ n, (P11866336199872638094.a n : ℤ) = A155609 n

end A155609

/-! ## A155609.P4186870047939607121

`(A178675(n)-A178674(n))%A178675(n)`
-/

namespace A155609.P4186870047939607121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178675 n - A178674 n) (A178675 n)

end

end A155609.P4186870047939607121

namespace A155609

/-- `(A178675(n)-A178674(n))%A178675(n)` -/
def P4186870047939607121.Spec : Prop :=
  ∀ n, P4186870047939607121.a n = A155609 n

end A155609

/-! ## A155609.P16139674851761837956

`Δ[A162725(n)+n]`
-/

namespace A155609.P16139674851761837956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155609.P16139674851761837956

namespace A155609

/-- `Δ[A162725(n)+n]` -/
def P16139674851761837956.Spec : Prop :=
  ∀ n, P16139674851761837956.a n = A155609 n

end A155609

/-! ## A155609.P768812803162299631

`(A167762(Δ[n²])+2)/2`
-/

namespace A155609.P768812803162299631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167762 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2 : ℚ) / 2

end

end A155609.P768812803162299631

namespace A155609

/-- `(A167762(Δ[n²])+2)/2` -/
def P768812803162299631.Spec : Prop :=
  ∀ n, P768812803162299631.a n = (A155609 n : ℚ)

end A155609

/-! ## A155609.P561466323535283690

`A087289(n)%A074605(n)`
-/

namespace A155609.P561466323535283690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087289 n) (A074605 n)

end

end A155609.P561466323535283690

namespace A155609

/-- `A087289(n)%A074605(n)` -/
def P561466323535283690.Spec : Prop :=
  ∀ n, P561466323535283690.a n = A155609 n

end A155609

/-! ## A155609.P11961985890284393264

`A283070(n)%A074506(n)`
-/

namespace A155609.P11961985890284393264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283070 n) (A074506 n)

end

end A155609.P11961985890284393264

namespace A155609

/-- `A283070(n)%A074506(n)` -/
def P11961985890284393264.Spec : Prop :=
  ∀ n, P11961985890284393264.a n = A155609 n

end A155609

/-!
# A155610: a(n) = 5^n - 3^n + 1.

The programs for A155610, the canonical program `A155610.P9765612093744409874` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155610 has offset 0).

The definition of A155610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-3^n+1` (program `A155610.P9765612093744409874`, by `A155610.P9765612093744409874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155610.P9765612093744409874

`5^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155610

/-- `5^n-3^n+1` -/
def P9765612093744409874.Spec : Prop :=
  ∀ n, P9765612093744409874.a n = A155610 n

theorem P9765612093744409874.correct : P9765612093744409874.Spec := by
  intro n
  simp only [A155610]

end A155610

/-! ## A155610.P13356957174663981492

`or(1, 5^n-3^n)`
-/

namespace A155610.P13356957174663981492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((5 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A155610.P13356957174663981492

namespace A155610

/-- `or(1, 5^n-3^n)` -/
def P13356957174663981492.Spec : Prop :=
  ∀ n, P13356957174663981492.a n = A155610 n

end A155610

/-! ## A155610.P8499067062336090898

`xor(1, 5^n-3^n)`
-/

namespace A155610.P8499067062336090898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((5 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A155610.P8499067062336090898

namespace A155610

/-- `xor(1, 5^n-3^n)` -/
def P8499067062336090898.Spec : Prop :=
  ∀ n, P8499067062336090898.a n = A155610 n

end A155610

/-! ## A155610.P12346196909059881487

`-xor(-1, A005058(n))`
-/

namespace A155610.P12346196909059881487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A005058 n)

end

end A155610.P12346196909059881487

namespace A155610

/-- `-xor(-1, A005058(n))` -/
def P12346196909059881487.Spec : Prop :=
  ∀ n, P12346196909059881487.a n = A155610 n

end A155610

/-! ## A155610.P9002819836362487943

`abs(3^n-A034474(n))`
-/

namespace A155610.P9002819836362487943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A034474 n|

end

end A155610.P9002819836362487943

namespace A155610

/-- `abs(3^n-A034474(n))` -/
def P9002819836362487943.Spec : Prop :=
  ∀ n, P9002819836362487943.a n = A155610 n

end A155610

/-! ## A155610.P16201052145347282965

`abs(5^n-A024023(n))`
-/

namespace A155610.P16201052145347282965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A024023 n|

end

end A155610.P16201052145347282965

namespace A155610

/-- `abs(5^n-A024023(n))` -/
def P16201052145347282965.Spec : Prop :=
  ∀ n, P16201052145347282965.a n = A155610 n

end A155610

/-! ## A155610.P7368923565557950526

`abs(xor(1-and(2, n), 2*A005059(n)))`
-/

namespace A155610.P7368923565557950526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (1 - (Nat.land 2 n : ℤ)) (2 * A005059 n)|

end

end A155610.P7368923565557950526

namespace A155610

/-- `abs(xor(1-and(2, n), 2*A005059(n)))` -/
def P7368923565557950526.Spec : Prop :=
  ∀ n, P7368923565557950526.a n = A155610 n

end A155610

/-! ## A155610.P1067171013922133523

`abs(3^n-2^n-A155596(n))`
-/

namespace A155610.P1067171013922133523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (2 ^ n : ℤ) - A155596 n|

end

end A155610.P1067171013922133523

namespace A155610

/-- `abs(3^n-2^n-A155596(n))` -/
def P1067171013922133523.Spec : Prop :=
  ∀ n, P1067171013922133523.a n = A155610 n

end A155610

/-! ## A155610.P15595895084943848566

`abs(A135158(n)+A000051(n))`
-/

namespace A155610.P15595895084943848566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135158 n + A000051 n|

end

end A155610.P15595895084943848566

namespace A155610

/-- `abs(A135158(n)+A000051(n))` -/
def P15595895084943848566.Spec : Prop :=
  ∀ n, P15595895084943848566.a n = A155610 n

end A155610

/-! ## A155610.P8527218016231437124

`(A005058(n)+1)%A074606(n)`
-/

namespace A155610.P8527218016231437124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005058 n + 1) (A074606 n)

end

end A155610.P8527218016231437124

namespace A155610

/-- `(A005058(n)+1)%A074606(n)` -/
def P8527218016231437124.Spec : Prop :=
  ∀ n, P8527218016231437124.a n = A155610 n

end A155610

/-! ## A155610.P5663862439521532728

`abs(A024049(n)-(A024023(n)-1))`
-/

namespace A155610.P5663862439521532728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - (A024023 n - 1)|

end

end A155610.P5663862439521532728

namespace A155610

/-- `abs(A024049(n)-(A024023(n)-1))` -/
def P5663862439521532728.Spec : Prop :=
  ∀ n, P5663862439521532728.a n = A155610 n

end A155610

/-! ## A155610.P675790691114363896

`abs(xor(A005058(n), A076479(n+1)))`
-/

namespace A155610.P675790691114363896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A005058 n) (A076479 (n + 1))|

end

end A155610.P675790691114363896

namespace A155610

/-- `abs(xor(A005058(n), A076479(n+1)))` -/
def P675790691114363896.Spec : Prop :=
  ∀ n, P675790691114363896.a n = A155610 n

end A155610

/-! ## A155610.P7665722291790475418

`Δ[A007798(n)+n]`
-/

namespace A155610.P7665722291790475418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155610.P7665722291790475418

namespace A155610

/-- `Δ[A007798(n)+n]` -/
def P7665722291790475418.Spec : Prop :=
  ∀ n, P7665722291790475418.a n = A155610 n

end A155610

/-! ## A155610.P13360735697850436512

`(A074616(n)+1)%A074608(n)`
-/

namespace A155610.P13360735697850436512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 n + 1) (A074608 n)

end

end A155610.P13360735697850436512

namespace A155610

/-- `(A074616(n)+1)%A074608(n)` -/
def P13360735697850436512.Spec : Prop :=
  ∀ n, P13360735697850436512.a n = A155610 n

end A155610

/-!
# A155611: a(n) = 6^n - 3^n + 1.

The programs for A155611, the canonical program `A155611.P4139869709311765307` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155611 has offset 0).

The definition of A155611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-3^n+1` (program `A155611.P4139869709311765307`, by `A155611.P4139869709311765307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155611.P4139869709311765307

`6^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155611

/-- `6^n-3^n+1` -/
def P4139869709311765307.Spec : Prop :=
  ∀ n, P4139869709311765307.a n = A155611 n

theorem P4139869709311765307.correct : P4139869709311765307.Spec := by
  intro n
  simp only [A155611]

end A155611

/-! ## A155611.P2667374504845596727

`-xor((2^n-1)*3^n, -1)`
-/

namespace A155611.P2667374504845596727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((2 ^ n : ℤ) - 1) * (3 ^ n : ℤ)) (-1)

end

end A155611.P2667374504845596727

namespace A155611

/-- `-xor((2^n-1)*3^n, -1)` -/
def P2667374504845596727.Spec : Prop :=
  ∀ n, P2667374504845596727.a n = A155611 n

end A155611

/-! ## A155611.P15232269849669975971

`abs(3^n-A062394(n))`
-/

namespace A155611.P15232269849669975971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A062394 n|

end

end A155611.P15232269849669975971

namespace A155611

/-- `abs(3^n-A062394(n))` -/
def P15232269849669975971.Spec : Prop :=
  ∀ n, P15232269849669975971.a n = A155611 n

end A155611

/-! ## A155611.P9953029193509403230

`abs(A000400(n)-A024023(n))`
-/

namespace A155611.P9953029193509403230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A024023 n|

end

end A155611.P9953029193509403230

namespace A155611

/-- `abs(A000400(n)-A024023(n))` -/
def P9953029193509403230.Spec : Prop :=
  ∀ n, P9953029193509403230.a n = A155611 n

end A155611

/-! ## A155611.P13307366619245446910

`abs(A062394(n)-A000244(n))`
-/

namespace A155611.P13307366619245446910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n - A000244 n|

end

end A155611.P13307366619245446910

namespace A155611

/-- `abs(A062394(n)-A000244(n))` -/
def P13307366619245446910.Spec : Prop :=
  ∀ n, P13307366619245446910.a n = A155611 n

end A155611

/-! ## A155611.P11026840843285872938

`abs(1-(A034472(n)-A062394(n)))`
-/

namespace A155611.P11026840843285872938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A034472 n - A062394 n)|

end

end A155611.P11026840843285872938

namespace A155611

/-- `abs(1-(A034472(n)-A062394(n)))` -/
def P11026840843285872938.Spec : Prop :=
  ∀ n, P11026840843285872938.a n = A155611 n

end A155611

/-! ## A155611.P134080132908666229

`record[A140303(n)*A173787(n)+1]`
-/

namespace A155611.P134080132908666229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n * A173787 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155611.P134080132908666229

namespace A155611

/-- `record[A140303(n)*A173787(n)+1]` -/
def P134080132908666229.Spec : Prop :=
  ∀ n, P134080132908666229.a n = A155611 n

end A155611

/-! ## A155611.P17666924245202173001

`ceil(A212850(n+1)/6)`
-/

namespace A155611.P17666924245202173001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212850 (n + 1) : ℚ) / 6⌉

end

end A155611.P17666924245202173001

namespace A155611

/-- `ceil(A212850(n+1)/6)` -/
def P17666924245202173001.Spec : Prop :=
  ∀ n, P17666924245202173001.a n = A155611 n

end A155611

/-! ## A155611.P1219466200858129319

`C(A248225(n)+1, A248225(n))`
-/

namespace A155611.P1219466200858129319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A248225 n + 1).toNat (A248225 n).toNat

end

end A155611.P1219466200858129319

namespace A155611

/-- `C(A248225(n)+1, A248225(n))` -/
def P1219466200858129319.Spec : Prop :=
  ∀ n, (P1219466200858129319.a n : ℤ) = A155611 n

end A155611

/-! ## A155611.P8656870191957237439

`(A074619(n)+1)%A074608(n)`
-/

namespace A155611.P8656870191957237439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074619 n + 1) (A074608 n)

end

end A155611.P8656870191957237439

namespace A155611

/-- `(A074619(n)+1)%A074608(n)` -/
def P8656870191957237439.Spec : Prop :=
  ∀ n, P8656870191957237439.a n = A155611 n

end A155611

/-! ## A155611.P16401721930177255913

`(A074621(n)+1)%A074610(n)`
-/

namespace A155611.P16401721930177255913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074621 n + 1) (A074610 n)

end

end A155611.P16401721930177255913

namespace A155611

/-- `(A074621(n)+1)%A074610(n)` -/
def P16401721930177255913.Spec : Prop :=
  ∀ n, P16401721930177255913.a n = A155611 n

end A155611

/-!
# A155612: a(n) = 7^n - 3^n + 1.

The programs for A155612, the canonical program `A155612.P10463853858507807500` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155612 has offset 0).

The definition of A155612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-3^n+1` (program `A155612.P10463853858507807500`, by `A155612.P10463853858507807500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155612.P10463853858507807500

`7^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155612

/-- `7^n-3^n+1` -/
def P10463853858507807500.Spec : Prop :=
  ∀ n, P10463853858507807500.a n = A155612 n

theorem P10463853858507807500.correct : P10463853858507807500.Spec := by
  intro n
  simp only [A155612]

end A155612

/-! ## A155612.P1664966390206870112

`or(1, A190541(n))`
-/

namespace A155612.P1664966390206870112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A190541 n)

end

end A155612.P1664966390206870112

namespace A155612

/-- `or(1, A190541(n))` -/
def P1664966390206870112.Spec : Prop :=
  ∀ n, P1664966390206870112.a n = A155612 n

end A155612

/-! ## A155612.P5998200996253055261

`or(1, Δ[A341590(n)])`
-/

namespace A155612.P5998200996253055261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A155612.P5998200996253055261

namespace A155612

/-- `or(1, Δ[A341590(n)])` -/
def P5998200996253055261.Spec : Prop :=
  ∀ n, P5998200996253055261.a n = A155612 n

end A155612

/-! ## A155612.P3615930673025004596

`abs(3^n-A034491(n))`
-/

namespace A155612.P3615930673025004596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A034491 n|

end

end A155612.P3615930673025004596

namespace A155612

/-- `abs(3^n-A034491(n))` -/
def P3615930673025004596.Spec : Prop :=
  ∀ n, P3615930673025004596.a n = A155612 n

end A155612

/-! ## A155612.P17736423682860975480

`abs(7^n-A024023(n))`
-/

namespace A155612.P17736423682860975480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - A024023 n|

end

end A155612.P17736423682860975480

namespace A155612

/-- `abs(7^n-A024023(n))` -/
def P17736423682860975480.Spec : Prop :=
  ∀ n, P17736423682860975480.a n = A155612 n

end A155612

/-! ## A155612.P10172570679430624346

`abs(A000420(n)-(3^n-1))`
-/

namespace A155612.P10172570679430624346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - ((3 ^ n : ℤ) - 1)|

end

end A155612.P10172570679430624346

namespace A155612

/-- `abs(A000420(n)-(3^n-1))` -/
def P10172570679430624346.Spec : Prop :=
  ∀ n, P10172570679430624346.a n = A155612 n

end A155612

/-! ## A155612.P11944500694644319659

`abs(A155598(n)-(3^n-2^n))`
-/

namespace A155612.P11944500694644319659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155598 n - ((3 ^ n : ℤ) - (2 ^ n : ℤ))|

end

end A155612.P11944500694644319659

namespace A155612

/-- `abs(A155598(n)-(3^n-2^n))` -/
def P11944500694644319659.Spec : Prop :=
  ∀ n, P11944500694644319659.a n = A155612 n

end A155612

/-! ## A155612.P7293430239429409666

`xor(A033999(n)², A190541(n))`
-/

namespace A155612.P7293430239429409666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A190541 n)

end

end A155612.P7293430239429409666

namespace A155612

/-- `xor(A033999(n)², A190541(n))` -/
def P7293430239429409666.Spec : Prop :=
  ∀ n, P7293430239429409666.a n = A155612 n

end A155612

/-! ## A155612.P2476438734780762778

`xor(A033999(2*n), A190541(n))`
-/

namespace A155612.P2476438734780762778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n)) (A190541 n)

end

end A155612.P2476438734780762778

namespace A155612

/-- `xor(A033999(2*n), A190541(n))` -/
def P2476438734780762778.Spec : Prop :=
  ∀ n, P2476438734780762778.a n = A155612 n

end A155612

/-! ## A155612.P681991521143863946

`xor(A093178(2*n), A190541(n))`
-/

namespace A155612.P681991521143863946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A093178 (2 * n)) (A190541 n)

end

end A155612.P681991521143863946

namespace A155612

/-- `xor(A093178(2*n), A190541(n))` -/
def P681991521143863946.Spec : Prop :=
  ∀ n, P681991521143863946.a n = A155612 n

end A155612

/-! ## A155612.P14166634050555997755

`or(1, Δ[A023000(n)-A003462(n)])`
-/

namespace A155612.P14166634050555997755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A155612.P14166634050555997755

namespace A155612

/-- `or(1, Δ[A023000(n)-A003462(n)])` -/
def P14166634050555997755.Spec : Prop :=
  ∀ n, P14166634050555997755.a n = A155612 n

end A155612

/-! ## A155612.P11373643034665563505

`xor(A007318(A000217(n)), A190541(n))`
-/

namespace A155612.P11373643034665563505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A190541 n)

end

end A155612.P11373643034665563505

namespace A155612

/-- `xor(A007318(A000217(n)), A190541(n))` -/
def P11373643034665563505.Spec : Prop :=
  ∀ n, P11373643034665563505.a n = A155612 n

end A155612

/-! ## A155612.P13107791450819408477

`xor(A003557(A000040(n+1)), A190541(n))`
-/

namespace A155612.P13107791450819408477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003557 (A000040 (n + 1)).toNat) (A190541 n)

end

end A155612.P13107791450819408477

namespace A155612

/-- `xor(A003557(A000040(n+1)), A190541(n))` -/
def P13107791450819408477.Spec : Prop :=
  ∀ n, P13107791450819408477.a n = A155612 n

end A155612

/-! ## A155612.P2248428830377652492

`(A190541(n)+1)*A014963(A000217(n+6))`
-/

namespace A155612.P2248428830377652492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190541 n + 1) * A014963 (A000217 (n + 6)).toNat

end

end A155612.P2248428830377652492

namespace A155612

/-- `(A190541(n)+1)*A014963(A000217(n+6))` -/
def P2248428830377652492.Spec : Prop :=
  ∀ n, P2248428830377652492.a n = A155612 n

end A155612

/-!
# A155613: a(n) = 8^n - 3^n + 1.

The programs for A155613, the canonical program `A155613.P407153293508741217` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155613 has offset 0).

The definition of A155613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-3^n+1` (program `A155613.P407153293508741217`, by `A155613.P407153293508741217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155613.P407153293508741217

`8^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155613

/-- `8^n-3^n+1` -/
def P407153293508741217.Spec : Prop :=
  ∀ n, P407153293508741217.a n = A155613 n

theorem P407153293508741217.correct : P407153293508741217.Spec := by
  intro n
  simp only [A155613]

end A155613

/-! ## A155613.P13264556528194163857

`abs(3^n-A062395(n))`
-/

namespace A155613.P13264556528194163857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A062395 n|

end

end A155613.P13264556528194163857

namespace A155613

/-- `abs(3^n-A062395(n))` -/
def P13264556528194163857.Spec : Prop :=
  ∀ n, P13264556528194163857.a n = A155613 n

end A155613

/-! ## A155613.P9437986925019192129

`abs(or(-8^n, A024023(n)))`
-/

namespace A155613.P9437986925019192129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(8 ^ n : ℤ)) (A024023 n)|

end

end A155613.P9437986925019192129

namespace A155613

/-- `abs(or(-8^n, A024023(n)))` -/
def P9437986925019192129.Spec : Prop :=
  ∀ n, P9437986925019192129.a n = A155613 n

end A155613

/-! ## A155613.P10963853901233445730

`abs(2-(3^n-A000225(3*n)))`
-/

namespace A155613.P10963853901233445730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((3 ^ n : ℤ) - A000225 (3 * n))|

end

end A155613.P10963853901233445730

namespace A155613

/-- `abs(2-(3^n-A000225(3*n)))` -/
def P10963853901233445730.Spec : Prop :=
  ∀ n, P10963853901233445730.a n = A155613 n

end A155613

/-! ## A155613.P17690044196997393960

`abs(A001018(n)-A024023(n))`
-/

namespace A155613.P17690044196997393960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A024023 n|

end

end A155613.P17690044196997393960

namespace A155613

/-- `abs(A001018(n)-A024023(n))` -/
def P17690044196997393960.Spec : Prop :=
  ∀ n, P17690044196997393960.a n = A155613 n

end A155613

/-! ## A155613.P7880182462422010371

`abs(A063481(n)-A155602(n))`
-/

namespace A155613.P7880182462422010371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063481 n - A155602 n|

end

end A155613.P7880182462422010371

namespace A155613

/-- `abs(A063481(n)-A155602(n))` -/
def P7880182462422010371.Spec : Prop :=
  ∀ n, P7880182462422010371.a n = A155613 n

end A155613

/-! ## A155613.P3352538662610888802

`abs(1-(A062395(n)-A024023(n)))`
-/

namespace A155613.P3352538662610888802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A062395 n - A024023 n)|

end

end A155613.P3352538662610888802

namespace A155613

/-- `abs(1-(A062395(n)-A024023(n)))` -/
def P3352538662610888802.Spec : Prop :=
  ∀ n, P3352538662610888802.a n = A155613 n

end A155613

/-! ## A155613.P11769700489092934995

`Δ[A023001(n)-A003462(n)+n]`
-/

namespace A155613.P11769700489092934995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A003462 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155613.P11769700489092934995

namespace A155613

/-- `Δ[A023001(n)-A003462(n)+n]` -/
def P11769700489092934995.Spec : Prop :=
  ∀ n, P11769700489092934995.a n = A155613 n

end A155613

/-! ## A155613.P2124108811276910625

`Δ[A023001(n)-A007051(n)+n]`
-/

namespace A155613.P2124108811276910625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A007051 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155613.P2124108811276910625

namespace A155613

/-- `Δ[A023001(n)-A007051(n)+n]` -/
def P2124108811276910625.Spec : Prop :=
  ∀ n, P2124108811276910625.a n = A155613 n

end A155613

/-! ## A155613.P17648383742348886981

`abs(A000079(3*n)+1-A000244(n))`
-/

namespace A155613.P17648383742348886981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (3 * n) + 1 - A000244 n|

end

end A155613.P17648383742348886981

namespace A155613

/-- `abs(A000079(3*n)+1-A000244(n))` -/
def P17648383742348886981.Spec : Prop :=
  ∀ n, P17648383742348886981.a n = A155613 n

end A155613

/-! ## A155613.P12451007407821788405

`abs(A000051(3*n)-A034472(n)+1)`
-/

namespace A155613.P12451007407821788405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 (3 * n) - A034472 n + 1|

end

end A155613.P12451007407821788405

namespace A155613

/-- `abs(A000051(3*n)-A034472(n)+1)` -/
def P12451007407821788405.Spec : Prop :=
  ∀ n, P12451007407821788405.a n = A155613 n

end A155613

/-! ## A155613.P4316849051528364644

`abs(A008683(A006093(n+1)+1)-A190543(n))`
-/

namespace A155613.P4316849051528364644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A006093 (n + 1) + 1).toNat - A190543 n|

end

end A155613.P4316849051528364644

namespace A155613

/-- `abs(A008683(A006093(n+1)+1)-A190543(n))` -/
def P4316849051528364644.Spec : Prop :=
  ∀ n, P4316849051528364644.a n = A155613 n

end A155613

/-!
# A155614: a(n) = 9^n - 3^n + 1.

The programs for A155614, the canonical program `A155614.P3819052693090646225` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155614 has offset 0).

The definition of A155614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-3^n+1` (program `A155614.P3819052693090646225`, by `A155614.P3819052693090646225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155614.P3819052693090646225

`9^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155614

/-- `9^n-3^n+1` -/
def P3819052693090646225.Spec : Prop :=
  ∀ n, P3819052693090646225.a n = A155614 n

theorem P3819052693090646225.correct : P3819052693090646225.Spec := by
  intro n
  simp only [A155614]

end A155614

/-! ## A155614.P17255569391892556346

`or(1, 2*C(3^n, 2))`
-/

namespace A155614.P17255569391892556346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (3 ^ n) 2)

end

end A155614.P17255569391892556346

namespace A155614

/-- `or(1, 2*C(3^n, 2))` -/
def P17255569391892556346.Spec : Prop :=
  ∀ n, (P17255569391892556346.a n : ℤ) = A155614 n

end A155614

/-! ## A155614.P6851713287889460997

`or(1, 9^n-3^n)`
-/

namespace A155614.P6851713287889460997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((9 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A155614.P6851713287889460997

namespace A155614

/-- `or(1, 9^n-3^n)` -/
def P6851713287889460997.Spec : Prop :=
  ∀ n, P6851713287889460997.a n = A155614 n

end A155614

/-! ## A155614.P8195590841389847576

`xor(1, (3^n-1)*3^n)`
-/

namespace A155614.P8195590841389847576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((3 ^ n : ℤ) - 1) * (3 ^ n : ℤ))

end

end A155614.P8195590841389847576

namespace A155614

/-- `xor(1, (3^n-1)*3^n)` -/
def P8195590841389847576.Spec : Prop :=
  ∀ n, P8195590841389847576.a n = A155614 n

end A155614

/-! ## A155614.P6304533030715572635

`ceil(A220978(n)/3)`
-/

namespace A155614.P6304533030715572635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220978 n : ℚ) / 3⌉

end

end A155614.P6304533030715572635

namespace A155614

/-- `ceil(A220978(n)/3)` -/
def P6304533030715572635.Spec : Prop :=
  ∀ n, P6304533030715572635.a n = A155614 n

end A155614

/-! ## A155614.P8420375792821558819

`ceil((A048473(n)/2)²)`
-/

namespace A155614.P8420375792821558819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A048473 n : ℚ) / 2) ^ 2⌉

end

end A155614.P8420375792821558819

namespace A155614

/-- `ceil((A048473(n)/2)²)` -/
def P8420375792821558819.Spec : Prop :=
  ∀ n, P8420375792821558819.a n = A155614 n

end A155614

/-! ## A155614.P11483859274448948387

`Δ[C(A003462(n), 2)+n]`
-/

namespace A155614.P11483859274448948387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003462 n).toNat 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A155614.P11483859274448948387

namespace A155614

/-- `Δ[C(A003462(n), 2)+n]` -/
def P11483859274448948387.Spec : Prop :=
  ∀ n, P11483859274448948387.a n = A155614 n

end A155614

/-! ## A155614.P12422925832631508358

`ceil((A062547(2*n)/2)²)`
-/

namespace A155614.P12422925832631508358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A062547 (2 * n) : ℚ) / 2) ^ 2⌉

end

end A155614.P12422925832631508358

namespace A155614

/-- `ceil((A062547(2*n)/2)²)` -/
def P12422925832631508358.Spec : Prop :=
  ∀ n, P12422925832631508358.a n = A155614 n

end A155614

/-! ## A155614.P10199602226359635395

`ceil((A062318(2*(n+1))/2)²)`
-/

namespace A155614.P10199602226359635395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A062318 (2 * (n + 1)) : ℚ) / 2) ^ 2⌉

end

end A155614.P10199602226359635395

namespace A155614

/-- `ceil((A062318(2*(n+1))/2)²)` -/
def P10199602226359635395.Spec : Prop :=
  ∀ n, P10199602226359635395.a n = A155614 n

end A155614

/-! ## A155614.P6734546903173172259

`round((3^n*A100774(n)+1)/2)`
-/

namespace A155614.P6734546903173172259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 ^ n : ℤ) * A100774 n + 1 : ℚ) / 2)

end

end A155614.P6734546903173172259

namespace A155614

/-- `round((3^n*A100774(n)+1)/2)` -/
def P6734546903173172259.Spec : Prop :=
  ∀ n, P6734546903173172259.a n = A155614 n

end A155614

/-! ## A155614.P8321456736148948678

`abs(A001019(n)-A024023(n))`
-/

namespace A155614.P8321456736148948678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A024023 n|

end

end A155614.P8321456736148948678

namespace A155614

/-- `abs(A001019(n)-A024023(n))` -/
def P8321456736148948678.Spec : Prop :=
  ∀ n, P8321456736148948678.a n = A155614 n

end A155614

/-! ## A155614.P747710538752353849

`Δ[A002452(n)-A003462(n)+n]`
-/

namespace A155614.P747710538752353849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A003462 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155614.P747710538752353849

namespace A155614

/-- `Δ[A002452(n)-A003462(n)+n]` -/
def P747710538752353849.Spec : Prop :=
  ∀ n, P747710538752353849.a n = A155614 n

end A155614

/-! ## A155614.P5044306498994373570

`A052919(2*n+1)%A074610(n)`
-/

namespace A155614.P5044306498994373570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052919 (2 * n + 1)) (A074610 n)

end

end A155614.P5044306498994373570

namespace A155614

/-- `A052919(2*n+1)%A074610(n)` -/
def P5044306498994373570.Spec : Prop :=
  ∀ n, P5044306498994373570.a n = A155614 n

end A155614

/-! ## A155614.P2474037195986801745

`record[1-(A098355(n)-A140303(n)²)]`
-/

namespace A155614.P2474037195986801745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A098355 n - A140303 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155614.P2474037195986801745

namespace A155614

/-- `record[1-(A098355(n)-A140303(n)²)]` -/
def P2474037195986801745.Spec : Prop :=
  ∀ n, P2474037195986801745.a n = A155614 n

end A155614

/-!
# A155615: a(n) = 10^n - 3^n + 1.

The programs for A155615, the canonical program `A155615.P2662814728954877221` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155615 has offset 0).

The definition of A155615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-3^n+1` (program `A155615.P2662814728954877221`, by `A155615.P2662814728954877221.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155615.P2662814728954877221

`10^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155615

/-- `10^n-3^n+1` -/
def P2662814728954877221.Spec : Prop :=
  ∀ n, P2662814728954877221.a n = A155615 n

theorem P2662814728954877221.correct : P2662814728954877221.Spec := by
  intro n
  simp only [A155615]

end A155615

/-! ## A155615.P2551280105326631086

`lcm(A248226(n)+1, A097807(n))`
-/

namespace A155615.P2551280105326631086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A248226 n + 1) (A097807 n)

end

end A155615.P2551280105326631086

namespace A155615

/-- `lcm(A248226(n)+1, A097807(n))` -/
def P2551280105326631086.Spec : Prop :=
  ∀ n, (P2551280105326631086.a n : ℤ) = A155615 n

end A155615

/-! ## A155615.P11880555942123016868

`∑{e}[A173555(n+1), A248226(n)+#]`
-/

namespace A155615.P11880555942123016868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248226 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A155615.P11880555942123016868

namespace A155615

/-- `∑{e}[A173555(n+1), A248226(n)+#]` -/
def P11880555942123016868.Spec : Prop :=
  ∀ n, P11880555942123016868.a n = A155615 n

end A155615

/-! ## A155615.P3666199315483544501

`∑{p}[A173555(n+1), A248226(n)-A008836(#)]`
-/

namespace A155615.P3666199315483544501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248226 n - A008836 p)

end

end A155615.P3666199315483544501

namespace A155615

/-- `∑{p}[A173555(n+1), A248226(n)-A008836(#)]` -/
def P3666199315483544501.Spec : Prop :=
  ∀ n, P3666199315483544501.a n = A155615 n

end A155615

/-! ## A155615.P8350988357309496797

`abs(3^n-A062397(n))`
-/

namespace A155615.P8350988357309496797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A062397 n|

end

end A155615.P8350988357309496797

namespace A155615

/-- `abs(3^n-A062397(n))` -/
def P8350988357309496797.Spec : Prop :=
  ∀ n, P8350988357309496797.a n = A155615 n

end A155615

/-! ## A155615.P8009979900632190731

`abs(A062397(n)-A000244(n))`
-/

namespace A155615.P8009979900632190731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062397 n - A000244 n|

end

end A155615.P8009979900632190731

namespace A155615

/-- `abs(A062397(n)-A000244(n))` -/
def P8009979900632190731.Spec : Prop :=
  ∀ n, P8009979900632190731.a n = A155615 n

end A155615

/-! ## A155615.P14025314500915218485

`Δ[A002275(n)-A003462(n)+n]`
-/

namespace A155615.P14025314500915218485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A003462 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155615.P14025314500915218485

namespace A155615

/-- `Δ[A002275(n)-A003462(n)+n]` -/
def P14025314500915218485.Spec : Prop :=
  ∀ n, P14025314500915218485.a n = A155615 n

end A155615

/-! ## A155615.P2634884118165956819

`Δ[A047855(n)-A003462(n)+n]`
-/

namespace A155615.P2634884118165956819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A003462 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155615.P2634884118165956819

namespace A155615

/-- `Δ[A047855(n)-A003462(n)+n]` -/
def P2634884118165956819.Spec : Prop :=
  ∀ n, P2634884118165956819.a n = A155615 n

end A155615

/-! ## A155615.P18040881610353275287

`∑{e}[A173554(n+1), A248226(n)+#]`
-/

namespace A155615.P18040881610353275287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248226 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A155615.P18040881610353275287

namespace A155615

/-- `∑{e}[A173554(n+1), A248226(n)+#]` -/
def P18040881610353275287.Spec : Prop :=
  ∀ n, P18040881610353275287.a n = A155615 n

end A155615

/-!
# A155616: a(n) = 5^n + 4^n - 1.

The programs for A155616, the canonical program `A155616.P3538771806995930794` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155616 has offset 0).

The definition of A155616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+4^n-1` (program `A155616.P3538771806995930794`, by `A155616.P3538771806995930794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155616.P3538771806995930794

`5^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155616

/-- `5^n+4^n-1` -/
def P3538771806995930794.Spec : Prop :=
  ∀ n, P3538771806995930794.a n = A155616 n

theorem P3538771806995930794.correct : P3538771806995930794.Spec := by
  intro n
  simp only [A155616]

end A155616

/-! ## A155616.P14604208060605139345

`xor(4^n+5^n+1, 2)`
-/

namespace A155616.P14604208060605139345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 ^ n + (5 ^ n + 1)) 2

end

end A155616.P14604208060605139345

namespace A155616

/-- `xor(4^n+5^n+1, 2)` -/
def P14604208060605139345.Spec : Prop :=
  ∀ n, (P14604208060605139345.a n : ℤ) = A155616 n

end A155616

/-! ## A155616.P14139745838424116501

`abs(1-A074611(n))`
-/

namespace A155616.P14139745838424116501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074611 n|

end

end A155616.P14139745838424116501

namespace A155616

/-- `abs(1-A074611(n))` -/
def P14139745838424116501.Spec : Prop :=
  ∀ n, P14139745838424116501.a n = A155616 n

end A155616

/-! ## A155616.P979054623328315908

`abs(2-A074511(n))`
-/

namespace A155616.P979054623328315908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074511 n|

end

end A155616.P979054623328315908

namespace A155616

/-- `abs(2-A074511(n))` -/
def P979054623328315908.Spec : Prop :=
  ∀ n, P979054623328315908.a n = A155616 n

end A155616

/-! ## A155616.P9053466796013031922

`abs(A178675(n)+A178671(n))`
-/

namespace A155616.P9053466796013031922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178675 n + A178671 n|

end

end A155616.P9053466796013031922

namespace A155616

/-- `abs(A178675(n)+A178671(n))` -/
def P9053466796013031922.Spec : Prop :=
  ∀ n, P9053466796013031922.a n = A155616 n

end A155616

/-! ## A155616.P14696175517827557649

`(2-A074511(n))*(char[A002997(n+1)]-1)`
-/

namespace A155616.P14696175517827557649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A074511 n) * (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1)

end

end A155616.P14696175517827557649

namespace A155616

/-- `(2-A074511(n))*(char[A002997(n+1)]-1)` -/
def P14696175517827557649.Spec : Prop :=
  ∀ n, P14696175517827557649.a n = A155616 n

end A155616

/-! ## A155616.P5382986316139721646

`Δ[A003463(n)+A002450(n)-n]`
-/

namespace A155616.P5382986316139721646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002450 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155616.P5382986316139721646

namespace A155616

/-- `Δ[A003463(n)+A002450(n)-n]` -/
def P5382986316139721646.Spec : Prop :=
  ∀ n, P5382986316139721646.a n = A155616 n

end A155616

/-! ## A155616.P14866295612051931029

`abs(A034491(n)-A074562(n))`
-/

namespace A155616.P14866295612051931029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A074562 n|

end

end A155616.P14866295612051931029

namespace A155616

/-- `abs(A034491(n)-A074562(n))` -/
def P14866295612051931029.Spec : Prop :=
  ∀ n, P14866295612051931029.a n = A155616 n

end A155616

/-! ## A155616.P16401827114948053560

`A074563(n)%A062395(n)`
-/

namespace A155616.P16401827114948053560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074563 n) (A062395 n)

end

end A155616.P16401827114948053560

namespace A155616

/-- `A074563(n)%A062395(n)` -/
def P16401827114948053560.Spec : Prop :=
  ∀ n, P16401827114948053560.a n = A155616 n

end A155616

/-!
# A155617: a(n) = 6^n + 4^n - 1.

The programs for A155617, the canonical program `A155617.P8052990367513638` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155617 has offset 0).

The definition of A155617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+4^n-1` (program `A155617.P8052990367513638`, by `A155617.P8052990367513638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155617.P8052990367513638

`6^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155617

/-- `6^n+4^n-1` -/
def P8052990367513638.Spec : Prop :=
  ∀ n, P8052990367513638.a n = A155617 n

theorem P8052990367513638.correct : P8052990367513638.Spec := by
  intro n
  simp only [A155617]

end A155617

/-! ## A155617.P16588568443556411796

`abs(1-A074612(n))`
-/

namespace A155617.P16588568443556411796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074612 n|

end

end A155617.P16588568443556411796

namespace A155617

/-- `abs(1-A074612(n))` -/
def P16588568443556411796.Spec : Prop :=
  ∀ n, P16588568443556411796.a n = A155617 n

end A155617

/-! ## A155617.P8607844623604034431

`abs(2-A074512(n))`
-/

namespace A155617.P8607844623604034431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074512 n|

end

end A155617.P8607844623604034431

namespace A155617

/-- `abs(2-A074512(n))` -/
def P8607844623604034431.Spec : Prop :=
  ∀ n, P8607844623604034431.a n = A155617 n

end A155617

/-! ## A155617.P3498644742732321024

`abs(2^n*A007689(n)-1)`
-/

namespace A155617.P3498644742732321024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A007689 n - 1|

end

end A155617.P3498644742732321024

namespace A155617

/-- `abs(2^n*A007689(n)-1)` -/
def P3498644742732321024.Spec : Prop :=
  ∀ n, P3498644742732321024.a n = A155617 n

end A155617

/-! ## A155617.P7164398970042141012

`record[A074612(A213714(n))-1]`
-/

namespace A155617.P7164398970042141012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074612 (A213714 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155617.P7164398970042141012

namespace A155617

/-- `record[A074612(A213714(n))-1]` -/
def P7164398970042141012.Spec : Prop :=
  ∀ n, P7164398970042141012.a n = A155617 n

end A155617

/-! ## A155617.P1831820494242658765

`record[A074612(A234017(n))-1]`
-/

namespace A155617.P1831820494242658765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074612 (A234017 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155617.P1831820494242658765

namespace A155617

/-- `record[A074612(A234017(n))-1]` -/
def P1831820494242658765.Spec : Prop :=
  ∀ n, P1831820494242658765.a n = A155617 n

end A155617

/-! ## A155617.P1493479627920469863

`abs(A000051(n)-A074533(n))`
-/

namespace A155617.P1493479627920469863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074533 n|

end

end A155617.P1493479627920469863

namespace A155617

/-- `abs(A000051(n)-A074533(n))` -/
def P1493479627920469863.Spec : Prop :=
  ∀ n, P1493479627920469863.a n = A155617 n

end A155617

/-! ## A155617.P7618513035173249403

`abs(A147975(n+1)+A074528(n))`
-/

namespace A155617.P7618513035173249403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147975 (n + 1) + A074528 n|

end

end A155617.P7618513035173249403

namespace A155617

/-- `abs(A147975(n+1)+A074528(n))` -/
def P7618513035173249403.Spec : Prop :=
  ∀ n, P7618513035173249403.a n = A155617 n

end A155617

/-! ## A155617.P8921084375366049268

`abs(A074528(n)+A137786(n)-1)`
-/

namespace A155617.P8921084375366049268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n + (A137786 n - 1)|

end

end A155617.P8921084375366049268

namespace A155617

/-- `abs(A074528(n)+A137786(n)-1)` -/
def P8921084375366049268.Spec : Prop :=
  ∀ n, P8921084375366049268.a n = A155617 n

end A155617

/-! ## A155617.P8912677113910761902

`∑[A052934(n)+Δ[A011782(n)²]]`
-/

namespace A155617.P8912677113910761902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155617.P8912677113910761902

namespace A155617

/-- `∑[A052934(n)+Δ[A011782(n)²]]` -/
def P8912677113910761902.Spec : Prop :=
  ∀ n, P8912677113910761902.a n = A155617 n

end A155617

/-! ## A155617.P11258513820117222193

`abs(A074528(n)+A155609(n)-A052548(n))`
-/

namespace A155617.P11258513820117222193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n + (A155609 n - A052548 n)|

end

end A155617.P11258513820117222193

namespace A155617

/-- `abs(A074528(n)+A155609(n)-A052548(n))` -/
def P11258513820117222193.Spec : Prop :=
  ∀ n, P11258513820117222193.a n = A155617 n

end A155617

/-! ## A155617.P1710241091803747225

`abs(A074528(n)+A155609(n)+1-A062709(n))`
-/

namespace A155617.P1710241091803747225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n + (A155609 n + 1 - A062709 n)|

end

end A155617.P1710241091803747225

namespace A155617

/-- `abs(A074528(n)+A155609(n)+1-A062709(n))` -/
def P1710241091803747225.Spec : Prop :=
  ∀ n, P1710241091803747225.a n = A155617 n

end A155617

/-! ## A155617.P6624391653668403171

`abs(A074528(n)+(A000225(n)+1)²-A001550(n))`
-/

namespace A155617.P6624391653668403171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n + ((A000225 n + 1) ^ 2 - A001550 n)|

end

end A155617.P6624391653668403171

namespace A155617

/-- `abs(A074528(n)+(A000225(n)+1)²-A001550(n))` -/
def P6624391653668403171.Spec : Prop :=
  ∀ n, P6624391653668403171.a n = A155617 n

end A155617

/-! ## A155617.P5914180352462268449

`abs(A074528(n)+A000225(2*n)+1-A001550(n))`
-/

namespace A155617.P5914180352462268449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n + (A000225 (2 * n) + 1 - A001550 n)|

end

end A155617.P5914180352462268449

namespace A155617

/-- `abs(A074528(n)+A000225(2*n)+1-A001550(n))` -/
def P5914180352462268449.Spec : Prop :=
  ∀ n, P5914180352462268449.a n = A155617 n

end A155617

/-! ## A155617.P2011077979677982451

`A074567(n)%A062396(n)`
-/

namespace A155617.P2011077979677982451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074567 n) (A062396 n)

end

end A155617.P2011077979677982451

namespace A155617

/-- `A074567(n)%A062396(n)` -/
def P2011077979677982451.Spec : Prop :=
  ∀ n, P2011077979677982451.a n = A155617 n

end A155617

/-!
# A155618: a(n) = 7^n+4^n-1^n.

The programs for A155618, the canonical program `A155618.P2580964900128294519` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155618 has offset 0).

The definition of A155618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+4^n-1` (program `A155618.P2580964900128294519`, by `A155618.P2580964900128294519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155618.P2580964900128294519

`7^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155618

/-- `7^n+4^n-1` -/
def P2580964900128294519.Spec : Prop :=
  ∀ n, P2580964900128294519.a n = A155618 n

theorem P2580964900128294519.correct : P2580964900128294519.Spec := by
  intro n
  simp only [A155618]

end A155618

/-! ## A155618.P15925809332670199674

`7^n+4^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155618.P15925809332670199674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n + 4 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155618.P15925809332670199674

namespace A155618

/-- `7^n+4^n-1^n` -/
def P15925809332670199674.Spec : Prop :=
  ∀ n, P15925809332670199674.a n = A155618 n

theorem P15925809332670199674.correct : P15925809332670199674.Spec := by
  intro n
  simp only [A155618, Nat.add_sub_cancel, A155618.P15925809332670199674.a, A155618.P2580964900128294519.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155618

/-! ## A155618.P2175646892363877193

`abs(1-A074613(n))`
-/

namespace A155618.P2175646892363877193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074613 n|

end

end A155618.P2175646892363877193

namespace A155618

/-- `abs(1-A074613(n))` -/
def P2175646892363877193.Spec : Prop :=
  ∀ n, P2175646892363877193.a n = A155618 n

end A155618

/-! ## A155618.P5195196936049719655

`abs(2-A074513(n))`
-/

namespace A155618.P5195196936049719655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074513 n|

end

end A155618.P5195196936049719655

namespace A155618

/-- `abs(2-A074513(n))` -/
def P5195196936049719655.Spec : Prop :=
  ∀ n, P5195196936049719655.a n = A155618 n

end A155618

/-! ## A155618.P8802742073986973645

`abs(A155645(n)-A248337(n))`
-/

namespace A155618.P8802742073986973645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155645 n - A248337 n|

end

end A155618.P8802742073986973645

namespace A155618

/-- `abs(A155645(n)-A248337(n))` -/
def P8802742073986973645.Spec : Prop :=
  ∀ n, P8802742073986973645.a n = A155618 n

end A155618

/-! ## A155618.P13922548607602632648

`(A074613(n)-1)%A074616(n)`
-/

namespace A155618.P13922548607602632648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074613 n - 1) (A074616 n)

end

end A155618.P13922548607602632648

namespace A155618

/-- `(A074613(n)-1)%A074616(n)` -/
def P13922548607602632648.Spec : Prop :=
  ∀ n, P13922548607602632648.a n = A155618 n

end A155618

/-! ## A155618.P13972214266036741238

`record[A074613(A053645(n+1))-1]`
-/

namespace A155618.P13972214266036741238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074613 (A053645 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155618.P13972214266036741238

namespace A155618

/-- `record[A074613(A053645(n+1))-1]` -/
def P13972214266036741238.Spec : Prop :=
  ∀ n, P13972214266036741238.a n = A155618 n

end A155618

/-! ## A155618.P5603060614271190721

`lcm(2-A074513(n), ∑[A002448(n)])`
-/

namespace A155618.P5603060614271190721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A074513 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155618.P5603060614271190721

namespace A155618

/-- `lcm(2-A074513(n), ∑[A002448(n)])` -/
def P5603060614271190721.Spec : Prop :=
  ∀ n, (P5603060614271190721.a n : ℤ) = A155618 n

end A155618

/-! ## A155618.P6008201244864701575

`Δ[A047852(n)+A047849(n)-n]`
-/

namespace A155618.P6008201244864701575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A047849 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155618.P6008201244864701575

namespace A155618

/-- `Δ[A047852(n)+A047849(n)-n]` -/
def P6008201244864701575.Spec : Prop :=
  ∀ n, P6008201244864701575.a n = A155618 n

end A155618

/-! ## A155618.P10910877455719589298

`floor(A074613(n)-(A033999(n)/2)²)`
-/

namespace A155618.P10910877455719589298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074613 n : ℚ) - ((A033999 n : ℚ) / 2) ^ 2⌋

end

end A155618.P10910877455719589298

namespace A155618

/-- `floor(A074613(n)-(A033999(n)/2)²)` -/
def P10910877455719589298.Spec : Prop :=
  ∀ n, P10910877455719589298.a n = A155618 n

end A155618

/-! ## A155618.P14961819768660289758

`abs(A059409(n)-A155655(n))`
-/

namespace A155618.P14961819768660289758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A155655 n|

end

end A155618.P14961819768660289758

namespace A155618

/-- `abs(A059409(n)-A155655(n))` -/
def P14961819768660289758.Spec : Prop :=
  ∀ n, P14961819768660289758.a n = A155618 n

end A155618

/-! ## A155618.P5176880872710496104

`abs(A118004(n)-A155656(n))`
-/

namespace A155618.P5176880872710496104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118004 n - A155656 n|

end

end A155618.P5176880872710496104

namespace A155618

/-- `abs(A118004(n)-A155656(n))` -/
def P5176880872710496104.Spec : Prop :=
  ∀ n, P5176880872710496104.a n = A155618 n

end A155618

/-!
# A155619: a(n) = 8^n+4^n-1^n.

The programs for A155619, the canonical program `A155619.P6824409757767702529` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155619 has offset 0).

The definition of A155619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+4^n-1` (program `A155619.P6824409757767702529`, by `A155619.P6824409757767702529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155619.P6824409757767702529

`8^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155619

/-- `8^n+4^n-1` -/
def P6824409757767702529.Spec : Prop :=
  ∀ n, P6824409757767702529.a n = A155619 n

theorem P6824409757767702529.correct : P6824409757767702529.Spec := by
  intro n
  simp only [A155619]

end A155619

/-! ## A155619.P6171232799634301041

`8^n+4^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155619.P6171232799634301041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 4 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155619.P6171232799634301041

namespace A155619

/-- `8^n+4^n-1^n` -/
def P6171232799634301041.Spec : Prop :=
  ∀ n, P6171232799634301041.a n = A155619 n

theorem P6171232799634301041.correct : P6171232799634301041.Spec := by
  intro n
  simp only [A155619, Nat.add_sub_cancel, A155619.P6171232799634301041.a, A155619.P6824409757767702529.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155619

/-! ## A155619.P1005256038030970952

`or(4^n-1, 8^n)`
-/

namespace A155619.P1005256038030970952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((4 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155619.P1005256038030970952

namespace A155619

/-- `or(4^n-1, 8^n)` -/
def P1005256038030970952.Spec : Prop :=
  ∀ n, P1005256038030970952.a n = A155619 n

end A155619

/-! ## A155619.P12854155313574876671

`xor(4^n-1, 8^n)`
-/

namespace A155619.P12854155313574876671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((4 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155619.P12854155313574876671

namespace A155619

/-- `xor(4^n-1, 8^n)` -/
def P12854155313574876671.Spec : Prop :=
  ∀ n, P12854155313574876671.a n = A155619 n

end A155619

/-! ## A155619.P9271711486308302914

`-xor(1, -(8^n+4^n))`
-/

namespace A155619.P9271711486308302914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(8 ^ n + 4 ^ n : ℤ))

end

end A155619.P9271711486308302914

namespace A155619

/-- `-xor(1, -(8^n+4^n))` -/
def P9271711486308302914.Spec : Prop :=
  ∀ n, P9271711486308302914.a n = A155619 n

end A155619

/-! ## A155619.P9724286498818378749

`abs(1-A063481(n))`
-/

namespace A155619.P9724286498818378749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A063481 n|

end

end A155619.P9724286498818378749

namespace A155619

/-- `abs(1-A063481(n))` -/
def P9724286498818378749.Spec : Prop :=
  ∀ n, P9724286498818378749.a n = A155619 n

end A155619

/-! ## A155619.P1098437651604991573

`abs(2-A074514(n))`
-/

namespace A155619.P1098437651604991573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074514 n|

end

end A155619.P1098437651604991573

namespace A155619

/-- `abs(2-A074514(n))` -/
def P1098437651604991573.Spec : Prop :=
  ∀ n, P1098437651604991573.a n = A155619 n

end A155619

/-! ## A155619.P2376436015397321708

`record[2*A098657(n)-1]`
-/

namespace A155619.P2376436015397321708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098657 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155619.P2376436015397321708

namespace A155619

/-- `record[2*A098657(n)-1]` -/
def P2376436015397321708.Spec : Prop :=
  ∀ n, P2376436015397321708.a n = A155619 n

end A155619

/-! ## A155619.P9609637053190414648

`record[A094014(n)+A000225(n)]`
-/

namespace A155619.P9609637053190414648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155619.P9609637053190414648

namespace A155619

/-- `record[A094014(n)+A000225(n)]` -/
def P9609637053190414648.Spec : Prop :=
  ∀ n, P9609637053190414648.a n = A155619 n

end A155619

/-! ## A155619.P5545249704346670518

`record[A094014(n)+A000079(n)-1]`
-/

namespace A155619.P5545249704346670518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n + (A000079 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155619.P5545249704346670518

namespace A155619

/-- `record[A094014(n)+A000079(n)-1]` -/
def P5545249704346670518.Spec : Prop :=
  ∀ n, P5545249704346670518.a n = A155619 n

end A155619

/-! ## A155619.P3660641750881166986

`record[A131575(3*n+1)+A000225(n)]`
-/

namespace A155619.P3660641750881166986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * n + 1) + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155619.P3660641750881166986

namespace A155619

/-- `record[A131575(3*n+1)+A000225(n)]` -/
def P3660641750881166986.Spec : Prop :=
  ∀ n, P3660641750881166986.a n = A155619 n

end A155619

/-! ## A155619.P17071810029340760593

`abs(A000079(n)²+A000079(3*n)-1)`
-/

namespace A155619.P17071810029340760593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 + A000079 (3 * n) - 1|

end

end A155619.P17071810029340760593

namespace A155619

/-- `abs(A000079(n)²+A000079(3*n)-1)` -/
def P17071810029340760593.Spec : Prop :=
  ∀ n, P17071810029340760593.a n = A155619 n

end A155619

/-! ## A155619.P4205437076195703102

`abs(A000079(2*n)+A000079(3*n)-1)`
-/

namespace A155619.P4205437076195703102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (2 * n) + A000079 (3 * n) - 1|

end

end A155619.P4205437076195703102

namespace A155619

/-- `abs(A000079(2*n)+A000079(3*n)-1)` -/
def P4205437076195703102.Spec : Prop :=
  ∀ n, P4205437076195703102.a n = A155619 n

end A155619

/-! ## A155619.P4402383171697921271

`abs(A000051(n)*A000079(n)*2^n-1)`
-/

namespace A155619.P4402383171697921271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n * A000079 n * (2 ^ n : ℤ) - 1|

end

end A155619.P4402383171697921271

namespace A155619

/-- `abs(A000051(n)*A000079(n)*2^n-1)` -/
def P4402383171697921271.Spec : Prop :=
  ∀ n, P4402383171697921271.a n = A155619 n

end A155619

/-!
# A155620: a(n) = 9^n+4^n-1.

The programs for A155620, the canonical program `A155620.P11186553698264681783` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155620 has offset 0).

The definition of A155620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+4^n-1` (program `A155620.P11186553698264681783`, by `A155620.P11186553698264681783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155620.P11186553698264681783

`9^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155620

/-- `9^n+4^n-1` -/
def P11186553698264681783.Spec : Prop :=
  ∀ n, P11186553698264681783.a n = A155620 n

theorem P11186553698264681783.correct : P11186553698264681783.Spec := by
  intro n
  simp only [A155620]

end A155620

/-! ## A155620.P13428913106979011266

`A005056(2*n)`
-/

namespace A155620.P13428913106979011266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005056 (2 * n)

end

end A155620.P13428913106979011266

namespace A155620

/-- `A005056(2*n)` -/
def P13428913106979011266.Spec : Prop :=
  ∀ n, P13428913106979011266.a n = A155620 n

end A155620

/-! ## A155620.P13583690013044665302

`xor(2, A074515(n))`
-/

namespace A155620.P13583690013044665302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A074515 n)

end

end A155620.P13583690013044665302

namespace A155620

/-- `xor(2, A074515(n))` -/
def P13583690013044665302.Spec : Prop :=
  ∀ n, P13583690013044665302.a n = A155620 n

end A155620

/-! ## A155620.P17446439048774666146

`abs(1-A074614(n))`
-/

namespace A155620.P17446439048774666146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074614 n|

end

end A155620.P17446439048774666146

namespace A155620

/-- `abs(1-A074614(n))` -/
def P17446439048774666146.Spec : Prop :=
  ∀ n, P17446439048774666146.a n = A155620 n

end A155620

/-! ## A155620.P18361819454646185932

`xor(2, A001550(2*n))`
-/

namespace A155620.P18361819454646185932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A001550 (2 * n))

end

end A155620.P18361819454646185932

namespace A155620

/-- `xor(2, A001550(2*n))` -/
def P18361819454646185932.Spec : Prop :=
  ∀ n, P18361819454646185932.a n = A155620 n

end A155620

/-! ## A155620.P10322707232562982195

`abs(A007689(2*n)-1)`
-/

namespace A155620.P10322707232562982195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007689 (2 * n) - 1|

end

end A155620.P10322707232562982195

namespace A155620

/-- `abs(A007689(2*n)-1)` -/
def P10322707232562982195.Spec : Prop :=
  ∀ n, P10322707232562982195.a n = A155620 n

end A155620

/-! ## A155620.P9096487117346350917

`record[A005056(and(n, n-1))]`
-/

namespace A155620.P9096487117346350917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005056 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155620.P9096487117346350917

namespace A155620

/-- `record[A005056(and(n, n-1))]` -/
def P9096487117346350917.Spec : Prop :=
  ∀ n, P9096487117346350917.a n = A155620 n

end A155620

/-! ## A155620.P10913247240167178259

`record[A000225(n)+(-3)^n]`
-/

namespace A155620.P10913247240167178259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155620.P10913247240167178259

namespace A155620

/-- `record[A000225(n)+(-3)^n]` -/
def P10913247240167178259.Spec : Prop :=
  ∀ n, P10913247240167178259.a n = A155620 n

end A155620

/-! ## A155620.P5668848853873727030

`abs(1-A085281(2*n+1))`
-/

namespace A155620.P5668848853873727030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A085281 (2 * n + 1)|

end

end A155620.P5668848853873727030

namespace A155620

/-- `abs(1-A085281(2*n+1))` -/
def P5668848853873727030.Spec : Prop :=
  ∀ n, P5668848853873727030.a n = A155620 n

end A155620

/-! ## A155620.P17691223506015973986

`record[A099754(n)-A165553(n)]`
-/

namespace A155620.P17691223506015973986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A165553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155620.P17691223506015973986

namespace A155620

/-- `record[A099754(n)-A165553(n)]` -/
def P17691223506015973986.Spec : Prop :=
  ∀ n, P17691223506015973986.a n = A155620 n

end A155620

/-! ## A155620.P6787784217669500515

`record[A005056(n)/A033999(n)]`
-/

namespace A155620.P6787784217669500515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005056 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155620.P6787784217669500515

namespace A155620

/-- `record[A005056(n)/A033999(n)]` -/
def P6787784217669500515.Spec : Prop :=
  ∀ n, P6787784217669500515.a n = (A155620 n : ℚ)

end A155620

/-! ## A155620.P16455467658056261324

`record[A000051(n)-Δ[A084567(n)]-2]`
-/

namespace A155620.P16455467658056261324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (f2 (n + 1) - f2 n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155620.P16455467658056261324

namespace A155620

/-- `record[A000051(n)-Δ[A084567(n)]-2]` -/
def P16455467658056261324.Spec : Prop :=
  ∀ n, P16455467658056261324.a n = A155620 n

end A155620

/-!
# A155621: a(n) = 10^n+4^n-1^n.

The programs for A155621, the canonical program `A155621.P7718991422719666676` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155621 has offset 0).

The definition of A155621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+4^n-1` (program `A155621.P7718991422719666676`, by `A155621.P7718991422719666676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155621.P7718991422719666676

`10^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155621

/-- `10^n+4^n-1` -/
def P7718991422719666676.Spec : Prop :=
  ∀ n, P7718991422719666676.a n = A155621 n

theorem P7718991422719666676.correct : P7718991422719666676.Spec := by
  intro n
  simp only [A155621]

end A155621

/-! ## A155621.P6975826660236574018

`10^n+4^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155621.P6975826660236574018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 4 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155621.P6975826660236574018

namespace A155621

/-- `10^n+4^n-1^n` -/
def P6975826660236574018.Spec : Prop :=
  ∀ n, P6975826660236574018.a n = A155621 n

theorem P6975826660236574018.correct : P6975826660236574018.Spec := by
  intro n
  simp only [A155621, Nat.add_sub_cancel, A155621.P6975826660236574018.a, A155621.P7718991422719666676.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155621

/-! ## A155621.P12392606576015528506

`abs(1-10^n-A000079(n)²)`
-/

namespace A155621.P12392606576015528506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (10 ^ n : ℤ) - A000079 n ^ 2|

end

end A155621.P12392606576015528506

namespace A155621

/-- `abs(1-10^n-A000079(n)²)` -/
def P12392606576015528506.Spec : Prop :=
  ∀ n, P12392606576015528506.a n = A155621 n

end A155621

/-! ## A155621.P18424855010321907134

`abs(A155657(n)-A190542(n))`
-/

namespace A155621.P18424855010321907134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155657 n - A190542 n|

end

end A155621.P18424855010321907134

namespace A155621

/-- `abs(A155657(n)-A190542(n))` -/
def P18424855010321907134.Spec : Prop :=
  ∀ n, P18424855010321907134.a n = A155621 n

end A155621

/-! ## A155621.P16044637793548318929

`abs(A155648(n)-A248337(n))`
-/

namespace A155621.P16044637793548318929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155648 n - A248337 n|

end

end A155621.P16044637793548318929

namespace A155621

/-- `abs(A155648(n)-A248337(n))` -/
def P16044637793548318929.Spec : Prop :=
  ∀ n, P16044637793548318929.a n = A155621 n

end A155621

/-! ## A155621.P7551140099773584607

`record[A052551(2*n)+Δ[A289404(n)]]`
-/

namespace A155621.P7551140099773584607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155621.P7551140099773584607

namespace A155621

/-- `record[A052551(2*n)+Δ[A289404(n)]]` -/
def P7551140099773584607.Spec : Prop :=
  ∀ n, P7551140099773584607.a n = A155621 n

end A155621

/-!
# A155622: a(n) = 11^n - 2^n + 1.

The programs for A155622, the canonical program `A155622.P12558102876503736983` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155622 has offset 0).

The definition of A155622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-2^n+1` (program `A155622.P12558102876503736983`, by `A155622.P12558102876503736983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155622.P12558102876503736983

`11^n-2^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155622

/-- `11^n-2^n+1` -/
def P12558102876503736983.Spec : Prop :=
  ∀ n, P12558102876503736983.a n = A155622 n

theorem P12558102876503736983.correct : P12558102876503736983.Spec := by
  intro n
  simp only [A155622]

end A155622

/-! ## A155622.P8562480523983134430

`abs(2^n-A034524(n))`
-/

namespace A155622.P8562480523983134430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034524 n|

end

end A155622.P8562480523983134430

namespace A155622

/-- `abs(2^n-A034524(n))` -/
def P8562480523983134430.Spec : Prop :=
  ∀ n, P8562480523983134430.a n = A155622 n

end A155622

/-! ## A155622.P1318194398623933811

`abs(11^n-A000225(n))`
-/

namespace A155622.P1318194398623933811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 ^ n : ℤ) - A000225 n|

end

end A155622.P1318194398623933811

namespace A155622

/-- `abs(11^n-A000225(n))` -/
def P1318194398623933811.Spec : Prop :=
  ∀ n, P1318194398623933811.a n = A155622 n

end A155622

/-! ## A155622.P1977337090362930917

`abs(2^n-1-A001020(n))`
-/

namespace A155622.P1977337090362930917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A001020 n|

end

end A155622.P1977337090362930917

namespace A155622

/-- `abs(2^n-1-A001020(n))` -/
def P1977337090362930917.Spec : Prop :=
  ∀ n, P1977337090362930917.a n = A155622 n

end A155622

/-! ## A155622.P1427151476667024491

`∑[A055276(n)-floor(2^(n-1))]`
-/

namespace A155622.P1427151476667024491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055276 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155622.P1427151476667024491

namespace A155622

/-- `∑[A055276(n)-floor(2^(n-1))]` -/
def P1427151476667024491.Spec : Prop :=
  ∀ n, P1427151476667024491.a n = A155622 n

end A155622

/-! ## A155622.P7647403470555556184

`abs(A034524(n)-A000079(n))`
-/

namespace A155622.P7647403470555556184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034524 n - A000079 n|

end

end A155622.P7647403470555556184

namespace A155622

/-- `abs(A034524(n)-A000079(n))` -/
def P7647403470555556184.Spec : Prop :=
  ∀ n, P7647403470555556184.a n = A155622 n

end A155622

/-! ## A155622.P13628558631296485762

`abs(A052944(n)-A226737(n))`
-/

namespace A155622.P13628558631296485762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052944 n - A226737 n|

end

end A155622.P13628558631296485762

namespace A155622

/-- `abs(A052944(n)-A226737(n))` -/
def P13628558631296485762.Spec : Prop :=
  ∀ n, P13628558631296485762.a n = A155622 n

end A155622

/-! ## A155622.P3385049985207155561

`lcm(A139740(n)+1, A000034(n))`
-/

namespace A155622.P3385049985207155561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139740 n + 1) (A000034 n)

end

end A155622.P3385049985207155561

namespace A155622

/-- `lcm(A139740(n)+1, A000034(n))` -/
def P3385049985207155561.Spec : Prop :=
  ∀ n, (P3385049985207155561.a n : ℤ) = A155622 n

end A155622

/-! ## A155622.P17157582812419309507

`abs(A073211(∑[n])-A000079(n))`
-/

namespace A155622.P17157582812419309507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073211 (∑ j ∈ Finset.range (n + 1), f1 j) - A000079 n|

end

end A155622.P17157582812419309507

namespace A155622

/-- `abs(A073211(∑[n])-A000079(n))` -/
def P17157582812419309507.Spec : Prop :=
  ∀ n, P17157582812419309507.a n = A155622 n

end A155622

/-! ## A155622.P14438876148319545547

`abs(A000325(n)-(A024128(n)+1))`
-/

namespace A155622.P14438876148319545547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000325 n - (A024128 n + 1)|

end

end A155622.P14438876148319545547

namespace A155622

/-- `abs(A000325(n)-(A024128(n)+1))` -/
def P14438876148319545547.Spec : Prop :=
  ∀ n, P14438876148319545547.a n = A155622 n

end A155622

/-!
# A155623: a(n) = 11^n + 3^n - 1.

The programs for A155623, the canonical program `A155623.P16047885099015280373` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155623 has offset 0).

The definition of A155623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+3^n-1` (program `A155623.P16047885099015280373`, by `A155623.P16047885099015280373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155623.P16047885099015280373

`11^n+3^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155623

/-- `11^n+3^n-1` -/
def P16047885099015280373.Spec : Prop :=
  ∀ n, P16047885099015280373.a n = A155623 n

theorem P16047885099015280373.correct : P16047885099015280373.Spec := by
  intro n
  simp only [A155623]

end A155623

/-! ## A155623.P823484563103064580

`or(1, A024127(n)+A000244(n))`
-/

namespace A155623.P823484563103064580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024127 n + A000244 n)

end

end A155623.P823484563103064580

namespace A155623

/-- `or(1, A024127(n)+A000244(n))` -/
def P823484563103064580.Spec : Prop :=
  ∀ n, P823484563103064580.a n = A155623 n

end A155623

/-! ## A155623.P15307000431583323150

`or(1, A024023(n)+A001020(n))`
-/

namespace A155623.P15307000431583323150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024023 n + A001020 n)

end

end A155623.P15307000431583323150

namespace A155623

/-- `or(1, A024023(n)+A001020(n))` -/
def P15307000431583323150.Spec : Prop :=
  ∀ n, P15307000431583323150.a n = A155623 n

end A155623

/-! ## A155623.P13401870944525041141

`xor(3, A001020(n)+A000244(n))`
-/

namespace A155623.P13401870944525041141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A001020 n + A000244 n)

end

end A155623.P13401870944525041141

namespace A155623

/-- `xor(3, A001020(n)+A000244(n))` -/
def P13401870944525041141.Spec : Prop :=
  ∀ n, P13401870944525041141.a n = A155623 n

end A155623

/-! ## A155623.P1590488807941995986

`xor(3, A155622(n)+A005056(n))`
-/

namespace A155623.P1590488807941995986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A155622 n + A005056 n)

end

end A155623.P1590488807941995986

namespace A155623

/-- `xor(3, A155622(n)+A005056(n))` -/
def P1590488807941995986.Spec : Prop :=
  ∀ n, P1590488807941995986.a n = A155623 n

end A155623

/-! ## A155623.P180576659972460320

`xor(3, A155668(n)+A155606(n))`
-/

namespace A155623.P180576659972460320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A155668 n + A155606 n)

end

end A155623.P180576659972460320

namespace A155623

/-- `xor(3, A155668(n)+A155606(n))` -/
def P180576659972460320.Spec : Prop :=
  ∀ n, P180576659972460320.a n = A155623 n

end A155623

/-! ## A155623.P10490400101013346903

`abs(A139741(n)+Δ[A024024(n)])`
-/

namespace A155623.P10490400101013346903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139741 n + (f1 (n + 1) - f1 n)|

end

end A155623.P10490400101013346903

namespace A155623

/-- `abs(A139741(n)+Δ[A024024(n)])` -/
def P10490400101013346903.Spec : Prop :=
  ∀ n, P10490400101013346903.a n = A155623 n

end A155623

/-!
# A155624: a(n) = 11^n - 3^n + 1.

The programs for A155624, the canonical program `A155624.P16256479816710775269` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155624 has offset 0).

The definition of A155624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-3^n+1` (program `A155624.P16256479816710775269`, by `A155624.P16256479816710775269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155624.P16256479816710775269

`11^n-3^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155624

/-- `11^n-3^n+1` -/
def P16256479816710775269.Spec : Prop :=
  ∀ n, P16256479816710775269.a n = A155624 n

theorem P16256479816710775269.correct : P16256479816710775269.Spec := by
  intro n
  simp only [A155624]

end A155624

/-! ## A155624.P298110298680802290

`or(1, 11^n-3^n)`
-/

namespace A155624.P298110298680802290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((11 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A155624.P298110298680802290

namespace A155624

/-- `or(1, 11^n-3^n)` -/
def P298110298680802290.Spec : Prop :=
  ∀ n, P298110298680802290.a n = A155624 n

end A155624

/-! ## A155624.P10515635698855590050

`xor(1, 11^n-3^n)`
-/

namespace A155624.P10515635698855590050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((11 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A155624.P10515635698855590050

namespace A155624

/-- `xor(1, 11^n-3^n)` -/
def P10515635698855590050.Spec : Prop :=
  ∀ n, P10515635698855590050.a n = A155624 n

end A155624

/-! ## A155624.P14282226051506424875

`abs(3^n-A034524(n))`
-/

namespace A155624.P14282226051506424875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A034524 n|

end

end A155624.P14282226051506424875

namespace A155624

/-- `abs(3^n-A034524(n))` -/
def P14282226051506424875.Spec : Prop :=
  ∀ n, P14282226051506424875.a n = A155624 n

end A155624

/-! ## A155624.P12752743809909919689

`record[A139741(A142150(n))+1]`
-/

namespace A155624.P12752743809909919689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139741 (A142150 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155624.P12752743809909919689

namespace A155624

/-- `record[A139741(A142150(n))+1]` -/
def P12752743809909919689.Spec : Prop :=
  ∀ n, P12752743809909919689.a n = A155624 n

end A155624

/-! ## A155624.P7175308381497595901

`abs(A001020(n)-A024023(n))`
-/

namespace A155624.P7175308381497595901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A024023 n|

end

end A155624.P7175308381497595901

namespace A155624

/-- `abs(A001020(n)-A024023(n))` -/
def P7175308381497595901.Spec : Prop :=
  ∀ n, P7175308381497595901.a n = A155624 n

end A155624

/-! ## A155624.P3781485917888110278

`abs(A001047(n)-A155622(n))`
-/

namespace A155624.P3781485917888110278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A155622 n|

end

end A155624.P3781485917888110278

namespace A155624

/-- `abs(A001047(n)-A155622(n))` -/
def P3781485917888110278.Spec : Prop :=
  ∀ n, P3781485917888110278.a n = A155624 n

end A155624

/-! ## A155624.P13114725512040986755

`abs(1-(A000244(n)-A001020(n)))`
-/

namespace A155624.P13114725512040986755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000244 n - A001020 n)|

end

end A155624.P13114725512040986755

namespace A155624

/-- `abs(1-(A000244(n)-A001020(n)))` -/
def P13114725512040986755.Spec : Prop :=
  ∀ n, P13114725512040986755.a n = A155624 n

end A155624

/-!
# A155625: a(n) = 11^n + 4^n - 1.

The programs for A155625, the canonical program `A155625.P4150991084897185301` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155625 has offset 0).

The definition of A155625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+4^n-1` (program `A155625.P4150991084897185301`, by `A155625.P4150991084897185301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155625.P4150991084897185301

`11^n+4^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155625

/-- `11^n+4^n-1` -/
def P4150991084897185301.Spec : Prop :=
  ∀ n, P4150991084897185301.a n = A155625 n

theorem P4150991084897185301.correct : P4150991084897185301.Spec := by
  intro n
  simp only [A155625]

end A155625

/-! ## A155625.P131678463187120515

`abs(5^n-4^n-A155638(n))`
-/

namespace A155625.P131678463187120515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (4 ^ n : ℤ) - A155638 n|

end

end A155625.P131678463187120515

namespace A155625

/-- `abs(5^n-4^n-A155638(n))` -/
def P131678463187120515.Spec : Prop :=
  ∀ n, P131678463187120515.a n = A155625 n

end A155625

/-! ## A155625.P14801579415283848420

`abs(8^n-4^n-A155665(n))`
-/

namespace A155625.P14801579415283848420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 ^ n : ℤ) - (4 ^ n : ℤ) - A155665 n|

end

end A155625.P14801579415283848420

namespace A155625

/-- `abs(8^n-4^n-A155665(n))` -/
def P14801579415283848420.Spec : Prop :=
  ∀ n, P14801579415283848420.a n = A155625 n

end A155625

/-! ## A155625.P9869450572763685632

`abs(A155649(n)-A248337(n))`
-/

namespace A155625.P9869450572763685632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155649 n - A248337 n|

end

end A155625.P9869450572763685632

namespace A155625

/-- `abs(A155649(n)-A248337(n))` -/
def P9869450572763685632.Spec : Prop :=
  ∀ n, P9869450572763685632.a n = A155625 n

end A155625

/-! ## A155625.P9705676303228137856

`abs(A155673(n)-A248338(n))`
-/

namespace A155625.P9705676303228137856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155673 n - A248338 n|

end

end A155625.P9705676303228137856

namespace A155625

/-- `abs(A155673(n)-A248338(n))` -/
def P9705676303228137856.Spec : Prop :=
  ∀ n, P9705676303228137856.a n = A155625 n

end A155625

/-! ## A155625.P17500678329566087789

`or(A155649(n)-A248337(n), A000007(n))`
-/

namespace A155625.P17500678329566087789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155649 n - A248337 n) (A000007 n)

end

end A155625.P17500678329566087789

namespace A155625

/-- `or(A155649(n)-A248337(n), A000007(n))` -/
def P17500678329566087789.Spec : Prop :=
  ∀ n, P17500678329566087789.a n = A155625 n

end A155625

/-! ## A155625.P6962580657211629336

`-(A005060(n)+A005062(n)-A155649(n))`
-/

namespace A155625.P6962580657211629336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A005060 n + (A005062 n - A155649 n))

end

end A155625.P6962580657211629336

namespace A155625

/-- `-(A005060(n)+A005062(n)-A155649(n))` -/
def P6962580657211629336.Spec : Prop :=
  ∀ n, P6962580657211629336.a n = A155625 n

theorem P6962580657211629336.correct : P6962580657211629336.Spec := by
  intro n
  simp only [A155625, Nat.add_sub_cancel, A155625.P6962580657211629336.a, A155625.P4150991084897185301.a, A005060, A005060.P7488201636543484447.a, A005062, A005062.P7032567066321491039.a, A155649, A155649.P3875628244043744796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155625

/-! ## A155625.P3162292917976833680

`(A155649(n)-A248337(n))*A007318(∑[n])`
-/

namespace A155625.P3162292917976833680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155649 n - A248337 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155625.P3162292917976833680

namespace A155625

/-- `(A155649(n)-A248337(n))*A007318(∑[n])` -/
def P3162292917976833680.Spec : Prop :=
  ∀ n, P3162292917976833680.a n = A155625 n

end A155625

/-! ## A155625.P4877847668178158343

`(A155649(n)-A248337(n))/(A000007(n+1)+1)`
-/

namespace A155625.P4877847668178158343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155649 n - A248337 n : ℚ) / (A000007 (n + 1) + 1 : ℚ)

end

end A155625.P4877847668178158343

namespace A155625

/-- `(A155649(n)-A248337(n))/(A000007(n+1)+1)` -/
def P4877847668178158343.Spec : Prop :=
  ∀ n, P4877847668178158343.a n = (A155625 n : ℚ)

theorem P4877847668178158343.correct : P4877847668178158343.Spec := by
  intro n
  simp only [A155625, Nat.add_sub_cancel, A155625.P4877847668178158343.a, A155625.P4150991084897185301.a, A000007, A000007.P6599383543502402472.a, A155649, A155649.P3875628244043744796.a, A248337, A248337.P11960930676899951942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155625

/-!
# A155626: a(n) = 5^n-4^n+1.

The programs for A155626, the canonical program `A155626.P15662545217251213159` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155626 has offset 0).

The definition of A155626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n+1` (program `A155626.P15662545217251213159`, by `A155626.P15662545217251213159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155626.P15662545217251213159

`5^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155626

/-- `5^n-4^n+1` -/
def P15662545217251213159.Spec : Prop :=
  ∀ n, P15662545217251213159.a n = A155626 n

theorem P15662545217251213159.correct : P15662545217251213159.Spec := by
  intro n
  simp only [A155626]

end A155626

/-! ## A155626.P4918644174283255473

`-xor(5^n-4^n, -1)`
-/

namespace A155626.P4918644174283255473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((5 ^ n : ℤ) - (4 ^ n : ℤ)) (-1)

end

end A155626.P4918644174283255473

namespace A155626

/-- `-xor(5^n-4^n, -1)` -/
def P4918644174283255473.Spec : Prop :=
  ∀ n, P4918644174283255473.a n = A155626 n

end A155626

/-! ## A155626.P13227366835522046030

`abs(or(1, -n)%2-(5^n-4^n))`
-/

namespace A155626.P13227366835522046030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor 1 (-(n : ℤ))) 2 - ((5 ^ n : ℤ) - (4 ^ n : ℤ))|

end

end A155626.P13227366835522046030

namespace A155626

/-- `abs(or(1, -n)%2-(5^n-4^n))` -/
def P13227366835522046030.Spec : Prop :=
  ∀ n, P13227366835522046030.a n = A155626 n

end A155626

/-! ## A155626.P3710931085162306677

`abs(xor(abs(1-n)-n, 5^n-4^n))`
-/

namespace A155626.P3710931085162306677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.xor (|1 - (n : ℤ)| - (n : ℤ)) ((5 ^ n : ℤ) - (4 ^ n : ℤ)))|

end

end A155626.P3710931085162306677

namespace A155626

/-- `abs(xor(abs(1-n)-n, 5^n-4^n))` -/
def P3710931085162306677.Spec : Prop :=
  ∀ n, P3710931085162306677.a n = A155626 n

end A155626

/-! ## A155626.P14013374732411755274

`abs(4^n-A034474(n))`
-/

namespace A155626.P14013374732411755274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A034474 n|

end

end A155626.P14013374732411755274

namespace A155626

/-- `abs(4^n-A034474(n))` -/
def P14013374732411755274.Spec : Prop :=
  ∀ n, P14013374732411755274.a n = A155626 n

end A155626

/-! ## A155626.P15376544239462693257

`abs(A024049(n)-(4^n-2))`
-/

namespace A155626.P15376544239462693257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - ((4 ^ n : ℤ) - 2)|

end

end A155626.P15376544239462693257

namespace A155626

/-- `abs(A024049(n)-(4^n-2))` -/
def P15376544239462693257.Spec : Prop :=
  ∀ n, P15376544239462693257.a n = A155626 n

end A155626

/-! ## A155626.P5887416418233737861

`abs(A000225(2*n)-5^n)`
-/

namespace A155626.P5887416418233737861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n) - (5 ^ n : ℤ)|

end

end A155626.P5887416418233737861

namespace A155626

/-- `abs(A000225(2*n)-5^n)` -/
def P5887416418233737861.Spec : Prop :=
  ∀ n, P5887416418233737861.a n = A155626 n

end A155626

/-! ## A155626.P9262933768336723629

`abs(A137787(n)+A001550(n))`
-/

namespace A155626.P9262933768336723629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137787 n + A001550 n|

end

end A155626.P9262933768336723629

namespace A155626

/-- `abs(A137787(n)+A001550(n))` -/
def P9262933768336723629.Spec : Prop :=
  ∀ n, P9262933768336723629.a n = A155626 n

end A155626

/-! ## A155626.P1097617510278831463

`record[A074872(n+1)-A000225(n)]`
-/

namespace A155626.P1097617510278831463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155626.P1097617510278831463

namespace A155626

/-- `record[A074872(n+1)-A000225(n)]` -/
def P1097617510278831463.Spec : Prop :=
  ∀ n, P1097617510278831463.a n = A155626 n

end A155626

/-! ## A155626.P7742845876898327138

`lcm(A005060(n)+1, A000079(n)%3)`
-/

namespace A155626.P7742845876898327138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005060 n + 1) (Int.tmod (A000079 n) 3)

end

end A155626.P7742845876898327138

namespace A155626

/-- `lcm(A005060(n)+1, A000079(n)%3)` -/
def P7742845876898327138.Spec : Prop :=
  ∀ n, (P7742845876898327138.a n : ℤ) = A155626 n

end A155626

/-! ## A155626.P16487685687302118476

`record[5^A004526(n)-(A000051(n)-2)]`
-/

namespace A155626.P16487685687302118476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A004526 n : ℤ) - (A000051 n - 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155626.P16487685687302118476

namespace A155626

/-- `record[5^A004526(n)-(A000051(n)-2)]` -/
def P16487685687302118476.Spec : Prop :=
  ∀ n, P16487685687302118476.a n = (A155626 n : ℚ)

end A155626

/-! ## A155626.P11913099401037449219

`(A005060(n)+1)*A000035(2*n+1)`
-/

namespace A155626.P11913099401037449219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005060 n + 1) * A000035 (2 * n + 1)

end

end A155626.P11913099401037449219

namespace A155626

/-- `(A005060(n)+1)*A000035(2*n+1)` -/
def P11913099401037449219.Spec : Prop :=
  ∀ n, P11913099401037449219.a n = A155626 n

end A155626

/-! ## A155626.P17964486006528521644

`(A005060(n)+1)*A007318(floor(2/(n+1)))`
-/

namespace A155626.P17964486006528521644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005060 n + 1) * A007318 ⌊2 / (n + 1 : ℚ)⌋.toNat

end

end A155626.P17964486006528521644

namespace A155626

/-- `(A005060(n)+1)*A007318(floor(2/(n+1)))` -/
def P17964486006528521644.Spec : Prop :=
  ∀ n, P17964486006528521644.a n = A155626 n

end A155626

/-! ## A155626.P3357168971810807677

`gcd(A005060(n)+1, A001281(floor(2/(n+1))))`
-/

namespace A155626.P3357168971810807677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005060 n + 1) (A001281 ⌊2 / (n + 1 : ℚ)⌋.toNat)

end

end A155626.P3357168971810807677

namespace A155626

/-- `gcd(A005060(n)+1, A001281(floor(2/(n+1))))` -/
def P3357168971810807677.Spec : Prop :=
  ∀ n, (P3357168971810807677.a n : ℤ) = A155626 n

end A155626

/-! ## A155626.P14754489170312463341

`(A178676(n)-A178675(n))%A178676(n)`
-/

namespace A155626.P14754489170312463341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178676 n - A178675 n) (A178676 n)

end

end A155626.P14754489170312463341

namespace A155626

/-- `(A178676(n)-A178675(n))%A178676(n)` -/
def P14754489170312463341.Spec : Prop :=
  ∀ n, P14754489170312463341.a n = A155626 n

end A155626

/-! ## A155626.P1816123601022183018

`abs(A074516(n)-A074612(n))`
-/

namespace A155626.P1816123601022183018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074516 n - A074612 n|

end

end A155626.P1816123601022183018

namespace A155626

/-- `abs(A074516(n)-A074612(n))` -/
def P1816123601022183018.Spec : Prop :=
  ∀ n, P1816123601022183018.a n = A155626 n

end A155626

/-! ## A155626.P17083364548768257413

`(A074553(n)+1)%A074550(n)`
-/

namespace A155626.P17083364548768257413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074553 n + 1) (A074550 n)

end

end A155626.P17083364548768257413

namespace A155626

/-- `(A074553(n)+1)%A074550(n)` -/
def P17083364548768257413.Spec : Prop :=
  ∀ n, P17083364548768257413.a n = A155626 n

end A155626

/-! ## A155626.P2279481357833846644

`(A248343(n)+A000079(n))/A000079(n)`
-/

namespace A155626.P2279481357833846644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248343 n + A000079 n : ℚ) / (A000079 n : ℚ)

end

end A155626.P2279481357833846644

namespace A155626

/-- `(A248343(n)+A000079(n))/A000079(n)` -/
def P2279481357833846644.Spec : Prop :=
  ∀ n, P2279481357833846644.a n = (A155626 n : ℚ)

end A155626

/-!
# A155627: a(n) = 6^n - 4^n + 1.

The programs for A155627, the canonical program `A155627.P2601845973844573657` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155627 has offset 0).

The definition of A155627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-4^n+1` (program `A155627.P2601845973844573657`, by `A155627.P2601845973844573657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155627.P2601845973844573657

`6^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155627

/-- `6^n-4^n+1` -/
def P2601845973844573657.Spec : Prop :=
  ∀ n, P2601845973844573657.a n = A155627 n

theorem P2601845973844573657.correct : P2601845973844573657.Spec := by
  intro n
  simp only [A155627]

end A155627

/-! ## A155627.P12321656080554597189

`or(1, 6^n-4^n)`
-/

namespace A155627.P12321656080554597189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((6 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A155627.P12321656080554597189

namespace A155627

/-- `or(1, 6^n-4^n)` -/
def P12321656080554597189.Spec : Prop :=
  ∀ n, P12321656080554597189.a n = A155627 n

end A155627

/-! ## A155627.P7311680657480312794

`xor(1, 6^n-4^n)`
-/

namespace A155627.P7311680657480312794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((6 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A155627.P7311680657480312794

namespace A155627

/-- `xor(1, 6^n-4^n)` -/
def P7311680657480312794.Spec : Prop :=
  ∀ n, P7311680657480312794.a n = A155627 n

end A155627

/-! ## A155627.P11494789377094398461

`abs(4^n-A062394(n))`
-/

namespace A155627.P11494789377094398461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A062394 n|

end

end A155627.P11494789377094398461

namespace A155627

/-- `abs(4^n-A062394(n))` -/
def P11494789377094398461.Spec : Prop :=
  ∀ n, P11494789377094398461.a n = A155627 n

end A155627

/-! ## A155627.P13017649102492484800

`abs(A000225(2*n)-6^n)`
-/

namespace A155627.P13017649102492484800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n) - (6 ^ n : ℤ)|

end

end A155627.P13017649102492484800

namespace A155627

/-- `abs(A000225(2*n)-6^n)` -/
def P13017649102492484800.Spec : Prop :=
  ∀ n, P13017649102492484800.a n = A155627 n

end A155627

/-! ## A155627.P5077293830354066873

`lcm(A248337(n)+1, A097807(n))`
-/

namespace A155627.P5077293830354066873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A248337 n + 1) (A097807 n)

end

end A155627.P5077293830354066873

namespace A155627

/-- `lcm(A248337(n)+1, A097807(n))` -/
def P5077293830354066873.Spec : Prop :=
  ∀ n, (P5077293830354066873.a n : ℤ) = A155627 n

end A155627

/-! ## A155627.P15888125106737324645

`∑[A052934(n)-Δ[A011782(n)²]]`
-/

namespace A155627.P15888125106737324645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155627.P15888125106737324645

namespace A155627

/-- `∑[A052934(n)-Δ[A011782(n)²]]` -/
def P15888125106737324645.Spec : Prop :=
  ∀ n, P15888125106737324645.a n = A155627 n

end A155627

/-! ## A155627.P13308167247239575388

`∑{e}[A173555(n+1), A248337(n)+#]`
-/

namespace A155627.P13308167247239575388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248337 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A155627.P13308167247239575388

namespace A155627

/-- `∑{e}[A173555(n+1), A248337(n)+#]` -/
def P13308167247239575388.Spec : Prop :=
  ∀ n, P13308167247239575388.a n = A155627 n

end A155627

/-! ## A155627.P13231366191777563905

`round(A248337(n)+A000124(n)/A014206(n))`
-/

namespace A155627.P13231366191777563905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248337 n : ℚ) + (A000124 n : ℚ) / (A014206 n : ℚ))

end

end A155627.P13231366191777563905

namespace A155627

/-- `round(A248337(n)+A000124(n)/A014206(n))` -/
def P13231366191777563905.Spec : Prop :=
  ∀ n, P13231366191777563905.a n = A155627 n

end A155627

/-! ## A155627.P9511333160479788937

`∑{p}[A173555(n+1), A248337(n)-A008836(#)]`
-/

namespace A155627.P9511333160479788937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248337 n - A008836 p)

end

end A155627.P9511333160479788937

namespace A155627

/-- `∑{p}[A173555(n+1), A248337(n)-A008836(#)]` -/
def P9511333160479788937.Spec : Prop :=
  ∀ n, P9511333160479788937.a n = A155627 n

end A155627

/-!
# A155628: a(n) = 7^n-4^n+1^n.

The programs for A155628, the canonical program `A155628.P17536054583565940502` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155628 has offset 0).

The definition of A155628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-4^n+1` (program `A155628.P17536054583565940502`, by `A155628.P17536054583565940502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155628.P17536054583565940502

`7^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155628

/-- `7^n-4^n+1` -/
def P17536054583565940502.Spec : Prop :=
  ∀ n, P17536054583565940502.a n = A155628 n

theorem P17536054583565940502.correct : P17536054583565940502.Spec := by
  intro n
  simp only [A155628]

end A155628

/-! ## A155628.P9263139135712983407

`7^n-4^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155628.P9263139135712983407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - (4 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155628.P9263139135712983407

namespace A155628

/-- `7^n-4^n+1^n` -/
def P9263139135712983407.Spec : Prop :=
  ∀ n, P9263139135712983407.a n = A155628 n

theorem P9263139135712983407.correct : P9263139135712983407.Spec := by
  intro n
  simp only [A155628, Nat.add_sub_cancel, A155628.P9263139135712983407.a, A155628.P17536054583565940502.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155628

/-! ## A155628.P1885024810305748785

`abs(4^n-A034491(n))`
-/

namespace A155628.P1885024810305748785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A034491 n|

end

end A155628.P1885024810305748785

namespace A155628

/-- `abs(4^n-A034491(n))` -/
def P1885024810305748785.Spec : Prop :=
  ∀ n, P1885024810305748785.a n = A155628 n

end A155628

/-! ## A155628.P3552370854718182716

`abs(7^n-A024036(n))`
-/

namespace A155628.P3552370854718182716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - A024036 n|

end

end A155628.P3552370854718182716

namespace A155628

/-- `abs(7^n-A024036(n))` -/
def P3552370854718182716.Spec : Prop :=
  ∀ n, P3552370854718182716.a n = A155628 n

end A155628

/-! ## A155628.P15771950608181822019

`abs(A000225(2*n)-7^n)`
-/

namespace A155628.P15771950608181822019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n) - (7 ^ n : ℤ)|

end

end A155628.P15771950608181822019

namespace A155628

/-- `abs(A000225(2*n)-7^n)` -/
def P15771950608181822019.Spec : Prop :=
  ∀ n, P15771950608181822019.a n = A155628 n

end A155628

/-! ## A155628.P12065956532122743476

`abs(A004171(n)-A074513(n))`
-/

namespace A155628.P12065956532122743476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004171 n - A074513 n|

end

end A155628.P12065956532122743476

namespace A155628

/-- `abs(A004171(n)-A074513(n))` -/
def P12065956532122743476.Spec : Prop :=
  ∀ n, P12065956532122743476.a n = A155628 n

end A155628

/-! ## A155628.P320471070627151410

`abs(A074517(n)-A074611(n))`
-/

namespace A155628.P320471070627151410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074517 n - A074611 n|

end

end A155628.P320471070627151410

namespace A155628

/-- `abs(A074517(n)-A074611(n))` -/
def P320471070627151410.Spec : Prop :=
  ∀ n, P320471070627151410.a n = A155628 n

end A155628

/-! ## A155628.P2239798884102512305

`abs(1-(A155602(n)-A155605(n)))`
-/

namespace A155628.P2239798884102512305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155602 n - A155605 n)|

end

end A155628.P2239798884102512305

namespace A155628

/-- `abs(1-(A155602(n)-A155605(n)))` -/
def P2239798884102512305.Spec : Prop :=
  ∀ n, P2239798884102512305.a n = A155628 n

end A155628

/-! ## A155628.P8213859218757460747

`abs(1-(A000079(n)²-A000420(n)))`
-/

namespace A155628.P8213859218757460747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000079 n ^ 2 - A000420 n)|

end

end A155628.P8213859218757460747

namespace A155628

/-- `abs(1-(A000079(n)²-A000420(n)))` -/
def P8213859218757460747.Spec : Prop :=
  ∀ n, P8213859218757460747.a n = A155628 n

end A155628

/-! ## A155628.P3388920328774118786

`round(A190542(n)+A000124(n)/A014206(n))`
-/

namespace A155628.P3388920328774118786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A190542 n : ℚ) + (A000124 n : ℚ) / (A014206 n : ℚ))

end

end A155628.P3388920328774118786

namespace A155628

/-- `round(A190542(n)+A000124(n)/A014206(n))` -/
def P3388920328774118786.Spec : Prop :=
  ∀ n, P3388920328774118786.a n = A155628 n

end A155628

/-! ## A155628.P17086732334660536396

`A074523(n)%A063481(n)`
-/

namespace A155628.P17086732334660536396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074523 n) (A063481 n)

end

end A155628.P17086732334660536396

namespace A155628

/-- `A074523(n)%A063481(n)` -/
def P17086732334660536396.Spec : Prop :=
  ∀ n, P17086732334660536396.a n = A155628 n

end A155628

/-! ## A155628.P7442254384943456240

`abs(A016177(n)-A155629(n))`
-/

namespace A155628.P7442254384943456240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016177 n - A155629 n|

end

end A155628.P7442254384943456240

namespace A155628

/-- `abs(A016177(n)-A155629(n))` -/
def P7442254384943456240.Spec : Prop :=
  ∀ n, P7442254384943456240.a n = A155628 n

end A155628

/-! ## A155628.P9895586974908876491

`(A074580(n)+1)%A074570(n)`
-/

namespace A155628.P9895586974908876491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074580 n + 1) (A074570 n)

end

end A155628.P9895586974908876491

namespace A155628

/-- `(A074580(n)+1)%A074570(n)` -/
def P9895586974908876491.Spec : Prop :=
  ∀ n, P9895586974908876491.a n = A155628 n

end A155628

/-! ## A155628.P12794009956896784850

`(A074623(n)+2)%A074515(n)`
-/

namespace A155628.P12794009956896784850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074623 n + 2) (A074515 n)

end

end A155628.P12794009956896784850

namespace A155628

/-- `(A074623(n)+2)%A074515(n)` -/
def P12794009956896784850.Spec : Prop :=
  ∀ n, P12794009956896784850.a n = A155628 n

end A155628

/-!
# A155629: a(n) = 8^n - 4^n + 1.

The programs for A155629, the canonical program `A155629.P17056317773748712834` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155629 has offset 0).

The definition of A155629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-4^n+1` (program `A155629.P17056317773748712834`, by `A155629.P17056317773748712834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155629.P17056317773748712834

`8^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155629

/-- `8^n-4^n+1` -/
def P17056317773748712834.Spec : Prop :=
  ∀ n, P17056317773748712834.a n = A155629 n

theorem P17056317773748712834.correct : P17056317773748712834.Spec := by
  intro n
  simp only [A155629]

end A155629

/-! ## A155629.P10584720605323257975

`or(1, 8^n-4^n)`
-/

namespace A155629.P10584720605323257975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((8 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A155629.P10584720605323257975

namespace A155629

/-- `or(1, 8^n-4^n)` -/
def P10584720605323257975.Spec : Prop :=
  ∀ n, P10584720605323257975.a n = A155629 n

end A155629

/-! ## A155629.P5614305974712880957

`xor(1, 8^n-4^n)`
-/

namespace A155629.P5614305974712880957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((8 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A155629.P5614305974712880957

namespace A155629

/-- `xor(1, 8^n-4^n)` -/
def P5614305974712880957.Spec : Prop :=
  ∀ n, P5614305974712880957.a n = A155629 n

end A155629

/-! ## A155629.P13402497402574293837

`record[1-2*A098656(n)]`
-/

namespace A155629.P13402497402574293837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A098656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155629.P13402497402574293837

namespace A155629

/-- `record[1-2*A098656(n)]` -/
def P13402497402574293837.Spec : Prop :=
  ∀ n, P13402497402574293837.a n = A155629 n

end A155629

/-! ## A155629.P17736032937429480016

`abs(A000302(n)-A062395(n))`
-/

namespace A155629.P17736032937429480016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A062395 n|

end

end A155629.P17736032937429480016

namespace A155629

/-- `abs(A000302(n)-A062395(n))` -/
def P17736032937429480016.Spec : Prop :=
  ∀ n, P17736032937429480016.a n = A155629 n

end A155629

/-! ## A155629.P4308546133260202398

`and(-A020515(n), A155599(n))`
-/

namespace A155629.P4308546133260202398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A020515 n) (A155599 n)

end

end A155629.P4308546133260202398

namespace A155629

/-- `and(-A020515(n), A155599(n))` -/
def P4308546133260202398.Spec : Prop :=
  ∀ n, P4308546133260202398.a n = A155629 n

end A155629

/-! ## A155629.P5097638652650400612

`and(-A155619(n), A155599(n))`
-/

namespace A155629.P5097638652650400612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A155619 n) (A155599 n)

end

end A155629.P5097638652650400612

namespace A155629

/-- `and(-A155619(n), A155599(n))` -/
def P5097638652650400612.Spec : Prop :=
  ∀ n, P5097638652650400612.a n = A155629 n

end A155629

/-! ## A155629.P881629862053219253

`abs(xor(A033999(n), A059409(n)))`
-/

namespace A155629.P881629862053219253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A059409 n)|

end

end A155629.P881629862053219253

namespace A155629

/-- `abs(xor(A033999(n), A059409(n)))` -/
def P881629862053219253.Spec : Prop :=
  ∀ n, P881629862053219253.a n = A155629 n

end A155629

/-! ## A155629.P15312186761371191337

`record[A094014(n)-A000225(n)]`
-/

namespace A155629.P15312186761371191337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155629.P15312186761371191337

namespace A155629

/-- `record[A094014(n)-A000225(n)]` -/
def P15312186761371191337.Spec : Prop :=
  ∀ n, P15312186761371191337.a n = A155629 n

end A155629

/-! ## A155629.P10667404520225900467

`record[A094014(n)-(A000079(n)-1)]`
-/

namespace A155629.P10667404520225900467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n - (A000079 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155629.P10667404520225900467

namespace A155629

/-- `record[A094014(n)-(A000079(n)-1)]` -/
def P10667404520225900467.Spec : Prop :=
  ∀ n, P10667404520225900467.a n = A155629 n

end A155629

/-! ## A155629.P371184768837305036

`record[A131575(3*n+1)-A000225(n)]`
-/

namespace A155629.P371184768837305036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * n + 1) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155629.P371184768837305036

namespace A155629

/-- `record[A131575(3*n+1)-A000225(n)]` -/
def P371184768837305036.Spec : Prop :=
  ∀ n, P371184768837305036.a n = A155629 n

end A155629

/-! ## A155629.P12599536222702464460

`round(A059409(n)+A000124(n)/A014206(n))`
-/

namespace A155629.P12599536222702464460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059409 n : ℚ) + (A000124 n : ℚ) / (A014206 n : ℚ))

end

end A155629.P12599536222702464460

namespace A155629

/-- `round(A059409(n)+A000124(n)/A014206(n))` -/
def P12599536222702464460.Spec : Prop :=
  ∀ n, P12599536222702464460.a n = A155629 n

end A155629

/-!
# A155630: a(n) = 9^n-4^n+1^n.

The programs for A155630, the canonical program `A155630.P14346993196602028101` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155630 has offset 0).

The definition of A155630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-4^n+1` (program `A155630.P14346993196602028101`, by `A155630.P14346993196602028101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155630.P14346993196602028101

`9^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155630

/-- `9^n-4^n+1` -/
def P14346993196602028101.Spec : Prop :=
  ∀ n, P14346993196602028101.a n = A155630 n

theorem P14346993196602028101.correct : P14346993196602028101.Spec := by
  intro n
  simp only [A155630]

end A155630

/-! ## A155630.P3573972729682416468

`9^n-4^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155630.P3573972729682416468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - (4 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155630.P3573972729682416468

namespace A155630

/-- `9^n-4^n+1^n` -/
def P3573972729682416468.Spec : Prop :=
  ∀ n, P3573972729682416468.a n = A155630 n

theorem P3573972729682416468.correct : P3573972729682416468.Spec := by
  intro n
  simp only [A155630, Nat.add_sub_cancel, A155630.P3573972729682416468.a, A155630.P14346993196602028101.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155630

/-! ## A155630.P17188160633928908699

`A083323(2*n)`
-/

namespace A155630.P17188160633928908699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 (2 * n)

end

end A155630.P17188160633928908699

namespace A155630

/-- `A083323(2*n)` -/
def P17188160633928908699.Spec : Prop :=
  ∀ n, P17188160633928908699.a n = A155630 n

end A155630

/-! ## A155630.P2761209370192620341

`ceil(A002783(2*n)/2)`
-/

namespace A155630.P2761209370192620341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 (2 * n) : ℚ) / 2⌉

end

end A155630.P2761209370192620341

namespace A155630

/-- `ceil(A002783(2*n)/2)` -/
def P2761209370192620341.Spec : Prop :=
  ∀ n, P2761209370192620341.a n = A155630 n

end A155630

/-! ## A155630.P15380287910152372822

`record[gcd(2, n)-A083321(n)]`
-/

namespace A155630.P15380287910152372822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - A083321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P15380287910152372822

namespace A155630

/-- `record[gcd(2, n)-A083321(n)]` -/
def P15380287910152372822.Spec : Prop :=
  ∀ n, P15380287910152372822.a n = A155630 n

end A155630

/-! ## A155630.P7928899360132280788

`record[1-Δ[A258439(n)²]]`
-/

namespace A155630.P7928899360132280788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P7928899360132280788

namespace A155630

/-- `record[1-Δ[A258439(n)²]]` -/
def P7928899360132280788.Spec : Prop :=
  ∀ n, P7928899360132280788.a n = A155630 n

end A155630

/-! ## A155630.P7663692002971855745

`record[(-3)^n-A000225(n)]`
-/

namespace A155630.P7663692002971855745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P7663692002971855745

namespace A155630

/-- `record[(-3)^n-A000225(n)]` -/
def P7663692002971855745.Spec : Prop :=
  ∀ n, P7663692002971855745.a n = A155630 n

end A155630

/-! ## A155630.P6592461836579588940

`record[A083323(n)/(-1)^n]`
-/

namespace A155630.P6592461836579588940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083323 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P6592461836579588940

namespace A155630

/-- `record[A083323(n)/(-1)^n]` -/
def P6592461836579588940.Spec : Prop :=
  ∀ n, P6592461836579588940.a n = (A155630 n : ℚ)

end A155630

/-! ## A155630.P17665161527984316858

`abs(1-(4^n-A000244(n)²))`
-/

namespace A155630.P17665161527984316858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((4 ^ n : ℤ) - A000244 n ^ 2)|

end

end A155630.P17665161527984316858

namespace A155630

/-- `abs(1-(4^n-A000244(n)²))` -/
def P17665161527984316858.Spec : Prop :=
  ∀ n, P17665161527984316858.a n = A155630 n

end A155630

/-! ## A155630.P7060953254859683560

`record[(A001047(n+1)+1)^(n%2)]`
-/

namespace A155630.P7060953254859683560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001047 (n + 1) + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P7060953254859683560

namespace A155630

/-- `record[(A001047(n+1)+1)^(n%2)]` -/
def P7060953254859683560.Spec : Prop :=
  ∀ n, P7060953254859683560.a n = A155630 n

end A155630

/-! ## A155630.P1304896712971758236

`record[A083323(A065423(n+1))]`
-/

namespace A155630.P1304896712971758236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 (A065423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P1304896712971758236

namespace A155630

/-- `record[A083323(A065423(n+1))]` -/
def P1304896712971758236.Spec : Prop :=
  ∀ n, P1304896712971758236.a n = A155630 n

end A155630

/-! ## A155630.P17065276633303719705

`abs(A000302(n)-A062396(n))`
-/

namespace A155630.P17065276633303719705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A062396 n|

end

end A155630.P17065276633303719705

namespace A155630

/-- `abs(A000302(n)-A062396(n))` -/
def P17065276633303719705.Spec : Prop :=
  ∀ n, P17065276633303719705.a n = A155630 n

end A155630

/-! ## A155630.P11907696986534154007

`record[A083323(n-A272727(n))]`
-/

namespace A155630.P11907696986534154007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 ((n : ℤ) - A272727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P11907696986534154007

namespace A155630

/-- `record[A083323(n-A272727(n))]` -/
def P11907696986534154007.Spec : Prop :=
  ∀ n, P11907696986534154007.a n = A155630 n

end A155630

/-! ## A155630.P2261563932620011183

`record[gcd(A083323(n), A272727(n))]`
-/

namespace A155630.P2261563932620011183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083323 n) (A272727 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P2261563932620011183

namespace A155630

/-- `record[gcd(A083323(n), A272727(n))]` -/
def P2261563932620011183.Spec : Prop :=
  ∀ n, (P2261563932620011183.a n : ℤ) = A155630 n

end A155630

/-! ## A155630.P7968780908484208652

`(A118004(n)+1)%A074557(n)`
-/

namespace A155630.P7968780908484208652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118004 n + 1) (A074557 n)

end

end A155630.P7968780908484208652

namespace A155630

/-- `(A118004(n)+1)%A074557(n)` -/
def P7968780908484208652.Spec : Prop :=
  ∀ n, P7968780908484208652.a n = A155630 n

end A155630

/-! ## A155630.P10256896302205471164

`abs(A074621(n)-(A074612(n)-1))`
-/

namespace A155630.P10256896302205471164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074621 n - (A074612 n - 1)|

end

end A155630.P10256896302205471164

namespace A155630

/-- `abs(A074621(n)-(A074612(n)-1))` -/
def P10256896302205471164.Spec : Prop :=
  ∀ n, P10256896302205471164.a n = A155630 n

end A155630

/-! ## A155630.P17560825960205315068

`record[(A024023(n)-A000225(n))*char[2*(n+1)]+1]`
-/

namespace A155630.P17560825960205315068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n - A000225 n) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P17560825960205315068

namespace A155630

/-- `record[(A024023(n)-A000225(n))*char[2*(n+1)]+1]` -/
def P17560825960205315068.Spec : Prop :=
  ∀ n, P17560825960205315068.a n = A155630 n

end A155630

/-! ## A155630.P7495921689091483397

`record[A083323(A253580(n)+A253580(n))]`
-/

namespace A155630.P7495921689091483397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 (A253580 n + A253580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155630.P7495921689091483397

namespace A155630

/-- `record[A083323(A253580(n)+A253580(n))]` -/
def P7495921689091483397.Spec : Prop :=
  ∀ n, P7495921689091483397.a n = A155630 n

end A155630

/-! ## A155630.P18019051660941668726

`round(A118004(n)+A000124(n)/A014206(n))`
-/

namespace A155630.P18019051660941668726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A118004 n : ℚ) + (A000124 n : ℚ) / (A014206 n : ℚ))

end

end A155630.P18019051660941668726

namespace A155630

/-- `round(A118004(n)+A000124(n)/A014206(n))` -/
def P18019051660941668726.Spec : Prop :=
  ∀ n, P18019051660941668726.a n = A155630 n

end A155630

/-!
# A155631: a(n) = 10^n-4^n+1^n.

The programs for A155631, the canonical program `A155631.P17677516081677848682` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155631 has offset 0).

The definition of A155631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-4^n+1` (program `A155631.P17677516081677848682`, by `A155631.P17677516081677848682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155631.P17677516081677848682

`10^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155631

/-- `10^n-4^n+1` -/
def P17677516081677848682.Spec : Prop :=
  ∀ n, P17677516081677848682.a n = A155631 n

theorem P17677516081677848682.correct : P17677516081677848682.Spec := by
  intro n
  simp only [A155631]

end A155631

/-! ## A155631.P10035499303855367294

`10^n-4^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155631.P10035499303855367294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - (4 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155631.P10035499303855367294

namespace A155631

/-- `10^n-4^n+1^n` -/
def P10035499303855367294.Spec : Prop :=
  ∀ n, P10035499303855367294.a n = A155631 n

theorem P10035499303855367294.correct : P10035499303855367294.Spec := by
  intro n
  simp only [A155631, Nat.add_sub_cancel, A155631.P10035499303855367294.a, A155631.P17677516081677848682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155631

/-! ## A155631.P16718448457739956250

`or(1, 10^n-4^n)`
-/

namespace A155631.P16718448457739956250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((10 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A155631.P16718448457739956250

namespace A155631

/-- `or(1, 10^n-4^n)` -/
def P16718448457739956250.Spec : Prop :=
  ∀ n, P16718448457739956250.a n = A155631 n

end A155631

/-! ## A155631.P14469351331276693103

`xor(1, 10^n-4^n)`
-/

namespace A155631.P14469351331276693103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((10 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A155631.P14469351331276693103

namespace A155631

/-- `xor(1, 10^n-4^n)` -/
def P14469351331276693103.Spec : Prop :=
  ∀ n, P14469351331276693103.a n = A155631 n

end A155631

/-! ## A155631.P3316460887638382505

`abs(4^n-A062397(n))`
-/

namespace A155631.P3316460887638382505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A062397 n|

end

end A155631.P3316460887638382505

namespace A155631

/-- `abs(4^n-A062397(n))` -/
def P3316460887638382505.Spec : Prop :=
  ∀ n, P3316460887638382505.a n = A155631 n

end A155631

/-!
# A155632: a(n) = 11^n - 4^n + 1^n.

The programs for A155632, the canonical program `A155632.P14821206359780032722` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155632 has offset 0).

The definition of A155632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-4^n+1` (program `A155632.P14821206359780032722`, by `A155632.P14821206359780032722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155632.P14821206359780032722

`11^n-4^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155632

/-- `11^n-4^n+1` -/
def P14821206359780032722.Spec : Prop :=
  ∀ n, P14821206359780032722.a n = A155632 n

theorem P14821206359780032722.correct : P14821206359780032722.Spec := by
  intro n
  simp only [A155632]

end A155632

/-! ## A155632.P1621353175793946141

`11^n-4^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155632.P1621353175793946141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) - (4 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155632.P1621353175793946141

namespace A155632

/-- `11^n-4^n+1^n` -/
def P1621353175793946141.Spec : Prop :=
  ∀ n, P1621353175793946141.a n = A155632 n

theorem P1621353175793946141.correct : P1621353175793946141.Spec := by
  intro n
  simp only [A155632, Nat.add_sub_cancel, A155632.P1621353175793946141.a, A155632.P14821206359780032722.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155632

/-! ## A155632.P7897043096419664230

`abs(11^n-A024036(n))`
-/

namespace A155632.P7897043096419664230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 ^ n : ℤ) - A024036 n|

end

end A155632.P7897043096419664230

namespace A155632

/-- `abs(11^n-A024036(n))` -/
def P7897043096419664230.Spec : Prop :=
  ∀ n, P7897043096419664230.a n = A155632 n

end A155632

/-! ## A155632.P1537997806094850164

`abs(A000225(2*n)-11^n)`
-/

namespace A155632.P1537997806094850164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n) - (11 ^ n : ℤ)|

end

end A155632.P1537997806094850164

namespace A155632

/-- `abs(A000225(2*n)-11^n)` -/
def P1537997806094850164.Spec : Prop :=
  ∀ n, P1537997806094850164.a n = A155632 n

end A155632

/-! ## A155632.P14606417241584318606

`record[A139742(A142150(n))+1]`
-/

namespace A155632.P14606417241584318606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139742 (A142150 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155632.P14606417241584318606

namespace A155632

/-- `record[A139742(A142150(n))+1]` -/
def P14606417241584318606.Spec : Prop :=
  ∀ n, P14606417241584318606.a n = A155632 n

end A155632

/-! ## A155632.P14775211416489183701

`abs(A000302(n)-A034524(n))`
-/

namespace A155632.P14775211416489183701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A034524 n|

end

end A155632.P14775211416489183701

namespace A155632

/-- `abs(A000302(n)-A034524(n))` -/
def P14775211416489183701.Spec : Prop :=
  ∀ n, P14775211416489183701.a n = A155632 n

end A155632

/-! ## A155632.P5457238438296820326

`abs(A073211(∑[n])-A000302(n))`
-/

namespace A155632.P5457238438296820326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073211 (∑ j ∈ Finset.range (n + 1), f1 j) - A000302 n|

end

end A155632.P5457238438296820326

namespace A155632

/-- `abs(A073211(∑[n])-A000302(n))` -/
def P5457238438296820326.Spec : Prop :=
  ∀ n, P5457238438296820326.a n = A155632 n

end A155632

/-! ## A155632.P7429282199769021565

`abs(A034524(n)-A052539(n)+1)`
-/

namespace A155632.P7429282199769021565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034524 n - A052539 n + 1|

end

end A155632.P7429282199769021565

namespace A155632

/-- `abs(A034524(n)-A052539(n)+1)` -/
def P7429282199769021565.Spec : Prop :=
  ∀ n, P7429282199769021565.a n = A155632 n

end A155632

/-! ## A155632.P2004841383093238487

`abs(1-(A024040(n)-A024131(n)))`
-/

namespace A155632.P2004841383093238487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A024040 n - A024131 n)|

end

end A155632.P2004841383093238487

namespace A155632

/-- `abs(1-(A024040(n)-A024131(n)))` -/
def P2004841383093238487.Spec : Prop :=
  ∀ n, P2004841383093238487.a n = A155632 n

end A155632

/-! ## A155632.P7519307545748511545

`abs(A001020(n)-A000225(2*n))`
-/

namespace A155632.P7519307545748511545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A000225 (2 * n)|

end

end A155632.P7519307545748511545

namespace A155632

/-- `abs(A001020(n)-A000225(2*n))` -/
def P7519307545748511545.Spec : Prop :=
  ∀ n, P7519307545748511545.a n = A155632 n

end A155632

/-!
# A155633: a(n) = 6^n + 5^n - 1.

The programs for A155633, the canonical program `A155633.P12303946002347409890` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155633 has offset 0).

The definition of A155633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+5^n-1` (program `A155633.P12303946002347409890`, by `A155633.P12303946002347409890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155633.P12303946002347409890

`6^n+5^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155633

/-- `6^n+5^n-1` -/
def P12303946002347409890.Spec : Prop :=
  ∀ n, P12303946002347409890.a n = A155633 n

theorem P12303946002347409890.correct : P12303946002347409890.Spec := by
  intro n
  simp only [A155633]

end A155633

/-! ## A155633.P3644452564642734356

`abs(1-A074615(n))`
-/

namespace A155633.P3644452564642734356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074615 n|

end

end A155633.P3644452564642734356

namespace A155633

/-- `abs(1-A074615(n))` -/
def P3644452564642734356.Spec : Prop :=
  ∀ n, P3644452564642734356.a n = A155633 n

end A155633

/-! ## A155633.P15639030434014879679

`abs(2-A074516(n))`
-/

namespace A155633.P15639030434014879679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074516 n|

end

end A155633.P15639030434014879679

namespace A155633

/-- `abs(2-A074516(n))` -/
def P15639030434014879679.Spec : Prop :=
  ∀ n, P15639030434014879679.a n = A155633 n

end A155633

/-! ## A155633.P16983417194777515230

`abs(A001579(n)-A034472(n))`
-/

namespace A155633.P16983417194777515230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001579 n - A034472 n|

end

end A155633.P16983417194777515230

namespace A155633

/-- `abs(A001579(n)-A034472(n))` -/
def P16983417194777515230.Spec : Prop :=
  ∀ n, P16983417194777515230.a n = A155633 n

end A155633

/-! ## A155633.P9589255176600637095

`Δ[A003464(n)+A003463(n)-n]`
-/

namespace A155633.P9589255176600637095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A003463 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155633.P9589255176600637095

namespace A155633

/-- `Δ[A003464(n)+A003463(n)-n]` -/
def P9589255176600637095.Spec : Prop :=
  ∀ n, P9589255176600637095.a n = A155633 n

end A155633

/-! ## A155633.P12674164974055807491

`abs(A074619(n)-A155640(n))`
-/

namespace A155633.P12674164974055807491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074619 n - A155640 n|

end

end A155633.P12674164974055807491

namespace A155633

/-- `abs(A074619(n)-A155640(n))` -/
def P12674164974055807491.Spec : Prop :=
  ∀ n, P12674164974055807491.a n = A155633 n

end A155633

/-! ## A155633.P4004872229579398166

`abs(A074617(n)-A155651(n))`
-/

namespace A155633.P4004872229579398166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074617 n - A155651 n|

end

end A155633.P4004872229579398166

namespace A155633

/-- `abs(A074617(n)-A155651(n))` -/
def P4004872229579398166.Spec : Prop :=
  ∀ n, P4004872229579398166.a n = A155633 n

end A155633

/-! ## A155633.P164673205628876558

`abs(A155646(n)-A191468(n))`
-/

namespace A155633.P164673205628876558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155646 n - A191468 n|

end

end A155633.P164673205628876558

namespace A155633

/-- `abs(A155646(n)-A191468(n))` -/
def P164673205628876558.Spec : Prop :=
  ∀ n, P164673205628876558.a n = A155633 n

end A155633

/-! ## A155633.P14512547442796969013

`abs(A139743(n)-A155649(n))`
-/

namespace A155633.P14512547442796969013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139743 n - A155649 n|

end

end A155633.P14512547442796969013

namespace A155633

/-- `abs(A139743(n)-A155649(n))` -/
def P14512547442796969013.Spec : Prop :=
  ∀ n, P14512547442796969013.a n = A155633 n

end A155633

/-!
# A155634: a(n) = 7^n + 5^n - 1.

The programs for A155634, the canonical program `A155634.P18372646461217167884` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155634 has offset 0).

The definition of A155634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+5^n-1` (program `A155634.P18372646461217167884`, by `A155634.P18372646461217167884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155634.P18372646461217167884

`7^n+5^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155634

/-- `7^n+5^n-1` -/
def P18372646461217167884.Spec : Prop :=
  ∀ n, P18372646461217167884.a n = A155634 n

theorem P18372646461217167884.correct : P18372646461217167884.Spec := by
  intro n
  simp only [A155634]

end A155634

/-! ## A155634.P290007403656792699

`abs(1-A074616(n))`
-/

namespace A155634.P290007403656792699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074616 n|

end

end A155634.P290007403656792699

namespace A155634

/-- `abs(1-A074616(n))` -/
def P290007403656792699.Spec : Prop :=
  ∀ n, P290007403656792699.a n = A155634 n

end A155634

/-! ## A155634.P5390153312196459023

`abs(2-A074517(n))`
-/

namespace A155634.P5390153312196459023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074517 n|

end

end A155634.P5390153312196459023

namespace A155634

/-- `abs(2-A074517(n))` -/
def P5390153312196459023.Spec : Prop :=
  ∀ n, P5390153312196459023.a n = A155634 n

end A155634

/-! ## A155634.P5314107098920374829

`abs(A062394(n)-A074571(n))`
-/

namespace A155634.P5314107098920374829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n - A074571 n|

end

end A155634.P5314107098920374829

namespace A155634

/-- `abs(A062394(n)-A074571(n))` -/
def P5314107098920374829.Spec : Prop :=
  ∀ n, P5314107098920374829.a n = A155634 n

end A155634

/-! ## A155634.P3597157283420633449

`abs(A074619(n)-A155639(n))`
-/

namespace A155634.P3597157283420633449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074619 n - A155639 n|

end

end A155634.P3597157283420633449

namespace A155634

/-- `abs(A074619(n)-A155639(n))` -/
def P3597157283420633449.Spec : Prop :=
  ∀ n, P3597157283420633449.a n = A155634 n

end A155634

/-! ## A155634.P16753511465285482570

`xor(1, A024075(n)+A024049(n))`
-/

namespace A155634.P16753511465285482570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A024075 n + A024049 n)

end

end A155634.P16753511465285482570

namespace A155634

/-- `xor(1, A024075(n)+A024049(n))` -/
def P16753511465285482570.Spec : Prop :=
  ∀ n, P16753511465285482570.a n = A155634 n

end A155634

/-! ## A155634.P2509336129081292263

`xor(5, A034491(n)+A034474(n))`
-/

namespace A155634.P2509336129081292263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A034491 n + A034474 n)

end

end A155634.P2509336129081292263

namespace A155634

/-- `xor(5, A034491(n)+A034474(n))` -/
def P2509336129081292263.Spec : Prop :=
  ∀ n, P2509336129081292263.a n = A155634 n

end A155634

/-! ## A155634.P14363992109467950748

`or(A024075(n)+A000351(n), char[3*n])`
-/

namespace A155634.P14363992109467950748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024075 n + A000351 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A155634.P14363992109467950748

namespace A155634

/-- `or(A024075(n)+A000351(n), char[3*n])` -/
def P14363992109467950748.Spec : Prop :=
  ∀ n, P14363992109467950748.a n = A155634 n

end A155634

/-! ## A155634.P9934963241871010450

`abs(A155655(n)-A191468(n))`
-/

namespace A155634.P9934963241871010450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155655 n - A191468 n|

end

end A155634.P9934963241871010450

namespace A155634

/-- `abs(A155655(n)-A191468(n))` -/
def P9934963241871010450.Spec : Prop :=
  ∀ n, P9934963241871010450.a n = A155634 n

end A155634

/-! ## A155634.P396357736674214637

`(A074616(n)-1)%A063481(n)`
-/

namespace A155634.P396357736674214637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 n - 1) (A063481 n)

end

end A155634.P396357736674214637

namespace A155634

/-- `(A074616(n)-1)%A063481(n)` -/
def P396357736674214637.Spec : Prop :=
  ∀ n, P396357736674214637.a n = A155634 n

end A155634

/-! ## A155634.P17859281332074599859

`or(1, A155635(n)-A155659(n))`
-/

namespace A155634.P17859281332074599859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155635 n - A155659 n)

end

end A155634.P17859281332074599859

namespace A155634

/-- `or(1, A155635(n)-A155659(n))` -/
def P17859281332074599859.Spec : Prop :=
  ∀ n, P17859281332074599859.a n = A155634 n

end A155634

/-! ## A155634.P11876781751579235493

`abs(A155636(n)-A191467(n))`
-/

namespace A155634.P11876781751579235493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155636 n - A191467 n|

end

end A155634.P11876781751579235493

namespace A155634

/-- `abs(A155636(n)-A191467(n))` -/
def P11876781751579235493.Spec : Prop :=
  ∀ n, P11876781751579235493.a n = A155634 n

end A155634

/-!
# A155635: a(n) = 8^n+5^n-1.

The programs for A155635, the canonical program `A155635.P566891527964621299` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155635 has offset 0).

The definition of A155635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+5^n-1` (program `A155635.P566891527964621299`, by `A155635.P566891527964621299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155635.P566891527964621299

`8^n+5^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155635

/-- `8^n+5^n-1` -/
def P566891527964621299.Spec : Prop :=
  ∀ n, P566891527964621299.a n = A155635 n

theorem P566891527964621299.correct : P566891527964621299.Spec := by
  intro n
  simp only [A155635]

end A155635

/-! ## A155635.P12820276048772858254

`xor(1, xor(5^n, 8^n))`
-/

namespace A155635.P12820276048772858254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor (5 ^ n) (8 ^ n))

end

end A155635.P12820276048772858254

namespace A155635

/-- `xor(1, xor(5^n, 8^n))` -/
def P12820276048772858254.Spec : Prop :=
  ∀ n, (P12820276048772858254.a n : ℤ) = A155635 n

end A155635

/-! ## A155635.P9857407909328890378

`abs(1-A074617(n))`
-/

namespace A155635.P9857407909328890378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074617 n|

end

end A155635.P9857407909328890378

namespace A155635

/-- `abs(1-A074617(n))` -/
def P9857407909328890378.Spec : Prop :=
  ∀ n, P9857407909328890378.a n = A155635 n

end A155635

/-! ## A155635.P6058379825512645136

`abs(2-A074518(n))`
-/

namespace A155635.P6058379825512645136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074518 n|

end

end A155635.P6058379825512645136

namespace A155635

/-- `abs(2-A074518(n))` -/
def P6058379825512645136.Spec : Prop :=
  ∀ n, P6058379825512645136.a n = A155635 n

end A155635

/-! ## A155635.P87540142416214396

`or(8^n, A024049(n))`
-/

namespace A155635.P87540142416214396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) (A024049 n)

end

end A155635.P87540142416214396

namespace A155635

/-- `or(8^n, A024049(n))` -/
def P87540142416214396.Spec : Prop :=
  ∀ n, P87540142416214396.a n = A155635 n

end A155635

/-! ## A155635.P13744418243343898094

`abs(A034491(n)-A074574(n))`
-/

namespace A155635.P13744418243343898094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A074574 n|

end

end A155635.P13744418243343898094

namespace A155635

/-- `abs(A034491(n)-A074574(n))` -/
def P13744418243343898094.Spec : Prop :=
  ∀ n, P13744418243343898094.a n = A155635 n

end A155635

/-! ## A155635.P13766817836409314999

`abs(A121213(n)-A155655(n))`
-/

namespace A155635.P13766817836409314999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121213 n - A155655 n|

end

end A155635.P13766817836409314999

namespace A155635

/-- `abs(A121213(n)-A155655(n))` -/
def P13766817836409314999.Spec : Prop :=
  ∀ n, P13766817836409314999.a n = A155635 n

end A155635

/-! ## A155635.P13584843312613385346

`or(Δ[A023001(n)], A103455(n))`
-/

namespace A155635.P13584843312613385346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A103455 n)

end

end A155635.P13584843312613385346

namespace A155635

/-- `or(Δ[A023001(n)], A103455(n))` -/
def P13584843312613385346.Spec : Prop :=
  ∀ n, P13584843312613385346.a n = A155635 n

end A155635

/-! ## A155635.P6245111755133201781

`Δ[A047853(n)+A003463(n)-n]`
-/

namespace A155635.P6245111755133201781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n + A003463 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155635.P6245111755133201781

namespace A155635

/-- `Δ[A047853(n)+A003463(n)-n]` -/
def P6245111755133201781.Spec : Prop :=
  ∀ n, P6245111755133201781.a n = A155635 n

end A155635

/-! ## A155635.P10129606622732233325

`Δ[A047850(n)+A023001(n)-n]`
-/

namespace A155635.P10129606622732233325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + A023001 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155635.P10129606622732233325

namespace A155635

/-- `Δ[A047850(n)+A023001(n)-n]` -/
def P10129606622732233325.Spec : Prop :=
  ∀ n, P10129606622732233325.a n = A155635 n

end A155635

/-! ## A155635.P8720657286762857293

`Δ[A001478(n+1)+A047853(n)+A003463(n)]`
-/

namespace A155635.P8720657286762857293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A047853 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155635.P8720657286762857293

namespace A155635

/-- `Δ[A001478(n+1)+A047853(n)+A003463(n)]` -/
def P8720657286762857293.Spec : Prop :=
  ∀ n, P8720657286762857293.a n = A155635 n

end A155635

/-!
# A155636: a(n) = 9^n + 5^n - 1.

The programs for A155636, the canonical program `A155636.P405576996140285465` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155636 has offset 0).

The definition of A155636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+5^n-1` (program `A155636.P405576996140285465`, by `A155636.P405576996140285465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155636.P405576996140285465

`9^n+5^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155636

/-- `9^n+5^n-1` -/
def P405576996140285465.Spec : Prop :=
  ∀ n, P405576996140285465.a n = A155636 n

theorem P405576996140285465.correct : P405576996140285465.Spec := by
  intro n
  simp only [A155636]

end A155636

/-! ## A155636.P3558641696468909186

`xor(3, 5^n+9^n)`
-/

namespace A155636.P3558641696468909186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 ^ n + 9 ^ n)

end

end A155636.P3558641696468909186

namespace A155636

/-- `xor(3, 5^n+9^n)` -/
def P3558641696468909186.Spec : Prop :=
  ∀ n, (P3558641696468909186.a n : ℤ) = A155636 n

end A155636

/-! ## A155636.P9987584720127794764

`abs(1-A074618(n))`
-/

namespace A155636.P9987584720127794764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074618 n|

end

end A155636.P9987584720127794764

namespace A155636

/-- `abs(1-A074618(n))` -/
def P9987584720127794764.Spec : Prop :=
  ∀ n, P9987584720127794764.a n = A155636 n

end A155636

/-! ## A155636.P15900105691985962888

`abs(2-A074519(n))`
-/

namespace A155636.P15900105691985962888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074519 n|

end

end A155636.P15900105691985962888

namespace A155636

/-- `abs(2-A074519(n))` -/
def P15900105691985962888.Spec : Prop :=
  ∀ n, P15900105691985962888.a n = A155636 n

end A155636

/-! ## A155636.P14566875447301392030

`abs(6^n-5^n-A155647(n))`
-/

namespace A155636.P14566875447301392030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (5 ^ n : ℤ) - A155647 n|

end

end A155636.P14566875447301392030

namespace A155636

/-- `abs(6^n-5^n-A155647(n))` -/
def P14566875447301392030.Spec : Prop :=
  ∀ n, P14566875447301392030.a n = A155636 n

end A155636

/-! ## A155636.P12522561002822376968

`abs(A062394(n)-A074573(n))`
-/

namespace A155636.P12522561002822376968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n - A074573 n|

end

end A155636.P12522561002822376968

namespace A155636

/-- `abs(A062394(n)-A074573(n))` -/
def P12522561002822376968.Spec : Prop :=
  ∀ n, P12522561002822376968.a n = A155636 n

end A155636

/-! ## A155636.P6812910760563171441

`abs(1-(A155596(n)+A155593(n)))`
-/

namespace A155636.P6812910760563171441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155596 n + A155593 n)|

end

end A155636.P6812910760563171441

namespace A155636

/-- `abs(1-(A155596(n)+A155593(n)))` -/
def P6812910760563171441.Spec : Prop :=
  ∀ n, P6812910760563171441.a n = A155636 n

end A155636

/-! ## A155636.P74097294786252593

`Δ[A003463(n)+A002452(n)-n]`
-/

namespace A155636.P74097294786252593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002452 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155636.P74097294786252593

namespace A155636

/-- `Δ[A003463(n)+A002452(n)-n]` -/
def P74097294786252593.Spec : Prop :=
  ∀ n, P74097294786252593.a n = A155636 n

end A155636

/-! ## A155636.P2068951395441018621

`abs(A139743(n)-A155670(n))`
-/

namespace A155636.P2068951395441018621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139743 n - A155670 n|

end

end A155636.P2068951395441018621

namespace A155636

/-- `abs(A139743(n)-A155670(n))` -/
def P2068951395441018621.Spec : Prop :=
  ∀ n, P2068951395441018621.a n = A155636 n

end A155636

/-! ## A155636.P4281349518307073736

`or(1, A155670(n)-A155644(n))`
-/

namespace A155636.P4281349518307073736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155670 n - A155644 n)

end

end A155636.P4281349518307073736

namespace A155636

/-- `or(1, A155670(n)-A155644(n))` -/
def P4281349518307073736.Spec : Prop :=
  ∀ n, P4281349518307073736.a n = A155636 n

end A155636

/-!
# A155637: a(n) = 10^n+5^n-1.

The programs for A155637, the canonical program `A155637.P6120617818258503024` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155637 has offset 0).

The definition of A155637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+5^n-1` (program `A155637.P6120617818258503024`, by `A155637.P6120617818258503024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155637.P6120617818258503024

`10^n+5^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155637

/-- `10^n+5^n-1` -/
def P6120617818258503024.Spec : Prop :=
  ∀ n, P6120617818258503024.a n = A155637 n

theorem P6120617818258503024.correct : P6120617818258503024.Spec := by
  intro n
  simp only [A155637]

end A155637

/-! ## A155637.P13329800676401225055

`xor(-(10^n+5^n), -1)`
-/

namespace A155637.P13329800676401225055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(10 ^ n + 5 ^ n : ℤ)) (-1)

end

end A155637.P13329800676401225055

namespace A155637

/-- `xor(-(10^n+5^n), -1)` -/
def P13329800676401225055.Spec : Prop :=
  ∀ n, P13329800676401225055.a n = A155637 n

end A155637

/-! ## A155637.P5506672142541647146

`abs(6^n-5^n-A155648(n))`
-/

namespace A155637.P5506672142541647146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (5 ^ n : ℤ) - A155648 n|

end

end A155637.P5506672142541647146

namespace A155637

/-- `abs(6^n-5^n-A155648(n))` -/
def P5506672142541647146.Spec : Prop :=
  ∀ n, P5506672142541647146.a n = A155637 n

end A155637

/-! ## A155637.P16199453634689757628

`abs(A155664(n)-A191468(n))`
-/

namespace A155637.P16199453634689757628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155664 n - A191468 n|

end

end A155637.P16199453634689757628

namespace A155637

/-- `abs(A155664(n)-A191468(n))` -/
def P16199453634689757628.Spec : Prop :=
  ∀ n, P16199453634689757628.a n = A155637 n

end A155637

/-! ## A155637.P8914579743287825796

`abs(A155640(n)-A245807(n))`
-/

namespace A155637.P8914579743287825796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155640 n - A245807 n|

end

end A155637.P8914579743287825796

namespace A155637

/-- `abs(A155640(n)-A245807(n))` -/
def P8914579743287825796.Spec : Prop :=
  ∀ n, P8914579743287825796.a n = A155637 n

end A155637

/-! ## A155637.P17304522512189103117

`or(A155664(n)-A191468(n), A000007(n))`
-/

namespace A155637.P17304522512189103117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155664 n - A191468 n) (A000007 n)

end

end A155637.P17304522512189103117

namespace A155637

/-- `or(A155664(n)-A191468(n), A000007(n))` -/
def P17304522512189103117.Spec : Prop :=
  ∀ n, P17304522512189103117.a n = A155637 n

end A155637

/-!
# A155638: a(n) = 11^n+5^n-1^n.

The programs for A155638, the canonical program `A155638.P1624725341817802747` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155638 has offset 0).

The definition of A155638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+5^n-1` (program `A155638.P1624725341817802747`, by `A155638.P1624725341817802747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155638.P1624725341817802747

`11^n+5^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155638

/-- `11^n+5^n-1` -/
def P1624725341817802747.Spec : Prop :=
  ∀ n, P1624725341817802747.a n = A155638 n

theorem P1624725341817802747.correct : P1624725341817802747.Spec := by
  intro n
  simp only [A155638]

end A155638

/-! ## A155638.P3626752536838199969

`11^n+5^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155638.P3626752536838199969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 5 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155638.P3626752536838199969

namespace A155638

/-- `11^n+5^n-1^n` -/
def P3626752536838199969.Spec : Prop :=
  ∀ n, P3626752536838199969.a n = A155638 n

theorem P3626752536838199969.correct : P3626752536838199969.Spec := by
  intro n
  simp only [A155638, Nat.add_sub_cancel, A155638.P3626752536838199969.a, A155638.P1624725341817802747.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155638

/-! ## A155638.P14457716728959962748

`abs(6^n-5^n-A155649(n))`
-/

namespace A155638.P14457716728959962748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (5 ^ n : ℤ) - A155649 n|

end

end A155638.P14457716728959962748

namespace A155638

/-- `abs(6^n-5^n-A155649(n))` -/
def P14457716728959962748.Spec : Prop :=
  ∀ n, P14457716728959962748.a n = A155638 n

end A155638

/-! ## A155638.P9127044952949835873

`abs(8^n-5^n-A155665(n))`
-/

namespace A155638.P9127044952949835873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 ^ n : ℤ) - (5 ^ n : ℤ) - A155665 n|

end

end A155638.P9127044952949835873

namespace A155638

/-- `abs(8^n-5^n-A155665(n))` -/
def P9127044952949835873.Spec : Prop :=
  ∀ n, P9127044952949835873.a n = A155638 n

end A155638

/-! ## A155638.P13813149573261631120

`abs(A155665(n)-A191468(n))`
-/

namespace A155638.P13813149573261631120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155665 n - A191468 n|

end

end A155638.P13813149573261631120

namespace A155638

/-- `abs(A155665(n)-A191468(n))` -/
def P13813149573261631120.Spec : Prop :=
  ∀ n, P13813149573261631120.a n = A155638 n

end A155638

/-! ## A155638.P14158322766844764338

`xor(1, A155649(n)-A155639(n))`
-/

namespace A155638.P14158322766844764338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155649 n - A155639 n)

end

end A155638.P14158322766844764338

namespace A155638

/-- `xor(1, A155649(n)-A155639(n))` -/
def P14158322766844764338.Spec : Prop :=
  ∀ n, P14158322766844764338.a n = A155638 n

end A155638

/-! ## A155638.P15588692183755133560

`-or(A005062(n)-A155649(n), A000035(n))`
-/

namespace A155638.P15588692183755133560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A005062 n - A155649 n) (A000035 n)

end

end A155638.P15588692183755133560

namespace A155638

/-- `-or(A005062(n)-A155649(n), A000035(n))` -/
def P15588692183755133560.Spec : Prop :=
  ∀ n, P15588692183755133560.a n = A155638 n

end A155638

/-! ## A155638.P17058850913101768536

`lcm(A155665(n)-A191468(n), A010892(3*n))`
-/

namespace A155638.P17058850913101768536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155665 n - A191468 n) (A010892 (3 * n))

end

end A155638.P17058850913101768536

namespace A155638

/-- `lcm(A155665(n)-A191468(n), A010892(3*n))` -/
def P17058850913101768536.Spec : Prop :=
  ∀ n, (P17058850913101768536.a n : ℤ) = A155638 n

end A155638

/-! ## A155638.P16493912283760109152

`or(A155665(n)-A191468(n), A000038(n+1))`
-/

namespace A155638.P16493912283760109152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155665 n - A191468 n) (A000038 (n + 1))

end

end A155638.P16493912283760109152

namespace A155638

/-- `or(A155665(n)-A191468(n), A000038(n+1))` -/
def P16493912283760109152.Spec : Prop :=
  ∀ n, P16493912283760109152.a n = A155638 n

end A155638

/-! ## A155638.P10868028240643708234

`gcd(A155665(n)-A191468(n), A008683(4*(n+2)))`
-/

namespace A155638.P10868028240643708234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155665 n - A191468 n) (A008683 (4 * (n + 2)))

end

end A155638.P10868028240643708234

namespace A155638

/-- `gcd(A155665(n)-A191468(n), A008683(4*(n+2)))` -/
def P10868028240643708234.Spec : Prop :=
  ∀ n, (P10868028240643708234.a n : ℤ) = A155638 n

end A155638

/-!
# A155639: a(n) = 6^n-5^n+1^n.

The programs for A155639, the canonical program `A155639.P2274321945435798070` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155639 has offset 0).

The definition of A155639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-5^n+1` (program `A155639.P2274321945435798070`, by `A155639.P2274321945435798070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155639.P2274321945435798070

`6^n-5^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155639

/-- `6^n-5^n+1` -/
def P2274321945435798070.Spec : Prop :=
  ∀ n, P2274321945435798070.a n = A155639 n

theorem P2274321945435798070.correct : P2274321945435798070.Spec := by
  intro n
  simp only [A155639]

end A155639

/-! ## A155639.P13455735678025374946

`6^n-5^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155639.P13455735678025374946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - (5 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155639.P13455735678025374946

namespace A155639

/-- `6^n-5^n+1^n` -/
def P13455735678025374946.Spec : Prop :=
  ∀ n, P13455735678025374946.a n = A155639 n

theorem P13455735678025374946.correct : P13455735678025374946.Spec := by
  intro n
  simp only [A155639, Nat.add_sub_cancel, A155639.P13455735678025374946.a, A155639.P2274321945435798070.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155639

/-! ## A155639.P7488143626107736559

`∑[A257286(floor(n/root(2, n+1)))]`
-/

namespace A155639.P7488143626107736559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 ⌊(n : ℝ) / (2 : ℝ) ^ (1 / (n + 1 : ℝ))⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155639.P7488143626107736559

namespace A155639

/-- `∑[A257286(floor(n/root(2, n+1)))]` -/
def P7488143626107736559.Spec : Prop :=
  ∀ n, P7488143626107736559.a n = A155639 n

end A155639

/-! ## A155639.P6726652812192449759

`abs(5^n-2^n-A155597(n))`
-/

namespace A155639.P6726652812192449759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (2 ^ n : ℤ) - A155597 n|

end

end A155639.P6726652812192449759

namespace A155639

/-- `abs(5^n-2^n-A155597(n))` -/
def P6726652812192449759.Spec : Prop :=
  ∀ n, P6726652812192449759.a n = A155639 n

end A155639

/-! ## A155639.P11699546754789825591

`abs(5^n-4^n-A155627(n))`
-/

namespace A155639.P11699546754789825591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (4 ^ n : ℤ) - A155627 n|

end

end A155639.P11699546754789825591

namespace A155639

/-- `abs(5^n-4^n-A155627(n))` -/
def P11699546754789825591.Spec : Prop :=
  ∀ n, P11699546754789825591.a n = A155639 n

end A155639

/-! ## A155639.P9567392330174980488

`record[A005062(A008615(n))+1]`
-/

namespace A155639.P9567392330174980488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005062 (A008615 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155639.P9567392330174980488

namespace A155639

/-- `record[A005062(A008615(n))+1]` -/
def P9567392330174980488.Spec : Prop :=
  ∀ n, P9567392330174980488.a n = A155639 n

end A155639

/-! ## A155639.P2697598927575035679

`abs(A074612(n)-A155616(n))`
-/

namespace A155639.P2697598927575035679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074612 n - A155616 n|

end

end A155639.P2697598927575035679

namespace A155639

/-- `abs(A074612(n)-A155616(n))` -/
def P2697598927575035679.Spec : Prop :=
  ∀ n, P2697598927575035679.a n = A155639 n

end A155639

/-! ## A155639.P10404968151337627484

`Δ[A003464(n)-A003463(n)+n]`
-/

namespace A155639.P10404968151337627484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n - A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155639.P10404968151337627484

namespace A155639

/-- `Δ[A003464(n)-A003463(n)+n]` -/
def P10404968151337627484.Spec : Prop :=
  ∀ n, P10404968151337627484.a n = A155639 n

end A155639

/-! ## A155639.P3169726313333390822

`∑{e}[A006530(n+2), A005062(n)+#]`
-/

namespace A155639.P3169726313333390822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A005062 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A155639.P3169726313333390822

namespace A155639

/-- `∑{e}[A006530(n+2), A005062(n)+#]` -/
def P3169726313333390822.Spec : Prop :=
  ∀ n, P3169726313333390822.a n = A155639 n

end A155639

/-! ## A155639.P17480464607247894805

`(A178681(n)-A178676(n))%A178681(n)`
-/

namespace A155639.P17480464607247894805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178681 n - A178676 n) (A178681 n)

end

end A155639.P17480464607247894805

namespace A155639

/-- `(A178681(n)-A178676(n))%A178681(n)` -/
def P17480464607247894805.Spec : Prop :=
  ∀ n, P17480464607247894805.a n = A155639 n

end A155639

/-! ## A155639.P3621967428122527864

`(A074619(n)+1)%A074616(n)`
-/

namespace A155639.P3621967428122527864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074619 n + 1) (A074616 n)

end

end A155639.P3621967428122527864

namespace A155639

/-- `(A074619(n)+1)%A074616(n)` -/
def P3621967428122527864.Spec : Prop :=
  ∀ n, P3621967428122527864.a n = A155639 n

end A155639

/-! ## A155639.P16365517558017123882

`A074521(n)%A074617(n)`
-/

namespace A155639.P16365517558017123882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074521 n) (A074617 n)

end

end A155639.P16365517558017123882

namespace A155639

/-- `A074521(n)%A074617(n)` -/
def P16365517558017123882.Spec : Prop :=
  ∀ n, P16365517558017123882.a n = A155639 n

end A155639

/-! ## A155639.P2658876128730430413

`(A074620(n)+1)%A074617(n)`
-/

namespace A155639.P2658876128730430413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074620 n + 1) (A074617 n)

end

end A155639.P2658876128730430413

namespace A155639

/-- `(A074620(n)+1)%A074617(n)` -/
def P2658876128730430413.Spec : Prop :=
  ∀ n, P2658876128730430413.a n = A155639 n

end A155639

/-!
# A155640: a(n) = 7^n - 5^n + 1^n.

The programs for A155640, the canonical program `A155640.P12133634133554210082` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155640 has offset 0).

The definition of A155640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-5^n+1` (program `A155640.P12133634133554210082`, by `A155640.P12133634133554210082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155640.P12133634133554210082

`7^n-5^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155640

/-- `7^n-5^n+1` -/
def P12133634133554210082.Spec : Prop :=
  ∀ n, P12133634133554210082.a n = A155640 n

theorem P12133634133554210082.correct : P12133634133554210082.Spec := by
  intro n
  simp only [A155640]

end A155640

/-! ## A155640.P11758601627393906581

`7^n-5^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155640.P11758601627393906581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - (5 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155640.P11758601627393906581

namespace A155640

/-- `7^n-5^n+1^n` -/
def P11758601627393906581.Spec : Prop :=
  ∀ n, P11758601627393906581.a n = A155640 n

theorem P11758601627393906581.correct : P11758601627393906581.Spec := by
  intro n
  simp only [A155640, Nat.add_sub_cancel, A155640.P11758601627393906581.a, A155640.P12133634133554210082.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155640

/-! ## A155640.P7055788327361301128

`or(1, 7^n-5^n)`
-/

namespace A155640.P7055788327361301128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((7 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A155640.P7055788327361301128

namespace A155640

/-- `or(1, 7^n-5^n)` -/
def P7055788327361301128.Spec : Prop :=
  ∀ n, P7055788327361301128.a n = A155640 n

end A155640

/-! ## A155640.P1217858278422178941

`xor(1, 7^n-5^n)`
-/

namespace A155640.P1217858278422178941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((7 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A155640.P1217858278422178941

namespace A155640

/-- `xor(1, 7^n-5^n)` -/
def P1217858278422178941.Spec : Prop :=
  ∀ n, P1217858278422178941.a n = A155640 n

end A155640

/-! ## A155640.P10884912260136632427

`abs(5^n-2^n-A155598(n))`
-/

namespace A155640.P10884912260136632427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (2 ^ n : ℤ) - A155598 n|

end

end A155640.P10884912260136632427

namespace A155640

/-- `abs(5^n-2^n-A155598(n))` -/
def P10884912260136632427.Spec : Prop :=
  ∀ n, P10884912260136632427.a n = A155640 n

end A155640

/-! ## A155640.P13517683078792479364

`abs(2*n+1-(4*n-A121203(n)))`
-/

namespace A155640.P13517683078792479364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - ((4 * n : ℤ) - A121203 n)|

end

end A155640.P13517683078792479364

namespace A155640

/-- `abs(2*n+1-(4*n-A121203(n)))` -/
def P13517683078792479364.Spec : Prop :=
  ∀ n, P13517683078792479364.a n = A155640 n

end A155640

/-! ## A155640.P491637901059559192

`abs(xor(A033999(n), A121213(n)))`
-/

namespace A155640.P491637901059559192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A121213 n)|

end

end A155640.P491637901059559192

namespace A155640

/-- `abs(xor(A033999(n), A121213(n)))` -/
def P491637901059559192.Spec : Prop :=
  ∀ n, P491637901059559192.a n = A155640 n

end A155640

/-! ## A155640.P16633425573942552665

`abs(xor(A121213(n), A121241(n)))`
-/

namespace A155640.P16633425573942552665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A121213 n) (A121241 n)|

end

end A155640.P16633425573942552665

namespace A155640

/-- `abs(xor(A121213(n), A121241(n)))` -/
def P16633425573942552665.Spec : Prop :=
  ∀ n, P16633425573942552665.a n = A155640 n

end A155640

/-! ## A155640.P9523367730511936128

`(A121213(n)+1)%A121200(n)`
-/

namespace A155640.P9523367730511936128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121213 n + 1) (A121200 n)

end

end A155640.P9523367730511936128

namespace A155640

/-- `(A121213(n)+1)%A121200(n)` -/
def P9523367730511936128.Spec : Prop :=
  ∀ n, P9523367730511936128.a n = A155640 n

end A155640

/-! ## A155640.P11675944013975986735

`abs(A074608(n)-A074606(n)+1)`
-/

namespace A155640.P11675944013975986735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074608 n - A074606 n + 1|

end

end A155640.P11675944013975986735

namespace A155640

/-- `abs(A074608(n)-A074606(n)+1)` -/
def P11675944013975986735.Spec : Prop :=
  ∀ n, P11675944013975986735.a n = A155640 n

end A155640

/-! ## A155640.P2837704309369232579

`(A074608(n)-A074606(n)+1)*A177704(2*n)`
-/

namespace A155640.P2837704309369232579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074608 n - A074606 n + 1) * A177704 (2 * n)

end

end A155640.P2837704309369232579

namespace A155640

/-- `(A074608(n)-A074606(n)+1)*A177704(2*n)` -/
def P2837704309369232579.Spec : Prop :=
  ∀ n, P2837704309369232579.a n = A155640 n

end A155640

/-! ## A155640.P14232226811302503950

`(A074616(n+1)+1)%A074616(n)`
-/

namespace A155640.P14232226811302503950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 (n + 1) + 1) (A074616 n)

end

end A155640.P14232226811302503950

namespace A155640

/-- `(A074616(n+1)+1)%A074616(n)` -/
def P14232226811302503950.Spec : Prop :=
  ∀ n, P14232226811302503950.a n = A155640 n

end A155640

/-!
# A155641: a(n) = 8^n-5^n+1^n.

The programs for A155641, the canonical program `A155641.P3667518626550228278` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155641 has offset 0).

The definition of A155641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-5^n+1` (program `A155641.P3667518626550228278`, by `A155641.P3667518626550228278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155641.P3667518626550228278

`8^n-5^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155641

/-- `8^n-5^n+1` -/
def P3667518626550228278.Spec : Prop :=
  ∀ n, P3667518626550228278.a n = A155641 n

theorem P3667518626550228278.correct : P3667518626550228278.Spec := by
  intro n
  simp only [A155641]

end A155641

/-! ## A155641.P9821032020172853224

`8^n-5^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155641.P9821032020172853224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - (5 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155641.P9821032020172853224

namespace A155641

/-- `8^n-5^n+1^n` -/
def P9821032020172853224.Spec : Prop :=
  ∀ n, P9821032020172853224.a n = A155641 n

theorem P9821032020172853224.correct : P9821032020172853224.Spec := by
  intro n
  simp only [A155641, Nat.add_sub_cancel, A155641.P9821032020172853224.a, A155641.P3667518626550228278.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155641

/-! ## A155641.P7924288714295487096

`xor(2, A191468(n)+3)`
-/

namespace A155641.P7924288714295487096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A191468 n + 3)

end

end A155641.P7924288714295487096

namespace A155641

/-- `xor(2, A191468(n)+3)` -/
def P7924288714295487096.Spec : Prop :=
  ∀ n, P7924288714295487096.a n = A155641 n

end A155641

/-! ## A155641.P3464956697305427505

`abs(5^n-2^n-A155599(n))`
-/

namespace A155641.P3464956697305427505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (2 ^ n : ℤ) - A155599 n|

end

end A155641.P3464956697305427505

namespace A155641

/-- `abs(5^n-2^n-A155599(n))` -/
def P3464956697305427505.Spec : Prop :=
  ∀ n, P3464956697305427505.a n = A155641 n

end A155641

/-! ## A155641.P17452400306373072338

`record[A191468(A332298(n))+1]`
-/

namespace A155641.P17452400306373072338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191468 (A332298 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155641.P17452400306373072338

namespace A155641

/-- `record[A191468(A332298(n))+1]` -/
def P17452400306373072338.Spec : Prop :=
  ∀ n, P17452400306373072338.a n = A155641 n

end A155641

/-! ## A155641.P14274286679892027974

`abs(A001018(n)-A024049(n))`
-/

namespace A155641.P14274286679892027974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A024049 n|

end

end A155641.P14274286679892027974

namespace A155641

/-- `abs(A001018(n)-A024049(n))` -/
def P14274286679892027974.Spec : Prop :=
  ∀ n, P14274286679892027974.a n = A155641 n

end A155641

/-! ## A155641.P7035787323953775943

`abs(A000351(n)-A062395(n))`
-/

namespace A155641.P7035787323953775943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A062395 n|

end

end A155641.P7035787323953775943

namespace A155641

/-- `abs(A000351(n)-A062395(n))` -/
def P7035787323953775943.Spec : Prop :=
  ∀ n, P7035787323953775943.a n = A155641 n

end A155641

/-! ## A155641.P4258333906209842651

`abs(A063481(n)-A155616(n))`
-/

namespace A155641.P4258333906209842651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063481 n - A155616 n|

end

end A155641.P4258333906209842651

namespace A155641

/-- `abs(A063481(n)-A155616(n))` -/
def P4258333906209842651.Spec : Prop :=
  ∀ n, P4258333906209842651.a n = A155641 n

end A155641

/-! ## A155641.P17738320817698397791

`record[A191468(A107347(n+1))+1]`
-/

namespace A155641.P17738320817698397791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191468 (A107347 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155641.P17738320817698397791

namespace A155641

/-- `record[A191468(A107347(n+1))+1]` -/
def P17738320817698397791.Spec : Prop :=
  ∀ n, P17738320817698397791.a n = A155641 n

end A155641

/-! ## A155641.P12241827533659125480

`abs(1-(A034474(n)-A062395(n)))`
-/

namespace A155641.P12241827533659125480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A034474 n - A062395 n)|

end

end A155641.P12241827533659125480

namespace A155641

/-- `abs(1-(A034474(n)-A062395(n)))` -/
def P12241827533659125480.Spec : Prop :=
  ∀ n, P12241827533659125480.a n = A155641 n

end A155641

/-! ## A155641.P6390577124925145198

`abs(1-(A155633(n)-A155646(n)))`
-/

namespace A155641.P6390577124925145198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155633 n - A155646 n)|

end

end A155641.P6390577124925145198

namespace A155641

/-- `abs(1-(A155633(n)-A155646(n)))` -/
def P6390577124925145198.Spec : Prop :=
  ∀ n, P6390577124925145198.a n = A155641 n

end A155641

/-! ## A155641.P3500472817333144055

`gcd(A063481(n)-A155616(n), A000038(n))`
-/

namespace A155641.P3500472817333144055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063481 n - A155616 n) (A000038 n)

end

end A155641.P3500472817333144055

namespace A155641

/-- `gcd(A063481(n)-A155616(n), A000038(n))` -/
def P3500472817333144055.Spec : Prop :=
  ∀ n, (P3500472817333144055.a n : ℤ) = A155641 n

end A155641

/-! ## A155641.P9854716800119508706

`or(A063481(n)-A155616(n), A000038(n+1))`
-/

namespace A155641.P9854716800119508706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063481 n - A155616 n) (A000038 (n + 1))

end

end A155641.P9854716800119508706

namespace A155641

/-- `or(A063481(n)-A155616(n), A000038(n+1))` -/
def P9854716800119508706.Spec : Prop :=
  ∀ n, P9854716800119508706.a n = A155641 n

end A155641

/-! ## A155641.P4560471599660641498

`(A191468(n)+1)*A008683(A005117(n+1))²`
-/

namespace A155641.P4560471599660641498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191468 n + 1) * A008683 (A005117 (n + 1)).toNat ^ 2

end

end A155641.P4560471599660641498

namespace A155641

/-- `(A191468(n)+1)*A008683(A005117(n+1))²` -/
def P4560471599660641498.Spec : Prop :=
  ∀ n, P4560471599660641498.a n = A155641 n

end A155641

/-! ## A155641.P1461248292969590776

`abs(A074624(n)-A155636(n))`
-/

namespace A155641.P1461248292969590776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074624 n - A155636 n|

end

end A155641.P1461248292969590776

namespace A155641

/-- `abs(A074624(n)-A155636(n))` -/
def P1461248292969590776.Spec : Prop :=
  ∀ n, P1461248292969590776.a n = A155641 n

end A155641

/-! ## A155641.P5940537092026564530

`(A191468(n)+1)%A074623(n)`
-/

namespace A155641.P5940537092026564530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191468 n + 1) (A074623 n)

end

end A155641.P5940537092026564530

namespace A155641

/-- `(A191468(n)+1)%A074623(n)` -/
def P5940537092026564530.Spec : Prop :=
  ∀ n, P5940537092026564530.a n = A155641 n

end A155641

/-!
# A155642: a(n) = 9^n - 5^n + 1.

The programs for A155642, the canonical program `A155642.P13388363139029635438` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155642 has offset 0).

The definition of A155642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-5^n+1` (program `A155642.P13388363139029635438`, by `A155642.P13388363139029635438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155642.P13388363139029635438

`9^n-5^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155642

/-- `9^n-5^n+1` -/
def P13388363139029635438.Spec : Prop :=
  ∀ n, P13388363139029635438.a n = A155642 n

theorem P13388363139029635438.correct : P13388363139029635438.Spec := by
  intro n
  simp only [A155642]

end A155642

/-! ## A155642.P18088305019237129520

`or(1, 9^n-5^n)`
-/

namespace A155642.P18088305019237129520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((9 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A155642.P18088305019237129520

namespace A155642

/-- `or(1, 9^n-5^n)` -/
def P18088305019237129520.Spec : Prop :=
  ∀ n, P18088305019237129520.a n = A155642 n

end A155642

/-! ## A155642.P7221340237837355409

`xor(1, 9^n-5^n)`
-/

namespace A155642.P7221340237837355409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((9 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A155642.P7221340237837355409

namespace A155642

/-- `xor(1, 9^n-5^n)` -/
def P7221340237837355409.Spec : Prop :=
  ∀ n, P7221340237837355409.a n = A155642 n

end A155642

/-! ## A155642.P17173890168419020035

`abs(5^n-A062396(n))`
-/

namespace A155642.P17173890168419020035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A062396 n|

end

end A155642.P17173890168419020035

namespace A155642

/-- `abs(5^n-A062396(n))` -/
def P17173890168419020035.Spec : Prop :=
  ∀ n, P17173890168419020035.a n = A155642 n

end A155642

/-! ## A155642.P3293564906238392379

`abs(9^n-A024049(n))`
-/

namespace A155642.P3293564906238392379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - A024049 n|

end

end A155642.P3293564906238392379

namespace A155642

/-- `abs(9^n-A024049(n))` -/
def P3293564906238392379.Spec : Prop :=
  ∀ n, P3293564906238392379.a n = A155642 n

end A155642

/-! ## A155642.P5179771494760431378

`record[A191466(A332298(n))+1]`
-/

namespace A155642.P5179771494760431378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191466 (A332298 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155642.P5179771494760431378

namespace A155642

/-- `record[A191466(A332298(n))+1]` -/
def P5179771494760431378.Spec : Prop :=
  ∀ n, P5179771494760431378.a n = A155642 n

end A155642

/-! ## A155642.P15698619634023428454

`abs(A074524(n)-A074616(n))`
-/

namespace A155642.P15698619634023428454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074524 n - A074616 n|

end

end A155642.P15698619634023428454

namespace A155642

/-- `abs(A074524(n)-A074616(n))` -/
def P15698619634023428454.Spec : Prop :=
  ∀ n, P15698619634023428454.a n = A155642 n

end A155642

/-! ## A155642.P5081382585396224304

`abs(1-(A074571(n)-A074578(n)))`
-/

namespace A155642.P5081382585396224304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A074571 n - A074578 n)|

end

end A155642.P5081382585396224304

namespace A155642

/-- `abs(1-(A074571(n)-A074578(n)))` -/
def P5081382585396224304.Spec : Prop :=
  ∀ n, P5081382585396224304.a n = A155642 n

end A155642

/-! ## A155642.P8727985984655315826

`abs(xor(A034947(n+1), A191466(n)))`
-/

namespace A155642.P8727985984655315826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A034947 (n + 1)) (A191466 n)|

end

end A155642.P8727985984655315826

namespace A155642

/-- `abs(xor(A034947(n+1), A191466(n)))` -/
def P8727985984655315826.Spec : Prop :=
  ∀ n, P8727985984655315826.a n = A155642 n

end A155642

/-! ## A155642.P16038690591751898326

`Δ[A002452(n)-A003463(n)+n]`
-/

namespace A155642.P16038690591751898326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155642.P16038690591751898326

namespace A155642

/-- `Δ[A002452(n)-A003463(n)+n]` -/
def P16038690591751898326.Spec : Prop :=
  ∀ n, P16038690591751898326.a n = A155642 n

end A155642

/-! ## A155642.P1997249593640482799

`(A074524(n)-A074616(n))*A001045(n+1)%2`
-/

namespace A155642.P1997249593640482799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074524 n - A074616 n) * Int.tmod (A001045 (n + 1)) 2

end

end A155642.P1997249593640482799

namespace A155642

/-- `(A074524(n)-A074616(n))*A001045(n+1)%2` -/
def P1997249593640482799.Spec : Prop :=
  ∀ n, P1997249593640482799.a n = A155642 n

end A155642

/-! ## A155642.P7333454883134047587

`(A074524(n)-A074616(n))*A059695(n+1)%2`
-/

namespace A155642.P7333454883134047587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074524 n - A074616 n) * Int.tmod (A059695 (n + 1)) 2

end

end A155642.P7333454883134047587

namespace A155642

/-- `(A074524(n)-A074616(n))*A059695(n+1)%2` -/
def P7333454883134047587.Spec : Prop :=
  ∀ n, P7333454883134047587.a n = A155642 n

end A155642

/-! ## A155642.P12837184725224920890

`abs(A016189(n)-A155643(n))`
-/

namespace A155642.P12837184725224920890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016189 n - A155643 n|

end

end A155642.P12837184725224920890

namespace A155642

/-- `abs(A016189(n)-A155643(n))` -/
def P12837184725224920890.Spec : Prop :=
  ∀ n, P12837184725224920890.a n = A155642 n

end A155642

/-!
# A155643: a(n) = 10^n-5^n+1.

The programs for A155643, the canonical program `A155643.P7256535383503808688` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155643 has offset 0).

The definition of A155643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-5^n+1` (program `A155643.P7256535383503808688`, by `A155643.P7256535383503808688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155643.P7256535383503808688

`10^n-5^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155643

/-- `10^n-5^n+1` -/
def P7256535383503808688.Spec : Prop :=
  ∀ n, P7256535383503808688.a n = A155643 n

theorem P7256535383503808688.correct : P7256535383503808688.Spec := by
  intro n
  simp only [A155643]

end A155643

/-! ## A155643.P14113604277104646009

`abs(xor(-1, A248340(n)))`
-/

namespace A155643.P14113604277104646009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A248340 n)|

end

end A155643.P14113604277104646009

namespace A155643

/-- `abs(xor(-1, A248340(n)))` -/
def P14113604277104646009.Spec : Prop :=
  ∀ n, P14113604277104646009.a n = A155643 n

end A155643

/-! ## A155643.P257969917271786719

`abs(5^n-2^n-A155601(n))`
-/

namespace A155643.P257969917271786719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (2 ^ n : ℤ) - A155601 n|

end

end A155643.P257969917271786719

namespace A155643

/-- `abs(5^n-2^n-A155601(n))` -/
def P257969917271786719.Spec : Prop :=
  ∀ n, P257969917271786719.a n = A155643 n

end A155643

/-! ## A155643.P7274606169064503545

`record[A248340(A332298(n))+1]`
-/

namespace A155643.P7274606169064503545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248340 (A332298 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155643.P7274606169064503545

namespace A155643

/-- `record[A248340(A332298(n))+1]` -/
def P7274606169064503545.Spec : Prop :=
  ∀ n, P7274606169064503545.a n = A155643 n

end A155643

/-! ## A155643.P5888361587553480722

`abs(A011557(n)-A024049(n))`
-/

namespace A155643.P5888361587553480722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A024049 n|

end

end A155643.P5888361587553480722

namespace A155643

/-- `abs(A011557(n)-A024049(n))` -/
def P5888361587553480722.Spec : Prop :=
  ∀ n, P5888361587553480722.a n = A155643 n

end A155643

/-! ## A155643.P5427936142769134925

`∏{e}[A248344(n+1), A248340(n)+#]`
-/

namespace A155643.P5427936142769134925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A248340 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A155643.P5427936142769134925

namespace A155643

/-- `∏{e}[A248344(n+1), A248340(n)+#]` -/
def P5427936142769134925.Spec : Prop :=
  ∀ n, P5427936142769134925.a n = A155643 n

end A155643

/-! ## A155643.P9910858591024329552

`gcd(xor(-1, A248340(n)), A142150(2*n+1))`
-/

namespace A155643.P9910858591024329552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (-1) (A248340 n)) (A142150 (2 * n + 1))

end

end A155643.P9910858591024329552

namespace A155643

/-- `gcd(xor(-1, A248340(n)), A142150(2*n+1))` -/
def P9910858591024329552.Spec : Prop :=
  ∀ n, (P9910858591024329552.a n : ℤ) = A155643 n

end A155643

/-! ## A155643.P9568979390148113313

`xor(A248340(n)+A057427(n), A000007(n))`
-/

namespace A155643.P9568979390148113313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A248340 n + A057427 n) (A000007 n)

end

end A155643.P9568979390148113313

namespace A155643

/-- `xor(A248340(n)+A057427(n), A000007(n))` -/
def P9568979390148113313.Spec : Prop :=
  ∀ n, P9568979390148113313.a n = A155643 n

end A155643

/-! ## A155643.P2188788605800913014

`-(xor(-1, A248340(n))*A014963(A000217(n+4)))`
-/

namespace A155643.P2188788605800913014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (A248340 n) * A014963 (A000217 (n + 4)).toNat)

end

end A155643.P2188788605800913014

namespace A155643

/-- `-(xor(-1, A248340(n))*A014963(A000217(n+4)))` -/
def P2188788605800913014.Spec : Prop :=
  ∀ n, P2188788605800913014.a n = A155643 n

end A155643

/-! ## A155643.P611541166103152798

`abs(5^n-A062397(n))`
-/

namespace A155643.P611541166103152798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A062397 n|

end

end A155643.P611541166103152798

namespace A155643

/-- `abs(5^n-A062397(n))` -/
def P611541166103152798.Spec : Prop :=
  ∀ n, P611541166103152798.a n = A155643 n

end A155643

/-! ## A155643.P5130183863460790297

`abs(A016164(n)-A002283(n))`
-/

namespace A155643.P5130183863460790297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016164 n - A002283 n|

end

end A155643.P5130183863460790297

namespace A155643

/-- `abs(A016164(n)-A002283(n))` -/
def P5130183863460790297.Spec : Prop :=
  ∀ n, P5130183863460790297.a n = A155643 n

end A155643

/-! ## A155643.P6079468047680661684

`abs(A155603(n)-A245806(n))`
-/

namespace A155643.P6079468047680661684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155603 n - A245806 n|

end

end A155643.P6079468047680661684

namespace A155643

/-- `abs(A155603(n)-A245806(n))` -/
def P6079468047680661684.Spec : Prop :=
  ∀ n, P6079468047680661684.a n = A155643 n

end A155643

/-! ## A155643.P5613197371630644379

`abs(A155634(n)-A245807(n))`
-/

namespace A155643.P5613197371630644379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155634 n - A245807 n|

end

end A155643.P5613197371630644379

namespace A155643

/-- `abs(A155634(n)-A245807(n))` -/
def P5613197371630644379.Spec : Prop :=
  ∀ n, P5613197371630644379.a n = A155643 n

end A155643

/-! ## A155643.P4288930415203931216

`record[A191702(n+1)*A230445(n)+1]`
-/

namespace A155643.P4288930415203931216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1) * A230445 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155643.P4288930415203931216

namespace A155643

/-- `record[A191702(n+1)*A230445(n)+1]` -/
def P4288930415203931216.Spec : Prop :=
  ∀ n, P4288930415203931216.a n = A155643 n

end A155643

/-! ## A155643.P17589407495847995231

`Δ[A002275(n)+1+n-A003463(n)]`
-/

namespace A155643.P17589407495847995231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + 1 + (n : ℤ) - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155643.P17589407495847995231

namespace A155643

/-- `Δ[A002275(n)+1+n-A003463(n)]` -/
def P17589407495847995231.Spec : Prop :=
  ∀ n, P17589407495847995231.a n = A155643 n

end A155643

/-! ## A155643.P4999173700944285284

`record[A023758(n+1)*A191702(n+1)+1]`
-/

namespace A155643.P4999173700944285284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1) * A191702 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155643.P4999173700944285284

namespace A155643

/-- `record[A023758(n+1)*A191702(n+1)+1]` -/
def P4999173700944285284.Spec : Prop :=
  ∀ n, P4999173700944285284.a n = A155643 n

end A155643

/-! ## A155643.P11704680343600538002

`(A155603(n)-A245806(n))*A008683(A106938(n+1))`
-/

namespace A155643.P11704680343600538002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155603 n - A245806 n) * A008683 (A106938 (n + 1)).toNat

end

end A155643.P11704680343600538002

namespace A155643

/-- `(A155603(n)-A245806(n))*A008683(A106938(n+1))` -/
def P11704680343600538002.Spec : Prop :=
  ∀ n, P11704680343600538002.a n = A155643 n

end A155643

/-!
# A155644: a(n) = 11^n-5^n+1.

The programs for A155644, the canonical program `A155644.P4106464301911629168` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155644 has offset 0).

The definition of A155644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-5^n+1` (program `A155644.P4106464301911629168`, by `A155644.P4106464301911629168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155644.P4106464301911629168

`11^n-5^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155644

/-- `11^n-5^n+1` -/
def P4106464301911629168.Spec : Prop :=
  ∀ n, P4106464301911629168.a n = A155644 n

theorem P4106464301911629168.correct : P4106464301911629168.Spec := by
  intro n
  simp only [A155644]

end A155644

/-! ## A155644.P6025247853812370246

`or(1, 11^n-5^n)`
-/

namespace A155644.P6025247853812370246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((11 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A155644.P6025247853812370246

namespace A155644

/-- `or(1, 11^n-5^n)` -/
def P6025247853812370246.Spec : Prop :=
  ∀ n, P6025247853812370246.a n = A155644 n

end A155644

/-! ## A155644.P9009398615330573815

`xor(1, 11^n-5^n)`
-/

namespace A155644.P9009398615330573815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((11 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A155644.P9009398615330573815

namespace A155644

/-- `xor(1, 11^n-5^n)` -/
def P9009398615330573815.Spec : Prop :=
  ∀ n, P9009398615330573815.a n = A155644 n

end A155644

/-! ## A155644.P17435093307519783380

`abs(A000351(n)-A034524(n))`
-/

namespace A155644.P17435093307519783380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A034524 n|

end

end A155644.P17435093307519783380

namespace A155644

/-- `abs(A000351(n)-A034524(n))` -/
def P17435093307519783380.Spec : Prop :=
  ∀ n, P17435093307519783380.a n = A155644 n

end A155644

/-! ## A155644.P7333673569981702245

`abs(A005060(n)-A155632(n))`
-/

namespace A155644.P7333673569981702245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005060 n - A155632 n|

end

end A155644.P7333673569981702245

namespace A155644

/-- `abs(A005060(n)-A155632(n))` -/
def P7333673569981702245.Spec : Prop :=
  ∀ n, P7333673569981702245.a n = A155644 n

end A155644

/-! ## A155644.P18441687112957144369

`abs(xor(A020985(n), A139743(n)))`
-/

namespace A155644.P18441687112957144369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A020985 n) (A139743 n)|

end

end A155644.P18441687112957144369

namespace A155644

/-- `abs(xor(A020985(n), A139743(n)))` -/
def P18441687112957144369.Spec : Prop :=
  ∀ n, P18441687112957144369.a n = A155644 n

end A155644

/-! ## A155644.P3081013610241043839

`abs(1-(A155633(n)-A155649(n)))`
-/

namespace A155644.P3081013610241043839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155633 n - A155649 n)|

end

end A155644.P3081013610241043839

namespace A155644

/-- `abs(1-(A155633(n)-A155649(n)))` -/
def P3081013610241043839.Spec : Prop :=
  ∀ n, P3081013610241043839.a n = A155644 n

end A155644

/-! ## A155644.P3309738633118429652

`abs(xor(A034947(n+1), A139743(n)))`
-/

namespace A155644.P3309738633118429652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A034947 (n + 1)) (A139743 n)|

end

end A155644.P3309738633118429652

namespace A155644

/-- `abs(xor(A034947(n+1), A139743(n)))` -/
def P3309738633118429652.Spec : Prop :=
  ∀ n, P3309738633118429652.a n = A155644 n

end A155644

/-!
# A155645: a(n) = 7^n+6^n-1.

The programs for A155645, the canonical program `A155645.P112392445795058252` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155645 has offset 0).

The definition of A155645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+6^n-1` (program `A155645.P112392445795058252`, by `A155645.P112392445795058252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155645.P112392445795058252

`7^n+6^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155645

/-- `7^n+6^n-1` -/
def P112392445795058252.Spec : Prop :=
  ∀ n, P112392445795058252.a n = A155645 n

theorem P112392445795058252.correct : P112392445795058252.Spec := by
  intro n
  simp only [A155645]

end A155645

/-! ## A155645.P1820548581233195797

`abs(1-A074619(n))`
-/

namespace A155645.P1820548581233195797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074619 n|

end

end A155645.P1820548581233195797

namespace A155645

/-- `abs(1-A074619(n))` -/
def P1820548581233195797.Spec : Prop :=
  ∀ n, P1820548581233195797.a n = A155645 n

end A155645

/-! ## A155645.P11304828030585272324

`abs(2-A074520(n))`
-/

namespace A155645.P11304828030585272324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074520 n|

end

end A155645.P11304828030585272324

namespace A155645

/-- `abs(2-A074520(n))` -/
def P11304828030585272324.Spec : Prop :=
  ∀ n, P11304828030585272324.a n = A155645 n

end A155645

/-! ## A155645.P5616216165703498346

`abs(A034474(n)-A074571(n))`
-/

namespace A155645.P5616216165703498346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A074571 n|

end

end A155645.P5616216165703498346

namespace A155645

/-- `abs(A034474(n)-A074571(n))` -/
def P5616216165703498346.Spec : Prop :=
  ∀ n, P5616216165703498346.a n = A155645 n

end A155645

/-! ## A155645.P11503026461410506386

`xor(1, A057427(n)*A074619(n))`
-/

namespace A155645.P11503026461410506386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A057427 n * A074619 n)

end

end A155645.P11503026461410506386

namespace A155645

/-- `xor(1, A057427(n)*A074619(n))` -/
def P11503026461410506386.Spec : Prop :=
  ∀ n, P11503026461410506386.a n = A155645 n

end A155645

/-! ## A155645.P4428079239460392400

`abs(A000420(n)+A000400(n)-1)`
-/

namespace A155645.P4428079239460392400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n + (A000400 n - 1)|

end

end A155645.P4428079239460392400

namespace A155645

/-- `abs(A000420(n)+A000400(n)-1)` -/
def P4428079239460392400.Spec : Prop :=
  ∀ n, P4428079239460392400.a n = A155645 n

end A155645

/-! ## A155645.P880035072483480053

`(A074619(n)-1)%A074542(n)`
-/

namespace A155645.P880035072483480053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074619 n - 1) (A074542 n)

end

end A155645.P880035072483480053

namespace A155645

/-- `(A074619(n)-1)%A074542(n)` -/
def P880035072483480053.Spec : Prop :=
  ∀ n, P880035072483480053.a n = A155645 n

end A155645

/-! ## A155645.P14387310474494807085

`xor(1, A074619(n)%A155649(n))`
-/

namespace A155645.P14387310474494807085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A074619 n) (A155649 n))

end

end A155645.P14387310474494807085

namespace A155645

/-- `xor(1, A074619(n)%A155649(n))` -/
def P14387310474494807085.Spec : Prop :=
  ∀ n, P14387310474494807085.a n = A155645 n

end A155645

/-!
# A155646: a(n) = 8^n + 6^n - 1.

The programs for A155646, the canonical program `A155646.P12730731826256709538` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155646 has offset 0).

The definition of A155646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+6^n-1` (program `A155646.P12730731826256709538`, by `A155646.P12730731826256709538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155646.P12730731826256709538

`8^n+6^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155646

/-- `8^n+6^n-1` -/
def P12730731826256709538.Spec : Prop :=
  ∀ n, P12730731826256709538.a n = A155646 n

theorem P12730731826256709538.correct : P12730731826256709538.Spec := by
  intro n
  simp only [A155646]

end A155646

/-! ## A155646.P12112651006934429570

`or(6^n-1, 8^n)`
-/

namespace A155646.P12112651006934429570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((6 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155646.P12112651006934429570

namespace A155646

/-- `or(6^n-1, 8^n)` -/
def P12112651006934429570.Spec : Prop :=
  ∀ n, P12112651006934429570.a n = A155646 n

end A155646

/-! ## A155646.P10008609505976350844

`abs(1-A074620(n))`
-/

namespace A155646.P10008609505976350844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074620 n|

end

end A155646.P10008609505976350844

namespace A155646

/-- `abs(1-A074620(n))` -/
def P10008609505976350844.Spec : Prop :=
  ∀ n, P10008609505976350844.a n = A155646 n

end A155646

/-! ## A155646.P18000272208025915893

`abs(2-A074521(n))`
-/

namespace A155646.P18000272208025915893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074521 n|

end

end A155646.P18000272208025915893

namespace A155646

/-- `abs(2-A074521(n))` -/
def P18000272208025915893.Spec : Prop :=
  ∀ n, P18000272208025915893.a n = A155646 n

end A155646

/-! ## A155646.P12187702154874880045

`xor(8^n, A024062(n))`
-/

namespace A155646.P12187702154874880045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) (A024062 n)

end

end A155646.P12187702154874880045

namespace A155646

/-- `xor(8^n, A024062(n))` -/
def P12187702154874880045.Spec : Prop :=
  ∀ n, P12187702154874880045.a n = A155646 n

end A155646

/-! ## A155646.P10733458692310372196

`abs(A000051(n)-A074542(n))`
-/

namespace A155646.P10733458692310372196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074542 n|

end

end A155646.P10733458692310372196

namespace A155646

/-- `abs(A000051(n)-A074542(n))` -/
def P10733458692310372196.Spec : Prop :=
  ∀ n, P10733458692310372196.a n = A155646 n

end A155646

/-! ## A155646.P11811119412885411926

`abs(1-(A001018(n)+A000400(n)))`
-/

namespace A155646.P11811119412885411926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A001018 n + A000400 n)|

end

end A155646.P11811119412885411926

namespace A155646

/-- `abs(1-(A001018(n)+A000400(n)))` -/
def P11811119412885411926.Spec : Prop :=
  ∀ n, P11811119412885411926.a n = A155646 n

end A155646

/-! ## A155646.P5069369299899028074

`record[A026549(n)+A094014(n)-1]`
-/

namespace A155646.P5069369299899028074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n + (A094014 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155646.P5069369299899028074

namespace A155646

/-- `record[A026549(n)+A094014(n)-1]` -/
def P5069369299899028074.Spec : Prop :=
  ∀ n, P5069369299899028074.a n = A155646 n

end A155646

/-!
# A155647: a(n) = 9^n+6^n-1^n.

The programs for A155647, the canonical program `A155647.P12035797366206425483` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155647 has offset 0).

The definition of A155647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+6^n-1` (program `A155647.P12035797366206425483`, by `A155647.P12035797366206425483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155647.P12035797366206425483

`9^n+6^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155647

/-- `9^n+6^n-1` -/
def P12035797366206425483.Spec : Prop :=
  ∀ n, P12035797366206425483.a n = A155647 n

theorem P12035797366206425483.correct : P12035797366206425483.Spec := by
  intro n
  simp only [A155647]

end A155647

/-! ## A155647.P11041648985139311466

`9^n+6^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155647.P11041648985139311466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n + 6 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155647.P11041648985139311466

namespace A155647

/-- `9^n+6^n-1^n` -/
def P11041648985139311466.Spec : Prop :=
  ∀ n, P11041648985139311466.a n = A155647 n

theorem P11041648985139311466.correct : P11041648985139311466.Spec := by
  intro n
  simp only [A155647, Nat.add_sub_cancel, A155647.P11041648985139311466.a, A155647.P12035797366206425483.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155647

/-! ## A155647.P10196227933892601722

`abs(1-A074621(n))`
-/

namespace A155647.P10196227933892601722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074621 n|

end

end A155647.P10196227933892601722

namespace A155647

/-- `abs(1-A074621(n))` -/
def P10196227933892601722.Spec : Prop :=
  ∀ n, P10196227933892601722.a n = A155647 n

end A155647

/-! ## A155647.P15261574355574824408

`abs(2-A074522(n))`
-/

namespace A155647.P15261574355574824408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074522 n|

end

end A155647.P15261574355574824408

namespace A155647

/-- `abs(2-A074522(n))` -/
def P15261574355574824408.Spec : Prop :=
  ∀ n, P15261574355574824408.a n = A155647 n

end A155647

/-! ## A155647.P11503115376770461395

`abs(A000051(n)-A074543(n))`
-/

namespace A155647.P11503115376770461395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074543 n|

end

end A155647.P11503115376770461395

namespace A155647

/-- `abs(A000051(n)-A074543(n))` -/
def P11503115376770461395.Spec : Prop :=
  ∀ n, P11503115376770461395.a n = A155647 n

end A155647

/-! ## A155647.P9070639125099475179

`abs(A034474(n)-A074573(n))`
-/

namespace A155647.P9070639125099475179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A074573 n|

end

end A155647.P9070639125099475179

namespace A155647

/-- `abs(A034474(n)-A074573(n))` -/
def P9070639125099475179.Spec : Prop :=
  ∀ n, P9070639125099475179.a n = A155647 n

end A155647

/-! ## A155647.P2207745999958243780

`gcd(1-A074621(n), A008592(n+1)%10)`
-/

namespace A155647.P2207745999958243780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A074621 n) (Int.tmod (A008592 (n + 1)) 10)

end

end A155647.P2207745999958243780

namespace A155647

/-- `gcd(1-A074621(n), A008592(n+1)%10)` -/
def P2207745999958243780.Spec : Prop :=
  ∀ n, (P2207745999958243780.a n : ℤ) = A155647 n

end A155647

/-! ## A155647.P1503190176482198432

`(A157532(n+1)-1)*floor(A074621(n)/2)`
-/

namespace A155647.P1503190176482198432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) - 1) * ⌊(A074621 n : ℚ) / 2⌋

end

end A155647.P1503190176482198432

namespace A155647

/-- `(A157532(n+1)-1)*floor(A074621(n)/2)` -/
def P1503190176482198432.Spec : Prop :=
  ∀ n, P1503190176482198432.a n = A155647 n

end A155647

/-!
# A155648: a(n) = 10^n + 6^n - 1.

The programs for A155648, the canonical program `A155648.P16686922681966376516` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155648 has offset 0).

The definition of A155648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+6^n-1` (program `A155648.P16686922681966376516`, by `A155648.P16686922681966376516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155648.P16686922681966376516

`10^n+6^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155648

/-- `10^n+6^n-1` -/
def P16686922681966376516.Spec : Prop :=
  ∀ n, P16686922681966376516.a n = A155648 n

theorem P16686922681966376516.correct : P16686922681966376516.Spec := by
  intro n
  simp only [A155648]

end A155648

/-! ## A155648.P1736447530073142866

`abs(1-(A011557(n)+A000400(n)))`
-/

namespace A155648.P1736447530073142866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A011557 n + A000400 n)|

end

end A155648.P1736447530073142866

namespace A155648

/-- `abs(1-(A011557(n)+A000400(n)))` -/
def P1736447530073142866.Spec : Prop :=
  ∀ n, P1736447530073142866.a n = A155648 n

end A155648

/-! ## A155648.P17355528987782842728

`abs(A062394(n)+A062397(n)-3)`
-/

namespace A155648.P17355528987782842728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n + (A062397 n - 3)|

end

end A155648.P17355528987782842728

namespace A155648

/-- `abs(A062394(n)+A062397(n)-3)` -/
def P17355528987782842728.Spec : Prop :=
  ∀ n, P17355528987782842728.a n = A155648 n

end A155648

/-! ## A155648.P1567130129460074862

`lcm(1-(A011557(n)+A000400(n)), A309873(n+1))`
-/

namespace A155648.P1567130129460074862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (A011557 n + A000400 n)) (A309873 (n + 1))

end

end A155648.P1567130129460074862

namespace A155648

/-- `lcm(1-(A011557(n)+A000400(n)), A309873(n+1))` -/
def P1567130129460074862.Spec : Prop :=
  ∀ n, (P1567130129460074862.a n : ℤ) = A155648 n

end A155648

/-! ## A155648.P334170285368772081

`(A024062(n)+A011557(n))*A000041(gcd(n, n+1))`
-/

namespace A155648.P334170285368772081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024062 n + A011557 n) * A000041 (Nat.gcd n (n + 1))

end

end A155648.P334170285368772081

namespace A155648

/-- `(A024062(n)+A011557(n))*A000041(gcd(n, n+1))` -/
def P334170285368772081.Spec : Prop :=
  ∀ n, P334170285368772081.a n = A155648 n

end A155648

/-! ## A155648.P6261230885395231694

`(1-(A011557(n)+A000400(n)))*or(-1, A000041(n))`
-/

namespace A155648.P6261230885395231694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A011557 n + A000400 n)) * Int.lor (-1) (A000041 n)

end

end A155648.P6261230885395231694

namespace A155648

/-- `(1-(A011557(n)+A000400(n)))*or(-1, A000041(n))` -/
def P6261230885395231694.Spec : Prop :=
  ∀ n, P6261230885395231694.a n = A155648 n

end A155648

/-! ## A155648.P17363700169987369639

`(1-(A011557(n)+A000400(n)))*(A007318(C(2, n))-2)`
-/

namespace A155648.P17363700169987369639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A011557 n + A000400 n)) * (A007318 (Nat.choose 2 n) - 2)

end

end A155648.P17363700169987369639

namespace A155648

/-- `(1-(A011557(n)+A000400(n)))*(A007318(C(2, n))-2)` -/
def P17363700169987369639.Spec : Prop :=
  ∀ n, P17363700169987369639.a n = A155648 n

end A155648

/-! ## A155648.P5734448660316896089

`(1-(A011557(n)+A000400(n)))*(A004273(n)-A004277(n))`
-/

namespace A155648.P5734448660316896089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A011557 n + A000400 n)) * (A004273 n - A004277 n)

end

end A155648.P5734448660316896089

namespace A155648

/-- `(1-(A011557(n)+A000400(n)))*(A004273(n)-A004277(n))` -/
def P5734448660316896089.Spec : Prop :=
  ∀ n, P5734448660316896089.a n = A155648 n

end A155648

/-!
# A155649: a(n) = 11^n + 6^n - 1^n.

The programs for A155649, the canonical program `A155649.P3875628244043744796` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155649 has offset 0).

The definition of A155649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+6^n-1` (program `A155649.P3875628244043744796`, by `A155649.P3875628244043744796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155649.P3875628244043744796

`11^n+6^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155649

/-- `11^n+6^n-1` -/
def P3875628244043744796.Spec : Prop :=
  ∀ n, P3875628244043744796.a n = A155649 n

theorem P3875628244043744796.correct : P3875628244043744796.Spec := by
  intro n
  simp only [A155649]

end A155649

/-! ## A155649.P11051170536643312184

`11^n+6^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155649.P11051170536643312184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 6 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155649.P11051170536643312184

namespace A155649

/-- `11^n+6^n-1^n` -/
def P11051170536643312184.Spec : Prop :=
  ∀ n, P11051170536643312184.a n = A155649 n

theorem P11051170536643312184.correct : P11051170536643312184.Spec := by
  intro n
  simp only [A155649, Nat.add_sub_cancel, A155649.P11051170536643312184.a, A155649.P3875628244043744796.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155649

/-! ## A155649.P7192137939038844815

`(A155589(n)+A139740(n))*A025465(n)!`
-/

namespace A155649.P7192137939038844815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155589 n + A139740 n) * (Nat.factorial (A025465 n).toNat : ℤ)

end

end A155649.P7192137939038844815

namespace A155649

/-- `(A155589(n)+A139740(n))*A025465(n)!` -/
def P7192137939038844815.Spec : Prop :=
  ∀ n, P7192137939038844815.a n = A155649 n

end A155649

/-! ## A155649.P9622001882401339974

`(A155589(n)+A139740(n))*A007318(∑[n])`
-/

namespace A155649.P9622001882401339974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155589 n + A139740 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155649.P9622001882401339974

namespace A155649

/-- `(A155589(n)+A139740(n))*A007318(∑[n])` -/
def P9622001882401339974.Spec : Prop :=
  ∀ n, P9622001882401339974.a n = A155649 n

end A155649

/-! ## A155649.P4363450844603202835

`(A155589(n)+A139740(n))*(A063942(3*n)-n)`
-/

namespace A155649.P4363450844603202835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155589 n + A139740 n) * (A063942 (3 * n) - (n : ℤ))

end

end A155649.P4363450844603202835

namespace A155649

/-- `(A155589(n)+A139740(n))*(A063942(3*n)-n)` -/
def P4363450844603202835.Spec : Prop :=
  ∀ n, P4363450844603202835.a n = A155649 n

end A155649

/-! ## A155649.P11200687962694918870

`(A155589(n)+A139740(n))*A000005(gcd(n, n+1))`
-/

namespace A155649.P11200687962694918870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155589 n + A139740 n) * A000005 (Nat.gcd n (n + 1))

end

end A155649.P11200687962694918870

namespace A155649

/-- `(A155589(n)+A139740(n))*A000005(gcd(n, n+1))` -/
def P11200687962694918870.Spec : Prop :=
  ∀ n, P11200687962694918870.a n = A155649 n

end A155649

/-!
# A155650: a(n) = 7^n - 6^n + 1.

The programs for A155650, the canonical program `A155650.P2684719601656214270` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155650 has offset 0).

The definition of A155650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-6^n+1` (program `A155650.P2684719601656214270`, by `A155650.P2684719601656214270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155650.P2684719601656214270

`7^n-6^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155650

/-- `7^n-6^n+1` -/
def P2684719601656214270.Spec : Prop :=
  ∀ n, P2684719601656214270.a n = A155650 n

theorem P2684719601656214270.correct : P2684719601656214270.Spec := by
  intro n
  simp only [A155650]

end A155650

/-! ## A155650.P15974316273718235527

`-xor(-1, A016169(n))`
-/

namespace A155650.P15974316273718235527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A016169 n)

end

end A155650.P15974316273718235527

namespace A155650

/-- `-xor(-1, A016169(n))` -/
def P15974316273718235527.Spec : Prop :=
  ∀ n, P15974316273718235527.a n = A155650 n

end A155650

/-! ## A155650.P5449426705292243000

`abs(6^n-A034491(n))`
-/

namespace A155650.P5449426705292243000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - A034491 n|

end

end A155650.P5449426705292243000

namespace A155650

/-- `abs(6^n-A034491(n))` -/
def P5449426705292243000.Spec : Prop :=
  ∀ n, P5449426705292243000.a n = A155650 n

end A155650

/-! ## A155650.P1345714629428883602

`abs(6^n-5^n-A155640(n))`
-/

namespace A155650.P1345714629428883602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (5 ^ n : ℤ) - A155640 n|

end

end A155650.P1345714629428883602

namespace A155650

/-- `abs(6^n-5^n-A155640(n))` -/
def P1345714629428883602.Spec : Prop :=
  ∀ n, P1345714629428883602.a n = A155650 n

end A155650

/-! ## A155650.P12566993481106565290

`round(A016169(round(sqrt(n²+1)))+1-1/(n+1))`
-/

namespace A155650.P12566993481106565290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016169 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1 : ℚ) - 1 / (n + 1 : ℚ))

end

end A155650.P12566993481106565290

namespace A155650

/-- `round(A016169(round(sqrt(n²+1)))+1-1/(n+1))` -/
def P12566993481106565290.Spec : Prop :=
  ∀ n, P12566993481106565290.a n = A155650 n

end A155650

/-! ## A155650.P3414034442018062209

`abs(A155598(n)-A248216(n))`
-/

namespace A155650.P3414034442018062209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155598 n - A248216 n|

end

end A155650.P3414034442018062209

namespace A155650

/-- `abs(A155598(n)-A248216(n))` -/
def P3414034442018062209.Spec : Prop :=
  ∀ n, P3414034442018062209.a n = A155650 n

end A155650

/-! ## A155650.P881124651040468612

`abs(A253209(n)-A253210(n))`
-/

namespace A155650.P881124651040468612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253209 n - A253210 n|

end

end A155650.P881124651040468612

namespace A155650

/-- `abs(A253209(n)-A253210(n))` -/
def P881124651040468612.Spec : Prop :=
  ∀ n, P881124651040468612.a n = A155650 n

end A155650

/-! ## A155650.P9799710813370685691

`(A016169(n)+1)%A074552(n)`
-/

namespace A155650.P9799710813370685691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016169 n + 1) (A074552 n)

end

end A155650.P9799710813370685691

namespace A155650

/-- `(A016169(n)+1)%A074552(n)` -/
def P9799710813370685691.Spec : Prop :=
  ∀ n, P9799710813370685691.a n = A155650 n

end A155650

/-! ## A155650.P11180601550445499856

`abs(A034491(n)-A062394(n)+1)`
-/

namespace A155650.P11180601550445499856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A062394 n + 1|

end

end A155650.P11180601550445499856

namespace A155650

/-- `abs(A034491(n)-A062394(n)+1)` -/
def P11180601550445499856.Spec : Prop :=
  ∀ n, P11180601550445499856.a n = A155650 n

end A155650

/-! ## A155650.P5350284796957106902

`abs(A155612(n)-A155611(n)+1)`
-/

namespace A155650.P5350284796957106902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155612 n - A155611 n + 1|

end

end A155650.P5350284796957106902

namespace A155650

/-- `abs(A155612(n)-A155611(n)+1)` -/
def P5350284796957106902.Spec : Prop :=
  ∀ n, P5350284796957106902.a n = A155650 n

end A155650

/-! ## A155650.P315283582899368761

`abs(A000420(n)-(A000400(n)-1))`
-/

namespace A155650.P315283582899368761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - (A000400 n - 1)|

end

end A155650.P315283582899368761

namespace A155650

/-- `abs(A000420(n)-(A000400(n)-1))` -/
def P315283582899368761.Spec : Prop :=
  ∀ n, P315283582899368761.a n = A155650 n

end A155650

/-! ## A155650.P3266584960539605945

`(A074574(n)+1)%A074572(n)`
-/

namespace A155650.P3266584960539605945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074574 n + 1) (A074572 n)

end

end A155650.P3266584960539605945

namespace A155650

/-- `(A074574(n)+1)%A074572(n)` -/
def P3266584960539605945.Spec : Prop :=
  ∀ n, P3266584960539605945.a n = A155650 n

end A155650

/-! ## A155650.P357900033731428367

`abs(A155652(n)-A191467(n))`
-/

namespace A155650.P357900033731428367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155652 n - A191467 n|

end

end A155650.P357900033731428367

namespace A155650

/-- `abs(A155652(n)-A191467(n))` -/
def P357900033731428367.Spec : Prop :=
  ∀ n, P357900033731428367.a n = A155650 n

end A155650

/-!
# A155651: a(n) = 8^n-6^n+1^n.

The programs for A155651, the canonical program `A155651.P7193263786914444295` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155651 has offset 0).

The definition of A155651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-6^n+1` (program `A155651.P7193263786914444295`, by `A155651.P7193263786914444295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155651.P7193263786914444295

`8^n-6^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155651

/-- `8^n-6^n+1` -/
def P7193263786914444295.Spec : Prop :=
  ∀ n, P7193263786914444295.a n = A155651 n

theorem P7193263786914444295.correct : P7193263786914444295.Spec := by
  intro n
  simp only [A155651]

end A155651

/-! ## A155651.P12005200792962420167

`8^n-6^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155651.P12005200792962420167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - (6 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155651.P12005200792962420167

namespace A155651

/-- `8^n-6^n+1^n` -/
def P12005200792962420167.Spec : Prop :=
  ∀ n, P12005200792962420167.a n = A155651 n

theorem P12005200792962420167.correct : P12005200792962420167.Spec := by
  intro n
  simp only [A155651, Nat.add_sub_cancel, A155651.P12005200792962420167.a, A155651.P7193263786914444295.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155651

/-! ## A155651.P17251163439780659793

`abs(6^n-5^n-A155641(n))`
-/

namespace A155651.P17251163439780659793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (5 ^ n : ℤ) - A155641 n|

end

end A155651.P17251163439780659793

namespace A155651

/-- `abs(6^n-5^n-A155641(n))` -/
def P17251163439780659793.Spec : Prop :=
  ∀ n, P17251163439780659793.a n = A155651 n

end A155651

/-! ## A155651.P15528772696282973556

`abs(A063481(n)-A155617(n))`
-/

namespace A155651.P15528772696282973556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063481 n - A155617 n|

end

end A155651.P15528772696282973556

namespace A155651

/-- `abs(A063481(n)-A155617(n))` -/
def P15528772696282973556.Spec : Prop :=
  ∀ n, P15528772696282973556.a n = A155651 n

end A155651

/-! ## A155651.P16115203697789852619

`and(-A155597(n), A155599(n))`
-/

namespace A155651.P16115203697789852619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A155597 n) (A155599 n)

end

end A155651.P16115203697789852619

namespace A155651

/-- `and(-A155597(n), A155599(n))` -/
def P16115203697789852619.Spec : Prop :=
  ∀ n, P16115203697789852619.a n = A155651 n

end A155651

/-! ## A155651.P18020801739293830550

`and(-A155646(n), A155599(n))`
-/

namespace A155651.P18020801739293830550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A155646 n) (A155599 n)

end

end A155651.P18020801739293830550

namespace A155651

/-- `and(-A155646(n), A155599(n))` -/
def P18020801739293830550.Spec : Prop :=
  ∀ n, P18020801739293830550.a n = A155651 n

end A155651

/-! ## A155651.P16149207901872487235

`or(1, A016177(n)+A016169(n))`
-/

namespace A155651.P16149207901872487235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A016177 n + A016169 n)

end

end A155651.P16149207901872487235

namespace A155651

/-- `or(1, A016177(n)+A016169(n))` -/
def P16149207901872487235.Spec : Prop :=
  ∀ n, P16149207901872487235.a n = A155651 n

end A155651

/-! ## A155651.P2297053953264994558

`or(1, A024093(n)-A024067(n))`
-/

namespace A155651.P2297053953264994558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024093 n - A024067 n)

end

end A155651.P2297053953264994558

namespace A155651

/-- `or(1, A024093(n)-A024067(n))` -/
def P2297053953264994558.Spec : Prop :=
  ∀ n, P2297053953264994558.a n = A155651 n

end A155651

/-! ## A155651.P15304424490500684693

`or(1, A074574(n)-A074571(n))`
-/

namespace A155651.P15304424490500684693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074574 n - A074571 n)

end

end A155651.P15304424490500684693

namespace A155651

/-- `or(1, A074574(n)-A074571(n))` -/
def P15304424490500684693.Spec : Prop :=
  ∀ n, P15304424490500684693.a n = A155651 n

end A155651

/-! ## A155651.P853814329655802480

`xor(1, A155619(n)-A155617(n))`
-/

namespace A155651.P853814329655802480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155619 n - A155617 n)

end

end A155651.P853814329655802480

namespace A155651

/-- `xor(1, A155619(n)-A155617(n))` -/
def P853814329655802480.Spec : Prop :=
  ∀ n, P853814329655802480.a n = A155651 n

end A155651

/-! ## A155651.P14496543081839874501

`record[A094014(n)+1-A026549(n)]`
-/

namespace A155651.P14496543081839874501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n + (1 - A026549 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155651.P14496543081839874501

namespace A155651

/-- `record[A094014(n)+1-A026549(n)]` -/
def P14496543081839874501.Spec : Prop :=
  ∀ n, P14496543081839874501.a n = A155651 n

end A155651

/-!
# A155652: a(n) = 9^n - 6^n + 1.

The programs for A155652, the canonical program `A155652.P5033521643604911755` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155652 has offset 0).

The definition of A155652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-6^n+1` (program `A155652.P5033521643604911755`, by `A155652.P5033521643604911755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155652.P5033521643604911755

`9^n-6^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155652

/-- `9^n-6^n+1` -/
def P5033521643604911755.Spec : Prop :=
  ∀ n, P5033521643604911755.a n = A155652 n

theorem P5033521643604911755.correct : P5033521643604911755.Spec := by
  intro n
  simp only [A155652]

end A155652

/-! ## A155652.P5900095279381992476

`abs(9^n-A024062(n))`
-/

namespace A155652.P5900095279381992476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - A024062 n|

end

end A155652.P5900095279381992476

namespace A155652

/-- `abs(9^n-A024062(n))` -/
def P5900095279381992476.Spec : Prop :=
  ∀ n, P5900095279381992476.a n = A155652 n

end A155652

/-! ## A155652.P2327323769877839158

`abs(A000400(n)-A062396(n))`
-/

namespace A155652.P2327323769877839158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A062396 n|

end

end A155652.P2327323769877839158

namespace A155652

/-- `abs(A000400(n)-A062396(n))` -/
def P2327323769877839158.Spec : Prop :=
  ∀ n, P2327323769877839158.a n = A155652 n

end A155652

/-! ## A155652.P3947371850365058231

`abs(A074515(n)-A074612(n))`
-/

namespace A155652.P3947371850365058231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074515 n - A074612 n|

end

end A155652.P3947371850365058231

namespace A155652

/-- `abs(A074515(n)-A074612(n))` -/
def P3947371850365058231.Spec : Prop :=
  ∀ n, P3947371850365058231.a n = A155652 n

end A155652

/-! ## A155652.P16469924495083517859

`abs(A155600(n)-A248216(n))`
-/

namespace A155652.P16469924495083517859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155600 n - A248216 n|

end

end A155652.P16469924495083517859

namespace A155652

/-- `abs(A155600(n)-A248216(n))` -/
def P16469924495083517859.Spec : Prop :=
  ∀ n, P16469924495083517859.a n = A155652 n

end A155652

/-! ## A155652.P8901547725916256842

`abs(A155630(n)-A248337(n))`
-/

namespace A155652.P8901547725916256842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155630 n - A248337 n|

end

end A155652.P8901547725916256842

namespace A155652

/-- `abs(A155630(n)-A248337(n))` -/
def P8901547725916256842.Spec : Prop :=
  ∀ n, P8901547725916256842.a n = A155652 n

end A155652

/-! ## A155652.P8026598839724479098

`or(A074515(n)-A074612(n), A000007(n))`
-/

namespace A155652.P8026598839724479098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074515 n - A074612 n) (A000007 n)

end

end A155652.P8026598839724479098

namespace A155652

/-- `or(A074515(n)-A074612(n), A000007(n))` -/
def P8026598839724479098.Spec : Prop :=
  ∀ n, P8026598839724479098.a n = A155652 n

end A155652

/-! ## A155652.P9643279059925499642

`xor(A074515(n)-A074612(n), A000007(n+1))`
-/

namespace A155652.P9643279059925499642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A074515 n - A074612 n) (A000007 (n + 1))

end

end A155652.P9643279059925499642

namespace A155652

/-- `xor(A074515(n)-A074612(n), A000007(n+1))` -/
def P9643279059925499642.Spec : Prop :=
  ∀ n, P9643279059925499642.a n = A155652 n

end A155652

/-! ## A155652.P11324793427965408876

`(A000027(n+1)-n)*(A074515(n)-A074612(n))`
-/

namespace A155652.P11324793427965408876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * (A074515 n - A074612 n)

end

end A155652.P11324793427965408876

namespace A155652

/-- `(A000027(n+1)-n)*(A074515(n)-A074612(n))` -/
def P11324793427965408876.Spec : Prop :=
  ∀ n, P11324793427965408876.a n = A155652 n

theorem P11324793427965408876.correct : P11324793427965408876.Spec := by
  intro n
  simp only [A155652, Nat.add_sub_cancel, A155652.P11324793427965408876.a, A155652.P5033521643604911755.a, A000027, A000027.P10331202704469894836.a, A074515, A074515.P11932211166948693284.a, A074612, A074612.P18231376859110003432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155652

/-! ## A155652.P11710307782038454834

`(A074515(n)-A074612(n))*A007318(A000217(n))`
-/

namespace A155652.P11710307782038454834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n - A074612 n) * A007318 (A000217 n).toNat

end

end A155652.P11710307782038454834

namespace A155652

/-- `(A074515(n)-A074612(n))*A007318(A000217(n))` -/
def P11710307782038454834.Spec : Prop :=
  ∀ n, P11710307782038454834.a n = A155652 n

end A155652

/-! ## A155652.P5037251639418382191

`(A074515(n)-A074612(n))%A000244(A004277(n))`
-/

namespace A155652.P5037251639418382191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074515 n - A074612 n) (A000244 (A004277 n).toNat)

end

end A155652.P5037251639418382191

namespace A155652

/-- `(A074515(n)-A074612(n))%A000244(A004277(n))` -/
def P5037251639418382191.Spec : Prop :=
  ∀ n, P5037251639418382191.a n = A155652 n

end A155652

/-! ## A155652.P8883396876917293163

`(A074515(n)-A074612(n))*A001222(A047948(n+1))`
-/

namespace A155652.P8883396876917293163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n - A074612 n) * A001222 (A047948 (n + 1)).toNat

end

end A155652.P8883396876917293163

namespace A155652

/-- `(A074515(n)-A074612(n))*A001222(A047948(n+1))` -/
def P8883396876917293163.Spec : Prop :=
  ∀ n, P8883396876917293163.a n = A155652 n

end A155652

/-! ## A155652.P13859938467341255062

`(A074515(n)-A074612(n))/A007318(A000027(n+1)-n)`
-/

namespace A155652.P13859938467341255062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074515 n - A074612 n : ℚ) / (A007318 (A000027 (n + 1) - (n : ℤ)).toNat : ℚ)

end

end A155652.P13859938467341255062

namespace A155652

/-- `(A074515(n)-A074612(n))/A007318(A000027(n+1)-n)` -/
def P13859938467341255062.Spec : Prop :=
  ∀ n, P13859938467341255062.a n = (A155652 n : ℚ)

end A155652

/-!
# A155653: a(n) = 10^n - 6^n + 1.

The programs for A155653, the canonical program `A155653.P7146487922406750555` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155653 has offset 0).

The definition of A155653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-6^n+1` (program `A155653.P7146487922406750555`, by `A155653.P7146487922406750555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155653.P7146487922406750555

`10^n-6^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155653

/-- `10^n-6^n+1` -/
def P7146487922406750555.Spec : Prop :=
  ∀ n, P7146487922406750555.a n = A155653 n

theorem P7146487922406750555.correct : P7146487922406750555.Spec := by
  intro n
  simp only [A155653]

end A155653

/-! ## A155653.P15267263908913819410

`or(1, 10^n-6^n)`
-/

namespace A155653.P15267263908913819410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((10 ^ n : ℤ) - (6 ^ n : ℤ))

end

end A155653.P15267263908913819410

namespace A155653

/-- `or(1, 10^n-6^n)` -/
def P15267263908913819410.Spec : Prop :=
  ∀ n, P15267263908913819410.a n = A155653 n

end A155653

/-! ## A155653.P1905491830576159439

`xor(1, 10^n-6^n)`
-/

namespace A155653.P1905491830576159439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((10 ^ n : ℤ) - (6 ^ n : ℤ))

end

end A155653.P1905491830576159439

namespace A155653

/-- `xor(1, 10^n-6^n)` -/
def P1905491830576159439.Spec : Prop :=
  ∀ n, P1905491830576159439.a n = A155653 n

end A155653

/-! ## A155653.P1307967317336329637

`abs(6^n-5^n-A155643(n))`
-/

namespace A155653.P1307967317336329637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (5 ^ n : ℤ) - A155643 n|

end

end A155653.P1307967317336329637

namespace A155653

/-- `abs(6^n-5^n-A155643(n))` -/
def P1307967317336329637.Spec : Prop :=
  ∀ n, P1307967317336329637.a n = A155653 n

end A155653

/-! ## A155653.P13051097001725372314

`abs(A011557(n)-A024062(n))`
-/

namespace A155653.P13051097001725372314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A024062 n|

end

end A155653.P13051097001725372314

namespace A155653

/-- `abs(A011557(n)-A024062(n))` -/
def P13051097001725372314.Spec : Prop :=
  ∀ n, P13051097001725372314.a n = A155653 n

end A155653

/-! ## A155653.P17731464554358586020

`(A011557(n)-A024062(n))*A000041(gcd(n, n+1))`
-/

namespace A155653.P17731464554358586020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n - A024062 n) * A000041 (Nat.gcd n (n + 1))

end

end A155653.P17731464554358586020

namespace A155653

/-- `(A011557(n)-A024062(n))*A000041(gcd(n, n+1))` -/
def P17731464554358586020.Spec : Prop :=
  ∀ n, P17731464554358586020.a n = A155653 n

end A155653

/-! ## A155653.P4090636572590828759

`abs(A000400(n)-A062397(n))`
-/

namespace A155653.P4090636572590828759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A062397 n|

end

end A155653.P4090636572590828759

namespace A155653

/-- `abs(A000400(n)-A062397(n))` -/
def P4090636572590828759.Spec : Prop :=
  ∀ n, P4090636572590828759.a n = A155653 n

end A155653

/-!
# A155654: a(n) = 11^n - 6^n + 1.

The programs for A155654, the canonical program `A155654.P13700861897365817075` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155654 has offset 0).

The definition of A155654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-6^n+1` (program `A155654.P13700861897365817075`, by `A155654.P13700861897365817075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155654.P13700861897365817075

`11^n-6^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155654

/-- `11^n-6^n+1` -/
def P13700861897365817075.Spec : Prop :=
  ∀ n, P13700861897365817075.a n = A155654 n

theorem P13700861897365817075.correct : P13700861897365817075.Spec := by
  intro n
  simp only [A155654]

end A155654

/-! ## A155654.P17721298841838587219

`lcm(A139744(n)+1, (-1)^n)`
-/

namespace A155654.P17721298841838587219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139744 n + 1) ((-1) ^ n)

end

end A155654.P17721298841838587219

namespace A155654

/-- `lcm(A139744(n)+1, (-1)^n)` -/
def P17721298841838587219.Spec : Prop :=
  ∀ n, (P17721298841838587219.a n : ℤ) = A155654 n

end A155654

/-! ## A155654.P8640125561791412230

`record[A139744(A142150(n))+1]`
-/

namespace A155654.P8640125561791412230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139744 (A142150 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155654.P8640125561791412230

namespace A155654

/-- `record[A139744(A142150(n))+1]` -/
def P8640125561791412230.Spec : Prop :=
  ∀ n, P8640125561791412230.a n = A155654 n

end A155654

/-! ## A155654.P15874431511803686063

`abs(A001020(n)-A024062(n))`
-/

namespace A155654.P15874431511803686063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A024062 n|

end

end A155654.P15874431511803686063

namespace A155654

/-- `abs(A001020(n)-A024062(n))` -/
def P15874431511803686063.Spec : Prop :=
  ∀ n, P15874431511803686063.a n = A155654 n

end A155654

/-! ## A155654.P5677638101594590699

`abs(A000400(n)-A034524(n))`
-/

namespace A155654.P5677638101594590699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A034524 n|

end

end A155654.P5677638101594590699

namespace A155654

/-- `abs(A000400(n)-A034524(n))` -/
def P5677638101594590699.Spec : Prop :=
  ∀ n, P5677638101594590699.a n = A155654 n

end A155654

/-! ## A155654.P5847234927883713392

`abs(A155632(n)-A248337(n))`
-/

namespace A155654.P5847234927883713392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155632 n - A248337 n|

end

end A155654.P5847234927883713392

namespace A155654

/-- `abs(A155632(n)-A248337(n))` -/
def P5847234927883713392.Spec : Prop :=
  ∀ n, P5847234927883713392.a n = A155654 n

end A155654

/-! ## A155654.P6666446613341118344

`abs(1-(A155633(n)-A155638(n)))`
-/

namespace A155654.P6666446613341118344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155633 n - A155638 n)|

end

end A155654.P6666446613341118344

namespace A155654

/-- `abs(1-(A155633(n)-A155638(n)))` -/
def P6666446613341118344.Spec : Prop :=
  ∀ n, P6666446613341118344.a n = A155654 n

end A155654

/-! ## A155654.P8995404205634404230

`abs(1-(A155639(n)-A155644(n)))`
-/

namespace A155654.P8995404205634404230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155639 n - A155644 n)|

end

end A155654.P8995404205634404230

namespace A155654

/-- `abs(1-(A155639(n)-A155644(n)))` -/
def P8995404205634404230.Spec : Prop :=
  ∀ n, P8995404205634404230.a n = A155654 n

end A155654

/-! ## A155654.P3738166780463404501

`or(1-(A155639(n)-A155644(n)), A000007(n))`
-/

namespace A155654.P3738166780463404501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (A155639 n - A155644 n)) (A000007 n)

end

end A155654.P3738166780463404501

namespace A155654

/-- `or(1-(A155639(n)-A155644(n)), A000007(n))` -/
def P3738166780463404501.Spec : Prop :=
  ∀ n, P3738166780463404501.a n = A155654 n

end A155654

/-!
# A155655: a(n) = 8^n + 7^n - 1^n.

The programs for A155655, the canonical program `A155655.P4260104681183197795` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155655 has offset 0).

The definition of A155655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+7^n-1` (program `A155655.P4260104681183197795`, by `A155655.P4260104681183197795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155655.P4260104681183197795

`8^n+7^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155655

/-- `8^n+7^n-1` -/
def P4260104681183197795.Spec : Prop :=
  ∀ n, P4260104681183197795.a n = A155655 n

theorem P4260104681183197795.correct : P4260104681183197795.Spec := by
  intro n
  simp only [A155655]

end A155655

/-! ## A155655.P10331423798099728201

`8^n+7^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155655.P10331423798099728201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 7 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155655.P10331423798099728201

namespace A155655

/-- `8^n+7^n-1^n` -/
def P10331423798099728201.Spec : Prop :=
  ∀ n, P10331423798099728201.a n = A155655 n

theorem P10331423798099728201.correct : P10331423798099728201.Spec := by
  intro n
  simp only [A155655, Nat.add_sub_cancel, A155655.P10331423798099728201.a, A155655.P4260104681183197795.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155655

/-! ## A155655.P12078323258046330760

`or(7^n-1, 8^n)`
-/

namespace A155655.P12078323258046330760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((7 ^ n : ℤ) - 1) (8 ^ n : ℤ)

end

end A155655.P12078323258046330760

namespace A155655

/-- `or(7^n-1, 8^n)` -/
def P12078323258046330760.Spec : Prop :=
  ∀ n, P12078323258046330760.a n = A155655 n

end A155655

/-! ## A155655.P5980520713310850480

`abs(1-A074622(n))`
-/

namespace A155655.P5980520713310850480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074622 n|

end

end A155655.P5980520713310850480

namespace A155655

/-- `abs(1-A074622(n))` -/
def P5980520713310850480.Spec : Prop :=
  ∀ n, P5980520713310850480.a n = A155655 n

end A155655

/-! ## A155655.P896703633759215378

`abs(2-A074523(n))`
-/

namespace A155655.P896703633759215378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074523 n|

end

end A155655.P896703633759215378

namespace A155655

/-- `abs(2-A074523(n))` -/
def P896703633759215378.Spec : Prop :=
  ∀ n, P896703633759215378.a n = A155655 n

end A155655

/-! ## A155655.P13053240380217511574

`abs(A000051(n)-A074544(n))`
-/

namespace A155655.P13053240380217511574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074544 n|

end

end A155655.P13053240380217511574

namespace A155655

/-- `abs(A000051(n)-A074544(n))` -/
def P13053240380217511574.Spec : Prop :=
  ∀ n, P13053240380217511574.a n = A155655 n

end A155655

/-! ## A155655.P4941461528251149289

`abs(A034474(n)-A074574(n))`
-/

namespace A155655.P4941461528251149289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A074574 n|

end

end A155655.P4941461528251149289

namespace A155655

/-- `abs(A034474(n)-A074574(n))` -/
def P4941461528251149289.Spec : Prop :=
  ∀ n, P4941461528251149289.a n = A155655 n

end A155655

/-! ## A155655.P1242658381918334032

`abs(A062394(n)-A074577(n))`
-/

namespace A155655.P1242658381918334032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n - A074577 n|

end

end A155655.P1242658381918334032

namespace A155655

/-- `abs(A062394(n)-A074577(n))` -/
def P1242658381918334032.Spec : Prop :=
  ∀ n, P1242658381918334032.a n = A155655 n

end A155655

/-! ## A155655.P6864405337649368298

`(A074622(n)-1)*A007318(∑[n])`
-/

namespace A155655.P6864405337649368298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074622 n - 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155655.P6864405337649368298

namespace A155655

/-- `(A074622(n)-1)*A007318(∑[n])` -/
def P6864405337649368298.Spec : Prop :=
  ∀ n, P6864405337649368298.a n = A155655 n

end A155655

/-! ## A155655.P7259194148141796580

`abs(1-∑[A055274(n)+A055272(n)])`
-/

namespace A155655.P7259194148141796580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n + A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A155655.P7259194148141796580

namespace A155655

/-- `abs(1-∑[A055274(n)+A055272(n)])` -/
def P7259194148141796580.Spec : Prop :=
  ∀ n, P7259194148141796580.a n = A155655 n

end A155655

/-!
# A155656: a(n) = 9^n + 7^n - 1.

The programs for A155656, the canonical program `A155656.P506472263792498639` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155656 has offset 0).

The definition of A155656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+7^n-1` (program `A155656.P506472263792498639`, by `A155656.P506472263792498639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155656.P506472263792498639

`9^n+7^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155656

/-- `9^n+7^n-1` -/
def P506472263792498639.Spec : Prop :=
  ∀ n, P506472263792498639.a n = A155656 n

theorem P506472263792498639.correct : P506472263792498639.Spec := by
  intro n
  simp only [A155656]

end A155656

/-! ## A155656.P6939461506101178794

`abs(1-A074623(n))`
-/

namespace A155656.P6939461506101178794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074623 n|

end

end A155656.P6939461506101178794

namespace A155656

/-- `abs(1-A074623(n))` -/
def P6939461506101178794.Spec : Prop :=
  ∀ n, P6939461506101178794.a n = A155656 n

end A155656

/-! ## A155656.P14334978569337903095

`abs(2-A074524(n))`
-/

namespace A155656.P14334978569337903095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074524 n|

end

end A155656.P14334978569337903095

namespace A155656

/-- `abs(2-A074524(n))` -/
def P14334978569337903095.Spec : Prop :=
  ∀ n, P14334978569337903095.a n = A155656 n

end A155656

/-! ## A155656.P4881486537167940789

`abs(1-2*A081190(n))`
-/

namespace A155656.P4881486537167940789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A081190 n|

end

end A155656.P4881486537167940789

namespace A155656

/-- `abs(1-2*A081190(n))` -/
def P4881486537167940789.Spec : Prop :=
  ∀ n, P4881486537167940789.a n = A155656 n

end A155656

/-! ## A155656.P15322302478805942575

`abs(A000051(n)-A074545(n))`
-/

namespace A155656.P15322302478805942575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074545 n|

end

end A155656.P15322302478805942575

namespace A155656

/-- `abs(A000051(n)-A074545(n))` -/
def P15322302478805942575.Spec : Prop :=
  ∀ n, P15322302478805942575.a n = A155656 n

end A155656

/-! ## A155656.P17121218243629659012

`abs(A034472(n)-A074559(n))`
-/

namespace A155656.P17121218243629659012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 n - A074559 n|

end

end A155656.P17121218243629659012

namespace A155656

/-- `abs(A034472(n)-A074559(n))` -/
def P17121218243629659012.Spec : Prop :=
  ∀ n, P17121218243629659012.a n = A155656 n

end A155656

/-! ## A155656.P2286514431914066688

`abs(A062394(n)-A074578(n))`
-/

namespace A155656.P2286514431914066688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n - A074578 n|

end

end A155656.P2286514431914066688

namespace A155656

/-- `abs(A062394(n)-A074578(n))` -/
def P2286514431914066688.Spec : Prop :=
  ∀ n, P2286514431914066688.a n = A155656 n

end A155656

/-! ## A155656.P11182720970404024329

`abs(1-∑[A055275(n)+A055272(n)])`
-/

namespace A155656.P11182720970404024329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A155656.P11182720970404024329

namespace A155656

/-- `abs(1-∑[A055275(n)+A055272(n)])` -/
def P11182720970404024329.Spec : Prop :=
  ∀ n, P11182720970404024329.a n = A155656 n

end A155656

/-! ## A155656.P10630455630852521702

`(2*A081190(n)-1)/A007318(∑[n])`
-/

namespace A155656.P10630455630852521702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A081190 n - 1 : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A155656.P10630455630852521702

namespace A155656

/-- `(2*A081190(n)-1)/A007318(∑[n])` -/
def P10630455630852521702.Spec : Prop :=
  ∀ n, P10630455630852521702.a n = (A155656 n : ℚ)

end A155656

/-! ## A155656.P8430500177964664582

`or(A024075(n)+A001019(n), char[3*n])`
-/

namespace A155656.P8430500177964664582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024075 n + A001019 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A155656.P8430500177964664582

namespace A155656

/-- `or(A024075(n)+A001019(n), char[3*n])` -/
def P8430500177964664582.Spec : Prop :=
  ∀ n, P8430500177964664582.a n = A155656 n

end A155656

/-!
# A155657: a(n) = 10^n+7^n-1.

The programs for A155657, the canonical program `A155657.P8058687486992780050` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155657 has offset 0).

The definition of A155657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+7^n-1` (program `A155657.P8058687486992780050`, by `A155657.P8058687486992780050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155657.P8058687486992780050

`10^n+7^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155657

/-- `10^n+7^n-1` -/
def P8058687486992780050.Spec : Prop :=
  ∀ n, P8058687486992780050.a n = A155657 n

theorem P8058687486992780050.correct : P8058687486992780050.Spec := by
  intro n
  simp only [A155657]

end A155657

/-! ## A155657.P12071120742766125253

`abs(1-A245807(n))`
-/

namespace A155657.P12071120742766125253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A245807 n|

end

end A155657.P12071120742766125253

namespace A155657

/-- `abs(1-A245807(n))` -/
def P12071120742766125253.Spec : Prop :=
  ∀ n, P12071120742766125253.a n = A155657 n

end A155657

/-! ## A155657.P17969247864391546359

`abs(9^n-7^n-A155669(n))`
-/

namespace A155657.P17969247864391546359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - (7 ^ n : ℤ) - A155669 n|

end

end A155657.P17969247864391546359

namespace A155657

/-- `abs(9^n-7^n-A155669(n))` -/
def P17969247864391546359.Spec : Prop :=
  ∀ n, P17969247864391546359.a n = A155657 n

end A155657

/-! ## A155657.P14090230129921073656

`lcm(1-A245807(n), A055642(n))`
-/

namespace A155657.P14090230129921073656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A245807 n) (A055642 n)

end

end A155657.P14090230129921073656

namespace A155657

/-- `lcm(1-A245807(n), A055642(n))` -/
def P14090230129921073656.Spec : Prop :=
  ∀ n, (P14090230129921073656.a n : ℤ) = A155657 n

end A155657

/-! ## A155657.P15365803277501262463

`xor(1, A245807(n)%A125383(n))`
-/

namespace A155657.P15365803277501262463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A245807 n) (A125383 n))

end

end A155657.P15365803277501262463

namespace A155657

/-- `xor(1, A245807(n)%A125383(n))` -/
def P15365803277501262463.Spec : Prop :=
  ∀ n, P15365803277501262463.a n = A155657 n

end A155657

/-! ## A155657.P9712668620557799834

`Δ[A047855(n)+A047852(n)-n]`
-/

namespace A155657.P9712668620557799834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A047852 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155657.P9712668620557799834

namespace A155657

/-- `Δ[A047855(n)+A047852(n)-n]` -/
def P9712668620557799834.Spec : Prop :=
  ∀ n, P9712668620557799834.a n = A155657 n

end A155657

/-! ## A155657.P11821997853297925166

`(1-A245807(n))*A008683(A006512(n+1))`
-/

namespace A155657.P11821997853297925166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A245807 n) * A008683 (A006512 (n + 1)).toNat

end

end A155657.P11821997853297925166

namespace A155657

/-- `(1-A245807(n))*A008683(A006512(n+1))` -/
def P11821997853297925166.Spec : Prop :=
  ∀ n, P11821997853297925166.a n = A155657 n

end A155657

/-! ## A155657.P11441650112138560504

`(1-A245807(n))*A008683(A107812(n+1))`
-/

namespace A155657.P11441650112138560504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A245807 n) * A008683 (A107812 (n + 1)).toNat

end

end A155657.P11441650112138560504

namespace A155657

/-- `(1-A245807(n))*A008683(A107812(n+1))` -/
def P11441650112138560504.Spec : Prop :=
  ∀ n, P11441650112138560504.a n = A155657 n

end A155657

/-!
# A155658: a(n) = 11^n + 7^n - 1.

The programs for A155658, the canonical program `A155658.P14789740388466655184` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155658 has offset 0).

The definition of A155658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+7^n-1` (program `A155658.P14789740388466655184`, by `A155658.P14789740388466655184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155658.P14789740388466655184

`11^n+7^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155658

/-- `11^n+7^n-1` -/
def P14789740388466655184.Spec : Prop :=
  ∀ n, P14789740388466655184.a n = A155658 n

theorem P14789740388466655184.correct : P14789740388466655184.Spec := by
  intro n
  simp only [A155658]

end A155658

/-! ## A155658.P201751523021453610

`xor(3, 7^n+11^n)`
-/

namespace A155658.P201751523021453610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (7 ^ n + 11 ^ n)

end

end A155658.P201751523021453610

namespace A155658

/-- `xor(3, 7^n+11^n)` -/
def P201751523021453610.Spec : Prop :=
  ∀ n, (P201751523021453610.a n : ℤ) = A155658 n

end A155658

/-! ## A155658.P11196450599038770951

`abs(9^n-7^n-A155670(n))`
-/

namespace A155658.P11196450599038770951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - (7 ^ n : ℤ) - A155670 n|

end

end A155658.P11196450599038770951

namespace A155658

/-- `abs(9^n-7^n-A155670(n))` -/
def P11196450599038770951.Spec : Prop :=
  ∀ n, P11196450599038770951.a n = A155658 n

end A155658

/-! ## A155658.P14023973413388287260

`abs(A155670(n)-A191467(n))`
-/

namespace A155658.P14023973413388287260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155670 n - A191467 n|

end

end A155658.P14023973413388287260

namespace A155658

/-- `abs(A155670(n)-A191467(n))` -/
def P14023973413388287260.Spec : Prop :=
  ∀ n, P14023973413388287260.a n = A155658 n

end A155658

/-! ## A155658.P5048937131993332073

`abs(A155673(n)-A248341(n))`
-/

namespace A155658.P5048937131993332073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155673 n - A248341 n|

end

end A155658.P5048937131993332073

namespace A155658

/-- `abs(A155673(n)-A248341(n))` -/
def P5048937131993332073.Spec : Prop :=
  ∀ n, P5048937131993332073.a n = A155658 n

end A155658

/-! ## A155658.P689610580363695682

`or(A155670(n)-A191467(n), A000035(n))`
-/

namespace A155658.P689610580363695682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155670 n - A191467 n) (A000035 n)

end

end A155658.P689610580363695682

namespace A155658

/-- `or(A155670(n)-A191467(n), A000035(n))` -/
def P689610580363695682.Spec : Prop :=
  ∀ n, P689610580363695682.a n = A155658 n

end A155658

/-! ## A155658.P1450684936906797788

`(A155670(n)-A191467(n))*A000034(2*n)`
-/

namespace A155658.P1450684936906797788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155670 n - A191467 n) * A000034 (2 * n)

end

end A155658.P1450684936906797788

namespace A155658

/-- `(A155670(n)-A191467(n))*A000034(2*n)` -/
def P1450684936906797788.Spec : Prop :=
  ∀ n, P1450684936906797788.a n = A155658 n

end A155658

/-! ## A155658.P11141476079692667768

`or(A155670(n)-A191467(n), A202108(n+2))`
-/

namespace A155658.P11141476079692667768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155670 n - A191467 n) (A202108 (n + 2))

end

end A155658.P11141476079692667768

namespace A155658

/-- `or(A155670(n)-A191467(n), A202108(n+2))` -/
def P11141476079692667768.Spec : Prop :=
  ∀ n, P11141476079692667768.a n = A155658 n

end A155658

/-! ## A155658.P8187498915558224218

`(A155670(n)-A191467(n))*A003557(A060084(n+1))`
-/

namespace A155658.P8187498915558224218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155670 n - A191467 n) * A003557 (A060084 (n + 1)).toNat

end

end A155658.P8187498915558224218

namespace A155658

/-- `(A155670(n)-A191467(n))*A003557(A060084(n+1))` -/
def P8187498915558224218.Spec : Prop :=
  ∀ n, P8187498915558224218.a n = A155658 n

end A155658

/-! ## A155658.P787555893690226173

`(A155670(n)-A191467(n))*A006519(A088967(n+2)-1)`
-/

namespace A155658.P787555893690226173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155670 n - A191467 n) * A006519 (A088967 (n + 2) - 1).toNat

end

end A155658.P787555893690226173

namespace A155658

/-- `(A155670(n)-A191467(n))*A006519(A088967(n+2)-1)` -/
def P787555893690226173.Spec : Prop :=
  ∀ n, P787555893690226173.a n = A155658 n

end A155658

/-!
# A155659: a(n) = 8^n - 7^n + 1.

The programs for A155659, the canonical program `A155659.P13069452461184344197` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155659 has offset 0).

The definition of A155659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-7^n+1` (program `A155659.P13069452461184344197`, by `A155659.P13069452461184344197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155659.P13069452461184344197

`8^n-7^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155659

/-- `8^n-7^n+1` -/
def P13069452461184344197.Spec : Prop :=
  ∀ n, P13069452461184344197.a n = A155659 n

theorem P13069452461184344197.correct : P13069452461184344197.Spec := by
  intro n
  simp only [A155659]

end A155659

/-! ## A155659.P6299091626847162267

`abs(7^n-2^n-A155599(n))`
-/

namespace A155659.P6299091626847162267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - (2 ^ n : ℤ) - A155599 n|

end

end A155659.P6299091626847162267

namespace A155659

/-- `abs(7^n-2^n-A155599(n))` -/
def P6299091626847162267.Spec : Prop :=
  ∀ n, P6299091626847162267.a n = A155659 n

end A155659

/-! ## A155659.P16765327330750275416

`abs(7^n-5^n-A155641(n))`
-/

namespace A155659.P16765327330750275416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - (5 ^ n : ℤ) - A155641 n|

end

end A155659.P16765327330750275416

namespace A155659

/-- `abs(7^n-5^n-A155641(n))` -/
def P16765327330750275416.Spec : Prop :=
  ∀ n, P16765327330750275416.a n = A155659 n

end A155659

/-! ## A155659.P10457582195838125871

`abs(A074521(n)-A074619(n))`
-/

namespace A155659.P10457582195838125871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074521 n - A074619 n|

end

end A155659.P10457582195838125871

namespace A155659

/-- `abs(A074521(n)-A074619(n))` -/
def P10457582195838125871.Spec : Prop :=
  ∀ n, P10457582195838125871.a n = A155659 n

end A155659

/-! ## A155659.P17045130008458910617

`abs(A063481(n)-A155618(n))`
-/

namespace A155659.P17045130008458910617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063481 n - A155618 n|

end

end A155659.P17045130008458910617

namespace A155659

/-- `abs(A063481(n)-A155618(n))` -/
def P17045130008458910617.Spec : Prop :=
  ∀ n, P17045130008458910617.a n = A155659 n

end A155659

/-! ## A155659.P18391229778791993635

`abs(A253210(n)-A253211(n))`
-/

namespace A155659.P18391229778791993635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253210 n - A253211 n|

end

end A155659.P18391229778791993635

namespace A155659

/-- `abs(A253210(n)-A253211(n))` -/
def P18391229778791993635.Spec : Prop :=
  ∀ n, P18391229778791993635.a n = A155659 n

end A155659

/-! ## A155659.P15540005649789040917

`abs(1-(A155634(n)-A155635(n)))`
-/

namespace A155659.P15540005649789040917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155634 n - A155635 n)|

end

end A155659.P15540005649789040917

namespace A155659

/-- `abs(1-(A155634(n)-A155635(n)))` -/
def P15540005649789040917.Spec : Prop :=
  ∀ n, P15540005649789040917.a n = A155659 n

end A155659

/-! ## A155659.P7889971268055971655

`abs(1-(A155645(n)-A155646(n)))`
-/

namespace A155659.P7889971268055971655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155645 n - A155646 n)|

end

end A155659.P7889971268055971655

namespace A155659

/-- `abs(1-(A155645(n)-A155646(n)))` -/
def P7889971268055971655.Spec : Prop :=
  ∀ n, P7889971268055971655.a n = A155659 n

end A155659

/-! ## A155659.P11878334330504216914

`∑[A257288(abs(1-n)-A000007(n))]`
-/

namespace A155659.P11878334330504216914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257288 (|1 - (n : ℤ)| - A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155659.P11878334330504216914

namespace A155659

/-- `∑[A257288(abs(1-n)-A000007(n))]` -/
def P11878334330504216914.Spec : Prop :=
  ∀ n, P11878334330504216914.a n = A155659 n

end A155659

/-!
# A155660: a(n) = 9^n - 7^n + 1.

The programs for A155660, the canonical program `A155660.P14152469357623569788` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155660 has offset 0).

The definition of A155660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-7^n+1` (program `A155660.P14152469357623569788`, by `A155660.P14152469357623569788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155660.P14152469357623569788

`9^n-7^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155660

/-- `9^n-7^n+1` -/
def P14152469357623569788.Spec : Prop :=
  ∀ n, P14152469357623569788.a n = A155660 n

theorem P14152469357623569788.correct : P14152469357623569788.Spec := by
  intro n
  simp only [A155660]

end A155660

/-! ## A155660.P10099218155220458378

`or(1, 9^n-7^n)`
-/

namespace A155660.P10099218155220458378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((9 ^ n : ℤ) - (7 ^ n : ℤ))

end

end A155660.P10099218155220458378

namespace A155660

/-- `or(1, 9^n-7^n)` -/
def P10099218155220458378.Spec : Prop :=
  ∀ n, P10099218155220458378.a n = A155660 n

end A155660

/-! ## A155660.P493490761879836671

`xor(1, 9^n-7^n)`
-/

namespace A155660.P493490761879836671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((9 ^ n : ℤ) - (7 ^ n : ℤ))

end

end A155660.P493490761879836671

namespace A155660

/-- `xor(1, 9^n-7^n)` -/
def P493490761879836671.Spec : Prop :=
  ∀ n, P493490761879836671.a n = A155660 n

end A155660

/-! ## A155660.P12118353182449379466

`abs(1-4/2-A191467(n))`
-/

namespace A155660.P12118353182449379466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (4 : ℚ) / 2 - (A191467 n : ℚ)|

end

end A155660.P12118353182449379466

namespace A155660

/-- `abs(1-4/2-A191467(n))` -/
def P12118353182449379466.Spec : Prop :=
  ∀ n, P12118353182449379466.a n = (A155660 n : ℚ)

end A155660

/-! ## A155660.P9382500379274068038

`abs(A074604(n)-A155590(n))`
-/

namespace A155660.P9382500379274068038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074604 n - A155590 n|

end

end A155660.P9382500379274068038

namespace A155660

/-- `abs(A074604(n)-A155590(n))` -/
def P9382500379274068038.Spec : Prop :=
  ∀ n, P9382500379274068038.a n = A155660 n

end A155660

/-! ## A155660.P8594304170662624128

`abs(A155614(n)-A190541(n))`
-/

namespace A155660.P8594304170662624128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155614 n - A190541 n|

end

end A155660.P8594304170662624128

namespace A155660

/-- `abs(A155614(n)-A190541(n))` -/
def P8594304170662624128.Spec : Prop :=
  ∀ n, P8594304170662624128.a n = A155660 n

end A155660

/-! ## A155660.P9693532122592133554

`abs(A074610(n)-(A074608(n)-1))`
-/

namespace A155660.P9693532122592133554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074610 n - (A074608 n - 1)|

end

end A155660.P9693532122592133554

namespace A155660

/-- `abs(A074610(n)-(A074608(n)-1))` -/
def P9693532122592133554.Spec : Prop :=
  ∀ n, P9693532122592133554.a n = A155660 n

end A155660

/-! ## A155660.P7237428214665621358

`abs(A024075(n)-(A024023(n)+1)²)`
-/

namespace A155660.P7237428214665621358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024075 n - (A024023 n + 1) ^ 2|

end

end A155660.P7237428214665621358

namespace A155660

/-- `abs(A024075(n)-(A024023(n)+1)²)` -/
def P7237428214665621358.Spec : Prop :=
  ∀ n, P7237428214665621358.a n = A155660 n

end A155660

/-! ## A155660.P11255167271107939525

`abs(A016185(n)+A155613(n)-A155612(n)+1)`
-/

namespace A155660.P11255167271107939525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016185 n + (A155613 n - A155612 n + 1)|

end

end A155660.P11255167271107939525

namespace A155660

/-- `abs(A016185(n)+A155613(n)-A155612(n)+1)` -/
def P11255167271107939525.Spec : Prop :=
  ∀ n, P11255167271107939525.a n = A155660 n

end A155660

/-! ## A155660.P17223653994626646228

`abs(A016185(n)+A155619(n)-A155618(n)+1)`
-/

namespace A155660.P17223653994626646228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016185 n + (A155619 n - A155618 n + 1)|

end

end A155660.P17223653994626646228

namespace A155660

/-- `abs(A016185(n)+A155619(n)-A155618(n)+1)` -/
def P17223653994626646228.Spec : Prop :=
  ∀ n, P17223653994626646228.a n = A155660 n

end A155660

/-!
# A155661: a(n) = 10^n - 7^n + 1.

The programs for A155661, the canonical program `A155661.P14122432005511907645` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155661 has offset 0).

The definition of A155661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-7^n+1` (program `A155661.P14122432005511907645`, by `A155661.P14122432005511907645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155661.P14122432005511907645

`10^n-7^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155661

/-- `10^n-7^n+1` -/
def P14122432005511907645.Spec : Prop :=
  ∀ n, P14122432005511907645.a n = A155661 n

theorem P14122432005511907645.correct : P14122432005511907645.Spec := by
  intro n
  simp only [A155661]

end A155661

/-! ## A155661.P15730292260507558670

`abs(xor(-1, A248341(n)))`
-/

namespace A155661.P15730292260507558670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A248341 n)|

end

end A155661.P15730292260507558670

namespace A155661

/-- `abs(xor(-1, A248341(n)))` -/
def P15730292260507558670.Spec : Prop :=
  ∀ n, P15730292260507558670.a n = A155661 n

end A155661

/-! ## A155661.P4451288864916053004

`abs(7^n-5^n-A155643(n))`
-/

namespace A155661.P4451288864916053004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - (5 ^ n : ℤ) - A155643 n|

end

end A155661.P4451288864916053004

namespace A155661

/-- `abs(7^n-5^n-A155643(n))` -/
def P4451288864916053004.Spec : Prop :=
  ∀ n, P4451288864916053004.a n = A155661 n

end A155661

/-! ## A155661.P15105627060658754870

`abs(A024076(n)-(A024115(n)+1))`
-/

namespace A155661.P15105627060658754870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024076 n - (A024115 n + 1)|

end

end A155661.P15105627060658754870

namespace A155661

/-- `abs(A024076(n)-(A024115(n)+1))` -/
def P15105627060658754870.Spec : Prop :=
  ∀ n, P15105627060658754870.a n = A155661 n

end A155661

/-! ## A155661.P8979732711393029178

`abs(1-(A024079(n)-A024118(n)))`
-/

namespace A155661.P8979732711393029178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A024079 n - A024118 n)|

end

end A155661.P8979732711393029178

namespace A155661

/-- `abs(1-(A024079(n)-A024118(n)))` -/
def P8979732711393029178.Spec : Prop :=
  ∀ n, P8979732711393029178.a n = A155661 n

end A155661

/-! ## A155661.P5138877496733308621

`abs(1-(A034491(n)-A062397(n)))`
-/

namespace A155661.P5138877496733308621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A034491 n - A062397 n)|

end

end A155661.P5138877496733308621

namespace A155661

/-- `abs(1-(A034491(n)-A062397(n)))` -/
def P5138877496733308621.Spec : Prop :=
  ∀ n, P5138877496733308621.a n = A155661 n

end A155661

/-! ## A155661.P5790953300653724788

`Δ[A047855(n)-A047852(n)+n]`
-/

namespace A155661.P5790953300653724788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A047852 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155661.P5790953300653724788

namespace A155661

/-- `Δ[A047855(n)-A047852(n)+n]` -/
def P5790953300653724788.Spec : Prop :=
  ∀ n, P5790953300653724788.a n = A155661 n

end A155661

/-!
# A155662: a(n) = 11^n - 7^n + 1.

The programs for A155662, the canonical program `A155662.P18208564133742314565` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155662 has offset 0).

The definition of A155662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-7^n+1` (program `A155662.P18208564133742314565`, by `A155662.P18208564133742314565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155662.P18208564133742314565

`11^n-7^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155662

/-- `11^n-7^n+1` -/
def P18208564133742314565.Spec : Prop :=
  ∀ n, P18208564133742314565.a n = A155662 n

theorem P18208564133742314565.correct : P18208564133742314565.Spec := by
  intro n
  simp only [A155662]

end A155662

/-! ## A155662.P18025329319815822599

`or(1, 11^n-7^n)`
-/

namespace A155662.P18025329319815822599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((11 ^ n : ℤ) - (7 ^ n : ℤ))

end

end A155662.P18025329319815822599

namespace A155662

/-- `or(1, 11^n-7^n)` -/
def P18025329319815822599.Spec : Prop :=
  ∀ n, P18025329319815822599.a n = A155662 n

end A155662

/-! ## A155662.P5902736834372597769

`xor(1, 11^n-7^n)`
-/

namespace A155662.P5902736834372597769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((11 ^ n : ℤ) - (7 ^ n : ℤ))

end

end A155662.P5902736834372597769

namespace A155662

/-- `xor(1, 11^n-7^n)` -/
def P5902736834372597769.Spec : Prop :=
  ∀ n, P5902736834372597769.a n = A155662 n

end A155662

/-! ## A155662.P4242231163271482741

`abs(A001020(n)-A024075(n))`
-/

namespace A155662.P4242231163271482741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A024075 n|

end

end A155662.P4242231163271482741

namespace A155662

/-- `abs(A001020(n)-A024075(n))` -/
def P4242231163271482741.Spec : Prop :=
  ∀ n, P4242231163271482741.a n = A155662 n

end A155662

/-! ## A155662.P18311448366628138978

`abs(A000420(n)-A034524(n))`
-/

namespace A155662.P18311448366628138978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A034524 n|

end

end A155662.P18311448366628138978

namespace A155662

/-- `abs(A000420(n)-A034524(n))` -/
def P18311448366628138978.Spec : Prop :=
  ∀ n, P18311448366628138978.a n = A155662 n

end A155662

/-! ## A155662.P13601381337282474022

`abs(xor(A020985(n), A139745(n)))`
-/

namespace A155662.P13601381337282474022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A020985 n) (A139745 n)|

end

end A155662.P13601381337282474022

namespace A155662

/-- `abs(xor(A020985(n), A139745(n)))` -/
def P13601381337282474022.Spec : Prop :=
  ∀ n, P13601381337282474022.a n = A155662 n

end A155662

/-! ## A155662.P14151450480853953792

`abs(1-(A155634(n)-A155638(n)))`
-/

namespace A155662.P14151450480853953792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155634 n - A155638 n)|

end

end A155662.P14151450480853953792

namespace A155662

/-- `abs(1-(A155634(n)-A155638(n)))` -/
def P14151450480853953792.Spec : Prop :=
  ∀ n, P14151450480853953792.a n = A155662 n

end A155662

/-! ## A155662.P17924460813670711362

`lcm(A139745(n)+1, A014077(n+2))`
-/

namespace A155662.P17924460813670711362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139745 n + 1) (A014077 (n + 2))

end

end A155662.P17924460813670711362

namespace A155662

/-- `lcm(A139745(n)+1, A014077(n+2))` -/
def P17924460813670711362.Spec : Prop :=
  ∀ n, (P17924460813670711362.a n : ℤ) = A155662 n

end A155662

/-! ## A155662.P9936524321090802979

`ceil(A115362(n²)/2-(A024079(n)-A024131(n)))`
-/

namespace A155662.P9936524321090802979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115362 (n ^ 2) : ℚ) / 2 - (A024079 n - A024131 n : ℚ)⌉

end

end A155662.P9936524321090802979

namespace A155662

/-- `ceil(A115362(n²)/2-(A024079(n)-A024131(n)))` -/
def P9936524321090802979.Spec : Prop :=
  ∀ n, P9936524321090802979.a n = A155662 n

end A155662

/-!
# A155663: a(n) = 9^n + 8^n - 1.

The programs for A155663, the canonical program `A155663.P11985873837253233412` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155663 has offset 0).

The definition of A155663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+8^n-1` (program `A155663.P11985873837253233412`, by `A155663.P11985873837253233412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155663.P11985873837253233412

`9^n+8^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155663

/-- `9^n+8^n-1` -/
def P11985873837253233412.Spec : Prop :=
  ∀ n, P11985873837253233412.a n = A155663 n

theorem P11985873837253233412.correct : P11985873837253233412.Spec := by
  intro n
  simp only [A155663]

end A155663

/-! ## A155663.P1341448971068450454

`xor(8^n+9^n+1, 2)`
-/

namespace A155663.P1341448971068450454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (8 ^ n + (9 ^ n + 1)) 2

end

end A155663.P1341448971068450454

namespace A155663

/-- `xor(8^n+9^n+1, 2)` -/
def P1341448971068450454.Spec : Prop :=
  ∀ n, (P1341448971068450454.a n : ℤ) = A155663 n

end A155663

/-! ## A155663.P13729367038400280045

`abs(1-A074624(n))`
-/

namespace A155663.P13729367038400280045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074624 n|

end

end A155663.P13729367038400280045

namespace A155663

/-- `abs(1-A074624(n))` -/
def P13729367038400280045.Spec : Prop :=
  ∀ n, P13729367038400280045.a n = A155663 n

end A155663

/-! ## A155663.P258922090586346817

`abs(2-A074525(n))`
-/

namespace A155663.P258922090586346817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074525 n|

end

end A155663.P258922090586346817

namespace A155663

/-- `abs(2-A074525(n))` -/
def P258922090586346817.Spec : Prop :=
  ∀ n, P258922090586346817.a n = A155663 n

end A155663

/-! ## A155663.P16618859442458730137

`and(8^n+9^n+1, A074624(round(sqrt(n²+1))))`
-/

namespace A155663.P16618859442458730137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (8 ^ n + (9 ^ n + 1) : ℤ) (A074624 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A155663.P16618859442458730137

namespace A155663

/-- `and(8^n+9^n+1, A074624(round(sqrt(n²+1))))` -/
def P16618859442458730137.Spec : Prop :=
  ∀ n, P16618859442458730137.a n = A155663 n

end A155663

/-! ## A155663.P14898843970279707811

`abs(A000051(n)-A074546(n))`
-/

namespace A155663.P14898843970279707811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074546 n|

end

end A155663.P14898843970279707811

namespace A155663

/-- `abs(A000051(n)-A074546(n))` -/
def P14898843970279707811.Spec : Prop :=
  ∀ n, P14898843970279707811.a n = A155663 n

end A155663

/-! ## A155663.P13926113113087590739

`abs(A001554(n)-A001556(n)+1)`
-/

namespace A155663.P13926113113087590739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001554 n - A001556 n + 1|

end

end A155663.P13926113113087590739

namespace A155663

/-- `abs(A001554(n)-A001556(n)+1)` -/
def P13926113113087590739.Spec : Prop :=
  ∀ n, P13926113113087590739.a n = A155663 n

end A155663

/-!
# A155664: a(n) = 10^n+8^n-1.

The programs for A155664, the canonical program `A155664.P51984512154407707` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155664 has offset 0).

The definition of A155664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+8^n-1` (program `A155664.P51984512154407707`, by `A155664.P51984512154407707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155664.P51984512154407707

`10^n+8^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155664

/-- `10^n+8^n-1` -/
def P51984512154407707.Spec : Prop :=
  ∀ n, P51984512154407707.a n = A155664 n

theorem P51984512154407707.correct : P51984512154407707.Spec := by
  intro n
  simp only [A155664]

end A155664

/-! ## A155664.P1181904442812781864

`or(1, A191468(n)+A155637(n))`
-/

namespace A155664.P1181904442812781864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A191468 n + A155637 n)

end

end A155664.P1181904442812781864

namespace A155664

/-- `or(1, A191468(n)+A155637(n))` -/
def P1181904442812781864.Spec : Prop :=
  ∀ n, P1181904442812781864.a n = A155664 n

end A155664

/-! ## A155664.P11403329276615477761

`or(1, A155669(n)-A155666(n))`
-/

namespace A155664.P11403329276615477761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155669 n - A155666 n)

end

end A155664.P11403329276615477761

namespace A155664

/-- `or(1, A155669(n)-A155666(n))` -/
def P11403329276615477761.Spec : Prop :=
  ∀ n, P11403329276615477761.a n = A155664 n

end A155664

/-! ## A155664.P8487079526830878368

`xor(n, A024115(n)+A024088(n))`
-/

namespace A155664.P8487079526830878368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A024115 n + A024088 n)

end

end A155664.P8487079526830878368

namespace A155664

/-- `xor(n, A024115(n)+A024088(n))` -/
def P8487079526830878368.Spec : Prop :=
  ∀ n, P8487079526830878368.a n = A155664 n

end A155664

/-! ## A155664.P3642150626759064095

`abs((A191468(n)+A155637(n))*A087960(n))`
-/

namespace A155664.P3642150626759064095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A191468 n + A155637 n) * A087960 n|

end

end A155664.P3642150626759064095

namespace A155664

/-- `abs((A191468(n)+A155637(n))*A087960(n))` -/
def P3642150626759064095.Spec : Prop :=
  ∀ n, P3642150626759064095.a n = A155664 n

end A155664

/-! ## A155664.P10677653269710977682

`(A191468(n)+A155637(n))*A033999(n)²`
-/

namespace A155664.P10677653269710977682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191468 n + A155637 n) * A033999 n ^ 2

end

end A155664.P10677653269710977682

namespace A155664

/-- `(A191468(n)+A155637(n))*A033999(n)²` -/
def P10677653269710977682.Spec : Prop :=
  ∀ n, P10677653269710977682.a n = A155664 n

end A155664

/-! ## A155664.P6014626550139309663

`xor(A191468(n)+A155637(n), A178333(2*n))`
-/

namespace A155664.P6014626550139309663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A191468 n + A155637 n) (A178333 (2 * n))

end

end A155664.P6014626550139309663

namespace A155664

/-- `xor(A191468(n)+A155637(n), A178333(2*n))` -/
def P6014626550139309663.Spec : Prop :=
  ∀ n, P6014626550139309663.a n = A155664 n

end A155664

/-! ## A155664.P12908073383009816785

`(A191468(n)+A155637(n))*A001511(2*n+1)`
-/

namespace A155664.P12908073383009816785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191468 n + A155637 n) * A001511 (2 * n + 1)

end

end A155664.P12908073383009816785

namespace A155664

/-- `(A191468(n)+A155637(n))*A001511(2*n+1)` -/
def P12908073383009816785.Spec : Prop :=
  ∀ n, P12908073383009816785.a n = A155664 n

end A155664

/-! ## A155664.P8322956836121967007

`(A191468(n)+A155637(n))*A001222(A063637(n+1))`
-/

namespace A155664.P8322956836121967007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191468 n + A155637 n) * A001222 (A063637 (n + 1)).toNat

end

end A155664.P8322956836121967007

namespace A155664

/-- `(A191468(n)+A155637(n))*A001222(A063637(n+1))` -/
def P8322956836121967007.Spec : Prop :=
  ∀ n, P8322956836121967007.a n = A155664 n

end A155664

/-! ## A155664.P17487051765373352049

`(A191468(n)+A155637(n))*A000045(A014963(2*(n+1)))`
-/

namespace A155664.P17487051765373352049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191468 n + A155637 n) * A000045 (A014963 (2 * (n + 1))).toNat

end

end A155664.P17487051765373352049

namespace A155664

/-- `(A191468(n)+A155637(n))*A000045(A014963(2*(n+1)))` -/
def P17487051765373352049.Spec : Prop :=
  ∀ n, P17487051765373352049.a n = A155664 n

end A155664

/-!
# A155665: a(n) = 11^n + 8^n - 1.

The programs for A155665, the canonical program `A155665.P14181710842836792911` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155665 has offset 0).

The definition of A155665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+8^n-1` (program `A155665.P14181710842836792911`, by `A155665.P14181710842836792911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155665.P14181710842836792911

`11^n+8^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155665

/-- `11^n+8^n-1` -/
def P14181710842836792911.Spec : Prop :=
  ∀ n, P14181710842836792911.a n = A155665 n

theorem P14181710842836792911.correct : P14181710842836792911.Spec := by
  intro n
  simp only [A155665]

end A155665

/-! ## A155665.P13660945192969561956

`abs(A155667(n)-A155872(n))`
-/

namespace A155665.P13660945192969561956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155667 n - A155872 n|

end

end A155665.P13660945192969561956

namespace A155665

/-- `abs(A155667(n)-A155872(n))` -/
def P13660945192969561956.Spec : Prop :=
  ∀ n, P13660945192969561956.a n = A155665 n

end A155665

/-! ## A155665.P17103631747079311130

`gcd(A155667(n)-A155872(n), A000038(n))`
-/

namespace A155665.P17103631747079311130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155667 n - A155872 n) (A000038 n)

end

end A155665.P17103631747079311130

namespace A155665

/-- `gcd(A155667(n)-A155872(n), A000038(n))` -/
def P17103631747079311130.Spec : Prop :=
  ∀ n, (P17103631747079311130.a n : ℤ) = A155665 n

end A155665

/-! ## A155665.P10610939721376086069

`∑[A055274(n)-(A000007(n)-A055276(n))]`
-/

namespace A155665.P10610939721376086069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n - (A000007 n - A055276 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155665.P10610939721376086069

namespace A155665

/-- `∑[A055274(n)-(A000007(n)-A055276(n))]` -/
def P10610939721376086069.Spec : Prop :=
  ∀ n, P10610939721376086069.a n = A155665 n

end A155665

/-! ## A155665.P3045874175019272848

`floor(A010054(n)/2-(A155667(n)-A155872(n)))`
-/

namespace A155665.P3045874175019272848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010054 n : ℚ) / 2 - (A155667 n - A155872 n : ℚ)⌋

end

end A155665.P3045874175019272848

namespace A155665

/-- `floor(A010054(n)/2-(A155667(n)-A155872(n)))` -/
def P3045874175019272848.Spec : Prop :=
  ∀ n, P3045874175019272848.a n = A155665 n

end A155665

/-! ## A155665.P1873154655209393664

`(A155667(n)-A155872(n))*A008683(A001359(n+1))`
-/

namespace A155665.P1873154655209393664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155667 n - A155872 n) * A008683 (A001359 (n + 1)).toNat

end

end A155665.P1873154655209393664

namespace A155665

/-- `(A155667(n)-A155872(n))*A008683(A001359(n+1))` -/
def P1873154655209393664.Spec : Prop :=
  ∀ n, P1873154655209393664.a n = A155665 n

end A155665

/-!
# A155666: a(n) = 9^n - 8^n + 1.

The programs for A155666, the canonical program `A155666.P11820455710438439102` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155666 has offset 0).

The definition of A155666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-8^n+1` (program `A155666.P11820455710438439102`, by `A155666.P11820455710438439102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155666.P11820455710438439102

`9^n-8^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155666

/-- `9^n-8^n+1` -/
def P11820455710438439102.Spec : Prop :=
  ∀ n, P11820455710438439102.a n = A155666 n

theorem P11820455710438439102.correct : P11820455710438439102.Spec := by
  intro n
  simp only [A155666]

end A155666

/-! ## A155666.P1125737503437506247

`abs(xor(1, -A016185(n)))`
-/

namespace A155666.P1125737503437506247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A016185 n)|

end

end A155666.P1125737503437506247

namespace A155666

/-- `abs(xor(1, -A016185(n)))` -/
def P1125737503437506247.Spec : Prop :=
  ∀ n, P1125737503437506247.a n = A155666 n

end A155666

/-! ## A155666.P4925799449864772101

`∑[A257289(comp[2*(n+1)]-n)]`
-/

namespace A155666.P4925799449864772101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257289 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155666.P4925799449864772101

namespace A155666

/-- `∑[A257289(comp[2*(n+1)]-n)]` -/
def P4925799449864772101.Spec : Prop :=
  ∀ n, P4925799449864772101.a n = A155666 n

end A155666

/-! ## A155666.P6303072660922024241

`abs(A063481(n)-A074515(n))`
-/

namespace A155666.P6303072660922024241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063481 n - A074515 n|

end

end A155666.P6303072660922024241

namespace A155666

/-- `abs(A063481(n)-A074515(n))` -/
def P6303072660922024241.Spec : Prop :=
  ∀ n, P6303072660922024241.a n = A155666 n

end A155666

/-! ## A155666.P3840123904450274278

`abs(A253211(n)-A253212(n))`
-/

namespace A155666.P3840123904450274278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253211 n - A253212 n|

end

end A155666.P3840123904450274278

namespace A155666

/-- `abs(A253211(n)-A253212(n))` -/
def P3840123904450274278.Spec : Prop :=
  ∀ n, P3840123904450274278.a n = A155666 n

end A155666

/-! ## A155666.P14829410623314974575

`abs(1-(A062395(n)-A062396(n)))`
-/

namespace A155666.P14829410623314974575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A062395 n - A062396 n)|

end

end A155666.P14829410623314974575

namespace A155666

/-- `abs(1-(A062395(n)-A062396(n)))` -/
def P14829410623314974575.Spec : Prop :=
  ∀ n, P14829410623314974575.a n = A155666 n

end A155666

/-! ## A155666.P1826175760383999917

`abs(1-(A155646(n)-A155647(n)))`
-/

namespace A155666.P1826175760383999917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155646 n - A155647 n)|

end

end A155666.P1826175760383999917

namespace A155666

/-- `abs(1-(A155646(n)-A155647(n)))` -/
def P1826175760383999917.Spec : Prop :=
  ∀ n, P1826175760383999917.a n = A155666 n

end A155666

/-! ## A155666.P3364747453569752215

`Δ[A002452(n)-A023001(n)+n]`
-/

namespace A155666.P3364747453569752215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A023001 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155666.P3364747453569752215

namespace A155666

/-- `Δ[A002452(n)-A023001(n)+n]` -/
def P3364747453569752215.Spec : Prop :=
  ∀ n, P3364747453569752215.a n = A155666 n

end A155666

/-!
# A155667: a(n) = 10^n-8^n+1.

The programs for A155667, the canonical program `A155667.P8296447494173329003` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155667 has offset 0).

The definition of A155667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-8^n+1` (program `A155667.P8296447494173329003`, by `A155667.P8296447494173329003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155667.P8296447494173329003

`10^n-8^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155667

/-- `10^n-8^n+1` -/
def P8296447494173329003.Spec : Prop :=
  ∀ n, P8296447494173329003.a n = A155667 n

theorem P8296447494173329003.correct : P8296447494173329003.Spec := by
  intro n
  simp only [A155667]

end A155667

/-! ## A155667.P13392521377373007125

`or(1, 10^n-8^n)`
-/

namespace A155667.P13392521377373007125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((10 ^ n : ℤ) - (8 ^ n : ℤ))

end

end A155667.P13392521377373007125

namespace A155667

/-- `or(1, 10^n-8^n)` -/
def P13392521377373007125.Spec : Prop :=
  ∀ n, P13392521377373007125.a n = A155667 n

end A155667

/-! ## A155667.P16707671091407418247

`xor(1, 10^n-8^n)`
-/

namespace A155667.P16707671091407418247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((10 ^ n : ℤ) - (8 ^ n : ℤ))

end

end A155667.P16707671091407418247

namespace A155667

/-- `xor(1, 10^n-8^n)` -/
def P16707671091407418247.Spec : Prop :=
  ∀ n, P16707671091407418247.a n = A155667 n

end A155667

/-! ## A155667.P337968358679958370

`abs(8^n-5^n-A155643(n))`
-/

namespace A155667.P337968358679958370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 ^ n : ℤ) - (5 ^ n : ℤ) - A155643 n|

end

end A155667.P337968358679958370

namespace A155667

/-- `abs(8^n-5^n-A155643(n))` -/
def P337968358679958370.Spec : Prop :=
  ∀ n, P337968358679958370.a n = A155667 n

end A155667

/-! ## A155667.P7627891182879444512

`abs(A155643(n)-A191468(n))`
-/

namespace A155667.P7627891182879444512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155643 n - A191468 n|

end

end A155667.P7627891182879444512

namespace A155667

/-- `abs(A155643(n)-A191468(n))` -/
def P7627891182879444512.Spec : Prop :=
  ∀ n, P7627891182879444512.a n = A155667 n

end A155667

/-! ## A155667.P11605768593508724597

`abs(A155606(n)-A245806(n))`
-/

namespace A155667.P11605768593508724597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155606 n - A245806 n|

end

end A155667.P11605768593508724597

namespace A155667

/-- `abs(A155606(n)-A245806(n))` -/
def P11605768593508724597.Spec : Prop :=
  ∀ n, P11605768593508724597.a n = A155667 n

end A155667

/-!
# A155668: a(n) = 11^n-8^n+1.

The programs for A155668, the canonical program `A155668.P8331619680453570061` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155668 has offset 0).

The definition of A155668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-8^n+1` (program `A155668.P8331619680453570061`, by `A155668.P8331619680453570061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155668.P8331619680453570061

`11^n-8^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155668

/-- `11^n-8^n+1` -/
def P8331619680453570061.Spec : Prop :=
  ∀ n, P8331619680453570061.a n = A155668 n

theorem P8331619680453570061.correct : P8331619680453570061.Spec := by
  intro n
  simp only [A155668]

end A155668

/-! ## A155668.P14082528431374183700

`abs(A000225(3*n)-11^n)`
-/

namespace A155668.P14082528431374183700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (3 * n) - (11 ^ n : ℤ)|

end

end A155668.P14082528431374183700

namespace A155668

/-- `abs(A000225(3*n)-11^n)` -/
def P14082528431374183700.Spec : Prop :=
  ∀ n, P14082528431374183700.a n = A155668 n

end A155668

/-! ## A155668.P4024797115123970658

`record[A139746(A025581(n))+1]`
-/

namespace A155668.P4024797115123970658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139746 (A025581 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155668.P4024797115123970658

namespace A155668

/-- `record[A139746(A025581(n))+1]` -/
def P4024797115123970658.Spec : Prop :=
  ∀ n, P4024797115123970658.a n = A155668 n

end A155668

/-! ## A155668.P6500735836902593015

`abs(A001018(n)-A034524(n))`
-/

namespace A155668.P6500735836902593015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A034524 n|

end

end A155668.P6500735836902593015

namespace A155668

/-- `abs(A001018(n)-A034524(n))` -/
def P6500735836902593015.Spec : Prop :=
  ∀ n, P6500735836902593015.a n = A155668 n

end A155668

/-! ## A155668.P2724387760852963007

`abs(A155644(n)-A191468(n))`
-/

namespace A155668.P2724387760852963007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155644 n - A191468 n|

end

end A155668.P2724387760852963007

namespace A155668

/-- `abs(A155644(n)-A191468(n))` -/
def P2724387760852963007.Spec : Prop :=
  ∀ n, P2724387760852963007.a n = A155668 n

end A155668

/-! ## A155668.P13655365075213615345

`abs(1-(A155629(n)-A155632(n)))`
-/

namespace A155668.P13655365075213615345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155629 n - A155632 n)|

end

end A155668.P13655365075213615345

namespace A155668

/-- `abs(1-(A155629(n)-A155632(n)))` -/
def P13655365075213615345.Spec : Prop :=
  ∀ n, P13655365075213615345.a n = A155668 n

end A155668

/-! ## A155668.P12095153103855625248

`abs(1-(A155641(n)-A155644(n)))`
-/

namespace A155668.P12095153103855625248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155641 n - A155644 n)|

end

end A155668.P12095153103855625248

namespace A155668

/-- `abs(1-(A155641(n)-A155644(n)))` -/
def P12095153103855625248.Spec : Prop :=
  ∀ n, P12095153103855625248.a n = A155668 n

end A155668

/-! ## A155668.P7559773383076433551

`abs(1-(A155646(n)-A155649(n)))`
-/

namespace A155668.P7559773383076433551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155646 n - A155649 n)|

end

end A155668.P7559773383076433551

namespace A155668

/-- `abs(1-(A155646(n)-A155649(n)))` -/
def P7559773383076433551.Spec : Prop :=
  ∀ n, P7559773383076433551.a n = A155668 n

end A155668

/-! ## A155668.P10913453895534634684

`(A155632(n)-A059409(n))%A034524(n)`
-/

namespace A155668.P10913453895534634684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155632 n - A059409 n) (A034524 n)

end

end A155668.P10913453895534634684

namespace A155668

/-- `(A155632(n)-A059409(n))%A034524(n)` -/
def P10913453895534634684.Spec : Prop :=
  ∀ n, P10913453895534634684.a n = A155668 n

end A155668

/-! ## A155668.P156038756703896955

`∑[A000007(n)+A055276(n)-A055274(n)]`
-/

namespace A155668.P156038756703896955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A055276 n - A055274 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155668.P156038756703896955

namespace A155668

/-- `∑[A000007(n)+A055276(n)-A055274(n)]` -/
def P156038756703896955.Spec : Prop :=
  ∀ n, P156038756703896955.a n = A155668 n

end A155668

/-!
# A155669: a(n) = 10^n + 9^n - 1.

The programs for A155669, the canonical program `A155669.P13912339216652857199` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155669 has offset 0).

The definition of A155669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+9^n-1` (program `A155669.P13912339216652857199`, by `A155669.P13912339216652857199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155669.P13912339216652857199

`10^n+9^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155669

/-- `10^n+9^n-1` -/
def P13912339216652857199.Spec : Prop :=
  ∀ n, P13912339216652857199.a n = A155669 n

theorem P13912339216652857199.correct : P13912339216652857199.Spec := by
  intro n
  simp only [A155669]

end A155669

/-! ## A155669.P18210724894368204694

`abs(1-A221904(n))`
-/

namespace A155669.P18210724894368204694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A221904 n|

end

end A155669.P18210724894368204694

namespace A155669

/-- `abs(1-A221904(n))` -/
def P18210724894368204694.Spec : Prop :=
  ∀ n, P18210724894368204694.a n = A155669 n

end A155669

/-! ## A155669.P2786467747863913993

`gcd(1-A221904(n), A000038(n))`
-/

namespace A155669.P2786467747863913993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A221904 n) (A000038 n)

end

end A155669.P2786467747863913993

namespace A155669

/-- `gcd(1-A221904(n), A000038(n))` -/
def P2786467747863913993.Spec : Prop :=
  ∀ n, (P2786467747863913993.a n : ℤ) = A155669 n

end A155669

/-! ## A155669.P6229486955967496322

`lcm(1-A221904(n), A033999(n))`
-/

namespace A155669.P6229486955967496322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A221904 n) (A033999 n)

end

end A155669.P6229486955967496322

namespace A155669

/-- `lcm(1-A221904(n), A033999(n))` -/
def P6229486955967496322.Spec : Prop :=
  ∀ n, (P6229486955967496322.a n : ℤ) = A155669 n

end A155669

/-! ## A155669.P6927347643198939104

`or(A221904(n)-1, A000007(n))`
-/

namespace A155669.P6927347643198939104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221904 n - 1) (A000007 n)

end

end A155669.P6927347643198939104

namespace A155669

/-- `or(A221904(n)-1, A000007(n))` -/
def P6927347643198939104.Spec : Prop :=
  ∀ n, P6927347643198939104.a n = A155669 n

end A155669

/-! ## A155669.P2744020749475810412

`abs(A001555(n)-A001557(n)+1)`
-/

namespace A155669.P2744020749475810412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001555 n - A001557 n + 1|

end

end A155669.P2744020749475810412

namespace A155669

/-- `abs(A001555(n)-A001557(n)+1)` -/
def P2744020749475810412.Spec : Prop :=
  ∀ n, P2744020749475810412.a n = A155669 n

end A155669

/-! ## A155669.P18312221603088598641

`Δ[A002452(n)+A002275(n)-n]`
-/

namespace A155669.P18312221603088598641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A002275 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155669.P18312221603088598641

namespace A155669

/-- `Δ[A002452(n)+A002275(n)-n]` -/
def P18312221603088598641.Spec : Prop :=
  ∀ n, P18312221603088598641.a n = A155669 n

end A155669

/-! ## A155669.P2700464193234291648

`abs(1-(A001019(n)+Δ[A002275(n)]))`
-/

namespace A155669.P2700464193234291648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A001019 n + (f1 (n + 1) - f1 n))|

end

end A155669.P2700464193234291648

namespace A155669

/-- `abs(1-(A001019(n)+Δ[A002275(n)]))` -/
def P2700464193234291648.Spec : Prop :=
  ∀ n, P2700464193234291648.a n = A155669 n

end A155669

/-! ## A155669.P15529701755802387003

`(1-A221904(n))*A337066(A000040(n+2))`
-/

namespace A155669.P15529701755802387003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A221904 n) * A337066 (A000040 (n + 2)).toNat

end

end A155669.P15529701755802387003

namespace A155669

/-- `(1-A221904(n))*A337066(A000040(n+2))` -/
def P15529701755802387003.Spec : Prop :=
  ∀ n, P15529701755802387003.a n = A155669 n

end A155669

/-! ## A155669.P2250696281305899503

`xor(A000217(A027642(2*n+1)), A221904(n))`
-/

namespace A155669.P2250696281305899503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000217 (A027642 (2 * n + 1)).toNat) (A221904 n)

end

end A155669.P2250696281305899503

namespace A155669

/-- `xor(A000217(A027642(2*n+1)), A221904(n))` -/
def P2250696281305899503.Spec : Prop :=
  ∀ n, P2250696281305899503.a n = A155669 n

end A155669

/-!
# A155670: a(n) = 11^n+9^n-1^n.

The programs for A155670, the canonical program `A155670.P14527818702805575986` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155670 has offset 0).

The definition of A155670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+9^n-1` (program `A155670.P14527818702805575986`, by `A155670.P14527818702805575986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155670.P14527818702805575986

`11^n+9^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155670

/-- `11^n+9^n-1` -/
def P14527818702805575986.Spec : Prop :=
  ∀ n, P14527818702805575986.a n = A155670 n

theorem P14527818702805575986.correct : P14527818702805575986.Spec := by
  intro n
  simp only [A155670]

end A155670

/-! ## A155670.P8353754895271003083

`11^n+9^n-1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155670.P8353754895271003083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 9 ^ n : ℤ) - (1 ^ n : ℤ)

end

end A155670.P8353754895271003083

namespace A155670

/-- `11^n+9^n-1^n` -/
def P8353754895271003083.Spec : Prop :=
  ∀ n, P8353754895271003083.a n = A155670 n

theorem P8353754895271003083.correct : P8353754895271003083.Spec := by
  intro n
  simp only [A155670, Nat.add_sub_cancel, A155670.P8353754895271003083.a, A155670.P14527818702805575986.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155670

/-! ## A155670.P1635003615095089702

`abs(A016189(n)-A155673(n))`
-/

namespace A155670.P1635003615095089702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016189 n - A155673 n|

end

end A155670.P1635003615095089702

namespace A155670

/-- `abs(A016189(n)-A155673(n))` -/
def P1635003615095089702.Spec : Prop :=
  ∀ n, P1635003615095089702.a n = A155670 n

end A155670

/-! ## A155670.P17146468562338534041

`abs(A155671(n)-A155872(n))`
-/

namespace A155670.P17146468562338534041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155671 n - A155872 n|

end

end A155670.P17146468562338534041

namespace A155670

/-- `abs(A155671(n)-A155872(n))` -/
def P17146468562338534041.Spec : Prop :=
  ∀ n, P17146468562338534041.a n = A155670 n

end A155670

/-! ## A155670.P12466469353722711422

`or(1, A155673(n)-A155671(n))`
-/

namespace A155670.P12466469353722711422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155673 n - A155671 n)

end

end A155670.P12466469353722711422

namespace A155670

/-- `or(1, A155673(n)-A155671(n))` -/
def P12466469353722711422.Spec : Prop :=
  ∀ n, P12466469353722711422.a n = A155670 n

end A155670

/-! ## A155670.P14122773476952825359

`(A016189(n)-A155673(n))*A300853(A039956(n+1))`
-/

namespace A155670.P14122773476952825359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016189 n - A155673 n) * A300853 (A039956 (n + 1)).toNat

end

end A155670.P14122773476952825359

namespace A155670

/-- `(A016189(n)-A155673(n))*A300853(A039956(n+1))` -/
def P14122773476952825359.Spec : Prop :=
  ∀ n, P14122773476952825359.a n = A155670 n

end A155670

/-!
# A155671: a(n) = 10^n - 9^n + 1^n.

The programs for A155671, the canonical program `A155671.P822059076343182634` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155671 has offset 0).

The definition of A155671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-9^n+1` (program `A155671.P822059076343182634`, by `A155671.P822059076343182634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155671.P822059076343182634

`10^n-9^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155671

/-- `10^n-9^n+1` -/
def P822059076343182634.Spec : Prop :=
  ∀ n, P822059076343182634.a n = A155671 n

theorem P822059076343182634.correct : P822059076343182634.Spec := by
  intro n
  simp only [A155671]

end A155671

/-! ## A155671.P11055764808150782439

`10^n-9^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155671.P11055764808150782439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - (9 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155671.P11055764808150782439

namespace A155671

/-- `10^n-9^n+1^n` -/
def P11055764808150782439.Spec : Prop :=
  ∀ n, P11055764808150782439.a n = A155671 n

theorem P11055764808150782439.correct : P11055764808150782439.Spec := by
  intro n
  simp only [A155671, Nat.add_sub_cancel, A155671.P11055764808150782439.a, A155671.P822059076343182634.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155671

/-! ## A155671.P707138553842579129

`abs(xor(10^n-9^n, -1))`
-/

namespace A155671.P707138553842579129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((10 ^ n : ℤ) - (9 ^ n : ℤ)) (-1)|

end

end A155671.P707138553842579129

namespace A155671

/-- `abs(xor(10^n-9^n, -1))` -/
def P707138553842579129.Spec : Prop :=
  ∀ n, P707138553842579129.a n = A155671 n

end A155671

/-! ## A155671.P1279957014326545940

`-xor(10^n-9^n, -1)`
-/

namespace A155671.P1279957014326545940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((10 ^ n : ℤ) - (9 ^ n : ℤ)) (-1)

end

end A155671.P1279957014326545940

namespace A155671

/-- `-xor(10^n-9^n, -1)` -/
def P1279957014326545940.Spec : Prop :=
  ∀ n, P1279957014326545940.a n = A155671 n

end A155671

/-! ## A155671.P15108337156131854034

`abs(or(1, -n)%2-(10^n-9^n))`
-/

namespace A155671.P15108337156131854034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor 1 (-(n : ℤ))) 2 - ((10 ^ n : ℤ) - (9 ^ n : ℤ))|

end

end A155671.P15108337156131854034

namespace A155671

/-- `abs(or(1, -n)%2-(10^n-9^n))` -/
def P15108337156131854034.Spec : Prop :=
  ∀ n, P15108337156131854034.a n = A155671 n

end A155671

/-! ## A155671.P13163852471865877368

`abs(A024101(n)-10^n)`
-/

namespace A155671.P13163852471865877368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024101 n - (10 ^ n : ℤ)|

end

end A155671.P13163852471865877368

namespace A155671

/-- `abs(A024101(n)-10^n)` -/
def P13163852471865877368.Spec : Prop :=
  ∀ n, P13163852471865877368.a n = A155671 n

end A155671

/-! ## A155671.P13612790719759376494

`record[10^floor(n/2)-A024023(n)]`
-/

namespace A155671.P13612790719759376494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (A024023 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155671.P13612790719759376494

namespace A155671

/-- `record[10^floor(n/2)-A024023(n)]` -/
def P13612790719759376494.Spec : Prop :=
  ∀ n, P13612790719759376494.a n = (A155671 n : ℚ)

end A155671

/-! ## A155671.P17876832804289832996

`abs(9^n-7^n-A155661(n))`
-/

namespace A155671.P17876832804289832996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - (7 ^ n : ℤ) - A155661 n|

end

end A155671.P17876832804289832996

namespace A155671

/-- `abs(9^n-7^n-A155661(n))` -/
def P17876832804289832996.Spec : Prop :=
  ∀ n, P17876832804289832996.a n = A155671 n

end A155671

/-! ## A155671.P13551562090127361547

`∑[A088924(A028310(n))]`
-/

namespace A155671.P13551562090127361547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155671.P13551562090127361547

namespace A155671

/-- `∑[A088924(A028310(n))]` -/
def P13551562090127361547.Spec : Prop :=
  ∀ n, P13551562090127361547.a n = A155671 n

end A155671

/-! ## A155671.P7676136199699021102

`∑[A050686(record[A029579(n)])]`
-/

namespace A155671.P7676136199699021102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155671.P7676136199699021102

namespace A155671

/-- `∑[A050686(record[A029579(n)])]` -/
def P7676136199699021102.Spec : Prop :=
  ∀ n, P7676136199699021102.a n = A155671 n

end A155671

/-! ## A155671.P8709698117059156702

`∑[A050686(A004274(n+1))]`
-/

namespace A155671.P8709698117059156702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (A004274 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155671.P8709698117059156702

namespace A155671

/-- `∑[A050686(A004274(n+1))]` -/
def P8709698117059156702.Spec : Prop :=
  ∀ n, P8709698117059156702.a n = A155671 n

end A155671

/-! ## A155671.P6786396670657610425

`abs(A155661(n)-A191467(n))`
-/

namespace A155671.P6786396670657610425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155661 n - A191467 n|

end

end A155671.P6786396670657610425

namespace A155671

/-- `abs(A155661(n)-A191467(n))` -/
def P6786396670657610425.Spec : Prop :=
  ∀ n, P6786396670657610425.a n = A155671 n

end A155671

/-! ## A155671.P15095700961687110469

`∑[A088924(A000007(n)+n)]`
-/

namespace A155671.P15095700961687110469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155671.P15095700961687110469

namespace A155671

/-- `∑[A088924(A000007(n)+n)]` -/
def P15095700961687110469.Spec : Prop :=
  ∀ n, P15095700961687110469.a n = A155671 n

end A155671

/-! ## A155671.P3054710156605598013

`∑[A088924(gcd(n, A008458(n)))]`
-/

namespace A155671.P3054710156605598013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155671.P3054710156605598013

namespace A155671

/-- `∑[A088924(gcd(n, A008458(n)))]` -/
def P3054710156605598013.Spec : Prop :=
  ∀ n, P3054710156605598013.a n = A155671 n

end A155671

/-! ## A155671.P14718049675059315584

`∑[A050686(A233583(2*n+1))]`
-/

namespace A155671.P14718049675059315584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155671.P14718049675059315584

namespace A155671

/-- `∑[A050686(A233583(2*n+1))]` -/
def P14718049675059315584.Spec : Prop :=
  ∀ n, P14718049675059315584.a n = A155671 n

end A155671

/-! ## A155671.P2505792338221032433

`abs(A024102(n)-(A024115(n)+1))`
-/

namespace A155671.P2505792338221032433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024102 n - (A024115 n + 1)|

end

end A155671.P2505792338221032433

namespace A155671

/-- `abs(A024102(n)-(A024115(n)+1))` -/
def P2505792338221032433.Spec : Prop :=
  ∀ n, P2505792338221032433.a n = A155671 n

end A155671

/-! ## A155671.P89306238143566840

`abs(1-(A024105(n)-A024118(n)))`
-/

namespace A155671.P89306238143566840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A024105 n - A024118 n)|

end

end A155671.P89306238143566840

namespace A155671

/-- `abs(1-(A024105(n)-A024118(n)))` -/
def P89306238143566840.Spec : Prop :=
  ∀ n, P89306238143566840.a n = A155671 n

end A155671

/-! ## A155671.P16859283630612469761

`record[A286507(n)-A000244(n)+1]`
-/

namespace A155671.P16859283630612469761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n - A000244 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155671.P16859283630612469761

namespace A155671

/-- `record[A286507(n)-A000244(n)+1]` -/
def P16859283630612469761.Spec : Prop :=
  ∀ n, P16859283630612469761.a n = A155671 n

end A155671

/-! ## A155671.P16010820006199206707

`ceil(A016189(n)+2^A008683(A020483(n)))`
-/

namespace A155671.P16010820006199206707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016189 n : ℚ) + (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)⌉

end

end A155671.P16010820006199206707

namespace A155671

/-- `ceil(A016189(n)+2^A008683(A020483(n)))` -/
def P16010820006199206707.Spec : Prop :=
  ∀ n, P16010820006199206707.a n = A155671 n

end A155671

/-! ## A155671.P448793034085624135

`abs(A155607(n)-A245806(n))`
-/

namespace A155671.P448793034085624135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155607 n - A245806 n|

end

end A155671.P448793034085624135

namespace A155671

/-- `abs(A155607(n)-A245806(n))` -/
def P448793034085624135.Spec : Prop :=
  ∀ n, P448793034085624135.a n = A155671 n

end A155671

/-!
# A155672: a(n) = 11^n-9^n+1^n.

The programs for A155672, the canonical program `A155672.P17174002658401239307` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155672 has offset 0).

The definition of A155672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-9^n+1` (program `A155672.P17174002658401239307`, by `A155672.P17174002658401239307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155672.P17174002658401239307

`11^n-9^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155672

/-- `11^n-9^n+1` -/
def P17174002658401239307.Spec : Prop :=
  ∀ n, P17174002658401239307.a n = A155672 n

theorem P17174002658401239307.correct : P17174002658401239307.Spec := by
  intro n
  simp only [A155672]

end A155672

/-! ## A155672.P8259686705324645427

`11^n-9^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155672.P8259686705324645427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) - (9 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155672.P8259686705324645427

namespace A155672

/-- `11^n-9^n+1^n` -/
def P8259686705324645427.Spec : Prop :=
  ∀ n, P8259686705324645427.a n = A155672 n

theorem P8259686705324645427.correct : P8259686705324645427.Spec := by
  intro n
  simp only [A155672, Nat.add_sub_cancel, A155672.P8259686705324645427.a, A155672.P17174002658401239307.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155672

/-! ## A155672.P2473515471056920025

`or(1, 11^n-9^n)`
-/

namespace A155672.P2473515471056920025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((11 ^ n : ℤ) - (9 ^ n : ℤ))

end

end A155672.P2473515471056920025

namespace A155672

/-- `or(1, 11^n-9^n)` -/
def P2473515471056920025.Spec : Prop :=
  ∀ n, P2473515471056920025.a n = A155672 n

end A155672

/-! ## A155672.P11499030755692461685

`xor(1, 11^n-9^n)`
-/

namespace A155672.P11499030755692461685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((11 ^ n : ℤ) - (9 ^ n : ℤ))

end

end A155672.P11499030755692461685

namespace A155672

/-- `xor(1, 11^n-9^n)` -/
def P11499030755692461685.Spec : Prop :=
  ∀ n, P11499030755692461685.a n = A155672 n

end A155672

/-! ## A155672.P15204603805943924627

`abs(9^n-A073211(∑[n]))`
-/

namespace A155672.P15204603805943924627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - A073211 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A155672.P15204603805943924627

namespace A155672

/-- `abs(9^n-A073211(∑[n]))` -/
def P15204603805943924627.Spec : Prop :=
  ∀ n, P15204603805943924627.a n = A155672 n

end A155672

/-! ## A155672.P17649155428837064748

`abs(1-4/2-A139747(n))`
-/

namespace A155672.P17649155428837064748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (4 : ℚ) / 2 - (A139747 n : ℚ)|

end

end A155672.P17649155428837064748

namespace A155672

/-- `abs(1-4/2-A139747(n))` -/
def P17649155428837064748.Spec : Prop :=
  ∀ n, P17649155428837064748.a n = (A155672 n : ℚ)

end A155672

/-! ## A155672.P4585451841553526349

`record[A139747(A087061(n))+1]`
-/

namespace A155672.P4585451841553526349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139747 (A087061 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155672.P4585451841553526349

namespace A155672

/-- `record[A139747(A087061(n))+1]` -/
def P4585451841553526349.Spec : Prop :=
  ∀ n, P4585451841553526349.a n = A155672 n

end A155672

/-! ## A155672.P2730230216302588041

`record[A139747(A142150(n))+1]`
-/

namespace A155672.P2730230216302588041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139747 (A142150 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155672.P2730230216302588041

namespace A155672

/-- `record[A139747(A142150(n))+1]` -/
def P2730230216302588041.Spec : Prop :=
  ∀ n, P2730230216302588041.a n = A155672 n

end A155672

/-! ## A155672.P12112883684870563117

`abs(1-(A024105(n)-A024131(n)))`
-/

namespace A155672.P12112883684870563117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A024105 n - A024131 n)|

end

end A155672.P12112883684870563117

namespace A155672

/-- `abs(1-(A024105(n)-A024131(n)))` -/
def P12112883684870563117.Spec : Prop :=
  ∀ n, P12112883684870563117.a n = A155672 n

end A155672

/-! ## A155672.P2333445492704744180

`abs(1-(A155642(n)-A155644(n)))`
-/

namespace A155672.P2333445492704744180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155642 n - A155644 n)|

end

end A155672.P2333445492704744180

namespace A155672

/-- `abs(1-(A155642(n)-A155644(n)))` -/
def P2333445492704744180.Spec : Prop :=
  ∀ n, P2333445492704744180.a n = A155672 n

end A155672

/-!
# A155673: a(n) = 11^n + 10^n - 1.

The programs for A155673, the canonical program `A155673.P15476389858529356791` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155673 has offset 0).

The definition of A155673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+10^n-1` (program `A155673.P15476389858529356791`, by `A155673.P15476389858529356791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155673.P15476389858529356791

`11^n+10^n-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155673

/-- `11^n+10^n-1` -/
def P15476389858529356791.Spec : Prop :=
  ∀ n, P15476389858529356791.a n = A155673 n

theorem P15476389858529356791.correct : P15476389858529356791.Spec := by
  intro n
  simp only [A155673]

end A155673

/-! ## A155673.P13712792794105388981

`abs(1-A155872(n))`
-/

namespace A155673.P13712792794105388981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155872 n|

end

end A155673.P13712792794105388981

namespace A155673

/-- `abs(1-A155872(n))` -/
def P13712792794105388981.Spec : Prop :=
  ∀ n, P13712792794105388981.a n = A155673 n

end A155673

/-! ## A155673.P18397247197855752794

`gcd(1-A155872(n), A000038(n))`
-/

namespace A155673.P18397247197855752794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A155872 n) (A000038 n)

end

end A155673.P18397247197855752794

namespace A155673

/-- `gcd(1-A155872(n), A000038(n))` -/
def P18397247197855752794.Spec : Prop :=
  ∀ n, (P18397247197855752794.a n : ℤ) = A155673 n

end A155673

/-! ## A155673.P6913382143846076018

`lcm(A155872(n)-1, A000034(n))`
-/

namespace A155673.P6913382143846076018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155872 n - 1) (A000034 n)

end

end A155673.P6913382143846076018

namespace A155673

/-- `lcm(A155872(n)-1, A000034(n))` -/
def P6913382143846076018.Spec : Prop :=
  ∀ n, (P6913382143846076018.a n : ℤ) = A155673 n

end A155673

/-! ## A155673.P829065248719402083

`or(A155872(n)-1, A000007(n))`
-/

namespace A155673.P829065248719402083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155872 n - 1) (A000007 n)

end

end A155673.P829065248719402083

namespace A155673

/-- `or(A155872(n)-1, A000007(n))` -/
def P829065248719402083.Spec : Prop :=
  ∀ n, P829065248719402083.a n = A155673 n

end A155673

/-! ## A155673.P8348716229051041687

`(A155872(n)-1)/gcd(3, A011782(n))`
-/

namespace A155673.P8348716229051041687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155872 n - 1 : ℚ) / (Int.gcd 3 (A011782 n) : ℚ)

end

end A155673.P8348716229051041687

namespace A155673

/-- `(A155872(n)-1)/gcd(3, A011782(n))` -/
def P8348716229051041687.Spec : Prop :=
  ∀ n, P8348716229051041687.a n = (A155673 n : ℚ)

end A155673

/-! ## A155673.P12812149107539214341

`lcm(A002283(n)+11^n, A033999(n))`
-/

namespace A155673.P12812149107539214341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002283 n + (11 ^ n : ℤ)) (A033999 n)

end

end A155673.P12812149107539214341

namespace A155673

/-- `lcm(A002283(n)+11^n, A033999(n))` -/
def P12812149107539214341.Spec : Prop :=
  ∀ n, (P12812149107539214341.a n : ℤ) = A155673 n

end A155673

/-! ## A155673.P12626206687838252273

`(A155872(n)-1)*and(1, A000041(n))!`
-/

namespace A155673.P12626206687838252273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155872 n - 1) * (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ)

end

end A155673.P12626206687838252273

namespace A155673

/-- `(A155872(n)-1)*and(1, A000041(n))!` -/
def P12626206687838252273.Spec : Prop :=
  ∀ n, P12626206687838252273.a n = A155673 n

end A155673

/-! ## A155673.P2420347301929451897

`xor(A014963(A164114(n+1)), A155872(n))`
-/

namespace A155673.P2420347301929451897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A164114 (n + 1)).toNat) (A155872 n)

end

end A155673.P2420347301929451897

namespace A155673

/-- `xor(A014963(A164114(n+1)), A155872(n))` -/
def P2420347301929451897.Spec : Prop :=
  ∀ n, P2420347301929451897.a n = A155673 n

end A155673

/-! ## A155673.P14019110395652355836

`Δ[A047856(n)+A047855(n)-n]`
-/

namespace A155673.P14019110395652355836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 n + A047855 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155673.P14019110395652355836

namespace A155673

/-- `Δ[A047856(n)+A047855(n)-n]` -/
def P14019110395652355836.Spec : Prop :=
  ∀ n, P14019110395652355836.a n = A155673 n

end A155673

/-!
# A155674: a(n) = 11^n - 10^n + 1^n.

The programs for A155674, the canonical program `A155674.P9763672190016206894` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155674 has offset 0).

The definition of A155674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-10^n+1` (program `A155674.P9763672190016206894`, by `A155674.P9763672190016206894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155674.P9763672190016206894

`11^n-10^n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155674

/-- `11^n-10^n+1` -/
def P9763672190016206894.Spec : Prop :=
  ∀ n, P9763672190016206894.a n = A155674 n

theorem P9763672190016206894.correct : P9763672190016206894.Spec := by
  intro n
  simp only [A155674]

end A155674

/-! ## A155674.P17070022809268335135

`11^n-10^n+1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155674.P17070022809268335135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) - (10 ^ n : ℤ) + (1 ^ n : ℤ)

end

end A155674.P17070022809268335135

namespace A155674

/-- `11^n-10^n+1^n` -/
def P17070022809268335135.Spec : Prop :=
  ∀ n, P17070022809268335135.a n = A155674 n

theorem P17070022809268335135.correct : P17070022809268335135.Spec := by
  intro n
  simp only [A155674, Nat.add_sub_cancel, A155674.P17070022809268335135.a, A155674.P9763672190016206894.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155674

/-! ## A155674.P5047121171758019166

`abs(10^n-7^n-A155662(n))`
-/

namespace A155674.P5047121171758019166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - (7 ^ n : ℤ) - A155662 n|

end

end A155674.P5047121171758019166

namespace A155674

/-- `abs(10^n-7^n-A155662(n))` -/
def P5047121171758019166.Spec : Prop :=
  ∀ n, P5047121171758019166.a n = A155674 n

end A155674

/-! ## A155674.P8395884453099130948

`abs(A001020(n)-A002283(n))`
-/

namespace A155674.P8395884453099130948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A002283 n|

end

end A155674.P8395884453099130948

namespace A155674

/-- `abs(A001020(n)-A002283(n))` -/
def P8395884453099130948.Spec : Prop :=
  ∀ n, P8395884453099130948.a n = A155674 n

end A155674

/-! ## A155674.P3518791607447903710

`abs(A011557(n)-A034524(n))`
-/

namespace A155674.P3518791607447903710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A034524 n|

end

end A155674.P3518791607447903710

namespace A155674

/-- `abs(A011557(n)-A034524(n))` -/
def P3518791607447903710.Spec : Prop :=
  ∀ n, P3518791607447903710.a n = A155674 n

end A155674

/-! ## A155674.P1985817187447170694

`abs(A155644(n)-A248340(n))`
-/

namespace A155674.P1985817187447170694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155644 n - A248340 n|

end

end A155674.P1985817187447170694

namespace A155674

/-- `abs(A155644(n)-A248340(n))` -/
def P1985817187447170694.Spec : Prop :=
  ∀ n, P1985817187447170694.a n = A155674 n

end A155674

/-! ## A155674.P3603598508864895798

`abs(A155662(n)-A248341(n))`
-/

namespace A155674.P3603598508864895798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155662 n - A248341 n|

end

end A155674.P3603598508864895798

namespace A155674

/-- `abs(A155662(n)-A248341(n))` -/
def P3603598508864895798.Spec : Prop :=
  ∀ n, P3603598508864895798.a n = A155674 n

end A155674

/-! ## A155674.P4117363805463831622

`abs(A155668(n)-A155667(n)+1)`
-/

namespace A155674.P4117363805463831622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155668 n - A155667 n + 1|

end

end A155674.P4117363805463831622

namespace A155674

/-- `abs(A155668(n)-A155667(n)+1)` -/
def P4117363805463831622.Spec : Prop :=
  ∀ n, P4117363805463831622.a n = A155674 n

end A155674

/-! ## A155674.P13046578334209349317

`abs(1-(A155594(n)-A155595(n)))`
-/

namespace A155674.P13046578334209349317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155594 n - A155595 n)|

end

end A155674.P13046578334209349317

namespace A155674

/-- `abs(1-(A155594(n)-A155595(n)))` -/
def P13046578334209349317.Spec : Prop :=
  ∀ n, P13046578334209349317.a n = A155674 n

end A155674

/-! ## A155674.P1063797322493212070

`abs(1-(A155637(n)-A155638(n)))`
-/

namespace A155674.P1063797322493212070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155637 n - A155638 n)|

end

end A155674.P1063797322493212070

namespace A155674

/-- `abs(1-(A155637(n)-A155638(n)))` -/
def P1063797322493212070.Spec : Prop :=
  ∀ n, P1063797322493212070.a n = A155674 n

end A155674

/-!
# A155689: a(n) = Sum_{k >= 1} floor(n * sqrt(2) / 2^k).

The programs for A155689, the canonical program `A155689.P2139899322435435333` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155689 has offset 1).

The definition of A155689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155689.P7521362445315180068

`A005187(floor((n+1)/2*sqrt(2)))`
-/

namespace A155689.P7521362445315180068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A155689.P7521362445315180068

namespace A155689

/-- `A005187(floor((n+1)/2*sqrt(2)))` -/
def P7521362445315180068.Spec : Prop :=
  ∀ n, P7521362445315180068.a n = A155689 (n + 1)

end A155689

/-! ## A155689.P2139899322435435333

`A020965(n+1)-A005187(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A155689

/-- `A020965(n+1)-A005187(n+1)` -/
def P2139899322435435333.Spec : Prop :=
  ∀ n, P2139899322435435333.a n = A155689 (n + 1)

theorem P2139899322435435333.correct : P2139899322435435333.Spec := by
  intro n
  simp only [A155689, Nat.add_sub_cancel]

end A155689

/-! ## A155689.P4989732078048770360

`A020965(n+1)+A122247(n)-A122247(n+1)`
-/

namespace A155689.P4989732078048770360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020965 (n + 1) + (A122247 n - A122247 (n + 1))

end

end A155689.P4989732078048770360

namespace A155689

/-- `A020965(n+1)+A122247(n)-A122247(n+1)` -/
def P4989732078048770360.Spec : Prop :=
  ∀ n, P4989732078048770360.a n = A155689 (n + 1)

end A155689

/-! ## A155689.P16803107892724542799

`A011371(A001951(n+1))`
-/

namespace A155689.P16803107892724542799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A001951 (n + 1)).toNat

end

end A155689.P16803107892724542799

namespace A155689

/-- `A011371(A001951(n+1))` -/
def P16803107892724542799.Spec : Prop :=
  ∀ n, P16803107892724542799.a n = A155689 (n + 1)

end A155689

/-! ## A155689.P4545248417040369926

`A274715(A001951(n+1)+A001951(n+1)+2)`
-/

namespace A155689.P4545248417040369926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A001951 (n + 1) + (A001951 (n + 1) + 2)).toNat

end

end A155689.P4545248417040369926

namespace A155689

/-- `A274715(A001951(n+1)+A001951(n+1)+2)` -/
def P4545248417040369926.Spec : Prop :=
  ∀ n, P4545248417040369926.a n = A155689 (n + 1)

end A155689

/-! ## A155689.P14575300537155618975

`A073750(A091087(n+1))`
-/

namespace A155689.P14575300537155618975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A091087 (n + 1)).toNat

end

end A155689.P14575300537155618975

namespace A155689

/-- `A073750(A091087(n+1))` -/
def P14575300537155618975.Spec : Prop :=
  ∀ n, P14575300537155618975.a n = A155689 (n + 1)

end A155689

/-! ## A155689.P6672196019858681176

`A011371(A000196(2*n*(n+2)))`
-/

namespace A155689.P6672196019858681176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000196 (2 * (n * (n + 2)))).toNat

end

end A155689.P6672196019858681176

namespace A155689

/-- `A011371(A000196(2*n*(n+2)))` -/
def P6672196019858681176.Spec : Prop :=
  ∀ n, P6672196019858681176.a n = A155689 (n + 1)

end A155689

/-!
# A155693: Decimal expansion of log_2 (22).

The programs for A155693, there is no canonical definition to state claims against.
-/

/-! ## A155693.P6873557469144619136

`A020863(C(2, n+2)+n)`
-/

namespace A155693.P6873557469144619136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (Nat.choose 2 (n + 2) + n + 1)

end

end A155693.P6873557469144619136

/-! ## A155693.P9672623192923108238

`A020863(round(1/(n+2))+n)`
-/

namespace A155693.P9672623192923108238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 ((SequenceMachineLib.roundAway (1 / (n + 2 : ℚ)) + (n : ℤ)).toNat + 1)

end

end A155693.P9672623192923108238

/-! ## A155693.P8094515299720346739

`A020863(n)+A000007(n)`
-/

namespace A155693.P8094515299720346739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (n + 1) + A000007 n

end

end A155693.P8094515299720346739

/-! ## A155693.P7848362185718054147

`A020863(n)+A000035(A005875(n))`
-/

namespace A155693.P7848362185718054147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (n + 1) + A000035 (A005875 n).toNat

end

end A155693.P7848362185718054147

/-! ## A155693.P15819318215398190777

`A020863(n)+A020864(n)-A020859(n)`
-/

namespace A155693.P15819318215398190777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (n + 1) + (A020864 (n + 1) - A020859 (n + 1))

end

end A155693.P15819318215398190777

/-! ## A155693.P13732233332979176673

`A020863(n)+A000035(A008458(n))`
-/

namespace A155693.P13732233332979176673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (n + 1) + A000035 (A008458 n).toNat

end

end A155693.P13732233332979176673

/-! ## A155693.P8401661954945151197

`A020863(n)+A000035(A022144(n))`
-/

namespace A155693.P8401661954945151197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (n + 1) + A000035 (A022144 n).toNat

end

end A155693.P8401661954945151197

/-! ## A155693.P1493648849478578071

`A020863(n)+A000035(A131883(n+1))`
-/

namespace A155693.P1493648849478578071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020863 (n + 1) + A000035 (A131883 (n + 1)).toNat

end

end A155693.P1493648849478578071

/-!
# A155698: a(n)=a(n-1)+a(n-2)^a(n-3); a(1)=a(2)=a(3)=1.

The programs for A155698, the canonical program `A155698.P14183853285181202633` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155698 has offset 1).

The definition of A155698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)^a(n-3)` (program `A155698.P14183853285181202633`, by `A155698.P14183853285181202633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155698.P14183853285181202633

`a(n-1)+a(n-2)^a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155698

/-- `a(n-1)+a(n-2)^a(n-3)` -/
def P14183853285181202633.Spec : Prop :=
  ∀ n, (P14183853285181202633.a n : ℤ) = A155698 (n + 1)

theorem P14183853285181202633.correct : P14183853285181202633.Spec := by
  intro n
  simp only [A155698, Nat.add_sub_cancel]

end A155698

/-! ## A155698.P14877512600165671237

`A347572(a(n-1)+a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A155698.P14877512600165671237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A347572 ((a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat).toNat + 15)

end

end A155698.P14877512600165671237

namespace A155698

/-- `A347572(a(n-1)+a(floor(n/2)))` -/
def P14877512600165671237.Spec : Prop :=
  ∀ n, P14877512600165671237.a n = A155698 (n + 1)

end A155698

/-! ## A155698.P1912632846607770803

`A304707(A166296(n))`
-/

namespace A155698.P1912632846607770803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 (A166296 n).toNat

end

end A155698.P1912632846607770803

namespace A155698

/-- `A304707(A166296(n))` -/
def P1912632846607770803.Spec : Prop :=
  ∀ n, P1912632846607770803.a n = A155698 (n + 1)

end A155698

/-! ## A155698.P8937486246884267571

`A304707(∑[A220699(n)])`
-/

namespace A155698.P8937486246884267571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155698.P8937486246884267571

namespace A155698

/-- `A304707(∑[A220699(n)])` -/
def P8937486246884267571.Spec : Prop :=
  ∀ n, P8937486246884267571.a n = A155698 (n + 1)

end A155698

