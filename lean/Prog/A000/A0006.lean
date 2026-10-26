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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A000600: Number of tertiary alcohols (alkanols or alkyl alcohols C_n H_{2n+1} OH) with n carbon atoms.

The programs for A000600, there is no canonical definition to state claims against.
-/

/-! ## A000600.P11751579571168627698

`A000598(n)-(A000642(n+1)+A000007(n))`
-/

namespace A000600.P11751579571168627698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n - (A000642 (n + 1) + A000007 n)

end

end A000600.P11751579571168627698

/-! ## A000600.P9640978061214626389

`char[A003602(n+1)]*A000598(n)-A000642(n+1)`
-/

namespace A000600.P9640978061214626389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000598 n - A000642 (n + 1)

end

end A000600.P9640978061214626389

/-! ## A000600.P5598511901883504278

`A000598(n)-A000642(n+1)-A181502(A138811(n)+1)`
-/

namespace A000600.P5598511901883504278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n - A000642 (n + 1) - A181502 (A138811 n + 1).toNat

end

end A000600.P5598511901883504278

/-! ## A000600.P3439284087739657910

`A000598(n)*A303280(A006530(n+1))-A000642(n+1)`
-/

namespace A000600.P3439284087739657910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n * A303280 (A006530 (n + 1)).toNat - A000642 (n + 1)

end

end A000600.P3439284087739657910

/-! ## A000600.P12138005558211561623

`(A000598(n)-A000642(n+1))%A000625(n)`
-/

namespace A000600.P12138005558211561623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000598 n - A000642 (n + 1)) (A000625 n)

end

end A000600.P12138005558211561623

/-! ## A000600.P14724103681157388599

`A000598(n)-A000642(n+1)-A138811(2*n²)`
-/

namespace A000600.P14724103681157388599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n - A000642 (n + 1) - A138811 (2 * n ^ 2)

end

end A000600.P14724103681157388599

/-!
# A000601: Expansion of 1/((1-x)^2*(1-x^2)*(1-x^3)).

The programs for A000601, the canonical program `A000601.P3823143030787112736` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000601 has offset 0).

The definition of A000601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^3+x^4-2x^6+x^7))` (program `A000601.P3823143030787112736`, by `A000601.P3823143030787112736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000601.P3823143030787112736

`ogf(1/(1-2x+x^3+x^4-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000601

/-- `ogf(1/(1-2x+x^3+x^4-2x^6+x^7))` -/
def P3823143030787112736.Spec : Prop :=
  ∀ n, P3823143030787112736.a n = A000601 n

theorem P3823143030787112736.correct : P3823143030787112736.Spec := by
  intro n
  simp only [A000601]

end A000601

/-! ## A000601.P3202930897057728660

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11, a(5)=16, a(6)=23`
-/

namespace A000601.P3202930897057728660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 11, 16, 23] fun n a =>
  2 * a (n - 1) - a (n - 3) - a (n - 4) + 2 * a (n - 6) - a (n - 7)

end

end A000601.P3202930897057728660

namespace A000601

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P3202930897057728660.Spec : Prop :=
  ∀ n, P3202930897057728660.a n = A000601 n

end A000601

/-! ## A000601.P8492173185585637048

`∑[round((n+3)²/12)]`
-/

namespace A000601.P8492173185585637048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000601.P8492173185585637048

namespace A000601

/-- `∑[round((n+3)²/12)]` -/
def P8492173185585637048.Spec : Prop :=
  ∀ n, P8492173185585637048.a n = A000601 n

end A000601

/-! ## A000601.P14234232902353406476

`a(n-1)+round((n+3)²/12)` with `a(0)=1`
-/

namespace A000601.P14234232902353406476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

end

end A000601.P14234232902353406476

namespace A000601

/-- `a(n-1)+round((n+3)²/12)` -/
def P14234232902353406476.Spec : Prop :=
  ∀ n, P14234232902353406476.a n = A000601 n

end A000601

/-! ## A000601.P1545642606556756524

`∑[∑[∑[char[3*n]]]]-a(n-1)` with `a(0)=1`
-/

namespace A000601.P1545642606556756524
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A000601.P1545642606556756524

namespace A000601

/-- `∑[∑[∑[char[3*n]]]]-a(n-1)` -/
def P1545642606556756524.Spec : Prop :=
  ∀ n, P1545642606556756524.a n = A000601 n

end A000601

/-! ## A000601.P16444205840857513850

`∑[floor(∑[a(n-2)+1]/3)]+1` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A000601.P16444205840857513850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000601.P16444205840857513850

namespace A000601

/-- `∑[floor(∑[a(n-2)+1]/3)]+1` -/
def P16444205840857513850.Spec : Prop :=
  ∀ n, P16444205840857513850.a n = A000601 n

end A000601

/-! ## A000601.P17460381655839655800

`∑[3-n%3+a(n-2)+n]/3` with `a(0)=3, a(1)=3`
-/

namespace A000601.P17460381655839655800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  3 - ((n % 3 : ℕ) : ℤ) + (f1 (n - 2) + (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A000601.P17460381655839655800

namespace A000601

/-- `∑[3-n%3+a(n-2)+n]/3` -/
def P17460381655839655800.Spec : Prop :=
  ∀ n, P17460381655839655800.a n = (A000601 n : ℚ)

end A000601

/-! ## A000601.P7976925685127697389

`∑[a(n-2)+n+1]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A000601.P7976925685127697389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A000601.P7976925685127697389

namespace A000601

/-- `∑[a(n-2)+n+1]-(a(n-1)+a(n-2))` -/
def P7976925685127697389.Spec : Prop :=
  ∀ n, P7976925685127697389.a n = A000601 n

end A000601

/-! ## A000601.P3279042868890985737

`A091773(n)-A256309(n)`
-/

namespace A000601.P3279042868890985737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091773 n - A256309 n

end

end A000601.P3279042868890985737

namespace A000601

/-- `A091773(n)-A256309(n)` -/
def P3279042868890985737.Spec : Prop :=
  ∀ n, P3279042868890985737.a n = A000601 n

theorem P3279042868890985737.correct : P3279042868890985737.Spec := by
  intro n
  simp only [A000601, Nat.add_sub_cancel, A000601.P3279042868890985737.a, A000601.P3823143030787112736.a, A091773, A091773.P6565989770376659951.a, A256309, A256309.P8235850906625870393.a, A002621, A002621.P12362321889656928583.a, A069906, A069906.P3213861137805963780.f1, A069906.P3213861137805963780.a, A026810, A026810.P8500249767737753929.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, A142150, A142150.P17187063318547882225.a, A001400, A001400.P17105359062635275807.a, A008667, A008667.P1446437464412478859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000601

/-! ## A000601.P13540383424653937330

`A181120(n)+A087811(n+1)`
-/

namespace A000601.P13540383424653937330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A087811 (n + 1)

end

end A000601.P13540383424653937330

namespace A000601

/-- `A181120(n)+A087811(n+1)` -/
def P13540383424653937330.Spec : Prop :=
  ∀ n, P13540383424653937330.a n = A000601 n

end A000601

/-! ## A000601.P16731598751697788438

`A307872(n+1)+A144677(n)`
-/

namespace A000601.P16731598751697788438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 1) + A144677 n

end

end A000601.P16731598751697788438

namespace A000601

/-- `A307872(n+1)+A144677(n)` -/
def P16731598751697788438.Spec : Prop :=
  ∀ n, P16731598751697788438.a n = A000601 n

end A000601

/-! ## A000601.P16571314150017661171

`A238340(n+1)-A212982(n)`
-/

namespace A000601.P16571314150017661171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1) - A212982 n

end

end A000601.P16571314150017661171

namespace A000601

/-- `A238340(n+1)-A212982(n)` -/
def P16571314150017661171.Spec : Prop :=
  ∀ n, P16571314150017661171.a n = A000601 n

end A000601

/-! ## A000601.P16069195606774430457

`A301739(n+4)-A005993(n)`
-/

namespace A000601.P16069195606774430457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301739 (n + 4) - A005993 n

end

end A000601.P16069195606774430457

namespace A000601

/-- `A301739(n+4)-A005993(n)` -/
def P16069195606774430457.Spec : Prop :=
  ∀ n, P16069195606774430457.a n = A000601 n

theorem P16069195606774430457.correct : P16069195606774430457.Spec := by
  intro n
  simp only [A000601, Nat.add_sub_cancel, A000601.P16069195606774430457.a, A000601.P3823143030787112736.a, A005993, A005993.P1030123146035920100.a, A301739, A301739.P2807132835622847976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000601

/-! ## A000601.P4730363959390085911

`∪[A241526(n+1), A092498(n)]`
-/

namespace A000601.P4730363959390085911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000601.P4730363959390085911

namespace A000601

/-- `∪[A241526(n+1), A092498(n)]` -/
def P4730363959390085911.Spec : Prop :=
  ∀ n, (P4730363959390085911.a n : ℤ) = A000601 n

end A000601

/-! ## A000601.P10470828368892858907

`∑[2*A008731(n)]-A008731(n)`
-/

namespace A000601.P10470828368892858907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008731 n

end

end A000601.P10470828368892858907

namespace A000601

/-- `∑[2*A008731(n)]-A008731(n)` -/
def P10470828368892858907.Spec : Prop :=
  ∀ n, P10470828368892858907.a n = A000601 n

end A000601

/-! ## A000601.P11866156157263973348

`A014125(n)+A014126(n)-A002623(n)`
-/

namespace A000601.P11866156157263973348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n + (A014126 n - A002623 n)

end

end A000601.P11866156157263973348

namespace A000601

/-- `A014125(n)+A014126(n)-A002623(n)` -/
def P11866156157263973348.Spec : Prop :=
  ∀ n, P11866156157263973348.a n = A000601 n

end A000601

/-! ## A000601.P97351399908840916

`A266769(n)+A266769(n)-A008731(n)`
-/

namespace A000601.P97351399908840916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + (A266769 n - A008731 n)

end

end A000601.P97351399908840916

namespace A000601

/-- `A266769(n)+A266769(n)-A008731(n)` -/
def P97351399908840916.Spec : Prop :=
  ∀ n, P97351399908840916.a n = A000601 n

end A000601

/-! ## A000601.P8983035594685780553

`A181120(n)+A002620(n+2)`
-/

namespace A000601.P8983035594685780553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A002620 (n + 2)

end

end A000601.P8983035594685780553

namespace A000601

/-- `A181120(n)+A002620(n+2)` -/
def P8983035594685780553.Spec : Prop :=
  ∀ n, P8983035594685780553.a n = A000601 n

end A000601

/-! ## A000601.P11326171639632910652

`A181120(n+1)+A001840(n+1)`
-/

namespace A000601.P11326171639632910652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 1) + A001840 (n + 1)

end

end A000601.P11326171639632910652

namespace A000601

/-- `A181120(n+1)+A001840(n+1)` -/
def P11326171639632910652.Spec : Prop :=
  ∀ n, P11326171639632910652.a n = A000601 n

end A000601

/-! ## A000601.P11850257616699612173

`A002623(n+1)-A014126(n+1)`
-/

namespace A000601.P11850257616699612173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) - A014126 (n + 1)

end

end A000601.P11850257616699612173

namespace A000601

/-- `A002623(n+1)-A014126(n+1)` -/
def P11850257616699612173.Spec : Prop :=
  ∀ n, P11850257616699612173.a n = A000601 n

end A000601

/-!
# A000602: Number of n-node unrooted quartic trees; number of n-carbon alkanes C(n)H(2n+2) ignoring stereoisomers.

The programs for A000602, there is no canonical definition to state claims against.
-/

/-! ## A000602.P7188536997037878136

`gcd(A000200(n)+A000022(n), C(2, n))`
-/

namespace A000602.P7188536997037878136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000200 n + A000022 n) (Nat.choose 2 n : ℤ)

end

end A000602.P7188536997037878136

/-! ## A000602.P16376007765141384464

`A000200(n)+A000022(A028310(n))`
-/

namespace A000602.P16376007765141384464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000200 n + A000022 (A028310 n).toNat

end

end A000602.P16376007765141384464

/-! ## A000602.P14350088849765510016

`A000007(n)+A000200(n)+A000022(n)`
-/

namespace A000602.P14350088849765510016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000200 n + A000022 n)

end

end A000602.P14350088849765510016

/-! ## A000602.P8970111138104541212

`(A000200(n)+A000022(n))^A178334(n)`
-/

namespace A000602.P8970111138104541212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000200 n + A000022 n : ℚ) ^ (A178334 n : ℤ)

end

end A000602.P8970111138104541212

/-! ## A000602.P18432289455208533116

`A000200(n)+A000022(or(n, A036987(n)))`
-/

namespace A000602.P18432289455208533116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000200 n + A000022 (Int.lor (n : ℤ) (A036987 n)).toNat

end

end A000602.P18432289455208533116

/-! ## A000602.P1022247049803489889

`(A000200(n)+A000022(n))^A057428(n)²`
-/

namespace A000602.P1022247049803489889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000200 n + A000022 n : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A000602.P1022247049803489889

/-! ## A000602.P18080730730059311095

`A036987(2*n)+A000200(n)+A000022(n)`
-/

namespace A000602.P18080730730059311095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (A000200 n + A000022 n)

end

end A000602.P18080730730059311095

/-! ## A000602.P10637536388801450849

`A008683((n+1)²)+A000200(n)+A000022(n)`
-/

namespace A000602.P10637536388801450849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A000200 n + A000022 n)

end

end A000602.P10637536388801450849

/-! ## A000602.P9799704018000810385

`A257000(2*(n+1))+A000200(n)+A000022(n)`
-/

namespace A000602.P9799704018000810385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (2 * (n + 1)) + (A000200 n + A000022 n)

end

end A000602.P9799704018000810385

/-! ## A000602.P11974638313957542717

`A000022(n)+A190224(A062383(n))+A000200(n)`
-/

namespace A000602.P11974638313957542717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000022 n + (A190224 (A062383 n).toNat + A000200 n)

end

end A000602.P11974638313957542717

/-! ## A000602.P9746059221065021464

`A010815(A001359(n+2))+A000200(n)+A000022(n)`
-/

namespace A000602.P9746059221065021464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A001359 (n + 2)).toNat + (A000200 n + A000022 n)

end

end A000602.P9746059221065021464

/-!
# A000603: Number of nonnegative solutions to x^2 + y^2 <= n^2.

The programs for A000603, the canonical program `A000603.P17854986445594045637` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000603 has offset 0).

The definition of A000603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000603.P11739562413051519276

`∑[A036697(n)]`
-/

namespace A000603.P11739562413051519276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P11739562413051519276

namespace A000603

/-- `∑[A036697(n)]` -/
def P11739562413051519276.Spec : Prop :=
  ∀ n, P11739562413051519276.a n = A000603 n

end A000603

/-! ## A000603.P15038965606322027427

`∑[A036694(n)+1]`
-/

namespace A000603.P15038965606322027427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P15038965606322027427

namespace A000603

/-- `∑[A036694(n)+1]` -/
def P15038965606322027427.Spec : Prop :=
  ∀ n, P15038965606322027427.a n = A000603 n

end A000603

/-! ## A000603.P17854986445594045637

`A036698(n)+1+n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A000603

/-- `A036698(n)+1+n` -/
def P17854986445594045637.Spec : Prop :=
  ∀ n, P17854986445594045637.a n = A000603 n

theorem P17854986445594045637.correct : P17854986445594045637.Spec := by
  intro n
  simp only [A000603]

end A000603

/-! ## A000603.P5777497440726556753

`∑[ceil(A036696(n)/2)]`
-/

namespace A000603.P5777497440726556753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036696 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P5777497440726556753

namespace A000603

/-- `∑[ceil(A036696(n)/2)]` -/
def P5777497440726556753.Spec : Prop :=
  ∀ n, P5777497440726556753.a n = A000603 n

end A000603

/-! ## A000603.P4626530373764478837

`ceil(A000328(n)/4+n)`
-/

namespace A000603.P4626530373764478837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000328 n : ℚ) / 4 + (n : ℚ)⌉

end

end A000603.P4626530373764478837

namespace A000603

/-- `ceil(A000328(n)/4+n)` -/
def P4626530373764478837.Spec : Prop :=
  ∀ n, P4626530373764478837.a n = A000603 n

end A000603

/-! ## A000603.P496285231747060940

`(A036695(n)+1+n)/2`
-/

namespace A000603.P496285231747060940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036695 n + 1 + (n : ℤ) : ℚ) / 2

end

end A000603.P496285231747060940

namespace A000603

/-- `(A036695(n)+1+n)/2` -/
def P496285231747060940.Spec : Prop :=
  ∀ n, P496285231747060940.a n = (A000603 n : ℚ)

end A000603

/-! ## A000603.P3878318550465831418

`A036702(n)+A036700(n)`
-/

namespace A000603.P3878318550465831418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n + A036700 n

end

end A000603.P3878318550465831418

namespace A000603

/-- `A036702(n)+A036700(n)` -/
def P3878318550465831418.Spec : Prop :=
  ∀ n, P3878318550465831418.a n = A000603 n

end A000603

/-! ## A000603.P8633067387065722981

`A036695(n)-A036698(n)`
-/

namespace A000603.P8633067387065722981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - A036698 n

end

end A000603.P8633067387065722981

namespace A000603

/-- `A036695(n)-A036698(n)` -/
def P8633067387065722981.Spec : Prop :=
  ∀ n, P8633067387065722981.a n = A000603 n

end A000603

/-! ## A000603.P2029226501729639141

`∑[A036703(n)+A036701(n)]`
-/

namespace A000603.P2029226501729639141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n + A036701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P2029226501729639141

namespace A000603

/-- `∑[A036703(n)+A036701(n)]` -/
def P2029226501729639141.Spec : Prop :=
  ∀ n, P2029226501729639141.a n = A000603 n

end A000603

/-! ## A000603.P351545522370222349

`A036695(n)-∑[A036694(n)]`
-/

namespace A000603.P351545522370222349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P351545522370222349

namespace A000603

/-- `A036695(n)-∑[A036694(n)]` -/
def P351545522370222349.Spec : Prop :=
  ∀ n, P351545522370222349.a n = A000603 n

end A000603

/-! ## A000603.P5899883380207112964

`∑[A036696(n)-A036694(n)]`
-/

