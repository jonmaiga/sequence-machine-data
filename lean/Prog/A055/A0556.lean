import SequenceMachineLib
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A055600: Numbers of form 2^i*3^j + 1 with i, j >= 0.

The programs for A055600, there is no canonical definition to state claims against.
-/

/-! ## A055600.P683535679080957436

`A003586(n+1)+1`
-/

namespace A055600.P683535679080957436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + 1

end

end A055600.P683535679080957436

/-! ## A055600.P2544616850006008897

`∑[A061987(n)]+1`
-/

namespace A055600.P2544616850006008897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A055600.P2544616850006008897

/-! ## A055600.P7067505558270313915

`Δ[A259823(n)]+1`
-/

namespace A055600.P7067505558270313915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A055600.P7067505558270313915

/-! ## A055600.P14574692799618242695

`A069353(n+1)+2`
-/

namespace A055600.P14574692799618242695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 2

end

end A055600.P14574692799618242695

/-! ## A055600.P18232609888063512661

`A065119(n+1)/3+1`
-/

namespace A055600.P18232609888063512661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (n + 1) : ℚ) / 3 + 1

end

end A055600.P18232609888063512661

/-! ## A055600.P142110339345954942

`(A190812(n+1)+3)/2`
-/

namespace A055600.P142110339345954942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190812 (n + 1) + 3 : ℚ) / 2

end

end A055600.P142110339345954942

/-! ## A055600.P1387205506521348549

`ceil((A033845(n+1)/3+1)/2)`
-/

namespace A055600.P1387205506521348549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A033845 (n + 1) : ℚ) / 3 + 1) / 2⌉

end

end A055600.P1387205506521348549

/-! ## A055600.P12410051654885149318

`A065119(n+1)-A190812(n+1)`
-/

namespace A055600.P12410051654885149318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1) - A190812 (n + 1)

end

end A055600.P12410051654885149318

/-! ## A055600.P17805501792643725063

`∪[A007694(n+1), A025613(n+1)]+1`
-/

namespace A055600.P17805501792643725063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A055600.P17805501792643725063

/-! ## A055600.P12686967998339188855

`∪[A025610(n+1), A025614(n+1)]+1`
-/

namespace A055600.P12686967998339188855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A055600.P12686967998339188855

/-! ## A055600.P2685895025398415653

`A007694(n+2)/2+1`
-/

namespace A055600.P2685895025398415653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2 + 1

end

end A055600.P2685895025398415653

/-! ## A055600.P2429574336931162356

`sqrt(A025620(n+1))+1`
-/

namespace A055600.P2429574336931162356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ) + 1

end

end A055600.P2429574336931162356

/-! ## A055600.P11751110531086182357

`A186711(A186712(n+1))+1`
-/

namespace A055600.P11751110531086182357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A186712 (n + 1)).toNat + 1

end

end A055600.P11751110531086182357

/-! ## A055600.P13746249543939418100

`(A000423(n+3)/2+3)/3`
-/

namespace A055600.P13746249543939418100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000423 (n + 3) : ℚ) / 2 + 3) / 3

end

end A055600.P13746249543939418100

/-! ## A055600.P7858951073789506658

`∩[A108319(n+1), A257997(n+1)]+1`
-/

namespace A055600.P7858951073789506658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A055600.P7858951073789506658

/-! ## A055600.P17987292433793832082

`∩[A108319(n+1), A258023(n+1)]+1`
-/

namespace A055600.P17987292433793832082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A055600.P17987292433793832082

/-! ## A055600.P17497089104154720023

`∩[A108319(n+1), A337800(n+1)]+1`
-/

namespace A055600.P17497089104154720023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A055600.P17497089104154720023

/-! ## A055600.P18337200852614147299

`∩[A051037(n+1), A108319(n+1)]+1`
-/

namespace A055600.P18337200852614147299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A055600.P18337200852614147299

/-!
# A055601: Number of n X n binary matrices with no zero rows.

The programs for A055601, the canonical program `A055601.P3085073676020598656` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055601 has offset 0).

The definition of A055601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055601.P3085073676020598656

`(2^n-1)^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055601

/-- `(2^n-1)^n` -/
def P3085073676020598656.Spec : Prop :=
  ∀ n, P3085073676020598656.a n = A055601 n

theorem P3085073676020598656.correct : P3085073676020598656.Spec := by
  intro n
  simp only [A055601]

end A055601

/-! ## A055601.P410651325202184073

`floor((xor(1, ∑[2^n])/2)^n)`
-/

namespace A055601.P410651325202184073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) ^ n⌋

end

end A055601.P410651325202184073

namespace A055601

/-- `floor((xor(1, ∑[2^n])/2)^n)` -/
def P410651325202184073.Spec : Prop :=
  ∀ n, P410651325202184073.a n = A055601 n

end A055601

/-! ## A055601.P11417885669494394983

`or(1, -2^n)^n*(-1)^n`
-/

namespace A055601.P11417885669494394983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 ^ n : ℤ)) ^ n * (-1) ^ n

end

end A055601.P11417885669494394983

namespace A055601

/-- `or(1, -2^n)^n*(-1)^n` -/
def P11417885669494394983.Spec : Prop :=
  ∀ n, P11417885669494394983.a n = A055601 n

end A055601

/-! ## A055601.P11636246043780225655

`or(1, -2^n)^n/(-1)^n`
-/

namespace A055601.P11636246043780225655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (-(2 ^ n : ℤ)) ^ n : ℚ) / ((-1) ^ n : ℚ)

end

end A055601.P11636246043780225655

namespace A055601

/-- `or(1, -2^n)^n/(-1)^n` -/
def P11636246043780225655.Spec : Prop :=
  ∀ n, P11636246043780225655.a n = (A055601 n : ℚ)

end A055601

/-! ## A055601.P1480702254515035377

`abs(A225883(n)^n)`
-/

namespace A055601.P1480702254515035377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225883 n ^ n|

end

end A055601.P1480702254515035377

namespace A055601

/-- `abs(A225883(n)^n)` -/
def P1480702254515035377.Spec : Prop :=
  ∀ n, P1480702254515035377.a n = A055601 n

end A055601

/-!
# A055602: Number of n X n binary matrices with no 0 rows or columns and with n+1 1's.

The programs for A055602, the canonical program `A055602.P3505883771385200555` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055602 has offset 1).

The definition of A055602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055602.P3505883771385200555

`(n+1)*n*(n+3)*(n+1)!/4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055602

/-- `(n+1)*n*(n+3)*(n+1)!/4` -/
def P3505883771385200555.Spec : Prop :=
  ∀ n, P3505883771385200555.a n = (A055602 (n + 1) : ℚ)

end A055602

/-! ## A055602.P15047903819136305588

`∏[n+3]/(n+2)*∑[n]`
-/

namespace A055602.P15047903819136305588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A055602.P15047903819136305588

namespace A055602

/-- `∏[n+3]/(n+2)*∑[n]` -/
def P15047903819136305588.Spec : Prop :=
  ∀ n, P15047903819136305588.a n = (A055602 (n + 1) : ℚ)

end A055602

/-! ## A055602.P5524158347875754723

`floor((n+3)/4*Δ[n!]*(n+1)²)`
-/

namespace A055602.P5524158347875754723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) * ((n + 1) ^ 2 : ℚ)⌋

end

end A055602.P5524158347875754723

namespace A055602

/-- `floor((n+3)/4*Δ[n!]*(n+1)²)` -/
def P5524158347875754723.Spec : Prop :=
  ∀ n, P5524158347875754723.a n = A055602 (n + 1)

end A055602

/-! ## A055602.P8585413006872024355

`Δ[A173038(n+3)]`
-/

namespace A055602.P8585413006872024355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173038 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055602.P8585413006872024355

namespace A055602

/-- `Δ[A173038(n+3)]` -/
def P8585413006872024355.Spec : Prop :=
  ∀ n, P8585413006872024355.a n = A055602 (n + 1)

end A055602

/-! ## A055602.P9187554727942105949

`A001809(n)+n*Δ[A138772(n+1)]`
-/

namespace A055602.P9187554727942105949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A055602.P9187554727942105949

namespace A055602

/-- `A001809(n)+n*Δ[A138772(n+1)]` -/
def P9187554727942105949.Spec : Prop :=
  ∀ n, P9187554727942105949.a n = A055602 (n + 1)

end A055602

/-! ## A055602.P18068520363409394386

`Δ[n*A138772(n+1)-A006595(n)]`
-/

namespace A055602.P18068520363409394386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138772 (n + 1) - A006595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055602.P18068520363409394386

namespace A055602

/-- `Δ[n*A138772(n+1)-A006595(n)]` -/
def P18068520363409394386.Spec : Prop :=
  ∀ n, P18068520363409394386.a n = A055602 (n + 1)

end A055602

/-! ## A055602.P1495844503345968564

`n*A138772(n+2)-A001809(n+1)`
-/

namespace A055602.P1495844503345968564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138772 (n + 2) - A001809 (n + 1)

end

end A055602.P1495844503345968564

namespace A055602

/-- `n*A138772(n+2)-A001809(n+1)` -/
def P1495844503345968564.Spec : Prop :=
  ∀ n, P1495844503345968564.a n = A055602 (n + 1)

end A055602

/-! ## A055602.P15115006571485403372

`A002522(n+1)*A138772(n+1)-A138772(n+1)`
-/

namespace A055602.P15115006571485403372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A138772 (n + 1) - A138772 (n + 1)

end

end A055602.P15115006571485403372

namespace A055602

/-- `A002522(n+1)*A138772(n+1)-A138772(n+1)` -/
def P15115006571485403372.Spec : Prop :=
  ∀ n, P15115006571485403372.a n = A055602 (n + 1)

end A055602

/-! ## A055602.P11915794578499242560

`A055303(n+3)%Δ[A001809(n+1)]`
-/

namespace A055602.P11915794578499242560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055303 (n + 3)) (f1 (n + 1) - f1 n)

end

end A055602.P11915794578499242560

namespace A055602

/-- `A055303(n+3)%Δ[A001809(n+1)]` -/
def P11915794578499242560.Spec : Prop :=
  ∀ n, P11915794578499242560.a n = A055602 (n + 1)

end A055602

/-!
# A055603: Number of n X n binary matrices with no zero rows or columns and with n+2 ones.

The programs for A055603, there is no canonical definition to state claims against.
-/

/-! ## A055603.P7390655066763355826

`A055599(∑[n²+2]+2)`
-/

namespace A055603.P7390655066763355826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055603.P7390655066763355826

/-! ## A055603.P1675513861584431019

`A104601(∑[n+3]+1)`
-/

namespace A055603.P1675513861584431019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055603.P1675513861584431019

/-! ## A055603.P14012146742127254225

`record[A104601(A198464(n+1))]`
-/

namespace A055603.P14012146742127254225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104601 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055603.P14012146742127254225

/-!
# A055604: Primes such that (a) reversal of digits gives a prime, (b) deleting any digit gives a prime and (c) reversing digits and deleting any digit gives a prime.

The programs for A055604, there is no canonical definition to state claims against.
-/

/-! ## A055604.P3976446604460398231

`∑[10*a(n-1)]` with `a(0)=37, a(1)=36, a(2)=40, a(3)=18`
-/

namespace A055604.P3976446604460398231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [37, 36, 40, 18] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055604.P3976446604460398231

/-!
# A055606: Largest k value that admits an (n,k) balanced magic carpet.

The programs for A055606, there is no canonical definition to state claims against.
-/

/-! ## A055606.P6745559627900558505

`A277218(n+6)`
-/

namespace A055606.P6745559627900558505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (n + 6)

end

end A055606.P6745559627900558505

/-! ## A055606.P17108649385425233341

`A067059(A074148(n+6))`
-/

namespace A055606.P17108649385425233341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A074148 (n + 6)).toNat

end

end A055606.P17108649385425233341

/-! ## A055606.P10520128941447663961

`filter[A277218(n), A267776(#)]`
-/

namespace A055606.P10520128941447663961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267776 (f1 j).toNat = 1) n)

end

end A055606.P10520128941447663961

/-! ## A055606.P4185137220260018046

`record[or(A000038(n), A277218(n))]`
-/

namespace A055606.P4185137220260018046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A277218 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055606.P4185137220260018046

/-! ## A055606.P5811322390568438790

`record[A067059(floor((n+1)²/2))+A000038(n)]`
-/

namespace A055606.P5811322390568438790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055606.P5811322390568438790

/-!
# A055607: a(2n+1) = n^2 - 1 + A002620(n), a(2n) = a(2n-1) + n.

The programs for A055607, the canonical program `A055607.P4462960512338691039` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055607 has offset 1).

The definition of A055607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055607.P4462960512338691039

`floor((n+1)/4+a(n-2)+n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055607

/-- `floor((n+1)/4+a(n-2)+n)` -/
def P4462960512338691039.Spec : Prop :=
  ∀ n, P4462960512338691039.a n = A055607 (n + 1)

theorem P4462960512338691039.correct : P4462960512338691039.Spec := by
  intro n
  simp only [A055607, Nat.add_sub_cancel]

end A055607

/-! ## A055607.P12128610697094803912

`A038707(n)-A211520(n)`
-/

namespace A055607.P12128610697094803912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n - A211520 n

end

end A055607.P12128610697094803912

namespace A055607

/-- `A038707(n)-A211520(n)` -/
def P12128610697094803912.Spec : Prop :=
  ∀ n, P12128610697094803912.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P12801975073271942055

`A008733(n)+A110654(n)²-1`
-/

namespace A055607.P12801975073271942055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n + (A110654 n ^ 2 - 1)

end

end A055607.P12801975073271942055

namespace A055607

/-- `A008733(n)+A110654(n)²-1` -/
def P12801975073271942055.Spec : Prop :=
  ∀ n, P12801975073271942055.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P15215639226642841232

`∑[A007494(A174239(n))%(n+1)]`
-/

namespace A055607.P15215639226642841232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007494 (A174239 n).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055607.P15215639226642841232

namespace A055607

/-- `∑[A007494(A174239(n))%(n+1)]` -/
def P15215639226642841232.Spec : Prop :=
  ∀ n, P15215639226642841232.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P9341510592780336105

`A067998(A080513(n))+A008733(n)`
-/

namespace A055607.P9341510592780336105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A080513 n).toNat + A008733 n

end

end A055607.P9341510592780336105

namespace A055607

/-- `A067998(A080513(n))+A008733(n)` -/
def P9341510592780336105.Spec : Prop :=
  ∀ n, P9341510592780336105.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P3826147285202947048

`A092530(n)-A001859(A110654(n))`
-/

namespace A055607.P3826147285202947048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n - A001859 (A110654 n).toNat

end

end A055607.P3826147285202947048

namespace A055607

/-- `A092530(n)-A001859(A110654(n))` -/
def P3826147285202947048.Spec : Prop :=
  ∀ n, P3826147285202947048.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P14912262079116131233

`A198442(n+1)+A002620(n-A004526(n))`
-/

namespace A055607.P14912262079116131233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) + A002620 ((n : ℤ) - A004526 n).toNat

end

end A055607.P14912262079116131233

namespace A055607

/-- `A198442(n+1)+A002620(n-A004526(n))` -/
def P14912262079116131233.Spec : Prop :=
  ∀ n, P14912262079116131233.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P16214135591523715987

`A002620(n)+A004526(n)+A002620(A110654(n))`
-/

namespace A055607.P16214135591523715987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A004526 n + A002620 (A110654 n).toNat)

end

end A055607.P16214135591523715987

namespace A055607

/-- `A002620(n)+A004526(n)+A002620(A110654(n))` -/
def P16214135591523715987.Spec : Prop :=
  ∀ n, P16214135591523715987.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P2418002560357607403

`A198442(n+1)+A002620(A004526(n+1))`
-/

namespace A055607.P2418002560357607403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) + A002620 (A004526 (n + 1)).toNat

end

end A055607.P2418002560357607403

namespace A055607

/-- `A198442(n+1)+A002620(A004526(n+1))` -/
def P2418002560357607403.Spec : Prop :=
  ∀ n, P2418002560357607403.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P12611792157625850204

`A000212(n+1)-(A005044(n+1)+A000035(n))`
-/

namespace A055607.P12611792157625850204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) - (A005044 (n + 1) + A000035 n)

end

end A055607.P12611792157625850204

namespace A055607

/-- `A000212(n+1)-(A005044(n+1)+A000035(n))` -/
def P12611792157625850204.Spec : Prop :=
  ∀ n, P12611792157625850204.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P7401666295724983207

`A007590(n)-A174709(A032766(n))`
-/

namespace A055607.P7401666295724983207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A174709 (A032766 n).toNat

end

end A055607.P7401666295724983207

namespace A055607

/-- `A007590(n)-A174709(A032766(n))` -/
def P7401666295724983207.Spec : Prop :=
  ∀ n, P7401666295724983207.a n = A055607 (n + 1)

end A055607

/-! ## A055607.P12903581427798990595

`A011861(2*n+1)-A211520(n)`
-/

namespace A055607.P12903581427798990595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (2 * n + 1) - A211520 n

end

end A055607.P12903581427798990595

namespace A055607

/-- `A011861(2*n+1)-A211520(n)` -/
def P12903581427798990595.Spec : Prop :=
  ∀ n, P12903581427798990595.a n = A055607 (n + 1)

end A055607

/-!
# A055608: Arrays of dumbbells.

The programs for A055608, the canonical program `A055608.P3351527780565654207` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055608 has offset 1).

The definition of A055608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055608.P3351527780565654207

`2*a(n-1)-a(n-3)+A002889(n+1)+A002889(n)` with `a(0)=1, a(1)=13, a(2)=92`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055608

/-- `2*a(n-1)-a(n-3)+A002889(n+1)+A002889(n)` -/
def P3351527780565654207.Spec : Prop :=
  ∀ n, P3351527780565654207.a n = A055608 (n + 1)

theorem P3351527780565654207.correct : P3351527780565654207.Spec := by
  intro n
  simp only [A055608, Nat.add_sub_cancel]

end A055608

/-! ## A055608.P5632500757499166810

`abs(A308244(A167614(n+3)+1))`
-/

namespace A055608.P5632500757499166810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308244 (A167614 (n + 3) + 1).toNat|

end

end A055608.P5632500757499166810

namespace A055608

/-- `abs(A308244(A167614(n+3)+1))` -/
def P5632500757499166810.Spec : Prop :=
  ∀ n, P5632500757499166810.a n = A055608 (n + 1)

end A055608

/-! ## A055608.P6423099227492727495

`gcd(A000038(n), A308244(A167614(n+3)+1))`
-/

namespace A055608.P6423099227492727495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A308244 (A167614 (n + 3) + 1).toNat)

end

end A055608.P6423099227492727495

namespace A055608

/-- `gcd(A000038(n), A308244(A167614(n+3)+1))` -/
def P6423099227492727495.Spec : Prop :=
  ∀ n, (P6423099227492727495.a n : ℤ) = A055608 (n + 1)

end A055608

/-! ## A055608.P5628528089983093397

`lcm(A020985(n), A308244(A167614(n+3)+1))`
-/

namespace A055608.P5628528089983093397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A308244 (A167614 (n + 3) + 1).toNat)

end

end A055608.P5628528089983093397

namespace A055608

/-- `lcm(A020985(n), A308244(A167614(n+3)+1))` -/
def P5628528089983093397.Spec : Prop :=
  ∀ n, (P5628528089983093397.a n : ℤ) = A055608 (n + 1)

end A055608

/-! ## A055608.P17976767374653093398

`A046741(∑[n+5]+5)`
-/

namespace A055608.P17976767374653093398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055608.P17976767374653093398

namespace A055608

/-- `A046741(∑[n+5]+5)` -/
def P17976767374653093398.Spec : Prop :=
  ∀ n, P17976767374653093398.a n = A055608 (n + 1)

end A055608

/-! ## A055608.P5798572330682929587

`record[A046741(n+10)/A046741(n+15)]`
-/

namespace A055608.P5798572330682929587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046741 (n + 10) : ℚ) / (A046741 (n + 15) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055608.P5798572330682929587

namespace A055608

/-- `record[A046741(n+10)/A046741(n+15)]` -/
def P5798572330682929587.Spec : Prop :=
  ∀ n, P5798572330682929587.a n = (A055608 (n + 1) : ℚ)

end A055608

/-!
# A055609: Number of 3 X n binary matrices with no zero rows or columns, up to row and column permutation.

The programs for A055609, the canonical program `A055609.P6314505780929029689` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055609 has offset 1).

The definition of A055609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055609.P11315132919590144278

`A327728(n+1)+A005783(n)`
-/

namespace A055609.P11315132919590144278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327728 (n + 1) + A005783 n

end

end A055609.P11315132919590144278

namespace A055609

/-- `A327728(n+1)+A005783(n)` -/
def P11315132919590144278.Spec : Prop :=
  ∀ n, P11315132919590144278.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P16259782825365287041

`A327728(n+1)+∑[A050531(n)]`
-/

namespace A055609.P16259782825365287041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327728 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055609.P16259782825365287041

namespace A055609

/-- `A327728(n+1)+∑[A050531(n)]` -/
def P16259782825365287041.Spec : Prop :=
  ∀ n, P16259782825365287041.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P6314505780929029689

`∑[A050531(n+1)-1]-A002620(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055609

/-- `∑[A050531(n+1)-1]-A002620(n+1)` -/
def P6314505780929029689.Spec : Prop :=
  ∀ n, P6314505780929029689.a n = A055609 (n + 1)

theorem P6314505780929029689.correct : P6314505780929029689.Spec := by
  intro n
  simp only [A055609, Nat.add_sub_cancel]

end A055609

/-! ## A055609.P253586379162903820

`A005745(n+1)+A002623(n)-A002727(n)`
-/

namespace A055609.P253586379162903820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005745 (n + 1) + (A002623 n - A002727 n)

end

end A055609.P253586379162903820

namespace A055609

/-- `A005745(n+1)+A002623(n)-A002727(n)` -/
def P253586379162903820.Spec : Prop :=
  ∀ n, P253586379162903820.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P16862184802268133022

`Δ[A002727(n)-A002623(n)]`
-/

namespace A055609.P16862184802268133022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n - A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055609.P16862184802268133022

namespace A055609

/-- `Δ[A002727(n)-A002623(n)]` -/
def P16862184802268133022.Spec : Prop :=
  ∀ n, P16862184802268133022.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P8405738196143118371

`Δ[∑[A005783(n)]-A002623(n)]`
-/

namespace A055609.P8405738196143118371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055609.P8405738196143118371

namespace A055609

/-- `Δ[∑[A005783(n)]-A002623(n)]` -/
def P8405738196143118371.Spec : Prop :=
  ∀ n, P8405738196143118371.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P7491902090010046230

`A005783(n+1)-Δ[A002623(n)]`
-/

namespace A055609.P7491902090010046230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055609.P7491902090010046230

namespace A055609

/-- `A005783(n+1)-Δ[A002623(n)]` -/
def P7491902090010046230.Spec : Prop :=
  ∀ n, P7491902090010046230.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P15635373595423116746

`A005783(n+1)-A087811(n+2)`
-/

namespace A055609.P15635373595423116746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 (n + 1) - A087811 (n + 2)

end

end A055609.P15635373595423116746

namespace A055609

/-- `A005783(n+1)-A087811(n+2)` -/
def P15635373595423116746.Spec : Prop :=
  ∀ n, P15635373595423116746.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P13141617588419488014

`A005783(n+1)-(Δ[A005744(n)]+1)`
-/

namespace A055609.P13141617588419488014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 (n + 1) - (f1 (n + 1) - f1 n + 1)

end

end A055609.P13141617588419488014

namespace A055609

/-- `A005783(n+1)-(Δ[A005744(n)]+1)` -/
def P13141617588419488014.Spec : Prop :=
  ∀ n, P13141617588419488014.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P1935971457756384659

`A002623(n)+A005783(n+1)-A002623(n+1)`
-/

namespace A055609.P1935971457756384659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + (A005783 (n + 1) - A002623 (n + 1))

end

end A055609.P1935971457756384659

namespace A055609

/-- `A002623(n)+A005783(n+1)-A002623(n+1)` -/
def P1935971457756384659.Spec : Prop :=
  ∀ n, P1935971457756384659.a n = A055609 (n + 1)

end A055609

/-! ## A055609.P6130773514497403909

`A005783(n+1)-A002620(n+3)`
-/

namespace A055609.P6130773514497403909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 (n + 1) - A002620 (n + 3)

end

end A055609.P6130773514497403909

namespace A055609

/-- `A005783(n+1)-A002620(n+3)` -/
def P6130773514497403909.Spec : Prop :=
  ∀ n, P6130773514497403909.a n = A055609 (n + 1)

end A055609

/-!
# A055610: A companion sequence to A011896.

The programs for A055610, the canonical program `A055610.P10804324420113377582` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055610 has offset 0).

The definition of A055610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055610.P10804324420113377582

`ceil(n*(n-1)*(n-2)/14)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055610

/-- `ceil(n*(n-1)*(n-2)/14)` -/
def P10804324420113377582.Spec : Prop :=
  ∀ n, P10804324420113377582.a n = A055610 n

theorem P10804324420113377582.correct : P10804324420113377582.Spec := by
  intro n
  simp only [A055610]

end A055610

/-! ## A055610.P9127292921216944516

`round(3*(C(n, 3)+1)/7)`
-/

namespace A055610.P9127292921216944516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.choose n 3 + 1 : ℚ) / 7))

end

end A055610.P9127292921216944516

namespace A055610

/-- `round(3*(C(n, 3)+1)/7)` -/
def P9127292921216944516.Spec : Prop :=
  ∀ n, P9127292921216944516.a n = A055610 n

end A055610

/-! ## A055610.P15357231156570245914

`ceil(A007531(n)/14)/A141044(n)`
-/

namespace A055610.P15357231156570245914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A007531 n : ℚ) / 14⌉ : ℚ) / (A141044 n : ℚ)

end

end A055610.P15357231156570245914

namespace A055610

/-- `ceil(A007531(n)/14)/A141044(n)` -/
def P15357231156570245914.Spec : Prop :=
  ∀ n, P15357231156570245914.a n = (A055610 n : ℚ)

end A055610

/-! ## A055610.P15128174901397767206

`∑[A174738(3*n+1)-floor(3/7*n²)]`
-/

namespace A055610.P15128174901397767206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (3 * n + 1) - ⌊(3 : ℚ) / 7 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055610.P15128174901397767206

namespace A055610

/-- `∑[A174738(3*n+1)-floor(3/7*n²)]` -/
def P15128174901397767206.Spec : Prop :=
  ∀ n, P15128174901397767206.a n = A055610 n

end A055610

/-! ## A055610.P18345558792328747833

`A373811(A357289(n))`
-/

namespace A055610.P18345558792328747833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A357289 n).toNat

end

end A055610.P18345558792328747833

namespace A055610

/-- `A373811(A357289(n))` -/
def P18345558792328747833.Spec : Prop :=
  ∀ n, P18345558792328747833.a n = A055610 n

end A055610

/-!
# A055611: n written efficiently in natural numbers base, i.e., in form ...wxyz where n = 1*z + 2*y + 3*x + 4*w + ... with z <= 1, y < 2, x < 3, w < 4, ...

The programs for A055611, there is no canonical definition to state claims against.
-/

/-! ## A055611.P406730423880257744

`record[∏{p}[A014418(n)², #]]`
-/

namespace A055611.P406730423880257744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055611.P406730423880257744

/-! ## A055611.P6391039142709488759

`record[∏{p}[A007090(A244161(n))², #]]`
-/

namespace A055611.P6391039142709488759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A244161 n).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055611.P6391039142709488759

/-! ## A055611.P12753485162814097926

`A007623(A231624(n+1)^A287377(n))`
-/

namespace A055611.P12753485162814097926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.roundAway ((A231624 (n + 1) : ℚ) ^ (A287377 n : ℤ))).toNat

end

end A055611.P12753485162814097926

/-! ## A055611.P15984185726291921340

`A007623(A231624(n+1)^A287378(n))`
-/

