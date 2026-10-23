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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A341300: a(n) = n! + (n-1)! + (n-2)! + (n-3)! + n - 3.

The programs for A341300, the canonical program `A341300.P12079153826153095339` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341300 has offset 3).

The definition of A341300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)!+(n+2)!+(n+1)!+n!+n+3-3` (program `A341300.P12079153826153095339`, by `A341300.P12079153826153095339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341300.P2886726573906691628

`n!*((n+3)²*(n+1)+1)+n+3-3`
-/

namespace A341300.P2886726573906691628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * ((n + 3) ^ 2 * (n + 1) + 1) + (n + 3) : ℤ) - 3

end

end A341300.P2886726573906691628

namespace A341300

/-- `n!*((n+3)²*(n+1)+1)+n+3-3` -/
def P2886726573906691628.Spec : Prop :=
  ∀ n, P2886726573906691628.a n = A341300 (n + 3)

theorem P2886726573906691628.correct : P2886726573906691628.Spec := by
  intro n
  simp only [A341300, Nat.add_sub_cancel, A341300.P2886726573906691628.a, A341300.P12079153826153095339.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A341300

/-! ## A341300.P12079153826153095339

`(n+3)!+(n+2)!+(n+1)!+n!+n+3-3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341300

/-- `(n+3)!+(n+2)!+(n+1)!+n!+n+3-3` -/
def P12079153826153095339.Spec : Prop :=
  ∀ n, P12079153826153095339.a n = A341300 (n + 3)

theorem P12079153826153095339.correct : P12079153826153095339.Spec := by
  intro n
  simp only [A341300, Nat.add_sub_cancel]

end A341300

/-! ## A341300.P1852993336076333087

`n!*((n+3)²*(n+1)+1)+n`
-/

namespace A341300.P1852993336076333087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * ((n + 3) ^ 2 * (n + 1) + 1) + n

end

end A341300.P1852993336076333087

namespace A341300

/-- `n!*((n+3)²*(n+1)+1)+n` -/
def P1852993336076333087.Spec : Prop :=
  ∀ n, (P1852993336076333087.a n : ℤ) = A341300 (n + 3)

theorem P1852993336076333087.correct : P1852993336076333087.Spec := by
  intro n
  simp only [A341300, Nat.add_sub_cancel, A341300.P1852993336076333087.a, A341300.P12079153826153095339.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A341300

/-! ## A341300.P3157160897821456339

`(n+3)!+(n+2)!+(n+1)!+n!+n`
-/

namespace A341300.P3157160897821456339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3) + Nat.factorial (n + 2) + Nat.factorial (n + 1) + Nat.factorial n + n

end

end A341300.P3157160897821456339

namespace A341300

/-- `(n+3)!+(n+2)!+(n+1)!+n!+n` -/
def P3157160897821456339.Spec : Prop :=
  ∀ n, (P3157160897821456339.a n : ℤ) = A341300 (n + 3)

theorem P3157160897821456339.correct : P3157160897821456339.Spec := by
  intro n
  simp only [A341300, Nat.add_sub_cancel, A341300.P3157160897821456339.a, A341300.P12079153826153095339.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341300

/-! ## A341300.P1217854373140828265

`A143122(A046691(n+2))+n`
-/

namespace A341300.P1217854373140828265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A046691 (n + 2)).toNat + (n : ℤ)

end

end A341300.P1217854373140828265

namespace A341300

/-- `A143122(A046691(n+2))+n` -/
def P1217854373140828265.Spec : Prop :=
  ∀ n, P1217854373140828265.a n = A341300 (n + 3)

end A341300

/-! ## A341300.P4228914436221944548

`A003422(n+4)+n-A003422(n)`
-/

namespace A341300.P4228914436221944548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 4) + ((n : ℤ) - A003422 n)

end

end A341300.P4228914436221944548

namespace A341300

/-- `A003422(n+4)+n-A003422(n)` -/
def P4228914436221944548.Spec : Prop :=
  ∀ n, P4228914436221944548.a n = A341300 (n + 3)

end A341300

/-! ## A341300.P5303050012315548773

`A001048(n+1)+A001048(n+3)+n`
-/

namespace A341300.P5303050012315548773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (n + 1) + (A001048 (n + 3) + (n : ℤ))

end

end A341300.P5303050012315548773

namespace A341300

/-- `A001048(n+1)+A001048(n+3)+n` -/
def P5303050012315548773.Spec : Prop :=
  ∀ n, P5303050012315548773.a n = A341300 (n + 3)

end A341300

/-! ## A341300.P8871474539581150519

`(A152619(n+1)+1)*A000142(n)+n`
-/

namespace A341300.P8871474539581150519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152619 (n + 1) + 1) * A000142 n + (n : ℤ)

end

end A341300.P8871474539581150519

namespace A341300

/-- `(A152619(n+1)+1)*A000142(n)+n` -/
def P8871474539581150519.Spec : Prop :=
  ∀ n, P8871474539581150519.a n = A341300 (n + 3)

end A341300

/-!
# A341301: a(n) = ceiling(n^2 - 7*n/3 + 19/3).

The programs for A341301, the canonical program `A341301.P9004158851209541340` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341301 has offset 1).

The definition of A341301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)²-7*(n+1)/3+19/3)` (program `A341301.P9004158851209541340`, by `A341301.P9004158851209541340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341301.P9004158851209541340

`ceil((n+1)²-7*(n+1)/3+19/3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341301

/-- `ceil((n+1)²-7*(n+1)/3+19/3)` -/
def P9004158851209541340.Spec : Prop :=
  ∀ n, P9004158851209541340.a n = A341301 (n + 1)

theorem P9004158851209541340.correct : P9004158851209541340.Spec := by
  intro n
  simp only [A341301, Nat.add_sub_cancel]

end A341301

/-! ## A341301.P9872721038177116854

`∑[a(n-3)+6]` with `a(0)=5, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A341301.P9872721038177116854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 3, 4] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341301.P9872721038177116854

namespace A341301

/-- `∑[a(n-3)+6]` -/
def P9872721038177116854.Spec : Prop :=
  ∀ n, (P9872721038177116854.a n : ℤ) = A341301 (n + 1)

end A341301

/-! ## A341301.P6668148735066539010

`A029739(n)+a(n-1)` with `a(0)=5`
-/

namespace A341301.P6668148735066539010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A029739 n + a (n - 1)

end

end A341301.P6668148735066539010

namespace A341301

/-- `A029739(n)+a(n-1)` -/
def P6668148735066539010.Spec : Prop :=
  ∀ n, P6668148735066539010.a n = A341301 (n + 1)

end A341301

/-! ## A341301.P6354654529360245133

`A027690(n)-A004773(n)`
-/

namespace A341301.P6354654529360245133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n - A004773 n

end

end A341301.P6354654529360245133

namespace A341301

/-- `A027690(n)-A004773(n)` -/
def P6354654529360245133.Spec : Prop :=
  ∀ n, P6354654529360245133.a n = A341301 (n + 1)

end A341301

/-! ## A341301.P7429489972352459821

`A117951(n)-A002264(n)`
-/

namespace A341301.P7429489972352459821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n - A002264 n

end

end A341301.P7429489972352459821

namespace A341301

/-- `A117951(n)-A002264(n)` -/
def P7429489972352459821.Spec : Prop :=
  ∀ n, P7429489972352459821.a n = A341301 (n + 1)

end A341301

/-! ## A341301.P8357049119702874245

`A114949(n)-A008620(n)`
-/

namespace A341301.P8357049119702874245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 n - A008620 n

end

end A341301.P8357049119702874245

namespace A341301

/-- `A114949(n)-A008620(n)` -/
def P8357049119702874245.Spec : Prop :=
  ∀ n, P8357049119702874245.a n = A341301 (n + 1)

end A341301

/-! ## A341301.P16102581591586295370

`A027691(n)-A042968(n+1)`
-/

namespace A341301.P16102581591586295370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n - A042968 (n + 1)

end

end A341301.P16102581591586295370

namespace A341301

/-- `A027691(n)-A042968(n+1)` -/
def P16102581591586295370.Spec : Prop :=
  ∀ n, P16102581591586295370.a n = A341301 (n + 1)

end A341301

/-! ## A341301.P1149327544457697446

`A049008(∑[n+3]+(2-n)²)`
-/

namespace A341301.P1149327544457697446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049008 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - (n : ℤ)) ^ 2).toNat

end

end A341301.P1149327544457697446

namespace A341301

/-- `A049008(∑[n+3]+(2-n)²)` -/
def P1149327544457697446.Spec : Prop :=
  ∀ n, P1149327544457697446.a n = A341301 (n + 1)

end A341301

/-! ## A341301.P6811024528810714378

`A004396(A000326(n)+8)`
-/

namespace A341301.P6811024528810714378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A000326 n + 8).toNat

end

end A341301.P6811024528810714378

namespace A341301

/-- `A004396(A000326(n)+8)` -/
def P6811024528810714378.Spec : Prop :=
  ∀ n, P6811024528810714378.a n = A341301 (n + 1)

end A341301

/-!
# A341302: a(n) = n! + (n-1)! + n-2.

The programs for A341302, the canonical program `A341302.P9725300336109707283` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341302 has offset 1).

The definition of A341302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!+n!+n+1-2` (program `A341302.P9725300336109707283`, by `A341302.P9725300336109707283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341302.P9725300336109707283

`(n+1)!+n!+n+1-2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341302

/-- `(n+1)!+n!+n+1-2` -/
def P9725300336109707283.Spec : Prop :=
  ∀ n, P9725300336109707283.a n = A341302 (n + 1)

theorem P9725300336109707283.correct : P9725300336109707283.Spec := by
  intro n
  simp only [A341302, Nat.add_sub_cancel]

end A341302

/-! ## A341302.P7194846911528976569

`(n+2)*(n!+1)-3`
-/

namespace A341302.P7194846911528976569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.factorial n + 1) : ℤ) - 3

end

end A341302.P7194846911528976569

namespace A341302

/-- `(n+2)*(n!+1)-3` -/
def P7194846911528976569.Spec : Prop :=
  ∀ n, P7194846911528976569.a n = A341302 (n + 1)

theorem P7194846911528976569.correct : P7194846911528976569.Spec := by
  intro n
  simp only [A341302, Nat.add_sub_cancel, A341302.P7194846911528976569.a, A341302.P9725300336109707283.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A341302

/-! ## A341302.P2468873648421360528

`(n+1)!+n!+n-1`
-/

namespace A341302.P2468873648421360528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + ((Nat.factorial n : ℤ) + ((n : ℤ) - 1))

end

end A341302.P2468873648421360528

namespace A341302

/-- `(n+1)!+n!+n-1` -/
def P2468873648421360528.Spec : Prop :=
  ∀ n, P2468873648421360528.a n = A341302 (n + 1)

theorem P2468873648421360528.correct : P2468873648421360528.Spec := by
  intro n
  simp only [A341302, Nat.add_sub_cancel, A341302.P2468873648421360528.a, A341302.P9725300336109707283.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341302

/-! ## A341302.P664082040212337342

`n-1-(n-2-2*n)*n!`
-/

namespace A341302.P664082040212337342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ((n : ℤ) - 2 - (2 * n : ℤ)) * (Nat.factorial n : ℤ)

end

end A341302.P664082040212337342

namespace A341302

/-- `n-1-(n-2-2*n)*n!` -/
def P664082040212337342.Spec : Prop :=
  ∀ n, P664082040212337342.a n = A341302 (n + 1)

theorem P664082040212337342.correct : P664082040212337342.Spec := by
  intro n
  simp only [A341302, Nat.add_sub_cancel, A341302.P664082040212337342.a, A341302.P9725300336109707283.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A341302

/-! ## A341302.P13098130714617720382

`(n+2)*∏[round(1/acot(n))]+n-1`
-/

namespace A341302.P13098130714617720382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) - 1

end

end A341302.P13098130714617720382

namespace A341302

/-- `(n+2)*∏[round(1/acot(n))]+n-1` -/
def P13098130714617720382.Spec : Prop :=
  ∀ n, P13098130714617720382.a n = A341302 (n + 1)

end A341302

/-! ## A341302.P2160243068271915444

`(n+2)/(n+1)*∏[n+1]+n-1`
-/

namespace A341302.P2160243068271915444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((n : ℤ) - 1 : ℚ)

end

end A341302.P2160243068271915444

namespace A341302

/-- `(n+2)/(n+1)*∏[n+1]+n-1` -/
def P2160243068271915444.Spec : Prop :=
  ∀ n, P2160243068271915444.a n = (A341302 (n + 1) : ℚ)

end A341302

/-! ## A341302.P4820709058161852468

`abs(A001048(n+1)-1+n)`
-/

namespace A341302.P4820709058161852468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001048 (n + 1) - 1 + (n : ℤ)|

end

end A341302.P4820709058161852468

namespace A341302

/-- `abs(A001048(n+1)-1+n)` -/
def P4820709058161852468.Spec : Prop :=
  ∀ n, P4820709058161852468.a n = A341302 (n + 1)

end A341302

/-! ## A341302.P2628131257752611706

`abs(A023443(n)+(n+2)*n!)`
-/

namespace A341302.P2628131257752611706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n + ((n + 2) * Nat.factorial n : ℤ)|

end

end A341302.P2628131257752611706

namespace A341302

/-- `abs(A023443(n)+(n+2)*n!)` -/
def P2628131257752611706.Spec : Prop :=
  ∀ n, P2628131257752611706.a n = A341302 (n + 1)

end A341302

/-! ## A341302.P13223853282747689047

`abs(A001048(n+1)-A024000(n))`
-/

namespace A341302.P13223853282747689047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001048 (n + 1) - A024000 n|

end

end A341302.P13223853282747689047

namespace A341302

/-- `abs(A001048(n+1)-A024000(n))` -/
def P13223853282747689047.Spec : Prop :=
  ∀ n, P13223853282747689047.a n = A341302 (n + 1)

end A341302

/-!
# A341305: Fourier coefficients of the modular form (1/28)*(E_6(t)+27*E_6(3*t)).

The programs for A341305, there is no canonical definition to state claims against.
-/

/-! ## A341305.P5449489898309944904

`2*A320676(n)-A008657(n)`
-/

namespace A341305.P5449489898309944904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320676 n - A008657 n

end

end A341305.P5449489898309944904

/-! ## A341305.P15012513871576093883

`2*A320676(n)-(A004010(n)+36*A007332(n))`
-/

namespace A341305.P15012513871576093883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320676 n - (A004010 n + 36 * A007332 n)

end

end A341305.P15012513871576093883

/-!
# A341307: Expansion of (x^9+x^8+2*x^7+x^6+2*x^5+2*x^4+x^3+x^2+1)/(1-x^6)^2.

The programs for A341307, the canonical program `A341307.P11019485573895747018` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341307 has offset 0).

The definition of A341307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+x^3+2x^4+2x^5+x^6+2x^7+x^8+x^9)/(1-2x^6+x^12))` (program `A341307.P11019485573895747018`, by `A341307.P11019485573895747018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341307.P6801591477538081473

`floor((n+2+(-1)^n)/3)`
-/

namespace A341307.P6801591477538081473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2 : ℤ) + (-1) ^ n : ℚ) / 3⌋

end

end A341307.P6801591477538081473

namespace A341307

/-- `floor((n+2+(-1)^n)/3)` -/
def P6801591477538081473.Spec : Prop :=
  ∀ n, P6801591477538081473.a n = A341307 n

end A341307

/-! ## A341307.P15396295189387023040

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=3`
-/

namespace A341307.P15396295189387023040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 2, 3] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A341307.P15396295189387023040

namespace A341307

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P15396295189387023040.Spec : Prop :=
  ∀ n, P15396295189387023040.a n = A341307 n

end A341307

/-! ## A341307.P11019485573895747018

`ogf((1+x^2+x^3+2x^4+2x^5+x^6+2x^7+x^8+x^9)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341307

/-- `ogf((1+x^2+x^3+2x^4+2x^5+x^6+2x^7+x^8+x^9)/(1-2x^6+x^12))` -/
def P11019485573895747018.Spec : Prop :=
  ∀ n, P11019485573895747018.a n = A341307 n

theorem P11019485573895747018.correct : P11019485573895747018.Spec := by
  intro n
  simp only [A341307]

end A341307

/-! ## A341307.P4675061430928410886

`ceil(xor(1, n)/3)`
-/

namespace A341307.P4675061430928410886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 3⌉

end

end A341307.P4675061430928410886

namespace A341307

/-- `ceil(xor(1, n)/3)` -/
def P4675061430928410886.Spec : Prop :=
  ∀ n, P4675061430928410886.a n = A341307 n

end A341307

/-! ## A341307.P9703670362852802227

`round(abs(xor(n, -2))/3)`
-/

namespace A341307.P9703670362852802227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|Int.xor (n : ℤ) (-2)| : ℚ) / 3)

end

end A341307.P9703670362852802227

namespace A341307

/-- `round(abs(xor(n, -2))/3)` -/
def P9703670362852802227.Spec : Prop :=
  ∀ n, P9703670362852802227.a n = A341307 n

end A341307

/-! ## A341307.P613838445180736812

`round((xor(1, n)+1)/3)`
-/

namespace A341307.P613838445180736812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n + 1 : ℚ) / 3)

end

end A341307.P613838445180736812

namespace A341307

/-- `round((xor(1, n)+1)/3)` -/
def P613838445180736812.Spec : Prop :=
  ∀ n, P613838445180736812.a n = A341307 n

end A341307

/-! ## A341307.P4325916661438934244

`round(xor(3, 2*n)/6)`
-/

namespace A341307.P4325916661438934244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (2 * n) : ℚ) / 6)

end

end A341307.P4325916661438934244

namespace A341307

/-- `round(xor(3, 2*n)/6)` -/
def P4325916661438934244.Spec : Prop :=
  ∀ n, P4325916661438934244.a n = A341307 n

end A341307

/-! ## A341307.P12964915952297083537

`round(-(xor(n, -2)/3))`
-/

namespace A341307.P12964915952297083537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((Int.xor (n : ℤ) (-2) : ℚ) / 3))

end

end A341307.P12964915952297083537

namespace A341307

/-- `round(-(xor(n, -2)/3))` -/
def P12964915952297083537.Spec : Prop :=
  ∀ n, P12964915952297083537.a n = A341307 n

end A341307

/-! ## A341307.P7468674117804052979

`round((2*or(1, n)-n)/3)`
-/

namespace A341307.P7468674117804052979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.lor 1 n : ℤ) - (n : ℤ) : ℚ) / 3)

end

end A341307.P7468674117804052979

namespace A341307

/-- `round((2*or(1, n)-n)/3)` -/
def P7468674117804052979.Spec : Prop :=
  ∀ n, P7468674117804052979.a n = A341307 n

end A341307

/-! ## A341307.P7191906046497608846

`ceil((n+1-2*and(1, n))/3)`
-/

namespace A341307.P7191906046497608846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) - (2 * Nat.land 1 n : ℤ) : ℚ) / 3⌉

end

end A341307.P7191906046497608846

namespace A341307

/-- `ceil((n+1-2*and(1, n))/3)` -/
def P7191906046497608846.Spec : Prop :=
  ∀ n, P7191906046497608846.a n = A341307 n

end A341307

/-! ## A341307.P10087276350584886913

`ceil((2*or(1, n)-(n+1))/3)`
-/

namespace A341307.P10087276350584886913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ) : ℚ) / 3⌉

end

end A341307.P10087276350584886913

namespace A341307

/-- `ceil((2*or(1, n)-(n+1))/3)` -/
def P10087276350584886913.Spec : Prop :=
  ∀ n, P10087276350584886913.a n = A341307 n