namespace A000603.P5899883380207112964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036696 n - A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P5899883380207112964

namespace A000603

/-- `∑[A036696(n)-A036694(n)]` -/
def P5899883380207112964.Spec : Prop :=
  ∀ n, P5899883380207112964.a n = A000603 n

end A000603

/-! ## A000603.P13779758816818546371

`∑[A036696(n)]-A036698(n)`
-/

namespace A000603.P13779758816818546371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036698 n

end

end A000603.P13779758816818546371

namespace A000603

/-- `∑[A036696(n)]-A036698(n)` -/
def P13779758816818546371.Spec : Prop :=
  ∀ n, P13779758816818546371.a n = A000603 n

end A000603

/-! ## A000603.P1090097135032428607

`floor(A036695(n)²/A000328(n))`
-/

namespace A000603.P1090097135032428607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036695 n ^ 2 : ℚ) / (A000328 n : ℚ)⌋

end

end A000603.P1090097135032428607

namespace A000603

/-- `floor(A036695(n)²/A000328(n))` -/
def P1090097135032428607.Spec : Prop :=
  ∀ n, P1090097135032428607.a n = A000603 n

end A000603

/-! ## A000603.P12166941224756733855

`A136483(A028310(2*n))+2*n+1`
-/

namespace A000603.P12166941224756733855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A028310 (2 * n)).toNat + (2 * n + 1 : ℤ)

end

end A000603.P12166941224756733855

namespace A000603

/-- `A136483(A028310(2*n))+2*n+1` -/
def P12166941224756733855.Spec : Prop :=
  ∀ n, P12166941224756733855.a n = A000603 n

end A000603

/-! ## A000603.P5258511058808911606

`∑[A008619(2*A036694(n))]`
-/

namespace A000603.P5258511058808911606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A036694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P5258511058808911606

namespace A000603

/-- `∑[A008619(2*A036694(n))]` -/
def P5258511058808911606.Spec : Prop :=
  ∀ n, P5258511058808911606.a n = A000603 n

end A000603

/-! ## A000603.P9712192447426739177

`∑[A008621(A036693(n))]`
-/

namespace A000603.P9712192447426739177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P9712192447426739177

namespace A000603

/-- `∑[A008621(A036693(n))]` -/
def P9712192447426739177.Spec : Prop :=
  ∀ n, P9712192447426739177.a n = A000603 n

end A000603

/-! ## A000603.P782280892347063348

`∑[A110653(A036693(n)+3)]`
-/

namespace A000603.P782280892347063348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A036693 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P782280892347063348

namespace A000603

/-- `∑[A110653(A036693(n)+3)]` -/
def P782280892347063348.Spec : Prop :=
  ∀ n, P782280892347063348.a n = A000603 n

end A000603

/-! ## A000603.P12607716344093813931

`∑[A008621(2*A036696(n))]`
-/

namespace A000603.P12607716344093813931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P12607716344093813931

namespace A000603

/-- `∑[A008621(2*A036696(n))]` -/
def P12607716344093813931.Spec : Prop :=
  ∀ n, P12607716344093813931.a n = A000603 n

end A000603

/-! ## A000603.P13322962996582612071

`∑[A008624(2*A036696(n))]`
-/

namespace A000603.P13322962996582612071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A036696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000603.P13322962996582612071

namespace A000603

/-- `∑[A008624(2*A036696(n))]` -/
def P13322962996582612071.Spec : Prop :=
  ∀ n, P13322962996582612071.a n = A000603 n

end A000603

/-! ## A000603.P14880902705347228380

`A333573(A004277(n))+1+n`
-/

namespace A000603.P14880902705347228380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (A004277 n).toNat + 1 + (n : ℤ)

end

end A000603.P14880902705347228380

namespace A000603

/-- `A333573(A004277(n))+1+n` -/
def P14880902705347228380.Spec : Prop :=
  ∀ n, P14880902705347228380.a n = A000603 n

end A000603

/-!
# A000604: Number of nonnegative solutions to x^2 + y^2 + z^2 <= n^2.

The programs for A000604, there is no canonical definition to state claims against.
-/

/-! ## A000604.P10054335043811428203

`A000328(n)+A253663(n)-A036698(n)`
-/

namespace A000604.P10054335043811428203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n + (A253663 n - A036698 n)

end

end A000604.P10054335043811428203

/-! ## A000604.P3241589129228275145

`A253663(n)+A016777(A036698(n))`
-/

namespace A000604.P3241589129228275145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n + A016777 (A036698 n).toNat

end

end A000604.P3241589129228275145

/-! ## A000604.P12122962253450196091

`A000606(n²)`
-/

namespace A000604.P12122962253450196091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000606 (n ^ 2)

end

end A000604.P12122962253450196091

/-! ## A000604.P15769809190867656764

`record[A000606(A123596(n))]`
-/

namespace A000604.P15769809190867656764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000606 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000604.P15769809190867656764

/-! ## A000604.P12694182651964740316

`and(-1, A000606(A000290(n)))`
-/

namespace A000604.P12694182651964740316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000606 (A000290 n).toNat)

end

end A000604.P12694182651964740316

/-! ## A000604.P12618058465391066036

`gcd(A000038(n), A000606(A000290(n)))`
-/

namespace A000604.P12618058465391066036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000606 (A000290 n).toNat)

end

end A000604.P12618058465391066036

/-! ## A000604.P500311122640220841

`or(A000007(n), A000606(A000290(n)))`
-/

namespace A000604.P500311122640220841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000606 (A000290 n).toNat)

end

end A000604.P500311122640220841

/-! ## A000604.P15654869108946802976

`A000606(A000290(n))%A001235(n+1)`
-/

namespace A000604.P15654869108946802976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000606 (A000290 n).toNat) (A001235 (n + 1))

end

end A000604.P15654869108946802976

/-! ## A000604.P421389543919106766

`A000606(A000290(n))+A008683(12*(n+1))`
-/

namespace A000604.P421389543919106766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000606 (A000290 n).toNat + A008683 (12 * (n + 1))

end

end A000604.P421389543919106766

/-! ## A000604.P9587298665378260574

`A000606(A000290(n))^A000005(ceil(2/(n+1)))`
-/

namespace A000604.P9587298665378260574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000606 (A000290 n).toNat : ℚ) ^ (A000005 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A000604.P9587298665378260574

/-! ## A000604.P5206014206459722276

`A014963(12*comp[5*n])*A000606(A000290(n))`
-/

namespace A000604.P5206014206459722276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A000606 (A000290 n).toNat

end

end A000604.P5206014206459722276

/-!
# A000605: Number of points of norm <= n in cubic lattice.

The programs for A000605, there is no canonical definition to state claims against.
-/

/-! ## A000605.P16788426612445466414

`A117609(n²)`
-/

namespace A000605.P16788426612445466414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (n ^ 2)

end

end A000605.P16788426612445466414

/-! ## A000605.P18176755801775473886

`A078183(n)+A016725(n)`
-/

namespace A000605.P18176755801775473886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 n + A016725 n

end

end A000605.P18176755801775473886

/-! ## A000605.P13443786961043572113

`A078183(n+1)-A078184(n)`
-/

namespace A000605.P13443786961043572113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 (n + 1) - A078184 n

end

end A000605.P13443786961043572113

/-! ## A000605.P11860343257289209860

`A053591(2*n)`
-/

namespace A000605.P11860343257289209860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053591 (2 * n)

end

end A000605.P11860343257289209860

/-! ## A000605.P2583587518872534776

`record[and((1-n)%2, A053591(n))]`
-/

namespace A000605.P2583587518872534776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (1 - (n : ℤ)) 2) (A053591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000605.P2583587518872534776

/-! ## A000605.P9110514875925394002

`record[A053591(A014681(n))]`
-/

namespace A000605.P9110514875925394002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053591 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000605.P9110514875925394002

/-! ## A000605.P14383889194134050752

`or(1, A053591(A005843(n)))`
-/

namespace A000605.P14383889194134050752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053591 (A005843 n).toNat)

end

end A000605.P14383889194134050752

/-! ## A000605.P7509897308271599275

`A053592(2*n)+A016725(n)`
-/

namespace A000605.P7509897308271599275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n) + A016725 n

end

end A000605.P7509897308271599275

/-! ## A000605.P15687485346756426961

`record[A053591(n)/A037227(n+1)]`
-/

namespace A000605.P15687485346756426961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053591 n : ℚ) / (A037227 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000605.P15687485346756426961

/-! ## A000605.P16252102459252309609

`record[gcd(A007814(n+1), A053591(n))]`
-/

namespace A000605.P16252102459252309609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A053591 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000605.P16252102459252309609

/-! ## A000605.P15014215873550769865

`A053591(A005843(n))%A133818(n)`
-/

namespace A000605.P15014215873550769865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053591 (A005843 n).toNat) (A133818 n)

end

end A000605.P15014215873550769865

/-!
# A000606: Number of nonnegative solutions to x^2 + y^2 + z^2 <= n.

The programs for A000606, there is no canonical definition to state claims against.
-/

/-! ## A000606.P11538051491480705345

`∑[A002102(n)]`
-/

namespace A000606.P11538051491480705345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000606.P11538051491480705345

/-! ## A000606.P2867197168715568759

`a(n-1)+A002102(n)%A001844(n)` with `a(0)=1`
-/

namespace A000606.P2867197168715568759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A002102 n) (A001844 n)

end

end A000606.P2867197168715568759

/-! ## A000606.P10369363605288663962

`a(n-1)+A341629(2*n+1)+A002102(n)` with `a(0)=1`
-/

namespace A000606.P10369363605288663962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A341629 (2 * n + 1) + A002102 n)

end

end A000606.P10369363605288663962

/-! ## A000606.P1091521858295682284

`∑[A110657(A005875(n))-A063691(n)]`
-/

namespace A000606.P1091521858295682284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000606.P1091521858295682284

/-! ## A000606.P17147208134192306663

`A211639(n)+A016777(A014200(n))`
-/

namespace A000606.P17147208134192306663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + A016777 (A014200 n).toNat

end

end A000606.P17147208134192306663

/-! ## A000606.P10398376750078847181

`A028310(a(n-1))+A002102(n)` with `a(0)=1`
-/

namespace A000606.P10398376750078847181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A002102 n

end

end A000606.P10398376750078847181

/-! ## A000606.P204884859795990845

`∑[A045847(∑[n+4]+2)]`
-/

namespace A000606.P204884859795990845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000606.P204884859795990845

/-!
# A000607: Number of partitions of n into prime parts.

The programs for A000607, there is no canonical definition to state claims against.
-/

/-! ## A000607.P1960819984132459362

`A184198(n)+A184199(n)`
-/

namespace A000607.P1960819984132459362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n + A184199 n

end

end A000607.P1960819984132459362

/-! ## A000607.P15842347127489680054

`A298603(n)-a(n-1)` with `a(0)=1`
-/

namespace A000607.P15842347127489680054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298603 n - a (n - 1)

end

end A000607.P15842347127489680054

/-! ## A000607.P18209642882368617238