namespace A055611.P15984185726291921340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.roundAway ((A231624 (n + 1) : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A055611.P15984185726291921340

/-!
# A055612: a(n) = Product_{m=1..n} (binomial(n,m)+1).

The programs for A055612, there is no canonical definition to state claims against.
-/

/-! ## A055612.P6266696724973302674

`A129824(n)/2`
-/

namespace A055612.P6266696724973302674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129824 n : ℚ) / 2

end

end A055612.P6266696724973302674

/-! ## A055612.P7721194096440571610

`A293954(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A055612.P7721194096440571610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293954 (n - 1) + a (n - 1)

end

end A055612.P7721194096440571610

/-! ## A055612.P2841681161729125247

`A020639(A004277(n))*A304902(n)`
-/

namespace A055612.P2841681161729125247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A304902 n

end

end A055612.P2841681161729125247

/-! ## A055612.P5542863743220719933

`A001222(A096014(n+1))*A304902(n)`
-/

namespace A055612.P5542863743220719933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096014 (n + 1)).toNat * A304902 n

end

end A055612.P5542863743220719933

/-!
# A055615: a(n) = n * mu(n), where mu is the Möbius function A008683.

The programs for A055615, the canonical program `A055615.P8993130195977213181` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055615 has offset 1).

The definition of A055615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055615.P8993130195977213181

`(n+1)*A008683(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A055615

/-- `(n+1)*A008683(n+1)` -/
def P8993130195977213181.Spec : Prop :=
  ∀ n, P8993130195977213181.a n = A055615 (n + 1)

theorem P8993130195977213181.correct : P8993130195977213181.Spec := by
  intro n
  simp only [A055615, Nat.add_sub_cancel]

end A055615

/-! ## A055615.P13822493314317423177

`(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)`
-/

namespace A055615.P13822493314317423177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2)

end

end A055615.P13822493314317423177

namespace A055615

/-- `(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)` -/
def P13822493314317423177.Spec : Prop :=
  ∀ n, P13822493314317423177.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P6294735768154789299

`A062004(n+1)/2`
-/

namespace A055615.P6294735768154789299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / 2

end

end A055615.P6294735768154789299

namespace A055615

/-- `A062004(n+1)/2` -/
def P6294735768154789299.Spec : Prop :=
  ∀ n, P6294735768154789299.a n = (A055615 (n + 1) : ℚ)

end A055615

/-! ## A055615.P4988507123854301603

`∑{d}[n+1, A046692(#)]`
-/

namespace A055615.P4988507123854301603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d

end

end A055615.P4988507123854301603

namespace A055615

/-- `∑{d}[n+1, A046692(#)]` -/
def P4988507123854301603.Spec : Prop :=
  ∀ n, P4988507123854301603.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P3413637672049739015

`A061669(n+1)-(n+1)`
-/

namespace A055615.P3413637672049739015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1) - (n + 1 : ℤ)

end

end A055615.P3413637672049739015

namespace A055615

/-- `A061669(n+1)-(n+1)` -/
def P3413637672049739015.Spec : Prop :=
  ∀ n, P3413637672049739015.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P18291586997397486353

`A334657(n+1)/(n+1)`
-/

namespace A055615.P18291586997397486353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334657 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A055615.P18291586997397486353

namespace A055615

/-- `A334657(n+1)/(n+1)` -/
def P18291586997397486353.Spec : Prop :=
  ∀ n, P18291586997397486353.a n = (A055615 (n + 1) : ℚ)

end A055615

/-! ## A055615.P5001266418587876581

`A334659(n+1)%(n+2)`
-/

namespace A055615.P5001266418587876581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334659 (n + 1)) (n + 2 : ℤ)

end

end A055615.P5001266418587876581

namespace A055615

/-- `A334659(n+1)%(n+2)` -/
def P5001266418587876581.Spec : Prop :=
  ∀ n, P5001266418587876581.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P6501278403392557200

`A261869(n)+a(n-1)` with `a(0)=1`
-/

namespace A055615.P6501278403392557200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261869 n + a (n - 1)

end

end A055615.P6501278403392557200

namespace A055615

/-- `A261869(n)+a(n-1)` -/
def P6501278403392557200.Spec : Prop :=
  ∀ n, P6501278403392557200.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P13893630695031022886

`(n+1)*(A007423(n+1)-1)`
-/

namespace A055615.P13893630695031022886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007423 (n + 1) - 1)

end

end A055615.P13893630695031022886

namespace A055615

/-- `(n+1)*(A007423(n+1)-1)` -/
def P13893630695031022886.Spec : Prop :=
  ∀ n, P13893630695031022886.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P7940370629193522192

`(n+1)*(A080847(n+1)-2)`
-/

namespace A055615.P7940370629193522192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A080847 (n + 1) - 2)

end

end A055615.P7940370629193522192

namespace A055615

/-- `(n+1)*(A080847(n+1)-2)` -/
def P7940370629193522192.Spec : Prop :=
  ∀ n, P7940370629193522192.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P6408623165043523511

`A080848(n+1)-2*(n+1)`
-/

namespace A055615.P6408623165043523511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080848 (n + 1) - (2 * (n + 1) : ℤ)

end

end A055615.P6408623165043523511

namespace A055615

/-- `A080848(n+1)-2*(n+1)` -/
def P6408623165043523511.Spec : Prop :=
  ∀ n, P6408623165043523511.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P4663082747264329183

`(n+1)*(2-A129979(n+1))`
-/

namespace A055615.P4663082747264329183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A129979 (n + 1))

end

end A055615.P4663082747264329183

namespace A055615

/-- `(n+1)*(2-A129979(n+1))` -/
def P4663082747264329183.Spec : Prop :=
  ∀ n, P4663082747264329183.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P12220807607688857212

`(n+1)*(A231821(n+1)-3)`
-/

namespace A055615.P12220807607688857212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A231821 (n + 1) - 3)

end

end A055615.P12220807607688857212

namespace A055615

/-- `(n+1)*(A231821(n+1)-3)` -/
def P12220807607688857212.Spec : Prop :=
  ∀ n, P12220807607688857212.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P3200677627989197829

`(n+1)*A162512(n+1)%2`
-/

namespace A055615.P3200677627989197829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A162512 (n + 1)) 2

end

end A055615.P3200677627989197829

namespace A055615

/-- `(n+1)*A162512(n+1)%2` -/
def P3200677627989197829.Spec : Prop :=
  ∀ n, P3200677627989197829.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P13537888222178906996

`(n+1)*(A076369(n+1)-(n+1))`
-/

namespace A055615.P13537888222178906996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076369 (n + 1) - (n + 1 : ℤ))

end

end A055615.P13537888222178906996

namespace A055615

/-- `(n+1)*(A076369(n+1)-(n+1))` -/
def P13537888222178906996.Spec : Prop :=
  ∀ n, P13537888222178906996.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P9348728369032975449

`∑{d}[n+1, #*A328722((n+1)/#)]`
-/

namespace A055615.P9348728369032975449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055615.P9348728369032975449

namespace A055615

/-- `∑{d}[n+1, #*A328722((n+1)/#)]` -/
def P9348728369032975449.Spec : Prop :=
  ∀ n, P9348728369032975449.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P17913529782237656227

`A000034(n)*A326937(n+1)`
-/

namespace A055615.P17913529782237656227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A326937 (n + 1)

end

end A055615.P17913529782237656227

namespace A055615

/-- `A000034(n)*A326937(n+1)` -/
def P17913529782237656227.Spec : Prop :=
  ∀ n, P17913529782237656227.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P11613330250748171020

`A133186(n)*A326937(n+1)`
-/

namespace A055615.P11613330250748171020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 n * A326937 (n + 1)

end

end A055615.P11613330250748171020

namespace A055615

/-- `A133186(n)*A326937(n+1)` -/
def P11613330250748171020.Spec : Prop :=
  ∀ n, P11613330250748171020.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P5446186035397506545

`A008966(n+1)*A062953(n+1)`
-/

namespace A055615.P5446186035397506545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A062953 (n + 1)

end

end A055615.P5446186035397506545

namespace A055615

/-- `A008966(n+1)*A062953(n+1)` -/
def P5446186035397506545.Spec : Prop :=
  ∀ n, P5446186035397506545.a n = A055615 (n + 1)

end A055615

/-! ## A055615.P5997371130589086726

`A048671(n+1)*A140664(n+1)`
-/

namespace A055615.P5997371130589086726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A140664 (n + 1)

end

end A055615.P5997371130589086726

namespace A055615

/-- `A048671(n+1)*A140664(n+1)` -/
def P5997371130589086726.Spec : Prop :=
  ∀ n, P5997371130589086726.a n = A055615 (n + 1)

end A055615

/-!
# A055616: Numbers, with an even number of digits, that are the sum of the squares of their two halves (leading zeros allowed only for the second half).

The programs for A055616, there is no canonical definition to state claims against.
-/

/-! ## A055616.P13544217151354032001

`A101311(lt[A209557(n+1), A131201(n)])`
-/

namespace A055616.P13544217151354032001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A055616.P13544217151354032001

/-!
# A055620: Digits of an idempotent 6-adic number.

The programs for A055620, there is no canonical definition to state claims against.
-/

/-! ## A055620.P6755266128313553912

`5-A054869(A028310(n))`
-/

namespace A055620.P6755266128313553912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A054869 (A028310 n).toNat

end

end A055620.P6755266128313553912

/-! ## A055620.P16982918130105631702

`5-A054869(A000007(n)+n)`
-/

namespace A055620.P16982918130105631702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A054869 (A000007 n + (n : ℤ)).toNat

end

end A055620.P16982918130105631702

/-! ## A055620.P1042210548991997361

`A000038(n)+5-A054869(n)`
-/

namespace A055620.P1042210548991997361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (5 - A054869 n)

end

end A055620.P1042210548991997361

/-! ## A055620.P674234017631521247

`5-A054869(or(n, A000007(n)))`
-/

namespace A055620.P674234017631521247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A054869 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A055620.P674234017631521247

/-! ## A055620.P15827108127210944069

`A061007(A001358(n+1))+5-A054869(n)`
-/

namespace A055620.P15827108127210944069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A001358 (n + 1)).toNat + (5 - A054869 n)

end

end A055620.P15827108127210944069

/-! ## A055620.P12297119923418199594

`A061007(A017317(n))+5-A054869(n)`
-/

namespace A055620.P12297119923418199594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A017317 n).toNat + (5 - A054869 n)

end

end A055620.P12297119923418199594

/-! ## A055620.P2988899321925554667

`5-A054869(A137735(n²))`
-/

namespace A055620.P2988899321925554667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A054869 (A137735 (n ^ 2)).toNat

end

end A055620.P2988899321925554667

/-! ## A055620.P9939959268955323517

`5-and(A054869(n), A216093(n+1))`
-/

namespace A055620.P9939959268955323517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.land (A054869 n) (A216093 (n + 1))

end

end A055620.P9939959268955323517

/-! ## A055620.P11177770560955788967

`A061007((n+2)²)+5-A054869(n)`
-/

namespace A055620.P11177770560955788967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 ((n + 2) ^ 2) + (5 - A054869 n)

end

end A055620.P11177770560955788967

/-! ## A055620.P17278778460394322635

`A091663(A151878(n))-A054869(n)`
-/

namespace A055620.P17278778460394322635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 (A151878 n).toNat - A054869 n

end

end A055620.P17278778460394322635

/-!
# A055621: Number of covers of an unlabeled n-set.

The programs for A055621, there is no canonical definition to state claims against.
-/

/-! ## A055621.P15433982125891090069

`A003181(n)/2`
-/

namespace A055621.P15433982125891090069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003181 n : ℚ) / 2

end

end A055621.P15433982125891090069

/-!
# A055622: Minimum solution for tri-color tower of Hanoi, restricted so like colors can't be together.

The programs for A055622, there is no canonical definition to state claims against.
-/

/-! ## A055622.P1723914267491378622

`or(A056558(A118870(2*n)), A131056(n+1))`
-/

namespace A055622.P1723914267491378622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056558 (A118870 (2 * n)).toNat) (A131056 (n + 1))

end

end A055622.P1723914267491378622

/-! ## A055622.P17096634322746999429

`A334228(A079969(n+1))`
-/

namespace A055622.P17096634322746999429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334228 (A079969 (n + 1)).toNat

end

end A055622.P17096634322746999429

/-! ## A055622.P4975927628648042151

`A334228(A236559(n)+1)`
-/

namespace A055622.P4975927628648042151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334228 (A236559 n + 1).toNat

end

end A055622.P4975927628648042151

/-!
# A055623: First occurrence of run of primes congruent to 1 mod 4 of exactly length n.

The programs for A055623, there is no canonical definition to state claims against.
-/

/-! ## A055623.P13698735369881062274

`A057624((n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A055623.P13698735369881062274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057624 ((n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A055623.P13698735369881062274

/-!
# A055628: Primes p whose period of the reciprocal 1/p is (p-1)/3.

The programs for A055628, there is no canonical definition to state claims against.
-/

/-! ## A055628.P10134144611705619962

`A045319(eq[3, A060370(n+1)])`
-/

namespace A055628.P10134144611705619962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055628.P10134144611705619962

/-! ## A055628.P6564810875234090494

`A045344(eq[3, A060370(n+1)])`
-/

namespace A055628.P6564810875234090494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055628.P6564810875234090494

/-! ## A055628.P15523598954730340432

`A065091(eq[3, A060370(n+1)])`
-/

namespace A055628.P15523598954730340432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055628.P15523598954730340432

/-! ## A055628.P15153181599909851688

`A004139(eq[3, A060370(n+2)])`
-/

namespace A055628.P15153181599909851688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055628.P15153181599909851688

/-! ## A055628.P7285930030523001462

`A000040(eq[3, A060370(n+1)]+1)`
-/

namespace A055628.P7285930030523001462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055628.P7285930030523001462

/-!
# A055630: Table T(k,m) = k^2 + m read by antidiagonals.

The programs for A055630, the canonical program `A055630.P16080195491770059270` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055630 has offset 0).

The definition of A055630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055630.P13665245548523418136

`A002262(n)+(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A055630.P13665245548523418136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A055630.P13665245548523418136

namespace A055630

/-- `A002262(n)+(n+1-C(comp[∑[n]]-n, 2))²` -/
def P13665245548523418136.Spec : Prop :=
  ∀ n, P13665245548523418136.a n = A055630 n

end A055630

/-! ## A055630.P16080195491770059270

`A002262(n)+A025581(n)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055630

/-- `A002262(n)+A025581(n)²` -/
def P16080195491770059270.Spec : Prop :=
  ∀ n, P16080195491770059270.a n = A055630 n

theorem P16080195491770059270.correct : P16080195491770059270.Spec := by
  intro n
  simp only [A055630]

end A055630

/-! ## A055630.P1281187968731364328

`A095831(n+1)+A002262(n)`
-/

namespace A055630.P1281187968731364328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A002262 n

end

end A055630.P1281187968731364328

namespace A055630

/-- `A095831(n+1)+A002262(n)` -/
def P1281187968731364328.Spec : Prop :=
  ∀ n, P1281187968731364328.a n = A055630 n

end A055630

/-! ## A055630.P15459089631764864519

`A064801(n+1)-A105020(n)`
-/

namespace A055630.P15459089631764864519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A105020 n

end

end A055630.P15459089631764864519

namespace A055630

/-- `A064801(n+1)-A105020(n)` -/
def P15459089631764864519.Spec : Prop :=
  ∀ n, P15459089631764864519.a n = A055630 n

end A055630

/-! ## A055630.P6337229912826977027

`A095832(n+1)-A114327(n)`
-/

namespace A055630.P6337229912826977027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) - A114327 n

end

end A055630.P6337229912826977027

namespace A055630

/-- `A095832(n+1)-A114327(n)` -/
def P6337229912826977027.Spec : Prop :=
  ∀ n, P6337229912826977027.a n = A055630 n

end A055630

/-! ## A055630.P11314718302888041057

`log2(A059268(n))+A025581(n)²`
-/

namespace A055630.P11314718302888041057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) + (A025581 n ^ 2 : ℝ)

end

end A055630.P11314718302888041057

namespace A055630

/-- `log2(A059268(n))+A025581(n)²` -/
def P11314718302888041057.Spec : Prop :=
  ∀ n, P11314718302888041057.a n = (A055630 n : ℝ)

end A055630

/-! ## A055630.P3500745255516155738

`A002262(n)+log2(A130321(n))²`
-/

namespace A055630.P3500745255516155738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℝ) + Real.logb 2 (A130321 n : ℝ) ^ 2

end

end A055630.P3500745255516155738

namespace A055630

/-- `A002262(n)+log2(A130321(n))²` -/
def P3500745255516155738.Spec : Prop :=
  ∀ n, P3500745255516155738.a n = (A055630 n : ℝ)

end A055630

/-! ## A055630.P15436770659583134400

`A002262(n)+∑[A167407(n)]²`
-/

namespace A055630.P15436770659583134400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A055630.P15436770659583134400

namespace A055630

/-- `A002262(n)+∑[A167407(n)]²` -/
def P15436770659583134400.Spec : Prop :=
  ∀ n, P15436770659583134400.a n = A055630 n

end A055630

/-! ## A055630.P15239463628718264238

`A003056(n)²-2*A087401(n)`
-/

namespace A055630.P15239463628718264238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - 2 * A087401 n

end

end A055630.P15239463628718264238

namespace A055630

/-- `A003056(n)²-2*A087401(n)` -/
def P15239463628718264238.Spec : Prop :=
  ∀ n, P15239463628718264238.a n = A055630 n

end A055630

/-! ## A055630.P4982399063537530929

`A002262(n)+val(A036561(n), 2)²`
-/

namespace A055630.P4982399063537530929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (SequenceMachineLib.valuation (A036561 n).toNat 2 ^ 2 : ℤ)

end

end A055630.P4982399063537530929

namespace A055630

/-- `A002262(n)+val(A036561(n), 2)²` -/
def P4982399063537530929.Spec : Prop :=
  ∀ n, P4982399063537530929.a n = A055630 n

end A055630

/-! ## A055630.P9950666706813752457

`A025581(n)²+n-A057944(n)`
-/

namespace A055630.P9950666706813752457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2 + ((n : ℤ) - A057944 n)

end

end A055630.P9950666706813752457

namespace A055630

/-- `A025581(n)²+n-A057944(n)` -/
def P9950666706813752457.Spec : Prop :=
  ∀ n, P9950666706813752457.a n = A055630 n

end A055630

/-! ## A055630.P15604524141856852160

`log2(A059268(n))+log2(A130321(n))²`
-/

namespace A055630.P15604524141856852160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) + Real.logb 2 (A130321 n : ℝ) ^ 2

end

end A055630.P15604524141856852160

namespace A055630

/-- `log2(A059268(n))+log2(A130321(n))²` -/
def P15604524141856852160.Spec : Prop :=
  ∀ n, P15604524141856852160.a n = (A055630 n : ℝ)

end A055630

/-! ## A055630.P10854141741181966356

`A215630(n+1)-A081493(n+1)`
-/

namespace A055630.P10854141741181966356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A081493 (n + 1)

end

end A055630.P10854141741181966356

namespace A055630

/-- `A215630(n+1)-A081493(n+1)` -/
def P10854141741181966356.Spec : Prop :=
  ∀ n, P10854141741181966356.a n = A055630 n

end A055630

/-! ## A055630.P7192260525137158342

`A095831(n+1)+n-A057944(n)`
-/

namespace A055630.P7192260525137158342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + ((n : ℤ) - A057944 n)

end

end A055630.P7192260525137158342

namespace A055630

/-- `A095831(n+1)+n-A057944(n)` -/
def P7192260525137158342.Spec : Prop :=
  ∀ n, P7192260525137158342.a n = A055630 n

end A055630

/-! ## A055630.P949724594744023286

`A002262(n)+(1-A004736(n+1))²`
-/

namespace A055630.P949724594744023286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (1 - A004736 (n + 1)) ^ 2

end

end A055630.P949724594744023286

namespace A055630

/-- `A002262(n)+(1-A004736(n+1))²` -/
def P949724594744023286.Spec : Prop :=
  ∀ n, P949724594744023286.a n = A055630 n

end A055630

/-! ## A055630.P12575925807075110033

`A002260(n+1)+A025581(n)²-1`
-/

namespace A055630.P12575925807075110033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A025581 n ^ 2 - 1)

end

end A055630.P12575925807075110033

namespace A055630

/-- `A002260(n+1)+A025581(n)²-1` -/
def P12575925807075110033.Spec : Prop :=
  ∀ n, P12575925807075110033.a n = A055630 n

end A055630

/-! ## A055630.P10633018567574734769

`A002260(n+1)+A095831(n+1)-1`
-/

namespace A055630.P10633018567574734769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A095831 (n + 1) - 1)

end

end A055630.P10633018567574734769

namespace A055630

/-- `A002260(n+1)+A095831(n+1)-1` -/
def P10633018567574734769.Spec : Prop :=
  ∀ n, P10633018567574734769.a n = A055630 n

end A055630

/-! ## A055630.P1540755918569903660

`(A004736(n+1)-1)²+A002260(n+1)-1`
-/

namespace A055630.P1540755918569903660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) ^ 2 + (A002260 (n + 1) - 1)

end

end A055630.P1540755918569903660

namespace A055630

/-- `(A004736(n+1)-1)²+A002260(n+1)-1` -/
def P1540755918569903660.Spec : Prop :=
  ∀ n, P1540755918569903660.a n = A055630 n

end A055630

/-! ## A055630.P3111701217738798303

`A057554(2*n+1)+A057554(2*(n+1))²`
-/

namespace A055630.P3111701217738798303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * n + 1) + A057554 (2 * (n + 1)) ^ 2

end

end A055630.P3111701217738798303

namespace A055630

/-- `A057554(2*n+1)+A057554(2*(n+1))²` -/
def P3111701217738798303.Spec : Prop :=
  ∀ n, P3111701217738798303.a n = A055630 n

end A055630

/-! ## A055630.P14449797272332037626

`A002262(n)+(A000217(round(sqrt(2*n+1)))-(n+1))²`
-/

namespace A055630.P14449797272332037626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ)) ^ 2

end

end A055630.P14449797272332037626

namespace A055630

/-- `A002262(n)+(A000217(round(sqrt(2*n+1)))-(n+1))²` -/
def P14449797272332037626.Spec : Prop :=
  ∀ n, P14449797272332037626.a n = A055630 n

end A055630

/-!
# A055631: Sum of Euler's totient function phi of distinct primes dividing n.

The programs for A055631, the canonical program `A055631.P8885936990558110793` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055631 has offset 1).

The definition of A055631 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055631.P8885936990558110793

`A008472(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055631

/-- `A008472(n+1)-A001221(n+1)` -/
def P8885936990558110793.Spec : Prop :=
  ∀ n, P8885936990558110793.a n = A055631 (n + 1)

theorem P8885936990558110793.correct : P8885936990558110793.Spec := by
  intro n
  simp only [A055631, Nat.add_sub_cancel]

end A055631

/-! ## A055631.P2255315850085349544

`∑{p}[n+1, #-1]`
-/

namespace A055631.P2255315850085349544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)

end

end A055631.P2255315850085349544

namespace A055631

/-- `∑{p}[n+1, #-1]` -/
def P2255315850085349544.Spec : Prop :=
  ∀ n, P2255315850085349544.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P17548126413970921507

`abs(∑{p}[n+1, n%-#])`
-/

namespace A055631.P17548126413970921507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (n : ℤ) (-(p : ℤ))|

end

end A055631.P17548126413970921507

namespace A055631

/-- `abs(∑{p}[n+1, n%-#])` -/
def P17548126413970921507.Spec : Prop :=
  ∀ n, P17548126413970921507.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P8183255335490981367

`∑{p}[n+1, #+n]%(n+1)`
-/

namespace A055631.P8183255335490981367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (p + n)) % (n + 1)

end

end A055631.P8183255335490981367

namespace A055631

/-- `∑{p}[n+1, #+n]%(n+1)` -/
def P8183255335490981367.Spec : Prop :=
  ∀ n, (P8183255335490981367.a n : ℤ) = A055631 (n + 1)

end A055631

/-! ## A055631.P2692719490894809756

`abs(∑{p}[2*n-(n-1), 1-#])`
-/

namespace A055631.P2692719490894809756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))|

end

end A055631.P2692719490894809756

namespace A055631

/-- `abs(∑{p}[2*n-(n-1), 1-#])` -/
def P2692719490894809756.Spec : Prop :=
  ∀ n, P2692719490894809756.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P10583822346662385788

`-∑{p}[2*n-(n-1), 1-#]`
-/

namespace A055631.P10583822346662385788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ)))

end

end A055631.P10583822346662385788

namespace A055631

/-- `-∑{p}[2*n-(n-1), 1-#]` -/
def P10583822346662385788.Spec : Prop :=
  ∀ n, P10583822346662385788.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P17432874357835984999

`∑{d}[n+1, A166260(#)]`
-/

namespace A055631.P17432874357835984999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166260 d

end

end A055631.P17432874357835984999

namespace A055631

/-- `∑{d}[n+1, A166260(#)]` -/
def P17432874357835984999.Spec : Prop :=
  ∀ n, P17432874357835984999.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P5909850289068993095

`A332775(n+1)-(n+1)`
-/

namespace A055631.P5909850289068993095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332775 (n + 1) - (n + 1 : ℤ)

end

end A055631.P5909850289068993095

namespace A055631

/-- `A332775(n+1)-(n+1)` -/
def P5909850289068993095.Spec : Prop :=
  ∀ n, P5909850289068993095.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P17018009750245331665

`A059975(A007947(n+1))`
-/

namespace A055631.P17018009750245331665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (A007947 (n + 1)).toNat

end

end A055631.P17018009750245331665

namespace A055631

/-- `A059975(A007947(n+1))` -/
def P17018009750245331665.Spec : Prop :=
  ∀ n, P17018009750245331665.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P17576830276176013206

`A351619(n+1)+A005069(n+1)`
-/

namespace A055631.P17576830276176013206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351619 (n + 1) + A005069 (n + 1)

end

end A055631.P17576830276176013206

namespace A055631

/-- `A351619(n+1)+A005069(n+1)` -/
def P17576830276176013206.Spec : Prop :=
  ∀ n, P17576830276176013206.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P15387620540531479605

`A008474(n+1)-A080256(n+1)`
-/

namespace A055631.P15387620540531479605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A080256 (n + 1)

end

end A055631.P15387620540531479605

namespace A055631

/-- `A008474(n+1)-A080256(n+1)` -/
def P15387620540531479605.Spec : Prop :=
  ∀ n, P15387620540531479605.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P18304266958593685052

`A074372(n+1)-A083399(n+1)`
-/

namespace A055631.P18304266958593685052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) - A083399 (n + 1)

end

end A055631.P18304266958593685052

namespace A055631

/-- `A074372(n+1)-A083399(n+1)` -/
def P18304266958593685052.Spec : Prop :=
  ∀ n, P18304266958593685052.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P9733744866878992095

`A075653(n+1)-A229109(n+1)`
-/

namespace A055631.P9733744866878992095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A229109 (n + 1)

end

end A055631.P9733744866878992095

namespace A055631

/-- `A075653(n+1)-A229109(n+1)` -/
def P9733744866878992095.Spec : Prop :=
  ∀ n, P9733744866878992095.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P15553674314531984942

`A349215(n+1)-A000005(n+1)`
-/

namespace A055631.P15553674314531984942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) - A000005 (n + 1)

end

end A055631.P15553674314531984942

namespace A055631

/-- `A349215(n+1)-A000005(n+1)` -/
def P15553674314531984942.Spec : Prop :=
  ∀ n, P15553674314531984942.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P10188847275347890471

`A000203(n+1)-A380441(n+1)`
-/

namespace A055631.P10188847275347890471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A380441 (n + 1)

end

end A055631.P10188847275347890471

namespace A055631

/-- `A000203(n+1)-A380441(n+1)` -/
def P10188847275347890471.Spec : Prop :=
  ∀ n, P10188847275347890471.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P15399679791399174229

`A034387(n+1)-A349555(n+1)`
-/

namespace A055631.P15399679791399174229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A349555 (n + 1)

end

end A055631.P15399679791399174229

namespace A055631

/-- `A034387(n+1)-A349555(n+1)` -/
def P15399679791399174229.Spec : Prop :=
  ∀ n, P15399679791399174229.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P9371745564338095075

`A378993(n+1)-A076694(n+1)`
-/

namespace A055631.P9371745564338095075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) - A076694 (n + 1)

end

end A055631.P9371745564338095075

namespace A055631

/-- `A378993(n+1)-A076694(n+1)` -/
def P9371745564338095075.Spec : Prop :=
  ∀ n, P9371745564338095075.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P7181425503318320681

`A109606(n+1)-A364933(n+1)`
-/

namespace A055631.P7181425503318320681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A364933 (n + 1)

end

end A055631.P7181425503318320681

namespace A055631

/-- `A109606(n+1)-A364933(n+1)` -/
def P7181425503318320681.Spec : Prop :=
  ∀ n, P7181425503318320681.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P1733884409093413131

`A332775(n+1)%A000027(n+1)`
-/

namespace A055631.P1733884409093413131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332775 (n + 1)) (A000027 (n + 1))

end

end A055631.P1733884409093413131

namespace A055631

/-- `A332775(n+1)%A000027(n+1)` -/
def P1733884409093413131.Spec : Prop :=
  ∀ n, P1733884409093413131.a n = A055631 (n + 1)

end A055631

/-! ## A055631.P7364653063172015996

`A074372(n+1)-(A001221(n+1)+1)`
-/

namespace A055631.P7364653063172015996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) - (A001221 (n + 1) + 1)

end

end A055631.P7364653063172015996

namespace A055631

/-- `A074372(n+1)-(A001221(n+1)+1)` -/
def P7364653063172015996.Spec : Prop :=
  ∀ n, P7364653063172015996.a n = A055631 (n + 1)

end A055631

/-!
# A055632: Sum of totient function of primes dividing n is a prime.

The programs for A055632, the canonical program `A055632.P7552695491409250947` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055632 has offset 1).

The definition of A055632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055632.P16801826950786305034

`eq[1, A001222(A000007(n)+∑{p}[n+1, #-1])]+1`
-/

namespace A055632.P16801826950786305034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000007 n + ∑ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055632.P16801826950786305034

namespace A055632

/-- `eq[1, A001222(A000007(n)+∑{p}[n+1, #-1])]+1` -/
def P16801826950786305034.Spec : Prop :=
  ∀ n, (P16801826950786305034.a n : ℤ) = A055632 (n + 1)