end A341307

/-! ## A341307.P9815726198356407014

`round((n+2-2*and(1, n))/3)`
-/

namespace A341307.P9815726198356407014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2 : ℤ) - (2 * Nat.land 1 n : ℤ) : ℚ) / 3)

end

end A341307.P9815726198356407014

namespace A341307

/-- `round((n+2-2*and(1, n))/3)` -/
def P9815726198356407014.Spec : Prop :=
  ∀ n, P9815726198356407014.a n = A341307 n

end A341307

/-! ## A341307.P13632429839490535170

`∑[a(n-3)²]-(a(n-3)+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A341307.P13632429839490535170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 3) + 1)

end

end A341307.P13632429839490535170

namespace A341307

/-- `∑[a(n-3)²]-(a(n-3)+1)` -/
def P13632429839490535170.Spec : Prop :=
  ∀ n, P13632429839490535170.a n = A341307 n

end A341307

/-! ## A341307.P15165594724941949711

`∑[a(n-3)²]-1-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A341307.P15165594724941949711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - a (n - 3)

end

end A341307.P15165594724941949711

namespace A341307

/-- `∑[a(n-3)²]-1-a(n-3)` -/
def P15165594724941949711.Spec : Prop :=
  ∀ n, P15165594724941949711.a n = A341307 n

end A341307

/-! ## A341307.P15282302945709025934

`∑[floor(a(n-3))]-(a(n-3)+1)` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A341307.P15282302945709025934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 3) + 1)

end

end A341307.P15282302945709025934

namespace A341307

/-- `∑[floor(a(n-3))]-(a(n-3)+1)` -/
def P15282302945709025934.Spec : Prop :=
  ∀ n, P15282302945709025934.a n = A341307 n

end A341307

/-! ## A341307.P15762292040675106032

`∑[floor(a(n-3))]-1-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A341307.P15762292040675106032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - a (n - 3)

end

end A341307.P15762292040675106032

namespace A341307

/-- `∑[floor(a(n-3))]-1-a(n-3)` -/
def P15762292040675106032.Spec : Prop :=
  ∀ n, P15762292040675106032.a n = A341307 n

end A341307

/-! ## A341307.P10513936981170838842

`A302402(xor(1, n))/2`
-/

namespace A341307.P10513936981170838842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302402 (Nat.xor 1 n) : ℚ) / 2

end

end A341307.P10513936981170838842

namespace A341307

/-- `A302402(xor(1, n))/2` -/
def P10513936981170838842.Spec : Prop :=
  ∀ n, P10513936981170838842.a n = (A341307 n : ℚ)

end A341307

/-! ## A341307.P13124899571653424522

`A106250(A090168(n))`
-/

namespace A341307.P13124899571653424522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106250 (A090168 n).toNat

end

end A341307.P13124899571653424522

namespace A341307

/-- `A106250(A090168(n))` -/
def P13124899571653424522.Spec : Prop :=
  ∀ n, P13124899571653424522.a n = A341307 n

end A341307

/-! ## A341307.P5891652960018127665

`A110654(A341311(n))`
-/

namespace A341307.P5891652960018127665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A341311 n).toNat

end

end A341307.P5891652960018127665

namespace A341307

/-- `A110654(A341311(n))` -/
def P5891652960018127665.Spec : Prop :=
  ∀ n, P5891652960018127665.a n = A341307 n

end A341307

/-! ## A341307.P8880894478931092218

`A063208(n+1)-A300076(n)`
-/

namespace A341307.P8880894478931092218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (n + 1) - A300076 n

end

end A341307.P8880894478931092218

namespace A341307

/-- `A063208(n+1)-A300076(n)` -/
def P8880894478931092218.Spec : Prop :=
  ∀ n, P8880894478931092218.a n = A341307 n

end A341307

/-!
# A341308: Row sums of triangle A249223.

The programs for A341308, there is no canonical definition to state claims against.
-/

/-! ## A341308.P5091117935762557983

`A001222(A267551(n)+A000129(n))`
-/

namespace A341308.P5091117935762557983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A267551 n + A000129 n).toNat

end

end A341308.P5091117935762557983

/-! ## A341308.P11209223229096717707

`A349163(A006721(n))+A070824(n+1)`
-/

namespace A341308.P11209223229096717707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349163 (A006721 n).toNat + A070824 (n + 1)

end

end A341308.P11209223229096717707

/-! ## A341308.P13498186336544985810

`A329747(n+1)+A139434(A107429(n+1))`
-/

namespace A341308.P13498186336544985810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (n + 1) + A139434 (A107429 (n + 1)).toNat

end

end A341308.P13498186336544985810

/-! ## A341308.P6862460107201596348

`A330749(A187829(n+1))+A070824(n+1)`
-/

namespace A341308.P6862460107201596348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (A187829 (n + 1)).toNat + A070824 (n + 1)

end

end A341308.P6862460107201596348

/-! ## A341308.P3623647321130968293

`∏{e}[n+1, #+1]-A322817(∑[2^n])`
-/

namespace A341308.P3623647321130968293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A322817 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A341308.P3623647321130968293

/-!
# A341309: Sum of odd divisors of n that are <= A003056(n).

The programs for A341309, there is no canonical definition to state claims against.
-/

/-! ## A341309.P15374571792440505661

`A069289(2*(n+1))`
-/

namespace A341309.P15374571792440505661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (2 * (n + 1))

end

end A341309.P15374571792440505661

/-! ## A341309.P11652414336974838258

`A000027(A069289(n+2+n))`
-/

namespace A341309.P11652414336974838258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069289 (n + 2 + n)).toNat

end

end A341309.P11652414336974838258

/-! ## A341309.P71565082459765580

`∑{d}[A069289(n+2+n), A000010(#)]`
-/

namespace A341309.P71565082459765580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A341309.P71565082459765580

/-! ## A341309.P15799125242648207181

`A069289(n+2+n)/A000045(C(2, n)!)`
-/

namespace A341309.P15799125242648207181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069289 (n + 2 + n) : ℚ) / (A000045 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A341309.P15799125242648207181

/-! ## A341309.P11613300081135985477

`A069289(n+2+n)^and(1, A000040(n+1))`
-/

namespace A341309.P11613300081135985477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069289 (n + 2 + n) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A341309.P11613300081135985477

/-! ## A341309.P17549633556252916209

`A069289(n+2+n)/A000041(∑[(-1)^n])`
-/

namespace A341309.P17549633556252916209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069289 (n + 2 + n) : ℚ) / (A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A341309.P17549633556252916209

/-! ## A341309.P5023024491975690446

`root(A069289(n+2+n), ((-1)^A008683(n+1))²)`
-/

namespace A341309.P5023024491975690446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069289 (n + 2 + n) : ℝ) ^ (1 / (((-1 : ℚ) ^ (A008683 (n + 1) : ℤ)) ^ 2 : ℝ))

end

end A341309.P5023024491975690446

/-! ## A341309.P17675729459730896329

`A204217(n+1)-A352446(n+1)`
-/

namespace A341309.P17675729459730896329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) - A352446 (n + 1)

end

end A341309.P17675729459730896329

/-! ## A341309.P5254912025606370535

`A000593(n+1)-A341310(n+1)`
-/

namespace A341309.P5254912025606370535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A341310 (n + 1)

end

end A341309.P5254912025606370535

/-! ## A341309.P16467697254447817966

`A318876(n+1)-A341310(n+1)`
-/

namespace A341309.P16467697254447817966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (n + 1) - A341310 (n + 1)

end

end A341309.P16467697254447817966

/-!
# A341310: Sum of odd divisors of n that are > A003056(n).

The programs for A341310, there is no canonical definition to state claims against.
-/

/-! ## A341310.P4335052772267673388

`∑{d}[n+1, #*#%2]-A341309(n+1)`
-/

namespace A341310.P4335052772267673388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A341309 (n + 1)

end

end A341310.P4335052772267673388

/-! ## A341310.P205570913942573859

`∑{d}[n+1, #*and(1, #)]-A069289(2*(n+1))`
-/

namespace A341310.P205570913942573859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * Nat.land 1 d : ℕ) : ℤ) - A069289 (2 * (n + 1))

end

end A341310.P205570913942573859

/-! ## A341310.P8869110549923330111

`A353154(n+1)+A352446(n+1)`
-/

namespace A341310.P8869110549923330111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + A352446 (n + 1)

end

end A341310.P8869110549923330111

/-! ## A341310.P4190169857728583002

`A000593(n+1)-A341309(n+1)`
-/

namespace A341310.P4190169857728583002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A341309 (n + 1)

end

end A341310.P4190169857728583002

/-! ## A341310.P9801637965279655441

`A318876(n+1)-A341309(n+1)`
-/

namespace A341310.P9801637965279655441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (n + 1) - A341309 (n + 1)

end

end A341310.P9801637965279655441

/-! ## A341310.P13805487981387507184

`A000593(n+1)-A069289(2*(n+1))`
-/

namespace A341310.P13805487981387507184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A069289 (2 * (n + 1))

end

end A341310.P13805487981387507184

/-! ## A341310.P4508289728076298258

`A000203(n+1)/xor(n, n+1)-A341309(n+1)`
-/

namespace A341310.P4508289728076298258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ) - (A341309 (n + 1) : ℚ)

end

end A341310.P4508289728076298258

/-! ## A341310.P8274650877901779345

`A000203((n+1)/2^val(n+1, 2))-A341309(n+1)`
-/

namespace A341310.P8274650877901779345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A341309 (n + 1)

end

end A341310.P8274650877901779345

/-! ## A341310.P3060428489270576579

`A000203(n+1)/xor(n, n+1)-A069289(2*(n+1))`
-/

namespace A341310.P3060428489270576579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ) - (A069289 (2 * (n + 1)) : ℚ)

end

end A341310.P3060428489270576579

/-! ## A341310.P11820110629413455819

`A000203((n+1)/(or(n, n+1)-n))-A341309(n+1)`
-/

namespace A341310.P11820110629413455819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat - A341309 (n + 1)

end

end A341310.P11820110629413455819

/-!
# A341311: G.f. = (1+x^2+2*x^3+3*x^4+4*x^5+3*x^6+4*x^7+3*x^8+2*x^9+x^10)/(1-x^6)^2.

The programs for A341311, the canonical program `A341311.P5550601399475200828` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341311 has offset 0).

The definition of A341311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341311.P13881646159608513756

`∑[((-1)^(n%3))^n]`
-/

namespace A341311.P13881646159608513756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n % 3)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P13881646159608513756

namespace A341311

/-- `∑[((-1)^(n%3))^n]` -/
def P13881646159608513756.Spec : Prop :=
  ∀ n, P13881646159608513756.a n = A341311 n

end A341311

/-! ## A341311.P12848887934574928448

`∑[((-1)^n)^comp[or(3, n)]]`
-/

namespace A341311.P12848887934574928448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P12848887934574928448

namespace A341311

/-- `∑[((-1)^n)^comp[or(3, n)]]` -/
def P12848887934574928448.Spec : Prop :=
  ∀ n, P12848887934574928448.a n = A341311 n

end A341311

/-! ## A341311.P5550601399475200828

`1-2*ceil(n/6)+n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341311

/-- `1-2*ceil(n/6)+n` -/
def P5550601399475200828.Spec : Prop :=
  ∀ n, P5550601399475200828.a n = A341311 n

theorem P5550601399475200828.correct : P5550601399475200828.Spec := by
  intro n
  simp only [A341311]

end A341311

/-! ## A341311.P1109849315890224476

`∑[(2-gcd(3, 1-n))^n]`
-/

namespace A341311.P1109849315890224476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Int.gcd 3 (1 - (n : ℤ)) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P1109849315890224476

namespace A341311

/-- `∑[(2-gcd(3, 1-n))^n]` -/
def P1109849315890224476.Spec : Prop :=
  ∀ n, P1109849315890224476.a n = A341311 n

end A341311

/-! ## A341311.P14131262492253663907

`abs(comp[or(6, n)+1]+1-2*n)`
-/

namespace A341311.P14131262492253663907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (2 * n : ℤ)|

end

end A341311.P14131262492253663907

namespace A341311

/-- `abs(comp[or(6, n)+1]+1-2*n)` -/
def P14131262492253663907.Spec : Prop :=
  ∀ n, P14131262492253663907.a n = A341311 n

end A341311

/-! ## A341311.P6951417130291324188

`∑[2-gcd(2*n+1, floor(n/2))]`
-/

namespace A341311.P6951417130291324188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd (2 * n + 1 : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P6951417130291324188

namespace A341311

/-- `∑[2-gcd(2*n+1, floor(n/2))]` -/
def P6951417130291324188.Spec : Prop :=
  ∀ n, P6951417130291324188.a n = A341311 n

end A341311

/-! ## A341311.P6915453562040187207

`∑[∑[floor(a(n-3))]^n]` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A341311.P6915453562040187207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P6915453562040187207

namespace A341311

/-- `∑[∑[floor(a(n-3))]^n]` -/
def P6915453562040187207.Spec : Prop :=
  ∀ n, P6915453562040187207.a n = A341311 n

end A341311

/-! ## A341311.P15020315753328208236

`∑[or(1, A115360(n))]`
-/

namespace A341311.P15020315753328208236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115360 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P15020315753328208236

namespace A341311

/-- `∑[or(1, A115360(n))]` -/
def P15020315753328208236.Spec : Prop :=
  ∀ n, P15020315753328208236.a n = A341311 n

end A341311

/-! ## A341311.P17973272676533745197

`∑[A257075(n)^n]`
-/

namespace A341311.P17973272676533745197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P17973272676533745197

namespace A341311

/-- `∑[A257075(n)^n]` -/
def P17973272676533745197.Spec : Prop :=
  ∀ n, P17973272676533745197.a n = A341311 n

end A341311

/-! ## A341311.P15361916685639014452

`∑[A008683(gcd(n+2, xor(1, n)))]`
-/

namespace A341311.P15361916685639014452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd (n + 2) (Nat.xor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P15361916685639014452

namespace A341311

/-- `∑[A008683(gcd(n+2, xor(1, n)))]` -/
def P15361916685639014452.Spec : Prop :=
  ∀ n, P15361916685639014452.a n = A341311 n

end A341311

/-! ## A341311.P10754192771095592218

`∑[A103368(∑[A103368(n)])]`
-/

namespace A341311.P10754192771095592218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103368 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103368 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P10754192771095592218

namespace A341311

/-- `∑[A103368(∑[A103368(n)])]` -/
def P10754192771095592218.Spec : Prop :=
  ∀ n, P10754192771095592218.a n = A341311 n

end A341311

/-! ## A341311.P9387208457019245520

`∑[A115360(abs(n*A115360(n)))]`
-/

namespace A341311.P9387208457019245520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 |(n : ℤ) * A115360 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P9387208457019245520

namespace A341311

/-- `∑[A115360(abs(n*A115360(n)))]` -/
def P9387208457019245520.Spec : Prop :=
  ∀ n, P9387208457019245520.a n = A341311 n

end A341311

/-! ## A341311.P5309811906999893140

`∑[A115360(n*A115360(n)²)]`
-/

namespace A341311.P5309811906999893140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 ((n : ℤ) * A115360 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P5309811906999893140

namespace A341311

/-- `∑[A115360(n*A115360(n)²)]` -/
def P5309811906999893140.Spec : Prop :=
  ∀ n, P5309811906999893140.a n = A341311 n

end A341311

/-! ## A341311.P7265384109073768579

`∑[A163811(n*A163811(n)²)]`
-/

namespace A341311.P7265384109073768579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 ((n : ℤ) * A163811 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P7265384109073768579

namespace A341311

/-- `∑[A163811(n*A163811(n)²)]` -/
def P7265384109073768579.Spec : Prop :=
  ∀ n, P7265384109073768579.a n = A341311 n

end A341311

/-! ## A341311.P17916522567573168827

`∑[A008683(lcm(3, A020639(n+2)))]`
-/

namespace A341311.P17916522567573168827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm 3 (A020639 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P17916522567573168827

namespace A341311

/-- `∑[A008683(lcm(3, A020639(n+2)))]` -/
def P17916522567573168827.Spec : Prop :=
  ∀ n, P17916522567573168827.a n = A341311 n

end A341311

/-! ## A341311.P6122564504166089125

`∑[A008683(gcd(2*n+1, A020639(n+2)))]`
-/

namespace A341311.P6122564504166089125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (2 * n + 1 : ℤ) (A020639 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P6122564504166089125

namespace A341311

/-- `∑[A008683(gcd(2*n+1, A020639(n+2)))]` -/
def P6122564504166089125.Spec : Prop :=
  ∀ n, P6122564504166089125.a n = A341311 n

end A341311

/-! ## A341311.P3791794743896919430

`∑[A131561(n+1)^n]`
-/

namespace A341311.P3791794743896919430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P3791794743896919430

namespace A341311

/-- `∑[A131561(n+1)^n]` -/
def P3791794743896919430.Spec : Prop :=
  ∀ n, P3791794743896919430.a n = A341311 n

end A341311

/-! ## A341311.P14480475547043025004

`∑[A131017(A131017(n+1)+n)]`
-/

namespace A341311.P14480475547043025004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 (A131017 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341311.P14480475547043025004

namespace A341311

/-- `∑[A131017(A131017(n+1)+n)]` -/
def P14480475547043025004.Spec : Prop :=
  ∀ n, P14480475547043025004.a n = A341311 n

end A341311

/-! ## A341311.P13827283773054971084

`A004396(n+1-A080425(A004526(n+1)))`
-/

namespace A341311.P13827283773054971084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n + 1 : ℤ) - A080425 (A004526 (n + 1)).toNat).toNat

end

end A341311.P13827283773054971084

namespace A341311

/-- `A004396(n+1-A080425(A004526(n+1)))` -/
def P13827283773054971084.Spec : Prop :=
  ∀ n, P13827283773054971084.a n = A341311 n

end A341311

/-! ## A341311.P10159634075744953932

`A106249(A047505(n+1))`
-/

namespace A341311.P10159634075744953932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A047505 (n + 1)).toNat

end

end A341311.P10159634075744953932

namespace A341311

/-- `A106249(A047505(n+1))` -/
def P10159634075744953932.Spec : Prop :=
  ∀ n, P10159634075744953932.a n = A341311 n

end A341311

/-!
# A341312: a(n) = a(n-1) + a(n-3) unless a(n-1) and a(n-3) are both even in which case a(n) = (a(n-1) + a(n-3))/2, with a(0) = a(1) = a(2) = 1.

The programs for A341312, the canonical program `A341312.P10618630874776058861` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341312 has offset 0).

The definition of A341312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341312.P10618630874776058861

`(a(n-1)+a(n-3))/gcd(2, gcd(a(n-1), a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341312

/-- `(a(n-1)+a(n-3))/gcd(2, gcd(a(n-1), a(n-3)))` -/
def P10618630874776058861.Spec : Prop :=
  ∀ n, P10618630874776058861.a n = (A341312 n : ℚ)

end A341312

/-!
# A341314: Array read by antidiagonals: T(n,k) = (n+k)/gcd(n,k), n>=0, k>=0.

The programs for A341314, the canonical program `A341314.P12612077031606272302` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341314 has offset 0).

The definition of A341314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341314.P6591795563884882362

`∑[char[∑[n+1]]]/round(1/acot(A109004(n)))`
-/

namespace A341314.P6591795563884882362
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A109004 n : ℝ)) : ℚ)

end

end A341314.P6591795563884882362

namespace A341314

/-- `∑[char[∑[n+1]]]/round(1/acot(A109004(n)))` -/
def P6591795563884882362.Spec : Prop :=
  ∀ n, P6591795563884882362.a n = (A341314 n : ℚ)