`A099773(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A000607.P18209642882368617238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A099773 n + a (n - 2)

end

end A000607.P18209642882368617238

/-! ## A000607.P6062018016979390343

`A048165(n)+2*A184199(n)`
-/

namespace A000607.P6062018016979390343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 n + 2 * A184199 n

end

end A000607.P6062018016979390343

/-! ## A000607.P7083555207274184272

`2*A184198(n)-A048165(n)`
-/

namespace A000607.P7083555207274184272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184198 n - A048165 n

end

end A000607.P7083555207274184272

/-! ## A000607.P14480000448582913586

`A184198(n)-A184199(n)*A260196(n)`
-/

namespace A000607.P14480000448582913586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A184199 n * A260196 n

end

end A000607.P14480000448582913586

/-! ## A000607.P16923148073095574698

`A184198(xor(1, A014681(n)))+A184198(n)`
-/

namespace A000607.P16923148073095574698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (Int.xor 1 (A014681 n)).toNat + A184198 n

end

end A000607.P16923148073095574698

/-! ## A000607.P16590045471205254450

`A298603(n+1)+A034891(n)-A034891(n+1)`
-/

namespace A000607.P16590045471205254450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298603 (n + 1) + (A034891 n - A034891 (n + 1))

end

end A000607.P16590045471205254450

/-! ## A000607.P18005607083851615884

`A331849(n)+A000586(n)`
-/

namespace A000607.P18005607083851615884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331849 n + A000586 n

end

end A000607.P18005607083851615884

/-! ## A000607.P14955738976263761501

`A046676(n)-A192541(n)`
-/

namespace A000607.P14955738976263761501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A192541 n

end

end A000607.P14955738976263761501

/-! ## A000607.P6821460759623611700

`A382956(∑[n])`
-/

namespace A000607.P6821460759623611700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000607.P6821460759623611700

/-!
# A000608: Number of connected partially ordered sets with n unlabeled elements.

The programs for A000608, there is no canonical definition to state claims against.
-/

/-! ## A000608.P14110632417468713563

`A263864(C(n, 2)+1)`
-/

namespace A000608.P14110632417468713563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263864 (Nat.choose n 2 + 1)

end

end A000608.P14110632417468713563

/-! ## A000608.P10684327248256748808

`A263864(∑[abs(1-n)])`
-/

namespace A000608.P10684327248256748808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000608.P10684327248256748808

/-! ## A000608.P4848895619646308631

`A000112(n)-A349401(n)`
-/

namespace A000608.P4848895619646308631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n - A349401 n

end

end A000608.P4848895619646308631

/-! ## A000608.P18130553323925663907

`∑[A381121(n)]-A349401(n)`
-/

namespace A000608.P18130553323925663907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349401 n

end

end A000608.P18130553323925663907

/-! ## A000608.P7259366125392089440

`A263864(A152947(n+1))+char[30]`
-/

namespace A000608.P7259366125392089440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263864 (A152947 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000608.P7259366125392089440

/-!
# A000609: Number of threshold functions of n or fewer variables.

The programs for A000609, there is no canonical definition to state claims against.
-/

/-! ## A000609.P3902484769127240614

`A001146(n)-A064436(n)`
-/

namespace A000609.P3902484769127240614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A064436 n

end

end A000609.P3902484769127240614

/-! ## A000609.P12126359257345821771

`A000079(2^n)-A064436(n)`
-/

namespace A000609.P12126359257345821771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 ^ n) - A064436 n

end

end A000609.P12126359257345821771

/-!
# A000610: Number of self-complementary Boolean functions of n variables: see Comments for precise definition.

The programs for A000610, there is no canonical definition to state claims against.
-/

/-! ## A000610.P6449819711423144072

`A000370(n)-A317794(n)`
-/

namespace A000610.P6449819711423144072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000370 n - A317794 n

end

end A000610.P6449819711423144072

/-! ## A000610.P546831449067886219

`A000370(n)-∑[A317795(n)]`
-/

namespace A000610.P546831449067886219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000370 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000610.P546831449067886219

/-! ## A000610.P6681486597300855414

`∑[A000618(n)-A317795(n)]-A317794(n)`
-/

namespace A000610.P6681486597300855414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n - A317795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317794 n

end

end A000610.P6681486597300855414

/-!
# A000612: Number of P-equivalence classes of switching functions of n or fewer variables, divided by 2.

The programs for A000612, there is no canonical definition to state claims against.
-/

/-! ## A000612.P3327515284907005784

`A003180(n)/2`
-/

namespace A000612.P3327515284907005784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003180 n : ℚ) / 2

end

end A000612.P3327515284907005784

/-! ## A000612.P10228209215708989099

`∑[A055621(n)]`
-/

namespace A000612.P10228209215708989099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000612.P10228209215708989099

/-! ## A000612.P3858801324161281410

`∑[A003181(n)/2]`
-/

namespace A000612.P3858801324161281410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003181 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000612.P3858801324161281410

/-!
# A000613: Number of Boolean functions of n variables.

The programs for A000613, there is no canonical definition to state claims against.
-/

/-! ## A000613.P15042878725032252817

`A000585(n+1)/2`
-/

namespace A000613.P15042878725032252817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000585 (n + 1) : ℚ) / 2

end

end A000613.P15042878725032252817

/-!
# A000614: Number of complemented types of Boolean functions of n variables under action of AG(n,2).

The programs for A000614, there is no canonical definition to state claims against.
-/

/-! ## A000614.P16061217090349350981

`(A053037(n+1)+A000214(n+1))/2`
-/

namespace A000614.P16061217090349350981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053037 (n + 1) + A000214 (n + 1) : ℚ) / 2

end

end A000614.P16061217090349350981

/-! ## A000614.P12842198208860445665

`A053037(n+1)+A049461(n+2)/2`
-/

namespace A000614.P12842198208860445665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053037 (n + 1) : ℚ) + (A049461 (n + 2) : ℚ) / 2

end

end A000614.P12842198208860445665

/-!
# A000615: Threshold functions of exactly n variables.

The programs for A000615, there is no canonical definition to state claims against.
-/

/-! ## A000615.P6721844204974696434

`2^n*A002079(n)`
-/

namespace A000615.P6721844204974696434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002079 n

end

end A000615.P6721844204974696434

/-! ## A000615.P10197793792142479419

`A002079(n)*A086066(n)`
-/

namespace A000615.P10197793792142479419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002079 n * A086066 n

end

end A000615.P10197793792142479419

/-! ## A000615.P3142580616840222476

`A002079(n)*A126605(n)`
-/

namespace A000615.P3142580616840222476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002079 n * A126605 n

end

end A000615.P3142580616840222476

/-! ## A000615.P8610087534513786773

`A002079(n)*A208849(n)`
-/

namespace A000615.P8610087534513786773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002079 n * A208849 n

end

end A000615.P8610087534513786773

/-! ## A000615.P6155001181568562953

`A002079(n)*A234591(n)`
-/

namespace A000615.P6155001181568562953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002079 n * A234591 n

end

end A000615.P6155001181568562953

/-!
# A000616: a(-1)=1 by convention; for n >= 0, a(n) = number of irreducible Boolean functions of n variables.

The programs for A000616, there is no canonical definition to state claims against.
-/

/-! ## A000616.P9576518295351263426

`∑[A000618(A250266(n))]`
-/

namespace A000616.P9576518295351263426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 (A250266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000616.P9576518295351263426

/-! ## A000616.P4459832460459831367

`∑[A000618(∑[A267155(n)])]`
-/

namespace A000616.P4459832460459831367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000616.P4459832460459831367

/-! ## A000616.P10952663276181521924

`A361870(A055998(n))-A000007(n)`
-/

namespace A000616.P10952663276181521924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361870 (A055998 n).toNat - A000007 n

end

end A000616.P10952663276181521924

/-!
# A000617: Number of NP-equivalence classes of threshold functions of n or fewer variables.

The programs for A000617, there is no canonical definition to state claims against.
-/

/-! ## A000617.P17013750352922086309

`∑[A000619(A048320(n))]`
-/

namespace A000617.P17013750352922086309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000619 (A048320 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000617.P17013750352922086309

/-! ## A000617.P11189215162985557551

`∑[A000619(∑[A054911(n)])]`
-/

namespace A000617.P11189215162985557551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000617.P11189215162985557551

/-! ## A000617.P1030562951174817181

`∑[A000619(∑[A110656(n)])]`
-/

namespace A000617.P1030562951174817181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000617.P1030562951174817181

/-! ## A000617.P6859280449275917247

`∑[A000619(record[A004184(n)])]`
-/

namespace A000617.P6859280449275917247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000619 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000617.P6859280449275917247

/-! ## A000617.P11072230344675667890

`∑[A000619(record[A235049(n)])]`
-/

namespace A000617.P11072230344675667890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000619 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000617.P11072230344675667890

/-!
# A000619: NP-equivalence classes of threshold functions of exactly n variables.

The programs for A000619, there is no canonical definition to state claims against.
-/

/-! ## A000619.P1708521962655427788

`Δ[A000617(A235049(n))%A000617(n)]`
-/

namespace A000619.P1708521962655427788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000617 (A235049 n).toNat) (A000617 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000619.P1708521962655427788

/-! ## A000619.P7609548667165531005

`A028242(A318590(n)+A094727(n+1))`
-/

namespace A000619.P7609548667165531005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A318590 n + A094727 (n + 1)).toNat

end

end A000619.P7609548667165531005

/-!
# A000620: Number of monosubstituted alkanes C(n-1)H(2n-1)-X with n-1 carbon atoms that are stereoisomers.

The programs for A000620, there is no canonical definition to state claims against.
-/

/-! ## A000620.P15971621083254881283

`A000625(n)-A000621(n+1)`
-/

namespace A000620.P15971621083254881283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A000621 (n + 1)

end

end A000620.P15971621083254881283

/-! ## A000620.P5604984817920087928

`A005627(n)+A005628(n)-A000621(n+1)`
-/

namespace A000620.P5604984817920087928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + (A005628 n - A000621 (n + 1))

end

end A000620.P5604984817920087928

/-! ## A000620.P1231520721800386758

`A005627(n)+2*A261336(A028310(n))-A000621(n+1)`
-/

namespace A000620.P1231520721800386758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A028310 n).toNat - A000621 (n + 1)

end

end A000620.P1231520721800386758

/-! ## A000620.P8694704303455392525

`A005627(n)+2*A261336(A233583(n+1))-A000621(n+1)`
-/

namespace A000620.P8694704303455392525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A233583 (n + 1)).toNat - A000621 (n + 1)

end

end A000620.P8694704303455392525

/-! ## A000620.P15152155976577721215

`A005627(n)+2*A261336(A123108(2*n))-A000621(n+1)`
-/

namespace A000620.P15152155976577721215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A123108 (2 * n)).toNat - A000621 (n + 1)

end

end A000620.P15152155976577721215

/-! ## A000620.P2847077059103501224

`A005627(n)+2*A261336(A000007(n)+n)-A000621(n+1)`
-/

namespace A000620.P2847077059103501224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A000007 n + (n : ℤ)).toNat - A000621 (n + 1)

end

end A000620.P2847077059103501224

/-!
# A000621: Number of monosubstituted alkanes C(n-1)H(2n-1)-X with n-1 carbon atoms that are not stereoisomers.

The programs for A000621, there is no canonical definition to state claims against.
-/

/-! ## A000621.P17800221019254770008

`A000625(n)-A000620(n+1)`
-/

namespace A000621.P17800221019254770008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A000620 (n + 1)

end

end A000621.P17800221019254770008

/-! ## A000621.P4873396819758253194

`A005627(n)+A005628(n)-A000620(n+1)`
-/

namespace A000621.P4873396819758253194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + (A005628 n - A000620 (n + 1))

end

end A000621.P4873396819758253194

/-! ## A000621.P6250574534481403938

`A005627(n)+2*A261336(A028310(n))-A000620(n+1)`
-/

namespace A000621.P6250574534481403938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A028310 n).toNat - A000620 (n + 1)

end

end A000621.P6250574534481403938

/-! ## A000621.P14909301375218591077

`A005627(n)+2*A261336(A233583(n+1))-A000620(n+1)`
-/

namespace A000621.P14909301375218591077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A233583 (n + 1)).toNat - A000620 (n + 1)

end

end A000621.P14909301375218591077

/-! ## A000621.P6112385812183774395

`A005627(n)+2*A261336(A123108(2*n))-A000620(n+1)`
-/

namespace A000621.P6112385812183774395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A123108 (2 * n)).toNat - A000620 (n + 1)

end

end A000621.P6112385812183774395

/-! ## A000621.P534260926056260998

`A005627(n)+2*A261336(A000007(n)+n)-A000620(n+1)`
-/

namespace A000621.P534260926056260998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A000007 n + (n : ℤ)).toNat - A000620 (n + 1)

end

end A000621.P534260926056260998

/-! ## A000621.P12911457768241455074

`A253190(A084849(n))`
-/

namespace A000621.P12911457768241455074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253190 (A084849 n).toNat

end

end A000621.P12911457768241455074

/-! ## A000621.P6123816861839319023

`A253190(A000124(2*n))`
-/

namespace A000621.P6123816861839319023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253190 (A000124 (2 * n)).toNat

end

end A000621.P6123816861839319023

/-!
# A000622: Number of monosubstituted alkanes C(n)H(2n+1)-X of the form shown in the Comments lines that are stereoisomers.

The programs for A000622, there is no canonical definition to state claims against.
-/

/-! ## A000622.P2316139687440160715

`Δ[A000620(n+1)]-A000623(n+1)`
-/

namespace A000622.P2316139687440160715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000623 (n + 1)

end

end A000622.P2316139687440160715

/-! ## A000622.P615772141244304843

`Δ[A000625(n)-A000621(n+1)]-A000623(n+1)`
-/

namespace A000622.P615772141244304843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A000621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000623 (n + 1)

end

end A000622.P615772141244304843

/-! ## A000622.P1143174232408438298

`A000620(n+2)-(A000623(n+1)+A000620(n+1))`
-/

namespace A000622.P1143174232408438298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 2) - (A000623 (n + 1) + A000620 (n + 1))

end

end A000622.P1143174232408438298

/-! ## A000622.P2720154678104210262

`Δ[A000620(n+1)]-A250301(A047178(n+1))`
-/

namespace A000622.P2720154678104210262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A250301 (A047178 (n + 1)).toNat

end

end A000622.P2720154678104210262

/-! ## A000622.P17897104299821656406

`Δ[A000620(n+1)]-A141553(A174300(n+1))`
-/

namespace A000622.P17897104299821656406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141553 (A174300 (n + 1)).toNat

end

end A000622.P17897104299821656406

/-!
# A000623: Number of monosubstituted alkanes C(n)H(2n+1)-X of the form shown in the Comments lines that are stereoisomers.

The programs for A000623, there is no canonical definition to state claims against.
-/

/-! ## A000623.P1822459396393239369

`Δ[A000620(n+1)]-A000622(n+1)`
-/

namespace A000623.P1822459396393239369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000622 (n + 1)

end

end A000623.P1822459396393239369

/-! ## A000623.P17000814976628745991

`Δ[A000625(n)-A000621(n+1)]-A000622(n+1)`
-/

namespace A000623.P17000814976628745991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A000621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000622 (n + 1)

end

end A000623.P17000814976628745991

/-! ## A000623.P13190159509330040968

`A000620(n+2)-(A000622(n+1)+A000620(n+1))`
-/

namespace A000623.P13190159509330040968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 2) - (A000622 (n + 1) + A000620 (n + 1))

end

end A000623.P13190159509330040968

/-! ## A000623.P6294379540236596777

`and(A034386(n), A242748(A140456(n+1)))`
-/

namespace A000623.P6294379540236596777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034386 n) (A242748 (A140456 (n + 1)).toNat)

end

end A000623.P6294379540236596777

/-! ## A000623.P5271538628070284006

`A193908(A008346(n))%A000041(A212804(n))`
-/

namespace A000623.P5271538628070284006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193908 (A008346 n).toNat) (A000041 (A212804 n).toNat)

end

end A000623.P5271538628070284006

/-!
# A000624: Number of monosubstituted alkanes C(n)H(2n+1)-X of the form shown in the Comments lines that are not stereoisomers.

The programs for A000624, there is no canonical definition to state claims against.
-/

/-! ## A000624.P11072925727170866745

`∑[A240607(A120126(n))]`
-/

namespace A000624.P11072925727170866745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240607 (A120126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000624.P11072925727170866745

/-! ## A000624.P717283582226171892

`A123719(∑[A240607(n)])`
-/

namespace A000624.P717283582226171892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000624.P717283582226171892

/-! ## A000624.P15381712425817234891

`∑[A007966(A240607(n)²)]`
-/

namespace A000624.P15381712425817234891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A240607 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000624.P15381712425817234891

/-! ## A000624.P10053995134395649682

`∑[A001222(2^A240607(n))]`
-/

namespace A000624.P10053995134395649682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A240607 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000624.P10053995134395649682

/-! ## A000624.P15032816671981505714

`∑[A240607(n)%A319558(n)]`
-/

namespace A000624.P15032816671981505714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240607 n) (A319558 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000624.P15032816671981505714

/-!
# A000625: Number of n-node steric rooted ternary trees; number of n carbon alkyl radicals C(n)H(2n+1) taking stereoisomers into account.

The programs for A000625, there is no canonical definition to state claims against.
-/

/-! ## A000625.P10731168999818818638

`A005628(n)+A005627(n)`
-/

namespace A000625.P10731168999818818638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005628 n + A005627 n

end

end A000625.P10731168999818818638

/-! ## A000625.P4372617500690632848

`A000621(n+1)+A000620(n+1)`
-/

namespace A000625.P4372617500690632848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000621 (n + 1) + A000620 (n + 1)

end

end A000625.P4372617500690632848

/-! ## A000625.P14369999878980935376

`A005627(n)+2*A261336(A028310(n))`
-/

namespace A000625.P14369999878980935376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A028310 n).toNat

end

end A000625.P14369999878980935376

/-! ## A000625.P9373427752276249783

`A005627(n)+2*A261336(A233583(n+1))`
-/

namespace A000625.P9373427752276249783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A233583 (n + 1)).toNat

end

end A000625.P9373427752276249783

/-! ## A000625.P8247979889775975055

`A005627(n)+2*A261336(A123108(2*n))`
-/

namespace A000625.P8247979889775975055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A123108 (2 * n)).toNat

end

end A000625.P8247979889775975055

/-! ## A000625.P10442748460493500891

`A005627(n)+2*A261336(A000007(n)+n)`
-/

namespace A000625.P10442748460493500891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 n + 2 * A261336 (A000007 n + (n : ℤ)).toNat

end

end A000625.P10442748460493500891

/-!
# A000626: Number of stereoisomeric paraffins with n carbon atoms.

The programs for A000626, there is no canonical definition to state claims against.
-/

/-! ## A000626.P5758561942783183317

`A000628(n+1)-A000627(n+1)`
-/

namespace A000626.P5758561942783183317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A000627 (n + 1)

end

end A000626.P5758561942783183317

/-! ## A000626.P18322095101612228954

`A000628(n+1)-(A250253(A250266(n))+A064458(n))`
-/

namespace A000626.P18322095101612228954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - (A250253 (A250266 n).toNat + A064458 n)

end

end A000626.P18322095101612228954

/-! ## A000626.P12033750348428538824

`A000628(n+1)-(A250253(A250266(n))+A084904(n))`
-/

namespace A000626.P12033750348428538824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - (A250253 (A250266 n).toNat + A084904 n)

end

end A000626.P12033750348428538824

/-! ## A000626.P4458793207126665294

`A000628(n+1)-A250253(A250265(n))`
-/

namespace A000626.P4458793207126665294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A250253 (A250265 n).toNat

end

end A000626.P4458793207126665294

/-! ## A000626.P14674914775514079490

`A000628(n+1)-A118168(A060166(n+2))`
-/

namespace A000626.P14674914775514079490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A118168 (A060166 (n + 2)).toNat

end

end A000626.P14674914775514079490

/-!
# A000627: Number of non-stereoisomeric paraffins with n carbon atoms.

The programs for A000627, there is no canonical definition to state claims against.
-/

/-! ## A000627.P1648812419515186047

`A000628(n+1)-A000626(n+1)`
-/

namespace A000627.P1648812419515186047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A000626 (n + 1)

end

end A000627.P1648812419515186047

/-! ## A000627.P9918051785264893840

`A250253(A250266(n))+A064458(n)`
-/

namespace A000627.P9918051785264893840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250253 (A250266 n).toNat + A064458 n

end

end A000627.P9918051785264893840

/-! ## A000627.P5582078310670634099

`A250253(A250266(n))+A084904(n)`
-/

namespace A000627.P5582078310670634099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250253 (A250266 n).toNat + A084904 n

end

end A000627.P5582078310670634099

/-! ## A000627.P14451858303847351900

`A323547(n+1)+A250253(A250266(n))`
-/

namespace A000627.P14451858303847351900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1) + A250253 (A250266 n).toNat

end

end A000627.P14451858303847351900

/-! ## A000627.P14501695921481476652

`A250253(A250266(n))+A016389(A060166(n+2))`
-/

namespace A000627.P14501695921481476652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250253 (A250266 n).toNat + A016389 (A060166 (n + 2)).toNat

end

end A000627.P14501695921481476652

/-!
# A000628: Number of n-node unrooted steric quartic trees; number of n-carbon alkanes C(n)H(2n+2) taking stereoisomers into account.

The programs for A000628, there is no canonical definition to state claims against.
-/

/-! ## A000628.P9113443582820072766

`A000627(A028310(n))+A000626(A028310(n))`
-/

namespace A000628.P9113443582820072766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000627 (A028310 n).toNat + A000626 (A028310 n).toNat

end

end A000628.P9113443582820072766

/-! ## A000628.P15693979249036077602

`A118168(A060166(n+1))+A000626(A028310(n))`
-/

namespace A000628.P15693979249036077602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A060166 (n + 1)).toNat + A000626 (A028310 n).toNat

end

end A000628.P15693979249036077602

/-! ## A000628.P13636313627875358288

`A003059(A245115(n))`
-/

namespace A000628.P13636313627875358288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A245115 n).toNat

end

end A000628.P13636313627875358288

/-! ## A000628.P15706265855820535566

`A328335(A002991(n))`
-/

namespace A000628.P15706265855820535566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A002991 n).toNat

end

end A000628.P15706265855820535566

/-! ## A000628.P14764936837770386553

`A000194(ceil(A000110(n)/7))`
-/

namespace A000628.P14764936837770386553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ⌈(A000110 n : ℚ) / 7⌉.toNat

end

end A000628.P14764936837770386553

/-!
# A000629: Number of necklaces of partitions of n+1 labeled beads.

The programs for A000629, there is no canonical definition to state claims against.
-/

/-! ## A000629.P3749962816043582774

`∑[A162509(n)]`
-/

namespace A000629.P3749962816043582774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000629.P3749962816043582774

/-! ## A000629.P1136103121934586733

`A002050(n)+1`
-/

namespace A000629.P1136103121934586733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 n + 1

end

end A000629.P1136103121934586733

/-! ## A000629.P8906557915146188505

`abs(A162312(∑[n]))`
-/

namespace A000629.P8906557915146188505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162312 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A000629.P8906557915146188505

/-! ## A000629.P11272477744676473419

`record[abs(A162312(n))]`
-/

namespace A000629.P11272477744676473419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162312 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000629.P11272477744676473419

/-! ## A000629.P9465203295309615277

`ceil(A007047(n)/2)`
-/

namespace A000629.P9465203295309615277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 2⌉

end

end A000629.P9465203295309615277

/-! ## A000629.P2285609365619362373

`A054255(∑[n+1])`
-/

namespace A000629.P2285609365619362373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000629.P2285609365619362373

/-! ## A000629.P16356016857193951789

`A079641(∑[n]+1)`
-/

namespace A000629.P16356016857193951789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000629.P16356016857193951789

/-! ## A000629.P7425437846823982251

`A090665(∑[n]+1)`
-/

namespace A000629.P7425437846823982251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000629.P7425437846823982251

/-! ## A000629.P15361227460385894576

`record[A090665(n+1)]`
-/

namespace A000629.P15361227460385894576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000629.P15361227460385894576

/-! ## A000629.P17424841314656665156

`A073146(∑[n]+n)`
-/

namespace A000629.P17424841314656665156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000629.P17424841314656665156

/-!
# A000630: Number of ways to represent n using the binary operator a * b = 2^a + b.

The programs for A000630, there is no canonical definition to state claims against.
-/

/-! ## A000630.P13887459497398723769

`A320797(n)+A000196(A330058(n))`
-/

namespace A000630.P13887459497398723769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 n + A000196 (A330058 n).toNat

end

end A000630.P13887459497398723769

/-! ## A000630.P10972038587401663838

`A109054(A320268(n+1)+1)+A000196(A330058(n))`
-/

namespace A000630.P10972038587401663838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A320268 (n + 1) + 1).toNat + A000196 (A330058 n).toNat

end

end A000630.P10972038587401663838

/-! ## A000630.P7320711787632209186

`A103128(A059480(n))`
-/

namespace A000630.P7320711787632209186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A059480 n).toNat

end

end A000630.P7320711787632209186

/-! ## A000630.P9587593370707860963

`A194339(A045631(n))`
-/

namespace A000630.P9587593370707860963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (A045631 n).toNat

end

end A000630.P9587593370707860963

/-! ## A000630.P11711242895462156753

`A372982(A045630(n))`
-/

namespace A000630.P11711242895462156753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372982 (A045630 n).toNat

end

end A000630.P11711242895462156753

/-!
# A000631: Number of ethylene derivatives with n carbon atoms.

The programs for A000631, there is no canonical definition to state claims against.
-/

/-! ## A000631.P8765298865109960321

`A002094(n+2)-A036671(n+2)`
-/

namespace A000631.P8765298865109960321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002094 (n + 2) - A036671 (n + 2)

end

end A000631.P8765298865109960321

/-! ## A000631.P344073680354087770

`A026569(n)-A274950((n-5)*n*((n-1-(2-n)²)²-1))`
-/

namespace A000631.P344073680354087770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 n - A274950 (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1))).toNat

end

end A000631.P344073680354087770

/-! ## A000631.P9638641798379967556

`A026569(n)-A025441(A001710(n))`
-/

namespace A000631.P9638641798379967556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 n - A025441 (A001710 n).toNat

end

end A000631.P9638641798379967556

/-!
# A000632: Number of esters with n carbon atoms up to structural isomerism.

The programs for A000632, there is no canonical definition to state claims against.
-/

/-! ## A000632.P6372984682850829704

`A000646(n+1)-A000598(n+1)`
-/

namespace A000632.P6372984682850829704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000646 (n + 1) - A000598 (n + 1)

end

end A000632.P6372984682850829704

/-! ## A000632.P15562624265650834657

`A054404(A005469(n+1))`
-/

namespace A000632.P15562624265650834657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A005469 (n + 1)).toNat

end

end A000632.P15562624265650834657

/-! ## A000632.P6704834184916786939

`A100196(A086631(n+1))`
-/

namespace A000632.P6704834184916786939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A086631 (n + 1)).toNat

end

end A000632.P6704834184916786939

/-! ## A000632.P16358076416734699979

`A226762(A027088(n+2))`
-/

namespace A000632.P16358076416734699979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A027088 (n + 2)).toNat

end

end A000632.P16358076416734699979

/-!
# A000633: Number of acyclic quaternary ammonium ions with n carbon atoms.

The programs for A000633, there is no canonical definition to state claims against.
-/

/-! ## A000633.P9137986365963838313

`A036669(n+5)`
-/

namespace A000633.P9137986365963838313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036669 (n + 5)

end

end A000633.P9137986365963838313

/-! ## A000633.P14222350080100709779

`gcd(A000038(n), A036669(A020710(n)))`
-/

namespace A000633.P14222350080100709779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A036669 (A020710 n).toNat)

end

end A000633.P14222350080100709779

/-! ## A000633.P13604945115096870669

`or(A000007(n), A036669(A020710(n)))`
-/

namespace A000633.P13604945115096870669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A036669 (A020710 n).toNat)

end

end A000633.P13604945115096870669

/-! ## A000633.P17518877155050402365

`A036669(A020710(n))%Δ[A000302(n)]`
-/

namespace A000633.P17518877155050402365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036669 (A020710 n).toNat) (f1 (n + 1) - f1 n)

end

end A000633.P17518877155050402365

/-! ## A000633.P2659388204022699833

`A036669(A020710(n))*A057427(A133263(n))`
-/

namespace A000633.P2659388204022699833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036669 (A020710 n).toNat * A057427 (A133263 n).toNat

end

end A000633.P2659388204022699833

/-! ## A000633.P2478857262426684595

`A036669(A020710(n))%A332172(n)`
-/

namespace A000633.P2478857262426684595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036669 (A020710 n).toNat) (A332172 n)

end

end A000633.P2478857262426684595

/-!
# A000634: Number of glycols with n carbon atoms.

The programs for A000634, there is no canonical definition to state claims against.
-/

/-! ## A000634.P15471561166937134322

`A000636(n+2)-A000642(n+3)`
-/

namespace A000634.P15471561166937134322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000636 (n + 2) - A000642 (n + 3)

end

end A000634.P15471561166937134322

/-! ## A000634.P12954023467378882626

`A000636(n+2)-(A000599(n+2)+A000598(n+1))`
-/

namespace A000634.P12954023467378882626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000636 (n + 2) - (A000599 (n + 2) + A000598 (n + 1))

end

end A000634.P12954023467378882626

/-! ## A000634.P4609781492689714370

`Δ[A296021(∑[A007051(n)])]`
-/

namespace A000634.P4609781492689714370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000634.P4609781492689714370

/-!
# A000635: Number of paraffins C_n H_{2n} X Y with n carbon atoms.

The programs for A000635, there is no canonical definition to state claims against.
-/

/-! ## A000635.P6901813901149409836

`A165190(A265804(n))`
-/

namespace A000635.P6901813901149409836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A265804 n).toNat

end

end A000635.P6901813901149409836

/-! ## A000635.P13098972585171358620

`A165190(A192472(n+2))`
-/

namespace A000635.P13098972585171358620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A192472 (n + 2)).toNat

end

end A000635.P13098972585171358620

/-! ## A000635.P1646624643332310

`∑[A265370(Δ[A343665(n)])]`
-/

namespace A000635.P1646624643332310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000635.P1646624643332310

/-! ## A000635.P14644583088512093703

`record[A033183(Δ[A318799(n)])]`
-/

namespace A000635.P14644583088512093703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318799 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000635.P14644583088512093703

/-!
# A000636: Number of paraffins C_n H_{2n} X_2 with n carbon atoms.

The programs for A000636, there is no canonical definition to state claims against.
-/

/-! ## A000636.P6621664058328140377

`A243284(A149119(n+1))`
-/

namespace A000636.P6621664058328140377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A149119 (n + 1)).toNat

end

end A000636.P6621664058328140377

/-! ## A000636.P1812474297400505693

`A023193(floor(sqrt(A074567(n))))`
-/

namespace A000636.P1812474297400505693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.sqrt (A074567 n)).toNat

end

end A000636.P1812474297400505693

/-! ## A000636.P7580104834832524276

`A023193(round(sqrt(A074567(n))))`
-/

namespace A000636.P7580104834832524276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (SequenceMachineLib.roundAway (Real.sqrt (A074567 n : ℝ))).toNat

end

end A000636.P7580104834832524276

/-! ## A000636.P4395893270875122479

`A023190(A039300(n)+A000641(n))`
-/

namespace A000636.P4395893270875122479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A039300 n + A000641 n).toNat

end

end A000636.P4395893270875122479

/-!
# A000638: Number of permutation groups of degree n; also number of conjugacy classes of subgroups of symmetric group S_n; also number of molecular species of degree n.

The programs for A000638, there is no canonical definition to state claims against.
-/

/-! ## A000638.P13708493318031143527

`∑[A000637(n)]`
-/

namespace A000638.P13708493318031143527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000638.P13708493318031143527

/-! ## A000638.P1782762401110338364

`A000637(n)+a(A247151(n))` with `a(0)=1`
-/

namespace A000638.P1782762401110338364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000637 n + a (A247151 n).toNat

end

end A000638.P1782762401110338364

/-! ## A000638.P4582836793943406554

`A000637(n)+a(A132264(n+1)-2)` with `a(0)=1`
-/

namespace A000638.P4582836793943406554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000637 n + a (A132264 (n + 1) - 2).toNat

end

end A000638.P4582836793943406554

/-! ## A000638.P7833893289648040697

`a(n-1)+A127802(2*n)+A000637(n)` with `a(0)=1`
-/

namespace A000638.P7833893289648040697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A127802 (2 * n) + A000637 n)

end

end A000638.P7833893289648040697

/-! ## A000638.P8485245463051525102

`A218966(n)+A218965(n)`
-/

namespace A000638.P8485245463051525102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218966 n + A218965 n

end

end A000638.P8485245463051525102

/-!
# A000639: Number of alkyl benzenes with n carbon atoms: C(n)H(2n-6).

The programs for A000639, there is no canonical definition to state claims against.
-/

/-! ## A000639.P11794799319975275220

`A238646(∏[A230989(n+1)])`
-/

namespace A000639.P11794799319975275220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238646 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000639.P11794799319975275220

/-! ## A000639.P1064367564328800982

`A054071(A321228(n))-A304867(n)`
-/

namespace A000639.P1064367564328800982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A321228 n).toNat - A304867 n

end

end A000639.P1064367564328800982

/-! ## A000639.P15389971062003057753

`A338430(A101776(n)^A067661(n))`
-/

namespace A000639.P15389971062003057753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (SequenceMachineLib.roundAway ((A101776 n : ℚ) ^ (A067661 n : ℤ))).toNat

end

end A000639.P15389971062003057753

/-! ## A000639.P3873954688903394468

`A327469(A288113(n)+A096235(n+1))`
-/

namespace A000639.P3873954688903394468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327469 (A288113 n + A096235 (n + 1)).toNat

end

end A000639.P3873954688903394468

/-!
# A000640: Number of paraffins C_n H_{2n-1} XYZ with n carbon atoms.

The programs for A000640, there is no canonical definition to state claims against.
-/

/-! ## A000640.P9479775432662780740

`∑[A194640(A094688(n))]`
-/

namespace A000640.P9479775432662780740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A094688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000640.P9479775432662780740

/-! ## A000640.P12061951914412820162

`∑[A233386(A110335(n))]`
-/

namespace A000640.P12061951914412820162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233386 (A110335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000640.P12061951914412820162

/-! ## A000640.P8079155292783851635

`A105519(2*A020713(2*n))`
-/

namespace A000640.P8079155292783851635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (2 * A020713 (2 * n)).toNat

end

end A000640.P8079155292783851635

/-!
# A000641: Number of paraffins C_n H_{2n-1} X_3 with n carbon atoms.

The programs for A000641, there is no canonical definition to state claims against.
-/

/-! ## A000641.P15778911175679221946

`A008612(xor(A053186(n+1), A160999(n+1)))`
-/

namespace A000641.P15778911175679221946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor (A053186 (n + 1)) (A160999 (n + 1))).toNat

end

end A000641.P15778911175679221946

/-! ## A000641.P4863190706389490150

`A100196(A262442(n)-A000007(n))`
-/

namespace A000641.P4863190706389490150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A262442 n - A000007 n).toNat

end

end A000641.P4863190706389490150

/-! ## A000641.P13555146608513735541

`A100196(A057427(n)*A262442(n))`
-/

namespace A000641.P13555146608513735541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A057427 n * A262442 n).toNat

end

end A000641.P13555146608513735541

/-! ## A000641.P12892323885640196187

`A100196(A178489(n)*A262442(n))`
-/

namespace A000641.P12892323885640196187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A178489 n * A262442 n).toNat

end

end A000641.P12892323885640196187

/-!
# A000642: a(n) = number of isomeric hydrocarbons of the acetylene series with carbon content n.

The programs for A000642, there is no canonical definition to state claims against.
-/

/-! ## A000642.P16402355163497179969

`A000598(n)-(A000600(n)+A000007(n))`
-/

namespace A000642.P16402355163497179969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n - (A000600 n + A000007 n)

end

end A000642.P16402355163497179969

/-! ## A000642.P14578643112020574808

`A000678(n)-(A036669(n)+A000600(n))`
-/

namespace A000642.P14578643112020574808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 n - (A036669 n + A000600 n)

end

end A000642.P14578643112020574808

/-! ## A000642.P18234273790744565711

`(A000598(n)-A000600(n))*A057427(n)`
-/

namespace A000642.P18234273790744565711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000598 n - A000600 n) * A057427 n

end

end A000642.P18234273790744565711

/-! ## A000642.P16141747815685343407

`(A000598(n)-A000600(n))*A134824(n)²`
-/

namespace A000642.P16141747815685343407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000598 n - A000600 n) * A134824 n ^ 2

end

end A000642.P16141747815685343407

/-! ## A000642.P8639707407591538920

`A000598(n)-(A063524(n+1)+A000600(n))`
-/

namespace A000642.P8639707407591538920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n - (A063524 (n + 1) + A000600 n)

end

end A000642.P8639707407591538920

/-! ## A000642.P6815806136135597630

`A001221(A034699(n+1))*A000598(n)-A000600(n)`
-/

namespace A000642.P6815806136135597630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A034699 (n + 1)).toNat * A000598 n - A000600 n

end

end A000642.P6815806136135597630

/-! ## A000642.P16878083049157691906

`(A000598(n)-A000600(n))%A004054(n)`
-/

namespace A000642.P16878083049157691906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000598 n - A000600 n) (A004054 n)

end

end A000642.P16878083049157691906

/-! ## A000642.P12989607439012285338

`abs(A000598(n)-A000600(n))%A006234(n+3)`
-/

namespace A000642.P12989607439012285338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A000598 n - A000600 n| (A006234 (n + 3))

end

end A000642.P12989607439012285338

/-! ## A000642.P12027887037109611037

`A000598(n)%A085839(n)-A000600(n)`
-/

namespace A000642.P12027887037109611037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000598 n) (A085839 n) - A000600 n

end

end A000642.P12027887037109611037

/-!
# A000643: a(n) = a(n-1) + 2^a(n-2).

The programs for A000643, the canonical program `A000643.P17166184699623931731` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000643 has offset 0).

The definition of A000643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2^a(n-2)` (program `A000643.P17166184699623931731`, by `A000643.P17166184699623931731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000643.P17166184699623931731

`a(n-1)+2^a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000643

/-- `a(n-1)+2^a(n-2)` -/
def P17166184699623931731.Spec : Prop :=
  ∀ n, (P17166184699623931731.a n : ℤ) = A000643 n

theorem P17166184699623931731.correct : P17166184699623931731.Spec := by
  intro n
  simp only [A000643]

end A000643

/-! ## A000643.P16138442671944035281

`∑[2^a(n-2)*a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A000643.P16138442671944035281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  2 ^ f1 (n - 2) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000643.P16138442671944035281

namespace A000643

/-- `∑[2^a(n-2)*a(n-1)]` -/
def P16138442671944035281.Spec : Prop :=
  ∀ n, (P16138442671944035281.a n : ℤ) = A000643 n

end A000643

/-! ## A000643.P2315806912013711391

`A000079(a(n-2))+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A000643.P2315806912013711391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000079 (a (n - 2)).toNat + a (n - 1)

end

end A000643.P2315806912013711391

namespace A000643

/-- `A000079(a(n-2))+a(n-1)` -/
def P2315806912013711391.Spec : Prop :=
  ∀ n, P2315806912013711391.a n = A000643 n

end A000643

/-! ## A000643.P5915464011481362020

`a(n-1)+A000225(a(n-2))+1` with `a(0)=0, a(1)=0`
-/

namespace A000643.P5915464011481362020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A000225 (a (n - 2)).toNat + 1)