end A055632

/-! ## A055632.P7552695491409250947

`eq[∑{p}[n, #-1], A007918(∑{p}[n, #-1])]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055632

/-- `eq[∑{p}[n, #-1], A007918(∑{p}[n, #-1])]` -/
def P7552695491409250947.Spec : Prop :=
  ∀ n, (P7552695491409250947.a n : ℤ) = A055632 (n + 1)

theorem P7552695491409250947.correct : P7552695491409250947.Spec := by
  intro n
  simp only [A055632, Nat.add_sub_cancel]

end A055632

/-! ## A055632.P14696951665780338186

`eq[1, A018783(∑{p}[n, A000010(#)])]`
-/

namespace A055632.P14696951665780338186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (∑ p ∈ Nat.primeFactors (f3 n), A000010 p).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055632.P14696951665780338186

namespace A055632

/-- `eq[1, A018783(∑{p}[n, A000010(#)])]` -/
def P14696951665780338186.Spec : Prop :=
  ∀ n, (P14696951665780338186.a n : ℤ) = A055632 (n + 1)

end A055632

/-! ## A055632.P14727823528113771620

`eq[2, A000005(A055631(A233583(n+1)))]`
-/

namespace A055632.P14727823528113771620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055631 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055632.P14727823528113771620

namespace A055632

/-- `eq[2, A000005(A055631(A233583(n+1)))]` -/
def P14727823528113771620.Spec : Prop :=
  ∀ n, (P14727823528113771620.a n : ℤ) = A055632 (n + 1)

end A055632

/-! ## A055632.P2506543205584784691

`eq[2, A298423(A055631(n+1))]+1`
-/

namespace A055632.P2506543205584784691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298423 (A055631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055632.P2506543205584784691

namespace A055632

/-- `eq[2, A298423(A055631(n+1))]+1` -/
def P2506543205584784691.Spec : Prop :=
  ∀ n, (P2506543205584784691.a n : ℤ) = A055632 (n + 1)

end A055632

/-!
# A055633: Number of nested algorithms a(m,n) where m is the number of items in a contaminated group and n is the total number of unclassified items (0 <= m <= n) (values read by antidiagonals).

The programs for A055633, there is no canonical definition to state claims against.
-/

/-! ## A055633.P6831967240764309624

`gcd(A024417(A287892(n)), A119346(n))`
-/

namespace A055633.P6831967240764309624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024417 (A287892 n).toNat) (A119346 n)

end

end A055633.P6831967240764309624

/-! ## A055633.P11095556935559663267

`A171873(A293232(n+1)-A193592(n))`
-/

namespace A055633.P11095556935559663267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171873 (A293232 (n + 1) - A193592 n).toNat

end

end A055633.P11095556935559663267

/-! ## A055633.P6419442212442746837

`A139625(A229534(n+4)+A004526(n))`
-/

namespace A055633.P6419442212442746837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139625 (A229534 (n + 4) + A004526 n).toNat

end

end A055633.P6419442212442746837

/-! ## A055633.P12092934711439916044

`A171873(A182850(n+1)^A053615(n))`
-/

namespace A055633.P12092934711439916044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171873 (SequenceMachineLib.roundAway ((A182850 (n + 1) : ℚ) ^ (A053615 n : ℤ))).toNat

end

end A055633.P12092934711439916044

/-! ## A055633.P330028626240294589

`A171873(A127818(n+1)%A162425(n))`
-/

namespace A055633.P330028626240294589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171873 (Int.tmod (A127818 (n + 1)) (A162425 n)).toNat

end

end A055633.P330028626240294589

/-!
# A055634: 2-adic factorial function.

The programs for A055634, the canonical program `A055634.P12590059432779507175` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055634 has offset 0).

The definition of A055634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055634.P12590059432779507175

`(-1)^n*n!/A037223(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055634

/-- `(-1)^n*n!/A037223(n)` -/
def P12590059432779507175.Spec : Prop :=
  ∀ n, P12590059432779507175.a n = (A055634 n : ℚ)

end A055634

/-! ## A055634.P6600675710675471827

`-∏[-n^(n%2)]`
-/

namespace A055634.P6600675710675471827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055634.P6600675710675471827

namespace A055634

/-- `-∏[-n^(n%2)]` -/
def P6600675710675471827.Spec : Prop :=
  ∀ n, P6600675710675471827.a n = A055634 n

end A055634

/-! ## A055634.P8853847676186783005

`-∏[-n^and(1, n)]`
-/

namespace A055634.P8853847676186783005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055634.P8853847676186783005

namespace A055634

/-- `-∏[-n^and(1, n)]` -/
def P8853847676186783005.Spec : Prop :=
  ∀ n, P8853847676186783005.a n = A055634 n

end A055634

/-! ## A055634.P13159173262064034987

`∏[or(-n, -a(n-1))]` with `a(0)=1`
-/

namespace A055634.P13159173262064034987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (-(n : ℤ)) (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055634.P13159173262064034987

namespace A055634

/-- `∏[or(-n, -a(n-1))]` -/
def P13159173262064034987.Spec : Prop :=
  ∀ n, P13159173262064034987.a n = A055634 n

end A055634

/-! ## A055634.P16157711681032616760

`Δ[(n-1)*a(n-2)]` with `a(0)=-1, a(1)=0`
-/

namespace A055634.P16157711681032616760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055634.P16157711681032616760

namespace A055634

/-- `Δ[(n-1)*a(n-2)]` -/
def P16157711681032616760.Spec : Prop :=
  ∀ n, P16157711681032616760.a n = A055634 n

end A055634

/-! ## A055634.P4380446363449611438

`(n-∑[(-1)^n])*a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A055634.P4380446363449611438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 2)

end

end A055634.P4380446363449611438

namespace A055634

/-- `(n-∑[(-1)^n])*a(n-2)` -/
def P4380446363449611438.Spec : Prop :=
  ∀ n, P4380446363449611438.a n = A055634 n

end A055634

/-! ## A055634.P3504534687358087643

`a(n-2)*∑[a(n-2)²-a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A055634.P3504534687358087643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055634.P3504534687358087643

namespace A055634

/-- `a(n-2)*∑[a(n-2)²-a(n-2)]` -/
def P3504534687358087643.Spec : Prop :=
  ∀ n, P3504534687358087643.a n = A055634 n

end A055634

/-! ## A055634.P7608201949702484453

`Δ[-A123023(n)]`
-/

namespace A055634.P7608201949702484453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055634.P7608201949702484453

namespace A055634

/-- `Δ[-A123023(n)]` -/
def P7608201949702484453.Spec : Prop :=
  ∀ n, P7608201949702484453.a n = A055634 n

end A055634

/-! ## A055634.P3161532717827813993

`Δ[A123022(n+3)]`
-/

namespace A055634.P3161532717827813993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123022 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055634.P3161532717827813993

namespace A055634

/-- `Δ[A123022(n+3)]` -/
def P3161532717827813993.Spec : Prop :=
  ∀ n, P3161532717827813993.a n = A055634 n

end A055634

/-! ## A055634.P13021224020359903957

`-∏[-A093178(n)]`
-/

namespace A055634.P13021224020359903957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055634.P13021224020359903957

namespace A055634

/-- `-∏[-A093178(n)]` -/
def P13021224020359903957.Spec : Prop :=
  ∀ n, P13021224020359903957.a n = A055634 n

end A055634

/-! ## A055634.P12908250858131079569

`∏[abs(A289296(n))-n²]`
-/

namespace A055634.P12908250858131079569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289296 n| - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055634.P12908250858131079569

namespace A055634

/-- `∏[abs(A289296(n))-n²]` -/
def P12908250858131079569.Spec : Prop :=
  ∀ n, P12908250858131079569.a n = A055634 n

end A055634

/-! ## A055634.P8977055284417584510

`∏[A157128(A019426(n))]`
-/

namespace A055634.P8977055284417584510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A019426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055634.P8977055284417584510

namespace A055634

/-- `∏[A157128(A019426(n))]` -/
def P8977055284417584510.Spec : Prop :=
  ∀ n, P8977055284417584510.a n = A055634 n

end A055634

/-! ## A055634.P10160346600337652517

`A123023(n)-A123023(n+1)`
-/

namespace A055634.P10160346600337652517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n - A123023 (n + 1)

end

end A055634.P10160346600337652517

namespace A055634

/-- `A123023(n)-A123023(n+1)` -/
def P10160346600337652517.Spec : Prop :=
  ∀ n, P10160346600337652517.a n = A055634 n

end A055634

/-!
# A055635: Smallest number that can be expressed as the sum of distinct Lucas numbers (A000204) in exactly n ways.

The programs for A055635, there is no canonical definition to state claims against.
-/

/-! ## A055635.P7098592107336904484

`A013583(n+1)+floor(A013583(n+1)/ϕ²)`
-/

namespace A055635.P7098592107336904484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013583 (n + 1) + ⌊(A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2⌋

end

end A055635.P7098592107336904484

/-! ## A055635.P6093077896728968262

`A013583(n+1)+round(A013583(C(n+1, n))/ϕ²)`
-/

namespace A055635.P6093077896728968262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013583 (n + 1) + SequenceMachineLib.roundAway ((A013583 (Nat.choose (n + 1) n) : ℝ) / Real.goldenRatio ^ 2)

end

end A055635.P6093077896728968262

/-! ## A055635.P13016235514309419074

`A013583(n+1)+round(A013583(A000027(n+1))/ϕ²)`
-/

namespace A055635.P13016235514309419074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013583 (n + 1) + SequenceMachineLib.roundAway ((A013583 (A000027 (n + 1)).toNat : ℝ) / Real.goldenRatio ^ 2)

end

end A055635.P13016235514309419074

/-! ## A055635.P5542327847794685199

`A013583(n+1)+round(A013583(A093178(2*n)+n)/ϕ²)`
-/

namespace A055635.P5542327847794685199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013583 (n + 1) + SequenceMachineLib.roundAway ((A013583 (A093178 (2 * n) + (n : ℤ)).toNat : ℝ) / Real.goldenRatio ^ 2)

end

end A055635.P5542327847794685199

/-! ## A055635.P1335705508986644475

`A013583(n+1)+round(A000007(n+1)+A013583(n+1)/ϕ²)`
-/

namespace A055635.P1335705508986644475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013583 (n + 1) + SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + (A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2)

end

end A055635.P1335705508986644475

/-! ## A055635.P4736349661460451504

`A013583(n+1)+A005843(round(A013583(n+1)/ϕ²))/2`
-/

namespace A055635.P4736349661460451504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013583 (n + 1) : ℚ) + (A005843 (SequenceMachineLib.roundAway ((A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2)).toNat : ℚ) / 2

end

end A055635.P4736349661460451504

/-! ## A055635.P8314945069738159279

`A083853(n+1)+A013583(n+1)`
-/

namespace A055635.P8314945069738159279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083853 (n + 1) + A013583 (n + 1)

end

end A055635.P8314945069738159279

/-! ## A055635.P7676741098001764216

`A083853(A000027(n+1))+floor(ϕ²*A083853(n+1))+1`
-/

namespace A055635.P7676741098001764216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083853 (A000027 (n + 1)).toNat + (⌊Real.goldenRatio ^ 2 * (A083853 (n + 1) : ℝ)⌋ + 1)

end

end A055635.P7676741098001764216

/-! ## A055635.P594663811001737835

`A050140(floor(ϕ²*A083853(n+1))+1-A083853(n+1))`
-/

namespace A055635.P594663811001737835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (⌊Real.goldenRatio ^ 2 * (A083853 (n + 1) : ℝ)⌋ + 1 - A083853 (n + 1)).toNat

end

end A055635.P594663811001737835

/-! ## A055635.P10891309225594053317

`A083853(n+1)+A004957(A083853(n+1))+A000007(n)`
-/

namespace A055635.P10891309225594053317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083853 (n + 1) + (A004957 (A083853 (n + 1)).toNat + A000007 n)

end

end A055635.P10891309225594053317

/-!
# A055636: Partial sums of A144494.

The programs for A055636, the canonical program `A055636.P15468858473462785345` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055636 has offset 1).

The definition of A055636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055636.P15468858473462785345

`∑[A144494(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055636

/-- `∑[A144494(n+1)]` -/
def P15468858473462785345.Spec : Prop :=
  ∀ n, P15468858473462785345.a n = A055636 (n + 1)

theorem P15468858473462785345.correct : P15468858473462785345.Spec := by
  intro n
  simp only [A055636, Nat.add_sub_cancel]

end A055636

/-! ## A055636.P2087473368035186886

`∑[C(∑{e}[n+1, #], A089026(n+1))]`
-/

namespace A055636.P2087473368035186886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) (A089026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P2087473368035186886

namespace A055636

/-- `∑[C(∑{e}[n+1, #], A089026(n+1))]` -/
def P2087473368035186886.Spec : Prop :=
  ∀ n, (P2087473368035186886.a n : ℤ) = A055636 (n + 1)

end A055636

/-! ## A055636.P5936987799110764644

`∑[∏{p}[n+1, C(#%n, #)]*A001222(n+1)]`
-/

namespace A055636.P5936987799110764644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P5936987799110764644

namespace A055636

/-- `∑[∏{p}[n+1, C(#%n, #)]*A001222(n+1)]` -/
def P5936987799110764644.Spec : Prop :=
  ∀ n, P5936987799110764644.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P15613820110232736538

`∑[A001222(A005451(n+1))]`
-/

namespace A055636.P15613820110232736538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P15613820110232736538

namespace A055636

/-- `∑[A001222(A005451(n+1))]` -/
def P15613820110232736538.Spec : Prop :=
  ∀ n, P15613820110232736538.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P11364352553773882747

`∑[A132349(A068794(n+1))]`
-/

namespace A055636.P11364352553773882747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132349 (A068794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P11364352553773882747

namespace A055636

/-- `∑[A132349(A068794(n+1))]` -/
def P11364352553773882747.Spec : Prop :=
  ∀ n, P11364352553773882747.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P11991525201163460282

`∑[A001222(A322820(n+1))]`
-/

namespace A055636.P11991525201163460282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P11991525201163460282

namespace A055636

/-- `∑[A001222(A322820(n+1))]` -/
def P11991525201163460282.Spec : Prop :=
  ∀ n, P11991525201163460282.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P14318425372769261075

`A144489(n+1)+A069812(n+1)`
-/

namespace A055636.P14318425372769261075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144489 (n + 1) + A069812 (n + 1)

end

end A055636.P14318425372769261075

namespace A055636

/-- `A144489(n+1)+A069812(n+1)` -/
def P14318425372769261075.Spec : Prop :=
  ∀ n, P14318425372769261075.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P1259199090665545539

`A022559(n+1)-A000720(n+1)`
-/

namespace A055636.P1259199090665545539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - A000720 (n + 1)

end

end A055636.P1259199090665545539

namespace A055636

/-- `A022559(n+1)-A000720(n+1)` -/
def P1259199090665545539.Spec : Prop :=
  ∀ n, P1259199090665545539.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P152550666166550122

`∑[A001222(n+1)]-A000720(n+1)`
-/

namespace A055636.P152550666166550122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A055636.P152550666166550122

namespace A055636

/-- `∑[A001222(n+1)]-A000720(n+1)` -/
def P152550666166550122.Spec : Prop :=
  ∀ n, P152550666166550122.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P3397622752067856293

`∑[A001222(n+1)-A010051(n+1)]`
-/

namespace A055636.P3397622752067856293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P3397622752067856293

namespace A055636

/-- `∑[A001222(n+1)-A010051(n+1)]` -/
def P3397622752067856293.Spec : Prop :=
  ∀ n, P3397622752067856293.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P4371959471872202424

`∑[A001222(n+1)]+1-A036234(n+1)`
-/

namespace A055636.P4371959471872202424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A036234 (n + 1))

end

end A055636.P4371959471872202424

namespace A055636

/-- `∑[A001222(n+1)]+1-A036234(n+1)` -/
def P4371959471872202424.Spec : Prop :=
  ∀ n, P4371959471872202424.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P14480562487754708834

`A062298(n+1)+∑[A001222(n+1)-1]`
-/

namespace A055636.P14480562487754708834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P14480562487754708834

namespace A055636

/-- `A062298(n+1)+∑[A001222(n+1)-1]` -/
def P14480562487754708834.Spec : Prop :=
  ∀ n, P14480562487754708834.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P13543162098843911562

`∑[A001222(n%(2-A000203(n+1))+1)]`
-/

namespace A055636.P13543162098843911562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (n : ℤ) (2 - A000203 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P13543162098843911562

namespace A055636

/-- `∑[A001222(n%(2-A000203(n+1))+1)]` -/
def P13543162098843911562.Spec : Prop :=
  ∀ n, P13543162098843911562.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P3942141937051498167

`∑[A001222(gcd(n+1, C(2, A000005(n+1))))]`
-/

namespace A055636.P3942141937051498167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd (n + 1) (Nat.choose 2 (A000005 (n + 1)).toNat))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P3942141937051498167

namespace A055636

/-- `∑[A001222(gcd(n+1, C(2, A000005(n+1))))]` -/
def P3942141937051498167.Spec : Prop :=
  ∀ n, P3942141937051498167.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P2019616183538203669

`∑[A001222(n+1)]+A065855(n+1)-n`
-/

namespace A055636.P2019616183538203669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A065855 (n + 1) - (n : ℤ))

end

end A055636.P2019616183538203669

namespace A055636

/-- `∑[A001222(n+1)]+A065855(n+1)-n` -/
def P2019616183538203669.Spec : Prop :=
  ∀ n, P2019616183538203669.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P11383909621430126787

`A022559(n+1)-∑[char[A000040(n+1)-1]]`
-/

namespace A055636.P11383909621430126787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055636.P11383909621430126787

namespace A055636

/-- `A022559(n+1)-∑[char[A000040(n+1)-1]]` -/
def P11383909621430126787.Spec : Prop :=
  ∀ n, P11383909621430126787.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P7388124871594165187

`A022559(n+1)-(∑[char[A006530(n+1)-1]]-1)`
-/

namespace A055636.P7388124871594165187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A055636.P7388124871594165187

namespace A055636

/-- `A022559(n+1)-(∑[char[A006530(n+1)-1]]-1)` -/
def P7388124871594165187.Spec : Prop :=
  ∀ n, P7388124871594165187.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P9743217722552673985

`∑[A001222(n+1)*A001222(A014673(n+1))]`
-/

namespace A055636.P9743217722552673985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (A014673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P9743217722552673985

namespace A055636

/-- `∑[A001222(n+1)*A001222(A014673(n+1))]` -/
def P9743217722552673985.Spec : Prop :=
  ∀ n, P9743217722552673985.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P2973622479378396224

`∑[A001222(n+1)*A001222(A085392(n+1))]`
-/

namespace A055636.P2973622479378396224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (A085392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P2973622479378396224

namespace A055636

/-- `∑[A001222(n+1)*A001222(A085392(n+1))]` -/
def P2973622479378396224.Spec : Prop :=
  ∀ n, P2973622479378396224.a n = A055636 (n + 1)

end A055636

/-! ## A055636.P9893552552551518758

`∑[A001222(n+1)*A001222(A087039(n+1))]`
-/

namespace A055636.P9893552552551518758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (A087039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P9893552552551518758

namespace A055636

/-- `∑[A001222(n+1)*A001222(A087039(n+1))]` -/
def P9893552552551518758.Spec : Prop :=
  ∀ n, P9893552552551518758.a n = A055636 (n + 1)

end A055636

/-!
# A055637: (n-1)!/n or 0 if n does not divide (n-1)!.

The programs for A055637, there is no canonical definition to state claims against.
-/

/-! ## A055637.P17269556833881937340

`A130706(A061006(n+1))*A226198(n+1)`
-/

namespace A055637.P17269556833881937340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A061006 (n + 1)).toNat * A226198 (n + 1)

end

end A055637.P17269556833881937340

/-! ## A055637.P6087247544700671960

`A197881(A014973(n+1))*A226198(n+1)`
-/

namespace A055637.P6087247544700671960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197881 (A014973 (n + 1)).toNat * A226198 (n + 1)

end

end A055637.P6087247544700671960

/-! ## A055637.P3721720931323914690

`A226198(n+1)*A331887(A319695(n+1))`
-/

namespace A055637.P3721720931323914690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (n + 1) * A331887 (A319695 (n + 1)).toNat

end

end A055637.P3721720931323914690

/-! ## A055637.P13433092434666097496

`lcm(A197881(A014973(n+1)), A343206(n))`
-/

namespace A055637.P13433092434666097496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197881 (A014973 (n + 1)).toNat) (A343206 n)

end

end A055637.P13433092434666097496

/-! ## A055637.P9825166052171271859

`A000007(A061006(n+1))*A092043(n+1)`
-/

namespace A055637.P9825166052171271859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A061006 (n + 1)).toNat * A092043 (n + 1)

end

end A055637.P9825166052171271859

/-! ## A055637.P18082642922711344058

`A092043(n+1)*A197881(A014973(n+1))`
-/

namespace A055637.P18082642922711344058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092043 (n + 1) * A197881 (A014973 (n + 1)).toNat

end

end A055637.P18082642922711344058

/-!
# A055638: Numbers k for which sigma(k^2) is prime.

The programs for A055638, there is no canonical definition to state claims against.
-/

/-! ## A055638.P162991307063827320

`sqrt(A023194(n+2))`
-/

namespace A055638.P162991307063827320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A023194 (n + 2) : ℝ)

end

end A055638.P162991307063827320

/-! ## A055638.P923057905937974927

`∪[A053182(n+1), A065405(n+1)]`
-/

namespace A055638.P923057905937974927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055638.P923057905937974927

/-! ## A055638.P13283305670025912331

`floor(sqrt(A270413(n+2)))`
-/

namespace A055638.P13283305670025912331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A270413 (n + 2))

end

end A055638.P13283305670025912331

/-! ## A055638.P7134562104173245700

`root((A292446(n+2)+1)/2, 2)`
-/

namespace A055638.P7134562104173245700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A292446 (n + 2) + 1 : ℚ) / 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A055638.P7134562104173245700

/-! ## A055638.P1547543621810920247

`root(A023194(2*(n+1)-n), 2)`
-/

namespace A055638.P1547543621810920247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023194 (2 * (n + 1) - n) : ℝ) ^ (1 / (2 : ℝ))

end

end A055638.P1547543621810920247

/-! ## A055638.P426744550579922570

`root(A023194(n+2), A040013(2*n+1))²`
-/

namespace A055638.P426744550579922570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A023194 (n + 2) : ℝ) ^ (1 / (A040013 (2 * n + 1) : ℝ))) ^ 2

end

end A055638.P426744550579922570

/-! ## A055638.P188729275754869631

`root(A023194(n+1)+Δ[A023194(n+1)], 2)`
-/

namespace A055638.P188729275754869631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023194 (n + 1) + (f1 (n + 1) - f1 n) : ℝ) ^ (1 / (2 : ℝ))

end

end A055638.P188729275754869631

/-! ## A055638.P8110593282280050340

`filter[A059046(n+1), A355938(#)]`
-/

namespace A055638.P8110593282280050340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P8110593282280050340

/-! ## A055638.P3555331702059071144

`filter[A246655(n+1), A355938(#)]`
-/

namespace A055638.P3555331702059071144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P3555331702059071144

/-! ## A055638.P2606102136261869872

`filter[A283262(n+1), A355938(#)]`
-/

namespace A055638.P2606102136261869872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P2606102136261869872

/-! ## A055638.P1624670444835037824

`filter[A385030(n+1), A355938(#)]`
-/

namespace A055638.P1624670444835037824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P1624670444835037824

/-! ## A055638.P3927374923084724227

`filter[A390250(n+1), A355938(#)]`
-/

namespace A055638.P3927374923084724227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P3927374923084724227

/-! ## A055638.P15589412544615388820

`filter[A000961(n+2), A355938(#)]`
-/

namespace A055638.P15589412544615388820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P15589412544615388820

/-! ## A055638.P3367015336819006670

`filter[A072303(n+2), A355938(#)]`
-/

namespace A055638.P3367015336819006670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P3367015336819006670

/-! ## A055638.P15507190408535455179

`filter[A081061(n+2), A355938(#)]`
-/

namespace A055638.P15507190408535455179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P15507190408535455179

/-! ## A055638.P7784608880512157593

`filter[A087441(n+2), A355938(#)]`
-/

namespace A055638.P7784608880512157593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P7784608880512157593

/-! ## A055638.P13456407118872225174

`filter[A133810(n+2), A355938(#)]`
-/

namespace A055638.P13456407118872225174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P13456407118872225174

/-! ## A055638.P4237990292891605016

`filter[A133813(n+2), A355938(#)]`
-/

namespace A055638.P4237990292891605016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P4237990292891605016

/-! ## A055638.P16429873340749568674

`filter[A141807(n+2), A355938(#)]`
-/

namespace A055638.P16429873340749568674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P16429873340749568674

/-! ## A055638.P12747739136804913538

`filter[A274222(n+2), A355938(#)]`
-/

namespace A055638.P12747739136804913538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A055638.P12747739136804913538

/-!
# A055639: Number of nonzero digits of n which are not factors of n.

The programs for A055639, there is no canonical definition to state claims against.
-/

/-! ## A055639.P3501995103361815867

`A055640(A347323(n+1))`
-/

namespace A055639.P3501995103361815867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A347323 (n + 1)).toNat

end

end A055639.P3501995103361815867

/-! ## A055639.P18366597669253514164

`∑{digits}[A347323(n+1), A168046(#)]`
-/

namespace A055639.P18366597669253514164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A168046 x).sum

end

end A055639.P18366597669253514164

/-! ## A055639.P14400622494544482343

`A055640(n+1)-A038769(n+1)`
-/

namespace A055639.P14400622494544482343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (n + 1) - A038769 (n + 1)

end

end A055639.P14400622494544482343

/-! ## A055639.P6455512662166890335

`∑{digits}[A347323(n+1), A078349(A002024(#+1))]`
-/

namespace A055639.P6455512662166890335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A078349 (A002024 (x + 1)).toNat).sum

end

end A055639.P6455512662166890335

/-! ## A055639.P735042190377725178

`∑{digits}[A347323(n+1), A004396(A078349(#+1))]`
-/

namespace A055639.P735042190377725178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004396 (A078349 (x + 1)).toNat).sum

end

end A055639.P735042190377725178

/-! ## A055639.P1750037199492630738

`A098378(A004719(n+1))-A038769(n+1)`
-/

namespace A055639.P1750037199492630738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (A004719 (n + 1)).toNat - A038769 (n + 1)

end

end A055639.P1750037199492630738

/-! ## A055639.P12525249659890069063

`A098378(n+1)-A038769(n+1)`
-/

namespace A055639.P12525249659890069063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1) - A038769 (n + 1)

end

end A055639.P12525249659890069063

/-! ## A055639.P3281474225075002484

`∑{digits}[A347323(n+1), A174793(A000096(2*#)+1)]`
-/

namespace A055639.P3281474225075002484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A174793 (A000096 (2 * x) + 1).toNat).sum

end

end A055639.P3281474225075002484

/-!
# A055640: Number of nonzero digits in decimal expansion of n.

The programs for A055640, the canonical program `A055640.P11694689918486202378` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055640 has offset 0).

The definition of A055640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055641, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055640.P11694689918486202378

`A055642(n)-A055641(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055640

/-- `A055642(n)-A055641(n)` -/
def P11694689918486202378.Spec : Prop :=
  ∀ n, P11694689918486202378.a n = A055640 n

theorem P11694689918486202378.correct : P11694689918486202378.Spec := by
  intro n
  simp only [A055640]

end A055640

/-!
# A055641: Number of zero digits in n.

The programs for A055641, the canonical program `A055641.P17892567296001753674` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055641 has offset 0).

The definition of A055641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055641.P10981105901701450838

`∑{digits}[n, floor(acot(#))]`
-/

namespace A055641.P10981105901701450838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

end

end A055641.P10981105901701450838

namespace A055641

/-- `∑{digits}[n, floor(acot(#))]` -/
def P10981105901701450838.Spec : Prop :=
  ∀ n, P10981105901701450838.a n = A055641 n

end A055641

/-! ## A055641.P10283062924623101316

`∑{digits}[n, floor(γ^#)]`
-/

namespace A055641.P10283062924623101316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.eulerMascheroniConstant ^ x⌋).sum

end

end A055641.P10283062924623101316

namespace A055641

/-- `∑{digits}[n, floor(γ^#)]` -/
def P10283062924623101316.Spec : Prop :=
  ∀ n, P10283062924623101316.a n = A055641 n

end A055641

/-! ## A055641.P17892567296001753674

`∑{digits}[n, 4^#]%4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055641

/-- `∑{digits}[n, 4^#]%4` -/
def P17892567296001753674.Spec : Prop :=
  ∀ n, (P17892567296001753674.a n : ℤ) = A055641 n

theorem P17892567296001753674.correct : P17892567296001753674.Spec := by
  intro n
  simp only [A055641]

end A055641

/-! ## A055641.P7190857576097599388

`floor(∑{digits}[n, 1/6^#])`
-/

namespace A055641.P7190857576097599388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 / (6 ^ x : ℚ)).sum⌋

end

end A055641.P7190857576097599388

namespace A055641

/-- `floor(∑{digits}[n, 1/6^#])` -/
def P7190857576097599388.Spec : Prop :=
  ∀ n, P7190857576097599388.a n = A055641 n

end A055641

/-! ## A055641.P11053112259398516283

`round(∑{digits}[n, 1/(2*n+1)^#])`
-/

namespace A055641.P11053112259398516283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 / ((2 * n + 1) ^ x : ℚ)).sum

end

end A055641.P11053112259398516283

namespace A055641

/-- `round(∑{digits}[n, 1/(2*n+1)^#])` -/
def P11053112259398516283.Spec : Prop :=
  ∀ n, P11053112259398516283.a n = A055641 n

end A055641

/-! ## A055641.P7413390378698596497

`A306958(n)%5`
-/

namespace A055641.P7413390378698596497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306958 n) 5