end A341314

/-! ## A341314.P12612077031606272302

`A277227(A083920(n)+1)%(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A341314

/-- `A277227(A083920(n)+1)%(n+1)` -/
def P12612077031606272302.Spec : Prop :=
  ∀ n, P12612077031606272302.a n = A341314 n

theorem P12612077031606272302.correct : P12612077031606272302.Spec := by
  intro n
  simp only [A341314]

end A341314

/-! ## A341314.P2100655180417408819

`A277227(A122797(n+1))%(n+1)`
-/

namespace A341314.P2100655180417408819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277227 (A122797 (n + 1)).toNat) (n + 1 : ℤ)

end

end A341314.P2100655180417408819

namespace A341314

/-- `A277227(A122797(n+1))%(n+1)` -/
def P2100655180417408819.Spec : Prop :=
  ∀ n, P2100655180417408819.a n = A341314 n

end A341314

/-! ## A341314.P7453164439931085948

`A003056(n)/A109004(A028310(n))`
-/

namespace A341314.P7453164439931085948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) / (A109004 (A028310 n).toNat : ℚ)

end

end A341314.P7453164439931085948

namespace A341314

/-- `A003056(n)/A109004(A028310(n))` -/
def P7453164439931085948.Spec : Prop :=
  ∀ n, P7453164439931085948.a n = (A341314 n : ℚ)

end A341314

/-! ## A341314.P7317231864269276163

`A277227(A083920(n)+1)-A056019(floor(1/(n+1)))`
-/

namespace A341314.P7317231864269276163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A083920 n + 1).toNat - A056019 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A341314.P7317231864269276163

namespace A341314

/-- `A277227(A083920(n)+1)-A056019(floor(1/(n+1)))` -/
def P7317231864269276163.Spec : Prop :=
  ∀ n, P7317231864269276163.a n = A341314 n

end A341314

/-! ## A341314.P8142776598450659851

`A277227(A083920(n)+1)-floor(1/(n+1))*A213500(n+1)`
-/

namespace A341314.P8142776598450659851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A083920 n + 1).toNat - ⌊1 / (n + 1 : ℚ)⌋ * A213500 (n + 1)

end

end A341314.P8142776598450659851

namespace A341314

/-- `A277227(A083920(n)+1)-floor(1/(n+1))*A213500(n+1)` -/
def P8142776598450659851.Spec : Prop :=
  ∀ n, P8142776598450659851.a n = A341314 n

end A341314

/-! ## A341314.P1256303414964832284

`A099246(A173787(n))%(n+1)`
-/

namespace A341314.P1256303414964832284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099246 (A173787 n).toNat) (n + 1 : ℤ)

end

end A341314.P1256303414964832284

namespace A341314

/-- `A099246(A173787(n))%(n+1)` -/
def P1256303414964832284.Spec : Prop :=
  ∀ n, P1256303414964832284.a n = A341314 n

end A341314

/-! ## A341314.P8437030361279650383

`∑{e}[A036561(n), #/A109004(n)]`
-/

namespace A341314.P8437030361279650383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A109004 n : ℚ)

end

end A341314.P8437030361279650383

namespace A341314

/-- `∑{e}[A036561(n), #/A109004(n)]` -/
def P8437030361279650383.Spec : Prop :=
  ∀ n, P8437030361279650383.a n = (A341314 n : ℚ)

end A341314

/-! ## A341314.P14224548887718545744

`lcm(2, A261790(n)%(n+1))/2`
-/

namespace A341314.P14224548887718545744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.tmod (A261790 n) (n + 1 : ℤ)) : ℚ) / 2

end

end A341314.P14224548887718545744

namespace A341314

/-- `lcm(2, A261790(n)%(n+1))/2` -/
def P14224548887718545744.Spec : Prop :=
  ∀ n, P14224548887718545744.a n = (A341314 n : ℚ)

end A341314

/-! ## A341314.P12413277071095257341

`A026741(A261790(n)%(n+1))`
-/

namespace A341314.P12413277071095257341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A261790 n) (n + 1 : ℤ)).toNat

end

end A341314.P12413277071095257341

namespace A341314

/-- `A026741(A261790(n)%(n+1))` -/
def P12413277071095257341.Spec : Prop :=
  ∀ n, P12413277071095257341.a n = A341314 n

end A341314

/-!
# A341315: Triangle read by rows: T(n,k) = (n+k)/gcd(n,k), n>=0, 0<=k<=n.

The programs for A341315, the canonical program `A341315.P7736784569741981111` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341315 has offset 0).

The definition of A341315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341315.P7736784569741981111

`A051162(n)/A109004(A028310(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341315

/-- `A051162(n)/A109004(A028310(n))` -/
def P7736784569741981111.Spec : Prop :=
  ∀ n, P7736784569741981111.a n = (A341315 n : ℚ)

end A341315

/-! ## A341315.P4431194605759584208

`A051162(n)/A109004(gcd(n, A008458(n)))`
-/

namespace A341315.P4431194605759584208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (A109004 (Int.gcd (n : ℤ) (A008458 n)) : ℚ)

end

end A341315.P4431194605759584208

namespace A341315

/-- `A051162(n)/A109004(gcd(n, A008458(n)))` -/
def P4431194605759584208.Spec : Prop :=
  ∀ n, P4431194605759584208.a n = (A341315 n : ℚ)

end A341315

/-! ## A341315.P14207043374273043696

`A051162(n)/gcd(A002262(n), A134478(n))`
-/

namespace A341315.P14207043374273043696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (Int.gcd (A002262 n) (A134478 n) : ℚ)

end

end A341315.P14207043374273043696

namespace A341315

/-- `A051162(n)/gcd(A002262(n), A134478(n))` -/
def P14207043374273043696.Spec : Prop :=
  ∀ n, P14207043374273043696.a n = (A341315 n : ℚ)

end A341315

/-! ## A341315.P12839302395956844821

`A051162(n)/A028310(A279417(n+1)-(A279416(n+1)+1))`
-/

namespace A341315.P12839302395956844821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (A028310 (A279417 (n + 1) - (A279416 (n + 1) + 1)).toNat : ℚ)

end

end A341315.P12839302395956844821

namespace A341315

/-- `A051162(n)/A028310(A279417(n+1)-(A279416(n+1)+1))` -/
def P12839302395956844821.Spec : Prop :=
  ∀ n, P12839302395956844821.a n = (A341315 n : ℚ)

end A341315

/-! ## A341315.P2296882806717865866

`A341314(A245300(n))`
-/

namespace A341315.P2296882806717865866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (A245300 n).toNat

end

end A341315.P2296882806717865866

namespace A341315

/-- `A341314(A245300(n))` -/
def P2296882806717865866.Spec : Prop :=
  ∀ n, P2296882806717865866.a n = A341315 n

end A341315

/-! ## A341315.P10682966673179327099

`A051162(n)/A109004(A233583(n+1))`
-/

namespace A341315.P10682966673179327099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (A109004 (A233583 (n + 1)).toNat : ℚ)

end

end A341315.P10682966673179327099

namespace A341315

/-- `A051162(n)/A109004(A233583(n+1))` -/
def P10682966673179327099.Spec : Prop :=
  ∀ n, P10682966673179327099.a n = (A341315 n : ℚ)

end A341315

/-! ## A341315.P2916858501338192682

`A056239(A052410(A036561(n)))`
-/

namespace A341315.P2916858501338192682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052410 (A036561 n).toNat).toNat

end

end A341315.P2916858501338192682

namespace A341315

/-- `A056239(A052410(A036561(n)))` -/
def P2916858501338192682.Spec : Prop :=
  ∀ n, P2916858501338192682.a n = A341315 n

end A341315

/-! ## A341315.P5401764891232611216

`A051162(n)/A253641(A036561(n))`
-/

namespace A341315.P5401764891232611216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (A253641 (A036561 n).toNat : ℚ)

end

end A341315.P5401764891232611216

namespace A341315

/-- `A051162(n)/A253641(A036561(n))` -/
def P5401764891232611216.Spec : Prop :=
  ∀ n, P5401764891232611216.a n = (A341315 n : ℚ)

end A341315

/-!
# A341316: Row sums in A341315.

The programs for A341316, the canonical program `A341316.P8105046505251376767` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341316 has offset 0).

The definition of A341316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341316.P8105046505251376767

`3*∑{d}[n, A023896(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341316

/-- `3*∑{d}[n, A023896(#)]` -/
def P8105046505251376767.Spec : Prop :=
  ∀ n, P8105046505251376767.a n = A341316 n

theorem P8105046505251376767.correct : P8105046505251376767.Spec := by
  intro n
  simp only [A341316]

end A341316

/-! ## A341316.P2054475931039098452

`3*∑{d}[n, ceil(A000010(#²)/2)]`
-/

namespace A341316.P2054475931039098452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n), ⌈(A000010 (d ^ 2) : ℚ) / 2⌉)

end

end A341316.P2054475931039098452

namespace A341316

/-- `3*∑{d}[n, ceil(A000010(#²)/2)]` -/
def P2054475931039098452.Spec : Prop :=
  ∀ n, P2054475931039098452.a n = A341316 n

end A341316

/-! ## A341316.P13406004556601673085

`∑{d}[n, A008486(A023896(#))]`
-/

namespace A341316.P13406004556601673085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008486 (A023896 d).toNat

end

end A341316.P13406004556601673085

namespace A341316

/-- `∑{d}[n, A008486(A023896(#))]` -/
def P13406004556601673085.Spec : Prop :=
  ∀ n, P13406004556601673085.a n = A341316 n

end A341316

/-! ## A341316.P333539182927171901

`A008585(∑{d}[n, A023896(#)])`
-/

namespace A341316.P333539182927171901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (∑ d ∈ Nat.divisors (f1 n), A023896 d).toNat

end

end A341316.P333539182927171901

namespace A341316

/-- `A008585(∑{d}[n, A023896(#)])` -/
def P333539182927171901.Spec : Prop :=
  ∀ n, P333539182927171901.a n = A341316 n

end A341316

/-! ## A341316.P7259362397596992701

`3*∑{d}[n, A004525(A000010(#²))]`
-/

namespace A341316.P7259362397596992701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n), A004525 (A000010 (d ^ 2)).toNat)

end

end A341316.P7259362397596992701

namespace A341316

/-- `3*∑{d}[n, A004525(A000010(#²))]` -/
def P7259362397596992701.Spec : Prop :=
  ∀ n, P7259362397596992701.a n = A341316 n

end A341316

/-! ## A341316.P12579879620076385637

`3*A110654(∑{d}[n, A000010(#²)])`
-/

namespace A341316.P12579879620076385637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A110654 (∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ 2)).toNat

end

end A341316.P12579879620076385637

namespace A341316

/-- `3*A110654(∑{d}[n, A000010(#²)])` -/
def P12579879620076385637.Spec : Prop :=
  ∀ n, P12579879620076385637.a n = A341316 n

end A341316

/-! ## A341316.P7398791706555328561

`∑{d}[n, A008486(A004525(A000010(#^2)))]`
-/

namespace A341316.P7398791706555328561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008486 (A004525 (A000010 (d ^ 2)).toNat).toNat

end

end A341316.P7398791706555328561

namespace A341316

/-- `∑{d}[n, A008486(A004525(A000010(#^2)))]` -/
def P7398791706555328561.Spec : Prop :=
  ∀ n, P7398791706555328561.a n = A341316 n

end A341316

/-! ## A341316.P4482285700263189706

`∑{d}[n, A038572(A064400(#))]`
-/

namespace A341316.P4482285700263189706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038572 (A064400 d).toNat

end

end A341316.P4482285700263189706

namespace A341316

/-- `∑{d}[n, A038572(A064400(#))]` -/
def P4482285700263189706.Spec : Prop :=
  ∀ n, P4482285700263189706.a n = A341316 n

end A341316

/-!
# A341317: Array read by antidiagonals of products in the semigroup S = {(0,0), (i,j): i >= j >= 1} (see Comments for precise definition).

The programs for A341317, there is no canonical definition to state claims against.
-/

/-! ## A341317.P16627060167315172685

`A076649(A176291(n))`
-/

namespace A341317.P16627060167315172685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A176291 n).toNat

end

end A341317.P16627060167315172685

/-! ## A341317.P8240816602731283132

`A163001(A126770(n))`
-/

namespace A341317.P8240816602731283132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163001 (A126770 n).toNat

end

end A341317.P8240816602731283132

/-! ## A341317.P6781262949358744354

`A146527(A157192(n))`
-/

namespace A341317.P6781262949358744354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146527 (A157192 n).toNat

end

end A341317.P6781262949358744354

/-! ## A341317.P1420367982842895798

`A151844(A176791(n))`
-/

namespace A341317.P1420367982842895798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151844 (A176791 n).toNat

end

end A341317.P1420367982842895798

/-! ## A341317.P6284858857526967161

`A108920(A398244(n))`
-/

namespace A341317.P6284858857526967161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (A398244 n).toNat

end

end A341317.P6284858857526967161

/-!
# A341318: Lower triangular table of products in the semigroup S = {(0,0), (i,j): i >= j >= 1} (see Comments for precise definition), read by rows.

The programs for A341318, there is no canonical definition to state claims against.
-/

/-! ## A341318.P15507655066516279219

`A341317(A245300(n))`
-/

namespace A341318.P15507655066516279219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341317 (A245300 n).toNat

end

end A341318.P15507655066516279219

/-! ## A341318.P9418273398854848099

`A329295(A309220(n+1))%A000010(2*n+3)`
-/

namespace A341318.P9418273398854848099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329295 (A309220 (n + 1)).toNat) (A000010 (2 * n + 3))

end

end A341318.P9418273398854848099

/-!
# A341319: Minimum number of cells needed in an n X n grid to win a majority of districts when all districts are required to be the same size.

The programs for A341319, there is no canonical definition to state claims against.
-/

/-! ## A341319.P16796396618838313833

`or(A295316(A038549(n+1)), A341578(n+1))`
-/

namespace A341319.P16796396618838313833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295316 (A038549 (n + 1)).toNat) (A341578 (n + 1))

end

end A341319.P16796396618838313833

/-! ## A341319.P15880014402004922860

`or(A295316(A038549(n+1)), A341721((n+1)²))`
-/

namespace A341319.P15880014402004922860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295316 (A038549 (n + 1)).toNat) (A341721 ((n + 1) ^ 2))

end

end A341319.P15880014402004922860

/-! ## A341319.P544102605628235570

`or(A332497(A003960(n+1)!), A341578(n+1))`
-/

namespace A341319.P544102605628235570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A332497 (Nat.factorial (A003960 (n + 1)).toNat)) (A341578 (n + 1))

end

end A341319.P544102605628235570

/-! ## A341319.P11376018358613698426

`A341609(Δ[A341583(n)])+A341578(n+1)`
-/

namespace A341319.P11376018358613698426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (f1 (n + 1) - f1 n).toNat + A341578 (n + 1)

end

end A341319.P11376018358613698426

/-! ## A341319.P2030207270871538131

`or(A000161(A187829(n+1)), A341578(n+1))`
-/

namespace A341319.P2030207270871538131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000161 (A187829 (n + 1)).toNat) (A341578 (n + 1))

end

end A341319.P2030207270871538131

/-!
# A341320: G.f. A(x) satisfies: A(x) = P(x)/Q(x) where P(x) = Sum_{n>=0} (n+1)*x^n*A(x)^(3*n)/(1 - x*A(x)^(n+1))^2 and Q(x) = Sum_{n>=0} (n+1)*x^n*A(x)^(2*n)/(1 - x*A(x)^(n+2)).

The programs for A341320, there is no canonical definition to state claims against.
-/

/-! ## A341320.P585567900669792783

`A008621(n*A115087(n))`
-/

namespace A341320.P585567900669792783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((n : ℤ) * A115087 n).toNat

end

end A341320.P585567900669792783

/-! ## A341320.P12733150269848871106

`A060384(ceil(sqrt(A051262(n))))`
-/

namespace A341320.P12733150269848871106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 ⌈Real.sqrt (A051262 n : ℝ)⌉.toNat

end

end A341320.P12733150269848871106

/-!
# A341323: a(n) = Sum_{k=1..n+1} |A341287(n,k)|.

The programs for A341323, there is no canonical definition to state claims against.
-/

/-! ## A341323.P5010437095716455431

`or(1, A226190(A047032(n)))`
-/

namespace A341323.P5010437095716455431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226190 (A047032 n).toNat)

end

end A341323.P5010437095716455431

/-! ## A341323.P15662365872327815884

`A350311(A350256(n)+A005443(n))`
-/

namespace A341323.P15662365872327815884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350311 (A350256 n + A005443 n).toNat

end

end A341323.P15662365872327815884

/-! ## A341323.P11254525054832423660

`A248227(xor(A360676(3*n+2), A383492(2*n)))`
-/

namespace A341323.P11254525054832423660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.xor (A360676 (3 * n + 2)) (A383492 (2 * n))).toNat

end

end A341323.P11254525054832423660

/-!
# A341329: Numbers k such that k^2 is the sum of m nonzero squares for all 1 <= m <= k^2 - 14.

The programs for A341329, the canonical program `A341329.P7455525614794179210` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341329 has offset 1).

The definition of A341329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341329.P12489604329200910539

`sqrt(A018820(n+1))`
-/

namespace A341329.P12489604329200910539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018820 (n + 1) : ℝ)

end

end A341329.P12489604329200910539

namespace A341329

/-- `sqrt(A018820(n+1))` -/
def P12489604329200910539.Spec : Prop :=
  ∀ n, P12489604329200910539.a n = (A341329 (n + 1) : ℝ)

end A341329

/-! ## A341329.P17341692296562947684

`A000027(root(A018820(n+1), 2))`
-/

namespace A341329.P17341692296562947684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A341329.P17341692296562947684

namespace A341329

/-- `A000027(root(A018820(n+1), 2))` -/
def P17341692296562947684.Spec : Prop :=
  ∀ n, P17341692296562947684.a n = A341329 (n + 1)

end A341329

/-! ## A341329.P3215517123504207559

`root(A018820(n+1), 2)%A017463(n)`
-/

namespace A341329.P3215517123504207559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A017463 n)

end

end A341329.P3215517123504207559

namespace A341329

/-- `root(A018820(n+1), 2)%A017463(n)` -/
def P3215517123504207559.Spec : Prop :=
  ∀ n, P3215517123504207559.a n = A341329 (n + 1)

end A341329

/-! ## A341329.P11855061410913266347

`or(A000007(n), A018820(n+1))^(1/2)`
-/

namespace A341329.P11855061410913266347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lor (A000007 n) (A018820 (n + 1)) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A341329.P11855061410913266347

namespace A341329

/-- `or(A000007(n), A018820(n+1))^(1/2)` -/
def P11855061410913266347.Spec : Prop :=
  ∀ n, P11855061410913266347.a n = (A341329 (n + 1) : ℝ)

end A341329

/-! ## A341329.P14081603219505768227

`A188170(A281130(n+1))+root(A018820(n+1), 2)`
-/

namespace A341329.P14081603219505768227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188170 (A281130 (n + 1)).toNat : ℝ) + (A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A341329.P14081603219505768227

namespace A341329

/-- `A188170(A281130(n+1))+root(A018820(n+1), 2)` -/
def P14081603219505768227.Spec : Prop :=
  ∀ n, P14081603219505768227.a n = (A341329 (n + 1) : ℝ)

end A341329

/-! ## A341329.P13518464315176244441

`root(A018820(n+1), 2)*A032742(A284694(n+1))`
-/

namespace A341329.P13518464315176244441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A032742 (A284694 (n + 1)).toNat : ℝ)