end

end A000643.P5915464011481362020

namespace A000643

/-- `a(n-1)+A000225(a(n-2))+1` -/
def P5915464011481362020.Spec : Prop :=
  ∀ n, P5915464011481362020.a n = A000643 n

end A000643

/-! ## A000643.P7539138280687348233

`A016116(a(n-2)+a(n-2))+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A000643.P7539138280687348233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A016116 (a (n - 2) + a (n - 2)).toNat + a (n - 1)

end

end A000643.P7539138280687348233

namespace A000643

/-- `A016116(a(n-2)+a(n-2))+a(n-1)` -/
def P7539138280687348233.Spec : Prop :=
  ∀ n, P7539138280687348233.a n = A000643 n

end A000643

/-!
# A000644: Number of loops of length 4n on square grid that turn at each step and return to start in original direction.

The programs for A000644, there is no canonical definition to state claims against.
-/

/-! ## A000644.P13179968425427788623

`A078129(A148745(n))`
-/

namespace A000644.P13179968425427788623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A148745 n).toNat

end

end A000644.P13179968425427788623

/-! ## A000644.P6002258591000644525

`A069360(A196555(n))`
-/

namespace A000644.P6002258591000644525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069360 (A196555 n).toNat

end

end A000644.P6002258591000644525

/-!
# A000645: Number of alkyls X^{II} C_n H_{2n+1} Y with n carbon atoms.

The programs for A000645, there is no canonical definition to state claims against.
-/

/-! ## A000645.P14496356719511805697

`A125005(A000598(n))+A026269(n+2)`
-/

namespace A000645.P14496356719511805697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A000598 n).toNat + A026269 (n + 2)

end

end A000645.P14496356719511805697

/-! ## A000645.P16422996861188857367

`A125005(A036375(n))+A026269(n+2)`
-/

namespace A000645.P16422996861188857367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A036375 n).toNat + A026269 (n + 2)

end

end A000645.P16422996861188857367

/-! ## A000645.P8888337802236691534

`A125005(A036376(n))+A026269(n+2)`
-/

namespace A000645.P8888337802236691534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A036376 n).toNat + A026269 (n + 2)

end

end A000645.P8888337802236691534

/-! ## A000645.P1170529307435082266

`A276791(A003094(n))+A026269(n+2)`
-/

namespace A000645.P1170529307435082266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (A003094 n).toNat + A026269 (n + 2)

end

end A000645.P1170529307435082266

/-!
# A000646: Number of alkyls Y^{II} C_n H_{2n+2} with n carbon atoms.

The programs for A000646, there is no canonical definition to state claims against.
-/

/-! ## A000646.P16461577340091187270

`A316694(n+2)+A178798(A321611(n+1))`
-/

namespace A000646.P16461577340091187270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316694 (n + 2) + A178798 (A321611 (n + 1)).toNat

end

end A000646.P16461577340091187270

/-! ## A000646.P7061097140596280178

`A316694(n+2)-A178798(A173196(n+1))`
-/

namespace A000646.P7061097140596280178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316694 (n + 2) - A178798 (A173196 (n + 1)).toNat

end

end A000646.P7061097140596280178

/-! ## A000646.P16628128257738963092

`A316694(n+2)+A078650(A276086(3*n+2))`
-/

namespace A000646.P16628128257738963092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316694 (n + 2) + A078650 (A276086 (3 * n + 2)).toNat

end

end A000646.P16628128257738963092

/-! ## A000646.P8949290656822256332

`A377432(A251723(2*n+3))+A316694(n+2)`
-/

namespace A000646.P8949290656822256332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377432 (A251723 (2 * n + 3)).toNat + A316694 (n + 2)

end

end A000646.P8949290656822256332

/-!
# A000647: Alkyl naphthalenes C_{n+10} H_{2n+8} with n+10 carbon atoms.

The programs for A000647, there is no canonical definition to state claims against.
-/

/-! ## A000647.P4176874399946366228

`A088239(A281500(n))*A336990(n)`
-/

namespace A000647.P4176874399946366228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088239 (A281500 n).toNat * A336990 n

end

end A000647.P4176874399946366228

/-!
# A000648: Number of alkyls C_{n+15} H_{2n+10} (Anthr.) with n carbon atoms.

The programs for A000648, there is no canonical definition to state claims against.
-/

/-! ## A000648.P4789495954191930864

`A306556(ceil(exp(n))+1)`
-/

namespace A000648.P4789495954191930864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306556 (⌈Real.exp (n : ℝ)⌉ + 1).toNat

end

end A000648.P4789495954191930864

/-!
# A000649: Number of alkyls C_{n+15} H_{2n+10} (Phenan) with n carbon atoms.

The programs for A000649, there is no canonical definition to state claims against.
-/

/-! ## A000649.P13512691072696217681

`record[gcd(A008705(n), A036378(n))]`
-/

namespace A000649.P13512691072696217681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008705 n) (A036378 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000649.P13512691072696217681

/-!
# A000650: Number of alkyls S C_{n+4} H_{2n+4} with n carbon atoms.

The programs for A000650, there is no canonical definition to state claims against.
-/

/-! ## A000650.P14264677958646048915

`A006856(A095982(n))`
-/

namespace A000650.P14264677958646048915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006856 (A095982 n).toNat

end

end A000650.P14264677958646048915

/-! ## A000650.P10663670554661795795

`A275012(n)+A000989(A113715(n))`
-/

namespace A000650.P10663670554661795795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275012 n + A000989 (A113715 n).toNat

end

end A000650.P10663670554661795795

/-!
# A000651: Running time of Takeuchi function.

The programs for A000651, there is no canonical definition to state claims against.
-/

/-! ## A000651.P6600805452731366601

`A057362(A097148(n+1)+A000045(n))`
-/

namespace A000651.P6600805452731366601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A097148 (n + 1) + A000045 n).toNat

end

end A000651.P6600805452731366601

/-! ## A000651.P17447244781754056069

`A269371(A084158(n)+A062318(n+1))`
-/

namespace A000651.P17447244781754056069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A084158 n + A062318 (n + 1)).toNat

end

end A000651.P17447244781754056069

/-! ## A000651.P10620345326101491513

`A002264(A336866(n)+A275780(n+2))`
-/

namespace A000651.P10620345326101491513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A336866 n + A275780 (n + 2)).toNat

end

end A000651.P10620345326101491513

/-!
# A000657: Median Euler numbers (the middle numbers of Arnold's shuttle triangle).

The programs for A000657, there is no canonical definition to state claims against.
-/

/-! ## A000657.P7546074765147417145

`A005437(2*n)`
-/

namespace A000657.P7546074765147417145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005437 (2 * n)

end

end A000657.P7546074765147417145

/-! ## A000657.P13403657709205733919

`A008280(∑[4*n])`
-/

namespace A000657.P13403657709205733919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000657.P13403657709205733919

/-! ## A000657.P16324259056432790039

`A008281(∑[4*n])`
-/

namespace A000657.P16324259056432790039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000657.P16324259056432790039

/-! ## A000657.P4626044378147035364

`A108040(∑[4*n])`
-/

namespace A000657.P4626044378147035364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000657.P4626044378147035364

/-! ## A000657.P2822283832749992356

`A010094(2*n²+1)`
-/

namespace A000657.P2822283832749992356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (2 * n ^ 2 + 1)

end

end A000657.P2822283832749992356

/-!
# A000658: Strehl's sequence "C_n^(3)".

The programs for A000658, there is no canonical definition to state claims against.
-/

/-! ## A000658.P11058258857534567250

`A094424(∑[n+3]+1)`
-/

namespace A000658.P11058258857534567250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000658.P11058258857534567250

/-! ## A000658.P585915174526575277

`record[A094424(A198464(n+1))]`
-/

namespace A000658.P585915174526575277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000658.P585915174526575277

/-! ## A000658.P14897246519720310183

`record[A094424(eq[1, A247505(n)])]`
-/

namespace A000658.P14897246519720310183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000658.P14897246519720310183

/-! ## A000658.P3055932674048316572

`record[A094424(gcd(n, A336201(n)))]`
-/

namespace A000658.P3055932674048316572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (Int.gcd (n : ℤ) (A336201 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000658.P3055932674048316572

/-!
# A000659: a(n) = 2^a(n-1) + a(n-2).

The programs for A000659, the canonical program `A000659.P12457369241639361556` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000659 has offset 0).

The definition of A000659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(n-1)+a(n-2)` (program `A000659.P12457369241639361556`, by `A000659.P12457369241639361556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000659.P12457369241639361556

`2^a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000659

/-- `2^a(n-1)+a(n-2)` -/
def P12457369241639361556.Spec : Prop :=
  ∀ n, (P12457369241639361556.a n : ℤ) = A000659 n

theorem P12457369241639361556.correct : P12457369241639361556.Spec := by
  intro n
  simp only [A000659]

end A000659

/-! ## A000659.P417926332811216070

`or(2^a(n-1), a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A000659.P417926332811216070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor (2 ^ a (n - 1)) (a (n - 2))

end

end A000659.P417926332811216070

namespace A000659

/-- `or(2^a(n-1), a(n-2))` -/
def P417926332811216070.Spec : Prop :=
  ∀ n, (P417926332811216070.a n : ℤ) = A000659 n

end A000659

/-! ## A000659.P10701066425667462219

`xor(2^a(n-1), a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A000659.P10701066425667462219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.xor (2 ^ a (n - 1)) (a (n - 2))

end

end A000659.P10701066425667462219

namespace A000659

/-- `xor(2^a(n-1), a(n-2))` -/
def P10701066425667462219.Spec : Prop :=
  ∀ n, (P10701066425667462219.a n : ℤ) = A000659 n

end A000659

/-!
# A000660: Boustrophedon transform of 1,1,2,3,4,5,...

The programs for A000660, there is no canonical definition to state claims against.
-/

/-! ## A000660.P2147128865666922614

`A231179(n)+A000111(n)`
-/

namespace A000660.P2147128865666922614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A000111 n

end

end A000660.P2147128865666922614

/-! ## A000660.P16564084995969085856

`A231179(n)+abs(A346838(n))`
-/

namespace A000660.P16564084995969085856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + |A346838 n|

end

end A000660.P16564084995969085856

/-! ## A000660.P6354325819102981150

`2*A000718(n)-A000697(n)`
-/

namespace A000660.P6354325819102981150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000718 n - A000697 n

end

end A000660.P6354325819102981150

/-! ## A000660.P16267550350191890154

`A000111(n)+A231200(n)/2`
-/

namespace A000660.P16267550350191890154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 n : ℚ) + (A231200 n : ℚ) / 2

end

end A000660.P16267550350191890154

/-! ## A000660.P17947326618848770029

`A109449(∑[n])+A231200(n)/2`
-/

namespace A000660.P17947326618848770029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109449 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A231200 n : ℚ) / 2