end

end A055641.P7413390378698596497

namespace A055641

/-- `A306958(n)%5` -/
def P7413390378698596497.Spec : Prop :=
  ∀ n, P7413390378698596497.a n = A055641 n

end A055641

/-! ## A055641.P3686251270454839816

`A348783(n)%5`
-/

namespace A055641.P3686251270454839816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348783 n) 5

end

end A055641.P3686251270454839816

namespace A055641

/-- `A348783(n)%5` -/
def P3686251270454839816.Spec : Prop :=
  ∀ n, P3686251270454839816.a n = A055641 n

end A055641

/-! ## A055641.P15259410519649559542

`A064692(A064770(n))`
-/

namespace A055641.P15259410519649559542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A064770 n).toNat

end

end A055641.P15259410519649559542

namespace A055641

/-- `A064692(A064770(n))` -/
def P15259410519649559542.Spec : Prop :=
  ∀ n, P15259410519649559542.a n = A055641 n

end A055641

/-! ## A055641.P11481619216655010119

`A102683(A061601(n))`
-/

namespace A055641.P11481619216655010119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A061601 n).toNat

end

end A055641.P11481619216655010119

namespace A055641

/-- `A102683(A061601(n))` -/
def P11481619216655010119.Spec : Prop :=
  ∀ n, P11481619216655010119.a n = A055641 n

end A055641

/-! ## A055641.P1311775019406783107

`A007954(∑{digits}[n, A000007(#)])`
-/

namespace A055641.P1311775019406783107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 x).sum.toNat

end

end A055641.P1311775019406783107

namespace A055641

/-- `A007954(∑{digits}[n, A000007(#)])` -/
def P1311775019406783107.Spec : Prop :=
  ∀ n, P1311775019406783107.a n = A055641 n

end A055641

/-! ## A055641.P12207620446793025409

`A100910(10*n)`
-/

namespace A055641.P12207620446793025409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (10 * n)

end

end A055641.P12207620446793025409

namespace A055641

/-- `A100910(10*n)` -/
def P12207620446793025409.Spec : Prop :=
  ∀ n, P12207620446793025409.a n = A055641 n

end A055641

/-! ## A055641.P4651573259351733662

`A014029(n²)`
-/

namespace A055641.P4651573259351733662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (n ^ 2)

end

end A055641.P4651573259351733662

namespace A055641

/-- `A014029(n²)` -/
def P4651573259351733662.Spec : Prop :=
  ∀ n, P4651573259351733662.a n = A055641 n

end A055641

/-! ## A055641.P3336617417143249874

`A027907(n²)-A168184(n)`
-/

namespace A055641.P3336617417143249874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (n ^ 2) - A168184 n

end

end A055641.P3336617417143249874

namespace A055641

/-- `A027907(n²)-A168184(n)` -/
def P3336617417143249874.Spec : Prop :=
  ∀ n, P3336617417143249874.a n = A055641 n

end A055641

/-!
# A055642: Number of digits in the decimal expansion of n.

The programs for A055642, the canonical program `A055642.P4465932992276854035` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055642 has offset 0).

The definition of A055642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055642.P2478179801723442865

`A196563(n)+A196564(n)`
-/

namespace A055642.P2478179801723442865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n + A196564 n

end

end A055642.P2478179801723442865

namespace A055642

/-- `A196563(n)+A196564(n)` -/
def P2478179801723442865.Spec : Prop :=
  ∀ n, P2478179801723442865.a n = A055642 n

end A055642

/-! ## A055642.P4465932992276854035

`∑{digits}[n, 10^#]%9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055642

/-- `∑{digits}[n, 10^#]%9` -/
def P4465932992276854035.Spec : Prop :=
  ∀ n, (P4465932992276854035.a n : ℤ) = A055642 n

theorem P4465932992276854035.correct : P4465932992276854035.Spec := by
  intro n
  simp only [A055642]

end A055642

/-! ## A055642.P4939080207558566749

`dr(A348783(n))`
-/

namespace A055642.P4939080207558566749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348783 n)

end

end A055642.P4939080207558566749

namespace A055642

/-- `dr(A348783(n))` -/
def P4939080207558566749.Spec : Prop :=
  ∀ n, (P4939080207558566749.a n : ℤ) = A055642 n

end A055642

/-! ## A055642.P4855027776372673737

`A073053(n)%5`
-/

namespace A055642.P4855027776372673737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073053 n) 5

end

end A055642.P4855027776372673737

namespace A055642

/-- `A073053(n)%5` -/
def P4855027776372673737.Spec : Prop :=
  ∀ n, P4855027776372673737.a n = A055642 n

end A055642

/-! ## A055642.P16408077720328822684

`A160093(or(1, n))`
-/

namespace A055642.P16408077720328822684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (Nat.lor 1 n)

end

end A055642.P16408077720328822684

namespace A055642

/-- `A160093(or(1, n))` -/
def P16408077720328822684.Spec : Prop :=
  ∀ n, P16408077720328822684.a n = A055642 n

end A055642

/-! ## A055642.P957885938962698107

`A337843(n)-n`
-/

namespace A055642.P957885938962698107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n - (n : ℤ)

end

end A055642.P957885938962698107

namespace A055642

/-- `A337843(n)-n` -/
def P957885938962698107.Spec : Prop :=
  ∀ n, P957885938962698107.a n = A055642 n

end A055642

/-! ## A055642.P9665833033026708748

`∑{digits}[n, A014256(#)]`
-/

namespace A055642.P9665833033026708748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014256 x).sum

end

end A055642.P9665833033026708748

namespace A055642

/-- `∑{digits}[n, A014256(#)]` -/
def P9665833033026708748.Spec : Prop :=
  ∀ n, P9665833033026708748.a n = A055642 n

end A055642

/-! ## A055642.P2775701812855876005

`∑{digits}[n, A014482(#)]`
-/

namespace A055642.P2775701812855876005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014482 x).sum

end

end A055642.P2775701812855876005

namespace A055642

/-- `∑{digits}[n, A014482(#)]` -/
def P2775701812855876005.Spec : Prop :=
  ∀ n, P2775701812855876005.a n = A055642 n

end A055642

/-! ## A055642.P10799867541743550823

`∑{digits}[n, A014802(#)]`
-/

namespace A055642.P10799867541743550823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014802 x).sum

end

end A055642.P10799867541743550823

namespace A055642

/-- `∑{digits}[n, A014802(#)]` -/
def P10799867541743550823.Spec : Prop :=
  ∀ n, P10799867541743550823.a n = A055642 n

end A055642

/-! ## A055642.P5569125905532935810

`∑{digits}[n, A015130(#)]`
-/

namespace A055642.P5569125905532935810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015130 x).sum

end

end A055642.P5569125905532935810

namespace A055642

/-- `∑{digits}[n, A015130(#)]` -/
def P5569125905532935810.Spec : Prop :=
  ∀ n, P5569125905532935810.a n = A055642 n

end A055642

/-! ## A055642.P11759553938407538726

`∑{digits}[n, A036370(#)]`
-/

namespace A055642.P11759553938407538726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A055642.P11759553938407538726

namespace A055642

/-- `∑{digits}[n, A036370(#)]` -/
def P11759553938407538726.Spec : Prop :=
  ∀ n, P11759553938407538726.a n = A055642 n

end A055642

/-! ## A055642.P7455978772803804578

`∑{digits}[n, A065648(#)]`
-/

namespace A055642.P7455978772803804578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065648 x).sum

end

end A055642.P7455978772803804578

namespace A055642

/-- `∑{digits}[n, A065648(#)]` -/
def P7455978772803804578.Spec : Prop :=
  ∀ n, P7455978772803804578.a n = A055642 n

end A055642

/-! ## A055642.P11753591843382895176

`∑{digits}[n, A105586(#)]`
-/

namespace A055642.P11753591843382895176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105586 x).sum

end

end A055642.P11753591843382895176

namespace A055642

/-- `∑{digits}[n, A105586(#)]` -/
def P11753591843382895176.Spec : Prop :=
  ∀ n, P11753591843382895176.a n = A055642 n

end A055642

/-! ## A055642.P12597064687889847768

`∑{digits}[n, A105591(#)]`
-/

namespace A055642.P12597064687889847768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105591 x).sum

end

end A055642.P12597064687889847768

namespace A055642

/-- `∑{digits}[n, A105591(#)]` -/
def P12597064687889847768.Spec : Prop :=
  ∀ n, P12597064687889847768.a n = A055642 n

end A055642

/-! ## A055642.P13219743525518151498

`∑{digits}[n, A105592(#)]`
-/

namespace A055642.P13219743525518151498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105592 x).sum

end

end A055642.P13219743525518151498

namespace A055642

/-- `∑{digits}[n, A105592(#)]` -/
def P13219743525518151498.Spec : Prop :=
  ∀ n, P13219743525518151498.a n = A055642 n

end A055642

/-! ## A055642.P2737447371353978459

`∑{digits}[n, A208879(#)]`
-/

namespace A055642.P2737447371353978459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A208879 x).sum

end

end A055642.P2737447371353978459

namespace A055642

/-- `∑{digits}[n, A208879(#)]` -/
def P2737447371353978459.Spec : Prop :=
  ∀ n, P2737447371353978459.a n = A055642 n

end A055642

/-! ## A055642.P300099430256010689

`∑{digits}[n, A212389(#)]`
-/

namespace A055642.P300099430256010689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A212389 x).sum

end

end A055642.P300099430256010689

namespace A055642

/-- `∑{digits}[n, A212389(#)]` -/
def P300099430256010689.Spec : Prop :=
  ∀ n, P300099430256010689.a n = A055642 n

end A055642

/-! ## A055642.P9302820265080299689

`∑{digits}[n, A213217(#)]`
-/

namespace A055642.P9302820265080299689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A213217 x).sum

end

end A055642.P9302820265080299689

namespace A055642

/-- `∑{digits}[n, A213217(#)]` -/
def P9302820265080299689.Spec : Prop :=
  ∀ n, P9302820265080299689.a n = A055642 n

end A055642

/-! ## A055642.P10661244344615278899

`∑{digits}[n, A242784(#)]`
-/

namespace A055642.P10661244344615278899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A242784 x).sum

end

end A055642.P10661244344615278899

namespace A055642

/-- `∑{digits}[n, A242784(#)]` -/
def P10661244344615278899.Spec : Prop :=
  ∀ n, P10661244344615278899.a n = A055642 n

end A055642

/-! ## A055642.P1399511463606897464

`∑{digits}[n, A260529(#)]`
-/

namespace A055642.P1399511463606897464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A260529 x).sum

end

end A055642.P1399511463606897464

namespace A055642

/-- `∑{digits}[n, A260529(#)]` -/
def P1399511463606897464.Spec : Prop :=
  ∀ n, P1399511463606897464.a n = A055642 n

end A055642

/-!
# A055643: Babylonian numbers: integers in base 60 with each sexagesimal digit represented by 2 decimal digits, leading zeros omitted.

The programs for A055643, there is no canonical definition to state claims against.
-/

/-! ## A055643.P3439929404648416651

`A000035(A278484(n))+A257847(A262079(n+1))+n`
-/

namespace A055643.P3439929404648416651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278484 n).toNat + (A257847 (A262079 (n + 1)).toNat + (n : ℤ))

end

end A055643.P3439929404648416651

/-! ## A055643.P9817723108373829915

`A257847(A262079(n+1))+n%A037917(3*n+2)`
-/

namespace A055643.P9817723108373829915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A262079 (n + 1)).toNat + Int.tmod (n : ℤ) (A037917 (3 * n + 2))

end

end A055643.P9817723108373829915

/-! ## A055643.P2267745468693041482

`A257847(A262079(n+1))+A159335(∑[n])`
-/

namespace A055643.P2267745468693041482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A262079 (n + 1)).toNat + A159335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055643.P2267745468693041482

/-! ## A055643.P9960441264725748239

`A257847(A262079(n+1))%A325676(n)+n`
-/

namespace A055643.P9960441264725748239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257847 (A262079 (n + 1)).toNat) (A325676 n) + (n : ℤ)

end

end A055643.P9960441264725748239

/-! ## A055643.P5668282383740580541

`A257847(A262079(n+1))+A000194(n²)`
-/

namespace A055643.P5668282383740580541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A262079 (n + 1)).toNat + A000194 (n ^ 2)

end

end A055643.P5668282383740580541

/-! ## A055643.P5554959812353548782

`A257847(A262079(n+1))+A000007((n+1)²)+n`
-/

namespace A055643.P5554959812353548782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A262079 (n + 1)).toNat + (A000007 ((n + 1) ^ 2) + (n : ℤ))

end

end A055643.P5554959812353548782

/-! ## A055643.P7385103716544521355

`record[A110654(A087052(n)+A007953(n))]`
-/

namespace A055643.P7385103716544521355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A087052 n + A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055643.P7385103716544521355

/-!
# A055644: 

The programs for A055644, there is no canonical definition to state claims against.
-/

/-! ## A055644.P9437199834597351757

`eq[A039723(A106747(n)), A106747(n)]`
-/

namespace A055644.P9437199834597351757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A106747 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055644.P9437199834597351757

/-! ## A055644.P14462973436967887757

`eq[A039723(A235049(n)), A235049(n)]`
-/

namespace A055644.P14462973436967887757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055644.P14462973436967887757

/-! ## A055644.P951187841096725649

`and(A008554(n+1), A198275(n))`
-/

namespace A055644.P951187841096725649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A198275 n)

end

end A055644.P951187841096725649

/-! ## A055644.P14263215137991586573

`and(A008554(n+1), A171389(n))`
-/

namespace A055644.P14263215137991586573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A171389 n)

end

end A055644.P14263215137991586573

/-! ## A055644.P9442127550097984737

`and(A008554(n+1), A198276(n))`
-/

namespace A055644.P9442127550097984737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A198276 n)

end

end A055644.P9442127550097984737

/-! ## A055644.P3438807507626079778

`and(A008554(n+1), A291557(n))`
-/

namespace A055644.P3438807507626079778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A291557 n)

end

end A055644.P3438807507626079778

/-! ## A055644.P33018734465776824

`and(A008554(n+1), A171390(n+1))`
-/

namespace A055644.P33018734465776824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A171390 (n + 1))

end

end A055644.P33018734465776824

/-! ## A055644.P12078778996771186338

`and(A008554(n+1), A118883(n+1))`
-/

namespace A055644.P12078778996771186338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A118883 (n + 1))

end

end A055644.P12078778996771186338

/-! ## A055644.P13004525369941055521

`A008554(n+1)%A001792(n)`
-/

namespace A055644.P13004525369941055521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008554 (n + 1)) (A001792 n)

end

end A055644.P13004525369941055521

/-! ## A055644.P14736343284690520119

`and(A008554(n+1), A127582(n))`
-/

namespace A055644.P14736343284690520119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A127582 n)

end

end A055644.P14736343284690520119

/-! ## A055644.P6650408303504336237

`and(A008554(n+1), A201914(n))`
-/

namespace A055644.P6650408303504336237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A201914 n)

end

end A055644.P6650408303504336237

/-! ## A055644.P9366820071695920678

`and(A008554(n+1), A375155(n+1))`
-/

namespace A055644.P9366820071695920678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A375155 (n + 1))

end

end A055644.P9366820071695920678

/-! ## A055644.P15762670677799107523

`and(A008554(n+1), A087323(n))`
-/

namespace A055644.P15762670677799107523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A087323 n)

end

end A055644.P15762670677799107523

/-! ## A055644.P644503813826309592

`and(A008554(n+1), A099035(n+1))`
-/

namespace A055644.P644503813826309592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A099035 (n + 1))

end

end A055644.P644503813826309592

/-! ## A055644.P18121278032057964822

`and(A003261(n+1), A008554(n+1))`
-/

namespace A055644.P18121278032057964822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A008554 (n + 1))

end

end A055644.P18121278032057964822

/-! ## A055644.P14876001902171335713

`and(A008554(n+1), A163383(n+1))`
-/

namespace A055644.P14876001902171335713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A163383 (n + 1))

end

end A055644.P14876001902171335713

/-! ## A055644.P39459032229596957

`and(A008554(n+1), A135972(n+1))`
-/

namespace A055644.P39459032229596957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A135972 (n + 1))

end

end A055644.P39459032229596957

/-! ## A055644.P2125200020512496993

`and(A008554(n+1), A063396(n))`
-/

namespace A055644.P2125200020512496993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A063396 n)

end

end A055644.P2125200020512496993

/-! ## A055644.P17690841001512482353

`and(A008554(n+1), A055580(n))`
-/

namespace A055644.P17690841001512482353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A055580 n)

end

end A055644.P17690841001512482353

/-! ## A055644.P2335589138253506891

`and(A008554(n+1), A107392(n))`
-/

namespace A055644.P2335589138253506891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008554 (n + 1)) (A107392 n)

end

end A055644.P2335589138253506891

/-!
# A055645: Integers in base 16 with each hexadecimal digit represented by 2 decimal digits.

The programs for A055645, there is no canonical definition to state claims against.
-/

/-! ## A055645.P10855420715959573995

`∪[A028310(A055646(n)+1), A055646(n)]`
-/

namespace A055645.P10855420715959573995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055646 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055645.P10855420715959573995

/-! ## A055645.P1321075891799253398

`∪[A057947(A187829(n+1)), A049872(n)]`
-/

namespace A055645.P1321075891799253398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057947 (A187829 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055645.P1321075891799253398

/-! ## A055645.P12172331558845184857

`n+1-A307156(A119364(A007318(n)))`
-/

namespace A055645.P12172331558845184857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A307156 (A119364 (A007318 n).toNat).toNat

end

end A055645.P12172331558845184857

/-! ## A055645.P17447038828851943611

`∪[A258782(A058348(2*n+3))+n, A057947(n)]`
-/

namespace A055645.P17447038828851943611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258782 (A058348 (2 * n + 3)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057947 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055645.P17447038828851943611

/-!
# A055646: Integers in base 15 with each base 15 digit represented by 2 decimal digits.

The programs for A055646, there is no canonical definition to state claims against.
-/

/-! ## A055646.P11352918144498318984

`A055645(comp[16*n])+or(-1, A009963(n))`
-/

namespace A055646.P11352918144498318984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + Int.lor (-1) (A009963 n)

end

end A055646.P11352918144498318984

/-! ## A055646.P3545895531418898531

`A055645(comp[16*n])-A327401(A119842(n+1)+1)`
-/

namespace A055646.P3545895531418898531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A327401 (A119842 (n + 1) + 1).toNat

end

end A055646.P3545895531418898531

/-! ## A055646.P9364147575193100159

`A055645(comp[16*n])-A344590(A051644(2*n+1))`
-/

namespace A055646.P9364147575193100159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A344590 (A051644 (2 * n + 1)).toNat

end

end A055646.P9364147575193100159

/-! ## A055646.P1009073267146230327

`eq[A028900(n), A081596(A081596(n))]`
-/

namespace A055646.P1009073267146230327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A081596 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055646.P1009073267146230327

/-! ## A055646.P1001234856252895577

`A055645(comp[16*n])-A007318(∑[n])`
-/

namespace A055646.P1001234856252895577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A007318 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A055646.P1001234856252895577

/-! ## A055646.P7397783567200803719

`A055645(comp[16*n])-A057427(A132749(n+1))`
-/

namespace A055646.P7397783567200803719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A057427 (A132749 (n + 1)).toNat

end

end A055646.P7397783567200803719

/-! ## A055646.P12833097258591154489

`A055645(comp[16*n])-A001221(A140513(n))`
-/

namespace A055646.P12833097258591154489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A001221 (A140513 n).toNat

end

end A055646.P12833097258591154489

/-! ## A055646.P13344027462575346113

`A055645(comp[16*n])-A001222(A099207(n+1))`
-/

namespace A055646.P13344027462575346113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A001222 (A099207 (n + 1)).toNat

end

end A055646.P13344027462575346113

/-! ## A055646.P16992910787194643691

`A055645(comp[16*n])-A057427((n+1)²)`
-/

namespace A055646.P16992910787194643691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A057427 ((n + 1) ^ 2)

end

end A055646.P16992910787194643691

/-! ## A055646.P10628647766341627276

`A055645(comp[16*n])-A014963(A131114(n))`
-/

namespace A055646.P10628647766341627276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A014963 (A131114 n).toNat

end

end A055646.P10628647766341627276

/-!
# A055647: Integers in base 14 with each base 14 digit represented by 2 decimal digits.

The programs for A055647, the canonical program `A055647.P1414518620111921284` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055647 has offset 0).

The definition of A055647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055647.P1414518620111921284

`eq[A028901(n), A081597(A081597(n))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A055647

/-- `eq[A028901(n), A081597(A081597(n))]` -/
def P1414518620111921284.Spec : Prop :=
  ∀ n, (P1414518620111921284.a n : ℤ) = A055647 n

theorem P1414518620111921284.correct : P1414518620111921284.Spec := by
  intro n
  simp only [A055647]

end A055647

/-! ## A055647.P14612879827394841695

`A055646(A000401(n+1)%A115695(n+1))`
-/

namespace A055647.P14612879827394841695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 (Int.tmod (A000401 (n + 1)) (A115695 (n + 1))).toNat

end

end A055647.P14612879827394841695

namespace A055647

/-- `A055646(A000401(n+1)%A115695(n+1))` -/
def P14612879827394841695.Spec : Prop :=
  ∀ n, P14612879827394841695.a n = A055647 n

end A055647

/-! ## A055647.P5047469704376389199

`A055646(A000401(n+1))%A115701(n+1)`
-/

namespace A055647.P5047469704376389199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055646 (A000401 (n + 1)).toNat) (A115701 (n + 1))

end

end A055647.P5047469704376389199

namespace A055647

/-- `A055646(A000401(n+1))%A115701(n+1)` -/
def P5047469704376389199.Spec : Prop :=
  ∀ n, P5047469704376389199.a n = A055647 n

end A055647

/-! ## A055647.P13307527833943069176

`A054977(A072946(n))*A055646(A000401(n+1))`
-/

namespace A055647.P13307527833943069176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A072946 n).toNat * A055646 (A000401 (n + 1)).toNat

end

end A055647.P13307527833943069176

namespace A055647

/-- `A054977(A072946(n))*A055646(A000401(n+1))` -/
def P13307527833943069176.Spec : Prop :=
  ∀ n, P13307527833943069176.a n = A055647 n

end A055647

/-! ## A055647.P3789502752929826967

`A272322(A032949(n+1))`
-/

namespace A055647.P3789502752929826967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272322 (A032949 (n + 1)).toNat

end

end A055647.P3789502752929826967

namespace A055647

/-- `A272322(A032949(n+1))` -/
def P3789502752929826967.Spec : Prop :=
  ∀ n, P3789502752929826967.a n = A055647 n

end A055647

/-!
# A055648: Integers in base 13 with each base 13 digit represented by 2 decimal digits.

The programs for A055648, there is no canonical definition to state claims against.
-/

/-! ## A055648.P14650727133341725914

`eq[A028902(n), A081598(A081598(n))]`
-/

namespace A055648.P14650727133341725914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A081598 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055648.P14650727133341725914

/-! ## A055648.P11812878457910931335

`∑[A001338(A143409(n)*A340988(n))]`
-/

namespace A055648.P11812878457910931335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001338 (A143409 n * A340988 (n + 91)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055648.P11812878457910931335

/-! ## A055648.P18064381898104284125

`A323048(A055647(n+1))`
-/

namespace A055648.P18064381898104284125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A055647 (n + 1)).toNat

end

end A055648.P18064381898104284125

/-! ## A055648.P7403128805636791550

`A240202(A185213(n))+n`
-/

namespace A055648.P7403128805636791550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240202 (A185213 n).toNat + (n : ℤ)

end

end A055648.P7403128805636791550

/-! ## A055648.P5132425868580557113

`A052146(∑[∑[A031436(n)!]])`
-/

namespace A055648.P5132425868580557113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A031436 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055648.P5132425868580557113

/-!
# A055649: Integers in base 11 with each base-11 digit represented by 2 decimal digits.

The programs for A055649, there is no canonical definition to state claims against.
-/

/-! ## A055649.P5732661578016052520

`A049872(lt[A190600(n), 11])`
-/

namespace A055649.P5732661578016052520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A055649.P5732661578016052520

/-! ## A055649.P14252134535959158024

`A049872(A168186(n+1))-A000035(A031929(n))`
-/

namespace A055649.P14252134535959158024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A000035 (A031929 n).toNat

end

end A055649.P14252134535959158024

/-! ## A055649.P11114794899850403471

`A049872(A168186(n+1))-A000164(A059268(n))`
-/

namespace A055649.P11114794899850403471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A000164 (A059268 n).toNat

end

end A055649.P11114794899850403471

/-! ## A055649.P17647724351451706703

`A049872(A168186(n+1))-A340607(A056809(n+5))`
-/

namespace A055649.P17647724351451706703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A340607 (A056809 (n + 5)).toNat

end

end A055649.P17647724351451706703

/-! ## A055649.P8465874691614437962

`A049872(A168186(n+1))-A326194(p?[53*n+28])`
-/

namespace A055649.P8465874691614437962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A326194 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A055649.P8465874691614437962

/-! ## A055649.P9295847674406367221

`A049872(A168186(n+1))-A300909(A061802(n))`
-/

namespace A055649.P9295847674406367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A300909 (A061802 n).toNat

end

end A055649.P9295847674406367221

/-! ## A055649.P17950279026020130953

`A049872(A168186(n+1))-A119288(A005385(n+1))`
-/

namespace A055649.P17950279026020130953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A119288 (A005385 (n + 1)).toNat

end

end A055649.P17950279026020130953

/-! ## A055649.P12006785477871581785

`A049872(A168186(n+1))-A165326(A131061(n))`
-/

namespace A055649.P12006785477871581785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A165326 (A131061 n).toNat

end

end A055649.P12006785477871581785

/-! ## A055649.P6467735923468758899

`A049872(A168186(n+1))-A123726(A123754(n+1))`
-/

namespace A055649.P6467735923468758899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A123726 (A123754 (n + 1)).toNat

end

end A055649.P6467735923468758899

/-! ## A055649.P6919249415107857128

`A049872(A168186(n+1))-A325509(A051698(n))`
-/

namespace A055649.P6919249415107857128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A325509 (A051698 n).toNat

end

end A055649.P6919249415107857128

/-! ## A055649.P16321010185428839384

`A049872(A168186(n+1))-A123726(A020208(n+1))`
-/

namespace A055649.P16321010185428839384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A123726 (A020208 (n + 1)).toNat

end

end A055649.P16321010185428839384

/-! ## A055649.P9890964290714103416

`A049872(A168186(n+1))-A119288(A093191(n+1))`
-/

namespace A055649.P9890964290714103416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A119288 (A093191 (n + 1)).toNat

end

end A055649.P9890964290714103416

/-! ## A055649.P9034071026122159564

`A049872(A168186(n+1))-A119288(A196222(n)²)`
-/

namespace A055649.P9034071026122159564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A119288 (A196222 n ^ 2).toNat

end

end A055649.P9034071026122159564

/-! ## A055649.P16949461979533924220

`∑[A319990(A123895(n)+1)]-A294338(n²+1)`
-/

namespace A055649.P16949461979533924220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319990 (A123895 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294338 (n ^ 2 + 1)

end

end A055649.P16949461979533924220

/-! ## A055649.P4357893208240376924

`A049872(A168186(n+1))-A113648(A196222(n)²)`
-/

namespace A055649.P4357893208240376924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A168186 (n + 1)).toNat - A113648 (A196222 n ^ 2).toNat

end

end A055649.P4357893208240376924

/-!
# A055651: Table T(m,k)=m^k-k^m (with 0^0 taken to be 1) as square array read by antidiagonals.

The programs for A055651, the canonical program `A055651.P9187909859362461794` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055651 has offset 0).

The definition of A055651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055651.P9187909859362461794

`A003992(n)-A004248(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055651

/-- `A003992(n)-A004248(n)` -/
def P9187909859362461794.Spec : Prop :=
  ∀ n, P9187909859362461794.a n = A055651 n

theorem P9187909859362461794.correct : P9187909859362461794.Spec := by
  intro n
  simp only [A055651]

end A055651

/-! ## A055651.P2615190532573724125

`2*A003992(n)-A055652(n)`
-/

namespace A055651.P2615190532573724125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003992 n - A055652 n

end

end A055651.P2615190532573724125

namespace A055651

/-- `2*A003992(n)-A055652(n)` -/
def P2615190532573724125.Spec : Prop :=
  ∀ n, P2615190532573724125.a n = A055651 n

end A055651

/-! ## A055651.P16881853252098321901

`A055652(n)-2*A004248(n)`
-/

namespace A055651.P16881853252098321901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n - 2 * A004248 n

end

end A055651.P16881853252098321901

namespace A055651

/-- `A055652(n)-2*A004248(n)` -/
def P16881853252098321901.Spec : Prop :=
  ∀ n, P16881853252098321901.a n = A055651 n

end A055651

/-! ## A055651.P6782380045602357300

`A003992(n)-A003992(A061579(n))`
-/

namespace A055651.P6782380045602357300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n - A003992 (A061579 n).toNat

end

end A055651.P6782380045602357300

namespace A055651

/-- `A003992(n)-A003992(A061579(n))` -/
def P6782380045602357300.Spec : Prop :=
  ∀ n, P6782380045602357300.a n = A055651 n

end A055651

/-! ## A055651.P374508753525445550

`A004248(A061579(n))-A004248(n)`
-/

namespace A055651.P374508753525445550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 n).toNat - A004248 n

end

end A055651.P374508753525445550

namespace A055651

/-- `A004248(A061579(n))-A004248(n)` -/
def P374508753525445550.Spec : Prop :=
  ∀ n, P374508753525445550.a n = A055651 n

end A055651

/-! ## A055651.P1417944626507876549

`A003992(n)-A003992(A038722(n+2))`
-/

namespace A055651.P1417944626507876549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n - A003992 (A038722 (n + 2)).toNat

end

end A055651.P1417944626507876549

namespace A055651

/-- `A003992(n)-A003992(A038722(n+2))` -/
def P1417944626507876549.Spec : Prop :=
  ∀ n, P1417944626507876549.a n = A055651 n

end A055651

/-! ## A055651.P4972842312830578210

`A004248(A038722(n+1)-1)-A004248(n)`
-/

namespace A055651.P4972842312830578210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A038722 (n + 1) - 1).toNat - A004248 n