end

end A341329.P13518464315176244441

namespace A341329

/-- `root(A018820(n+1), 2)*A032742(A284694(n+1))` -/
def P13518464315176244441.Spec : Prop :=
  ∀ n, P13518464315176244441.a n = (A341329 (n + 1) : ℝ)

end A341329

/-! ## A341329.P8987323277922455167

`A292241(2*(n+2))+root(A018820(n+1), 2)`
-/

namespace A341329.P8987323277922455167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A292241 (2 * (n + 2)) : ℝ) + (A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A341329.P8987323277922455167

namespace A341329

/-- `A292241(2*(n+2))+root(A018820(n+1), 2)` -/
def P8987323277922455167.Spec : Prop :=
  ∀ n, P8987323277922455167.a n = (A341329 (n + 1) : ℝ)

end A341329

/-! ## A341329.P7455525614794179210

`∩[A009003(n+1), A161992(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341329

/-- `∩[A009003(n+1), A161992(n+1)]` -/
def P7455525614794179210.Spec : Prop :=
  ∀ n, (P7455525614794179210.a n : ℤ) = A341329 (n + 1)

theorem P7455525614794179210.correct : P7455525614794179210.Spec := by
  intro n
  simp only [A341329, Nat.add_sub_cancel]

end A341329

/-! ## A341329.P10523513568630013907

`∩[A005767(n+1), A009003(n+1)]`
-/

namespace A341329.P10523513568630013907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341329.P10523513568630013907

namespace A341329

/-- `∩[A005767(n+1), A009003(n+1)]` -/
def P10523513568630013907.Spec : Prop :=
  ∀ n, (P10523513568630013907.a n : ℤ) = A341329 (n + 1)

end A341329

/-! ## A341329.P2298666493236086789

`A254667(root(A018820(n+1), 2))`
-/

namespace A341329.P2298666493236086789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A341329.P2298666493236086789

namespace A341329

/-- `A254667(root(A018820(n+1), 2))` -/
def P2298666493236086789.Spec : Prop :=
  ∀ n, P2298666493236086789.a n = A341329 (n + 1)

end A341329

/-! ## A341329.P1344463654994670720

`A008619(2*n)/(n+1)*root(A018820(n+1), 2)`
-/

namespace A341329.P1344463654994670720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A008619 (2 * n) : ℚ) / (n + 1 : ℚ) : ℝ) * (A018820 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A341329.P1344463654994670720

namespace A341329

/-- `A008619(2*n)/(n+1)*root(A018820(n+1), 2)` -/
def P1344463654994670720.Spec : Prop :=
  ∀ n, P1344463654994670720.a n = (A341329 (n + 1) : ℝ)

end A341329

/-! ## A341329.P4350384788764041093

`root(A018820(n+1), ratio[A020714(n)])`
-/

namespace A341329.P4350384788764041093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018820 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A341329.P4350384788764041093

namespace A341329

/-- `root(A018820(n+1), ratio[A020714(n)])` -/
def P4350384788764041093.Spec : Prop :=
  ∀ n, P4350384788764041093.a n = (A341329 (n + 1) : ℝ)

end A341329

/-!
# A341330: a(n) = Sum_{k=1..n} (-k)^(k+1).

The programs for A341330, there is no canonical definition to state claims against.
-/

/-! ## A341330.P6572445635286145486

`∑[(-(n+1))^(n+2)]`
-/

namespace A341330.P6572445635286145486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341330.P6572445635286145486

/-! ## A341330.P7947630198905319274

`a(n-1)+(-(n+1))^(n+2)` with `a(0)=1`
-/

namespace A341330.P7947630198905319274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-(n + 1 : ℤ)) ^ (n + 2)

end

end A341330.P7947630198905319274

/-! ## A341330.P2286362439902927927

`∑[(C(2, n+2)-(n+1))^(n+2)]+1`
-/

namespace A341330.P2286362439902927927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - (n + 1 : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341330.P2286362439902927927

/-! ## A341330.P17727949609229071730

`∑[A131738(n)^(n+2)]+1`
-/

namespace A341330.P17727949609229071730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341330.P17727949609229071730

/-!
# A341331: a(n) = n^n - (n-1)^n - (n-2)^n - ... - 1^n.

The programs for A341331, there is no canonical definition to state claims against.
-/

/-! ## A341331.P4007154245088570472

`A000312(n+1)-A121706(n+1)`
-/

namespace A341331.P4007154245088570472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A121706 (n + 1)

end

end A341331.P4007154245088570472

/-! ## A341331.P14712526741149471247

`Δ[A001923(n)]-A121706(n+1)`
-/

namespace A341331.P14712526741149471247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A121706 (n + 1)

end

end A341331.P14712526741149471247

/-! ## A341331.P15603370881598810804

`Δ[A062970(n)]-A121706(n+1)`
-/

namespace A341331.P15603370881598810804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A121706 (n + 1)

end

end A341331.P15603370881598810804

/-! ## A341331.P1760677036188798348

`record[A091884(n)]-A121706(n+1)`
-/

namespace A341331.P1760677036188798348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A121706 (n + 1)

end

end A341331.P1760677036188798348

/-! ## A341331.P18144769017847411602

`record[A174551(n)]-A121706(n+1)`
-/

namespace A341331.P18144769017847411602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A121706 (n + 1)

end

end A341331.P18144769017847411602

/-! ## A341331.P6599159531872969344

`record[A245501(n)]-A121706(n+1)`
-/

namespace A341331.P6599159531872969344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A121706 (n + 1)

end

end A341331.P6599159531872969344

/-! ## A341331.P7097738486126114626

`Δ[2*A001923(n)]-A031971(n+1)`
-/

namespace A341331.P7097738486126114626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A031971 (n + 1)

end

end A341331.P7097738486126114626

/-! ## A341331.P1611986877692647928

`Δ[2*A062970(n)]-A031971(n+1)`
-/

namespace A341331.P1611986877692647928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A031971 (n + 1)

end

end A341331.P1611986877692647928

/-! ## A341331.P6882847380910407521

`A031971(n+1)-2*A121706(n+1)`
-/

namespace A341331.P6882847380910407521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1) - 2 * A121706 (n + 1)

end

end A341331.P6882847380910407521

/-! ## A341331.P14453737245999515219

`A091884(Δ[A000292(n)])-A121706(n+1)`
-/

namespace A341331.P14453737245999515219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 (f1 (n + 1) - f1 n).toNat - A121706 (n + 1)

end

end A341331.P14453737245999515219

/-!
# A341333: Positions of palindromes in the ordering of all 01-words defined at A341258.

The programs for A341333, there is no canonical definition to state claims against.
-/

/-! ## A341333.P13853087512830010992

`record[gcd(n+1, A344682(n+1))]`
-/

namespace A341333.P13853087512830010992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341333.P13853087512830010992

/-! ## A341333.P942404160491498875

`eq[n, A344682(A028310(n))]`
-/

namespace A341333.P942404160491498875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341333.P942404160491498875

/-! ## A341333.P3183972949097235828

`record[gcd(n, A004277(A344682(n)))]`
-/

namespace A341333.P3183972949097235828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004277 (A344682 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341333.P3183972949097235828

/-! ## A341333.P16793790946568178218

`eq[n, A344682(A000007(n)+n)]`
-/

namespace A341333.P16793790946568178218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341333.P16793790946568178218

/-! ## A341333.P8149148715402491267

`eq[n-A000007(n), A344682(n)]`
-/

namespace A341333.P8149148715402491267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341333.P8149148715402491267

/-! ## A341333.P16916570988252364978

`record[gcd(2*A344682(n), A028310(n))]`
-/

namespace A341333.P16916570988252364978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A344682 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341333.P16916570988252364978

/-! ## A341333.P6537122891804561392

`eq[A008619(2*n), A344682(n+1)]+1`
-/

namespace A341333.P6537122891804561392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A341333.P6537122891804561392

/-! ## A341333.P8671852881172036912

`eq[n, A344682(A008619(A004273(n)))]`
-/

namespace A341333.P8671852881172036912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341333.P8671852881172036912

/-! ## A341333.P11330815969354608932

`eq[n, A344682(A008619(A004275(n)))]`
-/

namespace A341333.P11330815969354608932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341333.P11330815969354608932

/-! ## A341333.P14009246320003789939

`eq[A008486(n), A008585(A344682(n))]`
-/

namespace A341333.P14009246320003789939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A344682 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341333.P14009246320003789939

/-!
# A341334: Concatenation of all 01-words, in the order induced by A016777; see Comments.

The programs for A341334, there is no canonical definition to state claims against.
-/

/-! ## A341334.P17344847341923503686

`and(A028400(n), A210243(A154370(n+1)))`
-/

namespace A341334.P17344847341923503686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028400 n) (A210243 (A154370 (n + 1)).toNat)

end

end A341334.P17344847341923503686

/-! ## A341334.P4282109303152173498

`and(A057427(n), A210243(A154370(n+1)))`
-/

namespace A341334.P4282109303152173498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A210243 (A154370 (n + 1)).toNat)

end

end A341334.P4282109303152173498

/-! ## A341334.P15873940714037308784

`and(A178334(n), A210243(A154370(n+1)))`
-/

namespace A341334.P15873940714037308784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178334 n) (A210243 (A154370 (n + 1)).toNat)

end

end A341334.P15873940714037308784

/-! ## A341334.P664680399467309179

`A267034(A051175(n+1)+A020914(n))`
-/

namespace A341334.P664680399467309179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A051175 (n + 1) + A020914 n).toNat

end

end A341334.P664680399467309179

/-!
# A341335: For any number n with binary expansion (b_1, ..., b_k), the binary expansion of a(n), say (c_1, ..., c_k) satisfies c_m = Sum_{d | m} b_d mod 2 for m = 1..k.

The programs for A341335, there is no canonical definition to state claims against.
-/

/-! ## A341335.P5155682034746643742

`A341336(A341336(A341336(n)))`
-/

namespace A341335.P5155682034746643742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341336 (A341336 (A341336 n).toNat).toNat

end

end A341335.P5155682034746643742

/-! ## A341335.P14945981777839683664

`A064707(A063946(n)%A029875(n))`
-/

namespace A341335.P14945981777839683664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (Int.tmod (A063946 n) (A029875 n)).toNat

end

end A341335.P14945981777839683664

/-! ## A341335.P17062804517135274497

`A180200(A006068(n)%A029875(n))`
-/

namespace A341335.P17062804517135274497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (Int.tmod (A006068 n) (A029875 n)).toNat

end

end A341335.P17062804517135274497

/-! ## A341335.P6928926809189548454

`A165199(A064707(n)%A029875(n))`
-/

namespace A341335.P6928926809189548454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (Int.tmod (A064707 n) (A029875 n)).toNat

end

end A341335.P6928926809189548454

/-! ## A341335.P5629644472561670652

`A006068(A233279(n)%A029875(n))`
-/

namespace A341335.P5629644472561670652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.tmod (A233279 n) (A029875 n)).toNat

end

end A341335.P5629644472561670652

/-!
# A341336: Inverse permutation to A341335.

The programs for A341336, there is no canonical definition to state claims against.
-/

/-! ## A341336.P5622349346544600800

`A341335(A341335(A341335(n)))`
-/

namespace A341336.P5622349346544600800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341335 (A341335 (A341335 n).toNat).toNat

end

end A341336.P5622349346544600800

/-! ## A341336.P18156191349420157733

`A063946(A064707(n)%A029875(n))`
-/

namespace A341336.P18156191349420157733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (Int.tmod (A064707 n) (A029875 n)).toNat

end

end A341336.P18156191349420157733

/-! ## A341336.P11276697220964377474

`A063946(A100281(n)%A029875(n))`
-/

namespace A341336.P11276697220964377474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (Int.tmod (A100281 n) (A029875 n)).toNat

end

end A341336.P11276697220964377474

/-! ## A341336.P6438066330695501024

`A064707(A165199(n)%A029875(n))`
-/

namespace A341336.P6438066330695501024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (Int.tmod (A165199 n) (A029875 n)).toNat

end

end A341336.P6438066330695501024

/-! ## A341336.P2069158209112089384

`xor(A007895(A000045(n+1)-1), A180200(n))`
-/

namespace A341336.P2069158209112089384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007895 (A000045 (n + 1) - 1).toNat) (A180200 n)

end

end A341336.P2069158209112089384

/-!
# A341337: Distinct values of A343511.

The programs for A341337, there is no canonical definition to state claims against.
-/

/-! ## A341337.P10702311179931854709

`A343511(A036035(n))`
-/

namespace A341337.P10702311179931854709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343511 (A036035 n).toNat

end

end A341337.P10702311179931854709

/-! ## A341337.P7801839312845035020

`A343511(A059901(n))`
-/

namespace A341337.P7801839312845035020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343511 (A059901 n).toNat

end

end A341337.P7801839312845035020

/-! ## A341337.P308048929234746352

`A343511(A063008(n))`
-/

namespace A341337.P308048929234746352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343511 (A063008 n).toNat

end

end A341337.P308048929234746352

/-! ## A341337.P2119983572653402529

`A343511(A087443(n))`
-/

namespace A341337.P2119983572653402529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343511 (A087443 n).toNat

end

end A341337.P2119983572653402529

/-! ## A341337.P18359362551586172265

`record[A343511(A057335(n))]`
-/

namespace A341337.P18359362551586172265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343511 (A057335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341337.P18359362551586172265

/-!
# A341341: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-1)^n * x^(n*(n+1)/2) * ((1+x)^n + A(x))^(n+1).

The programs for A341341, there is no canonical definition to state claims against.
-/

/-! ## A341341.P2762807041940452150

`∑[∑[A127763(A099780(n))]]`
-/

namespace A341341.P2762807041940452150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A099780 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341341.P2762807041940452150

/-! ## A341341.P16451186106970715921

`A046108(A289802(n))`
-/

namespace A341341.P16451186106970715921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A289802 n).toNat

end

end A341341.P16451186106970715921

/-!
# A341342: G.f. A(x) satisfies: A(x) = P(x)/Q(x) where P(x) = Sum_{n>=0} (n+1)*x^n/(1 - x*A(x)^n) and Q(x) = Sum_{n>=0} x^n/(1 - x*A(x)^n).

The programs for A341342, there is no canonical definition to state claims against.
-/

/-! ## A341342.P18116821691730190750

`A195177(2*A112808(n))`
-/

namespace A341342.P18116821691730190750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (2 * A112808 n).toNat

end

end A341342.P18116821691730190750

/-! ## A341342.P14028160792866085111

`A008615(A240610(n)+A202060(n))`
-/

namespace A341342.P14028160792866085111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A240610 n + A202060 n).toNat

end

end A341342.P14028160792866085111

/-! ## A341342.P6081475675544664758

`A195177(A112808(n)+A112808(n)-1)`
-/

namespace A341342.P6081475675544664758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A112808 n + (A112808 n - 1)).toNat

end

end A341342.P6081475675544664758

/-! ## A341342.P11120800178845625423

`A195177(A112808(n)-(1-A112808(n)))`
-/

namespace A341342.P11120800178845625423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A112808 n - (1 - A112808 n)).toNat

end

end A341342.P11120800178845625423

/-!
# A341343: Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = (zeta(s))^3 / (zeta(3*s))^2.

The programs for A341343, the canonical program `A341343.P11843753257085308100` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341343 has offset 1).

The definition of A341343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341343.P15249142460483126855

`∑{d}[n+1, A369306(#)]`
-/

namespace A341343.P15249142460483126855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369306 d

end

end A341343.P15249142460483126855

namespace A341343

/-- `∑{d}[n+1, A369306(#)]` -/
def P15249142460483126855.Spec : Prop :=
  ∀ n, P15249142460483126855.a n = A341343 (n + 1)

end A341343

/-! ## A341343.P237393976925107482

`∑{d}[A007948(n+1), A073184((n+1)/#)]`
-/

namespace A341343.P237393976925107482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341343.P237393976925107482

namespace A341343

/-- `∑{d}[A007948(n+1), A073184((n+1)/#)]` -/
def P237393976925107482.Spec : Prop :=
  ∀ n, P237393976925107482.a n = A341343 (n + 1)

end A341343

/-! ## A341343.P6930249088921061512

`∑{d}[n+1, A073184(#)*A212793((n+1)/#)]`
-/

namespace A341343.P6930249088921061512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341343.P6930249088921061512

namespace A341343

/-- `∑{d}[n+1, A073184(#)*A212793((n+1)/#)]` -/
def P6930249088921061512.Spec : Prop :=
  ∀ n, P6930249088921061512.a n = A341343 (n + 1)

end A341343

/-! ## A341343.P11843753257085308100

`∑{d}[n+1, A092520(#)*A307425((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341343

/-- `∑{d}[n+1, A092520(#)*A307425((n+1)/#)]` -/
def P11843753257085308100.Spec : Prop :=
  ∀ n, P11843753257085308100.a n = A341343 (n + 1)

theorem P11843753257085308100.correct : P11843753257085308100.Spec := by
  intro n
  simp only [A341343, Nat.add_sub_cancel]

end A341343

/-! ## A341343.P3832646496031458988

`∑{d}[A007948(n+1), A000005(A007948((n+1)/#))]`
-/

namespace A341343.P3832646496031458988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 (A007948 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A341343.P3832646496031458988

namespace A341343

/-- `∑{d}[A007948(n+1), A000005(A007948((n+1)/#))]` -/
def P3832646496031458988.Spec : Prop :=
  ∀ n, P3832646496031458988.a n = A341343 (n + 1)

end A341343

/-!
# A341344: a(n) = A100631(n, floor(n/2)).

The programs for A341344, there is no canonical definition to state claims against.
-/

/-! ## A341344.P13951181060492326657

`A016116(n)*A055587(A007590(n))`
-/

namespace A341344.P13951181060492326657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A055587 (A007590 n).toNat

end

end A341344.P13951181060492326657

/-! ## A341344.P17250047289512966795

`A100631(∑[or(1, n)]-1)`
-/

namespace A341344.P17250047289512966795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100631 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A341344.P17250047289512966795

/-! ## A341344.P6855903261334759537

`A100631(floor((n+1)²/2))`
-/

namespace A341344.P6855903261334759537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100631 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A341344.P6855903261334759537

/-!
# A341345: a(n) = A048673(n) mod 3.

The programs for A341345, the canonical program `A341345.P11676205327567064765` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341345 has offset 1).

The definition of A341345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341345.P11676205327567064765

`((A003961(n+1)+1)/2)%3`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341345

/-- `((A003961(n+1)+1)/2)%3` -/
def P11676205327567064765.Spec : Prop :=
  ∀ n, P11676205327567064765.a n = A341345 (n + 1)

theorem P11676205327567064765.correct : P11676205327567064765.Spec := by
  intro n
  simp only [A341345, Nat.add_sub_cancel]

end A341345

/-! ## A341345.P5564307787224115155

`A010872(A048673(n+1))`
-/

namespace A341345.P5564307787224115155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048673 (n + 1)).toNat

end

end A341345.P5564307787224115155

namespace A341345

/-- `A010872(A048673(n+1))` -/
def P5564307787224115155.Spec : Prop :=
  ∀ n, P5564307787224115155.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P7847653144087622809

`2-A003961(n+1)%3`
-/

namespace A341345.P7847653144087622809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A003961 (n + 1)) 3

end

end A341345.P7847653144087622809

namespace A341345

/-- `2-A003961(n+1)%3` -/
def P7847653144087622809.Spec : Prop :=
  ∀ n, P7847653144087622809.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P18065173121574588890

`2-(A253885(n)+1)%3`
-/

namespace A341345.P18065173121574588890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A253885 n + 1) 3

end

end A341345.P18065173121574588890

namespace A341345

/-- `2-(A253885(n)+1)%3` -/
def P18065173121574588890.Spec : Prop :=
  ∀ n, P18065173121574588890.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P4253525068189900907

`(A243501(n+1)/2)%3`
-/

namespace A341345.P4253525068189900907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)) 3