end

end A000660.P17947326618848770029

/-! ## A000660.P8477174031638514364

`abs(A247453(∑[n]))+A231200(n)/2`
-/

namespace A000660.P8477174031638514364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| : ℚ) + (A231200 n : ℚ) / 2

end

end A000660.P8477174031638514364

/-! ## A000660.P6291686424507535377

`A231179(n)+A008281(A000096(n))`
-/

namespace A000660.P6291686424507535377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A008281 (A000096 n).toNat

end

end A000660.P6291686424507535377

/-! ## A000660.P13624635158484083167

`A231179(n)+A008282(A000124(n))`
-/

namespace A000660.P13624635158484083167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A008282 (A000124 n).toNat

end

end A000660.P13624635158484083167

/-! ## A000660.P4972581554100584357

`A231179(n)+A109449(A000217(n))`
-/

namespace A000660.P4972581554100584357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A109449 (A000217 n).toNat

end

end A000660.P4972581554100584357

/-! ## A000660.P1193804380907538778

`A231179(n)+A010094(A238531(n))`
-/

namespace A000660.P1193804380907538778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A010094 (A238531 n).toNat

end

end A000660.P1193804380907538778

/-!
# A000661: Shifts 2 places left under boustrophedon transform.

The programs for A000661, there is no canonical definition to state claims against.
-/

/-! ## A000661.P15558754480887068497

`A008618(A171003(n+1)+abs(A292935(n)))`
-/

namespace A000661.P15558754480887068497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A171003 (n + 1) + |A292935 n|).toNat

end

end A000661.P15558754480887068497

/-! ## A000661.P446346100201760690

`A008618(A259691(∑[n])+A171003(n+1))`
-/

namespace A000661.P446346100201760690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A259691 (∑ j ∈ Finset.range (n + 1), f1 j) + A171003 (n + 1)).toNat

end

end A000661.P446346100201760690

/-! ## A000661.P8100508615517284778

`A008618(A346426(∑[n])+A171003(n+1))`
-/

namespace A000661.P8100508615517284778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A346426 (∑ j ∈ Finset.range (n + 1), f1 j) + A171003 (n + 1)).toNat

end

end A000661.P8100508615517284778

/-! ## A000661.P13480883420117594186

`A008618(A171003(n+1)+Δ[A005001(n)])`
-/

namespace A000661.P13480883420117594186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A171003 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A000661.P13480883420117594186

/-!
# A000663: Number of binary relations on an infinite set, each with exactly n ordered pairs, up to isomorphism.

The programs for A000663, there is no canonical definition to state claims against.
-/

/-! ## A000663.P17083034586631541172

`A350797(A057813(n)-A046092(n))`
-/

namespace A000663.P17083034586631541172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350797 (A057813 n - A046092 n).toNat

end

end A000663.P17083034586631541172

/-! ## A000663.P6559540797340005351

`A343350(n)+A299757(A014137(n))`
-/

namespace A000663.P6559540797340005351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343350 n + A299757 (A014137 n).toNat

end

end A000663.P6559540797340005351

/-!
# A000664: Number of graphs with n edges.

The programs for A000664, there is no canonical definition to state claims against.
-/

/-! ## A000664.P11467622038673091027