end

end A055651.P4972842312830578210

namespace A055651

/-- `A004248(A038722(n+1)-1)-A004248(n)` -/
def P4972842312830578210.Spec : Prop :=
  ∀ n, P4972842312830578210.a n = A055651 n

end A055651

/-! ## A055651.P1907506066162602639

`(A059297(A061579(n))-A059297(n))/A007318(n)`
-/

namespace A055651.P1907506066162602639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059297 (A061579 n).toNat - A059297 n : ℚ) / (A007318 n : ℚ)

end

end A055651.P1907506066162602639

namespace A055651

/-- `(A059297(A061579(n))-A059297(n))/A007318(n)` -/
def P1907506066162602639.Spec : Prop :=
  ∀ n, P1907506066162602639.a n = (A055651 n : ℚ)

end A055651

/-! ## A055651.P17208417724292330262

`A005843(A003992(n))-A055652(n)`
-/

namespace A055651.P17208417724292330262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003992 n).toNat - A055652 n

end

end A055651.P17208417724292330262

namespace A055651

/-- `A005843(A003992(n))-A055652(n)` -/
def P17208417724292330262.Spec : Prop :=
  ∀ n, P17208417724292330262.a n = A055651 n

end A055651

/-! ## A055651.P8759477499990693824

`A055652(n)-A005843(A004248(n))`
-/

namespace A055651.P8759477499990693824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n - A005843 (A004248 n).toNat

end

end A055651.P8759477499990693824

namespace A055651

/-- `A055652(n)-A005843(A004248(n))` -/
def P8759477499990693824.Spec : Prop :=
  ∀ n, P8759477499990693824.a n = A055651 n

end A055651

/-!
# A055652: Table T(m,k)=m^k+k^m (with 0^0 taken to be 1) as square array read by antidiagonals.

The programs for A055652, the canonical program `A055652.P5077666834946705918` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055652 has offset 0).

The definition of A055652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055652.P5077666834946705918

`A004248(n)+A003992(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055652

/-- `A004248(n)+A003992(n)` -/
def P5077666834946705918.Spec : Prop :=
  ∀ n, P5077666834946705918.a n = A055652 n

theorem P5077666834946705918.correct : P5077666834946705918.Spec := by
  intro n
  simp only [A055652]

end A055652

/-! ## A055652.P11952305249647296747

`A054977(n)*A156354(n)`
-/

namespace A055652.P11952305249647296747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A156354 n

end

end A055652.P11952305249647296747

namespace A055652

/-- `A054977(n)*A156354(n)` -/
def P11952305249647296747.Spec : Prop :=
  ∀ n, P11952305249647296747.a n = A055652 n

end A055652

/-! ## A055652.P18286930638514655117

`A156354(A000038(n)²+n)`
-/

namespace A055652.P18286930638514655117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000038 n ^ 2 + (n : ℤ)).toNat

end

end A055652.P18286930638514655117

namespace A055652

/-- `A156354(A000038(n)²+n)` -/
def P18286930638514655117.Spec : Prop :=
  ∀ n, P18286930638514655117.a n = A055652 n

end A055652

/-! ## A055652.P6907580089724051625

`A000038(n)!*A156354(n)`
-/

namespace A055652.P6907580089724051625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A156354 n

end

end A055652.P6907580089724051625

namespace A055652

/-- `A000038(n)!*A156354(n)` -/
def P6907580089724051625.Spec : Prop :=
  ∀ n, P6907580089724051625.a n = A055652 n

end A055652

/-! ## A055652.P6813302223159963706

`(A000007(n)+1)*A156354(n)`
-/

namespace A055652.P6813302223159963706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A156354 n

end

end A055652.P6813302223159963706

namespace A055652

/-- `(A000007(n)+1)*A156354(n)` -/
def P6813302223159963706.Spec : Prop :=
  ∀ n, P6813302223159963706.a n = A055652 n

end A055652

/-! ## A055652.P2026595146958576444

`A156354(2*A000038(n)+n)`
-/

namespace A055652.P2026595146958576444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (2 * A000038 n + (n : ℤ)).toNat

end

end A055652.P2026595146958576444

namespace A055652

/-- `A156354(2*A000038(n)+n)` -/
def P2026595146958576444.Spec : Prop :=
  ∀ n, P2026595146958576444.a n = A055652 n

end A055652

/-! ## A055652.P9987382394684152243

`A000045(3-a(val(n, 5)))*A156354(n)` with `a(0)=2`
-/

namespace A055652.P9987382394684152243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000045 (3 - a (SequenceMachineLib.valuation n 5)).toNat * A156354 n

end

end A055652.P9987382394684152243

namespace A055652

/-- `A000045(3-a(val(n, 5)))*A156354(n)` -/
def P9987382394684152243.Spec : Prop :=
  ∀ n, P9987382394684152243.a n = A055652 n

end A055652

/-! ## A055652.P6313220101327044929

`A007318(3-a(val(n, 5)))*A156354(n)` with `a(0)=2`
-/

namespace A055652.P6313220101327044929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007318 (3 - a (SequenceMachineLib.valuation n 5)).toNat * A156354 n

end

end A055652.P6313220101327044929

namespace A055652

/-- `A007318(3-a(val(n, 5)))*A156354(n)` -/
def P6313220101327044929.Spec : Prop :=
  ∀ n, P6313220101327044929.a n = A055652 n

end A055652

/-! ## A055652.P5319640881449669758

`A156354(A000038(n)+A000038(n)+n)`
-/

namespace A055652.P5319640881449669758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000038 n + (A000038 n + (n : ℤ))).toNat

end

end A055652.P5319640881449669758

namespace A055652

/-- `A156354(A000038(n)+A000038(n)+n)` -/
def P5319640881449669758.Spec : Prop :=
  ∀ n, P5319640881449669758.a n = A055652 n

end A055652

/-! ## A055652.P2129566630920211142

`A003992(n)+A003992(A061579(n))`
-/

namespace A055652.P2129566630920211142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n + A003992 (A061579 n).toNat

end

end A055652.P2129566630920211142

namespace A055652

/-- `A003992(n)+A003992(A061579(n))` -/
def P2129566630920211142.Spec : Prop :=
  ∀ n, P2129566630920211142.a n = A055652 n

end A055652

/-! ## A055652.P18182040321496239187

`A004248(n)+A004248(A061579(n))`
-/

namespace A055652.P18182040321496239187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n + A004248 (A061579 n).toNat

end

end A055652.P18182040321496239187

namespace A055652

/-- `A004248(n)+A004248(A061579(n))` -/
def P18182040321496239187.Spec : Prop :=
  ∀ n, P18182040321496239187.a n = A055652 n

end A055652

/-! ## A055652.P17627711327366451029

`A004248(A038722(n+1)-1)+A004248(n)`
-/

namespace A055652.P17627711327366451029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A038722 (n + 1) - 1).toNat + A004248 n

end

end A055652.P17627711327366451029

namespace A055652

/-- `A004248(A038722(n+1)-1)+A004248(n)` -/
def P17627711327366451029.Spec : Prop :=
  ∀ n, P17627711327366451029.a n = A055652 n

end A055652

/-! ## A055652.P6214759658533298314

`A003992(A038722(n+2))+A003992(n)`
-/

namespace A055652.P6214759658533298314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A038722 (n + 2)).toNat + A003992 n

end

end A055652.P6214759658533298314

namespace A055652

/-- `A003992(A038722(n+2))+A003992(n)` -/
def P6214759658533298314.Spec : Prop :=
  ∀ n, P6214759658533298314.a n = A055652 n

end A055652

/-! ## A055652.P3927709066076236003

`A055651(n)+2*A004248(n)`
-/

namespace A055652.P3927709066076236003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 n + 2 * A004248 n

end

end A055652.P3927709066076236003

namespace A055652

/-- `A055651(n)+2*A004248(n)` -/
def P3927709066076236003.Spec : Prop :=
  ∀ n, P3927709066076236003.a n = A055652 n

end A055652

/-! ## A055652.P2496886525525240760

`2*A003992(n)-A055651(n)`
-/

namespace A055652.P2496886525525240760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003992 n - A055651 n

end

end A055652.P2496886525525240760

namespace A055652

/-- `2*A003992(n)-A055651(n)` -/
def P2496886525525240760.Spec : Prop :=
  ∀ n, P2496886525525240760.a n = A055652 n

end A055652

/-! ## A055652.P4442337752220786

`(A059297(n)+A059297(A061579(n)))/A007318(n)`
-/

namespace A055652.P4442337752220786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059297 n + A059297 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A055652.P4442337752220786

namespace A055652

/-- `(A059297(n)+A059297(A061579(n)))/A007318(n)` -/
def P4442337752220786.Spec : Prop :=
  ∀ n, P4442337752220786.a n = (A055652 n : ℚ)

end A055652

/-! ## A055652.P11098389655136760069

`A014963(4*n+2)*A156354(n)`
-/

namespace A055652.P11098389655136760069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A156354 n

end

end A055652.P11098389655136760069

namespace A055652

/-- `A014963(4*n+2)*A156354(n)` -/
def P11098389655136760069.Spec : Prop :=
  ∀ n, P11098389655136760069.a n = A055652 n

end A055652

/-!
# A055653: Sum of phi(d) [A000010] over all unitary divisors d of n (that is, gcd(d,n/d) = 1).

The programs for A055653, the canonical program `A055653.P4028281182971921591` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055653 has offset 1).

The definition of A055653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055653.P5732198295401013880

`∑{d}[n+1, A114810(#)]`
-/

namespace A055653.P5732198295401013880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114810 d

end

end A055653.P5732198295401013880

namespace A055653

/-- `∑{d}[n+1, A114810(#)]` -/
def P5732198295401013880.Spec : Prop :=
  ∀ n, P5732198295401013880.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P14209826991050052394

`1-A055654(n+1)+n`
-/

namespace A055653.P14209826991050052394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055654 (n + 1) + (n : ℤ)

end

end A055653.P14209826991050052394

namespace A055653

/-- `1-A055654(n+1)+n` -/
def P14209826991050052394.Spec : Prop :=
  ∀ n, P14209826991050052394.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P4028281182971921591

`∑{d}[n+1, #*A395496((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055653

/-- `∑{d}[n+1, #*A395496((n+1)/#)]` -/
def P4028281182971921591.Spec : Prop :=
  ∀ n, P4028281182971921591.a n = A055653 (n + 1)

theorem P4028281182971921591.correct : P4028281182971921591.Spec := by
  intro n
  simp only [A055653, Nat.add_sub_cancel]

end A055653

/-! ## A055653.P7917627169157678746

`n-A023443(A055654(n+1))`
-/

namespace A055653.P7917627169157678746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A055654 (n + 1)).toNat

end

end A055653.P7917627169157678746

namespace A055653

/-- `n-A023443(A055654(n+1))` -/
def P7917627169157678746.Spec : Prop :=
  ∀ n, P7917627169157678746.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P18120538203265860051

`abs(A055654(n+1)+A001478(n+1))`
-/

namespace A055653.P18120538203265860051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055654 (n + 1) + A001478 (n + 1)|

end

end A055653.P18120538203265860051

namespace A055653

/-- `abs(A055654(n+1)+A001478(n+1))` -/
def P18120538203265860051.Spec : Prop :=
  ∀ n, P18120538203265860051.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P7895625244630768350

`∑{d}[n+1, A008683(#)*A360522((n+1)/#)]`
-/

namespace A055653.P7895625244630768350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A360522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055653.P7895625244630768350

namespace A055653

/-- `∑{d}[n+1, A008683(#)*A360522((n+1)/#)]` -/
def P7895625244630768350.Spec : Prop :=
  ∀ n, P7895625244630768350.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P10358904033739049400

`∑{d}[n+1, A271102(#)*A332713((n+1)/#)]`
-/

namespace A055653.P10358904033739049400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A332713 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055653.P10358904033739049400

namespace A055653

/-- `∑{d}[n+1, A271102(#)*A332713((n+1)/#)]` -/
def P10358904033739049400.Spec : Prop :=
  ∀ n, P10358904033739049400.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P3461861911239199046

`A001489(A055654(n+1))+A000027(n+1)`
-/

namespace A055653.P3461861911239199046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055654 (n + 1)).toNat + A000027 (n + 1)

end

end A055653.P3461861911239199046

namespace A055653

/-- `A001489(A055654(n+1))+A000027(n+1)` -/
def P3461861911239199046.Spec : Prop :=
  ∀ n, P3461861911239199046.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P1736161372560324850

`∑{d}[n+1, A000010(A003557(#))*A173557(#)]`
-/

namespace A055653.P1736161372560324850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A003557 d).toNat * A173557 d

end

end A055653.P1736161372560324850

namespace A055653

/-- `∑{d}[n+1, A000010(A003557(#))*A173557(#)]` -/
def P1736161372560324850.Spec : Prop :=
  ∀ n, P1736161372560324850.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P5044316647394175370

`A052938(2*n)-A055654(A052938(2*n))`
-/

namespace A055653.P5044316647394175370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - A055654 (A052938 (2 * n)).toNat

end

end A055653.P5044316647394175370

namespace A055653

/-- `A052938(2*n)-A055654(A052938(2*n))` -/
def P5044316647394175370.Spec : Prop :=
  ∀ n, P5044316647394175370.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P11821726126611767451

`A117656(A102631(n+1))/A003557(n+1)`
-/

namespace A055653.P11821726126611767451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117656 (A102631 (n + 1)).toNat : ℚ) / (A003557 (n + 1) : ℚ)

end

end A055653.P11821726126611767451

namespace A055653

/-- `A117656(A102631(n+1))/A003557(n+1)` -/
def P11821726126611767451.Spec : Prop :=
  ∀ n, P11821726126611767451.a n = (A055653 (n + 1) : ℚ)

end A055653

/-! ## A055653.P10814411289889218037

`A004736(A055654(n+1)+A000124(n))`
-/

namespace A055653.P10814411289889218037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A055654 (n + 1) + A000124 n).toNat

end

end A055653.P10814411289889218037

namespace A055653

/-- `A004736(A055654(n+1)+A000124(n))` -/
def P10814411289889218037.Spec : Prop :=
  ∀ n, P10814411289889218037.a n = A055653 (n + 1)

end A055653

/-! ## A055653.P12547933058395425740

`A117656((n+1)²)/(n+1)`
-/

namespace A055653.P12547933058395425740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117656 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A055653.P12547933058395425740

namespace A055653

/-- `A117656((n+1)²)/(n+1)` -/
def P12547933058395425740.Spec : Prop :=
  ∀ n, P12547933058395425740.a n = (A055653 (n + 1) : ℚ)

end A055653

/-!
# A055654: Difference between n and the result of "Phi-summation" over unitary divisors of n.

The programs for A055654, the canonical program `A055654.P12577505086499020644` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055654 has offset 1).

The definition of A055654 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055654.P12577505086499020644

`n+1-A055653(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055654

/-- `n+1-A055653(n+1)` -/
def P12577505086499020644.Spec : Prop :=
  ∀ n, P12577505086499020644.a n = A055654 (n + 1)

theorem P12577505086499020644.correct : P12577505086499020644.Spec := by
  intro n
  simp only [A055654, Nat.add_sub_cancel]

end A055654

/-! ## A055654.P17488527950613315733

`1-∑{d}[n+1, A114810(#)]+n`
-/

namespace A055654.P17488527950613315733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A114810 d + (n : ℤ)

end

end A055654.P17488527950613315733

namespace A055654

/-- `1-∑{d}[n+1, A114810(#)]+n` -/
def P17488527950613315733.Spec : Prop :=
  ∀ n, P17488527950613315733.a n = A055654 (n + 1)

end A055654

/-! ## A055654.P12652141529897130107

`n-A023443(A055653(n+1))`
-/

namespace A055654.P12652141529897130107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A055653 (n + 1)).toNat

end

end A055654.P12652141529897130107

namespace A055654

/-- `n-A023443(A055653(n+1))` -/
def P12652141529897130107.Spec : Prop :=
  ∀ n, P12652141529897130107.a n = A055654 (n + 1)

end A055654

/-! ## A055654.P10651975502404215453

`(Δ[A055653(n+1)]+n+1)%A055653(n+2)`
-/

namespace A055654.P10651975502404215453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n + 1 : ℤ)) (A055653 (n + 2))

end

end A055654.P10651975502404215453

namespace A055654

/-- `(Δ[A055653(n+1)]+n+1)%A055653(n+2)` -/
def P10651975502404215453.Spec : Prop :=
  ∀ n, P10651975502404215453.a n = A055654 (n + 1)

end A055654

/-! ## A055654.P13988961897381329938

`A000217(n+1)%(A055653(n+1)+A000217(n))`
-/

namespace A055654.P13988961897381329938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A055653 (n + 1) + A000217 n)

end

end A055654.P13988961897381329938

namespace A055654

/-- `A000217(n+1)%(A055653(n+1)+A000217(n))` -/
def P13988961897381329938.Spec : Prop :=
  ∀ n, P13988961897381329938.a n = A055654 (n + 1)

end A055654

/-! ## A055654.P7600562337697869609

`(A102631(n+1)-A117656(A102631(n+1)))/A003557(n+1)`
-/

namespace A055654.P7600562337697869609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) - A117656 (A102631 (n + 1)).toNat : ℚ) / (A003557 (n + 1) : ℚ)

end

end A055654.P7600562337697869609

namespace A055654

/-- `(A102631(n+1)-A117656(A102631(n+1)))/A003557(n+1)` -/
def P7600562337697869609.Spec : Prop :=
  ∀ n, P7600562337697869609.a n = (A055654 (n + 1) : ℚ)

end A055654

/-! ## A055654.P6685869156070907227

`n+1-A117656((n+1)²)/(n+1)`
-/

namespace A055654.P6685869156070907227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A117656 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A055654.P6685869156070907227

namespace A055654

/-- `n+1-A117656((n+1)²)/(n+1)` -/
def P6685869156070907227.Spec : Prop :=
  ∀ n, P6685869156070907227.a n = (A055654 (n + 1) : ℚ)

end A055654

/-! ## A055654.P1602080333174683829

`A095208(n+1)%A055653(n+1)`
-/

namespace A055654.P1602080333174683829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095208 (n + 1)) (A055653 (n + 1))

end

end A055654.P1602080333174683829

namespace A055654

/-- `A095208(n+1)%A055653(n+1)` -/
def P1602080333174683829.Spec : Prop :=
  ∀ n, P1602080333174683829.a n = A055654 (n + 1)

end A055654

/-!
# A055656: Excess in exponents of powers of 2 in Euler phi of n! compared to that of n!.

The programs for A055656, the canonical program `A055656.P11271106632421425074` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055656 has offset 1).

The definition of A055656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055656.P11271106632421425074

`A055597(n+1)-A011371(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055656

/-- `A055597(n+1)-A011371(n+1)` -/
def P11271106632421425074.Spec : Prop :=
  ∀ n, P11271106632421425074.a n = A055656 (n + 1)

theorem P11271106632421425074.correct : P11271106632421425074.Spec := by
  intro n
  simp only [A055656, Nat.add_sub_cancel]

end A055656

/-! ## A055656.P16314015487202511151

`∑[Δ[A088705(n)]*A010051(n+1)]`
-/

namespace A055656.P16314015487202511151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055656.P16314015487202511151

namespace A055656

/-- `∑[Δ[A088705(n)]*A010051(n+1)]` -/
def P16314015487202511151.Spec : Prop :=
  ∀ n, P16314015487202511151.a n = A055656 (n + 1)

end A055656

/-! ## A055656.P17162613755604145729

`∑[Δ[A088705(n)]%A089026(n+1)]`
-/

namespace A055656.P17162613755604145729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A089026 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055656.P17162613755604145729

namespace A055656

/-- `∑[Δ[A088705(n)]%A089026(n+1)]` -/
def P17162613755604145729.Spec : Prop :=
  ∀ n, P17162613755604145729.a n = A055656 (n + 1)

end A055656

/-! ## A055656.P15136799850753621633

`∑[A001511(A014684(n+1))-A001511(n+1)]`
-/

namespace A055656.P15136799850753621633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A014684 (n + 1)).toNat - A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055656.P15136799850753621633

namespace A055656

/-- `∑[A001511(A014684(n+1))-A001511(n+1)]` -/
def P15136799850753621633.Spec : Prop :=
  ∀ n, P15136799850753621633.a n = A055656 (n + 1)

end A055656

/-! ## A055656.P4236487508869017118

`∑[A007814(A014684(n+1))-A007814(n+1)]`
-/

namespace A055656.P4236487508869017118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014684 (n + 1)).toNat - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055656.P4236487508869017118

namespace A055656

/-- `∑[A007814(A014684(n+1))-A007814(n+1)]` -/
def P4236487508869017118.Spec : Prop :=
  ∀ n, P4236487508869017118.a n = A055656 (n + 1)

end A055656

/-! ## A055656.P9969457452676868369

`∑[A088705(A010051(n+1)+n)]-A000120(n)`
-/

namespace A055656.P9969457452676868369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A010051 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 n

end

end A055656.P9969457452676868369

namespace A055656

/-- `∑[A088705(A010051(n+1)+n)]-A000120(n)` -/
def P9969457452676868369.Spec : Prop :=
  ∀ n, P9969457452676868369.a n = A055656 (n + 1)

end A055656

/-! ## A055656.P12012155718824122373

`∑[A088705(A010051(n+1)+n)-A088705(n)]`
-/

namespace A055656.P12012155718824122373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A010051 (n + 1) + (n : ℤ)).toNat - A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055656.P12012155718824122373

namespace A055656

/-- `∑[A088705(A010051(n+1)+n)-A088705(n)]` -/
def P12012155718824122373.Spec : Prop :=
  ∀ n, P12012155718824122373.a n = A055656 (n + 1)

end A055656

/-! ## A055656.P14455962360569722936

`∑[A007814(n+1-A010051(n+1))-A007814(n+1)]`
-/

namespace A055656.P14455962360569722936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1 : ℤ) - A010051 (n + 1)).toNat - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055656.P14455962360569722936

namespace A055656

/-- `∑[A007814(n+1-A010051(n+1))-A007814(n+1)]` -/
def P14455962360569722936.Spec : Prop :=
  ∀ n, P14455962360569722936.a n = A055656 (n + 1)

end A055656

/-!
# A055658: Number of (3,n)-partitions of a chain of length n^2.

The programs for A055658, the canonical program `A055658.P9468472425480192668` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055658 has offset 1).

The definition of A055658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055658.P9468472425480192668

`n*(n-1)*((n+1)²-3*(n+1)+3)*((n+1)²-3*(n+1)+1)/6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055658

/-- `n*(n-1)*((n+1)²-3*(n+1)+3)*((n+1)²-3*(n+1)+1)/6` -/
def P9468472425480192668.Spec : Prop :=
  ∀ n, P9468472425480192668.a n = (A055658 (n + 1) : ℚ)

end A055658

/-! ## A055658.P7291745334223100429

`C((1-n)²+n, 3)`
-/

namespace A055658.P7291745334223100429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 3

end

end A055658.P7291745334223100429

namespace A055658

/-- `C((1-n)²+n, 3)` -/
def P7291745334223100429.Spec : Prop :=
  ∀ n, (P7291745334223100429.a n : ℤ) = A055658 (n + 1)

end A055658

/-! ## A055658.P7822537428625016676

`A006325(n)*A165900(n)`
-/

namespace A055658.P7822537428625016676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n * A165900 n

end

end A055658.P7822537428625016676

namespace A055658

/-- `A006325(n)*A165900(n)` -/
def P7822537428625016676.Spec : Prop :=
  ∀ n, P7822537428625016676.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P6116476011270723311

`lcm(2-A002061(n), A006325(n))`
-/

namespace A055658.P6116476011270723311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A002061 n) (A006325 n)

end

end A055658.P6116476011270723311

namespace A055658

/-- `lcm(2-A002061(n), A006325(n))` -/
def P6116476011270723311.Spec : Prop :=
  ∀ n, (P6116476011270723311.a n : ℤ) = A055658 (n + 1)

end A055658

/-! ## A055658.P6869330317169050553

`A006325(n)*A103505(n)-A006325(n)`
-/

namespace A055658.P6869330317169050553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n * A103505 n - A006325 n

end

end A055658.P6869330317169050553

namespace A055658

/-- `A006325(n)*A103505(n)-A006325(n)` -/
def P6869330317169050553.Spec : Prop :=
  ∀ n, P6869330317169050553.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P701608839670761327

`A000447(C(n, 2))`
-/

namespace A055658.P701608839670761327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (Nat.choose n 2)

end

end A055658.P701608839670761327

namespace A055658

/-- `A000447(C(n, 2))` -/
def P701608839670761327.Spec : Prop :=
  ∀ n, P701608839670761327.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P10929497601474844172

`A000447(∑[n]-n)`
-/

namespace A055658.P10929497601474844172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A055658.P10929497601474844172

namespace A055658

/-- `A000447(∑[n]-n)` -/
def P10929497601474844172.Spec : Prop :=
  ∀ n, P10929497601474844172.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P8605043626778366216

`2*A005900(A161680(n))-A161680(n)`
-/

namespace A055658.P8605043626778366216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005900 (A161680 n).toNat - A161680 n

end

end A055658.P8605043626778366216

namespace A055658

/-- `2*A005900(A161680(n))-A161680(n)` -/
def P8605043626778366216.Spec : Prop :=
  ∀ n, P8605043626778366216.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P9314252543203774869

`A126972(n²-n)-1`
-/

namespace A055658.P9314252543203774869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126972 (n ^ 2 - n) - 1

end

end A055658.P9314252543203774869

namespace A055658

/-- `A126972(n²-n)-1` -/
def P9314252543203774869.Spec : Prop :=
  ∀ n, P9314252543203774869.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P809121301021765499

`A000292(A132411(n)-n)`
-/

namespace A055658.P809121301021765499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A132411 n - (n : ℤ)).toNat

end

end A055658.P809121301021765499

namespace A055658

/-- `A000292(A132411(n)-n)` -/
def P809121301021765499.Spec : Prop :=
  ∀ n, P809121301021765499.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P3265215582837164835

`A000292(A014681(n²-n))`
-/

namespace A055658.P3265215582837164835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A014681 (n ^ 2 - n)).toNat

end

end A055658.P3265215582837164835

namespace A055658

/-- `A000292(A014681(n²-n))` -/
def P3265215582837164835.Spec : Prop :=
  ∀ n, P3265215582837164835.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P8462267912940469156

`A000125(n²-n)-A002061(n)`
-/

namespace A055658.P8462267912940469156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n ^ 2 - n) - A002061 n

end

end A055658.P8462267912940469156

namespace A055658

/-- `A000125(n²-n)-A002061(n)` -/
def P8462267912940469156.Spec : Prop :=
  ∀ n, P8462267912940469156.a n = A055658 (n + 1)

end A055658

/-! ## A055658.P2959436673975104785

`A000292((n²-(n+1))%A022811(n))`
-/

namespace A055658.P2959436673975104785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod ((n ^ 2 : ℤ) - (n + 1 : ℤ)) (A022811 n)).toNat

end

end A055658.P2959436673975104785

namespace A055658

/-- `A000292((n²-(n+1))%A022811(n))` -/
def P2959436673975104785.Spec : Prop :=
  ∀ n, P2959436673975104785.a n = A055658 (n + 1)

end A055658

/-!
# A055659: Number of (2,n)-partitions of a chain of length n^3.

The programs for A055659, the canonical program `A055659.P10676941262427054220` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055659 has offset 1).