end

end A341345.P4253525068189900907

namespace A341345

/-- `(A243501(n+1)/2)%3` -/
def P4253525068189900907.Spec : Prop :=
  ∀ n, P4253525068189900907.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P17116899126835128768

`2-(A191002(n+1)/(n+1))%3`
-/

namespace A341345.P17116899126835128768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ))) 3

end

end A341345.P17116899126835128768

namespace A341345

/-- `2-(A191002(n+1)/(n+1))%3` -/
def P17116899126835128768.Spec : Prop :=
  ∀ n, P17116899126835128768.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P879655482477097526

`A048673(n+1)%A174971(n)`
-/

namespace A341345.P879655482477097526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 (n + 1)) (A174971 n)

end

end A341345.P879655482477097526

namespace A341345

/-- `A048673(n+1)%A174971(n)` -/
def P879655482477097526.Spec : Prop :=
  ∀ n, P879655482477097526.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P559190913355794807

`(A003961(n+1)*A016969(n)+2)%3`
-/

namespace A341345.P559190913355794807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) * A016969 n + 2) 3

end

end A341345.P559190913355794807

namespace A341345

/-- `(A003961(n+1)*A016969(n)+2)%3` -/
def P559190913355794807.Spec : Prop :=
  ∀ n, P559190913355794807.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P863593181069090716

`(A337336(n+1)%A045965(n+1))%3`
-/

namespace A341345.P863593181069090716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A337336 (n + 1)) (A045965 (n + 1))) 3

end

end A341345.P863593181069090716

namespace A341345

/-- `(A337336(n+1)%A045965(n+1))%3` -/
def P863593181069090716.Spec : Prop :=
  ∀ n, P863593181069090716.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P17581132743326571589

`A020639(A292248(n+1))%A141056(n+1)`
-/

namespace A341345.P17581132743326571589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A292248 (n + 1)).toNat) (A141056 (n + 1))

end

end A341345.P17581132743326571589

namespace A341345

/-- `A020639(A292248(n+1))%A141056(n+1)` -/
def P17581132743326571589.Spec : Prop :=
  ∀ n, P17581132743326571589.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P18434500114273705624

`A253885(3*n+2)%3`
-/

namespace A341345.P18434500114273705624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253885 (3 * n + 2)) 3

end

end A341345.P18434500114273705624

namespace A341345

/-- `A253885(3*n+2)%3` -/
def P18434500114273705624.Spec : Prop :=
  ∀ n, P18434500114273705624.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P14812264057544420863

`A249810(2*(n+1))%3`
-/

namespace A341345.P14812264057544420863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249810 (2 * (n + 1))) 3

end

end A341345.P14812264057544420863

namespace A341345

/-- `A249810(2*(n+1))%3` -/
def P14812264057544420863.Spec : Prop :=
  ∀ n, P14812264057544420863.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P16020413299285912332

`A283464(2*(n+1))%3`
-/

namespace A341345.P16020413299285912332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283464 (2 * (n + 1))) 3

end

end A341345.P16020413299285912332

namespace A341345

/-- `A283464(2*(n+1))%3` -/
def P16020413299285912332.Spec : Prop :=
  ∀ n, P16020413299285912332.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P15305128052376349906

`A010872((A003961(n+1)+1)/2)`
-/

namespace A341345.P15305128052376349906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A341345.P15305128052376349906

namespace A341345

/-- `A010872((A003961(n+1)+1)/2)` -/
def P15305128052376349906.Spec : Prop :=
  ∀ n, P15305128052376349906.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P14579385080573363327

`A176895(2*n)-A079978((A003961(n+1)+1)/2)`
-/

namespace A341345.P14579385080573363327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n) - A079978 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A341345.P14579385080573363327

namespace A341345

/-- `A176895(2*n)-A079978((A003961(n+1)+1)/2)` -/
def P14579385080573363327.Spec : Prop :=
  ∀ n, P14579385080573363327.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P9403025795021084989

`A100286(A253885(n))`
-/

namespace A341345.P9403025795021084989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A253885 n).toNat

end

end A341345.P9403025795021084989

namespace A341345

/-- `A100286(A253885(n))` -/
def P9403025795021084989.Spec : Prop :=
  ∀ n, P9403025795021084989.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P16980109673885651499

`A060572(A003961(n+1))`
-/

namespace A341345.P16980109673885651499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A003961 (n + 1)).toNat

end

end A341345.P16980109673885651499

namespace A341345

/-- `A060572(A003961(n+1))` -/
def P16980109673885651499.Spec : Prop :=
  ∀ n, P16980109673885651499.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P12798199411973966506

`A080425(A243501(n+1))`
-/

namespace A341345.P12798199411973966506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A243501 (n + 1)).toNat

end

end A341345.P12798199411973966506

namespace A341345

/-- `A080425(A243501(n+1))` -/
def P12798199411973966506.Spec : Prop :=
  ∀ n, P12798199411973966506.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P7587366153383596196

`1-A010892(A253885(n)+2)`
-/

namespace A341345.P7587366153383596196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010892 (A253885 n + 2).toNat

end

end A341345.P7587366153383596196

namespace A341345

/-- `1-A010892(A253885(n)+2)` -/
def P7587366153383596196.Spec : Prop :=
  ∀ n, P7587366153383596196.a n = A341345 (n + 1)

end A341345

/-! ## A341345.P8717218407463679990

`A270710(A297166(2*(n+1)))%3`
-/

namespace A341345.P8717218407463679990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270710 (A297166 (2 * (n + 1))).toNat) 3

end

end A341345.P8717218407463679990

namespace A341345

/-- `A270710(A297166(2*(n+1)))%3` -/
def P8717218407463679990.Spec : Prop :=
  ∀ n, P8717218407463679990.a n = A341345 (n + 1)

end A341345

/-!
# A341346: a(n) = A048673(2n-1) mod 3.

The programs for A341346, the canonical program `A341346.P13339656268664092611` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341346 has offset 1).

The definition of A341346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341346.P13339656268664092611

`A341345(2*n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341346

/-- `A341345(2*n+1)` -/
def P13339656268664092611.Spec : Prop :=
  ∀ n, P13339656268664092611.a n = A341346 (n + 1)

theorem P13339656268664092611.correct : P13339656268664092611.Spec := by
  intro n
  simp only [A341346, Nat.add_sub_cancel]

end A341346

/-! ## A341346.P5788273646476821717

`((A003961(n+1+n+1-1)+1)/2)%3`
-/

namespace A341346.P5788273646476821717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A003961 (n + 1 + (n + 1) - 1) + 1 : ℚ) / 2)) 3

end

end A341346.P5788273646476821717

namespace A341346

/-- `((A003961(n+1+n+1-1)+1)/2)%3` -/
def P5788273646476821717.Spec : Prop :=
  ∀ n, P5788273646476821717.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P2928036704910851545

`A010872(A254049(n+1))`
-/

namespace A341346.P2928036704910851545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A254049 (n + 1)).toNat

end

end A341346.P2928036704910851545

namespace A341346

/-- `A010872(A254049(n+1))` -/
def P2928036704910851545.Spec : Prop :=
  ∀ n, P2928036704910851545.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P4587740386482785702

`A010872(A048673(2*n+1))`
-/

namespace A341346.P4587740386482785702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048673 (2 * n + 1)).toNat

end

end A341346.P4587740386482785702

namespace A341346

/-- `A010872(A048673(2*n+1))` -/
def P4587740386482785702.Spec : Prop :=
  ∀ n, P4587740386482785702.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P4956734992629274601

`A249746(n+1)%2`
-/

namespace A341346.P4956734992629274601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249746 (n + 1)) 2

end

end A341346.P4956734992629274601

namespace A341346

/-- `A249746(n+1)%2` -/
def P4956734992629274601.Spec : Prop :=
  ∀ n, P4956734992629274601.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P10634907842763964798

`char[A341349(n+1)-1]`
-/

namespace A341346.P10634907842763964798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341349 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341346.P10634907842763964798

namespace A341346

/-- `char[A341349(n+1)-1]` -/
def P10634907842763964798.Spec : Prop :=
  ∀ n, (P10634907842763964798.a n : ℤ) = A341346 (n + 1)

end A341346

/-! ## A341346.P1769871771011998641

`sqrt(A341345(n+1+n))`
-/

namespace A341346.P1769871771011998641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A341345 (n + 1 + n) : ℝ)

end

end A341346.P1769871771011998641

namespace A341346

/-- `sqrt(A341345(n+1+n))` -/
def P1769871771011998641.Spec : Prop :=
  ∀ n, P1769871771011998641.a n = (A341346 (n + 1) : ℝ)

end A341346

/-! ## A341346.P11758475998795803840

`A341347(A064216(n+1))`
-/

namespace A341346.P11758475998795803840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341347 (A064216 (n + 1)).toNat

end

end A341346.P11758475998795803840

namespace A341346

/-- `A341347(A064216(n+1))` -/
def P11758475998795803840.Spec : Prop :=
  ∀ n, P11758475998795803840.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P15625753781421535570

`A341345(A005408(n))²²`
-/

namespace A341346.P15625753781421535570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341345 (A005408 n).toNat ^ 2) ^ 2

end

end A341346.P15625753781421535570

namespace A341346

/-- `A341345(A005408(n))²²` -/
def P15625753781421535570.Spec : Prop :=
  ∀ n, P15625753781421535570.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P10212746138433474701

`A254049(n+1)%A174971(n)`
-/

namespace A341346.P10212746138433474701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254049 (n + 1)) (A174971 n)

end

end A341346.P10212746138433474701

namespace A341346

/-- `A254049(n+1)%A174971(n)` -/
def P10212746138433474701.Spec : Prop :=
  ∀ n, P10212746138433474701.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P14059579686477288590

`and(A060576(n), A249746(n+1))`
-/

namespace A341346.P14059579686477288590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A249746 (n + 1))

end

end A341346.P14059579686477288590

namespace A341346

/-- `and(A060576(n), A249746(n+1))` -/
def P14059579686477288590.Spec : Prop :=
  ∀ n, P14059579686477288590.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P11770043308525909780

`and(A158388(n), A249746(n+1))`
-/

namespace A341346.P11770043308525909780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A249746 (n + 1))

end

end A341346.P11770043308525909780

namespace A341346

/-- `and(A158388(n), A249746(n+1))` -/
def P11770043308525909780.Spec : Prop :=
  ∀ n, P11770043308525909780.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P11789297618573146133

`and(A249746(n+1), A267870(n))`
-/

namespace A341346.P11789297618573146133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249746 (n + 1)) (A267870 n)

end

end A341346.P11789297618573146133

namespace A341346

/-- `and(A249746(n+1), A267870(n))` -/
def P11789297618573146133.Spec : Prop :=
  ∀ n, P11789297618573146133.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P10301757083747950082

`and(A249746(n+1), A267871(n))`
-/

namespace A341346.P10301757083747950082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249746 (n + 1)) (A267871 n)

end

end A341346.P10301757083747950082

namespace A341346

/-- `and(A249746(n+1), A267871(n))` -/
def P10301757083747950082.Spec : Prop :=
  ∀ n, P10301757083747950082.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P8033567959203517478

`and(1, A239609(n)*A249746(n+1))`
-/

namespace A341346.P8033567959203517478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A239609 n * A249746 (n + 1))

end

end A341346.P8033567959203517478

namespace A341346

/-- `and(1, A239609(n)*A249746(n+1))` -/
def P8033567959203517478.Spec : Prop :=
  ∀ n, P8033567959203517478.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P12463391873416758680

`and(1, A243134(n)*A249746(n+1))`
-/

namespace A341346.P12463391873416758680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A243134 n * A249746 (n + 1))

end

end A341346.P12463391873416758680

namespace A341346

/-- `and(1, A243134(n)*A249746(n+1))` -/
def P12463391873416758680.Spec : Prop :=
  ∀ n, P12463391873416758680.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P6520311638500251611

`A341345(eq[2, A341345(n+1)])²²`
-/

namespace A341346.P6520311638500251611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2) ^ 2

end

end A341346.P6520311638500251611

namespace A341346

/-- `A341345(eq[2, A341345(n+1)])²²` -/
def P6520311638500251611.Spec : Prop :=
  ∀ n, P6520311638500251611.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P7792360668548352826

`A353420(Δ[n²])%2`
-/

namespace A341346.P7792360668548352826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2

end

end A341346.P7792360668548352826

namespace A341346

/-- `A353420(Δ[n²])%2` -/
def P7792360668548352826.Spec : Prop :=
  ∀ n, P7792360668548352826.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P15431677298845752725

`A304759(2*n+1)%2`
-/

namespace A341346.P15431677298845752725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304759 (2 * n + 1)) 2

end

end A341346.P15431677298845752725

namespace A341346

/-- `A304759(2*n+1)%2` -/
def P15431677298845752725.Spec : Prop :=
  ∀ n, P15431677298845752725.a n = A341346 (n + 1)

end A341346

/-! ## A341346.P14781557430464850054

`A048673(Δ[n²])%3`
-/

namespace A341346.P14781557430464850054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 3

end

end A341346.P14781557430464850054

namespace A341346

/-- `A048673(Δ[n²])%3` -/
def P14781557430464850054.Spec : Prop :=
  ∀ n, P14781557430464850054.a n = A341346 (n + 1)

end A341346

/-!
# A341347: a(n) = (1+A003961(A003961(n)))/2 mod 3, where A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A341347, the canonical program `A341347.P17586485408911963690` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341347 has offset 1).

The definition of A341347 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A341346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341347.P17586485408911963690

`A341346(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341347

/-- `A341346(A048673(n+1))` -/
def P17586485408911963690.Spec : Prop :=
  ∀ n, P17586485408911963690.a n = A341347 (n + 1)

theorem P17586485408911963690.correct : P17586485408911963690.Spec := by
  intro n
  simp only [A341347, Nat.add_sub_cancel]

end A341347

/-! ## A341347.P9490636618144637636

`A341345(A003961(n+1))`
-/

namespace A341347.P9490636618144637636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341345 (A003961 (n + 1)).toNat

end

end A341347.P9490636618144637636

namespace A341347

/-- `A341345(A003961(n+1))` -/
def P9490636618144637636.Spec : Prop :=
  ∀ n, P9490636618144637636.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P5471908126693610694

`ceil(A045966(n+1)/3)%2`
-/

namespace A341347.P5471908126693610694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A045966 (n + 1) : ℚ) / 3⌉ 2

end

end A341347.P5471908126693610694

namespace A341347

/-- `ceil(A045966(n+1)/3)%2` -/
def P5471908126693610694.Spec : Prop :=
  ∀ n, P5471908126693610694.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P15229226026198940713

`A000007(A340683(n+1))`
-/

namespace A341347.P15229226026198940713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A340683 (n + 1)).toNat

end

end A341347.P15229226026198940713

namespace A341347

/-- `A000007(A340683(n+1))` -/
def P15229226026198940713.Spec : Prop :=
  ∀ n, P15229226026198940713.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P6632846384512207059

`A340683((n+1)²)^A340683(n+1)`
-/

namespace A341347.P6632846384512207059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340683 ((n + 1) ^ 2) : ℚ) ^ (A340683 (n + 1) : ℤ)

end

end A341347.P6632846384512207059

namespace A341347

/-- `A340683((n+1)²)^A340683(n+1)` -/
def P6632846384512207059.Spec : Prop :=
  ∀ n, P6632846384512207059.a n = (A341347 (n + 1) : ℚ)

end A341347

/-! ## A341347.P16352407674015155062

`A249824(n+1)%2`
-/

namespace A341347.P16352407674015155062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249824 (n + 1)) 2

end

end A341347.P16352407674015155062

namespace A341347

/-- `A249824(n+1)%2` -/
def P16352407674015155062.Spec : Prop :=
  ∀ n, P16352407674015155062.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P9163707231159124149

`and(A020737(n), A249824(n+1))`
-/

namespace A341347.P9163707231159124149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A249824 (n + 1))

end

end A341347.P9163707231159124149

namespace A341347

/-- `and(A020737(n), A249824(n+1))` -/
def P9163707231159124149.Spec : Prop :=
  ∀ n, P9163707231159124149.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P14647425061007035438

`and(A027608(n), A249824(n+1))`
-/

namespace A341347.P14647425061007035438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A249824 (n + 1))

end

end A341347.P14647425061007035438

namespace A341347

/-- `and(A027608(n), A249824(n+1))` -/
def P14647425061007035438.Spec : Prop :=
  ∀ n, P14647425061007035438.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P6757329810259330054

`and(A048474(n), A249824(n+1))`
-/

namespace A341347.P6757329810259330054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048474 n) (A249824 (n + 1))

end

end A341347.P6757329810259330054

namespace A341347

/-- `and(A048474(n), A249824(n+1))` -/
def P6757329810259330054.Spec : Prop :=
  ∀ n, P6757329810259330054.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P16475371862894705807

`and(A048478(n), A249824(n+1))`
-/

namespace A341347.P16475371862894705807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048478 n) (A249824 (n + 1))

end

end A341347.P16475371862894705807

namespace A341347

/-- `and(A048478(n), A249824(n+1))` -/
def P16475371862894705807.Spec : Prop :=
  ∀ n, P16475371862894705807.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P3164810196079870186

`and(A048479(n), A249824(n+1))`
-/

namespace A341347.P3164810196079870186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A249824 (n + 1))

end

end A341347.P3164810196079870186

namespace A341347

/-- `and(A048479(n), A249824(n+1))` -/
def P3164810196079870186.Spec : Prop :=
  ∀ n, P3164810196079870186.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P9242996277662098629

`and(A048578(n), A249824(n+1))`
-/

namespace A341347.P9242996277662098629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A249824 (n + 1))

end

end A341347.P9242996277662098629

namespace A341347

/-- `and(A048578(n), A249824(n+1))` -/
def P9242996277662098629.Spec : Prop :=
  ∀ n, P9242996277662098629.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P14523157067485683465

`and(A051900(n), A249824(n+1))`
-/

namespace A341347.P14523157067485683465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A249824 (n + 1))

end

end A341347.P14523157067485683465

namespace A341347

/-- `and(A051900(n), A249824(n+1))` -/
def P14523157067485683465.Spec : Prop :=
  ∀ n, P14523157067485683465.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P13589155824591651628

`and(A060576(n), A249824(n+1))`
-/

namespace A341347.P13589155824591651628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A249824 (n + 1))

end

end A341347.P13589155824591651628

namespace A341347

/-- `and(A060576(n), A249824(n+1))` -/
def P13589155824591651628.Spec : Prop :=
  ∀ n, P13589155824591651628.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P11069686589319355678

`and(A132750(n), A249824(n+1))`
-/

namespace A341347.P11069686589319355678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132750 n) (A249824 (n + 1))

end

end A341347.P11069686589319355678

namespace A341347

/-- `and(A132750(n), A249824(n+1))` -/
def P11069686589319355678.Spec : Prop :=
  ∀ n, P11069686589319355678.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P2157084329404840014

`and(A158388(n), A249824(n+1))`
-/

namespace A341347.P2157084329404840014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A249824 (n + 1))

end

end A341347.P2157084329404840014

namespace A341347

/-- `and(A158388(n), A249824(n+1))` -/
def P2157084329404840014.Spec : Prop :=
  ∀ n, P2157084329404840014.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P3789537090683946907