`A132220(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A000664.P11467622038673091027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A132220 n + a (n - 3)

end

end A000664.P11467622038673091027

/-! ## A000664.P10763947826922397280

`∑[A005368(n)]`
-/

namespace A000664.P10763947826922397280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000664.P10763947826922397280

/-! ## A000664.P11358790172792820503

`A331508(A340266(n+1))`
-/

namespace A000664.P11358790172792820503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A340266 (n + 1)).toNat

end

end A000664.P11358790172792820503

/-! ## A000664.P2634368253477581343

`A331508(A167614(n+1)-1)`
-/

namespace A000664.P2634368253477581343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A167614 (n + 1) - 1).toNat

end

end A000664.P2634368253477581343

/-! ## A000664.P17273559438160872745

`A331508(A145018(n+2)+n)`
-/

namespace A000664.P17273559438160872745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A145018 (n + 2) + (n : ℤ)).toNat

end

end A000664.P17273559438160872745

/-!
# A000665: Number of 3-uniform hypergraphs on n unlabeled nodes, or equivalently number of relations with 3 arguments on n nodes.

The programs for A000665, there is no canonical definition to state claims against.
-/

/-! ## A000665.P18380769123928585760

`∑[A322451(n)]`
-/

namespace A000665.P18380769123928585760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000665.P18380769123928585760

/-! ## A000665.P7700466022289273923

`∑{d}[A000079(n), A322451(A056239(#))]`
-/

namespace A000665.P7700466022289273923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322451 (A056239 d).toNat

end

end A000665.P7700466022289273923

/-! ## A000665.P1433796617425634409

`A309858(∑[n+3]+n+3)`
-/

namespace A000665.P1433796617425634409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A000665.P1433796617425634409

/-!
# A000666: Number of symmetric relations on n nodes.

The programs for A000666, there is no canonical definition to state claims against.
-/

/-! ## A000666.P16217355545217184377

`∑[A322700(n)]`
-/

namespace A000666.P16217355545217184377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000666.P16217355545217184377

/-! ## A000666.P4727253825397813334

`A361404(∑[n+1]+1)`
-/

namespace A000666.P4727253825397813334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000666.P4727253825397813334

/-! ## A000666.P12878139804715143073

`A322700(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A000666.P12878139804715143073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322700 n + a (A023443 n).toNat

end

end A000666.P12878139804715143073

/-! ## A000666.P16010032940341994955

`a(n-1)+A057427(n)*A322700(n)` with `a(0)=1`
-/

namespace A000666.P16010032940341994955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A322700 n

end

end A000666.P16010032940341994955

/-!
# A000667: Boustrophedon transform of all-1's sequence.

The programs for A000667, there is no canonical definition to state claims against.
-/

/-! ## A000667.P13973035792091725613

`Δ[abs(A009337(n))]`
-/

namespace A000667.P13973035792091725613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009337 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000667.P13973035792091725613

/-! ## A000667.P8494234946165575706

`A292975(∑[n+2]-1)`
-/

namespace A000667.P8494234946165575706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000667.P8494234946165575706

/-! ## A000667.P6611165885363265812

`A348580(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A000667.P6611165885363265812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348580 (n - 1) + a (n - 1)

end

end A000667.P6611165885363265812

/-! ## A000667.P1810826521687651255

`A000737(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A000667.P1810826521687651255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000737 n - (n : ℤ) * a (n - 1)

end

end A000667.P1810826521687651255

/-! ## A000667.P1453244540791517379

`A009739(n)+A003701(n)`
-/

namespace A000667.P1453244540791517379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 n + A003701 n

end

end A000667.P1453244540791517379

/-! ## A000667.P5982848272340814410

`A062272(n)+A062161(n)`
-/

namespace A000667.P5982848272340814410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n + A062161 n

end

end A000667.P5982848272340814410

/-! ## A000667.P9413415771509942285

`A230951(n)+A230950(n)`
-/

namespace A000667.P9413415771509942285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230951 n + A230950 n

end

end A000667.P9413415771509942285

/-! ## A000667.P12447417364020019724

`A000737(n)-A231179(n)`
-/

namespace A000667.P12447417364020019724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000737 n - A231179 n

end

end A000667.P12447417364020019724

/-! ## A000667.P2798315268187369085

`A000754(n)-A231200(n)`
-/

namespace A000667.P2798315268187369085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000754 n - A231200 n

end

end A000667.P2798315268187369085

/-! ## A000667.P13824010951807216619

`A230958(n)-A230950(n)`
-/

namespace A000667.P13824010951807216619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230958 n - A230950 n

end

end A000667.P13824010951807216619

/-!
# A000668: Mersenne primes (primes of the form 2^n - 1).

The programs for A000668, there is no canonical definition to state claims against.
-/

/-! ## A000668.P9167909968486260339

`4*A134709(n+1)+3`
-/

namespace A000668.P9167909968486260339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A134709 (n + 1) + 3

end

end A000668.P9167909968486260339

/-! ## A000668.P6462033334226261236

`2^A000043(n+1)-1`
-/

namespace A000668.P6462033334226261236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) : ℤ) - 1

end

end A000668.P6462033334226261236

/-! ## A000668.P8832822460832801682

`A000225(A000043(n+1))`
-/

namespace A000668.P8832822460832801682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000043 (n + 1)).toNat

end

end A000668.P8832822460832801682

/-! ## A000668.P12489131137125064100

`A001348(A016027(n+1))`
-/

namespace A000668.P12489131137125064100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (A016027 (n + 1)).toNat

end

end A000668.P12489131137125064100

/-! ## A000668.P13613818791745487956

`A343733(n+2)`
-/

namespace A000668.P13613818791745487956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2)

end

end A000668.P13613818791745487956

/-!
# A000669: Number of series-reduced planted trees with n leaves. Also the number of essentially series series-parallel networks with n edges; also the number of essentially parallel series-parallel networks with n edges.

The programs for A000669, there is no canonical definition to state claims against.
-/

/-! ## A000669.P12112670961843897826

`ceil(A000084(n+1)/2)`
-/

namespace A000669.P12112670961843897826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000084 (n + 1) : ℚ) / 2⌉

end

end A000669.P12112670961843897826

/-! ## A000669.P3803081279353101629

`A000084(A028310(n)+1)/2`
-/

namespace A000669.P3803081279353101629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (A028310 n + 1).toNat : ℚ) / 2

end

end A000669.P3803081279353101629

/-! ## A000669.P7718932590586383379

`A000084(A054977(n)+n)/2`
-/

namespace A000669.P7718932590586383379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (A054977 n + (n : ℤ)).toNat : ℚ) / 2

end

end A000669.P7718932590586383379

/-! ## A000669.P472775753101047367

`A000084(n+1)/A036453(n+1)`
-/

namespace A000669.P472775753101047367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A000669.P472775753101047367

/-! ## A000669.P4112946029670553400

`A000084(n+1)/(A057427(n)+1)`
-/

namespace A000669.P4112946029670553400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

end

end A000669.P4112946029670553400

/-! ## A000669.P342769161754860044

`A000084(n+1)/(A157532(n+1)-1)`
-/

namespace A000669.P342769161754860044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A157532 (n + 1) - 1 : ℚ)

end

end A000669.P342769161754860044

/-! ## A000669.P18037437119487096660

`A000084(n+1)/A000034(A004273(n))`
-/

namespace A000669.P18037437119487096660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A000034 (A004273 n).toNat : ℚ)

end

end A000669.P18037437119487096660

/-! ## A000669.P988066122792941158

`A000084(n+1)/A020639(A008458(n))`
-/

namespace A000669.P988066122792941158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A000669.P988066122792941158

/-! ## A000669.P9083981902800324779

`A000084(n+1)/A020639(A008574(n))`
-/

namespace A000669.P9083981902800324779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A000669.P9083981902800324779

/-! ## A000669.P4863935909993456461

`A000084(n+1)/A020639(A022144(n))`
-/

namespace A000669.P4863935909993456461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A020639 (A022144 n).toNat : ℚ)

end

end A000669.P4863935909993456461

/-! ## A000669.P8662577376065056227

`A000084(n+1)/A020639(A053799(n))`
-/

namespace A000669.P8662577376065056227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A020639 (A053799 n).toNat : ℚ)

end

end A000669.P8662577376065056227

/-! ## A000669.P1618284025887908085

`A058353(n+1)/A103517(n)`
-/

namespace A000669.P1618284025887908085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058353 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A000669.P1618284025887908085

/-! ## A000669.P12703570112626741540

`A000084(n+1)/A002260(A133263(n))`
-/

namespace A000669.P12703570112626741540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A002260 (A133263 n).toNat : ℚ)

end

end A000669.P12703570112626741540

/-! ## A000669.P14919418810783671809

`A106240(∑[n]+1)`
-/

namespace A000669.P14919418810783671809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000669.P14919418810783671809

/-!
# A000670: Fubini numbers: number of preferential arrangements of n labeled elements; or number of weak orders on n labeled elements; or number of ordered partitions of [n].

The programs for A000670, there is no canonical definition to state claims against.
-/

/-! ## A000670.P13675809299065095611

`A076726(n)/2`
-/

namespace A000670.P13675809299065095611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2

end

end A000670.P13675809299065095611

/-! ## A000670.P9059851809232368888

`A052882(n+1)/(n+1)`
-/

namespace A000670.P9059851809232368888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052882 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000670.P9059851809232368888

/-! ## A000670.P7712134389432983715

`A073146(∑[n])`
-/

namespace A000670.P7712134389432983715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000670.P7712134389432983715

/-! ## A000670.P7454541861154515661

`A122101(∑[n])`
-/

namespace A000670.P7454541861154515661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000670.P7454541861154515661

/-! ## A000670.P7450319726103609860

`A154921(∑[n])`
-/

namespace A000670.P7450319726103609860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000670.P7450319726103609860

/-! ## A000670.P481221290657183162

`A052875(n)+1`
-/

namespace A000670.P481221290657183162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + 1

end

end A000670.P481221290657183162

/-! ## A000670.P14532749819811203574

`A226513(∑[n]+n)`
-/

namespace A000670.P14532749819811203574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000670.P14532749819811203574

/-! ## A000670.P1649953256408000137

`A355666(∑[n]+n)`
-/

namespace A000670.P1649953256408000137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000670.P1649953256408000137

/-! ## A000670.P11910091866684118346

`2*A032109(n)-1`
-/

namespace A000670.P11910091866684118346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032109 n - 1

end

end A000670.P11910091866684118346

/-! ## A000670.P12080087076361454012

`A084416(∑[abs(1-n)])`
-/

namespace A000670.P12080087076361454012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000670.P12080087076361454012

/-!
# A000671: Number of boron trees with n nodes, i.e. n-node rooted trees with degree <= 3 at root and out-degree <= 2 elsewhere.

The programs for A000671, there is no canonical definition to state claims against.
-/

/-! ## A000671.P337116883030184478

`A001190(n)+A036657(n)+A036658(n)`
-/

namespace A000671.P337116883030184478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n + A036657 n + A036658 n

end

end A000671.P337116883030184478

/-! ## A000671.P7809745651330908843

`A036658(n)+A036656(n+1)`
-/

namespace A000671.P7809745651330908843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036658 n + A036656 (n + 1)

end

end A000671.P7809745651330908843

/-! ## A000671.P15120019850793563310

`A036658(n)+A001190(A326178(n))`
-/

namespace A000671.P15120019850793563310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036658 n + A001190 (A326178 n).toNat

end

end A000671.P15120019850793563310

/-! ## A000671.P5908099572777263726

`A036658(n)+A001190(n+1)%A003214(n+1)`
-/

namespace A000671.P5908099572777263726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036658 n + Int.tmod (A001190 (n + 1)) (A003214 (n + 1))

end

end A000671.P5908099572777263726

/-! ## A000671.P17987384930760599868

`A036658(n)+A001190((n+1)%A006961(n+1))`
-/

namespace A000671.P17987384930760599868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036658 n + A001190 (Int.tmod (n + 1 : ℤ) (A006961 (n + 1))).toNat

end

end A000671.P17987384930760599868

/-!
# A000672: Number of 3-valent trees (= boron trees or binary trees) with n nodes.

The programs for A000672, there is no canonical definition to state claims against.
-/

/-! ## A000672.P8338641213129902462

`A000673(n)+A000675(n)`
-/

namespace A000672.P8338641213129902462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000673 n + A000675 n

end

end A000672.P8338641213129902462

/-! ## A000672.P9110494420034633994

`A052120(2*(n+1))`
-/

namespace A000672.P9110494420034633994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (2 * (n + 1))

end

end A000672.P9110494420034633994

/-! ## A000672.P6073653063207977509

`or(char[1], A052120(A005843(n+1)))`
-/

namespace A000672.P6073653063207977509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A052120 (A005843 (n + 1)).toNat)

end

end A000672.P6073653063207977509

/-! ## A000672.P1840431030728598097

`lcm(A033999(n), A052120(A005843(n+1)))`
-/

namespace A000672.P1840431030728598097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A052120 (A005843 (n + 1)).toNat)

end

end A000672.P1840431030728598097

/-! ## A000672.P11173093673874401716

`A052120(A005843(n+1))/gcd(2, A016813(n))`
-/

namespace A000672.P11173093673874401716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A016813 n) : ℚ)

end

end A000672.P11173093673874401716

/-! ## A000672.P9838996767336568882

`A052120(A005843(n+1))/A033999(n+1)²`
-/

namespace A000672.P9838996767336568882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A000672.P9838996767336568882

/-! ## A000672.P14870058590098267080

`A052120(A005843(n+1))+char[A043471(n+1)]`
-/

namespace A000672.P14870058590098267080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043471 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (A005843 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000672.P14870058590098267080

/-! ## A000672.P4429732854238733014

`A052120(A005843(n+1))+char[A098976(n+1)]`
-/

namespace A000672.P4429732854238733014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (A005843 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000672.P4429732854238733014

/-! ## A000672.P5194815888858179741

`A052120(A005843(n+1))+char[A158364(n+1)]`
-/

namespace A000672.P5194815888858179741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (A005843 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000672.P5194815888858179741

/-! ## A000672.P8424346199350483319

`A052120(A005843(n+1))/gcd(3, A000002(n+2))`
-/

namespace A000672.P8424346199350483319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (Int.gcd 3 (A000002 (n + 2)) : ℚ)

end

end A000672.P8424346199350483319

/-! ## A000672.P11657687267738777612

`A052120(A005843(n+1))/(A000027(n+1)-n)`
-/

namespace A000672.P11657687267738777612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A000672.P11657687267738777612

/-! ## A000672.P15115122559889520287

`A052120(A005843(n+1))/A001222(A005384(n+1))`
-/

namespace A000672.P15115122559889520287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A001222 (A005384 (n + 1)).toNat : ℚ)

end

end A000672.P15115122559889520287

/-! ## A000672.P6610361686345144502

`A052120(A005843(n+1))/A001222(A007491(n+2))`
-/

namespace A000672.P6610361686345144502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A001222 (A007491 (n + 2)).toNat : ℚ)

end

end A000672.P6610361686345144502

/-! ## A000672.P8617882830751043638

`A052120(A005843(n+1))/A008683(A030059(n+1))²`
-/

namespace A000672.P8617882830751043638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A008683 (A030059 (n + 1)).toNat ^ 2 : ℚ)

end

end A000672.P8617882830751043638

/-! ## A000672.P3772841167037551829

`A052120(A005843(n+1))/A007318(∑[n])`
-/

namespace A000672.P3772841167037551829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A000672.P3772841167037551829

/-! ## A000672.P14098236251876103470

`A052120(A005843(n+1))^A002262(∑[n]+1)`
-/

namespace A000672.P14098236251876103470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) ^ (A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A000672.P14098236251876103470

/-! ## A000672.P10218104358667253626

`A052120(A016813(n+1))+A052120(A005843(n+1))`
-/

namespace A000672.P10218104358667253626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (A016813 (n + 1)).toNat + A052120 (A005843 (n + 1)).toNat

end

end A000672.P10218104358667253626

/-! ## A000672.P958042097829960462

`A052120(A005843(n+1))/A001222(A059496(n+1))`
-/

namespace A000672.P958042097829960462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A001222 (A059496 (n + 1)).toNat : ℚ)

end

end A000672.P958042097829960462

/-! ## A000672.P2905460589611705142

`A052120(A103517(n))/A014963(A044377(n+1))`
-/

namespace A000672.P2905460589611705142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A103517 n).toNat : ℚ) / (A014963 (A044377 (n + 1)).toNat : ℚ)

end

end A000672.P2905460589611705142

/-!
# A000673: Number of bicentered 3-valent (or boron, or binary) trees with n nodes.

The programs for A000673, there is no canonical definition to state claims against.
-/

/-! ## A000673.P14722400201171968059

`A000672(n)-A000675(n)`
-/

namespace A000673.P14722400201171968059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n - A000675 n

end

end A000673.P14722400201171968059

/-! ## A000673.P2257675229544428567

`A052120(2*(n+1))-A000675(n)`
-/

namespace A000673.P2257675229544428567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (2 * (n + 1)) - A000675 n

end

end A000673.P2257675229544428567

/-! ## A000673.P6328552395621313564

`A000672(n)+A000675(n)*A057428(A085099(n+1))`
-/

namespace A000673.P6328552395621313564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n + A000675 n * A057428 (A085099 (n + 1)).toNat

end

end A000673.P6328552395621313564

/-! ## A000673.P8283482818008199826

`A052120(A005843(n+1))/A033999(n+1)²-A000675(n)`
-/

namespace A000673.P8283482818008199826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A033999 (n + 1) ^ 2 : ℚ) - (A000675 n : ℚ)

end

end A000673.P8283482818008199826

/-! ## A000673.P7633814439264364316

`A052120(A005843(n+1))/(A000027(n+1)-n)-A000675(n)`
-/

namespace A000673.P7633814439264364316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ) - (A000675 n : ℚ)

end

end A000673.P7633814439264364316

/-!
# A000674: Boustrophedon transform of 1, 2, 2, 2, 2, ...

The programs for A000674, there is no canonical definition to state claims against.
-/

/-! ## A000674.P10630974729029693062

`2*A000667(n)-A000111(n)`
-/

namespace A000674.P10630974729029693062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000667 n - A000111 n

end

end A000674.P10630974729029693062

/-! ## A000674.P8638679869039017635

`A230951(n)+A230958(n)-A000111(n)`
-/

namespace A000674.P8638679869039017635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230951 n + (A230958 n - A000111 n)

end

end A000674.P8638679869039017635

/-! ## A000674.P12898734745759901538

`A000667(n)-(A109449(∑[n])-A000667(n))`
-/

namespace A000674.P12898734745759901538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - (A109449 (∑ j ∈ Finset.range (n + 1), f1 j) - A000667 n)

end

end A000674.P12898734745759901538

/-! ## A000674.P756608116393236338

`A000667(n)-(A008282(∑[n]+1)-A000667(n))`
-/

namespace A000674.P756608116393236338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - (A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000667 n)

end

end A000674.P756608116393236338

/-! ## A000674.P2794701847482387159

`A000667(n)-(A181937(∑[n]+n)-A000667(n))`
-/

namespace A000674.P2794701847482387159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - (A181937 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A000667 n)

end

end A000674.P2794701847482387159

/-! ## A000674.P5141240303307986618

`A000667(n)-(lcm(2, A001250(n))/2-A000667(n))`
-/

namespace A000674.P5141240303307986618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000667 n : ℚ) - ((Int.lcm 2 (A001250 n) : ℚ) / 2 - (A000667 n : ℚ))

end

end A000674.P5141240303307986618

/-!
# A000675: Number of centered 3-valent (or boron, or binary) trees with n nodes.

The programs for A000675, there is no canonical definition to state claims against.
-/

/-! ## A000675.P2496123665282964474

`A000672(n)-A000673(n)`
-/

namespace A000675.P2496123665282964474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n - A000673 n

end

end A000675.P2496123665282964474

/-! ## A000675.P1055471169701669968

`A052120(2*(n+1))-A000673(n)`
-/

namespace A000675.P1055471169701669968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (2 * (n + 1)) - A000673 n

end

end A000675.P1055471169701669968

/-! ## A000675.P2482780967478251394

`A000672(n)+A000673(n)*A033999(2*n+1)`
-/

namespace A000675.P2482780967478251394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n + A000673 n * A033999 (2 * n + 1)

end

end A000675.P2482780967478251394

/-! ## A000675.P5416317607193656298

`A000672(n)+A000673(n)*A008683(A007918(n))`
-/

namespace A000675.P5416317607193656298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n + A000673 n * A008683 (A007918 n).toNat

end

end A000675.P5416317607193656298

/-! ## A000675.P2159087812637264943

`A052120(A005843(n+1))/(A000027(n+1)-n)-A000673(n)`
-/

namespace A000675.P2159087812637264943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052120 (A005843 (n + 1)).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ) - (A000673 n : ℚ)

end

end A000675.P2159087812637264943

/-!
# A000676: Number of centered trees with n nodes.

The programs for A000676, there is no canonical definition to state claims against.
-/

/-! ## A000676.P5741721790259437270

`A100584(n)+A000677(n)`
-/

namespace A000676.P5741721790259437270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100584 n + A000677 n

end

end A000676.P5741721790259437270

/-! ## A000676.P15175907825403599961

`A000055(n)-A000677(n)`
-/

namespace A000676.P15175907825403599961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A000677 n

end

end A000676.P15175907825403599961

/-! ## A000676.P12906925279951962946

`A095133(∑[abs(1-n)])-A000677(n)`
-/

namespace A000676.P12906925279951962946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000677 n

end

end A000676.P12906925279951962946

/-! ## A000676.P14109363090742556303

`A106237(∑[abs(1-n)])-A000677(n)`
-/

namespace A000676.P14109363090742556303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000677 n

end

end A000676.P14109363090742556303

/-! ## A000676.P4854441349737606420

`A136605(abs((n+2)*(1-n))/2+1)-A000677(n)`
-/

namespace A000676.P4854441349737606420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (SequenceMachineLib.roundAway ((|(n + 2 : ℤ) * (1 - (n : ℤ))| : ℚ) / 2 + 1)).toNat - A000677 n

end

end A000676.P4854441349737606420

/-! ## A000676.P9951783888016288280

`A105821(A133263(n))-A000677(n)`
-/

namespace A000676.P9951783888016288280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat - A000677 n

end

end A000676.P9951783888016288280

/-! ## A000676.P8072985422041680336

`sqrt(A001256(n))-A000677(n)`
-/

namespace A000676.P8072985422041680336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ) - (A000677 n : ℝ)

end

end A000676.P8072985422041680336

/-!
# A000677: Number of bicentered trees with n nodes.

The programs for A000677, there is no canonical definition to state claims against.
-/

/-! ## A000677.P15354723715760441859

`A000055(n)-A000676(n)`
-/

namespace A000677.P15354723715760441859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A000676 n

end

end A000677.P15354723715760441859

/-! ## A000677.P5961750754708477414

`A000676(n)-A100584(n)`
-/

namespace A000677.P5961750754708477414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 n - A100584 n

end

end A000677.P5961750754708477414

/-! ## A000677.P5585181170206058439

`A095133(C(n, 2)+1)-A000676(n)`
-/

namespace A000677.P5585181170206058439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (Nat.choose n 2 + 1) - A000676 n

end

end A000677.P5585181170206058439

/-! ## A000677.P10287539916122852038

`A095133(∑[abs(1-n)])-A000676(n)`
-/

namespace A000677.P10287539916122852038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000676 n

end

end A000677.P10287539916122852038

/-! ## A000677.P12584165961240697486

`A106237(∑[abs(1-n)])-A000676(n)`
-/

namespace A000677.P12584165961240697486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000676 n

end

end A000677.P12584165961240697486

/-! ## A000677.P4571454313527738829

`A136605(abs((n+2)*(1-n))/2+1)-A000676(n)`
-/

namespace A000677.P4571454313527738829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (SequenceMachineLib.roundAway ((|(n + 2 : ℤ) * (1 - (n : ℤ))| : ℚ) / 2 + 1)).toNat - A000676 n

end

end A000677.P4571454313527738829

/-! ## A000677.P7813784810254957864

`A105821(A133263(n))-A000676(n)`
-/

namespace A000677.P7813784810254957864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat - A000676 n

end

end A000677.P7813784810254957864

/-! ## A000677.P17115302209004331564

`A105821(A179865(n+1)+2)-A000676(n)`
-/

namespace A000677.P17115302209004331564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A179865 (n + 1) + 2).toNat - A000676 n

end

end A000677.P17115302209004331564

/-! ## A000677.P3847268001004023062

`sqrt(A001256(n))-A000676(n)`
-/

namespace A000677.P3847268001004023062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ) - (A000676 n : ℝ)

end

end A000677.P3847268001004023062

/-!
# A000678: Number of carbon (rooted) trees with n carbon atoms = unordered 4-tuples of ternary trees.

The programs for A000678, there is no canonical definition to state claims against.
-/

/-! ## A000678.P958275819901328724

`A000598(n)+A036669(n)-A000007(n)`
-/

namespace A000678.P958275819901328724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n + (A036669 n - A000007 n)

end

end A000678.P958275819901328724

/-! ## A000678.P11304209457334142877

`A036669(n)+A000598(n)*A057427(n)`
-/

namespace A000678.P11304209457334142877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036669 n + A000598 n * A057427 n

end

end A000678.P11304209457334142877

/-! ## A000678.P659347043088436412

`A036669(n)-A000598(n)*A057428(n)`
-/

namespace A000678.P659347043088436412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036669 n - A000598 n * A057428 n

end

end A000678.P659347043088436412

/-! ## A000678.P2798570474879751678

`(A036669(n)+A000598(n))%A036996(n)`
-/

namespace A000678.P2798570474879751678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036669 n + A000598 n) (A036996 n)

end

end A000678.P2798570474879751678

/-! ## A000678.P14942379926785682348

`A036669(n)+A000598(n)%A004054(n)`
-/

namespace A000678.P14942379926785682348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036669 n + Int.tmod (A000598 n) (A004054 n)

end

end A000678.P14942379926785682348

/-!
# A000679: Number of groups of order 2^n.

The programs for A000679, there is no canonical definition to state claims against.
-/

/-! ## A000679.P17902431127479384501

`A000001(2^n)`
-/

namespace A000679.P17902431127479384501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (2 ^ n)

end

end A000679.P17902431127479384501

/-! ## A000679.P2919984687204196442

`A319171(∑[n])`
-/

namespace A000679.P2919984687204196442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000679.P2919984687204196442

/-! ## A000679.P4500011665385603439

`A066060(2^n)`
-/

namespace A000679.P4500011665385603439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (2 ^ n)

end

end A000679.P4500011665385603439

/-! ## A000679.P9235453213743713914

`sqrt(A297420(2^n))`
-/

namespace A000679.P9235453213743713914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (2 ^ n) : ℝ)

end

end A000679.P9235453213743713914

/-! ## A000679.P5019340232983593547

`A098885(A024622(n))`
-/

namespace A000679.P5019340232983593547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (A024622 n).toNat

end

end A000679.P5019340232983593547

/-!
# A000680: a(n) = (2n)!/2^n.

The programs for A000680, the canonical program `A000680.P15809450990320406680` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000680 has offset 0).

The definition of A000680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000680.P15809450990320406680

`C(2*n, 2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000680

/-- `C(2*n, 2)*a(n-1)` -/
def P15809450990320406680.Spec : Prop :=
  ∀ n, (P15809450990320406680.a n : ℤ) = A000680 n

theorem P15809450990320406680.correct : P15809450990320406680.Spec := by
  intro n
  simp only [A000680]

end A000680

/-! ## A000680.P7634219510007611219

`a(n-1)*(2*n-1)*n` with `a(0)=1`
-/

namespace A000680.P7634219510007611219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((2 * n : ℤ) - 1) * (n : ℤ)

end

end A000680.P7634219510007611219

namespace A000680

/-- `a(n-1)*(2*n-1)*n` -/
def P7634219510007611219.Spec : Prop :=
  ∀ n, P7634219510007611219.a n = A000680 n

end A000680

/-! ## A000680.P4998567719598303377

`A000142(n)/A000079(n)*A001813(n)`
-/

namespace A000680.P4998567719598303377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A001813 n : ℚ)

end

end A000680.P4998567719598303377

namespace A000680

/-- `A000142(n)/A000079(n)*A001813(n)` -/
def P4998567719598303377.Spec : Prop :=
  ∀ n, P4998567719598303377.a n = (A000680 n : ℚ)

end A000680

/-! ## A000680.P9196537637183268140

`(2*n)!/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000680.P9196537637183268140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A000680.P9196537637183268140

namespace A000680

/-- `(2*n)!/2^n` -/
def P9196537637183268140.Spec : Prop :=
  ∀ n, P9196537637183268140.a n = (A000680 n : ℚ)

end A000680

/-! ## A000680.P15539604428140441620

`∏[C(2*n, 2%(n+1))]`
-/

namespace A000680.P15539604428140441620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000680.P15539604428140441620

namespace A000680

/-- `∏[C(2*n, 2%(n+1))]` -/
def P15539604428140441620.Spec : Prop :=
  ∀ n, (P15539604428140441620.a n : ℤ) = A000680 n

end A000680

/-!
# A000681: Number of n X n matrices with nonnegative entries and every row and column sum 2.

The programs for A000681, the canonical program `A000681.P17461210728371993315` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000681 has offset 0).

The definition of A000681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000681.P17461210728371993315

`n²*a(n-1)-1/2*n*(n-1)²*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000681

/-- `n²*a(n-1)-1/2*n*(n-1)²*a(n-2)` -/
def P17461210728371993315.Spec : Prop :=
  ∀ n, P17461210728371993315.a n = (A000681 n : ℚ)

end A000681

/-! ## A000681.P11768037821452708510

`A257493(∑[n+3])`
-/

namespace A000681.P11768037821452708510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000681.P11768037821452708510

namespace A000681

/-- `A257493(∑[n+3])` -/
def P11768037821452708510.Spec : Prop :=
  ∀ n, P11768037821452708510.a n = A000681 n

end A000681

/-! ## A000681.P5339201826394418363

`A257493(A141214(n))^A178334(n)`
-/

namespace A000681.P5339201826394418363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257493 (A141214 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A000681.P5339201826394418363

namespace A000681

/-- `A257493(A141214(n))^A178334(n)` -/
def P5339201826394418363.Spec : Prop :=
  ∀ n, P5339201826394418363.a n = (A000681 n : ℚ)

end A000681

/-! ## A000681.P12567393128990636497

`lcm(A020985(n), A257493(A141214(n)))`
-/

namespace A000681.P12567393128990636497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A257493 (A141214 n).toNat)

end

end A000681.P12567393128990636497

namespace A000681

/-- `lcm(A020985(n), A257493(A141214(n)))` -/
def P12567393128990636497.Spec : Prop :=
  ∀ n, (P12567393128990636497.a n : ℤ) = A000681 n

end A000681

/-! ## A000681.P16470458244813810170

`or(A063524(n), A257493(A141214(n)))`
-/

namespace A000681.P16470458244813810170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A257493 (A141214 n).toNat)

end

end A000681.P16470458244813810170

namespace A000681

/-- `or(A063524(n), A257493(A141214(n)))` -/
def P16470458244813810170.Spec : Prop :=
  ∀ n, P16470458244813810170.a n = A000681 n

end A000681

/-!
# A000682: Semi-meanders: number of ways a semi-infinite directed curve can cross a straight line n times.

The programs for A000682, there is no canonical definition to state claims against.
-/

/-! ## A000682.P9704186637008532648

`A000136(n+1)/(n+1)`
-/

namespace A000682.P9704186637008532648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000682.P9704186637008532648

/-! ## A000682.P6837942152598864261

`A000007(n)+Δ[A330269(n+1)]`
-/

namespace A000682.P6837942152598864261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A000682.P6837942152598864261

/-! ## A000682.P6887070675087451206

`Δ[A330269(n+1)-A054977(n)]`
-/

namespace A000682.P6887070675087451206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330269 (n + 1) - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000682.P6887070675087451206

/-! ## A000682.P2007093261492001079

`Δ[A330269(n+1)%A026012(n)]`
-/

namespace A000682.P2007093261492001079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330269 (n + 1)) (A026012 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000682.P2007093261492001079

/-!
# A000683: Number of colorings of labeled graphs on n nodes using exactly 2 colors, divided by 4.

The programs for A000683, there is no canonical definition to state claims against.
-/

/-! ## A000683.P17305057492437829595

`A058872(n+1)/2`
-/

namespace A000683.P17305057492437829595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058872 (n + 1) : ℚ) / 2

end

end A000683.P17305057492437829595

/-! ## A000683.P11289009897506240200

`A213441(n+1)/4`
-/

namespace A000683.P11289009897506240200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213441 (n + 1) : ℚ) / 4

end

end A000683.P11289009897506240200

/-! ## A000683.P18196649572391685467

`floor(A000684(n+1)/2)`
-/

namespace A000683.P18196649572391685467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000684 (n + 1) : ℚ) / 2⌋