The definition of A055659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055659.P10676941262427054220

`n*((n+1)²+n+1-1)*((n+1)^3-2*(n+1)+2)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055659

/-- `n*((n+1)²+n+1-1)*((n+1)^3-2*(n+1)+2)/2` -/
def P10676941262427054220.Spec : Prop :=
  ∀ n, P10676941262427054220.a n = (A055659 (n + 1) : ℚ)

end A055659

/-! ## A055659.P14455257896692818115

`C((n+1)^3-2*n, 2)`
-/

namespace A055659.P14455257896692818115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 1) ^ 3 : ℤ) - (2 * n : ℤ)).toNat 2

end

end A055659.P14455257896692818115

namespace A055659

/-- `C((n+1)^3-2*n, 2)` -/
def P14455257896692818115.Spec : Prop :=
  ∀ n, (P14455257896692818115.a n : ℤ) = A055659 (n + 1)

end A055659

/-! ## A055659.P2250958154132831019

`record[C(A000578(ceil(n/2))-(n-1), 2)]`
-/

namespace A055659.P2250958154132831019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000578 ⌈(n : ℚ) / 2⌉.toNat - ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055659.P2250958154132831019

namespace A055659

/-- `record[C(A000578(ceil(n/2))-(n-1), 2)]` -/
def P2250958154132831019.Spec : Prop :=
  ∀ n, (P2250958154132831019.a n : ℤ) = A055659 (n + 1)

end A055659

/-! ## A055659.P9020727591780695711

`A033445(n+1)+C(A033445(n+1), 2)`
-/

namespace A055659.P9020727591780695711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033445 (n + 1) + (Nat.choose (A033445 (n + 1)).toNat 2 : ℤ)

end

end A055659.P9020727591780695711

namespace A055659

/-- `A033445(n+1)+C(A033445(n+1), 2)` -/
def P9020727591780695711.Spec : Prop :=
  ∀ n, P9020727591780695711.a n = A055659 (n + 1)

end A055659

/-! ## A055659.P7773705946949555852

`record[C(A008619(n)^3-n, 2)]`
-/

namespace A055659.P7773705946949555852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008619 n ^ 3 - (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055659.P7773705946949555852

namespace A055659

/-- `record[C(A008619(n)^3-n, 2)]` -/
def P7773705946949555852.Spec : Prop :=
  ∀ n, (P7773705946949555852.a n : ℤ) = A055659 (n + 1)

end A055659

/-!
# A055660: Number of (2,2; n,n)-partitions of a chain of length n^2 + n.

The programs for A055660, the canonical program `A055660.P15944873861568648100` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055660 has offset 4).

The definition of A055660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055660.P15944873861568648100

`2*(2*(n+4)-3)*(n+1)*(2*(n+4)-5)!/((n+1)!²*(n+4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055660

/-- `2*(2*(n+4)-3)*(n+1)*(2*(n+4)-5)!/((n+1)!²*(n+4))` -/
def P15944873861568648100.Spec : Prop :=
  ∀ n, P15944873861568648100.a n = (A055660 (n + 4) : ℚ)

end A055660

/-! ## A055660.P6993472660760828047

`3*A030060(n)`
-/

namespace A055660.P6993472660760828047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A030060 n

end

end A055660.P6993472660760828047

namespace A055660

/-- `3*A030060(n)` -/
def P6993472660760828047.Spec : Prop :=
  ∀ n, P6993472660760828047.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P11797339521517655501

`∑[n+1]*A001791(n+3)`
-/

namespace A055660.P11797339521517655501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001791 (n + 3)

end

end A055660.P11797339521517655501

namespace A055660

/-- `∑[n+1]*A001791(n+3)` -/
def P11797339521517655501.Spec : Prop :=
  ∀ n, P11797339521517655501.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P6198753516645547778

`((n+2)²-1)*A002054(n+2)`
-/

namespace A055660.P6198753516645547778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1) * A002054 (n + 2)

end

end A055660.P6198753516645547778

namespace A055660

/-- `((n+2)²-1)*A002054(n+2)` -/
def P6198753516645547778.Spec : Prop :=
  ∀ n, P6198753516645547778.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P5450269015012384129

`3*C(n+3, 3)*A000108(n+3)`
-/

namespace A055660.P5450269015012384129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.choose (n + 3) 3 : ℤ) * A000108 (n + 3))

end

end A055660.P5450269015012384129

namespace A055660

/-- `3*C(n+3, 3)*A000108(n+3)` -/
def P5450269015012384129.Spec : Prop :=
  ∀ n, P5450269015012384129.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P13871435941449615425

`A002054(n+2)*A005563(n+1)`
-/

namespace A055660.P13871435941449615425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) * A005563 (n + 1)

end

end A055660.P13871435941449615425

namespace A055660

/-- `A002054(n+2)*A005563(n+1)` -/
def P13871435941449615425.Spec : Prop :=
  ∀ n, P13871435941449615425.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P9694186826145480129

`A005563(n+1)*A037955(A005408(n+2))`
-/

namespace A055660.P9694186826145480129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) * A037955 (A005408 (n + 2)).toNat

end

end A055660.P9694186826145480129

namespace A055660

/-- `A005563(n+1)*A037955(A005408(n+2))` -/
def P9694186826145480129.Spec : Prop :=
  ∀ n, P9694186826145480129.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P17604029722851416800

`A005563(n+1)*A116385(A005843(n+2))`
-/

namespace A055660.P17604029722851416800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) * A116385 (A005843 (n + 2)).toNat

end

end A055660.P17604029722851416800

namespace A055660

/-- `A005563(n+1)*A116385(A005843(n+2))` -/
def P17604029722851416800.Spec : Prop :=
  ∀ n, P17604029722851416800.a n = A055660 (n + 4)

end A055660

/-! ## A055660.P6279408957664514551

`(n+1)*(n+3)*C(2*n+5, n+1)`
-/

namespace A055660.P6279408957664514551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 3) * Nat.choose (2 * n + 5) (n + 1))

end

end A055660.P6279408957664514551

namespace A055660

/-- `(n+1)*(n+3)*C(2*n+5, n+1)` -/
def P6279408957664514551.Spec : Prop :=
  ∀ n, (P6279408957664514551.a n : ℤ) = A055660 (n + 4)

end A055660

/-! ## A055660.P18053552915113646902

`C(2*(n+3), n+2)*∑[n+1]`
-/

namespace A055660.P18053552915113646902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 3)) (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055660.P18053552915113646902

namespace A055660

/-- `C(2*(n+3), n+2)*∑[n+1]` -/
def P18053552915113646902.Spec : Prop :=
  ∀ n, (P18053552915113646902.a n : ℤ) = A055660 (n + 4)

end A055660

/-!
# A055661: Tower of Hanoi positions (A055662) converted from base 3 to base 10.

The programs for A055661, there is no canonical definition to state claims against.
-/

/-! ## A055661.P4973475815420167151

`A004488(A128202(n+1))`
-/

namespace A055661.P4973475815420167151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A128202 (n + 1)).toNat

end

end A055661.P4973475815420167151

/-! ## A055661.P8381577872347253570

`floor(A128202(2*n+1)/3)`
-/

namespace A055661.P8381577872347253570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128202 (2 * n + 1) : ℚ) / 3⌋

end

end A055661.P8381577872347253570

/-! ## A055661.P1583373700787976751

`A002264(A128202(2*(n+1)))`
-/

namespace A055661.P1583373700787976751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A128202 (2 * (n + 1))).toNat

end

end A055661.P1583373700787976751

/-! ## A055661.P8341240149464254672

`A028898(A055662(n))`
-/

namespace A055661.P8341240149464254672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A055662 n).toNat

end

end A055661.P8341240149464254672

/-!
# A055662: Successive positions in Tower of Hanoi (with three pegs {0,1,2}) where xyz means smallest disk is on peg z, second smallest is on peg y, third smallest on peg x, etc. and leading zeros indicate largest disks are all on peg 0.

The programs for A055662, there is no canonical definition to state claims against.
-/

/-! ## A055662.P10512839998288187858

`A007089(A055661(n))`
-/

namespace A055662.P10512839998288187858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A055661 n).toNat

end

end A055662.P10512839998288187858

/-! ## A055662.P7330693974867980768

`A007089(A004488(A128202(n+1)))`
-/

namespace A055662.P7330693974867980768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A004488 (A128202 (n + 1)).toNat).toNat

end

end A055662.P7330693974867980768

/-! ## A055662.P1881220901204886726

`A007089(floor(A128202(2*n+1)/3))`
-/

namespace A055662.P1881220901204886726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ⌊(A128202 (2 * n + 1) : ℚ) / 3⌋.toNat

end

end A055662.P1881220901204886726

/-! ## A055662.P11229825939728351278

`A343810(floor(A128202(2*n+1)/3))/4`
-/

namespace A055662.P11229825939728351278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 ⌊(A128202 (2 * n + 1) : ℚ) / 3⌋.toNat : ℚ) / 4

end

end A055662.P11229825939728351278

/-!
# A055663: Number of (3,3; n,n)-partitions of a chain of length n^2 + n.

The programs for A055663, the canonical program `A055663.P5131911919764471879` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055663 has offset 9).

The definition of A055663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055663.P5131911919764471879

`∑[∑[n+1]]*A002696(n+6)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055663

/-- `∑[∑[n+1]]*A002696(n+6)` -/
def P5131911919764471879.Spec : Prop :=
  ∀ n, P5131911919764471879.a n = A055663 (n + 9)

theorem P5131911919764471879.correct : P5131911919764471879.Spec := by
  intro n
  simp only [A055663, Nat.add_sub_cancel]

end A055663

/-! ## A055663.P9519417437073537228

`A002696(n+6)*A058187(2*n)`
-/

namespace A055663.P9519417437073537228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002696 (n + 6) * A058187 (2 * n)

end

end A055663.P9519417437073537228

namespace A055663

/-- `A002696(n+6)*A058187(2*n)` -/
def P9519417437073537228.Spec : Prop :=
  ∀ n, P9519417437073537228.a n = A055663 (n + 9)

end A055663

/-! ## A055663.P13082377407246808592

`A178820(eq[9, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A055663.P13082377407246808592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055663.P13082377407246808592

namespace A055663

/-- `A178820(eq[9, round(sqrt(2*(n+1)))²-(2*n+1)])` -/
def P13082377407246808592.Spec : Prop :=
  ∀ n, P13082377407246808592.a n = A055663 (n + 9)

end A055663

/-! ## A055663.P18023019135211444792

`A178820(A051890(n+5)+A005408(n+1))`
-/

namespace A055663.P18023019135211444792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178820 (A051890 (n + 5) + A005408 (n + 1)).toNat

end

end A055663.P18023019135211444792

namespace A055663

/-- `A178820(A051890(n+5)+A005408(n+1))` -/
def P18023019135211444792.Spec : Prop :=
  ∀ n, P18023019135211444792.a n = A055663 (n + 9)

end A055663

/-! ## A055663.P16898639654465235896

`4*A108426(A052905(n+2))`
-/

namespace A055663.P16898639654465235896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A108426 (A052905 (n + 2)).toNat

end

end A055663.P16898639654465235896

namespace A055663

/-- `4*A108426(A052905(n+2))` -/
def P16898639654465235896.Spec : Prop :=
  ∀ n, P16898639654465235896.a n = A055663 (n + 9)

end A055663

/-!
# A055664: Norms of Eisenstein-Jacobi primes.

The programs for A055664, there is no canonical definition to state claims against.
-/

/-! ## A055664.P1469079670052650392

`record[(n+3)*A135461(n+3)]`
-/

namespace A055664.P1469079670052650392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A135461 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055664.P1469079670052650392

/-! ## A055664.P9390870291985481746

`filter[A222030(n), A135461(#)]`
-/

namespace A055664.P9390870291985481746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P9390870291985481746

/-! ## A055664.P14365453119963566629

`filter[A000430(n+1), A135461(#)]`
-/

namespace A055664.P14365453119963566629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P14365453119963566629

/-! ## A055664.P11266930595093762319

`filter[A000961(n+1), A135461(#)]`
-/

namespace A055664.P11266930595093762319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P11266930595093762319

/-! ## A055664.P13872022286844512880

`filter[A009087(n+1), A135461(#)]`
-/

namespace A055664.P13872022286844512880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P13872022286844512880

/-! ## A055664.P2221195680373184020

`filter[A050376(n+1), A135461(#)]`
-/

namespace A055664.P2221195680373184020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P2221195680373184020

/-! ## A055664.P4704927346013072139

`filter[A059046(n+1), A135461(#)]`
-/

namespace A055664.P4704927346013072139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P4704927346013072139

/-! ## A055664.P5755538160942980995

`filter[A066724(n+1), A135461(#)]`
-/

namespace A055664.P5755538160942980995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P5755538160942980995

/-! ## A055664.P2772756291094796600

`filter[A069899(n+1), A135461(#)]`
-/

namespace A055664.P2772756291094796600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P2772756291094796600

/-! ## A055664.P3486077286821535330

`filter[A071139(n+1), A135461(#)]`
-/

namespace A055664.P3486077286821535330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P3486077286821535330

/-! ## A055664.P5086957805871917217

`filter[A072303(n+1), A135461(#)]`
-/

namespace A055664.P5086957805871917217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P5086957805871917217

/-! ## A055664.P6094872496561412126

`filter[A074583(n+1), A135461(#)]`
-/

namespace A055664.P6094872496561412126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P6094872496561412126

/-! ## A055664.P17447164214039339043

`filter[A081061(n+1), A135461(#)]`
-/

namespace A055664.P17447164214039339043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P17447164214039339043

/-! ## A055664.P13445513706142501970

`filter[A081735(n+1), A135461(#)]`
-/

namespace A055664.P13445513706142501970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P13445513706142501970

/-! ## A055664.P14503870469371395724

`filter[A084400(n+1), A135461(#)]`
-/

namespace A055664.P14503870469371395724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P14503870469371395724

/-! ## A055664.P678141010304501564

`filter[A085233(n+1), A135461(#)]`
-/

namespace A055664.P678141010304501564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P678141010304501564

/-! ## A055664.P12677220495200505708

`filter[A086486(n+1), A135461(#)]`
-/

namespace A055664.P12677220495200505708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P12677220495200505708

/-! ## A055664.P14642243152607500172

`filter[A087441(n+1), A135461(#)]`
-/

namespace A055664.P14642243152607500172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P14642243152607500172

/-! ## A055664.P5139814946359127709

`filter[A089237(n+1), A135461(#)]`
-/

namespace A055664.P5139814946359127709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P5139814946359127709

/-! ## A055664.P10804470682600444121

`filter[A089352(n+1), A135461(#)]`
-/

namespace A055664.P10804470682600444121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A055664.P10804470682600444121

/-!
# A055665: Number of Eisenstein-Jacobi primes of successive norms (indexed by A055664).

The programs for A055665, there is no canonical definition to state claims against.
-/

/-! ## A055665.P14155289279180596647

`6*A055666(n+1)`
-/

namespace A055665.P14155289279180596647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A055666 (n + 1)

end

end A055665.P14155289279180596647

/-! ## A055665.P5988078107734254482

`A008458(A055666(n+1)+n+1)-A008458(n+1)`
-/

namespace A055665.P5988078107734254482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A055666 (n + 1) + (n + 1 : ℤ)).toNat - A008458 (n + 1)

end

end A055665.P5988078107734254482

/-! ## A055665.P2262566757946579161

`A004016(A055664(n+1))`
-/

namespace A055665.P2262566757946579161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A055664 (n + 1)).toNat

end

end A055665.P2262566757946579161

/-! ## A055665.P4915806391754648445

`p?[A004016(n)-A135461(n)]+1`
-/

namespace A055665.P4915806391754648445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n - A135461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A055665.P4915806391754648445

/-! ## A055665.P18075970181839278220

`A055667(A055664(2*n+1-n))`
-/

namespace A055665.P18075970181839278220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A055664 (2 * n + 1 - n)).toNat

end

end A055665.P18075970181839278220

/-! ## A055665.P6694811829452679781

`A055667(A055664(n+1)+A000007(n))`
-/

namespace A055665.P6694811829452679781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A055664 (n + 1) + A000007 n).toNat

end

end A055665.P6694811829452679781

/-! ## A055665.P7235929417161532269

`A035019(∑{d}[A055664(n+1), A002324(#)+2])`
-/

namespace A055665.P7235929417161532269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (∑ d ∈ Nat.divisors (f1 n).natAbs, (A002324 d + 2)).toNat

end

end A055665.P7235929417161532269

/-!
# A055666: Number of inequivalent Eisenstein-Jacobi primes of successive norms (indexed by A055664).

The programs for A055666, there is no canonical definition to state claims against.
-/

/-! ## A055666.P6088715895520641612

`A055665(n+1)/6`
-/

namespace A055666.P6088715895520641612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055665 (n + 1) : ℚ) / 6

end

end A055666.P6088715895520641612

/-! ## A055666.P2601432423718156785

`A055665(A000027(n+1))%5`
-/

namespace A055666.P2601432423718156785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055665 (A000027 (n + 1)).toNat) 5

end

end A055666.P2601432423718156785

/-! ## A055666.P4439821046100186368

`A055642(A055665(n+1)+A051903(n+1))`
-/

namespace A055666.P4439821046100186368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055665 (n + 1) + A051903 (n + 1)).toNat

end

end A055666.P4439821046100186368

/-! ## A055666.P2914880112591240376

`val(A055665(n+1), A001227(A084127(n+3)))`
-/

namespace A055666.P2914880112591240376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055665 (n + 1)).toNat (A001227 (A084127 (n + 3)).toNat).toNat

end

end A055666.P2914880112591240376

/-! ## A055666.P18063249314949912527

`A055640(A055672(2*n)+A055665(n+1))`
-/

namespace A055666.P18063249314949912527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A055672 (2 * n) + A055665 (n + 1)).toNat

end

end A055666.P18063249314949912527

/-! ## A055666.P7983092022333601835

`A055642(A055672(2*n)+A055665(n+1))`
-/

namespace A055666.P7983092022333601835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055672 (2 * n) + A055665 (n + 1)).toNat

end

end A055666.P7983092022333601835

/-! ## A055666.P484923554262076009

`A055640(A273302(2*n+3)+A055665(n+1))`
-/

namespace A055666.P484923554262076009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A273302 (2 * n + 3) + A055665 (n + 1)).toNat

end

end A055666.P484923554262076009

/-! ## A055666.P11437563745818657054

`A000203(A055664(n+1))%3`
-/

namespace A055666.P11437563745818657054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A055664 (n + 1)).toNat) 3

end

end A055666.P11437563745818657054

/-! ## A055666.P15365676061247420119

`gcd(2, A000122(n)+A000005(A055664(n+1)))`
-/

namespace A055666.P15365676061247420119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000122 n + A000005 (A055664 (n + 1)).toNat)

end

end A055666.P15365676061247420119

/-! ## A055666.P7434749066556900858

`A002324(A055664(n+1))`
-/

namespace A055666.P7434749066556900858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A055664 (n + 1)).toNat

end

end A055666.P7434749066556900858

/-! ## A055666.P1019184624586879797

`A055668(A055664(2*n+1-n))`
-/

namespace A055666.P1019184624586879797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 (A055664 (2 * n + 1 - n)).toNat

end

end A055666.P1019184624586879797

/-! ## A055666.P17358467930739244185

`∑{d}[A004016(A055664(n+1)), A055668(#)]`
-/

namespace A055666.P17358467930739244185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A055664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055668 d

end

end A055666.P17358467930739244185

/-! ## A055666.P796870390973130505

`A035170(A106865(n+1))/A001222(A055664(n+1))`
-/

namespace A055666.P796870390973130505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035170 (A106865 (n + 1)).toNat : ℚ) / (A001222 (A055664 (n + 1)).toNat : ℚ)

end

end A055666.P796870390973130505

/-! ## A055666.P8018873326214256494

`A035170(A033205(n+1))/A001222(A055664(n+1))`
-/

namespace A055666.P8018873326214256494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035170 (A033205 (n + 1)).toNat : ℚ) / (A001222 (A055664 (n + 1)).toNat : ℚ)

end

end A055666.P8018873326214256494

/-! ## A055666.P60439879688587989

`gcd(A000005(A055664(n+1)), A000122(n²))`
-/

namespace A055666.P60439879688587989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A055664 (n + 1)).toNat) (A000122 (n ^ 2))

end

end A055666.P60439879688587989

/-!
# A055667: Number of Eisenstein-Jacobi primes of norm n.

The programs for A055667, there is no canonical definition to state claims against.
-/

/-! ## A055667.P15240429744604683276

`6*A055668(n)`
-/

namespace A055667.P15240429744604683276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A055668 n

end

end A055667.P15240429744604683276

/-! ## A055667.P17147075486533912423

`Δ[A135462(abs(1-n))]`
-/

namespace A055667.P17147075486533912423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135462 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055667.P17147075486533912423

/-! ## A055667.P4128376885028520484

`A004016(n)*A135461(n)`
-/

namespace A055667.P4128376885028520484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A135461 n

end

end A055667.P4128376885028520484

/-! ## A055667.P11288243980479651441

`lcm(A004016(n), A055668(n))`
-/

namespace A055667.P11288243980479651441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004016 n) (A055668 n)

end

end A055667.P11288243980479651441

/-! ## A055667.P12628958356947062536

`abs(A135461(n)*A180318(n))`
-/

namespace A055667.P12628958356947062536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135461 n * A180318 n|

end

end A055667.P12628958356947062536

/-! ## A055667.P3371451453610359535

`lcm(A055668(n)², A040006(n))`
-/

namespace A055667.P3371451453610359535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055668 n ^ 2) (A040006 n)

end

end A055667.P3371451453610359535

/-! ## A055667.P5717610121085555249

`lcm(dr(A055668(n)), A180318(n))`
-/

namespace A055667.P5717610121085555249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A055668 n) : ℤ) (A180318 n)

end

end A055667.P5717610121085555249

/-! ## A055667.P16959234425929876432

`char[A055664(n+1)]*A004016(n)`
-/

namespace A055667.P16959234425929876432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004016 n

end

end A055667.P16959234425929876432

/-! ## A055667.P14467539539174837383

`A008458(A055668(n)+n)-A008458(n)`
-/

namespace A055667.P14467539539174837383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A055668 n + (n : ℤ)).toNat - A008458 n

end

end A055667.P14467539539174837383

/-! ## A055667.P14874188531059012496

`A008588(A055668(n)+n)-A008588(n)`
-/

namespace A055667.P14874188531059012496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A055668 n + (n : ℤ)).toNat - A008588 n

end

end A055667.P14874188531059012496

/-! ## A055667.P8142143713024509708

`A016921(A055668(n)+n)-A016921(n)`
-/

namespace A055667.P8142143713024509708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A055668 n + (n : ℤ)).toNat - A016921 n

end

end A055667.P8142143713024509708

/-! ## A055667.P9741469226465411848

`A008458(n)-A008458(n-A055668(n))`
-/

namespace A055667.P9741469226465411848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A008458 ((n : ℤ) - A055668 n).toNat

end

end A055667.P9741469226465411848

/-! ## A055667.P16395356491419490662

`A008588(n)-A008588(n-A055668(n))`
-/

namespace A055667.P16395356491419490662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A008588 ((n : ℤ) - A055668 n).toNat

end

end A055667.P16395356491419490662

/-! ## A055667.P14978237715816036328

`A016921(n)-A016921(n-A055668(n))`
-/

namespace A055667.P14978237715816036328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A016921 ((n : ℤ) - A055668 n).toNat

end

end A055667.P14978237715816036328

/-! ## A055667.P18125937835305945820

`A004016(n)%(A003215(n)^A055668(n))`
-/

namespace A055667.P18125937835305945820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004016 n) (SequenceMachineLib.roundAway ((A003215 n : ℚ) ^ (A055668 n : ℤ)))

end

end A055667.P18125937835305945820

/-! ## A055667.P5814313617011800271

`A005928(A008486(n)*A135461(n))*A135461(n)`
-/

namespace A055667.P5814313617011800271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A008486 n * A135461 n).toNat * A135461 n

end

end A055667.P5814313617011800271

/-! ## A055667.P2163761490117736461

`A005928(A008486(n))*A135461(n)`
-/

namespace A055667.P2163761490117736461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A008486 n).toNat * A135461 n

end

end A055667.P2163761490117736461

/-! ## A055667.P6496627632673855963

`A135461(n)*A180318(A008598(n*A135461(n)))`
-/

namespace A055667.P6496627632673855963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 n * A180318 (A008598 ((n : ℤ) * A135461 n).toNat).toNat

end

end A055667.P6496627632673855963

/-! ## A055667.P12715236326725218592

`A135461(n)*A180318(A008598(n))`
-/

namespace A055667.P12715236326725218592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 n * A180318 (A008598 n).toNat

end

end A055667.P12715236326725218592

/-! ## A055667.P14371947916599516559

`A338992(A055668(n)^A013632(n))`
-/

namespace A055667.P14371947916599516559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338992 (SequenceMachineLib.roundAway ((A055668 n : ℚ) ^ (A013632 n : ℤ))).toNat

end

end A055667.P14371947916599516559

/-!
# A055668: Number of inequivalent Eisenstein-Jacobi primes of norm n.

The programs for A055668, there is no canonical definition to state claims against.
-/

/-! ## A055668.P3496564949573853736

`A055667(n)/6`
-/

namespace A055668.P3496564949573853736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055667 n : ℚ) / 6

end

end A055668.P3496564949573853736

/-! ## A055668.P8963460720429419580

`A001877(A055667(n))`
-/

namespace A055668.P8963460720429419580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A055667 n).toNat

end

end A055668.P8963460720429419580

/-! ## A055668.P3217525938166358510

`A066339(A055667(n)+1)`
-/

namespace A055668.P3217525938166358510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A055667 n + 1).toNat

end

end A055668.P3217525938166358510

/-! ## A055668.P14922271239471247335

`A100950(A055667(n)+1)`
-/

namespace A055668.P14922271239471247335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100950 (A055667 n + 1).toNat

end

end A055668.P14922271239471247335

/-! ## A055668.P18095060891229220563

`A301506(A055667(n)+1)`
-/

namespace A055668.P18095060891229220563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A055667 n + 1).toNat

end

end A055668.P18095060891229220563

/-! ## A055668.P4905498887125325476

`A307719(A055667(n)+1)`
-/

namespace A055668.P4905498887125325476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 (A055667 n + 1).toNat

end

end A055668.P4905498887125325476

/-! ## A055668.P13740067027275811877

`A307706(A055667(n)+2)`
-/

namespace A055668.P13740067027275811877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307706 (A055667 n + 2).toNat

end

end A055668.P13740067027275811877

/-! ## A055668.P8713804351225781725

`A055667(n)%A168092(n)`
-/

namespace A055668.P8713804351225781725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055667 n) (A168092 n)

end

end A055668.P8713804351225781725

/-! ## A055668.P3540699557008962389

`A001222(A055667(n)²+1)`
-/

namespace A055668.P3540699557008962389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055667 n ^ 2 + 1).toNat

end

end A055668.P3540699557008962389

/-! ## A055668.P12087654370032479314

`A123330(n)/2*A135461(n)`
-/

namespace A055668.P12087654370032479314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123330 n : ℚ) / 2 * (A135461 n : ℚ)

end

end A055668.P12087654370032479314

/-! ## A055668.P13563559629022851362

`A004016(n)*A135461(n)/6`
-/

namespace A055668.P13563559629022851362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n * A135461 n : ℚ) / 6

end

end A055668.P13563559629022851362

/-! ## A055668.P5140128175474196281

`val(A004016(n*A135461(n)), 2)`
-/

namespace A055668.P5140128175474196281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004016 ((n : ℤ) * A135461 n).toNat).toNat 2

end

end A055668.P5140128175474196281

/-! ## A055668.P1800631755719454536

`A135461(n)+char[A002476(n+1)]`
-/

namespace A055668.P1800631755719454536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055668.P1800631755719454536

/-! ## A055668.P6421946958600248051

`A135461(n)+char[A007645(n+2)]`
-/

namespace A055668.P6421946958600248051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055668.P6421946958600248051

/-! ## A055668.P8490047230359177000

`char[A002476(n+1)]+char[A055664(n+1)]`
-/

namespace A055668.P8490047230359177000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A055668.P8490047230359177000

/-! ## A055668.P559634116186770701

`A000174(A004016(n))*A135461(n)`
-/

namespace A055668.P559634116186770701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A004016 n).toNat * A135461 n

end

end A055668.P559634116186770701

/-! ## A055668.P1027044094937127958

`A001877(A004016(n*A135461(n)))`
-/

namespace A055668.P1027044094937127958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A004016 ((n : ℤ) * A135461 n).toNat).toNat

end

end A055668.P1027044094937127958

/-! ## A055668.P9223701538830631462

`A002266(A004016(n)*A135461(n))`
-/

namespace A055668.P9223701538830631462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004016 n * A135461 n).toNat

end

end A055668.P9223701538830631462

/-! ## A055668.P9246308953426501128

`A027868(A004016(n)*A135461(n))`
-/

namespace A055668.P9246308953426501128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A004016 n * A135461 n).toNat

end

end A055668.P9246308953426501128

/-! ## A055668.P10689293811041976509

`A007318(A033716(n))*A135461(n)`
-/