`and(A176410(n), A249824(n+1))`
-/

namespace A341347.P3789537090683946907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A249824 (n + 1))

end

end A341347.P3789537090683946907

namespace A341347

/-- `and(A176410(n), A249824(n+1))` -/
def P3789537090683946907.Spec : Prop :=
  ∀ n, P3789537090683946907.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P2987223744913908370

`and(A176794(n), A249824(n+1))`
-/

namespace A341347.P2987223744913908370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A249824 (n + 1))

end

end A341347.P2987223744913908370

namespace A341347

/-- `and(A176794(n), A249824(n+1))` -/
def P2987223744913908370.Spec : Prop :=
  ∀ n, P2987223744913908370.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P16845952474024007163

`and(A195744(n), A249824(n+1))`
-/

namespace A341347.P16845952474024007163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A249824 (n + 1))

end

end A341347.P16845952474024007163

namespace A341347

/-- `and(A195744(n), A249824(n+1))` -/
def P16845952474024007163.Spec : Prop :=
  ∀ n, P16845952474024007163.a n = A341347 (n + 1)

end A341347

/-! ## A341347.P13846264899419985745

`and(A196657(n), A249824(n+1))`
-/

namespace A341347.P13846264899419985745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A249824 (n + 1))

end

end A341347.P13846264899419985745

namespace A341347

/-- `and(A196657(n), A249824(n+1))` -/
def P13846264899419985745.Spec : Prop :=
  ∀ n, P13846264899419985745.a n = A341347 (n + 1)

end A341347

/-!
# A341349: Numbers k for which A254049(k) is not a multiple of 3.

The programs for A341349, the canonical program `A341349.P16384403756756534731` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341349 has offset 1).

The definition of A341349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341349.P16384403756756534731

`eq[1, A341346(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341349

/-- `eq[1, A341346(n+1)]+1` -/
def P16384403756756534731.Spec : Prop :=
  ∀ n, (P16384403756756534731.a n : ℤ) = A341349 (n + 1)

theorem P16384403756756534731.correct : P16384403756756534731.Spec := by
  intro n
  simp only [A341349, Nat.add_sub_cancel]

end A341349

/-! ## A341349.P8985766832358990623

`eq[1, A341345(2*n+1)]+1`
-/

namespace A341349.P8985766832358990623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341345 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341349.P8985766832358990623

namespace A341349

/-- `eq[1, A341345(2*n+1)]+1` -/
def P8985766832358990623.Spec : Prop :=
  ∀ n, (P8985766832358990623.a n : ℤ) = A341349 (n + 1)

end A341349

/-! ## A341349.P16452740356741349860

`record[A000027(n+1)*A341346(n+1)]`
-/

namespace A341349.P16452740356741349860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A341346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341349.P16452740356741349860

namespace A341349

/-- `record[A000027(n+1)*A341346(n+1)]` -/
def P16452740356741349860.Spec : Prop :=
  ∀ n, P16452740356741349860.a n = A341349 (n + 1)

end A341349

/-! ## A341349.P11784482093917411409

`filter[A323161(2*n+1), A341346(#)]`
-/

namespace A341349.P11784482093917411409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341346 (f1 j).toNat = 1) n)

end

end A341349.P11784482093917411409

namespace A341349

/-- `filter[A323161(2*n+1), A341346(#)]` -/
def P11784482093917411409.Spec : Prop :=
  ∀ n, P11784482093917411409.a n = A341349 (n + 1)

end A341349

/-! ## A341349.P975932103092606228

`filter[n+1, A341346(#)]`
-/

namespace A341349.P975932103092606228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341346 (f1 j) = 1) n)

end

end A341349.P975932103092606228

namespace A341349

/-- `filter[n+1, A341346(#)]` -/
def P975932103092606228.Spec : Prop :=
  ∀ n, (P975932103092606228.a n : ℤ) = A341349 (n + 1)

end A341349

/-! ## A341349.P15047406505459056099

`eq[1, A249735(n+1)%3]+1`
-/

namespace A341349.P15047406505459056099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249735 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341349.P15047406505459056099

namespace A341349

/-- `eq[1, A249735(n+1)%3]+1` -/
def P15047406505459056099.Spec : Prop :=
  ∀ n, (P15047406505459056099.a n : ℤ) = A341349 (n + 1)

end A341349

/-! ## A341349.P11316190256094534106

`record[A028310(n+1)*A341346(n+1)]`
-/

namespace A341349.P11316190256094534106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A341346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341349.P11316190256094534106

namespace A341349

/-- `record[A028310(n+1)*A341346(n+1)]` -/
def P11316190256094534106.Spec : Prop :=
  ∀ n, P11316190256094534106.a n = A341349 (n + 1)

end A341349

/-! ## A341349.P7217636832917309100

`eq[A292251(2*n+1), 0]+1`
-/

namespace A341349.P7217636832917309100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A341349.P7217636832917309100

namespace A341349

/-- `eq[A292251(2*n+1), 0]+1` -/
def P7217636832917309100.Spec : Prop :=
  ∀ n, (P7217636832917309100.a n : ℤ) = A341349 (n + 1)

end A341349

/-! ## A341349.P12090670947412353271

`eq[2, A308439(A249746(n+1)+1)]+1`
-/

namespace A341349.P12090670947412353271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308439 (A249746 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341349.P12090670947412353271

namespace A341349

/-- `eq[2, A308439(A249746(n+1)+1)]+1` -/
def P12090670947412353271.Spec : Prop :=
  ∀ n, (P12090670947412353271.a n : ℤ) = A341349 (n + 1)

end A341349

/-!
# A341350: Numbers k for which A254049(k) [= A048673(2k-1)] is a multiple of 3.

The programs for A341350, the canonical program `A341350.P13400712899668666593` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341350 has offset 1).

The definition of A341350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341350.P13400712899668666593

`eq[0, A341346(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341350

/-- `eq[0, A341346(n+1)]+1` -/
def P13400712899668666593.Spec : Prop :=
  ∀ n, (P13400712899668666593.a n : ℤ) = A341350 (n + 1)

theorem P13400712899668666593.correct : P13400712899668666593.Spec := by
  intro n
  simp only [A341350, Nat.add_sub_cancel]

end A341350

/-! ## A341350.P1775324326988033610

`eq[0, A341345(2*n+1)]+1`
-/

namespace A341350.P1775324326988033610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341345 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341350.P1775324326988033610

namespace A341350

/-- `eq[0, A341345(2*n+1)]+1` -/
def P1775324326988033610.Spec : Prop :=
  ∀ n, (P1775324326988033610.a n : ℤ) = A341350 (n + 1)

end A341350

/-! ## A341350.P1058974194049562975

`comp[A000027(n+1)*A341346(n+1)]`
-/

namespace A341350.P1058974194049562975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A341346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A341350.P1058974194049562975

namespace A341350

/-- `comp[A000027(n+1)*A341346(n+1)]` -/
def P1058974194049562975.Spec : Prop :=
  ∀ n, (P1058974194049562975.a n : ℤ) = A341350 (n + 1)

end A341350

/-! ## A341350.P16150727715631812637

`eq[2, A249735(n+1)%3]+1`
-/

namespace A341350.P16150727715631812637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249735 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341350.P16150727715631812637

namespace A341350

/-- `eq[2, A249735(n+1)%3]+1` -/
def P16150727715631812637.Spec : Prop :=
  ∀ n, (P16150727715631812637.a n : ℤ) = A341350 (n + 1)

end A341350

/-! ## A341350.P14710806843748427048

`lt[(A249746(n+1)%2)², 1]+1`
-/

namespace A341350.P14710806843748427048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249746 (n + 1)) 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A341350.P14710806843748427048

namespace A341350

/-- `lt[(A249746(n+1)%2)², 1]+1` -/
def P14710806843748427048.Spec : Prop :=
  ∀ n, (P14710806843748427048.a n : ℤ) = A341350 (n + 1)

end A341350

/-! ## A341350.P15825510551240942418

`lt[A341346(A004277(n)-n), 1]`
-/

namespace A341350.P15825510551240942418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A341350.P15825510551240942418

namespace A341350

/-- `lt[A341346(A004277(n)-n), 1]` -/
def P15825510551240942418.Spec : Prop :=
  ∀ n, (P15825510551240942418.a n : ℤ) = A341350 (n + 1)

end A341350

/-! ## A341350.P6360901386304472300

`A008619(eq[3, gcd(3, A048673(n+1))])`
-/

namespace A341350.P6360901386304472300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A048673 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341350.P6360901386304472300

namespace A341350

/-- `A008619(eq[3, gcd(3, A048673(n+1))])` -/
def P6360901386304472300.Spec : Prop :=
  ∀ n, P6360901386304472300.a n = A341350 (n + 1)

end A341350

/-! ## A341350.P14476709859856810991

`eq[2, A308439(A249746(n+1))]+1`
-/

namespace A341350.P14476709859856810991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308439 (A249746 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341350.P14476709859856810991

namespace A341350

/-- `eq[2, A308439(A249746(n+1))]+1` -/
def P14476709859856810991.Spec : Prop :=
  ∀ n, (P14476709859856810991.a n : ℤ) = A341350 (n + 1)

end A341350

/-!
# A341351: a(n) = A048673(A181815(n)).

The programs for A341351, there is no canonical definition to state claims against.
-/

/-! ## A341351.P41584164440112886

`A048673(A181815(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341351.P41584164440112886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A181815 (n + 1)).toNat

end

end A341351.P41584164440112886

/-! ## A341351.P8531465331181134681

`A243506(A181820(n+1))`
-/

namespace A341351.P8531465331181134681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243506 (A181820 (n + 1)).toNat

end

end A341351.P8531465331181134681

/-! ## A341351.P16162698540732670183

`ceil(A181815(A330683(n+1))/2)`
-/

namespace A341351.P16162698540732670183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181815 (A330683 (n + 1)).toNat : ℚ) / 2⌉

end

end A341351.P16162698540732670183

/-! ## A341351.P13998457749837619705

`A245612(A329905(n+1))`
-/

namespace A341351.P13998457749837619705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245612 (A329905 (n + 1)).toNat

end

end A341351.P13998457749837619705

/-! ## A341351.P9703814000299820003

`A243501(A181815(n+1))/A000005(A030996(n+1))`
-/

namespace A341351.P9703814000299820003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (A181815 (n + 1)).toNat : ℚ) / (A000005 (A030996 (n + 1)).toNat : ℚ)

end

end A341351.P9703814000299820003

/-! ## A341351.P889537418008374719

`A249810(2*A181815(n+1))`
-/

namespace A341351.P889537418008374719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * A181815 (n + 1)).toNat

end

end A341351.P889537418008374719

/-!
# A341352: Inverse permutation to A341351.

The programs for A341352, there is no canonical definition to state claims against.
-/

/-! ## A341352.P9359898845774314454

`A329901(A064216(n+1))`
-/

namespace A341352.P9359898845774314454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A064216 (n + 1)).toNat

end

end A341352.P9359898845774314454

/-! ## A341352.P12127223490044849769

`A329901(A064989(Δ[n²]))`
-/

namespace A341352.P12127223490044849769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A341352.P12127223490044849769

/-! ## A341352.P10207678205701424211

`A329901(A252463(Δ[n²]))`
-/

namespace A341352.P10207678205701424211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A341352.P10207678205701424211

/-! ## A341352.P13736403620142021360

`A329901(A290099(Δ[n²]))`
-/

namespace A341352.P13736403620142021360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A290099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A341352.P13736403620142021360

/-! ## A341352.P16925704965169269685

`A329901(A341515(Δ[n²]))`
-/

namespace A341352.P16925704965169269685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A341515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A341352.P16925704965169269685

/-!
# A341353: Greatest k such that 3^k divides A156552(n); the 3-adic valuation of A156552(n).

The programs for A341353, the canonical program `A341353.P13560315536801065513` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341353 has offset 2).

The definition of A341353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341353.P13560315536801065513

`A007949(A156552(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341353

/-- `A007949(A156552(n+2))` -/
def P13560315536801065513.Spec : Prop :=
  ∀ n, P13560315536801065513.a n = A341353 (n + 2)

theorem P13560315536801065513.correct : P13560315536801065513.Spec := by
  intro n
  simp only [A341353, Nat.add_sub_cancel]

end A341353

/-! ## A341353.P14594675304160156596

`A341354(A246277(n+2))`
-/

namespace A341353.P14594675304160156596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341354 (A246277 (n + 2)).toNat

end

end A341353.P14594675304160156596

namespace A341353

/-- `A341354(A246277(n+2))` -/
def P14594675304160156596.Spec : Prop :=
  ∀ n, P14594675304160156596.a n = A341353 (n + 2)

end A341353

/-! ## A341353.P15291530501173619425

`val(A322993(n+2), 3)`
-/

namespace A341353.P15291530501173619425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322993 (n + 2)).toNat 3

end

end A341353.P15291530501173619425

namespace A341353

/-- `val(A322993(n+2), 3)` -/
def P15291530501173619425.Spec : Prop :=
  ∀ n, (P15291530501173619425.a n : ℤ) = A341353 (n + 2)

end A341353

/-! ## A341353.P11170075529852735552

`val(A005941(n+2)-1, 3)`
-/

namespace A341353.P11170075529852735552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005941 (n + 2) - 1).toNat 3

end

end A341353.P11170075529852735552

namespace A341353

/-- `val(A005941(n+2)-1, 3)` -/
def P11170075529852735552.Spec : Prop :=
  ∀ n, (P11170075529852735552.a n : ℤ) = A341353 (n + 2)

end A341353

/-! ## A341353.P298305558124758167

`val(∑[2*Δ[A005941(n+1)]], 3)`
-/

namespace A341353.P298305558124758167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A341353.P298305558124758167

namespace A341353

/-- `val(∑[2*Δ[A005941(n+1)]], 3)` -/
def P298305558124758167.Spec : Prop :=
  ∀ n, (P298305558124758167.a n : ℤ) = A341353 (n + 2)

end A341353

/-! ## A341353.P9584289514255507526

`val(A252754(A250245(n+2)), 3)`
-/

namespace A341353.P9584289514255507526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A252754 (A250245 (n + 2)).toNat).toNat 3

end

end A341353.P9584289514255507526

namespace A341353

/-- `val(A252754(A250245(n+2)), 3)` -/
def P9584289514255507526.Spec : Prop :=
  ∀ n, (P9584289514255507526.a n : ℤ) = A341353 (n + 2)

end A341353

/-! ## A341353.P9617404736413650435

`val(A269388(A302025(n+2)), 3)`
-/

namespace A341353.P9617404736413650435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A269388 (A302025 (n + 2)).toNat).toNat 3

end

end A341353.P9617404736413650435

namespace A341353

/-- `val(A269388(A302025(n+2)), 3)` -/
def P9617404736413650435.Spec : Prop :=
  ∀ n, (P9617404736413650435.a n : ℤ) = A341353 (n + 2)

end A341353

/-! ## A341353.P8262616029318620602

`A007949(A322993(n+2))`
-/

namespace A341353.P8262616029318620602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A322993 (n + 2)).toNat

end

end A341353.P8262616029318620602

namespace A341353

/-- `A007949(A322993(n+2))` -/
def P8262616029318620602.Spec : Prop :=
  ∀ n, P8262616029318620602.a n = A341353 (n + 2)

end A341353

/-! ## A341353.P2611621784379206103

`A156552(A001511(A064989(A000265(A246677(n+1)))))`
-/

namespace A341353.P2611621784379206103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A001511 (A064989 (A000265 (A246677 (n + 1)).toNat).toNat).toNat).toNat

end

end A341353.P2611621784379206103

namespace A341353

/-- `A156552(A001511(A064989(A000265(A246677(n+1)))))` -/
def P2611621784379206103.Spec : Prop :=
  ∀ n, P2611621784379206103.a n = A341353 (n + 2)

end A341353

/-!
# A341354: Greatest k such that 3^k divides A156552(2*n); number of trailing 1-digits in the ternary expansion of A156552(n).

The programs for A341354, the canonical program `A341354.P10498031235136680432` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341354 has offset 1).

The definition of A341354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341354.P10498031235136680432

`A341353(2*(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341354

/-- `A341353(2*(n+1))` -/
def P10498031235136680432.Spec : Prop :=
  ∀ n, P10498031235136680432.a n = A341354 (n + 1)

theorem P10498031235136680432.correct : P10498031235136680432.Spec := by
  intro n
  simp only [A341354, Nat.add_sub_cancel]

end A341354

/-! ## A341354.P9982156780215706264

`A007949(A156552(2*(n+1)))`
-/

namespace A341354.P9982156780215706264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A156552 (2 * (n + 1))).toNat

end

end A341354.P9982156780215706264

namespace A341354

/-- `A007949(A156552(2*(n+1)))` -/
def P9982156780215706264.Spec : Prop :=
  ∀ n, P9982156780215706264.a n = A341354 (n + 1)

end A341354

/-! ## A341354.P13394136940944044042

`A341353(n+2+n)%46`
-/

namespace A341354.P13394136940944044042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341353 (n + 2 + n)) 46

end

end A341354.P13394136940944044042

namespace A341354

/-- `A341353(n+2+n)%46` -/
def P13394136940944044042.Spec : Prop :=
  ∀ n, P13394136940944044042.a n = A341354 (n + 1)

end A341354

/-! ## A341354.P18083095570082808460

`and(A008683(A008578(n+2)), A341353(n+2+n))`
-/

namespace A341354.P18083095570082808460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A008578 (n + 2)).toNat) (A341353 (n + 2 + n))

end

end A341354.P18083095570082808460

namespace A341354

/-- `and(A008683(A008578(n+2)), A341353(n+2+n))` -/
def P18083095570082808460.Spec : Prop :=
  ∀ n, P18083095570082808460.a n = A341354 (n + 1)

end A341354

/-! ## A341354.P16608753643589441614

`val(A322993(2*(n+1)), 3)`
-/

namespace A341354.P16608753643589441614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322993 (2 * (n + 1))).toNat 3

end

end A341354.P16608753643589441614

namespace A341354

/-- `val(A322993(2*(n+1)), 3)` -/
def P16608753643589441614.Spec : Prop :=
  ∀ n, (P16608753643589441614.a n : ℤ) = A341354 (n + 1)

end A341354

/-! ## A341354.P16497362452225271603

`val(A156552(A108228(n+1)+A048673(n+1))+1, 3)`
-/

namespace A341354.P16497362452225271603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A156552 (A108228 (n + 1) + A048673 (n + 1)).toNat + 1).toNat 3

end

end A341354.P16497362452225271603

namespace A341354

/-- `val(A156552(A108228(n+1)+A048673(n+1))+1, 3)` -/
def P16497362452225271603.Spec : Prop :=
  ∀ n, (P16497362452225271603.a n : ℤ) = A341354 (n + 1)

end A341354

/-! ## A341354.P4662607610829777248

`A341353(n+2+n)/A019428(A001013(n+1))`
-/

namespace A341354.P4662607610829777248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341353 (n + 2 + n) : ℚ) / (A019428 (A001013 (n + 1)).toNat : ℚ)

end

end A341354.P4662607610829777248

namespace A341354

/-- `A341353(n+2+n)/A019428(A001013(n+1))` -/
def P4662607610829777248.Spec : Prop :=
  ∀ n, P4662607610829777248.a n = (A341354 (n + 1) : ℚ)

end A341354

/-! ## A341354.P41356708670096229

`val(A016825(A156552(n+1)), 3)`
-/

namespace A341354.P41356708670096229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016825 (A156552 (n + 1)).toNat).toNat 3

end

end A341354.P41356708670096229

namespace A341354