end

end A000683.P18196649572391685467

/-! ## A000683.P11055683551635333915

`floor(A047863(n+1)/4)`
-/

namespace A000683.P11055683551635333915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047863 (n + 1) : ℚ) / 4⌋

end

end A000683.P11055683551635333915

/-! ## A000683.P13179589654483238178

`xor(1, A000684(A130446(n+1)))/2`
-/

namespace A000683.P13179589654483238178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A000684 (A130446 (n + 1)).toNat) : ℚ) / 2

end

end A000683.P13179589654483238178

/-!
# A000684: Number of colored labeled n-node graphs with 2 interchangeable colors.

The programs for A000684, there is no canonical definition to state claims against.
-/

/-! ## A000684.P8609538154235301887

`A058872(n+1)+1`
-/

namespace A000684.P8609538154235301887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058872 (n + 1) + 1

end

end A000684.P8609538154235301887

/-! ## A000684.P15886297840456573795

`A047863(n+1)/2`
-/

namespace A000684.P15886297840456573795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047863 (n + 1) : ℚ) / 2

end

end A000684.P15886297840456573795

/-! ## A000684.P15599507312674270454

`Δ[∑[A047863(n)]/2]`
-/

namespace A000684.P15599507312674270454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000684.P15599507312674270454

/-! ## A000684.P17796720964880862561

`2*A000683(n+1)+1`
-/

namespace A000684.P17796720964880862561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000683 (n + 1) + 1

end

end A000684.P17796720964880862561

/-! ## A000684.P2250533308347656869

`A213441(n+1)/2+1`
-/

namespace A000684.P2250533308347656869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213441 (n + 1) : ℚ) / 2 + 1

end

end A000684.P2250533308347656869

/-!
# A000685: Number of 3-colored labeled graphs on n nodes, divided by 3.

The programs for A000685, there is no canonical definition to state claims against.
-/

/-! ## A000685.P11202949326319641245

`1/3*A191371(n+1)`
-/

namespace A000685.P11202949326319641245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A191371 (n + 1) : ℚ)

end

end A000685.P11202949326319641245

/-! ## A000685.P10989204914498001312

`A191371(n+1)/3`
-/

namespace A000685.P10989204914498001312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191371 (n + 1) : ℚ) / 3

end

end A000685.P10989204914498001312

/-! ## A000685.P6005737184970897772

`Δ[∑[A191371(n)]/3]`
-/

namespace A000685.P6005737184970897772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191371 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000685.P6005737184970897772

/-! ## A000685.P617639534134014848

`record[ratio[A191371(A193592(n))]]`
-/

namespace A000685.P617639534134014848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191371 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000685.P617639534134014848

/-! ## A000685.P6649413013396694177

`A322280(A046691(n+3))/3`
-/

namespace A000685.P6649413013396694177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322280 (A046691 (n + 3)).toNat : ℚ) / 3

end

end A000685.P6649413013396694177

/-!
# A000686: Number of 4-colored labeled graphs on n nodes, divided by 4.

The programs for A000686, there is no canonical definition to state claims against.
-/

/-! ## A000686.P15952078651813055516

`1/4*A223887(n+1)`
-/

namespace A000686.P15952078651813055516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A223887 (n + 1) : ℚ)

end

end A000686.P15952078651813055516

/-! ## A000686.P8027712980515909540

`A223887(n+1)/4`
-/

namespace A000686.P8027712980515909540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223887 (n + 1) : ℚ) / 4

end

end A000686.P8027712980515909540

/-! ## A000686.P3129279424758505353

`Δ[∑[A223887(n)]/4]`
-/

namespace A000686.P3129279424758505353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223887 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000686.P3129279424758505353

/-! ## A000686.P17761540185044053216

`record[ratio[A223887(A193592(n))]]`
-/

namespace A000686.P17761540185044053216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223887 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000686.P17761540185044053216

/-! ## A000686.P8354381413106170777

`record[A223887(A008611(n))/4]`
-/

namespace A000686.P8354381413106170777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223887 (A008611 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000686.P8354381413106170777

/-!
# A000687: Boustrophedon transform (first version) of Fibonacci numbers 0,1,1,2,3,5,...

The programs for A000687, there is no canonical definition to state claims against.
-/

/-! ## A000687.P9476815778149349454

`A000744(n)-A000738(n)`
-/

namespace A000687.P9476815778149349454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000744 n - A000738 n

end

end A000687.P9476815778149349454

/-! ## A000687.P16327937843477797052

`2*A000744(n)-A092090(n)`
-/

namespace A000687.P16327937843477797052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000744 n - A092090 n

end

end A000687.P16327937843477797052

/-! ## A000687.P12950618156088893698

`A092090(n)-2*A000738(n)`
-/

namespace A000687.P12950618156088893698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092090 n - 2 * A000738 n

end

end A000687.P12950618156088893698

/-! ## A000687.P5628763474585173152

`A000111(n)+A000744(n)-A092073(n)`
-/

namespace A000687.P5628763474585173152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000744 n - A092073 n)

end

end A000687.P5628763474585173152

/-! ## A000687.P15352429677968915697

`A000744(n)+abs(A346838(n))-A092073(n)`
-/

namespace A000687.P15352429677968915697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000744 n + (|A346838 n| - A092073 n)

end

end A000687.P15352429677968915697

/-!
# A000688: Number of Abelian groups of order n; number of factorizations of n into prime powers.

The programs for A000688, there is no canonical definition to state claims against.
-/

/-! ## A000688.P12099610417306733230

`A050360(A101296(n+1))`
-/

namespace A000688.P12099610417306733230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A101296 (n + 1)).toNat

end

end A000688.P12099610417306733230

/-! ## A000688.P3717032682714214548

`A000001(n+1)-A060689(n+1)`
-/

namespace A000688.P3717032682714214548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A060689 (n + 1)

end

end A000688.P3717032682714214548

/-! ## A000688.P10019651450251256798

`∑{d}[n+1, A188585(#)]`
-/

namespace A000688.P10019651450251256798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188585 d

end

end A000688.P10019651450251256798

/-! ## A000688.P5976951036475445170

`∏{e}[n+1, A000041(#)]`
-/

namespace A000688.P5976951036475445170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A000688.P5976951036475445170

/-! ## A000688.P13659784192679882010

`∏{e}[n+1, A213598(#)]`
-/

namespace A000688.P13659784192679882010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A213598 (Nat.factorization (f1 n) p)

end

end A000688.P13659784192679882010

/-! ## A000688.P15557381925587014100

`∏{e}[n+1, A242699(#)]`
-/

namespace A000688.P15557381925587014100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64)

end

end A000688.P15557381925587014100

/-! ## A000688.P4669740971377699322

`∏{e}[n+1, A330642(#)]`
-/

namespace A000688.P4669740971377699322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A330642 (Nat.factorization (f1 n) p)

end

end A000688.P4669740971377699322

/-! ## A000688.P16874034786085854288

`∏{e}[n+1, A332746(#)]`
-/

namespace A000688.P16874034786085854288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p)

end

end A000688.P16874034786085854288

/-! ## A000688.P16371960213289973065

`∏{p}[n+1, A000041(val(n+1, #))]`
-/

namespace A000688.P16371960213289973065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (SequenceMachineLib.valuation (n + 1) p)

end

end A000688.P16371960213289973065

/-! ## A000688.P14170444582896199258

`A101872(A026741(n+1))`
-/

namespace A000688.P14170444582896199258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A026741 (n + 1)).toNat

end

end A000688.P14170444582896199258

/-! ## A000688.P12632369463734736562

`A394390(n+1)+A380578(n+1)`
-/

namespace A000688.P12632369463734736562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394390 (n + 1) + A380578 (n + 1)

end

end A000688.P12632369463734736562

/-! ## A000688.P9125691599639139913

`A104404(n+1)-A104488(n+1)`
-/

namespace A000688.P9125691599639139913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - A104488 (n + 1)

end

end A000688.P9125691599639139913

/-! ## A000688.P16701540173562659982

`A101113(n+1)/A034444(n+1)`
-/

namespace A000688.P16701540173562659982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101113 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A000688.P16701540173562659982

/-! ## A000688.P16677983739052581222

`∑{d}[n+1, A008683(#)*A188581((n+1)/#)]`
-/

namespace A000688.P16677983739052581222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A188581 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000688.P16677983739052581222

/-! ## A000688.P1849829369265447163

`∑{d}[n+1, A129667(#)*A328705((n+1)/#)]`
-/

namespace A000688.P1849829369265447163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129667 d * A328705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000688.P1849829369265447163

/-! ## A000688.P8787946119539632880

`A066295(n+1)+A060689(n+1)`
-/

namespace A000688.P8787946119539632880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066295 (n + 1) + A060689 (n + 1)

end

end A000688.P8787946119539632880

/-! ## A000688.P13652030293260396563

`A066060(n+1)-A088806(n+1)`
-/

namespace A000688.P13652030293260396563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A088806 (n + 1)

end

end A000688.P13652030293260396563

/-! ## A000688.P14365262308927418775

`A238877(Δ[n²])`
-/

namespace A000688.P14365262308927418775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000688.P14365262308927418775

/-! ## A000688.P17430061707184696770

`A238877(A005408(n))+A104488(A005408(n))`
-/

namespace A000688.P17430061707184696770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A005408 n).toNat + A104488 (A005408 n).toNat

end

end A000688.P17430061707184696770

/-! ## A000688.P17647175009254757743

`A238877(A267872(n))+A104488(A267872(n))`
-/

namespace A000688.P17647175009254757743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A267872 n).toNat + A104488 (A267872 n).toNat

end

end A000688.P17647175009254757743

/-!
# A000689: Final decimal digit of 2^n.

The programs for A000689, the canonical program `A000689.P10932779453872349852` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000689 has offset 0).

The definition of A000689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000689.P10932779453872349852

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000689

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P10932779453872349852.Spec : Prop :=
  ∀ n, P10932779453872349852.a n = A000689 n

theorem P10932779453872349852.correct : P10932779453872349852.Spec := by
  intro n
  simp only [A000689]

end A000689

/-!
# A000690: Landau's approximation to population of x^2 + y^2 <= 2^n.

The programs for A000690, there is no canonical definition to state claims against.
-/

/-! ## A000690.P15219395133473902288

`A055086(A148364(n)+n)`
-/

namespace A000690.P15219395133473902288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148364 n + (n : ℤ)).toNat

end

end A000690.P15219395133473902288

/-! ## A000690.P767053328306677965

`A055086(A172405(n)+n)`
-/

namespace A000690.P767053328306677965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A172405 n + (n : ℤ)).toNat

end

end A000690.P767053328306677965

/-! ## A000690.P10696050919443592264

`A172471(A148804(n)+n)`
-/

namespace A000690.P10696050919443592264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A148804 n + (n : ℤ)).toNat

end

end A000690.P10696050919443592264

/-! ## A000690.P11495433223943183555

`A336009(n)+A172471(A122877(n))`
-/

namespace A000690.P11495433223943183555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336009 n + A172471 (A122877 n).toNat

end

end A000690.P11495433223943183555

/-! ## A000690.P14476956877655355589

`A000267(A172405(n)-A233139(n))`
-/

namespace A000690.P14476956877655355589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A172405 n - A233139 n).toNat

end

end A000690.P14476956877655355589

/-!
# A000691: Ramanujan's approximation to population of x^2 + y^2 <= 2^n.

The programs for A000691, there is no canonical definition to state claims against.
-/

/-! ## A000691.P11444748924091936298

`A193832(A298269(n+1))`
-/

namespace A000691.P11444748924091936298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A298269 (n + 1)).toNat

end

end A000691.P11444748924091936298