namespace A055668.P10689293811041976509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A033716 n).toNat * A135461 n

end

end A055668.P10689293811041976509

/-!
# A055669: Number of prime Hurwitz quaternions of norm prime(n).

The programs for A055669, the canonical program `A055669.P6290050088216304237` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055669 has offset 1).

The definition of A055669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055669.P6290050088216304237

`24*A055670(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055669

/-- `24*A055670(n+1)` -/
def P6290050088216304237.Spec : Prop :=
  ∀ n, P6290050088216304237.a n = A055669 (n + 1)

theorem P6290050088216304237.correct : P6290050088216304237.Spec := by
  intro n
  simp only [A055669, Nat.add_sub_cancel]

end A055669

/-! ## A055669.P5243451235874600656

`A040552(n)*A111333(n+1)`
-/

namespace A055669.P5243451235874600656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040552 n * A111333 (n + 1)

end

end A055669.P5243451235874600656

namespace A055669

/-- `A040552(n)*A111333(n+1)` -/
def P5243451235874600656.Spec : Prop :=
  ∀ n, P5243451235874600656.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P4556820584245767818

`A122553(n)*A240068(n+1)`
-/

namespace A055669.P4556820584245767818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A240068 (n + 1)

end

end A055669.P4556820584245767818

namespace A055669

/-- `A122553(n)*A240068(n+1)` -/
def P4556820584245767818.Spec : Prop :=
  ∀ n, P4556820584245767818.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P12125954006064005187

`A000118(A100484(n+1))`
-/

namespace A055669.P12125954006064005187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A100484 (n + 1)).toNat

end

end A055669.P12125954006064005187

namespace A055669

/-- `A000118(A100484(n+1))` -/
def P12125954006064005187.Spec : Prop :=
  ∀ n, P12125954006064005187.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P5868991665338919354

`A000118(A001747(n+2))`
-/

namespace A055669.P5868991665338919354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A001747 (n + 2)).toNat

end

end A055669.P5868991665338919354

namespace A055669

/-- `A000118(A001747(n+2))` -/
def P5868991665338919354.Spec : Prop :=
  ∀ n, P5868991665338919354.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P1304855706728366888

`A000118(A077017(n+2))`
-/

namespace A055669.P1304855706728366888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A077017 (n + 2)).toNat

end

end A055669.P1304855706728366888

namespace A055669

/-- `A000118(A077017(n+2))` -/
def P1304855706728366888.Spec : Prop :=
  ∀ n, P1304855706728366888.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P16104329346401868025

`A000118(Δ[2*A007504(n)])`
-/

namespace A055669.P16104329346401868025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (f1 (n + 1) - f1 n).toNat

end

end A055669.P16104329346401868025

namespace A055669

/-- `A000118(Δ[2*A007504(n)])` -/
def P16104329346401868025.Spec : Prop :=
  ∀ n, P16104329346401868025.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P5157785987236720042

`A000118(2*A000040(n+1))`
-/

namespace A055669.P5157785987236720042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * A000040 (n + 1)).toNat

end

end A055669.P5157785987236720042

namespace A055669

/-- `A000118(2*A000040(n+1))` -/
def P5157785987236720042.Spec : Prop :=
  ∀ n, P5157785987236720042.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P14836488940494902665

`A000118(A001749(n+1)/2)`
-/

namespace A055669.P14836488940494902665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A055669.P14836488940494902665

namespace A055669

/-- `A000118(A001749(n+1)/2)` -/
def P14836488940494902665.Spec : Prop :=
  ∀ n, P14836488940494902665.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P747032290415929288

`A000118(2*A008578(n+2))`
-/

namespace A055669.P747032290415929288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * A008578 (n + 2)).toNat

end

end A055669.P747032290415929288

namespace A055669

/-- `A000118(2*A008578(n+2))` -/
def P747032290415929288.Spec : Prop :=
  ∀ n, P747032290415929288.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P14029745971092554522

`A000118(A062876(n+1)/2)`
-/

namespace A055669.P14029745971092554522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (SequenceMachineLib.roundAway ((A062876 (n + 1) : ℚ) / 2)).toNat

end

end A055669.P14029745971092554522

namespace A055669

/-- `A000118(A062876(n+1)/2)` -/
def P14029745971092554522.Spec : Prop :=
  ∀ n, P14029745971092554522.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P17660156231616961551

`record[A000118(2*A006530(n+1))]`
-/

namespace A055669.P17660156231616961551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055669.P17660156231616961551

namespace A055669

/-- `record[A000118(2*A006530(n+1))]` -/
def P17660156231616961551.Spec : Prop :=
  ∀ n, P17660156231616961551.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P2455851763870655017

`record[A000118(2*A020639(n+1))]`
-/

namespace A055669.P2455851763870655017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055669.P2455851763870655017

namespace A055669

/-- `record[A000118(2*A020639(n+1))]` -/
def P2455851763870655017.Spec : Prop :=
  ∀ n, P2455851763870655017.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P10666145674956799892

`A000118(A000040(n+1)+A000040(n+1))`
-/

namespace A055669.P10666145674956799892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A055669.P10666145674956799892

namespace A055669

/-- `A000118(A000040(n+1)+A000040(n+1))` -/
def P10666145674956799892.Spec : Prop :=
  ∀ n, P10666145674956799892.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P15366912640303154957

`A000118(A001749(n+1))`
-/

namespace A055669.P15366912640303154957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A001749 (n + 1)).toNat

end

end A055669.P15366912640303154957

namespace A055669

/-- `A000118(A001749(n+1))` -/
def P15366912640303154957.Spec : Prop :=
  ∀ n, P15366912640303154957.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P2420749342123399457

`A000118(A062876(n+1))`
-/

namespace A055669.P2420749342123399457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A062876 (n + 1)).toNat

end

end A055669.P2420749342123399457

namespace A055669

/-- `A000118(A062876(n+1))` -/
def P2420749342123399457.Spec : Prop :=
  ∀ n, P2420749342123399457.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P15820646409866413131

`record[A055671(n+2)]`
-/

namespace A055669.P15820646409866413131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055669.P15820646409866413131

namespace A055669

/-- `record[A055671(n+2)]` -/
def P15820646409866413131.Spec : Prop :=
  ∀ n, P15820646409866413131.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P8019061646368359675

`A004011(A000040(n+1))`
-/

namespace A055669.P8019061646368359675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 (A000040 (n + 1)).toNat

end

end A055669.P8019061646368359675

namespace A055669

/-- `A004011(A000040(n+1))` -/
def P8019061646368359675.Spec : Prop :=
  ∀ n, P8019061646368359675.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P15233824854500474861

`A004011(A006005(n+1))`
-/

namespace A055669.P15233824854500474861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 (A006005 (n + 1)).toNat

end

end A055669.P15233824854500474861

namespace A055669

/-- `A004011(A006005(n+1))` -/
def P15233824854500474861.Spec : Prop :=
  ∀ n, P15233824854500474861.a n = A055669 (n + 1)

end A055669

/-! ## A055669.P11401306825710468453

`A008606(A055670(n+1))`
-/

namespace A055669.P11401306825710468453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A055670 (n + 1)).toNat

end

end A055669.P11401306825710468453

namespace A055669

/-- `A008606(A055670(n+1))` -/
def P11401306825710468453.Spec : Prop :=
  ∀ n, P11401306825710468453.a n = A055669 (n + 1)

end A055669

/-!
# A055670: a(n) = prime(n) - (-1)^prime(n).

The programs for A055670, the canonical program `A055670.P1490265546806468134` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055670 has offset 1).

The definition of A055670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055670.P427073354595742359

`A055669(n+1)/24`
-/

namespace A055670.P427073354595742359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055669 (n + 1) : ℚ) / 24

end

end A055670.P427073354595742359

namespace A055670

/-- `A055669(n+1)/24` -/
def P427073354595742359.Spec : Prop :=
  ∀ n, P427073354595742359.a n = (A055670 (n + 1) : ℚ)

end A055670

/-! ## A055670.P1490265546806468134

`A176628(n+1)-n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055670

/-- `A176628(n+1)-n` -/
def P1490265546806468134.Spec : Prop :=
  ∀ n, P1490265546806468134.a n = A055670 (n + 1)

theorem P1490265546806468134.correct : P1490265546806468134.Spec := by
  intro n
  simp only [A055670, Nat.add_sub_cancel]

end A055670

/-! ## A055670.P9935533199454909622

`∑{d}[A006005(n+1), #]`
-/

namespace A055670.P9935533199454909622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A055670.P9935533199454909622

namespace A055670

/-- `∑{d}[A006005(n+1), #]` -/
def P9935533199454909622.Spec : Prop :=
  ∀ n, (P9935533199454909622.a n : ℤ) = A055670 (n + 1)

end A055670

/-! ## A055670.P1534526831819307390

`abs(A073579(n+1))+1`
-/

namespace A055670.P1534526831819307390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073579 (n + 1)| + 1

end

end A055670.P1534526831819307390

namespace A055670

/-- `abs(A073579(n+1))+1` -/
def P1534526831819307390.Spec : Prop :=
  ∀ n, P1534526831819307390.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P16137988983723705355

`abs(xor(-2, A006093(n+1)))`
-/

namespace A055670.P16137988983723705355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A006093 (n + 1))|

end

end A055670.P16137988983723705355

namespace A055670

/-- `abs(xor(-2, A006093(n+1)))` -/
def P16137988983723705355.Spec : Prop :=
  ∀ n, P16137988983723705355.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P145570459341401502

`xor(1, A008864(n+1))-1`
-/

namespace A055670.P145570459341401502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008864 (n + 1)) - 1

end

end A055670.P145570459341401502

namespace A055670

/-- `xor(1, A008864(n+1))-1` -/
def P145570459341401502.Spec : Prop :=
  ∀ n, P145570459341401502.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P12294698680216610178

`xor(1, A113935(n+1))-3`
-/

namespace A055670.P12294698680216610178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A113935 (n + 1)) - 3

end

end A055670.P12294698680216610178

namespace A055670

/-- `xor(1, A113935(n+1))-3` -/
def P12294698680216610178.Spec : Prop :=
  ∀ n, P12294698680216610178.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P17824342616625236280

`abs(xor(1, -A000040(n+1)))`
-/

namespace A055670.P17824342616625236280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A000040 (n + 1))|

end

end A055670.P17824342616625236280

namespace A055670

/-- `abs(xor(1, -A000040(n+1)))` -/
def P17824342616625236280.Spec : Prop :=
  ∀ n, P17824342616625236280.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P319536788256721100

`A174008(n+1)-Δ[n²]`
-/

namespace A055670.P319536788256721100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174008 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A055670.P319536788256721100

namespace A055670

/-- `A174008(n+1)-Δ[n²]` -/
def P319536788256721100.Spec : Prop :=
  ∀ n, P319536788256721100.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P14338678469965975145

`Δ[A000040(n)+a(n-1)]+1` with `a(0)=0, a(1)=0`
-/

namespace A055670.P14338678469965975145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000040 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A055670.P14338678469965975145

namespace A055670

/-- `Δ[A000040(n)+a(n-1)]+1` -/
def P14338678469965975145.Spec : Prop :=
  ∀ n, P14338678469965975145.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P7004075131809971090

`A057427(n)+A006005(n+1)`
-/

namespace A055670.P7004075131809971090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A006005 (n + 1)

end

end A055670.P7004075131809971090

namespace A055670

/-- `A057427(n)+A006005(n+1)` -/
def P7004075131809971090.Spec : Prop :=
  ∀ n, P7004075131809971090.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P16113578798106977694

`A086801(n+1)+A040002(n)`
-/

namespace A055670.P16113578798106977694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A040002 n

end

end A055670.P16113578798106977694

namespace A055670

/-- `A086801(n+1)+A040002(n)` -/
def P16113578798106977694.Spec : Prop :=
  ∀ n, P16113578798106977694.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P6979569803927012553

`A158388(n)+A000040(n+1)`
-/

namespace A055670.P6979569803927012553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A000040 (n + 1)

end

end A055670.P6979569803927012553

namespace A055670

/-- `A158388(n)+A000040(n+1)` -/
def P6979569803927012553.Spec : Prop :=
  ∀ n, P6979569803927012553.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P3633648183856660211

`A122553(n)+A040976(n+1)`
-/

namespace A055670.P3633648183856660211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A040976 (n + 1)

end

end A055670.P3633648183856660211

namespace A055670

/-- `A122553(n)+A040976(n+1)` -/
def P3633648183856660211.Spec : Prop :=
  ∀ n, P3633648183856660211.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P6033935950586626341

`gcd(A000038(n), A008864(n+1))`
-/

namespace A055670.P6033935950586626341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008864 (n + 1))

end

end A055670.P6033935950586626341

namespace A055670

/-- `gcd(A000038(n), A008864(n+1))` -/
def P6033935950586626341.Spec : Prop :=
  ∀ n, (P6033935950586626341.a n : ℤ) = A055670 (n + 1)

end A055670

/-! ## A055670.P14982370761451616916

`and(A008864(n+1), A260196(n))`
-/

namespace A055670.P14982370761451616916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008864 (n + 1)) (A260196 n)

end

end A055670.P14982370761451616916

namespace A055670

/-- `and(A008864(n+1), A260196(n))` -/
def P14982370761451616916.Spec : Prop :=
  ∀ n, P14982370761451616916.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P3698811247277452950

`A247159(n+1)-A089241(n+1)`
-/

namespace A055670.P3698811247277452950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247159 (n + 1) - A089241 (n + 1)

end

end A055670.P3698811247277452950

namespace A055670

/-- `A247159(n+1)-A089241(n+1)` -/
def P3698811247277452950.Spec : Prop :=
  ∀ n, P3698811247277452950.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P3248799232661345272

`A005722(n+1)%A073582(n+1)`
-/

namespace A055670.P3248799232661345272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005722 (n + 1)) (A073582 (n + 1))

end

end A055670.P3248799232661345272

namespace A055670

/-- `A005722(n+1)%A073582(n+1)` -/
def P3248799232661345272.Spec : Prop :=
  ∀ n, P3248799232661345272.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P14192122547660961242

`A066872(n+1)%A036689(n+1)`
-/

namespace A055670.P14192122547660961242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066872 (n + 1)) (A036689 (n + 1))

end

end A055670.P14192122547660961242

namespace A055670

/-- `A066872(n+1)%A036689(n+1)` -/
def P14192122547660961242.Spec : Prop :=
  ∀ n, P14192122547660961242.a n = A055670 (n + 1)

end A055670

/-! ## A055670.P7338112588823513782

`A110833(n+1)%A100484(n+1)`
-/

namespace A055670.P7338112588823513782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110833 (n + 1)) (A100484 (n + 1))

end

end A055670.P7338112588823513782

namespace A055670

/-- `A110833(n+1)%A100484(n+1)` -/
def P7338112588823513782.Spec : Prop :=
  ∀ n, P7338112588823513782.a n = A055670 (n + 1)

end A055670

/-!
# A055671: Number of prime Hurwitz quaternions of norm n.

The programs for A055671, the canonical program `A055671.P14398958328813777781` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055671 has offset 0).

The definition of A055671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055671.P14398958328813777781

`24*A055672(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055671

/-- `24*A055672(n)` -/
def P14398958328813777781.Spec : Prop :=
  ∀ n, P14398958328813777781.a n = A055671 n

theorem P14398958328813777781.correct : P14398958328813777781.Spec := by
  intro n
  simp only [A055671]

end A055671

/-! ## A055671.P61138705291569943

`A008606(A055672(n))`
-/

namespace A055671.P61138705291569943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A055672 n).toNat

end

end A055671.P61138705291569943

namespace A055671

/-- `A008606(A055672(n))` -/
def P61138705291569943.Spec : Prop :=
  ∀ n, P61138705291569943.a n = A055671 n

end A055671

/-! ## A055671.P4718498218909490697

`lcm(A004011(n), A055672(n))`
-/

namespace A055671.P4718498218909490697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004011 n) (A055672 n)

end

end A055671.P4718498218909490697

namespace A055671

/-- `lcm(A004011(n), A055672(n))` -/
def P4718498218909490697.Spec : Prop :=
  ∀ n, (P4718498218909490697.a n : ℤ) = A055671 n

end A055671

/-! ## A055671.P8970971897346634003

`and(A004011(n), A107393(n))`
-/

namespace A055671.P8970971897346634003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004011 n) (A107393 n)

end

end A055671.P8970971897346634003

namespace A055671

/-- `and(A004011(n), A107393(n))` -/
def P8970971897346634003.Spec : Prop :=
  ∀ n, P8970971897346634003.a n = A055671 n

end A055671

/-! ## A055671.P7932351161826960792

`char[A007918(n)]*A004011(n)`
-/

namespace A055671.P7932351161826960792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004011 n

end

end A055671.P7932351161826960792

namespace A055671

/-- `char[A007918(n)]*A004011(n)` -/
def P7932351161826960792.Spec : Prop :=
  ∀ n, P7932351161826960792.a n = A055671 n

end A055671

/-! ## A055671.P1367351629746499495

`and(A000118(2*n), A107393(n))`
-/

namespace A055671.P1367351629746499495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 (2 * n)) (A107393 n)

end

end A055671.P1367351629746499495

namespace A055671

/-- `and(A000118(2*n), A107393(n))` -/
def P1367351629746499495.Spec : Prop :=
  ∀ n, P1367351629746499495.a n = A055671 n

end A055671

/-!
# A055672: Number of right-inequivalent prime Hurwitz quaternions of norm n.

The programs for A055672, the canonical program `A055672.P17904768652882133137` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055672 has offset 0).

The definition of A055672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055672.P9618096557216954578

`A055671(n)/24`
-/

namespace A055672.P9618096557216954578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055671 n : ℚ) / 24

end

end A055672.P9618096557216954578

namespace A055672

/-- `A055671(n)/24` -/
def P9618096557216954578.Spec : Prop :=
  ∀ n, P9618096557216954578.a n = (A055672 n : ℚ)

end A055672

/-! ## A055672.P15431056755175564406

`and(n*and(1, n)+1, A107393(n))`
-/

namespace A055672.P15431056755175564406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * Nat.land 1 n + 1 : ℤ) (A107393 n)

end

end A055672.P15431056755175564406

namespace A055672

/-- `and(n*and(1, n)+1, A107393(n))` -/
def P15431056755175564406.Spec : Prop :=
  ∀ n, P15431056755175564406.a n = A055672 n

end A055672

/-! ## A055672.P15684342196608827181

`and(n+1, char[2]-char[A175452(n+1)])`
-/

namespace A055672.P15684342196608827181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175452 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A055672.P15684342196608827181

namespace A055672

/-- `and(n+1, char[2]-char[A175452(n+1)])` -/
def P15684342196608827181.Spec : Prop :=
  ∀ n, P15684342196608827181.a n = A055672 n

end A055672

/-! ## A055672.P13004103049650302128

`(n*n%2+1)*char[A000040(n+1)]`
-/

namespace A055672.P13004103049650302128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n % 2) + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A055672.P13004103049650302128

namespace A055672

/-- `(n*n%2+1)*char[A000040(n+1)]` -/
def P13004103049650302128.Spec : Prop :=
  ∀ n, (P13004103049650302128.a n : ℤ) = A055672 n

end A055672

/-! ## A055672.P10542321472874032324

`(n*and(1, n)+1)*char[A020639(n+2)]`
-/

namespace A055672.P10542321472874032324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A055672.P10542321472874032324

namespace A055672

/-- `(n*and(1, n)+1)*char[A020639(n+2)]` -/
def P10542321472874032324.Spec : Prop :=
  ∀ n, (P10542321472874032324.a n : ℤ) = A055672 n

end A055672

/-! ## A055672.P17904768652882133137

`(n-A113638(n))*A005451(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055672

/-- `(n-A113638(n))*A005451(n+1)` -/
def P17904768652882133137.Spec : Prop :=
  ∀ n, P17904768652882133137.a n = A055672 n

theorem P17904768652882133137.correct : P17904768652882133137.Spec := by
  intro n
  simp only [A055672]

end A055672

/-! ## A055672.P5380873374801117742

`(n-A113638(n))*A179278(n+1)`
-/

namespace A055672.P5380873374801117742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A113638 n) * A179278 (n + 1)

end

end A055672.P5380873374801117742

namespace A055672

/-- `(n-A113638(n))*A179278(n+1)` -/
def P5380873374801117742.Spec : Prop :=
  ∀ n, P5380873374801117742.a n = A055672 n

end A055672

/-! ## A055672.P9220479534385327592

`char[A008578(n+2)]*A124625(n+2)`
-/

namespace A055672.P9220479534385327592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124625 (n + 2)

end

end A055672.P9220479534385327592

namespace A055672

/-- `char[A008578(n+2)]*A124625(n+2)` -/
def P9220479534385327592.Spec : Prop :=
  ∀ n, P9220479534385327592.a n = A055672 n

end A055672

/-! ## A055672.P4204319656635182735

`char[A040976(n+1)+2]*A093049(n+2)`
-/

namespace A055672.P4204319656635182735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A093049 (n + 2)

end

end A055672.P4204319656635182735

namespace A055672

/-- `char[A040976(n+1)+2]*A093049(n+2)` -/
def P4204319656635182735.Spec : Prop :=
  ∀ n, P4204319656635182735.a n = A055672 n

end A055672

/-! ## A055672.P2985664219163915017

`char[abs(A000040(n+1)-1)+1]*A093049(n+2)`
-/

namespace A055672.P2985664219163915017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - 1| + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A093049 (n + 2)

end

end A055672.P2985664219163915017

namespace A055672

/-- `char[abs(A000040(n+1)-1)+1]*A093049(n+2)` -/
def P2985664219163915017.Spec : Prop :=
  ∀ n, P2985664219163915017.a n = A055672 n

end A055672

/-! ## A055672.P16096234875658309417

`A014681(n*char[p?[A014681(n)]])`
-/

namespace A055672.P16096234875658309417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A055672.P16096234875658309417

namespace A055672

/-- `A014681(n*char[p?[A014681(n)]])` -/
def P16096234875658309417.Spec : Prop :=
  ∀ n, P16096234875658309417.a n = A055672 n

end A055672

/-! ## A055672.P811963661122182159

`char[2]+(n+1)*char[A070647(n+1)]`
-/

namespace A055672.P811963661122182159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A055672.P811963661122182159

namespace A055672

/-- `char[2]+(n+1)*char[A070647(n+1)]` -/
def P811963661122182159.Spec : Prop :=
  ∀ n, (P811963661122182159.a n : ℤ) = A055672 n

end A055672

/-! ## A055672.P7048624201281993188

`char[A093074(n+1)]*A093049(n+2)`
-/

namespace A055672.P7048624201281993188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A093049 (n + 2)

end

end A055672.P7048624201281993188

namespace A055672

/-- `char[A093074(n+1)]*A093049(n+2)` -/
def P7048624201281993188.Spec : Prop :=
  ∀ n, P7048624201281993188.a n = A055672 n

end A055672

/-! ## A055672.P11486842568522914614

`A014681(n)*A105700(n*A105700(n))`
-/

namespace A055672.P11486842568522914614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n * A105700 ((n : ℤ) * A105700 n).toNat

end

end A055672.P11486842568522914614

namespace A055672

/-- `A014681(n)*A105700(n*A105700(n))` -/
def P11486842568522914614.Spec : Prop :=
  ∀ n, P11486842568522914614.a n = A055672 n

end A055672

/-! ## A055672.P1628303907727667496

`(A004442(n+1)-1)*A046926(2*(n+1))`
-/

namespace A055672.P1628303907727667496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 (n + 1) - 1) * A046926 (2 * (n + 1))

end

end A055672.P1628303907727667496

namespace A055672

/-- `(A004442(n+1)-1)*A046926(2*(n+1))` -/
def P1628303907727667496.Spec : Prop :=
  ∀ n, P1628303907727667496.a n = A055672 n

end A055672

/-! ## A055672.P641834290752646036

`(A141310(n+1)-1)*A046926(2*(n+1))`
-/

namespace A055672.P641834290752646036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141310 (n + 1) - 1) * A046926 (2 * (n + 1))

end

end A055672.P641834290752646036

namespace A055672

/-- `(A141310(n+1)-1)*A046926(2*(n+1))` -/
def P641834290752646036.Spec : Prop :=
  ∀ n, P641834290752646036.a n = A055672 n

end A055672

/-!
# A055673: Absolute values of norms of primes in ring of integers Z[sqrt(2)].

The programs for A055673, there is no canonical definition to state claims against.
-/

/-! ## A055673.P2986527943405989767

`lt[0, A118917(n)]`
-/

namespace A055673.P2986527943405989767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055673.P2986527943405989767

/-! ## A055673.P3671430064128441259

`eq[A118917(A175851(n+1))+1, A118917(n)]`
-/

namespace A055673.P3671430064128441259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A175851 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055673.P3671430064128441259

/-! ## A055673.P14624858088891177685

`eq[A118917(A093178(n))!, A118917(n)]`
-/