/-- `val(A016825(A156552(n+1)), 3)` -/
def P41356708670096229.Spec : Prop :=
  ∀ n, (P41356708670096229.a n : ℤ) = A341354 (n + 1)

end A341354

/-!
# A341357: Primes p such that q*r == p (mod q+r) where q and r are the next primes after p.

The programs for A341357, the canonical program `A341357.P1519009481148112330` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341357 has offset 1).

The definition of A341357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341357.P13004370051969300445

`p?[gcd(A001747(n+1), A212769(n+1))]`
-/

namespace A341357.P13004370051969300445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001747 (n + 1)) (A212769 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A341357.P13004370051969300445

namespace A341357

/-- `p?[gcd(A001747(n+1), A212769(n+1))]` -/
def P13004370051969300445.Spec : Prop :=
  ∀ n, (P13004370051969300445.a n : ℤ) = A341357 (n + 1)

end A341357

/-! ## A341357.P1519009481148112330

`p?[gcd(A006094(n+1), A212769(n+2))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A341357

/-- `p?[gcd(A006094(n+1), A212769(n+2))]` -/
def P1519009481148112330.Spec : Prop :=
  ∀ n, (P1519009481148112330.a n : ℤ) = A341357 (n + 1)

theorem P1519009481148112330.correct : P1519009481148112330.Spec := by
  intro n
  simp only [A341357, Nat.add_sub_cancel]

end A341357

/-! ## A341357.P1817524280441115191

`record[gcd(A006094(n+3), A212769(n+4))]`
-/

namespace A341357.P1817524280441115191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006094 (n + 3)) (A212769 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341357.P1817524280441115191

namespace A341357

/-- `record[gcd(A006094(n+3), A212769(n+4))]` -/
def P1817524280441115191.Spec : Prop :=
  ∀ n, (P1817524280441115191.a n : ℤ) = A341357 (n + 1)

end A341357

/-! ## A341357.P9818821905666773636

`A000040(eq[A182986(n+1), A212769(n+1)])`
-/

namespace A341357.P9818821905666773636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341357.P9818821905666773636

namespace A341357

/-- `A000040(eq[A182986(n+1), A212769(n+1)])` -/
def P9818821905666773636.Spec : Prop :=
  ∀ n, P9818821905666773636.a n = A341357 (n + 1)

end A341357

/-! ## A341357.P7026785515825582967

`A182986(eq[A182986(n+1), A212769(n+1)]+1)`
-/

namespace A341357.P7026785515825582967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A341357.P7026785515825582967

namespace A341357

/-- `A182986(eq[A182986(n+1), A212769(n+1)]+1)` -/
def P7026785515825582967.Spec : Prop :=
  ∀ n, P7026785515825582967.a n = A341357 (n + 1)

end A341357

/-! ## A341357.P4290427066246573241

`A212769(eq[A000040(n+1), A212769(n+2)]+2)`
-/

namespace A341357.P4290427066246573241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212769 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212769 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A341357.P4290427066246573241

namespace A341357

/-- `A212769(eq[A000040(n+1), A212769(n+2)]+2)` -/
def P4290427066246573241.Spec : Prop :=
  ∀ n, P4290427066246573241.a n = A341357 (n + 1)

end A341357

/-!
# A341359: Square array T(m,n) read by antidiagonals, satisfying shifted Catalan recurrences: T(m,0) = 1 and T(m,n) = Sum_{k=0..n-1} T(m,k) * T(m,(n-1-k+m) mod n) for all n > 0.

The programs for A341359, there is no canonical definition to state claims against.
-/

/-! ## A341359.P6713941691572451767

`A212619(A125311(n+2))+A125311(n)`
-/

namespace A341359.P6713941691572451767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A125311 (n + 2)).toNat + A125311 n

end

end A341359.P6713941691572451767

/-! ## A341359.P8159842154853843440

`A185284(A096940(n))+A125311(n)`
-/

namespace A341359.P8159842154853843440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A096940 n).toNat + A125311 n

end

end A341359.P8159842154853843440

/-! ## A341359.P1607520179167409496

`A125311(n)+A124762(A187783(n))`
-/

namespace A341359.P1607520179167409496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 n + A124762 (A187783 n).toNat

end

end A341359.P1607520179167409496

/-! ## A341359.P5506874105028491061

`A285007(A125311(A074909(n)))+A125311(n)`
-/

namespace A341359.P5506874105028491061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A125311 (A074909 n).toNat).toNat + A125311 n

end

end A341359.P5506874105028491061

/-! ## A341359.P1884338175515425940

`A125311(n)+A010894(∑{d}[n+1, #])`
-/

namespace A341359.P1884338175515425940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 n + A010894 (∑ d ∈ Nat.divisors (f1 n), d + 21)

end

end A341359.P1884338175515425940

/-!
# A341360: Diagonal elements of the array in A341359.

The programs for A341360, there is no canonical definition to state claims against.
-/

/-! ## A341360.P12649893790086338726

`A071137(xor(3, (n+1)!))`
-/

namespace A341360.P12649893790086338726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (Nat.xor 3 (Nat.factorial (n + 1)))

end

end A341360.P12649893790086338726

/-! ## A341360.P1304465043173943734

`A280716(2*(n²+3)+n-1)`
-/

namespace A341360.P1304465043173943734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280716 ((2 * (n ^ 2 + 3) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A341360.P1304465043173943734

/-! ## A341360.P5740221688446398077

`A026834(A150165(n))`
-/

namespace A341360.P5740221688446398077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150165 n).toNat

end

end A341360.P5740221688446398077

/-!
# A341361: a(n) is the smallest abundant number of the form 2^e * prime(n).

The programs for A341361, the canonical program `A341361.P14042391054428653239` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341361 has offset 2).

The definition of A341361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341361.P14042391054428653239

`p?[2*n+1]*A053644(p?[2*n+1]+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341361

/-- `p?[2*n+1]*A053644(p?[2*n+1]+1)` -/
def P14042391054428653239.Spec : Prop :=
  ∀ n, P14042391054428653239.a n = A341361 (n + 2)

theorem P14042391054428653239.correct : P14042391054428653239.Spec := by
  intro n
  simp only [A341361, Nat.add_sub_cancel]

end A341361

/-! ## A341361.P2053677955788921625

`A053644(A175216(n+2))*A065091(n+1)`
-/

namespace A341361.P2053677955788921625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A175216 (n + 2)).toNat * A065091 (n + 1)

end

end A341361.P2053677955788921625

namespace A341361

/-- `A053644(A175216(n+2))*A065091(n+1)` -/
def P2053677955788921625.Spec : Prop :=
  ∀ n, P2053677955788921625.a n = A341361 (n + 2)

end A341361

/-! ## A341361.P13838825873068825535

`∩[A050622(n+1), A091191(n+1)]`
-/

namespace A341361.P13838825873068825535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341361.P13838825873068825535

namespace A341361

/-- `∩[A050622(n+1), A091191(n+1)]` -/
def P13838825873068825535.Spec : Prop :=
  ∀ n, (P13838825873068825535.a n : ℤ) = A341361 (n + 2)

end A341361

/-! ## A341361.P2424537872354217744

`∩[A082662(n+1), A091191(n+1)]`
-/

namespace A341361.P2424537872354217744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341361.P2424537872354217744

namespace A341361

/-- `∩[A082662(n+1), A091191(n+1)]` -/
def P2424537872354217744.Spec : Prop :=
  ∀ n, (P2424537872354217744.a n : ℤ) = A341361 (n + 2)

end A341361

/-! ## A341361.P4638783113644477993

`∩[2*A100368(n+1), A091191(n+1)]`
-/

namespace A341361.P4638783113644477993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341361.P4638783113644477993

namespace A341361

/-- `∩[2*A100368(n+1), A091191(n+1)]` -/
def P4638783113644477993.Spec : Prop :=
  ∀ n, (P4638783113644477993.a n : ℤ) = A341361 (n + 2)

end A341361

/-! ## A341361.P5696479936186924627

`∩[A091191(n+1), A100368(n+1)]`
-/

namespace A341361.P5696479936186924627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341361.P5696479936186924627

namespace A341361

/-- `∩[A091191(n+1), A100368(n+1)]` -/
def P5696479936186924627.Spec : Prop :=
  ∀ n, (P5696479936186924627.a n : ℤ) = A341361 (n + 2)

end A341361

/-! ## A341361.P13173382220424448504

`∩[2*A038550(n+1), A091191(n+1)]`
-/

namespace A341361.P13173382220424448504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341361.P13173382220424448504

namespace A341361

/-- `∩[2*A038550(n+1), A091191(n+1)]` -/
def P13173382220424448504.Spec : Prop :=
  ∀ n, (P13173382220424448504.a n : ℤ) = A341361 (n + 2)

end A341361

/-! ## A341361.P16121664130544424356

`∩[2*A093641(n+1), A091191(n+1)]`
-/

namespace A341361.P16121664130544424356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341361.P16121664130544424356

namespace A341361

/-- `∩[2*A093641(n+1), A091191(n+1)]` -/
def P16121664130544424356.Spec : Prop :=
  ∀ n, (P16121664130544424356.a n : ℤ) = A341361 (n + 2)

end A341361

/-!
# A341364: Expansion of (1 / theta_4(x) - 1)^3 / 8.

The programs for A341364, there is no canonical definition to state claims against.
-/

/-! ## A341364.P9666194473568059813

`∑[∑[A055086(A057970(n+1))]]`
-/

namespace A341364.P9666194473568059813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A057970 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341364.P9666194473568059813

/-!
# A341365: Expansion of (1 / theta_4(x) - 1)^4 / 16.

The programs for A341365, there is no canonical definition to state claims against.
-/

/-! ## A341365.P3638107888378220179

`A072750(A006741(n+1))`
-/

namespace A341365.P3638107888378220179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072750 (A006741 (n + 1)).toNat

end

end A341365.P3638107888378220179

/-!
# A341366: Expansion of (1 / theta_4(x) - 1)^5 / 32.

The programs for A341366, there is no canonical definition to state claims against.
-/

/-! ## A341366.P1517437224457630952

`A054041(A053739(n))-(1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A341366.P1517437224457630952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (A053739 n).toNat - (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))

end

end A341366.P1517437224457630952

/-!
# A341367: Expansion of (1 / theta_4(x) - 1)^6 / 64.

The programs for A341367, there is no canonical definition to state claims against.
-/

/-! ## A341367.P9068902600808657797

`∑[A059169(A293629(2*n+1)+1)]`
-/

namespace A341367.P9068902600808657797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A293629 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341367.P9068902600808657797

/-!
# A341372: Regular triangle read by rows, T(n, k) is the number of cycles of length 2*k-1 of the permutation gamma on Dn, the set of Dyck words of length n, for n>=2 and 1<=k<=n-1.

The programs for A341372, there is no canonical definition to state claims against.
-/

/-! ## A341372.P249576249059760948

`A238130(n)+A141020(A366503(n+1))`
-/

namespace A341372.P249576249059760948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 n + A141020 (A366503 (n + 1)).toNat

end

end A341372.P249576249059760948

/-! ## A341372.P15758205912446533971

`A043535(A235660(n+1)^A182172(n))`
-/

namespace A341372.P15758205912446533971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (SequenceMachineLib.roundAway ((A235660 (n + 1) : ℚ) ^ (A182172 n : ℤ))).toNat

end

end A341372.P15758205912446533971

/-! ## A341372.P10273300277717320532

`A060130(A034084(n+2)^A182172(n))`
-/

namespace A341372.P10273300277717320532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway ((A034084 (n + 2) : ℚ) ^ (A182172 n : ℤ))).toNat

end

end A341372.P10273300277717320532

/-! ## A341372.P11215631600394039912

`A043535(C(A235660(n+1), A182172(n)))`
-/

namespace A341372.P11215631600394039912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (Nat.choose (A235660 (n + 1)).toNat (A182172 n).toNat)

end

end A341372.P11215631600394039912

/-! ## A341372.P547869549118039502

`A060130(C(A034084(n+2), A182172(n)))`
-/

namespace A341372.P547869549118039502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (Nat.choose (A034084 (n + 2)).toNat (A182172 n).toNat)

end

end A341372.P547869549118039502

/-!
# A341373: G.f. A(x) = Sum_{n>=0} a(n)*x^n satisfies: [Sum_{n>=0} x^n/(1 - x^(n+1))]^2 = Sum_{n>=0} a(n)*x^n/(1 - x^(n+1))^2.

The programs for A341373, there is no canonical definition to state claims against.
-/

/-! ## A341373.P17515467720873132560

`∑{d}[n+1, A055507(#)*A055615((n+1)/#)]`
-/

namespace A341373.P17515467720873132560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055507 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341373.P17515467720873132560

/-!
# A341375: G.f. A(x) = Sum_{n>=0} a(n)*x^n satisfies: [Sum_{n>=0} x^n/(1 - x^(n+1))]^4 = Sum_{n>=0} a(n)*x^n/(1 - x^(n+1))^4.

The programs for A341375, there is no canonical definition to state claims against.
-/

/-! ## A341375.P2070679495228379496

`A317837(A058390(n)+1)`
-/

namespace A341375.P2070679495228379496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (A058390 n + 1).toNat

end

end A341375.P2070679495228379496

/-!
# A341376: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(5*n)/(1 - x*A(x)^n) = Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(5*n+4)).

The programs for A341376, there is no canonical definition to state claims against.
-/

/-! ## A341376.P987748939543797829

`A340940(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A341376.P987748939543797829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341376.P987748939543797829

/-! ## A341376.P8781090341020128463

`A340940(A055999(n+3))`
-/

namespace A341376.P8781090341020128463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A055999 (n + 3)).toNat

end

end A341376.P8781090341020128463

/-!
# A341377: E.g.f. A(x) satisfies: A(x) = P(x)/Q(x) where P(x) = Sum_{n>=0} (2^n*x^n/n!) * exp(x*A(x)^n) and Q(x) = Sum_{n>=0} (x^n/n!) * exp(x*A(x)^n).

The programs for A341377, there is no canonical definition to state claims against.
-/

/-! ## A341377.P13859594268308464106

`or(1, A370592(A003945(n)))`
-/

namespace A341377.P13859594268308464106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A370592 (A003945 n).toNat)

end

end A341377.P13859594268308464106

/-! ## A341377.P17167328524478793634

`or(1, A370592(A046944(n)))`
-/

namespace A341377.P17167328524478793634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A370592 (A046944 n).toNat)

end

end A341377.P17167328524478793634

/-!
# A341378: G.f. A(x) satisfies: A(x) = P(x)/Q(x) where P(x) = Sum_{n>=0} (n+1)*x^n*(1 + x*A(x)^n)^n and Q(x) = Sum_{n>=0} x^n*(1 + x*A(x)^n)^n.

The programs for A341378, there is no canonical definition to state claims against.
-/

/-! ## A341378.P10464840723593973847

`A060715(2*A321737(n))`
-/

namespace A341378.P10464840723593973847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 * A321737 n).toNat

end

end A341378.P10464840723593973847

/-! ## A341378.P10276463342190249302

`xor(A000110(n), A111660(A035079(n)))`
-/

namespace A341378.P10276463342190249302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000110 n) (A111660 (A035079 n).toNat)

end

end A341378.P10276463342190249302

/-! ## A341378.P13756049199943747432

`xor(A000110(n), A111660(A055226(n)))`
-/

namespace A341378.P13756049199943747432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000110 n) (A111660 (A055226 n).toNat)

end

end A341378.P13756049199943747432

/-!
# A341379: E.g.f. A(x) satisfies: A(x) = sqrt( Sum_{n>=0} (x^n/n!) * exp(x*A(x)^n) ).

The programs for A341379, there is no canonical definition to state claims against.
-/

/-! ## A341379.P14575805284424379331

`A155804(n)-A085393(A219358(n))`
-/

namespace A341379.P14575805284424379331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155804 n - A085393 (A219358 n).toNat

end

end A341379.P14575805284424379331

/-!
# A341380: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n / (1 - x^(2*n+1)/A(x)).

The programs for A341380, there is no canonical definition to state claims against.
-/

/-! ## A341380.P3662236983252210747

`A335720(n)+A135010(A127360(n))`
-/

namespace A341380.P3662236983252210747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335720 n + A135010 (A127360 n).toNat

end

end A341380.P3662236983252210747

/-! ## A341380.P53218103661628538

`A353498(A057088(n))+A190790(n)`
-/

namespace A341380.P53218103661628538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (A057088 n).toNat + A190790 n

end

end A341380.P53218103661628538

/-! ## A341380.P10690745763670466042

`A260734(A171199(n))-A055087(n)`
-/

namespace A341380.P10690745763670466042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A171199 n).toNat - A055087 n

end

end A341380.P10690745763670466042

/-!
# A341382: G.f. A(x) satisfies: A(x) = P(x)/Q(x) where P(x) = Sum_{n>=0} (n+1)*x^n*A(x)^n/(1 - x*A(x)^(n+1)) and Q(x) = Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(n+1)).

The programs for A341382, there is no canonical definition to state claims against.
-/

/-! ## A341382.P7533333564201465996

`A074840(A122479(∑[n])+A010551(n))`
-/

namespace A341382.P7533333564201465996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A122479 (∑ j ∈ Finset.range (n + 1), f1 j) + A010551 n).toNat

end

end A341382.P7533333564201465996

/-! ## A341382.P14175253681445939145

`floor(A231494(n+1)/2^n)-char[6]`
-/

namespace A341382.P14175253681445939145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231494 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A341382.P14175253681445939145

/-! ## A341382.P12048053697333398109

`A248227(A130780(∑[n]))`
-/

namespace A341382.P12048053697333398109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A130780 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A341382.P12048053697333398109

/-!
# A341383: Numbers m such that the largest digit in the decimal expansion of 1/m is 2.

The programs for A341383, there is no canonical definition to state claims against.
-/

/-! ## A341383.P1827443635308320702

`A307985(A136925(n+2))`
-/

namespace A341383.P1827443635308320702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A136925 (n + 2)).toNat

end

end A341383.P1827443635308320702

/-! ## A341383.P2115889811041046648

`A010764(A136925(n+2)+1)`
-/

namespace A341383.P2115889811041046648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (A136925 (n + 2) + 1).toNat

end

end A341383.P2115889811041046648

/-!
# A341384: Expansion of (-1 + Product_{k>=1} (1 + x^k)^k)^2.

The programs for A341384, there is no canonical definition to state claims against.
-/

/-! ## A341384.P7172818346652151181

`A026011(n+2)-(A026007(n+2)+A026007(n+2))`
-/

namespace A341384.P7172818346652151181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026011 (n + 2) - (A026007 (n + 2) + A026007 (n + 2))

end

end A341384.P7172818346652151181

/-! ## A341384.P16621423236413143893

`A332834(n+4)+A284258(A096805(n))`
-/

namespace A341384.P16621423236413143893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332834 (n + 4) + A284258 (A096805 n).toNat

end

end A341384.P16621423236413143893

/-! ## A341384.P13140304355752384253

`A333382(A164161(n))+A332834(n+4)`
-/

namespace A341384.P13140304355752384253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A164161 n).toNat + A332834 (n + 4)

end

end A341384.P13140304355752384253

/-!
# A341385: Expansion of (-1 + Product_{k>=1} (1 + x^k)^k)^3.

The programs for A341385, there is no canonical definition to state claims against.
-/

/-! ## A341385.P8123342732993963532

`A121596(n)+A056015(A035481(n))`
-/

namespace A341385.P8123342732993963532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121596 n + A056015 (A035481 n).toNat

end

end A341385.P8123342732993963532

/-! ## A341385.P11536671985524533173

`A322403(A000108(n))+A121596(n)`
-/

namespace A341385.P11536671985524533173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322403 (A000108 n).toNat + A121596 n

end

end A341385.P11536671985524533173

/-!
# A341386: Expansion of (-1 + Product_{k>=1} (1 + x^k)^k)^4.

The programs for A341386, there is no canonical definition to state claims against.
-/

/-! ## A341386.P17012740980426611199

`A327386(n+8)+A326542(n!)`
-/

namespace A341386.P17012740980426611199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327386 (n + 8) + A326542 (Nat.factorial n)

end

end A341386.P17012740980426611199

/-!
# A341387: Expansion of (-1 + Product_{k>=1} (1 + x^k)^k)^5.

The programs for A341387, there is no canonical definition to state claims against.
-/

/-! ## A341387.P5096916159613593664

`A327388(n)+A098702(A099963(n))`
-/

namespace A341387.P5096916159613593664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327388 (n + 10) + A098702 (A099963 n).toNat

end

end A341387.P5096916159613593664

/-!
# A341388: Expansion of (-1 + Product_{k>=1} (1 + x^k)^k)^6.

The programs for A341388, there is no canonical definition to state claims against.
-/

/-! ## A341388.P9396239153073346499

`A121590(n+1)+A004198(A004189(n))`
-/

namespace A341388.P9396239153073346499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121590 (n + 1) + A004198 (A004189 n).toNat

end

end A341388.P9396239153073346499

/-! ## A341388.P17194123521004959474

`A300847(n)-A001478(A121590(n+1))`
-/

namespace A341388.P17194123521004959474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300847 n - A001478 (A121590 (n + 1)).toNat

end

end A341388.P17194123521004959474

/-!
# A341389: Characteristic function of A158705, nonnegative integers with an odd number of even powers of 2 in their base-2 representation.

The programs for A341389, the canonical program `A341389.P14519004063399078590` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341389 has offset 0).

The definition of A341389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341389.P16740228731964924204

`char[xor(or(1, n), floor(n/4))]`
-/

namespace A341389.P16740228731964924204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lor 1 n : ℤ) ⌊(n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341389.P16740228731964924204

namespace A341389

/-- `char[xor(or(1, n), floor(n/4))]` -/
def P16740228731964924204.Spec : Prop :=
  ∀ n, (P16740228731964924204.a n : ℤ) = A341389 n

end A341389

/-! ## A341389.P14519004063399078590

`(a(floor(n/4))+n)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341389

/-- `(a(floor(n/4))+n)%2` -/
def P14519004063399078590.Spec : Prop :=
  ∀ n, (P14519004063399078590.a n : ℤ) = A341389 n

theorem P14519004063399078590.correct : P14519004063399078590.Spec := by
  intro n
  simp only [A341389]

end A341389

/-! ## A341389.P11544811998118527979

`(n-a(floor(n/4)))%2` with `a(0)=0`
-/

namespace A341389.P11544811998118527979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat) 2

end

end A341389.P11544811998118527979

namespace A341389

/-- `(n-a(floor(n/4)))%2` -/
def P11544811998118527979.Spec : Prop :=
  ∀ n, P11544811998118527979.a n = A341389 n

end A341389

/-! ## A341389.P11349032958823867741

`and(1, a(floor(n/4))+n)` with `a(0)=0`
-/

namespace A341389.P11349032958823867741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (a ⌊(n : ℚ) / 4⌋.toNat + n)

end

end A341389.P11349032958823867741

namespace A341389

/-- `and(1, a(floor(n/4))+n)` -/
def P11349032958823867741.Spec : Prop :=
  ∀ n, (P11349032958823867741.a n : ℤ) = A341389 n

theorem P11349032958823867741.correct : P11349032958823867741.Spec := by
  intro n
  simp only [A341389, Nat.add_sub_cancel, A341389.P11349032958823867741.a, A341389.P14519004063399078590.a, SequenceMachineLib.memo_apply]
  try simp

end A341389

/-! ## A341389.P13106019185229294777

`xor(n, a(a(floor(n/4))))%2` with `a(0)=0`
-/

namespace A341389.P13106019185229294777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (a (a ⌊(n : ℚ) / 4⌋.toNat)) % 2

end

end A341389.P13106019185229294777

namespace A341389

/-- `xor(n, a(a(floor(n/4))))%2` -/
def P13106019185229294777.Spec : Prop :=
  ∀ n, (P13106019185229294777.a n : ℤ) = A341389 n

end A341389

/-! ## A341389.P4739520327358653646

`and(1, xor(n, a(a(floor(n/4)))))` with `a(0)=0`
-/

namespace A341389.P4739520327358653646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (Nat.xor n (a (a ⌊(n : ℚ) / 4⌋.toNat)))

end

end A341389.P4739520327358653646

namespace A341389

/-- `and(1, xor(n, a(a(floor(n/4)))))` -/
def P4739520327358653646.Spec : Prop :=
  ∀ n, (P4739520327358653646.a n : ℤ) = A341389 n

end A341389

/-! ## A341389.P12080000506823104014

`record[val(n, 4)-a(n-1)]%2` with `a(0)=0`
-/

namespace A341389.P12080000506823104014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A341389.P12080000506823104014

namespace A341389

/-- `record[val(n, 4)-a(n-1)]%2` -/
def P12080000506823104014.Spec : Prop :=
  ∀ n, P12080000506823104014.a n = A341389 n

end A341389

/-! ## A341389.P17775181504821582221

`and(1, record[val(n, 4)-a(n-1)])` with `a(0)=0`
-/

namespace A341389.P17775181504821582221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A341389.P17775181504821582221

namespace A341389

/-- `and(1, record[val(n, 4)-a(n-1)])` -/
def P17775181504821582221.Spec : Prop :=
  ∀ n, P17775181504821582221.a n = A341389 n

end A341389

/-! ## A341389.P5992173063741520106

`A029931(n)%2`
-/

namespace A341389.P5992173063741520106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 n) 2