/-! ## A000691.P10127439942778233786

`A070115(A309862(n))+A029907(n)`
-/

namespace A000691.P10127439942778233786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (A309862 n).toNat + A029907 n

end

end A000691.P10127439942778233786

/-! ## A000691.P13101943807576218861

`A000267(A330058(n))-A093390(n)`
-/

namespace A000691.P13101943807576218861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A330058 n).toNat - A093390 n

end

end A000691.P13101943807576218861

/-! ## A000691.P6408861135534417775

`A172471(A000935(n+1)+A000085(n+1))`
-/

namespace A000691.P6408861135534417775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000935 (n + 1) + A000085 (n + 1)).toNat

end

end A000691.P6408861135534417775

/-! ## A000691.P6889719865737799654

`A003059(A063727(n))`
-/

namespace A000691.P6889719865737799654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A063727 n).toNat

end

end A000691.P6889719865737799654

/-!
# A000692: An approximation to population of x^2 + y^2 <= 2^n.

The programs for A000692, there is no canonical definition to state claims against.
-/

/-! ## A000692.P12031656828150986012

`A131909(∑[n+3]-2)+∑{e}[n+1, #]`
-/

namespace A000692.P12031656828150986012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131909 (∑ j ∈ Finset.range (n + 1), f1 j - 2) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A000692.P12031656828150986012

/-! ## A000692.P5564266921784308530

`A226143(A000267(n)+∑[A075496(n+1)])`
-/

namespace A000692.P5564266921784308530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A000267 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000692.P5564266921784308530

/-! ## A000692.P7303456639362820391

`A226143(A080513(n)+∑[A075496(n+1)])`
-/

namespace A000692.P7303456639362820391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A080513 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000692.P7303456639362820391

/-! ## A000692.P12085185178913789277

`A226143(A106737(n)+∑[A075496(n+1)])`
-/

namespace A000692.P12085185178913789277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A106737 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000692.P12085185178913789277

/-! ## A000692.P3315334099762413168

`A226143(A002024(n+1)+∑[A075496(n+1)])`
-/

namespace A000692.P3315334099762413168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A002024 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000692.P3315334099762413168

/-!
# A000693: Related to population of numbers of form x^2 + y^2.

The programs for A000693, there is no canonical definition to state claims against.
-/

/-! ## A000693.P11449279895789628165

`A000074(n+1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000693.P11449279895789628165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000074 (n + 1) + a (n - 2)

end

end A000693.P11449279895789628165

/-! ## A000693.P15386732722158296395

`A000050(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A000693.P15386732722158296395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000050 (n + 1) - a (n - 1)

end

end A000693.P15386732722158296395

/-! ## A000693.P10599268418151594392

`record[A000050(A025923(n))]-a(n-1)` with `a(0)=1`
-/

namespace A000693.P10599268418151594392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (A025923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A000693.P10599268418151594392

/-! ## A000693.P10158720352066716722

`A018076(n)-A347440(A018062(n))`
-/

namespace A000693.P10158720352066716722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018076 n - A347440 (A018062 n).toNat

end

end A000693.P10158720352066716722

/-! ## A000693.P15218202171075556433

`A003986(A157162(3*n+2)+3)`
-/

namespace A000693.P15218202171075556433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A157162 (3 * n + 2) + 3).toNat

end

end A000693.P15218202171075556433

/-!
# A000694: Related to population of numbers of form x^2 + y^2.

The programs for A000694, there is no canonical definition to state claims against.
-/

/-! ## A000694.P7834586582489011655

`A023193(A003477(n)+1+n)`
-/

namespace A000694.P7834586582489011655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A003477 n + 1 + (n : ℤ)).toNat

end

end A000694.P7834586582489011655

/-! ## A000694.P14261087311495730752

`A001462(∑[A095341(n+1)]+1)`
-/

namespace A000694.P14261087311495730752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A000694.P14261087311495730752

/-! ## A000694.P4645531864737497289

`A001462(∑[(n+1)*A292556(n)])`
-/

namespace A000694.P4645531864737497289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000694.P4645531864737497289

/-! ## A000694.P450699591482638643

`A023193(A077168(n)+A003477(n))`
-/

namespace A000694.P450699591482638643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A077168 n + A003477 n).toNat

end

end A000694.P450699591482638643

/-! ## A000694.P12988682020026508868

`A001462(A329675(n)+A073357(n))`
-/

namespace A000694.P12988682020026508868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A329675 n + A073357 n).toNat

end

end A000694.P12988682020026508868

/-!
# A000695: Moser-de Bruijn sequence: sums of distinct powers of 4.

The programs for A000695, the canonical program `A000695.P14587171459336407380` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000695 has offset 0).

The definition of A000695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000695.P14587171459336407380

`(A145812(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000695

/-- `(A145812(n+1)-1)/2` -/
def P14587171459336407380.Spec : Prop :=
  ∀ n, P14587171459336407380.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P339923835280531070

`(2*∑[and(n, -n)²]+n)/3`
-/

namespace A000695.P339923835280531070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3

end

end A000695.P339923835280531070

namespace A000695

/-- `(2*∑[and(n, -n)²]+n)/3` -/
def P339923835280531070.Spec : Prop :=
  ∀ n, P339923835280531070.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P3179026016966146801

`4*∑[ceil(xor(n, -n)²/3)]/8`
-/

namespace A000695.P3179026016966146801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 8

end

end A000695.P3179026016966146801

namespace A000695

/-- `4*∑[ceil(xor(n, -n)²/3)]/8` -/
def P3179026016966146801.Spec : Prop :=
  ∀ n, P3179026016966146801.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P10218586902613141890

`a(and(n, n-1))+and(n, -n)²` with `a(0)=0`
-/

namespace A000695.P10218586902613141890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2

end

end A000695.P10218586902613141890

namespace A000695

/-- `a(and(n, n-1))+and(n, -n)²` -/
def P10218586902613141890.Spec : Prop :=
  ∀ n, P10218586902613141890.a n = A000695 n

end A000695

/-! ## A000695.P17842470068046906430

`A098871(n)-1`
-/

namespace A000695.P17842470068046906430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n - 1

end

end A000695.P17842470068046906430

namespace A000695

/-- `A098871(n)-1` -/
def P17842470068046906430.Spec : Prop :=
  ∀ n, P17842470068046906430.a n = A000695 n

end A000695

/-! ## A000695.P4369340836781094149

`A062880(n)/2`
-/

namespace A000695.P4369340836781094149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 n : ℚ) / 2

end

end A000695.P4369340836781094149

namespace A000695

/-- `A062880(n)/2` -/
def P4369340836781094149.Spec : Prop :=
  ∀ n, P4369340836781094149.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P6526223018129456751

`A001196(n)/3`
-/

namespace A000695.P6526223018129456751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n : ℚ) / 3

end

end A000695.P6526223018129456751

namespace A000695

/-- `A001196(n)/3` -/
def P6526223018129456751.Spec : Prop :=
  ∀ n, P6526223018129456751.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P13299631837209498849

`A127988(n)/8`
-/

namespace A000695.P13299631837209498849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127988 n : ℚ) / 8

end

end A000695.P13299631837209498849

namespace A000695

/-- `A127988(n)/8` -/
def P13299631837209498849.Spec : Prop :=
  ∀ n, P13299631837209498849.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P6705848300136963492

`(A147568(n)-3)/2`
-/

namespace A000695.P6705848300136963492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147568 n - 3 : ℚ) / 2

end

end A000695.P6705848300136963492

namespace A000695

/-- `(A147568(n)-3)/2` -/
def P6705848300136963492.Spec : Prop :=
  ∀ n, P6705848300136963492.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P4452992224824365509

`floor(A145812(n+1)/2)`
-/

namespace A000695.P4452992224824365509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145812 (n + 1) : ℚ) / 2⌋

end

end A000695.P4452992224824365509

namespace A000695

/-- `floor(A145812(n+1)/2)` -/
def P4452992224824365509.Spec : Prop :=
  ∀ n, P4452992224824365509.a n = A000695 n

end A000695

/-! ## A000695.P12503674886502949959

`∑{d}[A053644(n), and(n, #)²]`
-/

namespace A000695.P12503674886502949959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land n d ^ 2

end

end A000695.P12503674886502949959

namespace A000695

/-- `∑{d}[A053644(n), and(n, #)²]` -/
def P12503674886502949959.Spec : Prop :=
  ∀ n, (P12503674886502949959.a n : ℤ) = A000695 n

end A000695

/-! ## A000695.P12716185782994968649

`∑{d}[A062383(n), and(n, #)²]`
-/

namespace A000695.P12716185782994968649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land n d ^ 2

end

end A000695.P12716185782994968649

namespace A000695

/-- `∑{d}[A062383(n), and(n, #)²]` -/
def P12716185782994968649.Spec : Prop :=
  ∀ n, (P12716185782994968649.a n : ℤ) = A000695 n

end A000695

/-! ## A000695.P15026751516566777151

`(A145818(n+1)-1)/4`
-/

namespace A000695.P15026751516566777151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145818 (n + 1) - 1 : ℚ) / 4

end

end A000695.P15026751516566777151

namespace A000695

/-- `(A145818(n+1)-1)/4` -/
def P15026751516566777151.Spec : Prop :=
  ∀ n, P15026751516566777151.a n = (A000695 n : ℚ)

end A000695

/-! ## A000695.P14228533741876573882

`A001196(n)-A062880(n)`
-/

namespace A000695.P14228533741876573882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n - A062880 n

end

end A000695.P14228533741876573882

namespace A000695

/-- `A001196(n)-A062880(n)` -/
def P14228533741876573882.Spec : Prop :=
  ∀ n, P14228533741876573882.a n = A000695 n

end A000695

/-! ## A000695.P2139885095227168137

`and(A001196(n), A374625(n))`
-/

namespace A000695.P2139885095227168137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001196 n) (A374625 n)

end

end A000695.P2139885095227168137

namespace A000695

/-- `and(A001196(n), A374625(n))` -/
def P2139885095227168137.Spec : Prop :=
  ∀ n, P2139885095227168137.a n = A000695 n

end A000695

/-! ## A000695.P12552516793902253612

`and(A001196(n), A375156(n))`
-/

namespace A000695.P12552516793902253612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001196 n) (A375156 n)

end

end A000695.P12552516793902253612

namespace A000695

/-- `and(A001196(n), A375156(n))` -/
def P12552516793902253612.Spec : Prop :=
  ∀ n, P12552516793902253612.a n = A000695 n

end A000695

/-! ## A000695.P2493675502007847882

`xor(A010684(n), A098871(n))`
-/

namespace A000695.P2493675502007847882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A098871 n)

end

end A000695.P2493675502007847882

namespace A000695

/-- `xor(A010684(n), A098871(n))` -/
def P2493675502007847882.Spec : Prop :=
  ∀ n, P2493675502007847882.a n = A000695 n

end A000695

/-! ## A000695.P10713589394027372727

`A145812(n+1)%A098871(n)`
-/

namespace A000695.P10713589394027372727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145812 (n + 1)) (A098871 n)

end

end A000695.P10713589394027372727

namespace A000695

/-- `A145812(n+1)%A098871(n)` -/
def P10713589394027372727.Spec : Prop :=
  ∀ n, P10713589394027372727.a n = A000695 n

end A000695

/-! ## A000695.P9059935203279740508

`∪[A002450(n), A037409(n+1)]`
-/

namespace A000695.P9059935203279740508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000695.P9059935203279740508

namespace A000695

/-- `∪[A002450(n), A037409(n+1)]` -/
def P9059935203279740508.Spec : Prop :=
  ∀ n, (P9059935203279740508.a n : ℤ) = A000695 n

end A000695

/-! ## A000695.P16290726290712615711

`∪[A037409(n+1), A080610(n)]`
-/

namespace A000695.P16290726290712615711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080610 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000695.P16290726290712615711

namespace A000695

/-- `∪[A037409(n+1), A080610(n)]` -/
def P16290726290712615711.Spec : Prop :=
  ∀ n, (P16290726290712615711.a n : ℤ) = A000695 n

end A000695

/-!
# A000696: Numbers k such that (1,k) is "good".

The programs for A000696, there is no canonical definition to state claims against.
-/

/-! ## A000696.P12003933602903985131

`∑[A004151(A110738(n+1)!)]`
-/

namespace A000696.P12003933602903985131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (Nat.factorial (A110738 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000696.P12003933602903985131

/-! ## A000696.P8414945471515262639

`∪[A282414(2*n), A241985(A241988(n))]`
-/

namespace A000696.P8414945471515262639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282414 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241985 (A241988 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000696.P8414945471515262639

/-!
# A000697: Boustrophedon transform of 1, 1, 4, 9, 16, ...

The programs for A000697, there is no canonical definition to state claims against.
-/

/-! ## A000697.P7844141335509423882

`2*A000718(n)-A000660(n)`
-/

namespace A000697.P7844141335509423882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000718 n - A000660 n

end

end A000697.P7844141335509423882

/-! ## A000697.P12248244021971063131

`A000111(n)+A000745(n)-A000754(n)`
-/

namespace A000697.P12248244021971063131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000745 n - A000754 n)

end

end A000697.P12248244021971063131

/-! ## A000697.P16996123002045288125

`A000718(n)+A000746(n)-A000754(n)`
-/

namespace A000697.P16996123002045288125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000718 n + (A000746 n - A000754 n)

end

end A000697.P16996123002045288125

/-! ## A000697.P17030606746769116927

`2*A000746(n)-A000737(n)+A000111(n)-A000754(n)`
-/

namespace A000697.P17030606746769116927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000746 n - A000737 n + (A000111 n - A000754 n)

end

end A000697.P17030606746769116927

/-! ## A000697.P14039256993867482465

`2*A000718(n)+A000660(n)*A057428(A225644(n))`
-/

namespace A000697.P14039256993867482465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000718 n + A000660 n * A057428 (A225644 n).toNat

end

end A000697.P14039256993867482465

/-!
# A000698: A problem of configurations: a(0) = 1; for n>0, a(n) = (2n-1)!! - Sum_{k=1..n-1} (2k-1)!! a(n-k). Also the number of shellings of an n-cube, divided by 2^n n!.

The programs for A000698, there is no canonical definition to state claims against.
-/

/-! ## A000698.P2094824544410519211

`abs(A185971(n))`
-/

namespace A000698.P2094824544410519211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185971 n|

end

end A000698.P2094824544410519211

/-! ## A000698.P721323443866317999

`A286781(C(n, 2))`
-/

namespace A000698.P721323443866317999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (Nat.choose n 2)

end

end A000698.P721323443866317999

/-! ## A000698.P8234376255799852135

`A286781(∑[n]-n)`
-/

namespace A000698.P8234376255799852135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A000698.P8234376255799852135

/-! ## A000698.P11456555736767019782

`-A185971(A028310(n))`
-/

namespace A000698.P11456555736767019782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A185971 (A028310 n).toNat

end

end A000698.P11456555736767019782

/-! ## A000698.P5779428305366323228

`A258219(A186752(n+2))`
-/

namespace A000698.P5779428305366323228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A186752 (n + 2)).toNat

end

end A000698.P5779428305366323228

/-! ## A000698.P3768322558541737123

`A001147(n)-A177797(n)`
-/

namespace A000698.P3768322558541737123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A177797 n

end

end A000698.P3768322558541737123

/-! ## A000698.P9148054490937962098

`A000038(n)-A185971(n)`
-/

namespace A000698.P9148054490937962098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A185971 n

end

end A000698.P9148054490937962098

/-! ## A000698.P15750490442165429085

`-A185971(gcd(n, A000165(n)))`
-/

namespace A000698.P15750490442165429085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A185971 (Int.gcd (n : ℤ) (A000165 n))

end

end A000698.P15750490442165429085

/-! ## A000698.P13065567394198062278

`lcm(A007318(∑[n]), A185971(n))`
-/

namespace A000698.P13065567394198062278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A185971 n)

end

end A000698.P13065567394198062278

/-! ## A000698.P2443524659753407314

`A055634(2*n)-A177797(n)`
-/

namespace A000698.P2443524659753407314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n) - A177797 n

end

end A000698.P2443524659753407314

/-!
# A000699: Number of irreducible chord diagrams with 2n nodes.

The programs for A000699, there is no canonical definition to state claims against.
-/

/-! ## A000699.P16560452499517229575

`A172395(2*n)`
-/

namespace A000699.P16560452499517229575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172395 (2 * n)

end

end A000699.P16560452499517229575

/-! ## A000699.P13539431934581252630

`A286796(C(n, 2))`
-/

namespace A000699.P13539431934581252630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286796 (Nat.choose n 2)

end

end A000699.P13539431934581252630

/-! ## A000699.P9708154928633114330

`abs(A172394(2*n))`
-/

namespace A000699.P9708154928633114330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172394 (2 * n)|

end

end A000699.P9708154928633114330

/-! ## A000699.P11915773596428794862

`A286796(∑[n]-n)`
-/

namespace A000699.P11915773596428794862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286796 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A000699.P11915773596428794862

/-! ## A000699.P14183953315902378980

`abs(A208975(n)/A060747(n))`
-/

namespace A000699.P14183953315902378980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A208975 n : ℚ) / (A060747 n : ℚ)|

end

end A000699.P14183953315902378980

/-! ## A000699.P6981074250342385367

`abs(A208975(n)/A165747(n))`
-/

namespace A000699.P6981074250342385367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A208975 n : ℚ) / (A165747 n : ℚ)|

end

end A000699.P6981074250342385367

/-! ## A000699.P3540677191102272157

`abs(A208975(n)/A286782(A000217(n)))`
-/

namespace A000699.P3540677191102272157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A208975 n : ℚ) / (A286782 (A000217 n).toNat : ℚ)|

end

end A000699.P3540677191102272157

/-! ## A000699.P16030210409906835503

`abs(A208975(n)/A286783(A161680(n)))`
-/

namespace A000699.P16030210409906835503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A208975 n : ℚ) / (A286783 (A161680 n).toNat : ℚ)|

end

end A000699.P16030210409906835503

/-! ## A000699.P15578818558697952558

`A287039(n)/A009001(A004273(n)²)`
-/

namespace A000699.P15578818558697952558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287039 n : ℚ) / (A009001 (A004273 n ^ 2).toNat : ℚ)

end

end A000699.P15578818558697952558