namespace A055673.P14624858088891177685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A118917 (A093178 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055673.P14624858088891177685

/-! ## A055673.P12895081695578807039

`eq[1, A074206(A074206(n)*A118917(n))]`
-/

namespace A055673.P12895081695578807039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A074206 n * A118917 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055673.P12895081695578807039

/-! ## A055673.P17783214915971213651

`eq[1, gcd(A055025(n+1), A118917(n))]`
-/

namespace A055673.P17783214915971213651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055025 (n + 1)) (A118917 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055673.P17783214915971213651

/-!
# A055674: a(n) = least nonnegative integer h such that (n,h) is not collinear with any 2 points in the set S(n-1) := {(m,a(m)), (m,b(m)): m = 0,1,...,n-1} for n >= 1.

The programs for A055674, there is no canonical definition to state claims against.
-/

/-! ## A055674.P833620934734369148

`A055675(n)-A055676(n)`
-/

namespace A055674.P833620934734369148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055675 n - A055676 n

end

end A055674.P833620934734369148

/-!
# A055675: b(n) = least nonnegative integer h such that (n,h) is not collinear with any 2 points in the set S(n-1)union{(n,a(n))}, set S(n-1) and sequence a(n) as in A055674.

The programs for A055675, there is no canonical definition to state claims against.
-/

/-! ## A055675.P1886534870813575145

`A055676(n)+A055674(n)`
-/

namespace A055675.P1886534870813575145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055676 n + A055674 n

end

end A055675.P1886534870813575145

/-! ## A055675.P7340771064898421245

`A055676(n)-A055674(n)*A057428(n)`
-/

namespace A055675.P7340771064898421245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055676 n - A055674 n * A057428 n

end

end A055675.P7340771064898421245

/-!
# A055676: a(n) = A055675(n) - A055674(n).

The programs for A055676, there is no canonical definition to state claims against.
-/

/-! ## A055676.P4049823510745954624

`A055675(n)-A055674(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055676.P4049823510745954624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055675 n - A055674 n

end

end A055676.P4049823510745954624

/-! ## A055676.P5446166867749793859

`A055675(n)+A055674(n)*A057428(n)`
-/

namespace A055676.P5446166867749793859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055675 n + A055674 n * A057428 n

end

end A055676.P5446166867749793859

/-! ## A055676.P878399022222995818

`A055675(n)+A055674(n)/A033999(2*n+1)`
-/

namespace A055676.P878399022222995818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055675 n : ℚ) + (A055674 n : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A055676.P878399022222995818

/-! ## A055676.P8485076611541238009

`A055675(n)+A055674(n)/(A057428(n)+A000007(n))`
-/

namespace A055676.P8485076611541238009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055675 n : ℚ) + (A055674 n : ℚ) / (A057428 n + A000007 n : ℚ)

end

end A055676.P8485076611541238009

/-!
# A055678: Integers not congruent to 0 (mod 6) that are divisible by the number of their divisors.

The programs for A055678, the canonical program `A055678.P13434665025333706559` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055678 has offset 1).

The definition of A055678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055678.P13434665025333706559

`record[A033950(n+1)%lcm(6, A033950(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055678

/-- `record[A033950(n+1)%lcm(6, A033950(n+1))]` -/
def P13434665025333706559.Spec : Prop :=
  ∀ n, P13434665025333706559.a n = A055678 (n + 1)

theorem P13434665025333706559.correct : P13434665025333706559.Spec := by
  intro n
  simp only [A055678, Nat.add_sub_cancel]

end A055678

/-! ## A055678.P3324997477033398611

`filter[A033950(n+1), A097325(#)]`
-/

namespace A055678.P3324997477033398611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A055678.P3324997477033398611

namespace A055678

/-- `filter[A033950(n+1), A097325(#)]` -/
def P3324997477033398611.Spec : Prop :=
  ∀ n, P3324997477033398611.a n = A055678 (n + 1)

end A055678

/-! ## A055678.P5942937443789789753

`∩[A033950(n+1), A047227(n+1)]`
-/

namespace A055678.P5942937443789789753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055678.P5942937443789789753

namespace A055678

/-- `∩[A033950(n+1), A047227(n+1)]` -/
def P5942937443789789753.Spec : Prop :=
  ∀ n, (P5942937443789789753.a n : ℤ) = A055678 (n + 1)

end A055678

/-! ## A055678.P17910576537508060974

`∩[A033950(n+1), A047253(n+1)]`
-/

namespace A055678.P17910576537508060974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055678.P17910576537508060974

namespace A055678

/-- `∩[A033950(n+1), A047253(n+1)]` -/
def P17910576537508060974.Spec : Prop :=
  ∀ n, (P17910576537508060974.a n : ℤ) = A055678 (n + 1)

end A055678

/-! ## A055678.P391537411111909789

`record[A214394(A033950(n+1))]`
-/

namespace A055678.P391537411111909789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A033950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055678.P391537411111909789

namespace A055678

/-- `record[A214394(A033950(n+1))]` -/
def P391537411111909789.Spec : Prop :=
  ∀ n, P391537411111909789.a n = A055678 (n + 1)

end A055678

/-! ## A055678.P1771750704211210683

`filter[A033950(n+1), A131719(#)]`
-/

namespace A055678.P1771750704211210683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A055678.P1771750704211210683

namespace A055678

/-- `filter[A033950(n+1), A131719(#)]` -/
def P1771750704211210683.Spec : Prop :=
  ∀ n, P1771750704211210683.a n = A055678 (n + 1)

end A055678

/-! ## A055678.P11312921474573912942

`record[A214394(record[A122377(n+1)])]`
-/

namespace A055678.P11312921474573912942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055678.P11312921474573912942

namespace A055678

/-- `record[A214394(record[A122377(n+1)])]` -/
def P11312921474573912942.Spec : Prop :=
  ∀ n, P11312921474573912942.a n = A055678 (n + 1)

end A055678

/-! ## A055678.P16876103899053235488

`record[A214394(gcd(n+1, A054008(n+1)))]`
-/

namespace A055678.P16876103899053235488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (Int.gcd (n + 1 : ℤ) (A054008 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055678.P16876103899053235488

namespace A055678

/-- `record[A214394(gcd(n+1, A054008(n+1)))]` -/
def P16876103899053235488.Spec : Prop :=
  ∀ n, P16876103899053235488.a n = A055678 (n + 1)

end A055678

/-! ## A055678.P11025233266403796298

`record[A214394(A036762(n+1)*A039819(n+1))]`
-/

namespace A055678.P11025233266403796298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A036762 (n + 1) * A039819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055678.P11025233266403796298

namespace A055678

/-- `record[A214394(A036762(n+1)*A039819(n+1))]` -/
def P11025233266403796298.Spec : Prop :=
  ∀ n, P11025233266403796298.a n = A055678 (n + 1)

end A055678

/-!
# A055679: Number of distinct prime factors of phi(n!).

The programs for A055679, the canonical program `A055679.P10795285082955514772` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055679 has offset 1).

The definition of A055679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055679.P10795285082955514772

`A230980(∑[and(1, ∑[n])])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055679

/-- `A230980(∑[and(1, ∑[n])])` -/
def P10795285082955514772.Spec : Prop :=
  ∀ n, P10795285082955514772.a n = A055679 (n + 1)

theorem P10795285082955514772.correct : P10795285082955514772.Spec := by
  intro n
  simp only [A055679, Nat.add_sub_cancel]

end A055679

/-! ## A055679.P9625927066641827216

`A056172(n+1)+char[2]`
-/

namespace A055679.P9625927066641827216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A055679.P9625927066641827216

namespace A055679

/-- `A056172(n+1)+char[2]` -/
def P9625927066641827216.Spec : Prop :=
  ∀ n, P9625927066641827216.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P8550986490578545968

`A294107(n+1)-char[3]`
-/

namespace A055679.P8550986490578545968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A055679.P8550986490578545968

namespace A055679

/-- `A294107(n+1)-char[3]` -/
def P8550986490578545968.Spec : Prop :=
  ∀ n, P8550986490578545968.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P18137009966836223039

`char[2]+∑[A353478(n+1)]`
-/

namespace A055679.P18137009966836223039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A055679.P18137009966836223039

namespace A055679

/-- `char[2]+∑[A353478(n+1)]` -/
def P18137009966836223039.Spec : Prop :=
  ∀ n, P18137009966836223039.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P10719427749135058462

`∑[char[A284278(2*n+1)]]`
-/

namespace A055679.P10719427749135058462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284278 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055679.P10719427749135058462

namespace A055679

/-- `∑[char[A284278(2*n+1)]]` -/
def P10719427749135058462.Spec : Prop :=
  ∀ n, (P10719427749135058462.a n : ℤ) = A055679 (n + 1)

end A055679

/-! ## A055679.P11844890690361778891

`A056172(and(2, -n)!+n)`
-/

namespace A055679.P11844890690361778891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat + n)

end

end A055679.P11844890690361778891

namespace A055679

/-- `A056172(and(2, -n)!+n)` -/
def P11844890690361778891.Spec : Prop :=
  ∀ n, P11844890690361778891.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P6310609599924812051

`char[2]+∑[char[2*A000040(n+1)-1]]`
-/

namespace A055679.P6310609599924812051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A055679.P6310609599924812051

namespace A055679

/-- `char[2]+∑[char[2*A000040(n+1)-1]]` -/
def P6310609599924812051.Spec : Prop :=
  ∀ n, (P6310609599924812051.a n : ℤ) = A055679 (n + 1)

end A055679

/-! ## A055679.P16164174462861032066

`A056172(A098181(n))`
-/

namespace A055679.P16164174462861032066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A098181 n).toNat

end

end A055679.P16164174462861032066

namespace A055679

/-- `A056172(A098181(n))` -/
def P16164174462861032066.Spec : Prop :=
  ∀ n, P16164174462861032066.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P16823410868671779781

`A056172(A341744(n))`
-/

namespace A055679.P16823410868671779781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A341744 n).toNat

end

end A055679.P16823410868671779781

namespace A055679

/-- `A056172(A341744(n))` -/
def P16823410868671779781.Spec : Prop :=
  ∀ n, P16823410868671779781.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P9418228244120057964

`A056172(A140201(n+1))`
-/

namespace A055679.P9418228244120057964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A140201 (n + 1)).toNat

end

end A055679.P9418228244120057964

namespace A055679

/-- `A056172(A140201(n+1))` -/
def P9418228244120057964.Spec : Prop :=
  ∀ n, P9418228244120057964.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P928512671121199282

`A294107(A070321(n+1))`
-/

namespace A055679.P928512671121199282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (A070321 (n + 1)).toNat

end

end A055679.P928512671121199282

namespace A055679

/-- `A294107(A070321(n+1))` -/
def P928512671121199282.Spec : Prop :=
  ∀ n, P928512671121199282.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P578429349622145009

`A056172(A392590(n+2))`
-/

namespace A055679.P578429349622145009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A392590 (n + 2)).toNat

end

end A055679.P578429349622145009

namespace A055679

/-- `A056172(A392590(n+2))` -/
def P578429349622145009.Spec : Prop :=
  ∀ n, P578429349622145009.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P14231704463812790887

`A056172(A185012(n)+1+n)`
-/

namespace A055679.P14231704463812790887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A185012 n + 1 + (n : ℤ)).toNat

end

end A055679.P14231704463812790887

namespace A055679

/-- `A056172(A185012(n)+1+n)` -/
def P14231704463812790887.Spec : Prop :=
  ∀ n, P14231704463812790887.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P1833694524436564279

`A056172(A354874(n)+n+1)`
-/

namespace A055679.P1833694524436564279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A354874 n + (n + 1 : ℤ)).toNat

end

end A055679.P1833694524436564279

namespace A055679

/-- `A056172(A354874(n)+n+1)` -/
def P1833694524436564279.Spec : Prop :=
  ∀ n, P1833694524436564279.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P3683938288967150990

`A056172(2-A341996(n)+n)`
-/

namespace A055679.P3683938288967150990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 - A341996 n + (n : ℤ)).toNat

end

end A055679.P3683938288967150990

namespace A055679

/-- `A056172(2-A341996(n)+n)` -/
def P3683938288967150990.Spec : Prop :=
  ∀ n, P3683938288967150990.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P10857525759832284442

`A056172(2-(A341996(n)-n))`
-/

namespace A055679.P10857525759832284442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 - (A341996 n - (n : ℤ))).toNat

end

end A055679.P10857525759832284442

namespace A055679

/-- `A056172(2-(A341996(n)-n))` -/
def P10857525759832284442.Spec : Prop :=
  ∀ n, P10857525759832284442.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P13373260841883455998

`A230980((A007877(n)+n)/2)`
-/

namespace A055679.P13373260841883455998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway ((A007877 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A055679.P13373260841883455998

namespace A055679

/-- `A230980((A007877(n)+n)/2)` -/
def P13373260841883455998.Spec : Prop :=
  ∀ n, P13373260841883455998.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P3940986918516117982

`gcd(A056172(n+1), A294107(n+1))`
-/

namespace A055679.P3940986918516117982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056172 (n + 1)) (A294107 (n + 1))

end

end A055679.P3940986918516117982

namespace A055679

/-- `gcd(A056172(n+1), A294107(n+1))` -/
def P3940986918516117982.Spec : Prop :=
  ∀ n, (P3940986918516117982.a n : ℤ) = A055679 (n + 1)

end A055679

/-! ## A055679.P13892719107534959231

`char[2]+A000720(n+1)-A056171(n+1)`
-/

namespace A055679.P13892719107534959231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A000720 (n + 1) - A056171 (n + 1))

end

end A055679.P13892719107534959231

namespace A055679

/-- `char[2]+A000720(n+1)-A056171(n+1)` -/
def P13892719107534959231.Spec : Prop :=
  ∀ n, P13892719107534959231.a n = A055679 (n + 1)

end A055679

/-! ## A055679.P11556942704303026323

`A056172(A010051(A000010(n+1))+n+1)`
-/

namespace A055679.P11556942704303026323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A010051 (A000010 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A055679.P11556942704303026323

namespace A055679

/-- `A056172(A010051(A000010(n+1))+n+1)` -/
def P11556942704303026323.Spec : Prop :=
  ∀ n, P11556942704303026323.a n = A055679 (n + 1)

end A055679

/-!
# A055680: (5^n)-th prime.

The programs for A055680, there is no canonical definition to state claims against.
-/

/-! ## A055680.P7752510460313656576

`A347000(∑[n+3]+n+3)`
-/

namespace A055680.P7752510460313656576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A055680.P7752510460313656576

/-! ## A055680.P14592416136753190846

`lcm(A033999(n), A347000(A046691(n+2)))`
-/

namespace A055680.P14592416136753190846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A347000 (A046691 (n + 2)).toNat)

end

end A055680.P14592416136753190846

/-! ## A055680.P997969231392531774

`A347000(A046691(n+2))+A000007(n+1)`
-/

namespace A055680.P997969231392531774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A055680.P997969231392531774

/-! ## A055680.P6631240683166339773

`A347000(A046691(n+2))+A008683(64*(n+1))`
-/

namespace A055680.P6631240683166339773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A046691 (n + 2)).toNat + A008683 (64 * (n + 1))

end

end A055680.P6631240683166339773

/-! ## A055680.P7240515021093355185

`A334276(A263807(n))`
-/

namespace A055680.P7240515021093355185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334276 (A263807 n).toNat

end

end A055680.P7240515021093355185

/-!
# A055681: Numbers k that divide sigma(k)-phi(k).

The programs for A055681, there is no canonical definition to state claims against.
-/

/-! ## A055681.P14526625492186216760

`A070871(A127100(n+1))`
-/

namespace A055681.P14526625492186216760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (A127100 (n + 1)).toNat

end

end A055681.P14526625492186216760

/-!
# A055682: a(n) = floor(n*sqrt(n)) - sigma(n), where sigma(n) is the sum of the divisors of n (A000203).

The programs for A055682, the canonical program `A055682.P10858738981572551844` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055682 has offset 1).

The definition of A055682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055682.P17491299869313194001

`floor(sqrt((n+1)^3)-∑{d}[n+1, #])`
-/

namespace A055682.P17491299869313194001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1) ^ 3 : ℝ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)⌋

end

end A055682.P17491299869313194001

namespace A055682

/-- `floor(sqrt((n+1)^3)-∑{d}[n+1, #])` -/
def P17491299869313194001.Spec : Prop :=
  ∀ n, P17491299869313194001.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P5474475644666489818

`floor((n+1)*sqrt(n+1))-∑{d}[n+1, #]`
-/

namespace A055682.P5474475644666489818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋ - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A055682.P5474475644666489818

namespace A055682

/-- `floor((n+1)*sqrt(n+1))-∑{d}[n+1, #]` -/
def P5474475644666489818.Spec : Prop :=
  ∀ n, P5474475644666489818.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P5705476974976932609

`floor(sqrt((n+1)^3)-A000203(n+1))`
-/

namespace A055682.P5705476974976932609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1) ^ 3 : ℝ) - (A000203 (n + 1) : ℝ)⌋

end

end A055682.P5705476974976932609

namespace A055682

/-- `floor(sqrt((n+1)^3)-A000203(n+1))` -/
def P5705476974976932609.Spec : Prop :=
  ∀ n, P5705476974976932609.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P11658328086826053566

`∑[A035936(n)]-Δ[A160664(n)]`
-/

namespace A055682.P11658328086826053566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A055682.P11658328086826053566

namespace A055682

/-- `∑[A035936(n)]-Δ[A160664(n)]` -/
def P11658328086826053566.Spec : Prop :=
  ∀ n, P11658328086826053566.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P10858738981572551844

`∑[A035936(n)]-A000203(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055682

/-- `∑[A035936(n)]-A000203(n+1)` -/
def P10858738981572551844.Spec : Prop :=
  ∀ n, P10858738981572551844.a n = A055682 (n + 1)

theorem P10858738981572551844.correct : P10858738981572551844.Spec := by
  intro n
  simp only [A055682, Nat.add_sub_cancel]

end A055682

/-! ## A055682.P9580325803783031210

`A063038(n+1)-A065608(n+1)`
-/

namespace A055682.P9580325803783031210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063038 (n + 1) - A065608 (n + 1)

end

end A055682.P9580325803783031210

namespace A055682

/-- `A063038(n+1)-A065608(n+1)` -/
def P9580325803783031210.Spec : Prop :=
  ∀ n, P9580325803783031210.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P1038212956813517724

`A186146(n+1)-A155085(n+1)`
-/

namespace A055682.P1038212956813517724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186146 (n + 1) - A155085 (n + 1)

end

end A055682.P1038212956813517724

namespace A055682

/-- `A186146(n+1)-A155085(n+1)` -/
def P1038212956813517724.Spec : Prop :=
  ∀ n, P1038212956813517724.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P4419558883710654488

`floor(sqrt(A000578(n+1)))-A000203(n+1)`
-/

namespace A055682.P4419558883710654488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000578 (n + 1)) - A000203 (n + 1)

end

end A055682.P4419558883710654488

namespace A055682

/-- `floor(sqrt(A000578(n+1)))-A000203(n+1)` -/
def P4419558883710654488.Spec : Prop :=
  ∀ n, P4419558883710654488.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P11911921214112031337

`A000005(n+1)+A063038(n+1)-A000203(n+1)`
-/

namespace A055682.P11911921214112031337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A063038 (n + 1) - A000203 (n + 1))

end

end A055682.P11911921214112031337

namespace A055682

/-- `A000005(n+1)+A063038(n+1)-A000203(n+1)` -/
def P11911921214112031337.Spec : Prop :=
  ∀ n, P11911921214112031337.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P9981144207954596047

`A000093(n+1)-A000203(n+1)`
-/

namespace A055682.P9981144207954596047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) - A000203 (n + 1)

end

end A055682.P9981144207954596047

namespace A055682

/-- `A000093(n+1)-A000203(n+1)` -/
def P9981144207954596047.Spec : Prop :=
  ∀ n, P9981144207954596047.a n = A055682 (n + 1)

end A055682

/-! ## A055682.P16918124551123149191

`A000093(n+1)+A058208(n+1)-A060903(n+1)`
-/

namespace A055682.P16918124551123149191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) + (A058208 (n + 1) - A060903 (n + 1))

end

end A055682.P16918124551123149191

namespace A055682

/-- `A000093(n+1)+A058208(n+1)-A060903(n+1)` -/
def P16918124551123149191.Spec : Prop :=
  ∀ n, P16918124551123149191.a n = A055682 (n + 1)

end A055682

/-!
# A055684: Number of different n-pointed stars.

The programs for A055684, the canonical program `A055684.P4777645842216541427` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055684 has offset 3).

The definition of A055684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055684.P4777645842216541427

`A023022(n+3)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A055684

/-- `A023022(n+3)-1` -/
def P4777645842216541427.Spec : Prop :=
  ∀ n, P4777645842216541427.a n = A055684 (n + 3)

theorem P4777645842216541427.correct : P4777645842216541427.Spec := by
  intro n
  simp only [A055684, Nat.add_sub_cancel]

end A055684

/-! ## A055684.P16778551616995661981

`floor(sinh(log(A000010(n+3))))`
-/

namespace A055684.P16778551616995661981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000010 (n + 3) : ℝ))⌋

end

end A055684.P16778551616995661981

namespace A055684

/-- `floor(sinh(log(A000010(n+3))))` -/
def P16778551616995661981.Spec : Prop :=
  ∀ n, P16778551616995661981.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P17672652822131391042

`A109607(n+3)%(n+2)`
-/

namespace A055684.P17672652822131391042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109607 (n + 3)) (n + 2 : ℤ)

end

end A055684.P17672652822131391042

namespace A055684

/-- `A109607(n+3)%(n+2)` -/
def P17672652822131391042.Spec : Prop :=
  ∀ n, P17672652822131391042.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P13206208427902776125

`Δ[A005728(n+2)]/2-1`
-/

namespace A055684.P13206208427902776125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2 - 1

end

end A055684.P13206208427902776125

namespace A055684

/-- `Δ[A005728(n+2)]/2-1` -/
def P13206208427902776125.Spec : Prop :=
  ∀ n, P13206208427902776125.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P5108683926974180338

`A000010(lcm(2, n+3))/2-1`
-/

namespace A055684.P5108683926974180338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lcm 2 (n + 3)) : ℚ) / 2 - 1

end

end A055684.P5108683926974180338

namespace A055684

/-- `A000010(lcm(2, n+3))/2-1` -/
def P5108683926974180338.Spec : Prop :=
  ∀ n, P5108683926974180338.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P10137892665687728213

`A000010(C(n+3, n+2))/2-1`
-/

namespace A055684.P10137892665687728213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.choose (n + 3) (n + 2)) : ℚ) / 2 - 1

end

end A055684.P10137892665687728213

namespace A055684

/-- `A000010(C(n+3, n+2))/2-1` -/
def P10137892665687728213.Spec : Prop :=
  ∀ n, P10137892665687728213.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P7796168601270822380

`a(n-1)+Δ[A000010(n+2)]/2` with `a(0)=0`
-/

namespace A055684.P7796168601270822380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n : ℚ) / 2

end

end A055684.P7796168601270822380

namespace A055684

/-- `a(n-1)+Δ[A000010(n+2)]/2` -/
def P7796168601270822380.Spec : Prop :=
  ∀ n, P7796168601270822380.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P9504704211433084472

`A046667(A000010(n+3))`
-/

namespace A055684.P9504704211433084472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A000010 (n + 3)).toNat

end

end A055684.P9504704211433084472

namespace A055684

/-- `A046667(A000010(n+3))` -/
def P9504704211433084472.Spec : Prop :=
  ∀ n, P9504704211433084472.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P2952256182924645423

`A097065(A000010(n+3)+1)`
-/

namespace A055684.P2952256182924645423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A000010 (n + 3) + 1).toNat

end

end A055684.P2952256182924645423

namespace A055684

/-- `A097065(A000010(n+3)+1)` -/
def P2952256182924645423.Spec : Prop :=
  ∀ n, P2952256182924645423.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P9671385990999099678

`A004524(A000010(n+3)-1)`
-/

namespace A055684.P9671385990999099678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A000010 (n + 3) - 1).toNat

end

end A055684.P9671385990999099678

namespace A055684

/-- `A004524(A000010(n+3)-1)` -/
def P9671385990999099678.Spec : Prop :=
  ∀ n, P9671385990999099678.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P3642642413803328411

`A004526(A000010(n+3)-1)`
-/

namespace A055684.P3642642413803328411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 3) - 1).toNat

end

end A055684.P3642642413803328411

namespace A055684

/-- `A004526(A000010(n+3)-1)` -/
def P3642642413803328411.Spec : Prop :=
  ∀ n, P3642642413803328411.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P243331848069627391

`A028242(A000010(n+3)-1)`
-/

namespace A055684.P243331848069627391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000010 (n + 3) - 1).toNat

end

end A055684.P243331848069627391

namespace A055684

/-- `A028242(A000010(n+3)-1)` -/
def P243331848069627391.Spec : Prop :=
  ∀ n, P243331848069627391.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P6954839187036892448

`A057979(A000010(n+3)-1)`
-/

namespace A055684.P6954839187036892448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000010 (n + 3) - 1).toNat

end

end A055684.P6954839187036892448

namespace A055684

/-- `A057979(A000010(n+3)-1)` -/
def P6954839187036892448.Spec : Prop :=
  ∀ n, P6954839187036892448.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P16657196338416680518

`A061721(A000010(n+3)-1)`
-/

namespace A055684.P16657196338416680518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061721 (A000010 (n + 3) - 1).toNat

end

end A055684.P16657196338416680518

namespace A055684

/-- `A061721(A000010(n+3)-1)` -/
def P16657196338416680518.Spec : Prop :=
  ∀ n, P16657196338416680518.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P10019541683021637383

`A071045(A000010(n+3)-1)`
-/

namespace A055684.P10019541683021637383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A000010 (n + 3) - 1).toNat

end

end A055684.P10019541683021637383

namespace A055684

/-- `A071045(A000010(n+3)-1)` -/
def P10019541683021637383.Spec : Prop :=
  ∀ n, P10019541683021637383.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P8298354143710491866

`A071281(A000010(n+3)-1)`
-/

namespace A055684.P8298354143710491866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A000010 (n + 3) - 1).toNat

end

end A055684.P8298354143710491866

namespace A055684

/-- `A071281(A000010(n+3)-1)` -/
def P8298354143710491866.Spec : Prop :=
  ∀ n, P8298354143710491866.a n = A055684 (n + 3)

end A055684

/-! ## A055684.P2812522354926882725

`A000010(n+3)/2-A000045(gcd(n, n+1))`
-/

namespace A055684.P2812522354926882725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2 - (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A055684.P2812522354926882725

namespace A055684

/-- `A000010(n+3)/2-A000045(gcd(n, n+1))` -/
def P2812522354926882725.Spec : Prop :=
  ∀ n, P2812522354926882725.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P11451576907852382010

`A000010(n+3)/2-and(1, A006530(2*n+1))`
-/

namespace A055684.P11451576907852382010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2 - (Int.land 1 (A006530 (2 * n + 1)) : ℚ)

end

end A055684.P11451576907852382010

namespace A055684

/-- `A000010(n+3)/2-and(1, A006530(2*n+1))` -/
def P11451576907852382010.Spec : Prop :=
  ∀ n, P11451576907852382010.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P5700623187129396870

`A000010(n+3)/2-A000032(gcd(n+2, n+3))`
-/

namespace A055684.P5700623187129396870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2 - (A000032 (Nat.gcd (n + 2) (n + 3)) : ℚ)

end

end A055684.P5700623187129396870

namespace A055684

/-- `A000010(n+3)/2-A000032(gcd(n+2, n+3))` -/
def P5700623187129396870.Spec : Prop :=
  ∀ n, P5700623187129396870.a n = (A055684 (n + 3) : ℚ)

end A055684

/-! ## A055684.P16852741945516652208

`A000010(n+3)/2-A000010(gcd(n-1, 2*n))`
-/

namespace A055684.P16852741945516652208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2 - (A000010 (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)) : ℚ)

end

end A055684.P16852741945516652208

namespace A055684

/-- `A000010(n+3)/2-A000010(gcd(n-1, 2*n))` -/
def P16852741945516652208.Spec : Prop :=
  ∀ n, P16852741945516652208.a n = (A055684 (n + 3) : ℚ)

end A055684

/-!
# A055685: Numbers k such that 2^k == -1 (mod k-1).

The programs for A055685, there is no canonical definition to state claims against.
-/

/-! ## A055685.P3736058953986483868

`A296369(n+1)+1`
-/

namespace A055685.P3736058953986483868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296369 (n + 1) + 1

end

end A055685.P3736058953986483868

/-! ## A055685.P10139297840420027452

`xor(3, A296369(A008621(4*n)))`
-/

namespace A055685.P10139297840420027452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A296369 (A008621 (4 * n)).toNat)

end

end A055685.P10139297840420027452

/-! ## A055685.P1854144396254335121

`xor(3, A296369(A077168(n)))`
-/

namespace A055685.P1854144396254335121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A296369 (A077168 n).toNat)

end

end A055685.P1854144396254335121

/-!
# A055686: Numbers k such that 3^k == -1 (mod k-1).

The programs for A055686, there is no canonical definition to state claims against.
-/

/-! ## A055686.P4922016684287509182

`A328230(n+1)+1`
-/

namespace A055686.P4922016684287509182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328230 (n + 1) + 1

end

end A055686.P4922016684287509182

/-! ## A055686.P1364175422082858204

`A020725(A328230(n+1))`
-/

namespace A055686.P1364175422082858204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A328230 (n + 1)).toNat

end

end A055686.P1364175422082858204

/-!
# A055687: Numbers k such that 4^k == -1 (mod k-1).

The programs for A055687, there is no canonical definition to state claims against.
-/

/-! ## A055687.P16289903420971410033

`A329168(n+1)+1`
-/

namespace A055687.P16289903420971410033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329168 (n + 1) + 1

end

end A055687.P16289903420971410033

/-! ## A055687.P5480077709454779632

`xor(3, A329168(∑[n]-∑[n-1]))`
-/

namespace A055687.P5480077709454779632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A329168 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j).toNat)

end

end A055687.P5480077709454779632

/-!
# A055688: Numbers k such that 5^k == -1 (mod k-1).

The programs for A055688, there is no canonical definition to state claims against.
-/

/-! ## A055688.P13438292795501999659

`A329222(n+1)+1`
-/

namespace A055688.P13438292795501999659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329222 (n + 1) + 1

end

end A055688.P13438292795501999659

/-! ## A055688.P4321784326659728044

`A020725(A329222(n+1))`
-/

namespace A055688.P4321784326659728044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A329222 (n + 1)).toNat

end

end A055688.P4321784326659728044

/-!
# A055689: Numbers k such that 6^k == -1 (mod k-1).

The programs for A055689, there is no canonical definition to state claims against.
-/

/-! ## A055689.P1097764652194664530

`A329226(n+1)+1`
-/

namespace A055689.P1097764652194664530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329226 (n + 1) + 1

end

end A055689.P1097764652194664530

/-! ## A055689.P17419934698493629783

`xor(3, A329226(A348553(n)))`
-/

namespace A055689.P17419934698493629783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A329226 (A348553 n).toNat)

end

end A055689.P17419934698493629783

/-! ## A055689.P4334105001479547189

`xor(3, A329226(A008619(2*n)))`
-/

namespace A055689.P4334105001479547189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A329226 (A008619 (2 * n)).toNat)

end

end A055689.P4334105001479547189

/-! ## A055689.P3423843565646534085

`xor(3, A329226(A077168(n)))`
-/

namespace A055689.P3423843565646534085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A329226 (A077168 n).toNat)

end

end A055689.P3423843565646534085

/-!
# A055691: Numbers k such that 8^k == -1 (mod k-1).

The programs for A055691, there is no canonical definition to state claims against.
-/

/-! ## A055691.P17079336022113602011

`A194627(∑[A032117(∏[2-n²%3]-1)])`
-/

namespace A055691.P17079336022113602011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032117 (∏ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055691.P17079336022113602011

/-!
# A055692: Numbers k such that 9^k == -1 (mod k-1).

The programs for A055692, there is no canonical definition to state claims against.
-/

/-! ## A055692.P812987770882879245

`A251632(a(n-1))+n` with `a(0)=2, a(1)=3`
-/

namespace A055692.P812987770882879245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A251632 (a (n - 1)).toNat + (n : ℤ)

end

end A055692.P812987770882879245

/-!
# A055695: Numbers k such that 12^k == -1 (mod k-1).

The programs for A055695, there is no canonical definition to state claims against.
-/

/-! ## A055695.P12812316960820204123

`A038107(A347284(n)+A103718(n))`
-/

namespace A055695.P12812316960820204123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A347284 n + A103718 n).toNat

end

end A055695.P12812316960820204123

/-!
# A055696: Numbers k such that k | sigma_2(k) + phi(k)^2.

The programs for A055696, there is no canonical definition to state claims against.
-/

/-! ## A055696.P6525445699324318977

`∏{p}[A050364(3^n), #]`
-/

namespace A055696.P6525445699324318977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050364 (3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A055696.P6525445699324318977

/-!
# A055697: Numbers k such that k | sigma_3(k) - phi(k)^3.

The programs for A055697, there is no canonical definition to state claims against.
-/

/-! ## A055697.P9645413913381381342

`A337110(A023149(n+1))`
-/

namespace A055697.P9645413913381381342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337110 (A023149 (n + 1)).toNat

end

end A055697.P9645413913381381342

/-! ## A055697.P1561858388537272486

`A003459(A058601(n))-1`
-/

namespace A055697.P1561858388537272486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A058601 n).toNat - 1

end

end A055697.P1561858388537272486