end

end A341389.P5992173063741520106

namespace A341389

/-- `A029931(n)%2` -/
def P5992173063741520106.Spec : Prop :=
  ∀ n, P5992173063741520106.a n = A341389 n

end A341389

/-! ## A341389.P14521935600947915794

`A037463(n)%2`
-/

namespace A341389.P14521935600947915794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037463 n) 2

end

end A341389.P14521935600947915794

namespace A341389

/-- `A037463(n)%2` -/
def P14521935600947915794.Spec : Prop :=
  ∀ n, P14521935600947915794.a n = A341389 n

end A341389

/-! ## A341389.P5441699356695000333

`A053737(n)%2`
-/

namespace A341389.P5441699356695000333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053737 n) 2

end

end A341389.P5441699356695000333

namespace A341389

/-- `A053737(n)%2` -/
def P5441699356695000333.Spec : Prop :=
  ∀ n, P5441699356695000333.a n = A341389 n

end A341389

/-! ## A341389.P13001471066544615316

`A053839(n)%2`
-/

namespace A341389.P13001471066544615316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053839 n) 2

end

end A341389.P13001471066544615316

namespace A341389

/-- `A053839(n)%2` -/
def P13001471066544615316.Spec : Prop :=
  ∀ n, P13001471066544615316.a n = A341389 n

end A341389

/-! ## A341389.P10747437902134580220

`A064707(n)%2`
-/

namespace A341389.P10747437902134580220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064707 n) 2

end

end A341389.P10747437902134580220

namespace A341389

/-- `A064707(n)%2` -/
def P10747437902134580220.Spec : Prop :=
  ∀ n, P10747437902134580220.a n = A341389 n

end A341389

/-! ## A341389.P9153649268396870338

`A087069(n)%2`
-/

namespace A341389.P9153649268396870338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087069 n) 2

end

end A341389.P9153649268396870338

namespace A341389

/-- `A087069(n)%2` -/
def P9153649268396870338.Spec : Prop :=
  ∀ n, P9153649268396870338.a n = A341389 n

end A341389

/-! ## A341389.P8065779237374335829

`A139351(n)%2`
-/

namespace A341389.P8065779237374335829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139351 n) 2

end

end A341389.P8065779237374335829

namespace A341389

/-- `A139351(n)%2` -/
def P8065779237374335829.Spec : Prop :=
  ∀ n, P8065779237374335829.a n = A341389 n

end A341389

/-! ## A341389.P9657803424215486316

`A215090(n)%2`
-/

namespace A341389.P9657803424215486316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215090 n) 2

end

end A341389.P9657803424215486316

namespace A341389

/-- `A215090(n)%2` -/
def P9657803424215486316.Spec : Prop :=
  ∀ n, P9657803424215486316.a n = A341389 n

end A341389

/-! ## A341389.P10492454474540239150

`A234612(n)%2`
-/

namespace A341389.P10492454474540239150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234612 n) 2

end

end A341389.P10492454474540239150

namespace A341389

/-- `A234612(n)%2` -/
def P10492454474540239150.Spec : Prop :=
  ∀ n, P10492454474540239150.a n = A341389 n

end A341389

/-! ## A341389.P4497059822354432062

`A247891(n)%2`
-/

namespace A341389.P4497059822354432062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247891 n) 2

end

end A341389.P4497059822354432062

namespace A341389

/-- `A247891(n)%2` -/
def P4497059822354432062.Spec : Prop :=
  ∀ n, P4497059822354432062.a n = A341389 n

end A341389

/-! ## A341389.P927910981425252091

`A010060(A004514(n))`
-/

namespace A341389.P927910981425252091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004514 n).toNat

end

end A341389.P927910981425252091

namespace A341389

/-- `A010060(A004514(n))` -/
def P927910981425252091.Spec : Prop :=
  ∀ n, P927910981425252091.a n = A341389 n

end A341389

/-!
# A341392: a(n) = A284005(n) / (1 + A000120(n))!.

The programs for A341392, the canonical program `A341392.P13730857091903265772` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341392 has offset 0).

The definition of A341392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341392.P13730857091903265772

`A284005(n)/(1+A000120(n))!`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A341392

/-- `A284005(n)/(1+A000120(n))!` -/
def P13730857091903265772.Spec : Prop :=
  ∀ n, P13730857091903265772.a n = (A341392 n : ℚ)

end A341392

/-! ## A341392.P2494146666959450166

`A284005(n)/A000142(1+A000120(n))`
-/

namespace A341392.P2494146666959450166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284005 n : ℚ) / (A000142 (1 + A000120 n).toNat : ℚ)

end

end A341392.P2494146666959450166

namespace A341392

/-- `A284005(n)/A000142(1+A000120(n))` -/
def P2494146666959450166.Spec : Prop :=
  ∀ n, P2494146666959450166.a n = (A341392 n : ℚ)

end A341392

/-! ## A341392.P8212833429702595298

`a(A025480(n))*A000120(n+1)` with `a(0)=1`
-/

namespace A341392.P8212833429702595298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A000120 (n + 1)

end

end A341392.P8212833429702595298

namespace A341392

/-- `a(A025480(n))*A000120(n+1)` -/
def P8212833429702595298.Spec : Prop :=
  ∀ n, P8212833429702595298.a n = A341392 n

end A341392

/-! ## A341392.P15978675232218629236

`a(A163575(n+1))*A000120(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A341392.P15978675232218629236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A163575 (n + 1)).toNat * A000120 (n + 1)

end

end A341392.P15978675232218629236

namespace A341392

/-- `a(A163575(n+1))*A000120(n+1)` -/
def P15978675232218629236.Spec : Prop :=
  ∀ n, P15978675232218629236.a n = A341392 n

end A341392

/-! ## A341392.P5772765572501327131

`A284005(n)/A284005(A038573(n))`
-/

namespace A341392.P5772765572501327131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284005 n : ℚ) / (A284005 (A038573 n).toNat : ℚ)

end

end A341392.P5772765572501327131

namespace A341392

/-- `A284005(n)/A284005(A038573(n))` -/
def P5772765572501327131.Spec : Prop :=
  ∀ n, P5772765572501327131.a n = (A341392 n : ℚ)

end A341392

/-! ## A341392.P12590856715002705776

`A284005(n)/A284005(A001316(n)-1)`
-/

namespace A341392.P12590856715002705776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284005 n : ℚ) / (A284005 (A001316 n - 1).toNat : ℚ)

end

end A341392.P12590856715002705776

namespace A341392

/-- `A284005(n)/A284005(A001316(n)-1)` -/
def P12590856715002705776.Spec : Prop :=
  ∀ n, P12590856715002705776.a n = (A341392 n : ℚ)

end A341392

/-! ## A341392.P13686295925823883898

`A243499(A036044(n))`
-/

namespace A341392.P13686295925823883898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A036044 n).toNat

end

end A341392.P13686295925823883898

namespace A341392

/-- `A243499(A036044(n))` -/
def P13686295925823883898.Spec : Prop :=
  ∀ n, P13686295925823883898.a n = A341392 n

end A341392

/-! ## A341392.P4325814429828468421

`A003963(A366275(n+1))`
-/

namespace A341392.P4325814429828468421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A366275 (n + 1)).toNat

end

end A341392.P4325814429828468421

namespace A341392

/-- `A003963(A366275(n+1))` -/
def P4325814429828468421.Spec : Prop :=
  ∀ n, P4325814429828468421.a n = A341392 n

end A341392

/-!
# A341395: Coefficient of x^(2*n) in (-1 + Product_{k>=1} (1 + x^k)^k)^n.

The programs for A341395, there is no canonical definition to state claims against.
-/

/-! ## A341395.P13144886431987627019

`A171715(A003945(∑[n]))`
-/

namespace A341395.P13144886431987627019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (A003945 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A341395.P13144886431987627019

/-!
# A341396: Number of integer solutions to (x_1)^2 + (x_2)^2 + ... + (x_7)^2 <= n.

The programs for A341396, there is no canonical definition to state claims against.
-/

/-! ## A341396.P4974046275800354268

`∑[A008451(n)]`
-/

namespace A341396.P4974046275800354268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P4974046275800354268

/-! ## A341396.P1998777585572361193

`A008451(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341396.P1998777585572361193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008451 n + a (A023443 n).toNat

end

end A341396.P1998777585572361193

/-! ## A341396.P10070602640350509999

`a(n-1)+A008451(n)+A000038(n)` with `a(0)=1`
-/

namespace A341396.P10070602640350509999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008451 n + A000038 n)

end

end A341396.P10070602640350509999

/-! ## A341396.P15182012300806280934

`∑[A008423(4*n)]`
-/

namespace A341396.P15182012300806280934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P15182012300806280934

/-! ## A341396.P5211789413321202590

`∑[A008423(A008574(n))]+1`
-/

namespace A341396.P5211789413321202590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341396.P5211789413321202590

/-! ## A341396.P14747125934716877879

`A000007(n+1)+∑[A008423(A008586(n))]`
-/

namespace A341396.P14747125934716877879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P14747125934716877879

/-! ## A341396.P4797723926256888080

`∑[A122141(A055999(n+4))]`
-/

namespace A341396.P4797723926256888080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A055999 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P4797723926256888080

/-! ## A341396.P1236678335395880609

`∑[A122141(A000124(n+7)-7)]`
-/

namespace A341396.P1236678335395880609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A000124 (n + 7) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P1236678335395880609

/-! ## A341396.P6444037678509224698

`∑[A286815(A155212(n+4))]`
-/

namespace A341396.P6444037678509224698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A155212 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P6444037678509224698

/-! ## A341396.P2721625584894338336

`∑[A286815(eq[7, A025581(n)])]`
-/

namespace A341396.P2721625584894338336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P2721625584894338336

/-! ## A341396.P2939831692272045812

`∑[A286815(eq[15, A099375(n)])]`
-/

namespace A341396.P2939831692272045812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341396.P2939831692272045812

/-!
# A341397: Number of integer solutions to (x_1)^2 + (x_2)^2 + ... + (x_8)^2 <= n.

The programs for A341397, there is no canonical definition to state claims against.
-/

/-! ## A341397.P16781292934844590103

`∑[A000143(n)]`
-/

namespace A341397.P16781292934844590103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341397.P16781292934844590103

/-! ## A341397.P13786461564265669457

`∑[abs(A035016(n))]`
-/

namespace A341397.P13786461564265669457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035016 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341397.P13786461564265669457

/-! ## A341397.P13932796306898778653

`∑[gcd(A000038(n), A035016(n))]`
-/

namespace A341397.P13932796306898778653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341397.P13932796306898778653

/-! ## A341397.P7730588565247065541

`∑[lcm(A000034(n), A035016(n))]`
-/

namespace A341397.P7730588565247065541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A035016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341397.P7730588565247065541

/-! ## A341397.P13691997893261938578

`∑[(A004442(n)-n)*A035016(n)]`
-/

namespace A341397.P13691997893261938578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A035016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341397.P13691997893261938578

/-! ## A341397.P7473397343758025318

`a(n-1)+A000143(n)+A000007(n)` with `a(0)=1`
-/

namespace A341397.P7473397343758025318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000143 n + A000007 n)

end

end A341397.P7473397343758025318

/-! ## A341397.P13432193652008865088

`∑[abs(A259491(4*n))]`
-/

namespace A341397.P13432193652008865088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259491 (4 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341397.P13432193652008865088

/-!
# A341398: Number of integer solutions to (x_1)^2 + (x_2)^2 + ... + (x_9)^2 <= n.

The programs for A341398, there is no canonical definition to state claims against.
-/

/-! ## A341398.P6189419808523286767

`∑[A008452(n)]`
-/

namespace A341398.P6189419808523286767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341398.P6189419808523286767

/-! ## A341398.P10157934366859127184

`a(n-1)+A008452(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A341398.P10157934366859127184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008452 n + A000007 (n + 1))

end

end A341398.P10157934366859127184

/-! ## A341398.P11129851243953334000

`∑[A028696(4*n)]`
-/

namespace A341398.P11129851243953334000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028696 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341398.P11129851243953334000

/-! ## A341398.P5543199386142774938

`∑[A008424(4*n)]`
-/

namespace A341398.P5543199386142774938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341398.P5543199386142774938

/-! ## A341398.P3096138305055468869

`∑[A008424(A008574(n))]+1`
-/

namespace A341398.P3096138305055468869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341398.P3096138305055468869

/-! ## A341398.P3661093994086634308

`or(1, ∑[A008424(A008586(n))])`
-/

namespace A341398.P3661093994086634308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341398.P3661093994086634308

/-!
# A341399: Number of integer solutions to (x_1)^2 + (x_2)^2 + ... + (x_10)^2 <= n.

The programs for A341399, there is no canonical definition to state claims against.
-/

/-! ## A341399.P5565365709224697083

`∑[A000144(n)]`
-/

namespace A341399.P5565365709224697083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341399.P5565365709224697083

/-! ## A341399.P8257844379777858652

`A000144(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341399.P8257844379777858652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000144 n + a (A023443 n).toNat

end

end A341399.P8257844379777858652

/-! ## A341399.P9003370586084295928

`a(n-1)+A000144(n)+A000038(n)` with `a(0)=1`
-/

namespace A341399.P9003370586084295928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000144 n + A000038 n)

end

end A341399.P9003370586084295928

/-! ## A341399.P9448045776216956331

`A000144(n%A000144(n))+a(n-1)` with `a(0)=1`
-/

namespace A341399.P9448045776216956331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000144 (Int.tmod (n : ℤ) (A000144 n)).toNat + a (n - 1)

end

end A341399.P9448045776216956331

/-! ## A341399.P14672394489319918548

`∑[A008426(2*n)]`
-/

namespace A341399.P14672394489319918548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008426 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341399.P14672394489319918548

/-! ## A341399.P13759785181060010310

`A008426(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A341399.P13759785181060010310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008426 (n + n) + a (n - 1)

end

end A341399.P13759785181060010310

