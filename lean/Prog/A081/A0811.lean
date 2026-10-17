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
import Seq.B000.C033
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A081105: 5th binomial transform of (1,1,0,0,0,0,.....).

The programs for A081105, the canonical program `A081105.P1731545487316219761` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081105 has offset 0).

The definition of A081105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081105.P3038899266477703

`(n+5)*5^(n-1)`
-/

namespace A081105.P3038899266477703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081105.P3038899266477703

namespace A081105

/-- `(n+5)*5^(n-1)` -/
def P3038899266477703.Spec : Prop :=
  ∀ n, P3038899266477703.a n = (A081105 n : ℚ)

end A081105

/-! ## A081105.P1731545487316219761

`10*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081105

/-- `10*a(n-1)-25*a(n-2)` -/
def P1731545487316219761.Spec : Prop :=
  ∀ n, P1731545487316219761.a n = A081105 n

theorem P1731545487316219761.correct : P1731545487316219761.Spec := by
  intro n
  simp only [A081105]

end A081105

/-! ## A081105.P13856605492596742133

`A053464(n)+5^n`
-/

namespace A081105.P13856605492596742133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 n + (5 ^ n : ℤ)

end

end A081105.P13856605492596742133

namespace A081105

/-- `A053464(n)+5^n` -/
def P13856605492596742133.Spec : Prop :=
  ∀ n, P13856605492596742133.a n = A081105 n

end A081105

/-! ## A081105.P4961943856070584528

`floor(5^(n-1)*A020710(n))`
-/

namespace A081105.P4961943856070584528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A020710 n : ℚ)⌋

end

end A081105.P4961943856070584528

namespace A081105

/-- `floor(5^(n-1)*A020710(n))` -/
def P4961943856070584528.Spec : Prop :=
  ∀ n, P4961943856070584528.a n = A081105 n

end A081105

/-! ## A081105.P1593745466021223258

`A000351(n-1)+5*a(n-1)` with `a(0)=1`
-/

namespace A081105.P1593745466021223258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000351 (n - 1) + 5 * a (n - 1)

end

end A081105.P1593745466021223258

namespace A081105

/-- `A000351(n-1)+5*a(n-1)` -/
def P1593745466021223258.Spec : Prop :=
  ∀ n, P1593745466021223258.a n = A081105 n

end A081105

/-! ## A081105.P12348323403508644106

`2*A082308(n)-A006234(n+3)`
-/

namespace A081105.P12348323403508644106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082308 n - A006234 (n + 3)

end

end A081105.P12348323403508644106

namespace A081105

/-- `2*A082308(n)-A006234(n+3)` -/
def P12348323403508644106.Spec : Prop :=
  ∀ n, P12348323403508644106.a n = A081105 n

end A081105

/-!
# A081106: 6th binomial transform of (1,1,0,0,0,0,...).

The programs for A081106, the canonical program `A081106.P8344004220058237957` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081106 has offset 0).

The definition of A081106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081106.P1682225191104819003

`(n+6)*6^(n-1)`
-/

namespace A081106.P1682225191104819003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081106.P1682225191104819003

namespace A081106

/-- `(n+6)*6^(n-1)` -/
def P1682225191104819003.Spec : Prop :=
  ∀ n, P1682225191104819003.a n = (A081106 n : ℚ)

end A081106

/-! ## A081106.P8344004220058237957

`12*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081106

/-- `12*a(n-1)-36*a(n-2)` -/
def P8344004220058237957.Spec : Prop :=
  ∀ n, P8344004220058237957.a n = A081106 n

theorem P8344004220058237957.correct : P8344004220058237957.Spec := by
  intro n
  simp only [A081106]

end A081106

/-! ## A081106.P15558106358464827868

`record[A034008(n)*A038765(n)]`
-/

namespace A081106.P15558106358464827868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A038765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081106.P15558106358464827868

namespace A081106

/-- `record[A034008(n)*A038765(n)]` -/
def P15558106358464827868.Spec : Prop :=
  ∀ n, P15558106358464827868.a n = A081106 n

end A081106

/-! ## A081106.P16021941375411400022

`2*A082309(n)-A079028(n)`
-/

namespace A081106.P16021941375411400022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082309 n - A079028 n

end

end A081106.P16021941375411400022

namespace A081106

/-- `2*A082309(n)-A079028(n)` -/
def P16021941375411400022.Spec : Prop :=
  ∀ n, P16021941375411400022.a n = A081106 n

end A081106

/-! ## A081106.P9479847146871209750

`(n+6)*A000400(n)/6`
-/

namespace A081106.P9479847146871209750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 6 : ℤ) * A000400 n : ℚ) / 6

end

end A081106.P9479847146871209750

namespace A081106

/-- `(n+6)*A000400(n)/6` -/
def P9479847146871209750.Spec : Prop :=
  ∀ n, P9479847146871209750.a n = (A081106 n : ℚ)

end A081106

/-! ## A081106.P15675665792048436321

`A000244(n)*A078836(n+6)/6`
-/

namespace A081106.P15675665792048436321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n * A078836 (n + 6) : ℚ) / 6

end

end A081106.P15675665792048436321

namespace A081106

/-- `A000244(n)*A078836(n+6)/6` -/
def P15675665792048436321.Spec : Prop :=
  ∀ n, P15675665792048436321.a n = (A081106 n : ℚ)

end A081106

/-! ## A081106.P12162065374855642003

`A053469(n+1)-n*A052934(n)`
-/

namespace A081106.P12162065374855642003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1) - (n : ℤ) * A052934 n

end

end A081106.P12162065374855642003

namespace A081106

/-- `A053469(n+1)-n*A052934(n)` -/
def P12162065374855642003.Spec : Prop :=
  ∀ n, P12162065374855642003.a n = A081106 n

end A081106

/-!
# A081107: 7th binomial transform of (1,1,0,0,0,0,...).

The programs for A081107, the canonical program `A081107.P4078256955343763519` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081107 has offset 0).

The definition of A081107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081107.P17815350379255642106

`(n+7)*7^(n-1)`
-/

namespace A081107.P17815350379255642106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℚ) * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081107.P17815350379255642106

namespace A081107

/-- `(n+7)*7^(n-1)` -/
def P17815350379255642106.Spec : Prop :=
  ∀ n, P17815350379255642106.a n = (A081107 n : ℚ)

end A081107

/-! ## A081107.P4078256955343763519

`14*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081107

/-- `14*a(n-1)-49*a(n-2)` -/
def P4078256955343763519.Spec : Prop :=
  ∀ n, P4078256955343763519.a n = A081107 n

theorem P4078256955343763519.correct : P4078256955343763519.Spec := by
  intro n
  simp only [A081107]

end A081107

/-! ## A081107.P11366423662480387114

`A000420(n)+A036293(n)/7`
-/

namespace A081107.P11366423662480387114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) + (A036293 n : ℚ) / 7

end

end A081107.P11366423662480387114

namespace A081107

/-- `A000420(n)+A036293(n)/7` -/
def P11366423662480387114.Spec : Prop :=
  ∀ n, P11366423662480387114.a n = (A081107 n : ℚ)

end A081107

/-! ## A081107.P7973806249479960188

`A000420(n)*A020719(n)/7`
-/

namespace A081107.P7973806249479960188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n * A020719 n : ℚ) / 7

end

end A081107.P7973806249479960188

namespace A081107

/-- `A000420(n)*A020719(n)/7` -/
def P7973806249479960188.Spec : Prop :=
  ∀ n, P7973806249479960188.a n = (A081107 n : ℚ)

end A081107

/-! ## A081107.P7624600845566756034

`(n+7)*A017925(A005843(n))/7`
-/

namespace A081107.P7624600845566756034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 7 : ℤ) * A017925 (A005843 n).toNat : ℚ) / 7

end

end A081107.P7624600845566756034

namespace A081107

/-- `(n+7)*A017925(A005843(n))/7` -/
def P7624600845566756034.Spec : Prop :=
  ∀ n, P7624600845566756034.a n = (A081107 n : ℚ)

end A081107

/-!
# A081108: 8th binomial transform of (1,1,0,0,0,0,...).

The programs for A081108, the canonical program `A081108.P5986217988635475361` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081108 has offset 0).

The definition of A081108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081108.P12628347081981393698

`(n+8)*8^(n-1)`
-/

namespace A081108.P12628347081981393698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℚ) * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081108.P12628347081981393698

namespace A081108

/-- `(n+8)*8^(n-1)` -/
def P12628347081981393698.Spec : Prop :=
  ∀ n, P12628347081981393698.a n = (A081108 n : ℚ)

end A081108

/-! ## A081108.P5986217988635475361

`16*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081108

/-- `16*a(n-1)-64*a(n-2)` -/
def P5986217988635475361.Spec : Prop :=
  ∀ n, P5986217988635475361.a n = A081108 n

theorem P5986217988635475361.correct : P5986217988635475361.Spec := by
  intro n
  simp only [A081108]

end A081108

/-! ## A081108.P392665975401446063

`A053539(n)+A001018(n)`
-/

namespace A081108.P392665975401446063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 n + A001018 n

end

end A081108.P392665975401446063

namespace A081108

/-- `A053539(n)+A001018(n)` -/
def P392665975401446063.Spec : Prop :=
  ∀ n, P392665975401446063.a n = A081108 n

end A081108

/-! ## A081108.P2724577241002523980

`A053539(n)+A016116(6*n)`
-/

namespace A081108.P2724577241002523980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 n + A016116 (6 * n)

end

end A081108.P2724577241002523980

namespace A081108

/-- `A053539(n)+A016116(6*n)` -/
def P2724577241002523980.Spec : Prop :=
  ∀ n, P2724577241002523980.a n = A081108 n

end A081108

/-! ## A081108.P7485803781929847642

`A053539(n)+A011782(A016777(n))`
-/

namespace A081108.P7485803781929847642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 n + A011782 (A016777 n).toNat

end

end A081108.P7485803781929847642

namespace A081108

/-- `A053539(n)+A011782(A016777(n))` -/
def P7485803781929847642.Spec : Prop :=
  ∀ n, P7485803781929847642.a n = A081108 n

end A081108

/-! ## A081108.P14698082332455134047

`A001018(n)+A002697(n)*A011782(n)`
-/

namespace A081108.P14698082332455134047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + A002697 n * A011782 n

end

end A081108.P14698082332455134047

namespace A081108

/-- `A001018(n)+A002697(n)*A011782(n)` -/
def P14698082332455134047.Spec : Prop :=
  ∀ n, P14698082332455134047.a n = A081108 n

end A081108

/-! ## A081108.P2541637716473465520

`A001018(n)+A002697(n)*A131577(n)`
-/

namespace A081108.P2541637716473465520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + A002697 n * A131577 n

end

end A081108.P2541637716473465520

namespace A081108

/-- `A001018(n)+A002697(n)*A131577(n)` -/
def P2541637716473465520.Spec : Prop :=
  ∀ n, P2541637716473465520.a n = A081108 n

end A081108

/-! ## A081108.P3896317091470889008

`A053539(n)+A053539(n+1)/(n+1)`
-/

namespace A081108.P3896317091470889008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053539 n : ℚ) + (A053539 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A081108.P3896317091470889008

namespace A081108

/-- `A053539(n)+A053539(n+1)/(n+1)` -/
def P3896317091470889008.Spec : Prop :=
  ∀ n, P3896317091470889008.a n = (A081108 n : ℚ)

end A081108

/-!
# A081109: 9th binomial transform of (1,1,0,0,0,0,0,...).

The programs for A081109, the canonical program `A081109.P145322639599194006` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081109 has offset 0).

The definition of A081109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081109.P9996455109213746587

`(n+9)*9^(n-1)`
-/

namespace A081109.P9996455109213746587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℚ) * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081109.P9996455109213746587

namespace A081109

/-- `(n+9)*9^(n-1)` -/
def P9996455109213746587.Spec : Prop :=
  ∀ n, P9996455109213746587.a n = (A081109 n : ℚ)

end A081109

/-! ## A081109.P145322639599194006

`18*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081109

/-- `18*a(n-1)-81*a(n-2)` -/
def P145322639599194006.Spec : Prop :=
  ∀ n, P145322639599194006.a n = A081109 n

theorem P145322639599194006.correct : P145322639599194006.Spec := by
  intro n
  simp only [A081109]

end A081109

/-! ## A081109.P14222109886694450008

`9^n+n*A141413(2*n)`
-/

namespace A081109.P14222109886694450008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) + (n : ℤ) * A141413 (2 * n)

end

end A081109.P14222109886694450008

namespace A081109

/-- `9^n+n*A141413(2*n)` -/
def P14222109886694450008.Spec : Prop :=
  ∀ n, P14222109886694450008.a n = A081109 n

end A081109

/-! ## A081109.P1001870789796715571

`9^n*C(n+9, 9)/C(n+8, 8)`
-/

namespace A081109.P1001870789796715571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n * Nat.choose (n + 9) 9 : ℚ) / (Nat.choose (n + 8) 8 : ℚ)

end

end A081109.P1001870789796715571

namespace A081109

/-- `9^n*C(n+9, 9)/C(n+8, 8)` -/
def P1001870789796715571.Spec : Prop :=
  ∀ n, P1001870789796715571.a n = (A081109 n : ℚ)

end A081109

/-! ## A081109.P10573548996099678444

`A197194(n)/C(n+8, 8)`
-/

namespace A081109.P10573548996099678444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197194 n : ℚ) / (Nat.choose (n + 8) 8 : ℚ)

end

end A081109.P10573548996099678444

namespace A081109

/-- `A197194(n)/C(n+8, 8)` -/
def P10573548996099678444.Spec : Prop :=
  ∀ n, P10573548996099678444.a n = (A081109 n : ℚ)

end A081109

/-!
# A081110: Divisors of 2^60 - 1.

The programs for A081110, there is no canonical definition to state claims against.
-/

/-! ## A081110.P5025093527657469775

`record[(2*n+1)/A054716(A054716(2*n+1))]`
-/

namespace A081110.P5025093527657469775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A054716 (A054716 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081110.P5025093527657469775

/-! ## A081110.P16606795089709348828

`eq[A054716(A054716(n+1)), A059841(n)]+1`
-/

namespace A081110.P16606795089709348828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A054716 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081110.P16606795089709348828

/-! ## A081110.P2536771643826926862

`record[A141310(n)/A054716(A054716(n+1))²]`
-/

namespace A081110.P2536771643826926862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) / (A054716 (A054716 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081110.P2536771643826926862

/-! ## A081110.P18398574104101649673

`record[A000265(n+1)/A054716(A054716(n+1))²]`
-/

namespace A081110.P18398574104101649673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A054716 (A054716 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081110.P18398574104101649673

/-! ## A081110.P9539921471989269156

`eq[A054716(A054716(n+1))², A009001(2*n)]+1`
-/

namespace A081110.P9539921471989269156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A054716 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081110.P9539921471989269156

/-!
# A081113: Number of paths of length n-1 a king can take from one side of an n X n chessboard to the opposite side.

The programs for A081113, the canonical program `A081113.P7576906969708490497` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081113 has offset 1).

The definition of A081113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081113.P9457535460269756651

`A188860(n+1)-3^n`
-/

namespace A081113.P9457535460269756651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188860 (n + 1) - (3 ^ n : ℤ)

end

end A081113.P9457535460269756651

namespace A081113

/-- `A188860(n+1)-3^n` -/
def P9457535460269756651.Spec : Prop :=
  ∀ n, P9457535460269756651.a n = A081113 (n + 1)

end A081113

/-! ## A081113.P13908414638592410400

`A288834(n+1)-A163872(n)`
-/

namespace A081113.P13908414638592410400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - A163872 n

end

end A081113.P13908414638592410400

namespace A081113

/-- `A288834(n+1)-A163872(n)` -/
def P13908414638592410400.Spec : Prop :=
  ∀ n, P13908414638592410400.a n = A081113 (n + 1)

end A081113

/-! ## A081113.P7576906969708490497

`A288834(n+1)-(A132894(n+1)+A132894(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081113

/-- `A288834(n+1)-(A132894(n+1)+A132894(n))` -/
def P7576906969708490497.Spec : Prop :=
  ∀ n, P7576906969708490497.a n = A081113 (n + 1)

theorem P7576906969708490497.correct : P7576906969708490497.Spec := by
  intro n
  simp only [A081113, Nat.add_sub_cancel]

end A081113

/-! ## A081113.P8608176855428382940

`A288834(n+1)-(A002426(n+1)+n*A105696(n+1))`
-/

namespace A081113.P8608176855428382940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - (A002426 (n + 1) + (n : ℤ) * A105696 (n + 1))

end

end A081113.P8608176855428382940

namespace A081113

/-- `A288834(n+1)-(A002426(n+1)+n*A105696(n+1))` -/
def P8608176855428382940.Spec : Prop :=
  ∀ n, P8608176855428382940.a n = A081113 (n + 1)

end A081113

/-! ## A081113.P16244756132379137672

`A288834(n+1)-((n+1)*A005773(n+1)+n*A005773(n))`
-/

namespace A081113.P16244756132379137672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - ((n + 1 : ℤ) * A005773 (n + 1) + (n : ℤ) * A005773 n)

end

end A081113.P16244756132379137672

namespace A081113

/-- `A288834(n+1)-((n+1)*A005773(n+1)+n*A005773(n))` -/
def P16244756132379137672.Spec : Prop :=
  ∀ n, P16244756132379137672.a n = A081113 (n + 1)

end A081113

/-! ## A081113.P15068328484848092645

`A288834(n+1)-A163772(A000217(n))`
-/

namespace A081113.P15068328484848092645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - A163772 (A000217 n).toNat

end

end A081113.P15068328484848092645

namespace A081113

/-- `A288834(n+1)-A163772(A000217(n))` -/
def P15068328484848092645.Spec : Prop :=
  ∀ n, P15068328484848092645.a n = A081113 (n + 1)

end A081113

/-!
# A081114: Triangle read by rows: T(n,k) = n*T(n-1,k) + n - k starting at T(n,n)=0.

The programs for A081114, there is no canonical definition to state claims against.
-/

/-! ## A081114.P1753326430485106623

`A143409(A062399(n))-A142589(n)`
-/

namespace A081114.P1753326430485106623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A062399 n).toNat - A142589 n

end

end A081114.P1753326430485106623

/-!
# A081115: (p^2 - 1)/12 where p > 3 runs through the primes.

The programs for A081115, the canonical program `A081115.P12324789555972598981` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081115 has offset 3).

The definition of A081115 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024702, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081115.P12324789555972598981

`2*A024702(n+3)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A081115

/-- `2*A024702(n+3)` -/
def P12324789555972598981.Spec : Prop :=
  ∀ n, P12324789555972598981.a n = A081115 (n + 3)

theorem P12324789555972598981.correct : P12324789555972598981.Spec := by
  intro n
  simp only [A081115, Nat.add_sub_cancel]

end A081115

/-! ## A081115.P9604674054966083264

`A024700(n+1)/4`
-/

namespace A081115.P9604674054966083264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 4

end

end A081115.P9604674054966083264

namespace A081115

/-- `A024700(n+1)/4` -/
def P9604674054966083264.Spec : Prop :=
  ∀ n, P9604674054966083264.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P13479967228651306603

`A084922(n+3)/2`
-/

namespace A081115.P13479967228651306603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084922 (n + 3) : ℚ) / 2

end

end A081115.P13479967228651306603

namespace A081115

/-- `A084922(n+3)/2` -/
def P13479967228651306603.Spec : Prop :=
  ∀ n, P13479967228651306603.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P7175116095655967829

`A024702(A009056(n+1))+A024702(n+3)`
-/

namespace A081115.P7175116095655967829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (A009056 (n + 1)).toNat + A024702 (n + 3)

end

end A081115.P7175116095655967829

namespace A081115

/-- `A024702(A009056(n+1))+A024702(n+3)` -/
def P7175116095655967829.Spec : Prop :=
  ∀ n, P7175116095655967829.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P2116396411347926541

`A024702(A000027(n+3))+A024702(n+3)`
-/

namespace A081115.P2116396411347926541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (A000027 (n + 3)).toNat + A024702 (n + 3)

end

end A081115.P2116396411347926541

namespace A081115

/-- `A024702(A000027(n+3))+A024702(n+3)` -/
def P2116396411347926541.Spec : Prop :=
  ∀ n, P2116396411347926541.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P13528616165569899002

`A024701(n+2)/3`
-/

namespace A081115.P13528616165569899002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024701 (n + 2) : ℚ) / 3

end

end A081115.P13528616165569899002

namespace A081115

/-- `A024701(n+2)/3` -/
def P13528616165569899002.Spec : Prop :=
  ∀ n, P13528616165569899002.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P13300319960417384511

`A216244(n+3)/6`
-/

namespace A081115.P13300319960417384511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 3) : ℚ) / 6

end

end A081115.P13300319960417384511

namespace A081115

/-- `A216244(n+3)/6` -/
def P13300319960417384511.Spec : Prop :=
  ∀ n, P13300319960417384511.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P15914391642057100047

`(A222963(n+3)+2)/3`
-/

namespace A081115.P15914391642057100047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222963 (n + 3) + 2 : ℚ) / 3

end

end A081115.P15914391642057100047

namespace A081115

/-- `(A222963(n+3)+2)/3` -/
def P15914391642057100047.Spec : Prop :=
  ∀ n, P15914391642057100047.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P5845196065398562703

`2/3*A061066(n+3)`
-/

namespace A081115.P5845196065398562703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A061066 (n + 3) : ℚ)

end

end A081115.P5845196065398562703

namespace A081115

/-- `2/3*A061066(n+3)` -/
def P5845196065398562703.Spec : Prop :=
  ∀ n, P5845196065398562703.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P16521381627945370112

`A024700(n+1)-A024701(n+2)`
-/

namespace A081115.P16521381627945370112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024700 (n + 1) - A024701 (n + 2)

end

end A081115.P16521381627945370112

namespace A081115

/-- `A024700(n+1)-A024701(n+2)` -/
def P16521381627945370112.Spec : Prop :=
  ∀ n, P16521381627945370112.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P3765420575644727904

`A024701(n+2)-A084922(n+3)`
-/

namespace A081115.P3765420575644727904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 2) - A084922 (n + 3)

end

end A081115.P3765420575644727904

namespace A081115

/-- `A024701(n+2)-A084922(n+3)` -/
def P3765420575644727904.Spec : Prop :=
  ∀ n, P3765420575644727904.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P16112753859351114824

`A061066(n+3)-A024702(n+3)`
-/

namespace A081115.P16112753859351114824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061066 (n + 3) - A024702 (n + 3)

end

end A081115.P16112753859351114824

namespace A081115

/-- `A061066(n+3)-A024702(n+3)` -/
def P16112753859351114824.Spec : Prop :=
  ∀ n, P16112753859351114824.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P317744470999659361

`A024700(n+1)-A061066(n+3)-A061066(n+3)`
-/

namespace A081115.P317744470999659361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024700 (n + 1) - A061066 (n + 3) - A061066 (n + 3)

end

end A081115.P317744470999659361

namespace A081115

/-- `A024700(n+1)-A061066(n+3)-A061066(n+3)` -/
def P317744470999659361.Spec : Prop :=
  ∀ n, P317744470999659361.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P14434756289058445819

`A024702(n+3)+A024702(n+4)-A075888(n+3)`
-/

namespace A081115.P14434756289058445819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3) + (A024702 (n + 4) - A075888 (n + 3))

end

end A081115.P14434756289058445819

namespace A081115

/-- `A024702(n+3)+A024702(n+4)-A075888(n+3)` -/
def P14434756289058445819.Spec : Prop :=
  ∀ n, P14434756289058445819.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P5746202439607239091

`A084921(n+3)/6`
-/

namespace A081115.P5746202439607239091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084921 (n + 3) : ℚ) / 6

end

end A081115.P5746202439607239091

namespace A081115

/-- `A084921(n+3)/6` -/
def P5746202439607239091.Spec : Prop :=
  ∀ n, P5746202439607239091.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P6740184821295108600

`floor(A001248(n+3)/12)`
-/

namespace A081115.P6740184821295108600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 3) : ℚ) / 12⌋

end

end A081115.P6740184821295108600

namespace A081115

/-- `floor(A001248(n+3)/12)` -/
def P6740184821295108600.Spec : Prop :=
  ∀ n, P6740184821295108600.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P16137363742452444343

`floor((A000040(n+3)/2)²/3)`
-/

namespace A081115.P16137363742452444343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000040 (n + 3) : ℚ) / 2) ^ 2 / 3⌋

end

end A081115.P16137363742452444343

namespace A081115

/-- `floor((A000040(n+3)/2)²/3)` -/
def P16137363742452444343.Spec : Prop :=
  ∀ n, P16137363742452444343.a n = A081115 (n + 3)

end A081115

/-! ## A081115.P10059063391348994037

`A127921(n+3)/A000040(n+3)`
-/

namespace A081115.P10059063391348994037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127921 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A081115.P10059063391348994037

namespace A081115

/-- `A127921(n+3)/A000040(n+3)` -/
def P10059063391348994037.Spec : Prop :=
  ∀ n, P10059063391348994037.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P8578069765733435889

`A138422(n+3)/A001248(n+3)`
-/

namespace A081115.P8578069765733435889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138422 (n + 3) : ℚ) / (A001248 (n + 3) : ℚ)

end

end A081115.P8578069765733435889

namespace A081115

/-- `A138422(n+3)/A001248(n+3)` -/
def P8578069765733435889.Spec : Prop :=
  ∀ n, P8578069765733435889.a n = (A081115 (n + 3) : ℚ)

end A081115

/-! ## A081115.P1489694587373502597

`A138459(n+3)/A030514(n+3)`
-/

namespace A081115.P1489694587373502597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 3) : ℚ) / (A030514 (n + 3) : ℚ)

end

end A081115.P1489694587373502597

namespace A081115

/-- `A138459(n+3)/A030514(n+3)` -/
def P1489694587373502597.Spec : Prop :=
  ∀ n, P1489694587373502597.a n = (A081115 (n + 3) : ℚ)

end A081115

/-!
# A081117: Differences of Beatty sequence for cube root of 2.

The programs for A081117, the canonical program `A081117.P9736678173655795984` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081117 has offset 0).

The definition of A081117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081117.P9736678173655795984

`floor((n+1)*2^(1/3))-floor(n*2^(1/3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081117

/-- `floor((n+1)*2^(1/3))-floor(n*2^(1/3))` -/
def P9736678173655795984.Spec : Prop :=
  ∀ n, P9736678173655795984.a n = A081117 n

theorem P9736678173655795984.correct : P9736678173655795984.Spec := by
  intro n
  simp only [A081117]

end A081117

/-! ## A081117.P296410419915786164

`Δ[floor(n*root(2, 3))]%3`
-/

namespace A081117.P296410419915786164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (2 : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A081117.P296410419915786164

namespace A081117

/-- `Δ[floor(n*root(2, 3))]%3` -/
def P296410419915786164.Spec : Prop :=
  ∀ n, P296410419915786164.a n = A081117 n

end A081117

/-! ## A081117.P3632151747994824373

`Δ[A038129(n)]`
-/

namespace A081117.P3632151747994824373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081117.P3632151747994824373

namespace A081117

/-- `Δ[A038129(n)]` -/
def P3632151747994824373.Spec : Prop :=
  ∀ n, P3632151747994824373.a n = A081117 n

end A081117

/-! ## A081117.P5421401504544087329

`A000720(Δ[A028811(n+1)])!`
-/

namespace A081117.P5421401504544087329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000720 (f1 (n + 1) - f1 n).toNat).toNat

end

end A081117.P5421401504544087329

namespace A081117

/-- `A000720(Δ[A028811(n+1)])!` -/
def P5421401504544087329.Spec : Prop :=
  ∀ n, (P5421401504544087329.a n : ℤ) = A081117 n

end A081117

/-! ## A081117.P285568032576887000

`A064986(Δ[A028811(n+1)]-1)`
-/

namespace A081117.P285568032576887000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (f1 (n + 1) - f1 n - 1).toNat

end

end A081117.P285568032576887000

namespace A081117

/-- `A064986(Δ[A028811(n+1)]-1)` -/
def P285568032576887000.Spec : Prop :=
  ∀ n, P285568032576887000.a n = A081117 n

end A081117

/-!
# A081118: Triangle of first n numbers per row having exactly n 1's in binary representation.

The programs for A081118, the canonical program `A081118.P6487108056144640916` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081118 has offset 1).

The definition of A081118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081118.P6487108056144640916

`(2^A002260(n+1)-1)*2^A004736(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A081118

/-- `(2^A002260(n+1)-1)*2^A004736(n+1)-1` -/
def P6487108056144640916.Spec : Prop :=
  ∀ n, P6487108056144640916.a n = (A081118 (n + 1) : ℚ)

end A081118

/-! ## A081118.P11530425320021110484

`A043569(n+1)-1`
-/

namespace A081118.P11530425320021110484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - 1

end

end A081118.P11530425320021110484

namespace A081118

/-- `A043569(n+1)-1` -/
def P11530425320021110484.Spec : Prop :=
  ∀ n, P11530425320021110484.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P5330975107391015646

`A224195(n+1)-2`
-/

namespace A081118.P5330975107391015646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1) - 2

end

end A081118.P5330975107391015646

namespace A081118

/-- `A224195(n+1)-2` -/
def P5330975107391015646.Spec : Prop :=
  ∀ n, P5330975107391015646.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P1575523991642778861

`2*A089633(n)+1`
-/

namespace A081118.P1575523991642778861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089633 n + 1

end

end A081118.P1575523991642778861

namespace A081118

/-- `2*A089633(n)+1` -/
def P1575523991642778861.Spec : Prop :=
  ∀ n, P1575523991642778861.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P6339226063702467664

`or(1, A030130(n+1))`
-/

namespace A081118.P6339226063702467664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030130 (n + 1))

end

end A081118.P6339226063702467664

namespace A081118

/-- `or(1, A030130(n+1))` -/
def P6339226063702467664.Spec : Prop :=
  ∀ n, P6339226063702467664.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P10690118643231131928

`or(1, A207063(n+1))`
-/

namespace A081118.P10690118643231131928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207063 (n + 1))

end

end A081118.P10690118643231131928

namespace A081118

/-- `or(1, A207063(n+1))` -/
def P10690118643231131928.Spec : Prop :=
  ∀ n, P10690118643231131928.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P15198232410896780075

`∑[2*A057728(n+1)]-1`
-/

namespace A081118.P15198232410896780075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081118.P15198232410896780075

namespace A081118

/-- `∑[2*A057728(n+1)]-1` -/
def P15198232410896780075.Spec : Prop :=
  ∀ n, P15198232410896780075.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P7575852480491810239

`a(n-1)+2*A155038(n)` with `a(0)=1`
-/

namespace A081118.P7575852480491810239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A155038 n

end

end A081118.P7575852480491810239

namespace A081118

/-- `a(n-1)+2*A155038(n)` -/
def P7575852480491810239.Spec : Prop :=
  ∀ n, P7575852480491810239.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P10941101830498596047

`A030130(n+1)+A010054(n)`
-/

namespace A081118.P10941101830498596047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1) + A010054 n

end

end A081118.P10941101830498596047

namespace A081118

/-- `A030130(n+1)+A010054(n)` -/
def P10941101830498596047.Spec : Prop :=
  ∀ n, P10941101830498596047.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P17103991150550693554

`A207063(n+1)+A057211(n+1)`
-/

namespace A081118.P17103991150550693554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207063 (n + 1) + A057211 (n + 1)

end

end A081118.P17103991150550693554

namespace A081118

/-- `A207063(n+1)+A057211(n+1)` -/
def P17103991150550693554.Spec : Prop :=
  ∀ n, P17103991150550693554.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P9665399059904975313

`A030130(n+1)+A035214(n)-1`
-/

namespace A081118.P9665399059904975313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1) + (A035214 n - 1)

end

end A081118.P9665399059904975313

namespace A081118

/-- `A030130(n+1)+A035214(n)-1` -/
def P9665399059904975313.Spec : Prop :=
  ∀ n, P9665399059904975313.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P422317208388369978

`A190620(n+1)-A098354(n+1)`
-/

namespace A081118.P422317208388369978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190620 (n + 1) - A098354 (n + 1)

end

end A081118.P422317208388369978

namespace A081118

/-- `A190620(n+1)-A098354(n+1)` -/
def P422317208388369978.Spec : Prop :=
  ∀ n, P422317208388369978.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P711125140180946290

`or(A078880(n)+a(n-1), A130330(n))` with `a(0)=1`
-/

namespace A081118.P711125140180946290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A078880 n + a (n - 1)) (A130330 n)

end

end A081118.P711125140180946290

namespace A081118

/-- `or(A078880(n)+a(n-1), A130330(n))` -/
def P711125140180946290.Spec : Prop :=
  ∀ n, P711125140180946290.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P18161412437215048171

`A130330(A127739(n+1))-A090988(n+1)`
-/

namespace A081118.P18161412437215048171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A127739 (n + 1)).toNat - A090988 (n + 1)

end

end A081118.P18161412437215048171

namespace A081118

/-- `A130330(A127739(n+1))-A090988(n+1)` -/
def P18161412437215048171.Spec : Prop :=
  ∀ n, P18161412437215048171.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P13346899778233114157

`2*A023758(n+2)-1`
-/

namespace A081118.P13346899778233114157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023758 (n + 2) - 1

end

end A081118.P13346899778233114157

namespace A081118

/-- `2*A023758(n+2)-1` -/
def P13346899778233114157.Spec : Prop :=
  ∀ n, P13346899778233114157.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P17332897371158732275

`A089633(n)+A023758(n+2)`
-/

namespace A081118.P17332897371158732275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + A023758 (n + 2)

end

end A081118.P17332897371158732275

namespace A081118

/-- `A089633(n)+A023758(n+2)` -/
def P17332897371158732275.Spec : Prop :=
  ∀ n, P17332897371158732275.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P15063507210053017155

`A089633(comp[∑[n-1]])`
-/

namespace A081118.P15063507210053017155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A081118.P15063507210053017155

namespace A081118

/-- `A089633(comp[∑[n-1]])` -/
def P15063507210053017155.Spec : Prop :=
  ∀ n, P15063507210053017155.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P17014652681742294587

`A023758(A080036(n+1))-1`
-/

namespace A081118.P17014652681742294587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A080036 (n + 1)).toNat - 1

end

end A081118.P17014652681742294587

namespace A081118

/-- `A023758(A080036(n+1))-1` -/
def P17014652681742294587.Spec : Prop :=
  ∀ n, P17014652681742294587.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P6871303390369378641

`A164874(n+1)-A130321(n)`
-/

namespace A081118.P6871303390369378641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1) - A130321 n

end

end A081118.P6871303390369378641

namespace A081118

/-- `A164874(n+1)-A130321(n)` -/
def P6871303390369378641.Spec : Prop :=
  ∀ n, P6871303390369378641.a n = A081118 (n + 1)

end A081118

/-! ## A081118.P12690142766713384975

`or(1, A206853(n+1))`
-/

namespace A081118.P12690142766713384975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206853 (n + 1))

end

end A081118.P12690142766713384975

namespace A081118

/-- `or(1, A206853(n+1))` -/
def P12690142766713384975.Spec : Prop :=
  ∀ n, P12690142766713384975.a n = A081118 (n + 1)

end A081118

/-!
# A081119: Number of integral solutions to Mordell's equation y^2 = x^3 + n.

The programs for A081119, there is no canonical definition to state claims against.
-/

/-! ## A081119.P235552778804239446

`A005843(A134108(n+1))-A010057(n+1)`
-/

namespace A081119.P235552778804239446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A134108 (n + 1)).toNat - A010057 (n + 1)

end

end A081119.P235552778804239446

/-!
# A081120: Number of integral solutions to Mordell's equation y^2 = x^3 - n.

The programs for A081120, there is no canonical definition to state claims against.
-/

/-! ## A081120.P12212115649547850154

`2*A134109(n+1)-Δ[A048766(n)]`
-/

namespace A081120.P12212115649547850154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134109 (n + 1) - (f1 (n + 1) - f1 n)

end

end A081120.P12212115649547850154

/-! ## A081120.P7901425101751046433

`A005843(A134109(n+1))-Δ[A048766(n)]`
-/

namespace A081120.P7901425101751046433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A134109 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A081120.P7901425101751046433

/-! ## A081120.P18406849896786842053

`A005843(A134109(n+1))-A010057(n+1)`
-/

namespace A081120.P18406849896786842053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A134109 (n + 1)).toNat - A010057 (n + 1)

end

end A081120.P18406849896786842053

/-! ## A081120.P11920312673490553237

`A134109(n+1)*A317994(A008864(n+1))`
-/

namespace A081120.P11920312673490553237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (n + 1) * A317994 (A008864 (n + 1)).toNat

end

end A081120.P11920312673490553237

/-! ## A081120.P369869771811487373

`A014858(2*n+5)%3*A134109(n+1)`
-/

namespace A081120.P369869771811487373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014858 (2 * n + 5)) 3 * A134109 (n + 1)

end

end A081120.P369869771811487373

/-!
# A081121: Numbers k such that Mordell's equation y^2 = x^3 - k has no integral solutions.

The programs for A081121, there is no canonical definition to state claims against.
-/

/-! ## A081121.P13807127096835771123

`eq[0, A081120(n+1)]+1`
-/

namespace A081121.P13807127096835771123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081121.P13807127096835771123

/-! ## A081121.P4335490391710714962

`eq[0, A134109(n+1)]+1`
-/

namespace A081121.P4335490391710714962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081121.P4335490391710714962

/-! ## A081121.P4337899073288361301

`eq[0, A081120(A028310(n))]`
-/

namespace A081121.P4337899073288361301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081121.P4337899073288361301

/-! ## A081121.P14496430715287257906

`A020725(eq[0, A081120(n+1)])`
-/

namespace A081121.P14496430715287257906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081121.P14496430715287257906

/-! ## A081121.P13434835253174415007

`lt[A081120(A000038(n)+n), 1]`
-/

namespace A081121.P13434835253174415007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081121.P13434835253174415007

/-! ## A081121.P10344982133188479098

`lt[A134109(A000007(n)+n), 1]`
-/

namespace A081121.P10344982133188479098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081121.P10344982133188479098

/-! ## A081121.P18237107780154165180

`eq[1, A313833(a(A134109(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A081121.P18237107780154165180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A313833 (f2 (A134109 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081121.P18237107780154165180

/-! ## A081121.P2857144256152972337

`eq[0, A081120(A123108(2*n))]`
-/

namespace A081121.P2857144256152972337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081121.P2857144256152972337

/-! ## A081121.P2887301094790985320

`eq[A000038(n), A134109(A123108(2*n))]`
-/

namespace A081121.P2887301094790985320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081121.P2887301094790985320

/-! ## A081121.P10848527477692554956

`eq[0, A134109(A233583(n+1))]`
-/

namespace A081121.P10848527477692554956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081121.P10848527477692554956

/-!
# A081122: 10th binomial transform of (1,1,0,0,0,0,...).

The programs for A081122, the canonical program `A081122.P9250932840622521740` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081122 has offset 0).

The definition of A081122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081122.P9250932840622521740

`(n+10)*10^(n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081122

/-- `(n+10)*10^(n-1)` -/
def P9250932840622521740.Spec : Prop :=
  ∀ n, P9250932840622521740.a n = (A081122 n : ℚ)

end A081122

/-! ## A081122.P7518346536257515950

`A094797(n)+10^n-1`
-/

namespace A081122.P7518346536257515950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094797 n + ((10 ^ n : ℤ) - 1)

end

end A081122.P7518346536257515950

namespace A081122

/-- `A094797(n)+10^n-1` -/
def P7518346536257515950.Spec : Prop :=
  ∀ n, P7518346536257515950.a n = A081122 n

end A081122

/-! ## A081122.P17177758322329339364

`A178501(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A081122.P17177758322329339364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178501 n + 10 * a (n - 1)

end

end A081122.P17177758322329339364

namespace A081122

/-- `A178501(n)+10*a(n-1)` -/
def P17177758322329339364.Spec : Prop :=
  ∀ n, P17177758322329339364.a n = A081122 n

end A081122

/-! ## A081122.P1196719011764358645

`A011557(n)+A126431(n)/10`
-/

namespace A081122.P1196719011764358645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n : ℚ) + (A126431 n : ℚ) / 10

end

end A081122.P1196719011764358645

namespace A081122

/-- `A011557(n)+A126431(n)/10` -/
def P1196719011764358645.Spec : Prop :=
  ∀ n, P1196719011764358645.a n = (A081122 n : ℚ)

end A081122

/-! ## A081122.P6274843948660785408

`A011557(n)+n*A178501(n)`
-/

namespace A081122.P6274843948660785408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + (n : ℤ) * A178501 n

end

end A081122.P6274843948660785408

namespace A081122

/-- `A011557(n)+n*A178501(n)` -/
def P6274843948660785408.Spec : Prop :=
  ∀ n, P6274843948660785408.a n = A081122 n

end A081122

/-! ## A081122.P11701951822083755953

`A178500(n)+A053541(A028310(n))`
-/

namespace A081122.P11701951822083755953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + A053541 (A028310 n).toNat

end

end A081122.P11701951822083755953

namespace A081122

/-- `A178500(n)+A053541(A028310(n))` -/
def P11701951822083755953.Spec : Prop :=
  ∀ n, P11701951822083755953.a n = A081122 n

end A081122

/-! ## A081122.P15161994458415502387

`A053541(n+1)+A011557(n)-A081045(n)`
-/

namespace A081122.P15161994458415502387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053541 (n + 1) + (A011557 n - A081045 n)

end

end A081122.P15161994458415502387

namespace A081122

/-- `A053541(n+1)+A011557(n)-A081045(n)` -/
def P15161994458415502387.Spec : Prop :=
  ∀ n, P15161994458415502387.a n = A081122 n

end A081122

/-! ## A081122.P5175674660406209395

`Δ[record[A081541(n+1)]]-A081045(n)`
-/

namespace A081122.P5175674660406209395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081045 n

end

end A081122.P5175674660406209395

namespace A081122

/-- `Δ[record[A081541(n+1)]]-A081045(n)` -/
def P5175674660406209395.Spec : Prop :=
  ∀ n, P5175674660406209395.a n = A081122 n

end A081122

/-!
# A081123: a(n) = floor(n/2)!.

The programs for A081123, the canonical program `A081123.P8894457904069050108` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081123 has offset 0).

The definition of A081123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)!` (program `A081123.P8894457904069050108`, by `A081123.P8894457904069050108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081123.P8894457904069050108

`floor(n/2)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081123

/-- `floor(n/2)!` -/
def P8894457904069050108.Spec : Prop :=
  ∀ n, (P8894457904069050108.a n : ℤ) = A081123 n

theorem P8894457904069050108.correct : P8894457904069050108.Spec := by
  intro n
  simp only [A081123]

end A081123

/-! ## A081123.P2728547517904851143

`∏[gcd(n, ceil(abs((1-n)/2)))]`
-/

namespace A081123.P2728547517904851143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081123.P2728547517904851143

namespace A081123

/-- `∏[gcd(n, ceil(abs((1-n)/2)))]` -/
def P2728547517904851143.Spec : Prop :=
  ∀ n, (P2728547517904851143.a n : ℤ) = A081123 n

end A081123

/-! ## A081123.P1351587747203935005

`and(ceil(abs((1-n)/2))!, -1)`
-/

namespace A081123.P1351587747203935005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℤ) (-1)

end

end A081123.P1351587747203935005

namespace A081123

/-- `and(ceil(abs((1-n)/2))!, -1)` -/
def P1351587747203935005.Spec : Prop :=
  ∀ n, P1351587747203935005.a n = A081123 n

end A081123

/-! ## A081123.P933003519385127325

`floor(n/2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A081123.P933003519385127325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(n : ℚ) / 2⌋ * a (n - 2)

end

end A081123.P933003519385127325

namespace A081123

/-- `floor(n/2)*a(n-2)` -/
def P933003519385127325.Spec : Prop :=
  ∀ n, P933003519385127325.a n = A081123 n

end A081123

/-! ## A081123.P2189968755863600673

`or(ceil(abs((1-n)/2))!, char[1])`
-/

namespace A081123.P2189968755863600673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A081123.P2189968755863600673

namespace A081123

/-- `or(ceil(abs((1-n)/2))!, char[1])` -/
def P2189968755863600673.Spec : Prop :=
  ∀ n, (P2189968755863600673.a n : ℤ) = A081123 n

end A081123

/-! ## A081123.P2790455969410809765

`ceil(abs((1-n)/2))!^ceil(acot(n))`
-/

namespace A081123.P2790455969410809765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A081123.P2790455969410809765

namespace A081123

/-- `ceil(abs((1-n)/2))!^ceil(acot(n))` -/
def P2790455969410809765.Spec : Prop :=
  ∀ n, P2790455969410809765.a n = (A081123 n : ℚ)

end A081123

/-! ## A081123.P16094899324761127984

`ceil(abs((1-n)/2))!^ceil(sin(n)²)`
-/

namespace A081123.P16094899324761127984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A081123.P16094899324761127984

namespace A081123

/-- `ceil(abs((1-n)/2))!^ceil(sin(n)²)` -/
def P16094899324761127984.Spec : Prop :=
  ∀ n, P16094899324761127984.a n = (A081123 n : ℚ)

end A081123

/-! ## A081123.P1905532899048190090

`a(n-2)/floor(n/2)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A081123.P1905532899048190090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (⌊(n : ℚ) / 2⌋ : ℚ) ^ (-1 : ℤ)

end

end A081123.P1905532899048190090

namespace A081123

/-- `a(n-2)/floor(n/2)^(-1)` -/
def P1905532899048190090.Spec : Prop :=
  ∀ n, P1905532899048190090.a n = (A081123 n : ℚ)

end A081123

/-! ## A081123.P1717984233102156504

`(n-n%2)*a(n-2)/2` with `a(0)=1, a(1)=1`
-/

namespace A081123.P1717984233102156504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) * (a (n - 2) / 2)

end

end A081123.P1717984233102156504

namespace A081123

/-- `(n-n%2)*a(n-2)/2` -/
def P1717984233102156504.Spec : Prop :=
  ∀ n, P1717984233102156504.a n = (A081123 n : ℚ)

end A081123

/-! ## A081123.P15355429453040798101

`a(n-2)*Δ[a(n-2)+n-2]` with `a(0)=1, a(1)=1`
-/

namespace A081123.P15355429453040798101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (f1 (n + 1) - f1 n)

end

end A081123.P15355429453040798101

namespace A081123

/-- `a(n-2)*Δ[a(n-2)+n-2]` -/
def P15355429453040798101.Spec : Prop :=
  ∀ n, P15355429453040798101.a n = A081123 n

end A081123

/-! ## A081123.P8423246223712128076

`A116447(or(1, n))`
-/

namespace A081123.P8423246223712128076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (Nat.lor 1 n)

end

end A081123.P8423246223712128076

namespace A081123

/-- `A116447(or(1, n))` -/
def P8423246223712128076.Spec : Prop :=
  ∀ n, P8423246223712128076.a n = A081123 n

end A081123

/-! ## A081123.P9456957588638189983

`A154028(or(1, n))`
-/

namespace A081123.P9456957588638189983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154028 (Nat.lor 1 n)

end

end A081123.P9456957588638189983

namespace A081123

/-- `A154028(or(1, n))` -/
def P9456957588638189983.Spec : Prop :=
  ∀ n, P9456957588638189983.a n = A081123 n

end A081123

/-! ## A081123.P2492346187293295081

`A000142(floor(n/2))`
-/

namespace A081123.P2492346187293295081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌊(n : ℚ) / 2⌋.toNat

end

end A081123.P2492346187293295081

namespace A081123

/-- `A000142(floor(n/2))` -/
def P2492346187293295081.Spec : Prop :=
  ∀ n, P2492346187293295081.a n = A081123 n

end A081123

/-! ## A081123.P1328179546771315270

`A047917(A008805(n))`
-/

namespace A081123.P1328179546771315270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (A008805 n).toNat

end

end A081123.P1328179546771315270

namespace A081123

/-- `A047917(A008805(n))` -/
def P1328179546771315270.Spec : Prop :=
  ∀ n, P1328179546771315270.a n = A081123 n

end A081123

/-! ## A081123.P137141588732520023

`A214080(A002620(n))`
-/

namespace A081123.P137141588732520023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A002620 n).toNat

end

end A081123.P137141588732520023

namespace A081123

/-- `A214080(A002620(n))` -/
def P137141588732520023.Spec : Prop :=
  ∀ n, P137141588732520023.a n = A081123 n

end A081123

/-! ## A081123.P6924648527139962725

`A214080(A004652(n))`
-/

namespace A081123.P6924648527139962725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A004652 n).toNat

end

end A081123.P6924648527139962725

namespace A081123

/-- `A214080(A004652(n))` -/
def P6924648527139962725.Spec : Prop :=
  ∀ n, P6924648527139962725.a n = A081123 n

end A081123

/-! ## A081123.P8823355341961252445

`A214078(A008794(n))`
-/

namespace A081123.P8823355341961252445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A008794 n).toNat

end

end A081123.P8823355341961252445

namespace A081123

/-- `A214078(A008794(n))` -/
def P8823355341961252445.Spec : Prop :=
  ∀ n, P8823355341961252445.a n = A081123 n

end A081123

/-! ## A081123.P4918139696497606674

`A214080(A008811(n))`
-/

namespace A081123.P4918139696497606674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A008811 n).toNat

end

end A081123.P4918139696497606674

namespace A081123

/-- `A214080(A008811(n))` -/
def P4918139696497606674.Spec : Prop :=
  ∀ n, P4918139696497606674.a n = A081123 n

end A081123

/-!
# A081124: Binomial transform of floor(n/2)!.

The programs for A081124, the canonical program `A081124.P10549352841286882564` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081124 has offset 0).

The definition of A081124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081124.P6958174135796854879

`a(n-1)+n/2*a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A081124.P6958174135796854879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ((n : ℚ) / 2 * a (n - 2) + 1)

end

end A081124.P6958174135796854879

namespace A081124

/-- `a(n-1)+n/2*a(n-2)+1` -/
def P6958174135796854879.Spec : Prop :=
  ∀ n, P6958174135796854879.a n = (A081124 n : ℚ)

end A081124

/-! ## A081124.P10549352841286882564

`a(n-1)-xor(n/2*a(n-2), -1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081124

/-- `a(n-1)-xor(n/2*a(n-2), -1)` -/
def P10549352841286882564.Spec : Prop :=
  ∀ n, P10549352841286882564.a n = A081124 n

theorem P10549352841286882564.correct : P10549352841286882564.Spec := by
  intro n
  simp only [A081124]

end A081124

/-! ## A081124.P16921834224016136627

`2-((2-n*a(n-2))/2-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A081124.P16921834224016136627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - ((2 - (n : ℚ) * a (n - 2)) / 2 - a (n - 1))

end

end A081124.P16921834224016136627

namespace A081124

/-- `2-((2-n*a(n-2))/2-a(n-1))` -/
def P16921834224016136627.Spec : Prop :=
  ∀ n, P16921834224016136627.a n = (A081124 n : ℚ)

end A081124

/-! ## A081124.P1519482707275726076

`∑[A084261(n)]`
-/

namespace A081124.P1519482707275726076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081124.P1519482707275726076

namespace A081124

/-- `∑[A084261(n)]` -/
def P1519482707275726076.Spec : Prop :=
  ∀ n, P1519482707275726076.a n = A081124 n

end A081124

/-! ## A081124.P15292083587017165447

`a(n-1)+A084261(n)%A162748(n)` with `a(0)=1`
-/

namespace A081124.P15292083587017165447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A084261 n) (A162748 n)

end

end A081124.P15292083587017165447

namespace A081124

/-- `a(n-1)+A084261(n)%A162748(n)` -/
def P15292083587017165447.Spec : Prop :=
  ∀ n, P15292083587017165447.a n = A081124 n

end A081124

/-!
# A081125: a(n) = n! / floor(n/2)!.

The programs for A081125, the canonical program `A081125.P3254837725225927038` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081125 has offset 0).

The definition of A081125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081125.P3254837725225927038

`n!/floor(n/2)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081125

/-- `n!/floor(n/2)!` -/
def P3254837725225927038.Spec : Prop :=
  ∀ n, P3254837725225927038.a n = (A081125 n : ℚ)

end A081125

/-! ## A081125.P13418729997527374219

`∏[n/ceil(a(n-1)/2)]` with `a(0)=1`
-/

namespace A081125.P13418729997527374219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / (⌈f1 (n - 1) / 2⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081125.P13418729997527374219

namespace A081125

/-- `∏[n/ceil(a(n-1)/2)]` -/
def P13418729997527374219.Spec : Prop :=
  ∀ n, P13418729997527374219.a n = (A081125 n : ℚ)

end A081125

/-! ## A081125.P9455945862957966144

`∏[n/round(a(n-1)/2)]` with `a(0)=1`
-/

namespace A081125.P9455945862957966144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / (SequenceMachineLib.roundAway (f1 (n - 1) / 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081125.P9455945862957966144

namespace A081125

/-- `∏[n/round(a(n-1)/2)]` -/
def P9455945862957966144.Spec : Prop :=
  ∀ n, P9455945862957966144.a n = (A081125 n : ℚ)

end A081125

/-! ## A081125.P2484133567758172502

`∏[(n-2)*n%2+2]/2`
-/

namespace A081125.P2484133567758172502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((n % 2 : ℕ) : ℤ) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A081125.P2484133567758172502

namespace A081125

/-- `∏[(n-2)*n%2+2]/2` -/
def P2484133567758172502.Spec : Prop :=
  ∀ n, P2484133567758172502.a n = (A081125 n : ℚ)

end A081125

/-! ## A081125.P2959294156856938614

`gcd(n, xor(n, -2))*a(n-1)` with `a(0)=1`
-/

namespace A081125.P2959294156856938614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (Int.xor (n : ℤ) (-2)) * a (n - 1)

end

end A081125.P2959294156856938614

namespace A081125

/-- `gcd(n, xor(n, -2))*a(n-1)` -/
def P2959294156856938614.Spec : Prop :=
  ∀ n, (P2959294156856938614.a n : ℤ) = A081125 n

end A081125

/-! ## A081125.P5550625789392970136

`∏[or(1, -a(n-1))+n+1]` with `a(0)=1`
-/

namespace A081125.P5550625789392970136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 1 (-f1 (n - 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081125.P5550625789392970136

namespace A081125

/-- `∏[or(1, -a(n-1))+n+1]` -/
def P5550625789392970136.Spec : Prop :=
  ∀ n, P5550625789392970136.a n = A081125 n

end A081125

/-! ## A081125.P15573181852482935036

`a(n-2)*∑[gcd(5, a(n-1))-1]` with `a(0)=1, a(1)=1`
-/

namespace A081125.P15573181852482935036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.gcd 5 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081125.P15573181852482935036

namespace A081125

/-- `a(n-2)*∑[gcd(5, a(n-1))-1]` -/
def P15573181852482935036.Spec : Prop :=
  ∀ n, P15573181852482935036.a n = A081125 n

end A081125

/-! ## A081125.P14627380037966695325

`a(n-2)*∑[4%(5-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A081125.P14627380037966695325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.tmod 4 (5 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081125.P14627380037966695325

namespace A081125

/-- `a(n-2)*∑[4%(5-a(n-1))]` -/
def P14627380037966695325.Spec : Prop :=
  ∀ n, P14627380037966695325.a n = A081125 n

end A081125

/-! ## A081125.P17154786241852349741

`abs((n-2)*char[2*n]-n)*a(n-1)` with `a(0)=1`
-/

namespace A081125.P17154786241852349741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((n : ℤ) - 2) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)| * a (n - 1)

end

end A081125.P17154786241852349741

namespace A081125

/-- `abs((n-2)*char[2*n]-n)*a(n-1)` -/
def P17154786241852349741.Spec : Prop :=
  ∀ n, P17154786241852349741.a n = A081125 n

end A081125

/-! ## A081125.P18394073075064774916

`A370890(∑[n+1]+1)`
-/

namespace A081125.P18394073075064774916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370890 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081125.P18394073075064774916

namespace A081125

/-- `A370890(∑[n+1]+1)` -/
def P18394073075064774916.Spec : Prop :=
  ∀ n, P18394073075064774916.a n = A081125 n

end A081125

/-! ## A081125.P7966092826534373759

`∏[A124625(n)+1]/2`
-/

namespace A081125.P7966092826534373759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A081125.P7966092826534373759

namespace A081125

/-- `∏[A124625(n)+1]/2` -/
def P7966092826534373759.Spec : Prop :=
  ∀ n, P7966092826534373759.a n = (A081125 n : ℚ)

end A081125

/-! ## A081125.P7540215621569963500

`∏[ceil((A266256(n)+1)/2)]`
-/

namespace A081125.P7540215621569963500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266256 n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081125.P7540215621569963500

namespace A081125

/-- `∏[ceil((A266256(n)+1)/2)]` -/
def P7540215621569963500.Spec : Prop :=
  ∀ n, P7540215621569963500.a n = A081125 n

end A081125

/-! ## A081125.P11158552782803941154

`a(n-2)*A063210(n)` with `a(0)=1, a(1)=1`
-/

namespace A081125.P11158552782803941154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A063210 n

end

end A081125.P11158552782803941154

namespace A081125

/-- `a(n-2)*A063210(n)` -/
def P11158552782803941154.Spec : Prop :=
  ∀ n, P11158552782803941154.a n = A081125 n

end A081125

/-! ## A081125.P5126169084113955742

`∑[char[Δ[n²]]]!*A001405(n)`
-/

namespace A081125.P5126169084113955742
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A001405 n

end

end A081125.P5126169084113955742

namespace A081125

/-- `∑[char[Δ[n²]]]!*A001405(n)` -/
def P5126169084113955742.Spec : Prop :=
  ∀ n, P5126169084113955742.a n = A081125 n

end A081125

/-! ## A081125.P3051068304123847258

`a(n-1)*A141310(n-1)` with `a(0)=1`
-/

namespace A081125.P3051068304123847258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A141310 (n - 1)

end

end A081125.P3051068304123847258

namespace A081125

/-- `a(n-1)*A141310(n-1)` -/
def P3051068304123847258.Spec : Prop :=
  ∀ n, P3051068304123847258.a n = A081125 n

end A081125

/-! ## A081125.P4714236350453374875

`A124320(A101881(n))`
-/

namespace A081125.P4714236350453374875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A101881 n).toNat

end

end A081125.P4714236350453374875

namespace A081125

/-- `A124320(A101881(n))` -/
def P4714236350453374875.Spec : Prop :=
  ∀ n, P4714236350453374875.a n = A081125 n

end A081125

/-! ## A081125.P14163741137498787007

`∏[A092543(A133263(n))]`
-/

namespace A081125.P14163741137498787007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081125.P14163741137498787007

namespace A081125

/-- `∏[A092543(A133263(n))]` -/
def P14163741137498787007.Spec : Prop :=
  ∀ n, P14163741137498787007.a n = A081125 n

end A081125

/-!
# A081127: 11th binomial transform of (0,1,0,0,0,0,0,...).

The programs for A081127, the canonical program `A081127.P15761575817190365656` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081127 has offset 0).

The definition of A081127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081127.P1563493674248360745

`11^(n-1)*n`
-/

namespace A081127.P1563493674248360745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n : ℚ)

end

end A081127.P1563493674248360745

namespace A081127

/-- `11^(n-1)*n` -/
def P1563493674248360745.Spec : Prop :=
  ∀ n, P1563493674248360745.a n = (A081127 n : ℚ)

end A081127

/-! ## A081127.P15761575817190365656

`22*a(n-1)-121*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081127

/-- `22*a(n-1)-121*a(n-2)` -/
def P15761575817190365656.Spec : Prop :=
  ∀ n, P15761575817190365656.a n = A081127 n

theorem P15761575817190365656.correct : P15761575817190365656.Spec := by
  intro n
  simp only [A081127]

end A081127

/-! ## A081127.P13493401416928183981

`floor(A064749(n)/11)`
-/

namespace A081127.P13493401416928183981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064749 n : ℚ) / 11⌋

end

end A081127.P13493401416928183981

namespace A081127

/-- `floor(A064749(n)/11)` -/
def P13493401416928183981.Spec : Prop :=
  ∀ n, P13493401416928183981.a n = A081127 n

end A081127

/-! ## A081127.P13685960671274918736

`n*A001020(n)/11`
-/

namespace A081127.P13685960671274918736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001020 n : ℚ) / 11

end

end A081127.P13685960671274918736

namespace A081127

/-- `n*A001020(n)/11` -/
def P13685960671274918736.Spec : Prop :=
  ∀ n, P13685960671274918736.a n = (A081127 n : ℚ)

end A081127

/-! ## A081127.P3808312431793279149

`n*A003954(n)/12`
-/

namespace A081127.P3808312431793279149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A003954 n : ℚ) / 12

end

end A081127.P3808312431793279149

namespace A081127

/-- `n*A003954(n)/12` -/
def P3808312431793279149.Spec : Prop :=
  ∀ n, P3808312431793279149.a n = (A081127 n : ℚ)

end A081127

/-! ## A081127.P10746809996249682384

`11^round(log(cosh(n)))*A005843(n)/2`
-/

namespace A081127.P10746809996249682384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (Real.cosh (n : ℝ))) : ℤ) * (A005843 n : ℚ) / 2

end

end A081127.P10746809996249682384

namespace A081127

/-- `11^round(log(cosh(n)))*A005843(n)/2` -/
def P10746809996249682384.Spec : Prop :=
  ∀ n, P10746809996249682384.a n = (A081127 n : ℚ)

end A081127

/-! ## A081127.P13538381635579790767

`lcm(n, A038315(A133263(n)-1))`
-/

namespace A081127.P13538381635579790767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A038315 (A133263 n - 1).toNat)

end

end A081127.P13538381635579790767

namespace A081127

/-- `lcm(n, A038315(A133263(n)-1))` -/
def P13538381635579790767.Spec : Prop :=
  ∀ n, (P13538381635579790767.a n : ℤ) = A081127 n

end A081127

/-! ## A081127.P17551500119748276509

`11*n*a(n-1)/(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A081127.P17551500119748276509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  11 * ((n : ℚ) * a (n - 1)) / ((n : ℤ) - 1 : ℚ)

end

end A081127.P17551500119748276509

namespace A081127

/-- `11*n*a(n-1)/(n-1)` -/
def P17551500119748276509.Spec : Prop :=
  ∀ n, P17551500119748276509.a n = (A081127 n : ℚ)

end A081127

/-! ## A081127.P1704250191149898837

`A000079(n+1)*A081141(n+1)/A001787(n+1)`
-/

namespace A081127.P1704250191149898837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A081141 (n + 1) : ℚ) / (A001787 (n + 1) : ℚ)

end

end A081127.P1704250191149898837

namespace A081127

/-- `A000079(n+1)*A081141(n+1)/A001787(n+1)` -/
def P1704250191149898837.Spec : Prop :=
  ∀ n, P1704250191149898837.a n = (A081127 n : ℚ)

end A081127

/-! ## A081127.P4294681217807442166

`lcm(n, A218018(A000124(n)))`
-/

namespace A081127.P4294681217807442166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A218018 (A000124 n).toNat)

end

end A081127.P4294681217807442166

namespace A081127

/-- `lcm(n, A218018(A000124(n)))` -/
def P4294681217807442166.Spec : Prop :=
  ∀ n, (P4294681217807442166.a n : ℤ) = A081127 n

end A081127

/-!
# A081128: 12th binomial transform of (0,1,0,0,0,0,0,0,...).

The programs for A081128, the canonical program `A081128.P10288902473851687808` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081128 has offset 0).

The definition of A081128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081128.P10288902473851687808

`12^(n-1)*n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081128

/-- `12^(n-1)*n` -/
def P10288902473851687808.Spec : Prop :=
  ∀ n, P10288902473851687808.a n = (A081128 n : ℚ)

end A081128

/-! ## A081128.P8111702446549665862

`round((3^n*A002697(n)+1)/3)`
-/

namespace A081128.P8111702446549665862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 ^ n : ℤ) * A002697 n + 1 : ℚ) / 3)

end

end A081128.P8111702446549665862

namespace A081128

/-- `round((3^n*A002697(n)+1)/3)` -/
def P8111702446549665862.Spec : Prop :=
  ∀ n, P8111702446549665862.a n = A081128 n

end A081128

/-! ## A081128.P15291363447214409290

`A001787(n)*A003949(n)/7`
-/

namespace A081128.P15291363447214409290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n * A003949 n : ℚ) / 7

end

end A081128.P15291363447214409290

namespace A081128

/-- `A001787(n)*A003949(n)/7` -/
def P15291363447214409290.Spec : Prop :=
  ∀ n, P15291363447214409290.a n = (A081128 n : ℚ)

end A081128

/-! ## A081128.P17679413381307951665

`lcm(A002697(n), A027471(n+1))`
-/

namespace A081128.P17679413381307951665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002697 n) (A027471 (n + 1))

end

end A081128.P17679413381307951665

namespace A081128

/-- `lcm(A002697(n), A027471(n+1))` -/
def P17679413381307951665.Spec : Prop :=
  ∀ n, (P17679413381307951665.a n : ℤ) = A081128 n

end A081128

/-! ## A081128.P761042783039508919

`4*3*n*a(n-1)/(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A081128.P761042783039508919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (3 * ((n : ℚ) * a (n - 1))) / ((n : ℤ) - 1 : ℚ)

end

end A081128.P761042783039508919

namespace A081128

/-- `4*3*n*a(n-1)/(n-1)` -/
def P761042783039508919.Spec : Prop :=
  ∀ n, P761042783039508919.a n = (A081128 n : ℚ)

end A081128

/-! ## A081128.P14232965908167206362

`round(A064750(n)/12)`
-/

namespace A081128.P14232965908167206362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064750 n : ℚ) / 12)

end

end A081128.P14232965908167206362

namespace A081128

/-- `round(A064750(n)/12)` -/
def P14232965908167206362.Spec : Prop :=
  ∀ n, P14232965908167206362.a n = A081128 n

end A081128

/-! ## A081128.P12035965448881801070

`n*A001021(n)/12`
-/

namespace A081128.P12035965448881801070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001021 n : ℚ) / 12

end

end A081128.P12035965448881801070

namespace A081128

/-- `n*A001021(n)/12` -/
def P12035965448881801070.Spec : Prop :=
  ∀ n, P12035965448881801070.a n = (A081128 n : ℚ)

end A081128

/-! ## A081128.P9304585709586215965

`A027471(n+1)*A081039(n)/A016777(n+1)`
-/

namespace A081128.P9304585709586215965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 1) * A081039 n : ℚ) / (A016777 (n + 1) : ℚ)

end

end A081128.P9304585709586215965

namespace A081128

/-- `A027471(n+1)*A081039(n)/A016777(n+1)` -/
def P9304585709586215965.Spec : Prop :=
  ∀ n, P9304585709586215965.a n = (A081128 n : ℚ)

end A081128

/-! ## A081128.P14332829022198137991

`A000079(n+1)*A081142(n+1)/A001787(n+1)`
-/

namespace A081128.P14332829022198137991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A081142 (n + 1) : ℚ) / (A001787 (n + 1) : ℚ)

end

end A081128.P14332829022198137991

namespace A081128

/-- `A000079(n+1)*A081142(n+1)/A001787(n+1)` -/
def P14332829022198137991.Spec : Prop :=
  ∀ n, P14332829022198137991.a n = (A081128 n : ℚ)

end A081128

/-!
# A081129: Differences of Beatty sequence for cube root of 3.

The programs for A081129, the canonical program `A081129.P9800067666392746680` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081129 has offset 0).

The definition of A081129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081129.P9800067666392746680

`floor((n+1)*3^(1/3))-floor(n*3^(1/3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081129

/-- `floor((n+1)*3^(1/3))-floor(n*3^(1/3))` -/
def P9800067666392746680.Spec : Prop :=
  ∀ n, P9800067666392746680.a n = A081129 n

theorem P9800067666392746680.correct : P9800067666392746680.Spec := by
  intro n
  simp only [A081129]

end A081129

/-! ## A081129.P10177796052574552976

`A060594(Δ[comp[A059540(n+1)]]²+1)`
-/

namespace A081129.P10177796052574552976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059540 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1).toNat

end

end A081129.P10177796052574552976

namespace A081129

/-- `A060594(Δ[comp[A059540(n+1)]]²+1)` -/
def P10177796052574552976.Spec : Prop :=
  ∀ n, P10177796052574552976.a n = A081129 n

end A081129

/-!
# A081130: Square array of binomial transforms of (0,0,1,0,0,0,...), read by antidiagonals.

The programs for A081130, there is no canonical definition to state claims against.
-/

/-! ## A081130.P2219038381507758367

`A089216(3*A320750(n+1))`
-/

namespace A081130.P2219038381507758367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089216 (3 * A320750 (n + 1)).toNat

end

end A081130.P2219038381507758367

/-! ## A081130.P10821852495321529599

`A290437(A152977(n))%A152977(n)`
-/

namespace A081130.P10821852495321529599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290437 (A152977 n).toNat) (A152977 n)

end

end A081130.P10821852495321529599

/-! ## A081130.P2748226029710011142

`A096674(n+1)%A164312(A096670(n+1))`
-/

namespace A081130.P2748226029710011142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096674 (n + 1)) (A164312 (A096670 (n + 1)).toNat)

end

end A081130.P2748226029710011142

/-! ## A081130.P18040827080292461582

`A037849(xor(3, A269948(n)))`
-/

namespace A081130.P18040827080292461582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (Int.xor 3 (A269948 n)).toNat

end

end A081130.P18040827080292461582

/-! ## A081130.P10116368511077845368

`dr(A321412(A152977(n)+1))`
-/

namespace A081130.P10116368511077845368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A321412 (A152977 n + 1).toNat)

end

end A081130.P10116368511077845368

/-!
# A081131: a(n) = n^(n-2) * binomial(n,2).

The programs for A081131, there is no canonical definition to state claims against.
-/

/-! ## A081131.P726913823038403395

`n^abs(2-n)*C(n, 2)`
-/

namespace A081131.P726913823038403395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|2 - (n : ℤ)| : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081131.P726913823038403395

/-! ## A081131.P6327797364830603747

`(n-1)/2*n^abs(1-n)`
-/

namespace A081131.P6327797364830603747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A081131.P6327797364830603747

/-! ## A081131.P188718472459571506

`floor(n^floor(n-atan(n))*C(n, 2))`
-/

namespace A081131.P188718472459571506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ) * (Nat.choose n 2 : ℚ)⌋

end

end A081131.P188718472459571506

/-! ## A081131.P6926606789166642927

`abs((n-∑[n])*A000272(n))`
-/

namespace A081131.P6926606789166642927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A000272 n|

end

end A081131.P6926606789166642927

/-! ## A081131.P12082914536827232275

`floor(n^floor(n-atan(n))*A161680(n))`
-/

namespace A081131.P12082914536827232275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ) * (A161680 n : ℚ)⌋

end

end A081131.P12082914536827232275

/-! ## A081131.P9230168244589547816

`lcm((-1)^n, A070896(A028310(n)))`
-/

namespace A081131.P9230168244589547816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A070896 (A028310 n).toNat)

end

end A081131.P9230168244589547816

/-! ## A081131.P5808501514366941757

`A000272(n)*A152947(n+1)-A000272(n)`
-/

namespace A081131.P5808501514366941757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A152947 (n + 1) - A000272 n

end

end A081131.P5808501514366941757

/-! ## A081131.P4123280230371753007

`n*A206855(n)/4`
-/

namespace A081131.P4123280230371753007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A206855 n : ℚ) / 4

end

end A081131.P4123280230371753007

/-! ## A081131.P1811450162855684031

`A081918(n)-n^n`
-/

namespace A081131.P1811450162855684031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081918 n - (n ^ n : ℤ)

end

end A081131.P1811450162855684031

/-! ## A081131.P643481101526988735

`A066274(A028310(n))/2`
-/

namespace A081131.P643481101526988735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (A028310 n).toNat : ℚ) / 2

end

end A081131.P643481101526988735

/-!
# A081132: a(n) = (n+1)^n*binomial(n+2,2).

The programs for A081132, there is no canonical definition to state claims against.
-/

/-! ## A081132.P2083967832050948026

`(n+1)^n*∑[n+1]`
-/

namespace A081132.P2083967832050948026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081132.P2083967832050948026

/-! ## A081132.P8876149437974411043

`(n+1)^n/tan(acot(∑[n+1]))`
-/

namespace A081132.P8876149437974411043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℝ) / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A081132.P8876149437974411043

/-! ## A081132.P8727227807423860225

`lcm(n+2, (n+1)^(n+1))/2`
-/

namespace A081132.P8727227807423860225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ (n + 1)) : ℚ) / 2

end

end A081132.P8727227807423860225

/-! ## A081132.P10029619660991851754

`A055897(n+2)/2`
-/

namespace A081132.P10029619660991851754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055897 (n + 2) : ℚ) / 2

end

end A081132.P10029619660991851754

/-! ## A081132.P5494478722848224130

`A055134(∑[n+2]+3)`
-/

namespace A081132.P5494478722848224130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A081132.P5494478722848224130

/-! ## A081132.P10873498190272694271

`(A351331(n+1)+n)/2`
-/

namespace A081132.P10873498190272694271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351331 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A081132.P10873498190272694271

/-! ## A081132.P16463159071372015403

`A225723(∑[n+1]+1)/2`
-/

namespace A081132.P16463159071372015403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225723 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A081132.P16463159071372015403

/-! ## A081132.P15351424366841666101

`A228154(∑[n+1]+1)/2`
-/

namespace A081132.P15351424366841666101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228154 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A081132.P15351424366841666101

/-! ## A081132.P11413508029939910024

`(A028387(n)+1)*(n+1)^n/2`
-/

namespace A081132.P11413508029939910024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028387 n + 1) * ((n + 1) ^ n : ℤ) : ℚ) / 2

end

end A081132.P11413508029939910024

/-! ## A081132.P2486160095467651092

`A229078(n+1)-A081131(n+1)`
-/

namespace A081132.P2486160095467651092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229078 (n + 1) - A081131 (n + 1)

end

end A081132.P2486160095467651092

/-!
# A081133: a(n) = n^n*binomial(n+2, 2).

The programs for A081133, the canonical program `A081133.P10380412885014809870` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081133 has offset 0).

The definition of A081133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081133.P10380412885014809870

`n^n*(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081133

/-- `n^n*(n+1)*(n+2)/2` -/
def P10380412885014809870.Spec : Prop :=
  ∀ n, P10380412885014809870.a n = (A081133 n : ℚ)

end A081133

/-! ## A081133.P4477613251789490626

`C(n+2, 2)/n^-n`
-/

namespace A081133.P4477613251789490626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℚ) / (n : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A081133.P4477613251789490626

namespace A081133

/-- `C(n+2, 2)/n^-n` -/
def P4477613251789490626.Spec : Prop :=
  ∀ n, P4477613251789490626.a n = (A081133 n : ℚ)

end A081133

/-! ## A081133.P14033220315284824186

`floor(∑[n+1]/acot(n^n))`
-/

namespace A081133.P14033220315284824186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (n ^ n : ℝ)⌋

end

end A081133.P14033220315284824186

namespace A081133

/-- `floor(∑[n+1]/acot(n^n))` -/
def P14033220315284824186.Spec : Prop :=
  ∀ n, P14033220315284824186.a n = A081133 n

end A081133

/-! ## A081133.P13864252827906793392

`∑[n+1]/tan(acot(n^n))`
-/

namespace A081133.P13864252827906793392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (n ^ n : ℝ))

end

end A081133.P13864252827906793392

namespace A081133

/-- `∑[n+1]/tan(acot(n^n))` -/
def P13864252827906793392.Spec : Prop :=
  ∀ n, P13864252827906793392.a n = (A081133 n : ℝ)

end A081133

/-! ## A081133.P11142918313255256005

`n^n/cot(atan(∑[n+1]))`
-/

namespace A081133.P11142918313255256005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℝ) / Real.cot (Real.arctan ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A081133.P11142918313255256005

namespace A081133

/-- `n^n/cot(atan(∑[n+1]))` -/
def P11142918313255256005.Spec : Prop :=
  ∀ n, P11142918313255256005.a n = (A081133 n : ℝ)

end A081133

/-! ## A081133.P5975368269660148798

`A395701(∑[n+3])`
-/

namespace A081133.P5975368269660148798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395701 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081133.P5975368269660148798

namespace A081133

/-- `A395701(∑[n+3])` -/
def P5975368269660148798.Spec : Prop :=
  ∀ n, P5975368269660148798.a n = A081133 n

end A081133

/-! ## A081133.P17232679526221744678

`(A028387(n)+1)*n^n/2`
-/

namespace A081133.P17232679526221744678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028387 n + 1) * (n ^ n : ℤ) : ℚ) / 2

end

end A081133.P17232679526221744678

namespace A081133

/-- `(A028387(n)+1)*n^n/2` -/
def P17232679526221744678.Spec : Prop :=
  ∀ n, P17232679526221744678.a n = (A081133 n : ℚ)

end A081133

/-! ## A081133.P2035368121127280185

`abs(n^n*A000217(n+1)-1)+1`
-/

namespace A081133.P2035368121127280185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) * A000217 (n + 1) - 1| + 1

end

end A081133.P2035368121127280185

namespace A081133

/-- `abs(n^n*A000217(n+1)-1)+1` -/
def P2035368121127280185.Spec : Prop :=
  ∀ n, P2035368121127280185.a n = A081133 n

end A081133

/-! ## A081133.P7400010940144464012

`A244137(eq[2, A002262(n)])/2`
-/

namespace A081133.P7400010940144464012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A081133.P7400010940144464012

namespace A081133

/-- `A244137(eq[2, A002262(n)])/2` -/
def P7400010940144464012.Spec : Prop :=
  ∀ n, P7400010940144464012.a n = (A081133 n : ℚ)

end A081133

/-! ## A081133.P15336869464409035789

`record[(A061579(n)+1)*A174551(n)]`
-/

namespace A081133.P15336869464409035789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061579 n + 1) * A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081133.P15336869464409035789

namespace A081133

/-- `record[(A061579(n)+1)*A174551(n)]` -/
def P15336869464409035789.Spec : Prop :=
  ∀ n, P15336869464409035789.a n = A081133 n

end A081133

/-!
# A081134: Distance to nearest power of 3.

The programs for A081134, the canonical program `A081134.P13514993458830685273` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081134 has offset 1).

The definition of A081134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081134.P13514993458830685273

`∑[floor(a(floor(n/3)))]` with `a(0)=0, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081134

/-- `∑[floor(a(floor(n/3)))]` -/
def P13514993458830685273.Spec : Prop :=
  ∀ n, P13514993458830685273.a n = A081134 (n + 1)

theorem P13514993458830685273.correct : P13514993458830685273.Spec := by
  intro n
  simp only [A081134, Nat.add_sub_cancel]

end A081134

/-! ## A081134.P5036394064650699341

`∑[2-Δ[A003605(n)]]`
-/

namespace A081134.P5036394064650699341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081134.P5036394064650699341

namespace A081134

/-- `∑[2-Δ[A003605(n)]]` -/
def P5036394064650699341.Spec : Prop :=
  ∀ n, P5036394064650699341.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P3212149766805598438

`Δ[n²]-A080727(n)`
-/

namespace A081134.P3212149766805598438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A080727 n

end

end A081134.P3212149766805598438

namespace A081134

/-- `Δ[n²]-A080727(n)` -/
def P3212149766805598438.Spec : Prop :=
  ∀ n, P3212149766805598438.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P8902396963913043920

`2*(n+1)-A003605(n+1)`
-/

namespace A081134.P8902396963913043920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003605 (n + 1)

end

end A081134.P8902396963913043920

namespace A081134

/-- `2*(n+1)-A003605(n+1)` -/
def P8902396963913043920.Spec : Prop :=
  ∀ n, P8902396963913043920.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P8692709052584763795

`A267872(n)%A080727(n)`
-/

namespace A081134.P8692709052584763795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267872 n) (A080727 n)

end

end A081134.P8692709052584763795

namespace A081134

/-- `A267872(n)%A080727(n)` -/
def P8692709052584763795.Spec : Prop :=
  ∀ n, P8692709052584763795.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P16440165598725159234

`n-A023443(A080727(n)-n)`
-/

namespace A081134.P16440165598725159234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A080727 n - (n : ℤ)).toNat

end

end A081134.P16440165598725159234

namespace A081134

/-- `n-A023443(A080727(n)-n)` -/
def P16440165598725159234.Spec : Prop :=
  ∀ n, P16440165598725159234.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P5787985269916285915

`∑[A003605(n)+2-A003605(n+1)]`
-/

namespace A081134.P5787985269916285915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n + (2 - A003605 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081134.P5787985269916285915

namespace A081134

/-- `∑[A003605(n)+2-A003605(n+1)]` -/
def P5787985269916285915.Spec : Prop :=
  ∀ n, P5787985269916285915.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P10143730328990907214

`A004273(n+1)+1-A003605(n+1)`
-/

namespace A081134.P10143730328990907214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + (1 - A003605 (n + 1))

end

end A081134.P10143730328990907214

namespace A081134

/-- `A004273(n+1)+1-A003605(n+1)` -/
def P10143730328990907214.Spec : Prop :=
  ∀ n, P10143730328990907214.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P18362559567109172512

`A080782(A080782(n+1))+n-A080727(n)`
-/

namespace A081134.P18362559567109172512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A080782 (n + 1)).toNat + ((n : ℤ) - A080727 n)

end

end A081134.P18362559567109172512

namespace A081134

/-- `A080782(A080782(n+1))+n-A080727(n)` -/
def P18362559567109172512.Spec : Prop :=
  ∀ n, P18362559567109172512.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P7171168285691998026

`((n+1)*A001316(A001316(n)))%A003605(n+1)`
-/

namespace A081134.P7171168285691998026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A001316 (A001316 n).toNat) (A003605 (n + 1))

end

end A081134.P7171168285691998026

namespace A081134

/-- `((n+1)*A001316(A001316(n)))%A003605(n+1)` -/
def P7171168285691998026.Spec : Prop :=
  ∀ n, P7171168285691998026.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P2174487447722809897

`∑[1-Δ[A006166(n)]]`
-/

namespace A081134.P2174487447722809897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081134.P2174487447722809897

namespace A081134

/-- `∑[1-Δ[A006166(n)]]` -/
def P2174487447722809897.Spec : Prop :=
  ∀ n, P2174487447722809897.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P3000253026774030222

`1-A006166(n+1)+n`
-/

namespace A081134.P3000253026774030222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006166 (n + 1) + (n : ℤ)

end

end A081134.P3000253026774030222

namespace A081134

/-- `1-A006166(n+1)+n` -/
def P3000253026774030222.Spec : Prop :=
  ∀ n, P3000253026774030222.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P15432495666996276391

`∑[2-Δ[A080722(n+1)]]`
-/

namespace A081134.P15432495666996276391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081134.P15432495666996276391

namespace A081134

/-- `∑[2-Δ[A080722(n+1)]]` -/
def P15432495666996276391.Spec : Prop :=
  ∀ n, P15432495666996276391.a n = A081134 (n + 1)

end A081134

/-! ## A081134.P9042681023929297692

`A079945(A079945(n))-(A003605(n+1)+1)`
-/

namespace A081134.P9042681023929297692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 (A079945 n).toNat - (A003605 (n + 1) + 1)

end

end A081134.P9042681023929297692

namespace A081134

/-- `A079945(A079945(n))-(A003605(n+1)+1)` -/
def P9042681023929297692.Spec : Prop :=
  ∀ n, P9042681023929297692.a n = A081134 (n + 1)

end A081134

/-!
# A081135: 5th binomial transform of (0,0,1,0,0,0, ...).

The programs for A081135, the canonical program `A081135.P10528812410873061656` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081135 has offset 0).

The definition of A081135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081135.P3664157447269966480

`5^(n-2)*C(n, 2)`
-/

namespace A081135.P3664157447269966480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081135.P3664157447269966480

namespace A081135

/-- `5^(n-2)*C(n, 2)` -/
def P3664157447269966480.Spec : Prop :=
  ∀ n, P3664157447269966480.a n = (A081135 n : ℚ)

end A081135

/-! ## A081135.P18159893663116806527

`n*(n-1)*5^(n-2)/2`
-/

namespace A081135.P18159893663116806527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) / 2

end

end A081135.P18159893663116806527

namespace A081135

/-- `n*(n-1)*5^(n-2)/2` -/
def P18159893663116806527.Spec : Prop :=
  ∀ n, P18159893663116806527.a n = (A081135 n : ℚ)

end A081135

/-! ## A081135.P10528812410873061656

`15*a(n-1)-75*a(n-2)+125*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081135

/-- `15*a(n-1)-75*a(n-2)+125*a(n-3)` -/
def P10528812410873061656.Spec : Prop :=
  ∀ n, P10528812410873061656.a n = A081135 n

theorem P10528812410873061656.correct : P10528812410873061656.Spec := by
  intro n
  simp only [A081135]

end A081135

/-! ## A081135.P17479218066551837038

`A084902((n-1)%(n+1))`
-/

namespace A081135.P17479218066551837038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A081135.P17479218066551837038

namespace A081135

/-- `A084902((n-1)%(n+1))` -/
def P17479218066551837038.Spec : Prop :=
  ∀ n, P17479218066551837038.a n = A081135 n

end A081135

/-! ## A081135.P3668576927813770327

`A084902(log2(A011782(n)))`
-/

namespace A081135.P3668576927813770327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A081135.P3668576927813770327

namespace A081135

/-- `A084902(log2(A011782(n)))` -/
def P3668576927813770327.Spec : Prop :=
  ∀ n, P3668576927813770327.a n = A081135 n

end A081135

/-! ## A081135.P15772836903197531818

`A084902(A028310(n)-1)`
-/

namespace A081135.P15772836903197531818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (A028310 n - 1).toNat

end

end A081135.P15772836903197531818

namespace A081135

/-- `A084902(A028310(n)-1)` -/
def P15772836903197531818.Spec : Prop :=
  ∀ n, P15772836903197531818.a n = A081135 n

end A081135

/-! ## A081135.P7717365633404134169

`A084902(val(A011782(n), 2))`
-/

namespace A081135.P7717365633404134169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (SequenceMachineLib.valuation (A011782 n).toNat 2)

end

end A081135.P7717365633404134169

namespace A081135

/-- `A084902(val(A011782(n), 2))` -/
def P7717365633404134169.Spec : Prop :=
  ∀ n, P7717365633404134169.a n = A081135 n

end A081135

/-! ## A081135.P18009262854715363768

`A084902(val(A005054(n), 5))`
-/

namespace A081135.P18009262854715363768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (SequenceMachineLib.valuation (A005054 n).toNat 5)

end

end A081135.P18009262854715363768

namespace A081135

/-- `A084902(val(A005054(n), 5))` -/
def P18009262854715363768.Spec : Prop :=
  ∀ n, P18009262854715363768.a n = A081135 n

end A081135

/-! ## A081135.P11859300477550162350

`A084902(A014473(A000124(n)))`
-/

namespace A081135.P11859300477550162350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084902 (A014473 (A000124 n).toNat).toNat

end

end A081135.P11859300477550162350

namespace A081135

/-- `A084902(A014473(A000124(n)))` -/
def P11859300477550162350.Spec : Prop :=
  ∀ n, P11859300477550162350.a n = A081135 n

end A081135

/-! ## A081135.P1112515912841385126

`Δ[A081916(n)]%A081916(n)`
-/

namespace A081135.P1112515912841385126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A081916 n)

end

end A081135.P1112515912841385126

namespace A081135

/-- `Δ[A081916(n)]%A081916(n)` -/
def P1112515912841385126.Spec : Prop :=
  ∀ n, P1112515912841385126.a n = A081135 n

end A081135

/-!
# A081136: 6th binomial transform of (0,0,1,0,0,0, ...).

The programs for A081136, the canonical program `A081136.P501880632944464455` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081136 has offset 0).

The definition of A081136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081136.P11331919626304247044

`6^(n-2)*C(n, 2)`
-/

namespace A081136.P11331919626304247044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081136.P11331919626304247044

namespace A081136

/-- `6^(n-2)*C(n, 2)` -/
def P11331919626304247044.Spec : Prop :=
  ∀ n, P11331919626304247044.a n = (A081136 n : ℚ)

end A081136

/-! ## A081136.P501880632944464455

`18*a(n-1)-108*a(n-2)+216*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081136

/-- `18*a(n-1)-108*a(n-2)+216*a(n-3)` -/
def P501880632944464455.Spec : Prop :=
  ∀ n, P501880632944464455.a n = A081136 n

theorem P501880632944464455.correct : P501880632944464455.Spec := by
  intro n
  simp only [A081136]

end A081136

/-! ## A081136.P6775743842105242928

`A081912(n)-6^n`
-/

namespace A081136.P6775743842105242928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081912 n - (6 ^ n : ℤ)

end

end A081136.P6775743842105242928

namespace A081136

/-- `A081912(n)-6^n` -/
def P6775743842105242928.Spec : Prop :=
  ∀ n, P6775743842105242928.a n = A081136 n

end A081136

/-! ## A081136.P3480578302286655041

`A000244(n)/18*A001815(n)`
-/

namespace A081136.P3480578302286655041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / 18 * (A001815 n : ℚ)

end

end A081136.P3480578302286655041

namespace A081136

/-- `A000244(n)/18*A001815(n)` -/
def P3480578302286655041.Spec : Prop :=
  ∀ n, P3480578302286655041.a n = (A081136 n : ℚ)

end A081136

/-! ## A081136.P3227017732149221569

`A000400(A289207(n))*A161680(n)`
-/

namespace A081136.P3227017732149221569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A289207 n).toNat * A161680 n

end

end A081136.P3227017732149221569

namespace A081136

/-- `A000400(A289207(n))*A161680(n)` -/
def P3227017732149221569.Spec : Prop :=
  ∀ n, P3227017732149221569.a n = A081136 n

end A081136

/-! ## A081136.P15194141011433816240

`3/(n+1)*A081144(n+1)`
-/

namespace A081136.P15194141011433816240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A081144 (n + 1) : ℚ)

end

end A081136.P15194141011433816240

namespace A081136

/-- `3/(n+1)*A081144(n+1)` -/
def P15194141011433816240.Spec : Prop :=
  ∀ n, P15194141011433816240.a n = (A081136 n : ℚ)

end A081136

/-! ## A081136.P10209365286292207410

`lcm(A038255(A133263(n)), A161680(n))`
-/

namespace A081136.P10209365286292207410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038255 (A133263 n).toNat) (A161680 n)

end

end A081136.P10209365286292207410

namespace A081136

/-- `lcm(A038255(A133263(n)), A161680(n))` -/
def P10209365286292207410.Spec : Prop :=
  ∀ n, (P10209365286292207410.a n : ℤ) = A081136 n

end A081136

/-! ## A081136.P10689410858301480854

`A038255(A133263(n))%A036084(n)`
-/

namespace A081136.P10689410858301480854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038255 (A133263 n).toNat) (A036084 n)

end

end A081136.P10689410858301480854

namespace A081136

/-- `A038255(A133263(n))%A036084(n)` -/
def P10689410858301480854.Spec : Prop :=
  ∀ n, P10689410858301480854.a n = A081136 n

end A081136

/-! ## A081136.P15216400472435118960

`A081142(n)/Δ[A034008(n)]`
-/

namespace A081136.P15216400472435118960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081142 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A081136.P15216400472435118960

namespace A081136

/-- `A081142(n)/Δ[A034008(n)]` -/
def P15216400472435118960.Spec : Prop :=
  ∀ n, P15216400472435118960.a n = (A081136 n : ℚ)

end A081136

/-!
# A081138: 8th binomial transform of (0,0,1,0,0,0, ...).

The programs for A081138, the canonical program `A081138.P14588161519622573013` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081138 has offset 0).

The definition of A081138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081138.P3891510521073034101

`8^(n-2)*C(n, 2)`
-/

namespace A081138.P3891510521073034101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081138.P3891510521073034101

namespace A081138

/-- `8^(n-2)*C(n, 2)` -/
def P3891510521073034101.Spec : Prop :=
  ∀ n, P3891510521073034101.a n = (A081138 n : ℚ)

end A081138

/-! ## A081138.P14588161519622573013

`24*a(n-1)-192*a(n-2)+512*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081138

/-- `24*a(n-1)-192*a(n-2)+512*a(n-3)` -/
def P14588161519622573013.Spec : Prop :=
  ∀ n, P14588161519622573013.a n = A081138 n

theorem P14588161519622573013.correct : P14588161519622573013.Spec := by
  intro n
  simp only [A081138]

end A081138

/-! ## A081138.P18385692219786803161

`8^(n-2)*A161680(n)`
-/

namespace A081138.P18385692219786803161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A161680 n : ℚ)

end

end A081138.P18385692219786803161

namespace A081138

/-- `8^(n-2)*A161680(n)` -/
def P18385692219786803161.Spec : Prop :=
  ∀ n, P18385692219786803161.a n = (A081138 n : ℚ)

end A081138

/-! ## A081138.P4943867682145402893

`A001815(n)/2*A034008(n)²`
-/

namespace A081138.P4943867682145402893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 n : ℚ) / 2 * (A034008 n ^ 2 : ℚ)

end

end A081138.P4943867682145402893

namespace A081138

/-- `A001815(n)/2*A034008(n)²` -/
def P4943867682145402893.Spec : Prop :=
  ∀ n, P4943867682145402893.a n = (A081138 n : ℚ)

end A081138

/-! ## A081138.P29584793458073955

`A049610(A004275(n))*A049610(n)`
-/

namespace A081138.P29584793458073955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (A004275 n).toNat * A049610 n

end

end A081138.P29584793458073955

namespace A081138

/-- `A049610(A004275(n))*A049610(n)` -/
def P29584793458073955.Spec : Prop :=
  ∀ n, P29584793458073955.a n = A081138 n

end A081138

/-! ## A081138.P16158540144754113006

`A049610(record[A029578(n)])*A049610(n)`
-/

namespace A081138.P16158540144754113006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A049610 n

end

end A081138.P16158540144754113006

namespace A081138

/-- `A049610(record[A029578(n)])*A049610(n)` -/
def P16158540144754113006.Spec : Prop :=
  ∀ n, P16158540144754113006.a n = A081138 n

end A081138

/-! ## A081138.P11634946605788965532

`A034008(n)*A049610(n)*A097067(n)`
-/

namespace A081138.P11634946605788965532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A049610 n * A097067 n

end

end A081138.P11634946605788965532

namespace A081138

/-- `A034008(n)*A049610(n)*A097067(n)` -/
def P11634946605788965532.Spec : Prop :=
  ∀ n, P11634946605788965532.a n = A081138 n

end A081138

/-! ## A081138.P10038900194492799963

`A034008(n)*A161680(n)*A034008(n)²`
-/

namespace A081138.P10038900194492799963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A161680 n * A034008 n ^ 2

end

end A081138.P10038900194492799963

namespace A081138

/-- `A034008(n)*A161680(n)*A034008(n)²` -/
def P10038900194492799963.Spec : Prop :=
  ∀ n, P10038900194492799963.a n = A081138 n

end A081138

/-! ## A081138.P6724926362852149482

`A161680(n)*A166444(n)*A166444(n)²`
-/

namespace A081138.P6724926362852149482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A166444 n * A166444 n ^ 2

end

end A081138.P6724926362852149482

namespace A081138

/-- `A161680(n)*A166444(n)*A166444(n)²` -/
def P6724926362852149482.Spec : Prop :=
  ∀ n, P6724926362852149482.a n = A081138 n

end A081138

/-! ## A081138.P16434271795047734393

`A049610(n)*A049610(A066201(A133263(n)))`
-/

namespace A081138.P16434271795047734393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n * A049610 (A066201 (A133263 n).toNat).toNat

end

end A081138.P16434271795047734393

namespace A081138

/-- `A049610(n)*A049610(A066201(A133263(n)))` -/
def P16434271795047734393.Spec : Prop :=
  ∀ n, P16434271795047734393.a n = A081138 n

end A081138

/-! ## A081138.P12168361178801116682

`lcm(A004526(n), A038279(A133263(n)))`
-/

namespace A081138.P12168361178801116682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A038279 (A133263 n).toNat)

end

end A081138.P12168361178801116682

namespace A081138

/-- `lcm(A004526(n), A038279(A133263(n)))` -/
def P12168361178801116682.Spec : Prop :=
  ∀ n, (P12168361178801116682.a n : ℤ) = A081138 n

end A081138

/-!
# A081139: 9th binomial transform of (0,0,1,0,0,0,...).

The programs for A081139, the canonical program `A081139.P6661070876213778650` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081139 has offset 0).

The definition of A081139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081139.P15627572203900172363

`9^(n-2)*C(n, 2)`
-/

namespace A081139.P15627572203900172363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081139.P15627572203900172363

namespace A081139

/-- `9^(n-2)*C(n, 2)` -/
def P15627572203900172363.Spec : Prop :=
  ∀ n, P15627572203900172363.a n = (A081139 n : ℚ)

end A081139

/-! ## A081139.P6661070876213778650

`27*a(n-1)-243*a(n-2)+729*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081139

/-- `27*a(n-1)-243*a(n-2)+729*a(n-3)` -/
def P6661070876213778650.Spec : Prop :=
  ∀ n, P6661070876213778650.a n = A081139 n

theorem P6661070876213778650.correct : P6661070876213778650.Spec := by
  intro n
  simp only [A081139]

end A081139

/-! ## A081139.P5690190246351344459

`(∑[n]-n)*9^(n-2)`
-/

namespace A081139.P5690190246351344459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) * (9 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A081139.P5690190246351344459

namespace A081139

/-- `(∑[n]-n)*9^(n-2)` -/
def P5690190246351344459.Spec : Prop :=
  ∀ n, P5690190246351344459.a n = (A081139 n : ℚ)

end A081139

/-! ## A081139.P13674328231731849297

`floor(A129530(n)/3*3^(n-2))`
-/

namespace A081139.P13674328231731849297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129530 n : ℚ) / 3 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A081139.P13674328231731849297

namespace A081139

/-- `floor(A129530(n)/3*3^(n-2))` -/
def P13674328231731849297.Spec : Prop :=
  ∀ n, P13674328231731849297.a n = A081139 n

end A081139

/-! ## A081139.P15784969087220613016

`A128803(n)/A128803(ratio[A000079(n)])`
-/

namespace A081139.P15784969087220613016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128803 n : ℚ) / (A128803 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℚ)

end

end A081139.P15784969087220613016

namespace A081139

/-- `A128803(n)/A128803(ratio[A000079(n)])` -/
def P15784969087220613016.Spec : Prop :=
  ∀ n, P15784969087220613016.a n = (A081139 n : ℚ)

end A081139

/-! ## A081139.P1365844025000637844

`A128803(n)/A128803(A074389(or(1, 12*n)+9))`
-/

namespace A081139.P1365844025000637844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128803 n : ℚ) / (A128803 (A074389 (Nat.lor 1 (12 * n) + 9)).toNat : ℚ)

end

end A081139.P1365844025000637844

namespace A081139

/-- `A128803(n)/A128803(A074389(or(1, 12*n)+9))` -/
def P1365844025000637844.Spec : Prop :=
  ∀ n, P1365844025000637844.a n = (A081139 n : ℚ)

end A081139

/-! ## A081139.P7798141143668854585

`A081136(n)²/A038845(A289207(n))`
-/

namespace A081139.P7798141143668854585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081136 n ^ 2 : ℚ) / (A038845 (A289207 n).toNat : ℚ)

end

end A081139.P7798141143668854585

namespace A081139

/-- `A081136(n)²/A038845(A289207(n))` -/
def P7798141143668854585.Spec : Prop :=
  ∀ n, P7798141143668854585.a n = (A081139 n : ℚ)

end A081139

/-! ## A081139.P4707795882800282227

`A038291(A133263(n))%A034219(n)`
-/

namespace A081139.P4707795882800282227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038291 (A133263 n).toNat) (A034219 n)

end

end A081139.P4707795882800282227

namespace A081139

/-- `A038291(A133263(n))%A034219(n)` -/
def P4707795882800282227.Spec : Prop :=
  ∀ n, P4707795882800282227.a n = A081139 n

end A081139

/-!
# A081140: 10th binomial transform of (0,0,1,0,0,0,...).

The programs for A081140, the canonical program `A081140.P14034988746388667738` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081140 has offset 0).

The definition of A081140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081140.P1242890489138320107

`10^(n-2)*C(n, 2)`
-/

namespace A081140.P1242890489138320107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A081140.P1242890489138320107

namespace A081140

/-- `10^(n-2)*C(n, 2)` -/
def P1242890489138320107.Spec : Prop :=
  ∀ n, P1242890489138320107.a n = (A081140 n : ℚ)

end A081140

/-! ## A081140.P14034988746388667738

`30*a(n-1)-300*a(n-2)+1000*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081140

/-- `30*a(n-1)-300*a(n-2)+1000*a(n-3)` -/
def P14034988746388667738.Spec : Prop :=
  ∀ n, P14034988746388667738.a n = A081140 n

theorem P14034988746388667738.correct : P14034988746388667738.Spec := by
  intro n
  simp only [A081140]

end A081140

/-! ## A081140.P16571219893486452373

`2^(n-2)*A081135(n)`
-/

namespace A081140.P16571219893486452373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A081135 n : ℚ)

end

end A081140.P16571219893486452373

namespace A081140

/-- `2^(n-2)*A081135(n)` -/
def P16571219893486452373.Spec : Prop :=
  ∀ n, P16571219893486452373.a n = (A081140 n : ℚ)

end A081140

/-! ## A081140.P8753968266387995128

`10^(n-2)*A161680(n)`
-/

namespace A081140.P8753968266387995128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A161680 n : ℚ)

end

end A081140.P8753968266387995128

namespace A081140

/-- `10^(n-2)*A161680(n)` -/
def P8753968266387995128.Spec : Prop :=
  ∀ n, P8753968266387995128.a n = (A081140 n : ℚ)

end A081140

/-! ## A081140.P8245258235834680172

`5^(n-2)*A001815(n)/2`
-/

namespace A081140.P8245258235834680172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A001815 n : ℚ) / 2

end

end A081140.P8245258235834680172

namespace A081140

/-- `5^(n-2)*A001815(n)/2` -/
def P8245258235834680172.Spec : Prop :=
  ∀ n, P8245258235834680172.a n = (A081140 n : ℚ)

end A081140

/-! ## A081140.P15354711684956936435

`A081135(n)*A166444(n)`
-/

namespace A081140.P15354711684956936435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 n * A166444 n

end

end A081140.P15354711684956936435

namespace A081140

/-- `A081135(n)*A166444(n)` -/
def P15354711684956936435.Spec : Prop :=
  ∀ n, P15354711684956936435.a n = A081140 n

end A081140

/-! ## A081140.P13790287954855710972

`and(1-n, A038303(A133263(n)))`
-/

namespace A081140.P13790287954855710972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A038303 (A133263 n).toNat)

end

end A081140.P13790287954855710972

namespace A081140

/-- `and(1-n, A038303(A133263(n)))` -/
def P13790287954855710972.Spec : Prop :=
  ∀ n, P13790287954855710972.a n = A081140 n

end A081140

/-! ## A081140.P6114577861773644409

`lcm(A004526(n), A038303(A133263(n)))`
-/

namespace A081140.P6114577861773644409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A038303 (A133263 n).toNat)

end

end A081140.P6114577861773644409

namespace A081140

/-- `lcm(A004526(n), A038303(A133263(n)))` -/
def P6114577861773644409.Spec : Prop :=
  ∀ n, (P6114577861773644409.a n : ℤ) = A081140 n

end A081140

/-!
# A081141: 11th binomial transform of (0,0,1,0,0,0,...).

The programs for A081141, the canonical program `A081141.P15322102996010057424` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081141 has offset 0).

The definition of A081141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081141.P15322102996010057424

`11^(n-2)*C(n, 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081141

/-- `11^(n-2)*C(n, 2)` -/
def P15322102996010057424.Spec : Prop :=
  ∀ n, P15322102996010057424.a n = (A081141 n : ℚ)

end A081141

/-! ## A081141.P4327703980322588947

`11^(n-2)*A161680(n)`
-/

namespace A081141.P4327703980322588947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A161680 n : ℚ)

end

end A081141.P4327703980322588947

namespace A081141

/-- `11^(n-2)*A161680(n)` -/
def P4327703980322588947.Spec : Prop :=
  ∀ n, P4327703980322588947.a n = (A081141 n : ℚ)

end A081141

/-! ## A081141.P18241892848119370787

`11^(n-2)/(n+1)*A135503(n)`
-/

namespace A081141.P18241892848119370787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / (n + 1 : ℚ) * (A135503 n : ℚ)

end

end A081141.P18241892848119370787

namespace A081141

/-- `11^(n-2)/(n+1)*A135503(n)` -/
def P18241892848119370787.Spec : Prop :=
  ∀ n, P18241892848119370787.a n = (A081141 n : ℚ)

end A081141

/-! ## A081141.P1823173208033283305

`lcm(A038315(A133263(n)), A161680(n))`
-/

namespace A081141.P1823173208033283305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038315 (A133263 n).toNat) (A161680 n)

end

end A081141.P1823173208033283305

namespace A081141

/-- `lcm(A038315(A133263(n)), A161680(n))` -/
def P1823173208033283305.Spec : Prop :=
  ∀ n, (P1823173208033283305.a n : ℤ) = A081141 n

end A081141

/-! ## A081141.P6237039392244275144

`A081130(eq[11, A025581(n)])`
-/

namespace A081141.P6237039392244275144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081141.P6237039392244275144

namespace A081141

/-- `A081130(eq[11, A025581(n)])` -/
def P6237039392244275144.Spec : Prop :=
  ∀ n, P6237039392244275144.a n = A081141 n

end A081141

/-!
# A081142: 12th binomial transform of (0,0,1,0,0,0,...).

The programs for A081142, the canonical program `A081142.P7079913591281988695` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081142 has offset 0).

The definition of A081142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081142.P7079913591281988695

`12^(n-2)*C(n, 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081142

/-- `12^(n-2)*C(n, 2)` -/
def P7079913591281988695.Spec : Prop :=
  ∀ n, P7079913591281988695.a n = (A081142 n : ℚ)

end A081142

/-! ## A081142.P2958012753023414102

`2^(2*n-5)*3^(n-2)*n*(n-1)`
-/

namespace A081142.P2958012753023414102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 5 : ℤ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((n : ℤ) * ((n : ℤ) - 1) : ℚ)

end

end A081142.P2958012753023414102

namespace A081142

/-- `2^(2*n-5)*3^(n-2)*n*(n-1)` -/
def P2958012753023414102.Spec : Prop :=
  ∀ n, P2958012753023414102.a n = (A081142 n : ℚ)

end A081142

/-! ## A081142.P5833641639535202492

`6^(n-2)*A001815(n)/2`
-/

namespace A081142.P5833641639535202492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A001815 n : ℚ) / 2

end

end A081142.P5833641639535202492

namespace A081142

/-- `6^(n-2)*A001815(n)/2` -/
def P5833641639535202492.Spec : Prop :=
  ∀ n, P5833641639535202492.a n = (A081142 n : ℚ)

end A081142

/-! ## A081142.P6852692958417560219

`A011782(n)*A081136(n)/2`
-/

namespace A081142.P6852692958417560219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n * A081136 n : ℚ) / 2

end

end A081142.P6852692958417560219

namespace A081142

/-- `A011782(n)*A081136(n)/2` -/
def P6852692958417560219.Spec : Prop :=
  ∀ n, P6852692958417560219.a n = (A081142 n : ℚ)

end A081142

/-! ## A081142.P9331193532714610329

`lcm(A038845(A289207(n)), A081136(n))`
-/

namespace A081142.P9331193532714610329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038845 (A289207 n).toNat) (A081136 n)

end

end A081142.P9331193532714610329

namespace A081142

/-- `lcm(A038845(A289207(n)), A081136(n))` -/
def P9331193532714610329.Spec : Prop :=
  ∀ n, (P9331193532714610329.a n : ℤ) = A081142 n

end A081142

/-! ## A081142.P7305210780615885445

`A052780(n)*A133494(n)/6`
-/

namespace A081142.P7305210780615885445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052780 n * A133494 n : ℚ) / 6

end

end A081142.P7305210780615885445

namespace A081142

/-- `A052780(n)*A133494(n)/6` -/
def P7305210780615885445.Spec : Prop :=
  ∀ n, P7305210780615885445.a n = (A081142 n : ℚ)

end A081142

/-!
# A081143: 5th binomial transform of (0,0,0,1,0,0,0,0,......).

The programs for A081143, the canonical program `A081143.P6755850672867026893` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081143 has offset 0).

The definition of A081143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081143.P5911715241015742576

`5^(n-3)*C(n, 3)`
-/

namespace A081143.P5911715241015742576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.choose n 3 : ℚ)

end

end A081143.P5911715241015742576

namespace A081143

/-- `5^(n-3)*C(n, 3)` -/
def P5911715241015742576.Spec : Prop :=
  ∀ n, P5911715241015742576.a n = (A081143 n : ℚ)

end A081143

/-! ## A081143.P6755850672867026893

`20*a(n-1)-150*a(n-2)+500*a(n-3)-625*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081143

/-- `20*a(n-1)-150*a(n-2)+500*a(n-3)-625*a(n-4)` -/
def P6755850672867026893.Spec : Prop :=
  ∀ n, P6755850672867026893.a n = A081143 n

theorem P6755850672867026893.correct : P6755850672867026893.Spec := by
  intro n
  simp only [A081143]

end A081143

/-! ## A081143.P9463201627324776829

`A081916(n)-5^n`
-/

namespace A081143.P9463201627324776829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081916 n - (5 ^ n : ℤ)

end

end A081143.P9463201627324776829

namespace A081143

/-- `A081916(n)-5^n` -/
def P9463201627324776829.Spec : Prop :=
  ∀ n, P9463201627324776829.a n = A081143 n

end A081143

/-! ## A081143.P14505047433520649418

`abs(A000351(n)-A081916(n))`
-/

namespace A081143.P14505047433520649418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A081916 n|

end

end A081143.P14505047433520649418

namespace A081143

/-- `abs(A000351(n)-A081916(n))` -/
def P14505047433520649418.Spec : Prop :=
  ∀ n, P14505047433520649418.a n = A081143 n

end A081143

/-! ## A081143.P13731148332425352929

`A000038(n+1)-(A000351(n)-A081916(n))`
-/

namespace A081143.P13731148332425352929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - (A000351 n - A081916 n)

end

end A081143.P13731148332425352929

namespace A081143

/-- `A000038(n+1)-(A000351(n)-A081916(n))` -/
def P13731148332425352929.Spec : Prop :=
  ∀ n, P13731148332425352929.a n = A081143 n

end A081143

/-! ## A081143.P9709054727738900023

`(A000038(n)-1)*(A000351(n)-A081916(n))`
-/

namespace A081143.P9709054727738900023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) * (A000351 n - A081916 n)

end

end A081143.P9709054727738900023

namespace A081143

/-- `(A000038(n)-1)*(A000351(n)-A081916(n))` -/
def P9709054727738900023.Spec : Prop :=
  ∀ n, P9709054727738900023.a n = A081143 n

end A081143

/-! ## A081143.P14381704548050152564

`char[A035795(n+1)]-(A000351(n)-A081916(n))`
-/

namespace A081143.P14381704548050152564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035795 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A000351 n - A081916 n)

end

end A081143.P14381704548050152564

namespace A081143

/-- `char[A035795(n+1)]-(A000351(n)-A081916(n))` -/
def P14381704548050152564.Spec : Prop :=
  ∀ n, P14381704548050152564.a n = A081143 n

end A081143

/-!
# A081144: Starting at 1, four-fold convolution of A000400 (powers of 6).

The programs for A081144, the canonical program `A081144.P1416730031286323684` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081144 has offset 0).

The definition of A081144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081144.P1416730031286323684

`6^(n-3)*C(n, 3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081144

/-- `6^(n-3)*C(n, 3)` -/
def P1416730031286323684.Spec : Prop :=
  ∀ n, P1416730031286323684.a n = (A081144 n : ℚ)

end A081144

/-! ## A081144.P10572895223859395763

`6^(n-4)*n*(n-1)*(n-2)`
-/

namespace A081144.P10572895223859395763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * ((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ)

end

end A081144.P10572895223859395763

namespace A081144

/-- `6^(n-4)*n*(n-1)*(n-2)` -/
def P10572895223859395763.Spec : Prop :=
  ∀ n, P10572895223859395763.a n = (A081144 n : ℚ)

end A081144

/-! ## A081144.P2493270719621033055

`lcm(A002264(n), A013613(A060577(n)))`
-/

namespace A081144.P2493270719621033055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002264 n) (A013613 (A060577 n).toNat)

end

end A081144.P2493270719621033055

namespace A081144

/-- `lcm(A002264(n), A013613(A060577(n)))` -/
def P2493270719621033055.Spec : Prop :=
  ∀ n, (P2493270719621033055.a n : ℤ) = A081144 n

end A081144

/-! ## A081144.P13444509313995310144

`and(-A130519(n+1), A013613(A060577(n)))`
-/

namespace A081144.P13444509313995310144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A130519 (n + 1)) (A013613 (A060577 n).toNat)

end

end A081144.P13444509313995310144

namespace A081144

/-- `and(-A130519(n+1), A013613(A060577(n)))` -/
def P13444509313995310144.Spec : Prop :=
  ∀ n, P13444509313995310144.a n = A081144 n

end A081144

/-! ## A081144.P2991383571741689793

`A013613(A060577(n))%A000670(n)`
-/

namespace A081144.P2991383571741689793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013613 (A060577 n).toNat) (A000670 n)

end

end A081144.P2991383571741689793

namespace A081144

/-- `A013613(A060577(n))%A000670(n)` -/
def P2991383571741689793.Spec : Prop :=
  ∀ n, P2991383571741689793.a n = A081144 n

end A081144

/-!
# A081145: a(1)=1; thereafter, a(n) is the least positive integer which has not already occurred and is such that |a(n)-a(n-1)| is different from any |a(k)-a(k-1)| which has already occurred.

The programs for A081145, there is no canonical definition to state claims against.
-/

/-! ## A081145.P6509169000136115969

`round(A258136(n+1)/2)`
-/

namespace A081145.P6509169000136115969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A258136 (n + 1) : ℚ) / 2)

end

end A081145.P6509169000136115969

/-! ## A081145.P12174031009488507705

`A099004(n)+a(n-1)` with `a(0)=1`
-/

namespace A081145.P12174031009488507705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099004 n + a (n - 1)

end

end A081145.P12174031009488507705

/-! ## A081145.P11016053844906092075

`(A258136(n+1)+A033999(n)²)/2`
-/

namespace A081145.P11016053844906092075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258136 (n + 1) + A033999 n ^ 2 : ℚ) / 2

end

end A081145.P11016053844906092075

/-! ## A081145.P13843957918400747141

`∑[A099004(n+1)]+1-A099004(n+1)`
-/

namespace A081145.P13843957918400747141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A099004 (n + 1))

end

end A081145.P13843957918400747141

/-! ## A081145.P4220640673793393434

`∑[A099004(A315365(n)%2+n)]`
-/

namespace A081145.P4220640673793393434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (Int.tmod (A315365 n) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081145.P4220640673793393434

/-! ## A081145.P15855756286131093351

`∑[A099004(and(1, A315365(n))+n)]`
-/

namespace A081145.P15855756286131093351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (Int.land 1 (A315365 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081145.P15855756286131093351

/-! ## A081145.P874330149305658409

`A000463(A258136(n+1))`
-/

namespace A081145.P874330149305658409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A258136 (n + 1)).toNat

end

end A081145.P874330149305658409

/-! ## A081145.P15116041603093660756

`A110654(A258136(n+1)+1)`
-/

namespace A081145.P15116041603093660756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A258136 (n + 1) + 1).toNat

end

end A081145.P15116041603093660756

/-! ## A081145.P11944414219458359068

`A052938(A258136(n+1)-1)`
-/

namespace A081145.P11944414219458359068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A258136 (n + 1) - 1).toNat

end

end A081145.P11944414219458359068

/-! ## A081145.P16063611935833490766

`A052938(xor(1, A258136(n+1)))`
-/

namespace A081145.P16063611935833490766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (Int.xor 1 (A258136 (n + 1))).toNat

end

end A081145.P16063611935833490766

/-! ## A081145.P3132780259791210914

`A052938(2*A258136(n+1))/2`
-/

namespace A081145.P3132780259791210914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * A258136 (n + 1)).toNat : ℚ) / 2

end

end A081145.P3132780259791210914

/-!
# A081147: First differences of A022839.

The programs for A081147, the canonical program `A081147.P562166116975668183` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081147 has offset 0).

The definition of A081147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081147.P562166116975668183

`floor((n+1)*sqrt(5))-floor(n*sqrt(5))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081147

/-- `floor((n+1)*sqrt(5))-floor(n*sqrt(5))` -/
def P562166116975668183.Spec : Prop :=
  ∀ n, P562166116975668183.a n = A081147 n

theorem P562166116975668183.correct : P562166116975668183.Spec := by
  intro n
  simp only [A081147]

end A081147

/-! ## A081147.P2055053024715194924

`dr(Δ[floor(n*root(5, 2))])`
-/

namespace A081147.P2055053024715194924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A081147.P2055053024715194924

namespace A081147

/-- `dr(Δ[floor(n*root(5, 2))])` -/
def P2055053024715194924.Spec : Prop :=
  ∀ n, (P2055053024715194924.a n : ℤ) = A081147 n

end A081147

/-! ## A081147.P11897731822853822488

`Δ[floor(n*root(5, 2))]%4`
-/

namespace A081147.P11897731822853822488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A081147.P11897731822853822488

namespace A081147

/-- `Δ[floor(n*root(5, 2))]%4` -/
def P11897731822853822488.Spec : Prop :=
  ∀ n, P11897731822853822488.a n = A081147 n

end A081147

/-! ## A081147.P10933899416558735895

`gcd(6, Δ[floor(n*root(5, 2))])`
-/

namespace A081147.P10933899416558735895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (f1 (n + 1) - f1 n)

end

end A081147.P10933899416558735895

namespace A081147

/-- `gcd(6, Δ[floor(n*root(5, 2))])` -/
def P10933899416558735895.Spec : Prop :=
  ∀ n, (P10933899416558735895.a n : ℤ) = A081147 n

end A081147

/-! ## A081147.P4323322528350704861

`or(2, Δ[floor(n*root(5, 2))])`
-/

namespace A081147.P4323322528350704861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A081147.P4323322528350704861

namespace A081147

/-- `or(2, Δ[floor(n*root(5, 2))])` -/
def P4323322528350704861.Spec : Prop :=
  ∀ n, P4323322528350704861.a n = A081147 n

end A081147

/-! ## A081147.P15411739973834890096

`xor(2, Δ[floor(n/ϕ^3)])`
-/

namespace A081147.P15411739973834890096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A081147.P15411739973834890096

namespace A081147

/-- `xor(2, Δ[floor(n/ϕ^3)])` -/
def P15411739973834890096.Spec : Prop :=
  ∀ n, P15411739973834890096.a n = A081147 n

end A081147

/-! ## A081147.P16630567903461180597

`A276856(A004976(n+1)-A004976(n))`
-/

namespace A081147.P16630567903461180597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (A004976 (n + 1) - A004976 n).toNat

end

end A081147.P16630567903461180597

namespace A081147

/-- `A276856(A004976(n+1)-A004976(n))` -/
def P16630567903461180597.Spec : Prop :=
  ∀ n, P16630567903461180597.a n = A081147 n

end A081147

/-! ## A081147.P4315272617464975197

`A282162(2*n*A005614(2*n))`
-/

namespace A081147.P4315272617464975197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 ((2 * n : ℤ) * A005614 (2 * n)).toNat

end

end A081147.P4315272617464975197

namespace A081147

/-- `A282162(2*n*A005614(2*n))` -/
def P4315272617464975197.Spec : Prop :=
  ∀ n, P4315272617464975197.a n = A081147 n

end A081147

/-! ## A081147.P3954406865064270702

`A282162(A003849(2*n)+2*n)`
-/

namespace A081147.P3954406865064270702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (A003849 (2 * n) + (2 * n : ℤ)).toNat

end

end A081147.P3954406865064270702

namespace A081147

/-- `A282162(A003849(2*n)+2*n)` -/
def P3954406865064270702.Spec : Prop :=
  ∀ n, P3954406865064270702.a n = A081147 n

end A081147

/-! ## A081147.P15841941826782634664

`A282162(A096270(2*n)+2*n)`
-/

namespace A081147.P15841941826782634664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (A096270 (2 * n) + (2 * n : ℤ)).toNat

end

end A081147.P15841941826782634664

namespace A081147

/-- `A282162(A096270(2*n)+2*n)` -/
def P15841941826782634664.Spec : Prop :=
  ∀ n, P15841941826782634664.a n = A081147 n

end A081147

/-! ## A081147.P1852679321085373190

`A282162(A143668(2*n+1)+2*n)`
-/

namespace A081147.P1852679321085373190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (A143668 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A081147.P1852679321085373190

namespace A081147

/-- `A282162(A143668(2*n+1)+2*n)` -/
def P1852679321085373190.Spec : Prop :=
  ∀ n, P1852679321085373190.a n = A081147 n

end A081147

/-! ## A081147.P9456738297601348763

`A282162(2*n*A156596(2*n+1))`
-/

namespace A081147.P9456738297601348763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 ((2 * n : ℤ) * A156596 (2 * n + 1)).toNat

end

end A081147.P9456738297601348763

namespace A081147

/-- `A282162(2*n*A156596(2*n+1))` -/
def P9456738297601348763.Spec : Prop :=
  ∀ n, P9456738297601348763.a n = A081147 n

end A081147

/-! ## A081147.P14959171877834824535

`Δ[A202305(n²)]`
-/

namespace A081147.P14959171877834824535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081147.P14959171877834824535

namespace A081147

/-- `Δ[A202305(n²)]` -/
def P14959171877834824535.Spec : Prop :=
  ∀ n, P14959171877834824535.a n = A081147 n

end A081147

/-!
# A081148: Number of odd cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506.

The programs for A081148, there is no canonical definition to state claims against.
-/

/-! ## A081148.P13301361371387630466

`A081153(n)+A081155(n)`
-/

namespace A081148.P13301361371387630466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081153 n + A081155 n

end

end A081148.P13301361371387630466

/-! ## A081148.P2074928410092348201

`A057507(n)-A081150(n)`
-/

namespace A081148.P2074928410092348201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 n - A081150 n

end

end A081148.P2074928410092348201

/-! ## A081148.P4194423881889301249

`(n%2)^n*A081149(∑[char[or(2, n)+1]])`
-/

namespace A081148.P4194423881889301249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A081149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081148.P4194423881889301249

/-! ## A081148.P14414223799237143729

`2*A057507(n)-A079437(n)`
-/

namespace A081148.P14414223799237143729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057507 n - A079437 n

end

end A081148.P14414223799237143729

/-! ## A081148.P1339461175036212384

`A079437(n)-2*A081150(n)`
-/

namespace A081148.P1339461175036212384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079437 n - 2 * A081150 n

end

end A081148.P1339461175036212384

/-!
# A081149: Number of odd cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506.

The programs for A081149, there is no canonical definition to state claims against.
-/

/-! ## A081149.P11830216742886186863

`A081148(2*n+1)`
-/

namespace A081149.P11830216742886186863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 (2 * n + 1)

end

end A081149.P11830216742886186863

/-! ## A081149.P11631778160878188009

`abs(record[Δ[A081148(n+1)]])`
-/

namespace A081149.P11631778160878188009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A081149.P11631778160878188009

/-! ## A081149.P12404992910041358215

`record[Δ[A081148(n)]]+C(2, n+2)`
-/

namespace A081149.P12404992910041358215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose 2 (n + 2) : ℤ)

end

end A081149.P12404992910041358215

/-! ## A081149.P4072879332840557679

`gcd(floor(1/(n+1)), A081148((n+1)²-n²))`
-/

namespace A081149.P4072879332840557679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A081148 ((n + 1) ^ 2 - n ^ 2))

end

end A081149.P4072879332840557679

/-! ## A081149.P14072772562634676263

`A081156(n)+A081154(n)`
-/

namespace A081149.P14072772562634676263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081156 n + A081154 n

end

end A081149.P14072772562634676263

/-!
# A081150: Number of even cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506.

The programs for A081150, there is no canonical definition to state claims against.
-/

/-! ## A081150.P12401111183737288974

`A057507(n)-A081148(n)`
-/

namespace A081150.P12401111183737288974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 n - A081148 n

end

end A081150.P12401111183737288974

/-! ## A081150.P10431864518380011467

`A081157(n)+A081160(n)+A081162(n)`
-/

namespace A081150.P10431864518380011467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 n + A081160 n + A081162 n

end

end A081150.P10431864518380011467

/-! ## A081150.P6042911939455576393

`A079437(n)-A057507(n)`
-/

namespace A081150.P6042911939455576393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079437 n - A057507 n

end

end A081150.P6042911939455576393

/-! ## A081150.P14739364415295423974

`(A079437(n)-A081148(n))/2`
-/

namespace A081150.P14739364415295423974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079437 n - A081148 n : ℚ) / 2

end

end A081150.P14739364415295423974

/-! ## A081150.P13683677928078671479

`A014682(A079437(n)-A081148(n))`
-/

namespace A081150.P13683677928078671479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A079437 n - A081148 n).toNat

end

end A081150.P13683677928078671479

/-!
# A081151: Number of even cycles in range [A014137(2n-1)..A014138(2n-1)] of permutation A057505/A057506.

The programs for A081151, there is no canonical definition to state claims against.
-/

/-! ## A081151.P5317862212682889114

`A081150(2*n)`
-/

namespace A081151.P5317862212682889114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (2 * n)

end

end A081151.P5317862212682889114

/-! ## A081151.P1950675116049858347

`A057507(2*n)%(5^n)`
-/

namespace A081151.P1950675116049858347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057507 (2 * n)) (5 ^ n : ℤ)

end

end A081151.P1950675116049858347

/-! ## A081151.P16110739440089421238

`record[n%2*A057507(n+1)]`
-/

namespace A081151.P16110739440089421238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A057507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081151.P16110739440089421238

/-! ## A081151.P10466908371840213856

`record[A057507(n)-A009006(n)]`
-/

namespace A081151.P10466908371840213856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 n - A009006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081151.P10466908371840213856

/-! ## A081151.P14458680119871392372

`record[A057507(n)-A266380(n)]`
-/

namespace A081151.P14458680119871392372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 n - A266380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081151.P14458680119871392372

/-!
# A081152: Number of even cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506.

The programs for A081152, there is no canonical definition to state claims against.
-/

/-! ## A081152.P10620446180070370585

`A081150(2*n+1)`
-/

namespace A081152.P10620446180070370585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (2 * n + 1)

end

end A081152.P10620446180070370585

/-! ## A081152.P14873962423276526142

`A081159(n)+A081161(n)+A081163(n)`
-/

namespace A081152.P14873962423276526142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081159 n + A081161 n + A081163 n

end

end A081152.P14873962423276526142

/-! ## A081152.P12039642286213538443

`record[A081150(xor(1, n))]`
-/

namespace A081152.P12039642286213538443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081152.P12039642286213538443

/-! ## A081152.P4742711778184209538

`record[A081150(gcd(n, ∑[n]))]`
-/

namespace A081152.P4742711778184209538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081152.P4742711778184209538

/-! ## A081152.P6724581907989704266

`record[A081150(lcm(8, n)/8)]`
-/

namespace A081152.P6724581907989704266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081152.P6724581907989704266

/-!
# A081153: Number of odd cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506, with no fixed points of either A057163 or A057164.

The programs for A081153, there is no canonical definition to state claims against.
-/

/-! ## A081153.P10107378696629173023

`A081148(n)-A081155(n)`
-/

namespace A081153.P10107378696629173023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 n - A081155 n

end

end A081153.P10107378696629173023

/-! ## A081153.P760288284105088278

`A081154(gcd(1-n, floor(n/2)))`
-/

namespace A081153.P760288284105088278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081154 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A081153.P760288284105088278

/-! ## A081153.P6166172341673703084

`A081154(n%2*floor(n/2))`
-/

namespace A081153.P6166172341673703084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081154 (((n % 2 : ℕ) : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

end

end A081153.P6166172341673703084

/-! ## A081153.P15976866893225926622

`A081154(and((-1)^n, floor(n/2)))`
-/

namespace A081153.P15976866893225926622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081154 (Int.land ((-1) ^ n) ⌊(n : ℚ) / 2⌋).toNat

end

end A081153.P15976866893225926622

/-! ## A081153.P10216128554439100654

`A081154(abs(∑[n]%(n+1)-1))`
-/

namespace A081153.P10216128554439100654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081154 |(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1|.toNat

end

end A081153.P10216128554439100654

/-!
# A081154: Number of odd cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506, with no fixed points of either A057163 or A057164.

The programs for A081154, there is no canonical definition to state claims against.
-/

/-! ## A081154.P18001031750567689455

`A081153(2*n+1)`
-/

namespace A081154.P18001031750567689455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081153 (2 * n + 1)

end

end A081154.P18001031750567689455

/-! ## A081154.P891669753808484299

`A081149(n)-A081156(n)`
-/

namespace A081154.P891669753808484299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081149 n - A081156 n

end

end A081154.P891669753808484299

/-! ## A081154.P11408621837761753421

`xor(A002426(n), A272084(A000142(n)))`
-/

namespace A081154.P11408621837761753421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002426 n) (A272084 (A000142 n).toNat)

end

end A081154.P11408621837761753421

/-! ## A081154.P17062118551838466104

`A081153(A081110(n+1))+A081130(n)`
-/

namespace A081154.P17062118551838466104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081153 (A081110 (n + 1)).toNat + A081130 n

end

end A081154.P17062118551838466104

/-!
# A081155: Number of odd cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506, with fixed-points of both A057163 and A057164.

The programs for A081155, there is no canonical definition to state claims against.
-/

/-! ## A081155.P6492432927302453675

`A081148(n)-A081153(n)`
-/

namespace A081155.P6492432927302453675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 n - A081153 n

end

end A081155.P6492432927302453675

/-! ## A081155.P3747641214538961065

`lcm(round(cos(∑[atan(∑[n])])), A081156(∑[char[or(2, n)+1]]))`
-/

namespace A081155.P3747641214538961065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.cos (∑ j ∈ Finset.range (n + 1), f1 j))) (A081156 (∑ j ∈ Finset.range (n + 1), f3 j))

end

end A081155.P3747641214538961065

/-! ## A081155.P2323810972474495895

`C(A081156(gcd(1-n, floor(n/2))), ceil(C(or(1, n), n)/2))`
-/

namespace A081155.P2323810972474495895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081156 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)).toNat ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

end

end A081155.P2323810972474495895

/-! ## A081155.P11061146594582400356

`A097331(n)-2*A081162(n)`
-/

namespace A081155.P11061146594582400356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n - 2 * A081162 n

end

end A081155.P11061146594582400356

/-! ## A081155.P4591148224493228172

`A081148(n)-A081154(gcd(1-n, floor(n/2)))`
-/

namespace A081155.P4591148224493228172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 n - A081154 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A081155.P4591148224493228172

/-!
# A081156: Number of odd cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506, with fixed-points of both A057163 and A057164.

The programs for A081156, there is no canonical definition to state claims against.
-/

/-! ## A081156.P5601495622561519576

`A081155(2*n+1)`
-/

namespace A081156.P5601495622561519576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081155 (2 * n + 1)

end

end A081156.P5601495622561519576

/-! ## A081156.P8957342165690627612

`A000108(n)-2*A081163(n)`
-/

namespace A081156.P8957342165690627612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - 2 * A081163 n

end

end A081156.P8957342165690627612

/-! ## A081156.P8273337419149271419

`abs(record[Δ[A081155(n+1)]])`
-/

namespace A081156.P8273337419149271419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081155 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A081156.P8273337419149271419

/-! ## A081156.P9253096602216678301

`A081155((n+1)²-n²)^floor(n^(1/5))`
-/

namespace A081156.P9253096602216678301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081155 ((n + 1) ^ 2 - n ^ 2) : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℤ)

end

end A081156.P9253096602216678301

/-! ## A081156.P7732138093742273539

`A081149(n)-A081154(n)`
-/

namespace A081156.P7732138093742273539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081149 n - A081154 n

end

end A081156.P7732138093742273539

/-!
# A081157: Number of even cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506, with no fixed points of either A057163 or A057164.

The programs for A081157, there is no canonical definition to state claims against.
-/

/-! ## A081157.P15596017902085076136

`A081150(n)-(A081162(n)+A081160(n))`
-/

namespace A081157.P15596017902085076136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 n - (A081162 n + A081160 n)

end

end A081157.P15596017902085076136

/-! ## A081157.P2915623888914608304

`A176693(A165801(n+1)-A176693(n+1))`
-/

namespace A081157.P2915623888914608304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (A165801 (n + 1) - A176693 (n + 1)).toNat

end

end A081157.P2915623888914608304

/-! ## A081157.P11237445842884020668

`and(A066990(A106429(n+1)), A164934(n+1))`
-/

namespace A081157.P11237445842884020668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066990 (A106429 (n + 1)).toNat) (A164934 (n + 1))

end

end A081157.P11237445842884020668

/-! ## A081157.P5334376033496632293

`and(A146998(n+1), A315646(A147002(n+1)))`
-/

namespace A081157.P5334376033496632293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146998 (n + 1)) (A315646 (A147002 (n + 1)).toNat)

end

end A081157.P5334376033496632293

/-! ## A081157.P12422426696797093206

`A005843(floor(A095758(3*n+4)/A044183(n+4)))`
-/

namespace A081157.P12422426696797093206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌊(A095758 (3 * n + 4) : ℚ) / (A044183 (n + 4) : ℚ)⌋.toNat

end

end A081157.P12422426696797093206

/-!
# A081158: Number of even cycles in range [A014137(2n-1)..A014138(2n-1)] of permutation A057505/A057506, with no fixed points of A057164.

The programs for A081158, there is no canonical definition to state claims against.
-/

/-! ## A081158.P17913139935212323569

`A081157(2*n)`
-/

namespace A081158.P17913139935212323569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 (2 * n)

end

end A081158.P17913139935212323569

/-! ## A081158.P6230470995954662

`∑{e}[4^n, A081157(#)]`
-/

namespace A081158.P6230470995954662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A081157 (Nat.factorization (f1 n) p)

end

end A081158.P6230470995954662

/-! ## A081158.P2946055512126474286

`A081157(∑{digits}[n, #]+n)+n-∑{digits}[n, #]`
-/

namespace A081158.P2946055512126474286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n) + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A081158.P2946055512126474286

/-! ## A081158.P5201761633246388112

`lcm(2, A081157(A004277(n)))`
-/

namespace A081158.P5201761633246388112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A081157 (A004277 n).toNat)

end

end A081158.P5201761633246388112

/-! ## A081158.P2318600987626998795

`A081157(A005843(n))+char[10]`
-/

namespace A081158.P2318600987626998795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A081158.P2318600987626998795

/-!
# A081159: Number of even cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506, with no fixed points of either A057163 or A057164.

The programs for A081159, there is no canonical definition to state claims against.
-/

/-! ## A081159.P9407292204659826510

`A081157(2*n+1)`
-/

namespace A081159.P9407292204659826510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 (2 * n + 1)

end

end A081159.P9407292204659826510

/-! ## A081159.P18359722304270605943

`A081157((n+1)²-n²)+n-∑{digits}[n, #]`
-/

namespace A081159.P18359722304270605943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 ((n + 1) ^ 2 - n ^ 2) + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A081159.P18359722304270605943

/-! ## A081159.P14456775323382216971

`∏{e}[A004171(n), A081157(#)]`
-/

namespace A081159.P14456775323382216971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A081157 (Nat.factorization (f1 n).natAbs p)

end

end A081159.P14456775323382216971

/-! ## A081159.P400623782558762710

`A376514(n+1)+A081157((n+1)²-n²)`
-/

namespace A081159.P400623782558762710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376514 (n + 1) + A081157 ((n + 1) ^ 2 - n ^ 2)

end

end A081159.P400623782558762710

/-! ## A081159.P8236147887893903440

`A081157(A005408(n))%A098648(n)`
-/

namespace A081159.P8236147887893903440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081157 (A005408 n).toNat) (A098648 n)

end

end A081159.P8236147887893903440

/-!
# A081160: Number of even cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506, with two fixed-points of A057164.

The programs for A081160, there is no canonical definition to state claims against.
-/

/-! ## A081160.P10685520233544781511

`A081162(n)+Δ[A210736(n)]`
-/

namespace A081160.P10685520233544781511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081162 n + (f1 (n + 1) - f1 n)

end

end A081160.P10685520233544781511

/-! ## A081160.P11510483478518450991

`(A001405(n)-A081155(n))/2`
-/

namespace A081160.P11510483478518450991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n - A081155 n : ℚ) / 2

end

end A081160.P11510483478518450991

/-! ## A081160.P17646776466082359553

`A081150(n)-(A081162(n)+A081157(n))`
-/

namespace A081160.P17646776466082359553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 n - (A081162 n + A081157 n)

end

end A081160.P17646776466082359553

/-! ## A081160.P13569327721784743054

`(A001405(n)-A081155(n))*2^A008683(A142644(n+1))`
-/

namespace A081160.P13569327721784743054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n - A081155 n : ℚ) * (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ)

end

end A081160.P13569327721784743054

/-! ## A081160.P10064481400381459526

`A004526(C(n, round(n/2))-A081155(n))`
-/

namespace A081160.P10064481400381459526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat : ℤ) - A081155 n).toNat

end

end A081160.P10064481400381459526

/-!
# A081161: Number of even cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506, with two fixed-points of A057164.

The programs for A081161, there is no canonical definition to state claims against.
-/

/-! ## A081161.P11591421060411133033

`A081160(2*n+1)`
-/

namespace A081161.P11591421060411133033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081160 (2 * n + 1)

end

end A081161.P11591421060411133033

/-! ## A081161.P5374318744175036853

`record[A081160(xor(1, n))]`
-/

namespace A081161.P5374318744175036853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081160 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081161.P5374318744175036853

/-! ## A081161.P2290612463204411454

`record[A081160(gcd(n, ∑[n]))]`
-/

namespace A081161.P2290612463204411454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081160 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081161.P2290612463204411454

/-! ## A081161.P7012441221689589883

`record[n%2*A081160(n)]`
-/

namespace A081161.P7012441221689589883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A081160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081161.P7012441221689589883

/-! ## A081161.P7413645679816967558

`record[A081160((-1)^n+n)]`
-/

namespace A081161.P7413645679816967558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081160 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081161.P7413645679816967558

/-!
# A081162: Number of even cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506, with two fixed-points of A057163.

The programs for A081162, there is no canonical definition to state claims against.
-/

/-! ## A081162.P15258015065973475826

`A081163(gcd(C(n, 2), xor(1, n)))`
-/

namespace A081162.P15258015065973475826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081163 (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n))

end

end A081162.P15258015065973475826

/-! ## A081162.P3576161348718470771

`A081163(gcd(1-n, floor(n/2)))`
-/

namespace A081162.P3576161348718470771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081163 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A081162.P3576161348718470771

/-! ## A081162.P9445778103832011109

`A081163(n%2*floor(n/2))`
-/

namespace A081162.P9445778103832011109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081163 (((n % 2 : ℕ) : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

end

end A081162.P9445778103832011109

/-! ## A081162.P12038724982061291295

`A081163(abs(∑[n]%(n+1)-1))`
-/

namespace A081162.P12038724982061291295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081163 |(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1|.toNat

end

end A081162.P12038724982061291295

/-! ## A081162.P2087872218230200623

`A081163(and((-1)^n, floor(n/2)))`
-/

namespace A081162.P2087872218230200623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081163 (Int.land ((-1) ^ n) ⌊(n : ℚ) / 2⌋).toNat

end

end A081162.P2087872218230200623

/-!
# A081163: Number of even cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506, with two fixed-points of A057163.

The programs for A081163, there is no canonical definition to state claims against.
-/

/-! ## A081163.P5907791849594669166

`A081162(2*n+1)`
-/

namespace A081163.P5907791849594669166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081162 (2 * n + 1)

end

end A081163.P5907791849594669166

/-! ## A081163.P17616932650335409619

`(A000108(n)-A081156(n))/2`
-/

namespace A081163.P17616932650335409619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n - A081156 n : ℚ) / 2

end

end A081163.P17616932650335409619

/-! ## A081163.P12121078624091417350

`∑{d}[(n+1)²-n², A081162(#)]`
-/

namespace A081163.P12121078624091417350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A081162 d

end

end A081163.P12121078624091417350

/-! ## A081163.P13851434249733836935

`lcm(2^∑{digits}[n, #%C(n, #)], A081162((n+1)²-n²))`
-/

namespace A081163.P13851434249733836935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum : ℤ) (A081162 ((n + 1) ^ 2 - n ^ 2))

end

end A081163.P13851434249733836935

/-! ## A081163.P8145406799281129965

`A081161(n)-A001791(n)`
-/

namespace A081163.P8145406799281129965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081161 n - A001791 n

end

end A081163.P8145406799281129965

/-!
# A081164: Number of distinct cycle lengths in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506.

The programs for A081164, there is no canonical definition to state claims against.
-/

/-! ## A081164.P3933804356789026478

`A000792(n)-A001222(A005751(n+1))`
-/

namespace A081164.P3933804356789026478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - A001222 (A005751 (n + 1)).toNat

end

end A081164.P3933804356789026478

/-!
# A081167: Number of cycles in range [A014137(2n)..A014138(2n)] of permutation A057505/A057506.

The programs for A081167, there is no canonical definition to state claims against.
-/

/-! ## A081167.P8243463829296663442

`A057507(2*n+1)`
-/

namespace A081167.P8243463829296663442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 (2 * n + 1)

end

end A081167.P8243463829296663442

/-! ## A081167.P4457734461070275011

`record[A057507(xor(1, n))]`
-/

namespace A081167.P4457734461070275011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081167.P4457734461070275011

/-! ## A081167.P14912692232673476322

`record[A057507(gcd(n, ∑[n]))]`
-/

namespace A081167.P14912692232673476322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081167.P14912692232673476322

/-! ## A081167.P5467161798702113519

`record[A057507(n*n%2)]`
-/

namespace A081167.P5467161798702113519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057507 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081167.P5467161798702113519

/-! ## A081167.P5972712954057586636

`record[and((-1)^n, A057507(n))]`
-/

namespace A081167.P5972712954057586636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A057507 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081167.P5972712954057586636

/-!
# A081168: Differences of Beatty sequence for square root of 10.

The programs for A081168, the canonical program `A081168.P4003212818113468201` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081168 has offset 0).

The definition of A081168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081168.P4003212818113468201

`floor((n+1)*sqrt(10))-floor(n*sqrt(10))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081168

/-- `floor((n+1)*sqrt(10))-floor(n*sqrt(10))` -/
def P4003212818113468201.Spec : Prop :=
  ∀ n, P4003212818113468201.a n = A081168 n

theorem P4003212818113468201.correct : P4003212818113468201.Spec := by
  intro n
  simp only [A081168]

end A081168

/-!
# A081171: Triangle in which n-th row gives trajectory of n (including n itself) under the map x -> x/2 if x is even, x -> 3x-3 if x is odd, stopping when reaching one of 1, 3, 5, 15, 51.

The programs for A081171, there is no canonical definition to state claims against.
-/

/-! ## A081171.P12055717308992983993

`A060502(A291929(n)²²)+char[∏{p}[n+1, #]+1]`
-/

namespace A081171.P12055717308992983993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 ((A291929 n ^ 2) ^ 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A081171.P12055717308992983993

/-! ## A081171.P6291918800850860969

`A362615(n)+A069283(A045623(n))`
-/

namespace A081171.P6291918800850860969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 n + A069283 (A045623 n).toNat

end

end A081171.P6291918800850860969

/-!
# A081172: Tribonacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = 1, a(2) = 0.

The programs for A081172, the canonical program `A081172.P8597232712458185604` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081172 has offset 0).

The definition of A081172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A081172.P8597232712458185604`, by `A081172.P8597232712458185604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081172.P8597232712458185604

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081172

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P8597232712458185604.Spec : Prop :=
  ∀ n, (P8597232712458185604.a n : ℤ) = A081172 n

theorem P8597232712458185604.correct : P8597232712458185604.Spec := by
  intro n
  simp only [A081172]

end A081172

/-! ## A081172.P17020754499353530949

`A000073(n+2)-2*A000073(n)`
-/

namespace A081172.P17020754499353530949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - 2 * A000073 n

end

end A081172.P17020754499353530949

namespace A081172

/-- `A000073(n+2)-2*A000073(n)` -/
def P17020754499353530949.Spec : Prop :=
  ∀ n, P17020754499353530949.a n = A081172 n

end A081172

/-! ## A081172.P5079097058743656822

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A081172.P5079097058743656822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A081172.P5079097058743656822

namespace A081172

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P5079097058743656822.Spec : Prop :=
  ∀ n, P5079097058743656822.a n = A081172 n

end A081172

/-! ## A081172.P1126185923329402046

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A081172.P1126185923329402046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A081172.P1126185923329402046

namespace A081172

/-- `2*a(n-1)-a(n-4)` -/
def P1126185923329402046.Spec : Prop :=
  ∀ n, P1126185923329402046.a n = A081172 n

end A081172

/-! ## A081172.P6561988140022729235

`A214899(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A081172.P6561988140022729235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214899 (n - 1) - a (n - 1)

end

end A081172.P6561988140022729235

namespace A081172

/-- `A214899(n-1)-a(n-1)` -/
def P6561988140022729235.Spec : Prop :=
  ∀ n, P6561988140022729235.a n = A081172 n

end A081172

/-! ## A081172.P7459954112558243126

`A000213(n)-A000073(n)`
-/

namespace A081172.P7459954112558243126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A000073 n

end

end A081172.P7459954112558243126

namespace A081172

/-- `A000213(n)-A000073(n)` -/
def P7459954112558243126.Spec : Prop :=
  ∀ n, P7459954112558243126.a n = A081172 n

end A081172

/-! ## A081172.P17537366510009441708

`A276658(n)-A001590(n)`
-/

namespace A081172.P17537366510009441708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n - A001590 n

end

end A081172.P17537366510009441708

namespace A081172

/-- `A276658(n)-A001590(n)` -/
def P17537366510009441708.Spec : Prop :=
  ∀ n, P17537366510009441708.a n = A081172 n

end A081172

/-! ## A081172.P11655957297166914415

`A000213(n)-Δ[A192804(n)]`
-/

namespace A081172.P11655957297166914415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - (f1 (n + 1) - f1 n)

end

end A081172.P11655957297166914415

namespace A081172

/-- `A000213(n)-Δ[A192804(n)]` -/
def P11655957297166914415.Spec : Prop :=
  ∀ n, P11655957297166914415.a n = A081172 n

end A081172

/-! ## A081172.P9314294479685380841

`A000213(n)-A354784(n)/2`
-/

namespace A081172.P9314294479685380841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) - (A354784 n : ℚ) / 2

end

end A081172.P9314294479685380841

namespace A081172

/-- `A000213(n)-A354784(n)/2` -/
def P9314294479685380841.Spec : Prop :=
  ∀ n, P9314294479685380841.a n = (A081172 n : ℚ)

end A081172

/-! ## A081172.P16423624129138133340

`A000213(n)+A001590(n)-∑[A001590(n)]`
-/

namespace A081172.P16423624129138133340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A001590 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081172.P16423624129138133340

namespace A081172

/-- `A000213(n)+A001590(n)-∑[A001590(n)]` -/
def P16423624129138133340.Spec : Prop :=
  ∀ n, P16423624129138133340.a n = A081172 n

end A081172

/-! ## A081172.P3957456850669552749

`A001590(n+1)+A001590(n)-A000073(n)`
-/

namespace A081172.P3957456850669552749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + (A001590 n - A000073 n)

end

end A081172.P3957456850669552749

namespace A081172

/-- `A001590(n+1)+A001590(n)-A000073(n)` -/
def P3957456850669552749.Spec : Prop :=
  ∀ n, P3957456850669552749.a n = A081172 n

end A081172

/-! ## A081172.P17305980762428409243

`A000073(n)+A276658(n)-A000073(n+1)`
-/

namespace A081172.P17305980762428409243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A276658 n - A000073 (n + 1))

end

end A081172.P17305980762428409243

namespace A081172

/-- `A000073(n)+A276658(n)-A000073(n+1)` -/
def P17305980762428409243.Spec : Prop :=
  ∀ n, P17305980762428409243.a n = A081172 n

end A081172

/-! ## A081172.P4953657662197728558

`A000213(n)-(A192804(n+1)-A192804(n))`
-/

namespace A081172.P4953657662197728558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - (A192804 (n + 1) - A192804 n)

end

end A081172.P4953657662197728558

namespace A081172

/-- `A000213(n)-(A192804(n+1)-A192804(n))` -/
def P4953657662197728558.Spec : Prop :=
  ∀ n, P4953657662197728558.a n = A081172 n

end A081172

/-! ## A081172.P5455611969030011072

`A141036(n)-A001590(n+1)`
-/

namespace A081172.P5455611969030011072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n - A001590 (n + 1)

end

end A081172.P5455611969030011072

namespace A081172

/-- `A141036(n)-A001590(n+1)` -/
def P5455611969030011072.Spec : Prop :=
  ∀ n, P5455611969030011072.a n = A081172 n

end A081172

/-! ## A081172.P14169651575682458248

`A275778(n)-A000073(n+1)`
-/

namespace A081172.P14169651575682458248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n - A000073 (n + 1)

end

end A081172.P14169651575682458248

namespace A081172

/-- `A275778(n)-A000073(n+1)` -/
def P14169651575682458248.Spec : Prop :=
  ∀ n, P14169651575682458248.a n = A081172 n

end A081172

/-! ## A081172.P15609321157354646954

`A214727(n)-A001590(n+2)`
-/

namespace A081172.P15609321157354646954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A001590 (n + 2)

end

end A081172.P15609321157354646954

namespace A081172

/-- `A214727(n)-A001590(n+2)` -/
def P15609321157354646954.Spec : Prop :=
  ∀ n, P15609321157354646954.a n = A081172 n

end A081172

/-! ## A081172.P9018063205727056379

`A000073(n+2)-A354784(n)`
-/

namespace A081172.P9018063205727056379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A354784 n

end

end A081172.P9018063205727056379

namespace A081172

/-- `A000073(n+2)-A354784(n)` -/
def P9018063205727056379.Spec : Prop :=
  ∀ n, P9018063205727056379.a n = A081172 n

end A081172

/-! ## A081172.P13385213156748465746

`A000213(n)+A141036(n)-A214899(n)`
-/

namespace A081172.P13385213156748465746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A141036 n - A214899 n)

end

end A081172.P13385213156748465746

namespace A081172

/-- `A000213(n)+A141036(n)-A214899(n)` -/
def P13385213156748465746.Spec : Prop :=
  ∀ n, P13385213156748465746.a n = A081172 n

end A081172

/-! ## A081172.P17660061783978325942

`A000213(n)+A276658(n)-A275778(n)`
-/

namespace A081172.P17660061783978325942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A276658 n - A275778 n)

end

end A081172.P17660061783978325942

namespace A081172

/-- `A000213(n)+A276658(n)-A275778(n)` -/
def P17660061783978325942.Spec : Prop :=
  ∀ n, P17660061783978325942.a n = A081172 n

end A081172

/-!
# A081173: a(1) = 2, then a(n) = greatest prime factor of (a(n-1)^2+2).

The programs for A081173, there is no canonical definition to state claims against.
-/

/-! ## A081173.P10880762319570113175

`A379351(a(n-1))` with `a(0)=2`
-/

namespace A081173.P10880762319570113175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A379351 (a (n - 1)).toNat

end

end A081173.P10880762319570113175

/-! ## A081173.P17059163492423788251

`A076568(a(n-1)²)` with `a(0)=2, a(1)=3`
-/

namespace A081173.P17059163492423788251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A076568 (a (n - 1) ^ 2).toNat

end

end A081173.P17059163492423788251

/-! ## A081173.P8363521121623665324

`A076566(a(n-1)²+1)` with `a(0)=2`
-/

namespace A081173.P8363521121623665324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A076566 (a (n - 1) ^ 2 + 1).toNat

end

end A081173.P8363521121623665324

/-!
# A081174: Numerators of constants arising in calculation of higher correlations of short divisor sums.

The programs for A081174, there is no canonical definition to state claims against.
-/

/-! ## A081174.P6652189224288374613

`A276673(A273924(n+1)-n)`
-/

namespace A081174.P6652189224288374613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276673 (A273924 (n + 1) - (n : ℤ)).toNat

end

end A081174.P6652189224288374613

/-!
# A081175: Numbers of the form Sum_{i=1..k} i^j, j >= 1, k >= 1.

The programs for A081175, there is no canonical definition to state claims against.
-/

/-! ## A081175.P4089607959464379505

`A355735(A139269(n+1))+A001840(n)`
-/

namespace A081175.P4089607959464379505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A139269 (n + 1)).toNat + A001840 n

end

end A081175.P4089607959464379505

/-!
# A081178: a(0) = 1; for n>=1, a(n) = Sum_{k=0..n} 7^k*N(n,k), where N(n,k)=(1/n)*C(n,k)*C(n,k+1) are the Narayana numbers (A001263).

The programs for A081178, the canonical program `A081178.P7730964962908131335` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081178 has offset 0).

The definition of A081178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081178.P7730964962908131335

`(8*(2*n-1)*a(n-1)-36*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081178

/-- `(8*(2*n-1)*a(n-1)-36*(n-2)*a(n-2))/(n+1)` -/
def P7730964962908131335.Spec : Prop :=
  ∀ n, P7730964962908131335.a n = (A081178 n : ℚ)

end A081178

/-! ## A081178.P1357828882505928359

`ceil(A082305(n)/7)`
-/

namespace A081178.P1357828882505928359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082305 n : ℚ) / 7⌉

end

end A081178.P1357828882505928359

namespace A081178

/-- `ceil(A082305(n)/7)` -/
def P1357828882505928359.Spec : Prop :=
  ∀ n, P1357828882505928359.a n = A081178 n

end A081178

/-! ## A081178.P8163152359885243734

`A008550(A000096(n+6)+8)`
-/

namespace A081178.P8163152359885243734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000096 (n + 6) + 8).toNat

end

end A081178.P8163152359885243734

namespace A081178

/-- `A008550(A000096(n+6)+8)` -/
def P8163152359885243734.Spec : Prop :=
  ∀ n, P8163152359885243734.a n = A081178 n

end A081178

/-! ## A081178.P7963919713039697044

`A008550(A000217(n+7)+7)`
-/

namespace A081178.P7963919713039697044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000217 (n + 7) + 7).toNat

end

end A081178.P7963919713039697044

namespace A081178

/-- `A008550(A000217(n+7)+7)` -/
def P7963919713039697044.Spec : Prop :=
  ∀ n, P7963919713039697044.a n = A081178 n

end A081178

/-! ## A081178.P696832963602711170

`A008550(A077169(n+6)+A005408(n+7))`
-/

namespace A081178.P696832963602711170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A077169 (n + 6) + A005408 (n + 7)).toNat

end

end A081178.P696832963602711170

namespace A081178

/-- `A008550(A077169(n+6)+A005408(n+7))` -/
def P696832963602711170.Spec : Prop :=
  ∀ n, P696832963602711170.a n = A081178 n

end A081178

/-! ## A081178.P808285322828627702

`A243631(A055999(n+5)-2)`
-/

namespace A081178.P808285322828627702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A055999 (n + 5) - 2).toNat

end

end A081178.P808285322828627702

namespace A081178

/-- `A243631(A055999(n+5)-2)` -/
def P808285322828627702.Spec : Prop :=
  ∀ n, P808285322828627702.a n = A081178 n

end A081178

/-! ## A081178.P8182711323883754233

`A243631(A253145(n+7)-8)`
-/

namespace A081178.P8182711323883754233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A253145 (n + 7) - 8).toNat

end

end A081178.P8182711323883754233

namespace A081178

/-- `A243631(A253145(n+7)-8)` -/
def P8182711323883754233.Spec : Prop :=
  ∀ n, P8182711323883754233.a n = A081178 n

end A081178

/-! ## A081178.P5707016966999994877

`A204057(Δ[A023551(n+2)]-1)`
-/

namespace A081178.P5707016966999994877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (f1 (n + 1) - f1 n - 1).toNat

end

end A081178.P5707016966999994877

namespace A081178

/-- `A204057(Δ[A023551(n+2)]-1)` -/
def P5707016966999994877.Spec : Prop :=
  ∀ n, P5707016966999994877.a n = A081178 n

end A081178

/-!
# A081179: 3rd binomial transform of (0,1,0,2,0,4,0,8,0,16,...).

The programs for A081179, the canonical program `A081179.P11786165712224295539` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081179 has offset 0).

The definition of A081179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081179.P11786165712224295539

`6*a(n-1)-7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081179

/-- `6*a(n-1)-7*a(n-2)` -/
def P11786165712224295539.Spec : Prop :=
  ∀ n, P11786165712224295539.a n = A081179 n

theorem P11786165712224295539.correct : P11786165712224295539.Spec := by
  intro n
  simp only [A081179]

end A081179

/-! ## A081179.P2890559345239848851

`((3+sqrt(2))^n-(3-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A081179.P2890559345239848851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (2 : ℝ)) ^ n - (3 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A081179.P2890559345239848851

namespace A081179

/-- `((3+sqrt(2))^n-(3-sqrt(2))^n)/(2*sqrt(2))` -/
def P2890559345239848851.Spec : Prop :=
  ∀ n, P2890559345239848851.a n = (A081179 n : ℝ)

end A081179

/-! ## A081179.P850721020433280804

`A086351(n)-A083878(n)`
-/

namespace A081179.P850721020433280804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 n - A083878 n

end

end A081179.P850721020433280804

namespace A081179

/-- `A086351(n)-A083878(n)` -/
def P850721020433280804.Spec : Prop :=
  ∀ n, P850721020433280804.a n = A081179 n

end A081179

/-! ## A081179.P2918674977876275091

`∑[floor(A163348(n)/7)]`
-/

namespace A081179.P2918674977876275091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163348 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081179.P2918674977876275091

namespace A081179

/-- `∑[floor(A163348(n)/7)]` -/
def P2918674977876275091.Spec : Prop :=
  ∀ n, P2918674977876275091.a n = A081179 n

end A081179

/-! ## A081179.P4623822153746946234

`A102285(n)-A086351(n)`
-/

namespace A081179.P4623822153746946234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n - A086351 n

end

end A081179.P4623822153746946234

namespace A081179

/-- `A102285(n)-A086351(n)` -/
def P4623822153746946234.Spec : Prop :=
  ∀ n, P4623822153746946234.a n = A081179 n

end A081179

/-! ## A081179.P13698519619371188004

`A161944(n)%A083878(n)`
-/

namespace A081179.P13698519619371188004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161944 n) (A083878 n)

end

end A081179.P13698519619371188004

namespace A081179

/-- `A161944(n)%A083878(n)` -/
def P13698519619371188004.Spec : Prop :=
  ∀ n, P13698519619371188004.a n = A081179 n

end A081179

/-! ## A081179.P10454085680309080746

`A163606(n)%A086351(n)`
-/

namespace A081179.P10454085680309080746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163606 n) (A086351 n)

end

end A081179.P10454085680309080746

namespace A081179

/-- `A163606(n)%A086351(n)` -/
def P10454085680309080746.Spec : Prop :=
  ∀ n, P10454085680309080746.a n = A081179 n

end A081179

/-! ## A081179.P15730900715852637025

`A164033(n)%A086351(n)`
-/

namespace A081179.P15730900715852637025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164033 n) (A086351 n)

end

end A081179.P15730900715852637025

namespace A081179

/-- `A164033(n)%A086351(n)` -/
def P15730900715852637025.Spec : Prop :=
  ∀ n, P15730900715852637025.a n = A081179 n

end A081179

/-! ## A081179.P9965836801890938003

`A163348(n)%∑[A102285(n)]`
-/

namespace A081179.P9965836801890938003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163348 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081179.P9965836801890938003

namespace A081179

/-- `A163348(n)%∑[A102285(n)]` -/
def P9965836801890938003.Spec : Prop :=
  ∀ n, P9965836801890938003.a n = A081179 n

end A081179

/-! ## A081179.P10880886946434372405

`2*A086351(n)-A161944(n)`
-/

namespace A081179.P10880886946434372405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086351 n - A161944 n

end

end A081179.P10880886946434372405

namespace A081179

/-- `2*A086351(n)-A161944(n)` -/
def P10880886946434372405.Spec : Prop :=
  ∀ n, P10880886946434372405.a n = A081179 n

end A081179

/-! ## A081179.P11372483391811290095

`2*A102285(n)-A164033(n)`
-/

namespace A081179.P11372483391811290095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102285 n - A164033 n

end

end A081179.P11372483391811290095

namespace A081179

/-- `2*A102285(n)-A164033(n)` -/
def P11372483391811290095.Spec : Prop :=
  ∀ n, P11372483391811290095.a n = A081179 n

end A081179

/-! ## A081179.P14865609522538835475

`A086351(n+1)-2*A034999(n+1)`
-/

namespace A081179.P14865609522538835475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - 2 * A034999 (n + 1)

end

end A081179.P14865609522538835475

namespace A081179

/-- `A086351(n+1)-2*A034999(n+1)` -/
def P14865609522538835475.Spec : Prop :=
  ∀ n, P14865609522538835475.a n = A081179 n

end A081179

/-! ## A081179.P3421937786274850187

`A163606(n)-(A161944(n)+A102285(n))`
-/

namespace A081179.P3421937786274850187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - (A161944 n + A102285 n)

end

end A081179.P3421937786274850187

namespace A081179

/-- `A163606(n)-(A161944(n)+A102285(n))` -/
def P3421937786274850187.Spec : Prop :=
  ∀ n, P3421937786274850187.a n = A081179 n

end A081179

/-! ## A081179.P110787433274583410

`A102285(n)+A164033(n)-A163606(n)`
-/

namespace A081179.P110787433274583410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + (A164033 n - A163606 n)

end

end A081179.P110787433274583410

namespace A081179

/-- `A102285(n)+A164033(n)-A163606(n)` -/
def P110787433274583410.Spec : Prop :=
  ∀ n, P110787433274583410.a n = A081179 n

end A081179

/-!
# A081180: 4th binomial transform of (0,1,0,2,0,4,0,8,0,16,...).

The programs for A081180, the canonical program `A081180.P2827415332566419833` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081180 has offset 0).

The definition of A081180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081180.P2827415332566419833

`8*a(n-1)-14*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081180

/-- `8*a(n-1)-14*a(n-2)` -/
def P2827415332566419833.Spec : Prop :=
  ∀ n, P2827415332566419833.a n = A081180 n

theorem P2827415332566419833.correct : P2827415332566419833.Spec := by
  intro n
  simp only [A081180]

end A081180

/-! ## A081180.P4468816578046318622

`((4+sqrt(2))^n-(4-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A081180.P4468816578046318622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (2 : ℝ)) ^ n - (4 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A081180.P4468816578046318622

namespace A081180

/-- `((4+sqrt(2))^n-(4-sqrt(2))^n)/(2*sqrt(2))` -/
def P4468816578046318622.Spec : Prop :=
  ∀ n, P4468816578046318622.a n = (A081180 n : ℝ)

end A081180

/-! ## A081180.P3187820855083242812

`A161731(n)-A083879(n)`
-/

namespace A081180.P3187820855083242812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n - A083879 n

end

end A081180.P3187820855083242812

namespace A081180

/-- `A161731(n)-A083879(n)` -/
def P3187820855083242812.Spec : Prop :=
  ∀ n, P3187820855083242812.a n = A081180 n

end A081180

/-! ## A081180.P16832172891185404027

`A163350(n)-A161731(n)`
-/

namespace A081180.P16832172891185404027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n - A161731 n

end

end A081180.P16832172891185404027

namespace A081180

/-- `A163350(n)-A161731(n)` -/
def P16832172891185404027.Spec : Prop :=
  ∀ n, P16832172891185404027.a n = A081180 n

end A081180

/-! ## A081180.P1287434605675264393

`A164072(n)-A163350(n)`
-/

namespace A081180.P1287434605675264393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n - A163350 n

end

end A081180.P1287434605675264393

namespace A081180

/-- `A164072(n)-A163350(n)` -/
def P1287434605675264393.Spec : Prop :=
  ∀ n, P1287434605675264393.a n = A081180 n

end A081180

/-! ## A081180.P4022608586943399786

`A164072(n)%(A163350(n)/A000034(n))`
-/

namespace A081180.P4022608586943399786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164072 n) (SequenceMachineLib.roundAway ((A163350 n : ℚ) / (A000034 n : ℚ)))

end

end A081180.P4022608586943399786

namespace A081180

/-- `A164072(n)%(A163350(n)/A000034(n))` -/
def P4022608586943399786.Spec : Prop :=
  ∀ n, P4022608586943399786.a n = A081180 n

end A081180

/-! ## A081180.P17389378528502620897

`A163604(n)%A161731(n)`
-/

namespace A081180.P17389378528502620897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163604 n) (A161731 n)

end

end A081180.P17389378528502620897

namespace A081180

/-- `A163604(n)%A161731(n)` -/
def P17389378528502620897.Spec : Prop :=
  ∀ n, P17389378528502620897.a n = A081180 n

end A081180

/-! ## A081180.P5446188084950869736

`A161731(n+1)%A161731(n)`
-/

namespace A081180.P5446188084950869736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161731 (n + 1)) (A161731 n)

end

end A081180.P5446188084950869736

namespace A081180

/-- `A161731(n+1)%A161731(n)` -/
def P5446188084950869736.Spec : Prop :=
  ∀ n, P5446188084950869736.a n = A081180 n

end A081180

/-!
# A081181: Staircase on Pascal's triangle.

The programs for A081181, the canonical program `A081181.P9808446231105882495` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081181 has offset 0).

The definition of A081181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081181.P9808446231105882495

`C(∑[n%2+1], n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081181

/-- `C(∑[n%2+1], n)` -/
def P9808446231105882495.Spec : Prop :=
  ∀ n, (P9808446231105882495.a n : ℤ) = A081181 n

theorem P9808446231105882495.correct : P9808446231105882495.Spec := by
  intro n
  simp only [A081181]

end A081181

/-! ## A081181.P2730607246758129891

`C(∑[gcd(2, n+1)], n)`
-/

namespace A081181.P2730607246758129891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081181.P2730607246758129891

namespace A081181

/-- `C(∑[gcd(2, n+1)], n)` -/
def P2730607246758129891.Spec : Prop :=
  ∀ n, (P2730607246758129891.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P14376551151859466541

`C(∑[and(1, n)+1], n)`
-/

namespace A081181.P14376551151859466541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081181.P14376551151859466541

namespace A081181

/-- `C(∑[and(1, n)+1], n)` -/
def P14376551151859466541.Spec : Prop :=
  ∀ n, (P14376551151859466541.a n : ℤ) = A081181 n

theorem P14376551151859466541.correct : P14376551151859466541.Spec := by
  intro n
  simp only [A081181, Nat.add_sub_cancel, A081181.P14376551151859466541.f1, A081181.P14376551151859466541.a, A081181.P9808446231105882495.f1, A081181.P9808446231105882495.a, SequenceMachineLib.memo_apply]
  try simp

end A081181

/-! ## A081181.P4833712628417460973

`C(∑[(2^n)%3], n)`
-/

namespace A081181.P4833712628417460973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081181.P4833712628417460973

namespace A081181

/-- `C(∑[(2^n)%3], n)` -/
def P4833712628417460973.Spec : Prop :=
  ∀ n, (P4833712628417460973.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P9053506132270320782

`C(∑[2^and(1, n)], n)`
-/

namespace A081181.P9053506132270320782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081181.P9053506132270320782

namespace A081181

/-- `C(∑[2^and(1, n)], n)` -/
def P9053506132270320782.Spec : Prop :=
  ∀ n, (P9053506132270320782.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P13883939517308208851

`C(∑[C(2, and(1, n))], n)`
-/

namespace A081181.P13883939517308208851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081181.P13883939517308208851

namespace A081181

/-- `C(∑[C(2, and(1, n))], n)` -/
def P13883939517308208851.Spec : Prop :=
  ∀ n, (P13883939517308208851.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P6173267036904940871

`C(∑[((2*n)%4)!], n)`
-/

namespace A081181.P6173267036904940871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081181.P6173267036904940871

namespace A081181

/-- `C(∑[((2*n)%4)!], n)` -/
def P6173267036904940871.Spec : Prop :=
  ∀ n, (P6173267036904940871.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P9643330494305212138

`C(floor(3*(n+1)/2), n)`
-/

namespace A081181.P9643330494305212138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊3 * ((n + 1 : ℚ) / 2)⌋.toNat n

end

end A081181.P9643330494305212138

namespace A081181

/-- `C(floor(3*(n+1)/2), n)` -/
def P9643330494305212138.Spec : Prop :=
  ∀ n, (P9643330494305212138.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P7669302683588332890

`record[C(A002265(3*n+7), A064680(n))]`
-/

namespace A081181.P7669302683588332890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (3 * n + 7)).toNat (A064680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081181.P7669302683588332890

namespace A081181

/-- `record[C(A002265(3*n+7), A064680(n))]` -/
def P7669302683588332890.Spec : Prop :=
  ∀ n, (P7669302683588332890.a n : ℤ) = A081181 n

end A081181

/-! ## A081181.P15648737471546534920

`A165257(A080827(n+1))`
-/

namespace A081181.P15648737471546534920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165257 (A080827 (n + 1)).toNat

end

end A081181.P15648737471546534920

namespace A081181

/-- `A165257(A080827(n+1))` -/
def P15648737471546534920.Spec : Prop :=
  ∀ n, P15648737471546534920.a n = A081181 n

end A081181

/-! ## A081181.P10224712067630892344

`A165257(A099392(n+2))`
-/

namespace A081181.P10224712067630892344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165257 (A099392 (n + 2)).toNat

end

end A081181.P10224712067630892344

namespace A081181

/-- `A165257(A099392(n+2))` -/
def P10224712067630892344.Spec : Prop :=
  ∀ n, P10224712067630892344.a n = A081181 n

end A081181

/-! ## A081181.P13457106972840449682

`A100100(A047838(n+2))`
-/

namespace A081181.P13457106972840449682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A047838 (n + 2)).toNat

end

end A081181.P13457106972840449682

namespace A081181

/-- `A100100(A047838(n+2))` -/
def P13457106972840449682.Spec : Prop :=
  ∀ n, P13457106972840449682.a n = A081181 n

end A081181

/-! ## A081181.P14162513515075875775

`A059481(A116940(n)+2)`
-/

namespace A081181.P14162513515075875775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A116940 n + 2).toNat

end

end A081181.P14162513515075875775

namespace A081181

/-- `A059481(A116940(n)+2)` -/
def P14162513515075875775.Spec : Prop :=
  ∀ n, P14162513515075875775.a n = A081181 n

end A081181

/-! ## A081181.P997080827684271621

`A059481(A074148(n+1)+1)`
-/

namespace A081181.P997080827684271621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A074148 (n + 1) + 1).toNat

end

end A081181.P997080827684271621

namespace A081181

/-- `A059481(A074148(n+1)+1)` -/
def P997080827684271621.Spec : Prop :=
  ∀ n, P997080827684271621.a n = A081181 n

end A081181

/-! ## A081181.P7979004893808809096

`A100100(A080476(n+2)-1)`
-/

namespace A081181.P7979004893808809096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A080476 (n + 2) - 1).toNat

end

end A081181.P7979004893808809096

namespace A081181

/-- `A100100(A080476(n+2)-1)` -/
def P7979004893808809096.Spec : Prop :=
  ∀ n, P7979004893808809096.a n = A081181 n

end A081181

/-! ## A081181.P9803556645067251756

`A059481(A183575(n+2)-n)`
-/

namespace A081181.P9803556645067251756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A183575 (n + 2) - (n : ℤ)).toNat

end

end A081181.P9803556645067251756

namespace A081181

/-- `A059481(A183575(n+2)-n)` -/
def P9803556645067251756.Spec : Prop :=
  ∀ n, P9803556645067251756.a n = A081181 n

end A081181

/-! ## A081181.P17645293085228845427

`A059481(∑[A109613(n+1)]+1)`
-/

namespace A081181.P17645293085228845427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A081181.P17645293085228845427

namespace A081181

/-- `A059481(∑[A109613(n+1)]+1)` -/
def P17645293085228845427.Spec : Prop :=
  ∀ n, P17645293085228845427.a n = A081181 n

end A081181

/-! ## A081181.P14544692171315826300

`A059481(A080827(n+1)+1+n)`
-/

namespace A081181.P14544692171315826300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A080827 (n + 1) + 1 + (n : ℤ)).toNat

end

end A081181.P14544692171315826300

namespace A081181

/-- `A059481(A080827(n+1)+1+n)` -/
def P14544692171315826300.Spec : Prop :=
  ∀ n, P14544692171315826300.a n = A081181 n

end A081181

/-! ## A081181.P7585607526302152040

`A349727(A074148(n+2))`
-/

namespace A081181.P7585607526302152040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 (A074148 (n + 2)).toNat

end

end A081181.P7585607526302152040

namespace A081181

/-- `A349727(A074148(n+2))` -/
def P7585607526302152040.Spec : Prop :=
  ∀ n, P7585607526302152040.a n = A081181 n

end A081181

/-!
# A081182: 5th binomial transform of (0,1,0,2,0,4,0,8,0,16,...).

The programs for A081182, the canonical program `A081182.P1222866382750923493` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081182 has offset 0).

The definition of A081182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081182.P1222866382750923493

`10*a(n-1)-23*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081182

/-- `10*a(n-1)-23*a(n-2)` -/
def P1222866382750923493.Spec : Prop :=
  ∀ n, P1222866382750923493.a n = A081182 n

theorem P1222866382750923493.correct : P1222866382750923493.Spec := by
  intro n
  simp only [A081182]

end A081182

/-! ## A081182.P15002858075204069663

`((5+sqrt(2))^n-(5-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A081182.P15002858075204069663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (2 : ℝ)) ^ n - (5 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A081182.P15002858075204069663

namespace A081182

/-- `((5+sqrt(2))^n-(5-sqrt(2))^n)/(2*sqrt(2))` -/
def P15002858075204069663.Spec : Prop :=
  ∀ n, P15002858075204069663.a n = (A081182 n : ℝ)

end A081182

/-! ## A081182.P1844859007432744510

`A163346(n)-A161734(n)`
-/

namespace A081182.P1844859007432744510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n - A161734 n

end

end A081182.P1844859007432744510

namespace A081182

/-- `A163346(n)-A161734(n)` -/
def P1844859007432744510.Spec : Prop :=
  ∀ n, P1844859007432744510.a n = A081182 n

end A081182

/-! ## A081182.P16668524505714140154

`A164031(n)-A163346(n)`
-/

namespace A081182.P16668524505714140154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n - A163346 n

end

end A081182.P16668524505714140154

namespace A081182

/-- `A164031(n)-A163346(n)` -/
def P16668524505714140154.Spec : Prop :=
  ∀ n, P16668524505714140154.a n = A081182 n

end A081182

/-! ## A081182.P10350164056269798403

`A163605(n)%A161734(n)`
-/

namespace A081182.P10350164056269798403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163605 n) (A161734 n)

end

end A081182.P10350164056269798403

namespace A081182

/-- `A163605(n)%A161734(n)` -/
def P10350164056269798403.Spec : Prop :=
  ∀ n, P10350164056269798403.a n = A081182 n

end A081182

/-! ## A081182.P6198182388913252986

`A164035(n)%A161734(n)`
-/

namespace A081182.P6198182388913252986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164035 n) (A161734 n)

end

end A081182.P6198182388913252986

namespace A081182

/-- `A164035(n)%A161734(n)` -/
def P6198182388913252986.Spec : Prop :=
  ∀ n, P6198182388913252986.a n = A081182 n

end A081182

/-! ## A081182.P4864339143187633472

`A164038(n)%A161734(n)`
-/

namespace A081182.P4864339143187633472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164038 n) (A161734 n)

end

end A081182.P4864339143187633472

namespace A081182

/-- `A164038(n)%A161734(n)` -/
def P4864339143187633472.Spec : Prop :=
  ∀ n, P4864339143187633472.a n = A081182 n

end A081182

/-! ## A081182.P2722219854787955810

`∑[A163349(n)]-A163349(n)`
-/

namespace A081182.P2722219854787955810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163349 n

end

end A081182.P2722219854787955810

namespace A081182

/-- `∑[A163349(n)]-A163349(n)` -/
def P2722219854787955810.Spec : Prop :=
  ∀ n, P2722219854787955810.a n = A081182 n

end A081182

/-! ## A081182.P2672472469799484775

`2*A161734(n)-A161947(n)`
-/

namespace A081182.P2672472469799484775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161734 n - A161947 n

end

end A081182.P2672472469799484775

namespace A081182

/-- `2*A161734(n)-A161947(n)` -/
def P2672472469799484775.Spec : Prop :=
  ∀ n, P2672472469799484775.a n = A081182 n

end A081182

/-! ## A081182.P6393979121680253545

`2*A163346(n)-A164035(n)`
-/

namespace A081182.P6393979121680253545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163346 n - A164035 n

end

end A081182.P6393979121680253545

namespace A081182

/-- `2*A163346(n)-A164035(n)` -/
def P6393979121680253545.Spec : Prop :=
  ∀ n, P6393979121680253545.a n = A081182 n

end A081182

/-! ## A081182.P1107499519991943060

`A161734(n+1)%A161734(n)`
-/

namespace A081182.P1107499519991943060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161734 (n + 1)) (A161734 n)

end

end A081182.P1107499519991943060

namespace A081182

/-- `A161734(n+1)%A161734(n)` -/
def P1107499519991943060.Spec : Prop :=
  ∀ n, P1107499519991943060.a n = A081182 n

end A081182

/-!
# A081183: 6th binomial transform of (0,1,0,2,0,4,0,8,0,16,...).

The programs for A081183, the canonical program `A081183.P9281654741230934562` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081183 has offset 0).

The definition of A081183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081183.P9281654741230934562

`12*a(n-1)-34*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081183

/-- `12*a(n-1)-34*a(n-2)` -/
def P9281654741230934562.Spec : Prop :=
  ∀ n, P9281654741230934562.a n = A081183 n

theorem P9281654741230934562.correct : P9281654741230934562.Spec := by
  intro n
  simp only [A081183]

end A081183

/-! ## A081183.P3914648446810929112

`((6+sqrt(2))^n-(6-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A081183.P3914648446810929112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (2 : ℝ)) ^ n - (6 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A081183.P3914648446810929112

namespace A081183

/-- `((6+sqrt(2))^n-(6-sqrt(2))^n)/(2*sqrt(2))` -/
def P3914648446810929112.Spec : Prop :=
  ∀ n, P3914648446810929112.a n = (A081183 n : ℝ)

end A081183

/-! ## A081183.P7114466741066291836

`A163458(n)-A147957(n)`
-/

namespace A081183.P7114466741066291836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 n - A147957 n

end

end A081183.P7114466741066291836

namespace A081183

/-- `A163458(n)-A147957(n)` -/
def P7114466741066291836.Spec : Prop :=
  ∀ n, P7114466741066291836.a n = A081183 n

end A081183

/-! ## A081183.P14841284327152855635

`A163458(A005843(n)/2)%A147957(n)`
-/

namespace A081183.P14841284327152855635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163458 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat) (A147957 n)

end

end A081183.P14841284327152855635

namespace A081183

/-- `A163458(A005843(n)/2)%A147957(n)` -/
def P14841284327152855635.Spec : Prop :=
  ∀ n, P14841284327152855635.a n = A081183 n

end A081183

/-! ## A081183.P11241994930954610952

`A163444(n)-A163458(n)`
-/

namespace A081183.P11241994930954610952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163444 n - A163458 n

end

end A081183.P11241994930954610952

namespace A081183

/-- `A163444(n)-A163458(n)` -/
def P11241994930954610952.Spec : Prop :=
  ∀ n, P11241994930954610952.a n = A081183 n

end A081183

/-! ## A081183.P7702634984790499979

`A164021(n)%A163458(n)`
-/

namespace A081183.P7702634984790499979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164021 n) (A163458 n)

end

end A081183.P7702634984790499979

namespace A081183

/-- `A164021(n)%A163458(n)` -/
def P7702634984790499979.Spec : Prop :=
  ∀ n, P7702634984790499979.a n = A081183 n

end A081183

/-! ## A081183.P1292776533092440223

`A164110(n)%A163458(n)`
-/

namespace A081183.P1292776533092440223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164110 n) (A163458 n)

end

end A081183.P1292776533092440223

namespace A081183

/-- `A164110(n)%A163458(n)` -/
def P1292776533092440223.Spec : Prop :=
  ∀ n, P1292776533092440223.a n = A081183 n

end A081183

/-! ## A081183.P10254278885759353483

`A163458(n+1)%A163458(n)`
-/

namespace A081183.P10254278885759353483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163458 (n + 1)) (A163458 n)

end

end A081183.P10254278885759353483

namespace A081183

/-- `A163458(n+1)%A163458(n)` -/
def P10254278885759353483.Spec : Prop :=
  ∀ n, P10254278885759353483.a n = A081183 n

end A081183

/-!
# A081184: 7th binomial transform of (0,1,0,2,0,4,0,8,0,16,...).

The programs for A081184, the canonical program `A081184.P5232292277599344596` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081184 has offset 0).

The definition of A081184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081184.P5232292277599344596

`14*a(n-1)-47*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081184

/-- `14*a(n-1)-47*a(n-2)` -/
def P5232292277599344596.Spec : Prop :=
  ∀ n, P5232292277599344596.a n = A081184 n

theorem P5232292277599344596.correct : P5232292277599344596.Spec := by
  intro n
  simp only [A081184]

end A081184

/-! ## A081184.P16776957907919504030

`((sqrt(2)+7)^n-(7-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A081184.P16776957907919504030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 7) ^ n - (7 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A081184.P16776957907919504030

namespace A081184

/-- `((sqrt(2)+7)^n-(7-sqrt(2))^n)/(2*sqrt(2))` -/
def P16776957907919504030.Spec : Prop :=
  ∀ n, P16776957907919504030.a n = (A081184 n : ℝ)

end A081184

/-! ## A081184.P13760117719367262099

`A163459(n)-A147958(n)`
-/

namespace A081184.P13760117719367262099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163459 n - A147958 n

end

end A081184.P13760117719367262099

namespace A081184

/-- `A163459(n)-A147958(n)` -/
def P13760117719367262099.Spec : Prop :=
  ∀ n, P13760117719367262099.a n = A081184 n

end A081184

/-! ## A081184.P2768238348839247071

`A163445(n)-A163459(n)`
-/

namespace A081184.P2768238348839247071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163445 n - A163459 n

end

end A081184.P2768238348839247071

namespace A081184

/-- `A163445(n)-A163459(n)` -/
def P2768238348839247071.Spec : Prop :=
  ∀ n, P2768238348839247071.a n = A081184 n

end A081184

/-! ## A081184.P2988621207116306870

`A163459(n+1)%A163459(n)`
-/

namespace A081184.P2988621207116306870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163459 (n + 1)) (A163459 n)

end

end A081184.P2988621207116306870

namespace A081184

/-- `A163459(n+1)%A163459(n)` -/
def P2988621207116306870.Spec : Prop :=
  ∀ n, P2988621207116306870.a n = A081184 n

end A081184

/-!
# A081185: 8th binomial transform of (0,1,0,2,0,4,0,8,0,16,...).

The programs for A081185, the canonical program `A081185.P11018537144841263985` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081185 has offset 0).

The definition of A081185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081185.P11018537144841263985

`16*a(n-1)-62*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081185

/-- `16*a(n-1)-62*a(n-2)` -/
def P11018537144841263985.Spec : Prop :=
  ∀ n, P11018537144841263985.a n = A081185 n

theorem P11018537144841263985.correct : P11018537144841263985.Spec := by
  intro n
  simp only [A081185]

end A081185

/-! ## A081185.P11540436048991955893

`((sqrt(2)+8)^n-(8-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A081185.P11540436048991955893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 8) ^ n - (8 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A081185.P11540436048991955893

namespace A081185

/-- `((sqrt(2)+8)^n-(8-sqrt(2))^n)/(2*sqrt(2))` -/
def P11540436048991955893.Spec : Prop :=
  ∀ n, P11540436048991955893.a n = (A081185 n : ℝ)

end A081185

/-! ## A081185.P3731818966933203571

`A163460(n)-A147959(n)`
-/

namespace A081185.P3731818966933203571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163460 n - A147959 n

end

end A081185.P3731818966933203571

namespace A081185

/-- `A163460(n)-A147959(n)` -/
def P3731818966933203571.Spec : Prop :=
  ∀ n, P3731818966933203571.a n = A081185 n

end A081185

/-! ## A081185.P8503979460280859432

`A163446(n)-A163460(n)`
-/

namespace A081185.P8503979460280859432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163446 n - A163460 n

end

end A081185.P8503979460280859432

namespace A081185

/-- `A163446(n)-A163460(n)` -/
def P8503979460280859432.Spec : Prop :=
  ∀ n, P8503979460280859432.a n = A081185 n

end A081185

/-! ## A081185.P15842476377143964121

`A163460(n+1)%A163460(n)`
-/

namespace A081185.P15842476377143964121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163460 (n + 1)) (A163460 n)

end

end A081185.P15842476377143964121

namespace A081185

/-- `A163460(n+1)%A163460(n)` -/
def P15842476377143964121.Spec : Prop :=
  ∀ n, P15842476377143964121.a n = A081185 n

end A081185

/-! ## A081185.P12517516900451991463

`A163446(A118759(n))%A163460(n)`
-/

namespace A081185.P12517516900451991463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163446 (A118759 n).toNat) (A163460 n)

end

end A081185.P12517516900451991463

namespace A081185

/-- `A163446(A118759(n))%A163460(n)` -/
def P12517516900451991463.Spec : Prop :=
  ∀ n, P12517516900451991463.a n = A081185 n

end A081185

/-!
# A081186: 4th binomial transform of (1,0,1,0,1,...), A059841.

The programs for A081186, the canonical program `A081186.P6048156065260451589` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081186 has offset 0).

The definition of A081186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081186.P18266326632128608143

`(3^n+5^n)/2`
-/

namespace A081186.P18266326632128608143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 5 ^ n : ℚ) / 2

end

end A081186.P18266326632128608143

namespace A081186

/-- `(3^n+5^n)/2` -/
def P18266326632128608143.Spec : Prop :=
  ∀ n, P18266326632128608143.a n = (A081186 n : ℚ)

end A081186

/-! ## A081186.P6048156065260451589

`8*a(n-1)-15*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081186

/-- `8*a(n-1)-15*a(n-2)` -/
def P6048156065260451589.Spec : Prop :=
  ∀ n, P6048156065260451589.a n = A081186 n

theorem P6048156065260451589.correct : P6048156065260451589.Spec := by
  intro n
  simp only [A081186]

end A081186

/-! ## A081186.P6412327605484535243

`5^(n-1)+3*a(n-1)` with `a(0)=1`
-/

namespace A081186.P6412327605484535243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 3 * a (n - 1)

end

end A081186.P6412327605484535243

namespace A081186

/-- `5^(n-1)+3*a(n-1)` -/
def P6412327605484535243.Spec : Prop :=
  ∀ n, P6412327605484535243.a n = (A081186 n : ℚ)

end A081186

/-! ## A081186.P7502376228016438368

`5*a(n-1)-3^(n-1)` with `a(0)=1`
-/

namespace A081186.P7502376228016438368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081186.P7502376228016438368

namespace A081186

/-- `5*a(n-1)-3^(n-1)` -/
def P7502376228016438368.Spec : Prop :=
  ∀ n, P7502376228016438368.a n = (A081186 n : ℚ)

end A081186

/-! ## A081186.P15485116603908785576

`lcm(3, a(n-1))+5^(n-1)` with `a(0)=1`
-/

namespace A081186.P15485116603908785576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081186.P15485116603908785576

namespace A081186

/-- `lcm(3, a(n-1))+5^(n-1)` -/
def P15485116603908785576.Spec : Prop :=
  ∀ n, P15485116603908785576.a n = (A081186 n : ℚ)

end A081186

/-! ## A081186.P16434663892450901820

`ceil(A155603(n)/2)`
-/

namespace A081186.P16434663892450901820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155603 n : ℚ) / 2⌉

end

end A081186.P16434663892450901820

namespace A081186

/-- `ceil(A155603(n)/2)` -/
def P16434663892450901820.Spec : Prop :=
  ∀ n, P16434663892450901820.a n = A081186 n

end A081186

/-! ## A081186.P11709483735332118794

`Δ[A233106(n+1)]`
-/

namespace A081186.P11709483735332118794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081186.P11709483735332118794

namespace A081186

/-- `Δ[A233106(n+1)]` -/
def P11709483735332118794.Spec : Prop :=
  ∀ n, P11709483735332118794.a n = A081186 n

end A081186

/-! ## A081186.P2439857484125334663

`A120950(n)/2+n`
-/

namespace A081186.P2439857484125334663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120950 n : ℚ) / 2 + (n : ℚ)

end

end A081186.P2439857484125334663

namespace A081186

/-- `A120950(n)/2+n` -/
def P2439857484125334663.Spec : Prop :=
  ∀ n, P2439857484125334663.a n = (A081186 n : ℚ)

end A081186

/-! ## A081186.P15666946426942120341

`A120949(n)/2-n`
-/

namespace A081186.P15666946426942120341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120949 n : ℚ) / 2 - (n : ℚ)

end

end A081186.P15666946426942120341

namespace A081186

/-- `A120949(n)/2-n` -/
def P15666946426942120341.Spec : Prop :=
  ∀ n, P15666946426942120341.a n = (A081186 n : ℚ)

end A081186

/-! ## A081186.P2320450099318469960

`A005059(n)+A000244(n)`
-/

namespace A081186.P2320450099318469960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n + A000244 n

end

end A081186.P2320450099318469960

namespace A081186

/-- `A005059(n)+A000244(n)` -/
def P2320450099318469960.Spec : Prop :=
  ∀ n, P2320450099318469960.a n = A081186 n

end A081186

/-! ## A081186.P12097517823172650066

`A034478(n)+A003462(n)`
-/

namespace A081186.P12097517823172650066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A003462 n

end

end A081186.P12097517823172650066

namespace A081186

/-- `A034478(n)+A003462(n)` -/
def P12097517823172650066.Spec : Prop :=
  ∀ n, P12097517823172650066.a n = A081186 n

end A081186

/-! ## A081186.P1289456133735438210

`A005059(n)+Δ[A003462(n)]`
-/

namespace A081186.P1289456133735438210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n + (f1 (n + 1) - f1 n)

end

end A081186.P1289456133735438210

namespace A081186

/-- `A005059(n)+Δ[A003462(n)]` -/
def P1289456133735438210.Spec : Prop :=
  ∀ n, P1289456133735438210.a n = A081186 n

end A081186

/-! ## A081186.P11082958340732096225

`Δ[A086444(n)]-A086444(n)`
-/

namespace A081186.P11082958340732096225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086444 n

end

end A081186.P11082958340732096225

namespace A081186

/-- `Δ[A086444(n)]-A086444(n)` -/
def P11082958340732096225.Spec : Prop :=
  ∀ n, P11082958340732096225.a n = A081186 n

end A081186

/-! ## A081186.P9080650522803164348

`A005059(n)+A024023(n)+1`
-/

namespace A081186.P9080650522803164348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n + (A024023 n + 1)

end

end A081186.P9080650522803164348

namespace A081186

/-- `A005059(n)+A024023(n)+1` -/
def P9080650522803164348.Spec : Prop :=
  ∀ n, P9080650522803164348.a n = A081186 n

end A081186

/-! ## A081186.P6297460852761474945

`A005059(n)+A034472(n)-1`
-/

namespace A081186.P6297460852761474945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n + (A034472 n - 1)

end

end A081186.P6297460852761474945

namespace A081186

/-- `A005059(n)+A034472(n)-1` -/
def P6297460852761474945.Spec : Prop :=
  ∀ n, P6297460852761474945.a n = A081186 n

end A081186

/-! ## A081186.P14790262180311264579

`A007051(n)+A034478(n)-1`
-/

namespace A081186.P14790262180311264579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A034478 n - 1)

end

end A081186.P14790262180311264579

namespace A081186

/-- `A007051(n)+A034478(n)-1` -/
def P14790262180311264579.Spec : Prop :=
  ∀ n, P14790262180311264579.a n = A081186 n

end A081186

/-! ## A081186.P14406194321730193066

`A003462(n)+A137410(n)+2`
-/

namespace A081186.P14406194321730193066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A137410 n + 2)

end

end A081186.P14406194321730193066

namespace A081186

/-- `A003462(n)+A137410(n)+2` -/
def P14406194321730193066.Spec : Prop :=
  ∀ n, P14406194321730193066.a n = A081186 n

end A081186

/-! ## A081186.P5444183450425838262

`A007051(n)+A132079(n)-2`
-/

namespace A081186.P5444183450425838262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A132079 n - 2)

end

end A081186.P5444183450425838262

namespace A081186

/-- `A007051(n)+A132079(n)-2` -/
def P5444183450425838262.Spec : Prop :=
  ∀ n, P5444183450425838262.a n = A081186 n

end A081186

/-! ## A081186.P17006378835505782826

`A034478(n)+A115098(n)-2`
-/

namespace A081186.P17006378835505782826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + (A115098 n - 2)

end

end A081186.P17006378835505782826

namespace A081186

/-- `A034478(n)+A115098(n)-2` -/
def P17006378835505782826.Spec : Prop :=
  ∀ n, P17006378835505782826.a n = A081186 n

end A081186

/-!
# A081187: 5th binomial transform of (1,0,1,0,1,...), A059841.

The programs for A081187, the canonical program `A081187.P15459874817352552864` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081187 has offset 0).

The definition of A081187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081187.P8668592463871168298

`(4^n+6^n)/2`
-/

namespace A081187.P8668592463871168298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 6 ^ n : ℚ) / 2

end

end A081187.P8668592463871168298

namespace A081187

/-- `(4^n+6^n)/2` -/
def P8668592463871168298.Spec : Prop :=
  ∀ n, P8668592463871168298.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P15459874817352552864

`10*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081187

/-- `10*a(n-1)-24*a(n-2)` -/
def P15459874817352552864.Spec : Prop :=
  ∀ n, P15459874817352552864.a n = A081187 n

theorem P15459874817352552864.correct : P15459874817352552864.Spec := by
  intro n
  simp only [A081187]

end A081187

/-! ## A081187.P3379109401660320895

`6^(n-1)+4*a(n-1)` with `a(0)=1`
-/

namespace A081187.P3379109401660320895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 4 * a (n - 1)

end

end A081187.P3379109401660320895

namespace A081187

/-- `6^(n-1)+4*a(n-1)` -/
def P3379109401660320895.Spec : Prop :=
  ∀ n, P3379109401660320895.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P14909157987405640701

`6*a(n-1)-4^(n-1)` with `a(0)=1`
-/

namespace A081187.P14909157987405640701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081187.P14909157987405640701

namespace A081187

/-- `6*a(n-1)-4^(n-1)` -/
def P14909157987405640701.Spec : Prop :=
  ∀ n, P14909157987405640701.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P316952799802352448

`floor(A074512(n)/2)`
-/

namespace A081187.P316952799802352448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074512 n : ℚ) / 2⌋

end

end A081187.P316952799802352448

namespace A081187

/-- `floor(A074512(n)/2)` -/
def P316952799802352448.Spec : Prop :=
  ∀ n, P316952799802352448.a n = A081187 n

end A081187

/-! ## A081187.P416609325824258366

`ceil(A155617(n)/2)`
-/

namespace A081187.P416609325824258366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155617 n : ℚ) / 2⌉

end

end A081187.P416609325824258366

namespace A081187

/-- `ceil(A155617(n)/2)` -/
def P416609325824258366.Spec : Prop :=
  ∀ n, P416609325824258366.a n = A081187 n

end A081187

/-! ## A081187.P13538051241659290847

`1/2*A074612(n)`
-/

namespace A081187.P13538051241659290847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A074612 n : ℚ)

end

end A081187.P13538051241659290847

namespace A081187

/-- `1/2*A074612(n)` -/
def P13538051241659290847.Spec : Prop :=
  ∀ n, P13538051241659290847.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P3642101235469342777

`A081199(n)+4^n`
-/

namespace A081187.P3642101235469342777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 n + (4 ^ n : ℤ)

end

end A081187.P3642101235469342777

namespace A081187

/-- `A081199(n)+4^n` -/
def P3642101235469342777.Spec : Prop :=
  ∀ n, P3642101235469342777.a n = A081187 n

end A081187

/-! ## A081187.P13236058587221718903

`2^(n-1)*A007689(n)`
-/

namespace A081187.P13236058587221718903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A007689 n : ℚ)

end

end A081187.P13236058587221718903

namespace A081187

/-- `2^(n-1)*A007689(n)` -/
def P13236058587221718903.Spec : Prop :=
  ∀ n, P13236058587221718903.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P17608197212316316870

`2^(n-1)*A085281(n+1)`
-/

namespace A081187.P17608197212316316870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A085281 (n + 1) : ℚ)

end

end A081187.P17608197212316316870

namespace A081187

/-- `2^(n-1)*A085281(n+1)` -/
def P17608197212316316870.Spec : Prop :=
  ∀ n, P17608197212316316870.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P5677236625838446442

`record[A034008(n)*A085281(n)]`
-/

namespace A081187.P5677236625838446442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A085281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081187.P5677236625838446442

namespace A081187

/-- `record[A034008(n)*A085281(n)]` -/
def P5677236625838446442.Spec : Prop :=
  ∀ n, P5677236625838446442.a n = A081187 n

end A081187

/-! ## A081187.P12690704865713688859

`A131577(n+1)²+A081199(n)`
-/

namespace A081187.P12690704865713688859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) ^ 2 + A081199 n

end

end A081187.P12690704865713688859

namespace A081187

/-- `A131577(n+1)²+A081199(n)` -/
def P12690704865713688859.Spec : Prop :=
  ∀ n, P12690704865713688859.a n = A081187 n

end A081187

/-! ## A081187.P14792716580218465966

`A000079(n)/2*Δ[A094374(n)]`
-/

namespace A081187.P14792716580218465966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A081187.P14792716580218465966

namespace A081187

/-- `A000079(n)/2*Δ[A094374(n)]` -/
def P14792716580218465966.Spec : Prop :=
  ∀ n, P14792716580218465966.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P15010665701315679171

`A000079(n)/2*Δ[A099754(n)]`
-/

namespace A081187.P15010665701315679171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A081187.P15010665701315679171

namespace A081187

/-- `A000079(n)/2*Δ[A099754(n)]` -/
def P15010665701315679171.Spec : Prop :=
  ∀ n, P15010665701315679171.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P9313558622510136811

`A131577(2*n+1)+A081199(n)`
-/

namespace A081187.P9313558622510136811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n + 1) + A081199 n

end

end A081187.P9313558622510136811

namespace A081187

/-- `A131577(2*n+1)+A081199(n)` -/
def P9313558622510136811.Spec : Prop :=
  ∀ n, P9313558622510136811.a n = A081187 n

end A081187

/-! ## A081187.P11163755275004380877

`A085281(n+1)/2*A131577(n+1)`
-/

namespace A081187.P11163755275004380877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) : ℚ) / 2 * (A131577 (n + 1) : ℚ)

end

end A081187.P11163755275004380877

namespace A081187

/-- `A085281(n+1)/2*A131577(n+1)` -/
def P11163755275004380877.Spec : Prop :=
  ∀ n, P11163755275004380877.a n = (A081187 n : ℚ)

end A081187

/-! ## A081187.P16314305694149579993

`A000079(n)²+A001047(n)*A011782(n)`
-/

namespace A081187.P16314305694149579993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + A001047 n * A011782 n

end

end A081187.P16314305694149579993

namespace A081187

/-- `A000079(n)²+A001047(n)*A011782(n)` -/
def P16314305694149579993.Spec : Prop :=
  ∀ n, P16314305694149579993.a n = A081187 n

end A081187

/-! ## A081187.P17762889773211645081

`Δ[A081199(n)]-2*A248337(n)`
-/

namespace A081187.P17762889773211645081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A248337 n

end

end A081187.P17762889773211645081

namespace A081187

/-- `Δ[A081199(n)]-2*A248337(n)` -/
def P17762889773211645081.Spec : Prop :=
  ∀ n, P17762889773211645081.a n = A081187 n

end A081187

/-!
# A081188: 6th binomial transform of (1,0,1,0,1,.....), A059841.

The programs for A081188, the canonical program `A081188.P13598452653354748795` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081188 has offset 0).

The definition of A081188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081188.P13598452653354748795

`12*a(n-1)-35*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081188

/-- `12*a(n-1)-35*a(n-2)` -/
def P13598452653354748795.Spec : Prop :=
  ∀ n, P13598452653354748795.a n = A081188 n

theorem P13598452653354748795.correct : P13598452653354748795.Spec := by
  intro n
  simp only [A081188]

end A081188

/-! ## A081188.P6822822362780794663

`(5^n+7^n)/2`
-/

namespace A081188.P6822822362780794663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 7 ^ n : ℚ) / 2

end

end A081188.P6822822362780794663

namespace A081188

/-- `(5^n+7^n)/2` -/
def P6822822362780794663.Spec : Prop :=
  ∀ n, P6822822362780794663.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P17904376652021529445

`floor(A074616(n)/2)`
-/

namespace A081188.P17904376652021529445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074616 n : ℚ) / 2⌋

end

end A081188.P17904376652021529445

namespace A081188

/-- `floor(A074616(n)/2)` -/
def P17904376652021529445.Spec : Prop :=
  ∀ n, P17904376652021529445.a n = A081188 n

end A081188

/-! ## A081188.P17550421854497232741

`ceil(A155634(n)/2)`
-/

namespace A081188.P17550421854497232741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155634 n : ℚ) / 2⌉

end

end A081188.P17550421854497232741

namespace A081188

/-- `ceil(A155634(n)/2)` -/
def P17550421854497232741.Spec : Prop :=
  ∀ n, P17550421854497232741.a n = A081188 n

end A081188

/-! ## A081188.P10077507406083211362

`A121201(n)/2+n`
-/

namespace A081188.P10077507406083211362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121201 n : ℚ) / 2 + (n : ℚ)

end

end A081188.P10077507406083211362

namespace A081188

/-- `A121201(n)/2+n` -/
def P10077507406083211362.Spec : Prop :=
  ∀ n, P10077507406083211362.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P17722036285067756337

`A121200(n)/2-n`
-/

namespace A081188.P17722036285067756337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121200 n : ℚ) / 2 - (n : ℚ)

end

end A081188.P17722036285067756337

namespace A081188

/-- `A121200(n)/2-n` -/
def P17722036285067756337.Spec : Prop :=
  ∀ n, P17722036285067756337.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P13698243665027289799

`A081200(n)+5^n`
-/

namespace A081188.P13698243665027289799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 n + (5 ^ n : ℤ)

end

end A081188.P13698243665027289799

namespace A081188

/-- `A081200(n)+5^n` -/
def P13698243665027289799.Spec : Prop :=
  ∀ n, P13698243665027289799.a n = A081188 n

end A081188

/-! ## A081188.P10178725168701569063

`A120741(n)+A034478(n)`
-/

namespace A081188.P10178725168701569063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + A034478 n

end

end A081188.P10178725168701569063

namespace A081188

/-- `A120741(n)+A034478(n)` -/
def P10178725168701569063.Spec : Prop :=
  ∀ n, P10178725168701569063.a n = A081188 n

end A081188

/-! ## A081188.P13195563665591485757

`A034478(n)+A034494(n)-1`
-/

namespace A081188.P13195563665591485757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + (A034494 n - 1)

end

end A081188.P13195563665591485757

namespace A081188

/-- `A034478(n)+A034494(n)-1` -/
def P13195563665591485757.Spec : Prop :=
  ∀ n, P13195563665591485757.a n = A081188 n

end A081188

/-! ## A081188.P11020159834443818477

`A000420(n)-A121213(n)/2`
-/

namespace A081188.P11020159834443818477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) - (A121213 n : ℚ) / 2

end

end A081188.P11020159834443818477

namespace A081188

/-- `A000420(n)-A121213(n)/2` -/
def P11020159834443818477.Spec : Prop :=
  ∀ n, P11020159834443818477.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P7839738372617999468

`∑[(A055272(n)+A005054(n))/2]`
-/

namespace A081188.P7839738372617999468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055272 n + A005054 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081188.P7839738372617999468

namespace A081188

/-- `∑[(A055272(n)+A005054(n))/2]` -/
def P7839738372617999468.Spec : Prop :=
  ∀ n, P7839738372617999468.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P3028068074341261287

`Δ[(A023000(n)+A003463(n))/2]`
-/

namespace A081188.P3028068074341261287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 n + A003463 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081188.P3028068074341261287

namespace A081188

/-- `Δ[(A023000(n)+A003463(n))/2]` -/
def P3028068074341261287.Spec : Prop :=
  ∀ n, P3028068074341261287.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P16444117124088228403

`(A024076(n)+A024050(n))/2+n`
-/

namespace A081188.P16444117124088228403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024076 n + A024050 n : ℚ) / 2 + (n : ℚ)

end

end A081188.P16444117124088228403

namespace A081188

/-- `(A024076(n)+A024050(n))/2+n` -/
def P16444117124088228403.Spec : Prop :=
  ∀ n, P16444117124088228403.a n = (A081188 n : ℚ)

end A081188

/-! ## A081188.P8564697740924067901

`(A226199(n)+A104745(n))/2-n`
-/

namespace A081188.P8564697740924067901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226199 n + A104745 n : ℚ) / 2 - (n : ℚ)

end

end A081188.P8564697740924067901

namespace A081188

/-- `(A226199(n)+A104745(n))/2-n` -/
def P8564697740924067901.Spec : Prop :=
  ∀ n, P8564697740924067901.a n = (A081188 n : ℚ)

end A081188

/-!
# A081189: 7th binomial transform of (1,0,1,0,1,...), A059841.

The programs for A081189, the canonical program `A081189.P9030262525170882258` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081189 has offset 0).

The definition of A081189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081189.P9030262525170882258

`6*a(n-1)+8^(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081189

/-- `6*a(n-1)+8^(n-1)` -/
def P9030262525170882258.Spec : Prop :=
  ∀ n, P9030262525170882258.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P2379335777839713289

`(3^n+4^n)*2^(n-1)`
-/

namespace A081189.P2379335777839713289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 4 ^ n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081189.P2379335777839713289

namespace A081189

/-- `(3^n+4^n)*2^(n-1)` -/
def P2379335777839713289.Spec : Prop :=
  ∀ n, P2379335777839713289.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P3031826580648344606

`or(A081341(n), A081342(n))`
-/

namespace A081189.P3031826580648344606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081341 n) (A081342 n)

end

end A081189.P3031826580648344606

namespace A081189

/-- `or(A081341(n), A081342(n))` -/
def P3031826580648344606.Spec : Prop :=
  ∀ n, P3031826580648344606.a n = A081189 n

end A081189

/-! ## A081189.P10131986461453201592

`or(A011782(A008486(n)), A081341(n))`
-/

namespace A081189.P10131986461453201592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (A008486 n).toNat) (A081341 n)

end

end A081189.P10131986461453201592

namespace A081189

/-- `or(A011782(A008486(n)), A081341(n))` -/
def P10131986461453201592.Spec : Prop :=
  ∀ n, P10131986461453201592.a n = A081189 n

end A081189

/-! ## A081189.P8444747998955033825

`A081341(n)+A081342(n)-A011782(n)`
-/

namespace A081189.P8444747998955033825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 n + (A081342 n - A011782 n)

end

end A081189.P8444747998955033825

namespace A081189

/-- `A081341(n)+A081342(n)-A011782(n)` -/
def P8444747998955033825.Spec : Prop :=
  ∀ n, P8444747998955033825.a n = A081189 n

end A081189

/-! ## A081189.P4318617300342658143

`A074620(n)/2`
-/

namespace A081189.P4318617300342658143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074620 n : ℚ) / 2

end

end A081189.P4318617300342658143

namespace A081189

/-- `A074620(n)/2` -/
def P4318617300342658143.Spec : Prop :=
  ∀ n, P4318617300342658143.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P2887558269660521784

`(A155646(n)+1)/2`
-/

namespace A081189.P2887558269660521784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155646 n + 1 : ℚ) / 2

end

end A081189.P2887558269660521784

namespace A081189

/-- `(A155646(n)+1)/2` -/
def P2887558269660521784.Spec : Prop :=
  ∀ n, P2887558269660521784.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P14077889090203984733

`(A074521(n)-1)/2`
-/

namespace A081189.P14077889090203984733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074521 n - 1 : ℚ) / 2

end

end A081189.P14077889090203984733

namespace A081189

/-- `(A074521(n)-1)/2` -/
def P14077889090203984733.Spec : Prop :=
  ∀ n, P14077889090203984733.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P9158509906774729930

`(A026549(2*n)+8^n)/2`
-/

namespace A081189.P9158509906774729930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 (2 * n) + (8 ^ n : ℤ) : ℚ) / 2

end

end A081189.P9158509906774729930

namespace A081189

/-- `(A026549(2*n)+8^n)/2` -/
def P9158509906774729930.Spec : Prop :=
  ∀ n, P9158509906774729930.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P10152745149936794351

`(6^n+A000225(3*n)+1)/2`
-/

namespace A081189.P10152745149936794351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) + (A000225 (3 * n) + 1) : ℚ) / 2

end

end A081189.P10152745149936794351

namespace A081189

/-- `(6^n+A000225(3*n)+1)/2` -/
def P10152745149936794351.Spec : Prop :=
  ∀ n, P10152745149936794351.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P6897201868090128809

`(A001018(n)+A000400(n))/2`
-/

namespace A081189.P6897201868090128809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n + A000400 n : ℚ) / 2

end

end A081189.P6897201868090128809

namespace A081189

/-- `(A001018(n)+A000400(n))/2` -/
def P6897201868090128809.Spec : Prop :=
  ∀ n, P6897201868090128809.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P12072372719929032716

`(A155597(n)+A155592(n))/2`
-/

namespace A081189.P12072372719929032716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155597 n + A155592 n : ℚ) / 2

end

end A081189.P12072372719929032716

namespace A081189

/-- `(A155597(n)+A155592(n))/2` -/
def P12072372719929032716.Spec : Prop :=
  ∀ n, P12072372719929032716.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P5920360259364136389

`(A155611(n)+A155606(n))/2`
-/

namespace A081189.P5920360259364136389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155611 n + A155606 n : ℚ) / 2

end

end A081189.P5920360259364136389

namespace A081189

/-- `(A155611(n)+A155606(n))/2` -/
def P5920360259364136389.Spec : Prop :=
  ∀ n, P5920360259364136389.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P16358418822569445778

`(A074556(n)-A000244(n))/2`
-/

namespace A081189.P16358418822569445778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074556 n - A000244 n : ℚ) / 2

end

end A081189.P16358418822569445778

namespace A081189

/-- `(A074556(n)-A000244(n))/2` -/
def P16358418822569445778.Spec : Prop :=
  ∀ n, P16358418822569445778.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P14079559743405565005

`(A074577(n)-A000420(n))/2`
-/

namespace A081189.P14079559743405565005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074577 n - A000420 n : ℚ) / 2

end

end A081189.P14079559743405565005

namespace A081189

/-- `(A074577(n)-A000420(n))/2` -/
def P14079559743405565005.Spec : Prop :=
  ∀ n, P14079559743405565005.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P7458214405493880529

`A000079(3*n)-A081201(n)`
-/

namespace A081189.P7458214405493880529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) - A081201 n

end

end A081189.P7458214405493880529

namespace A081189

/-- `A000079(3*n)-A081201(n)` -/
def P7458214405493880529.Spec : Prop :=
  ∀ n, P7458214405493880529.a n = A081189 n

end A081189

/-! ## A081189.P9746876877277451124

`∑[(A055274(n)+A052934(n))/2]`
-/

namespace A081189.P9746876877277451124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055274 n + A052934 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081189.P9746876877277451124

namespace A081189

/-- `∑[(A055274(n)+A052934(n))/2]` -/
def P9746876877277451124.Spec : Prop :=
  ∀ n, P9746876877277451124.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P977108618602645923

`Δ[(A023001(n)+A003464(n))/2]`
-/

namespace A081189.P977108618602645923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023001 n + A003464 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081189.P977108618602645923

namespace A081189

/-- `Δ[(A023001(n)+A003464(n))/2]` -/
def P977108618602645923.Spec : Prop :=
  ∀ n, P977108618602645923.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P14315539596367415931

`record[(A094014(n)+A026549(n))/2]`
-/

namespace A081189.P14315539596367415931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094014 n + A026549 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081189.P14315539596367415931

namespace A081189

/-- `record[(A094014(n)+A026549(n))/2]` -/
def P14315539596367415931.Spec : Prop :=
  ∀ n, P14315539596367415931.a n = (A081189 n : ℚ)

end A081189

/-! ## A081189.P14297952817966600280

`(A094014(2*n)+A026549(2*n))/2`
-/

namespace A081189.P14297952817966600280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094014 (2 * n) + A026549 (2 * n) : ℚ) / 2

end

end A081189.P14297952817966600280

namespace A081189

/-- `(A094014(2*n)+A026549(2*n))/2` -/
def P14297952817966600280.Spec : Prop :=
  ∀ n, P14297952817966600280.a n = (A081189 n : ℚ)

end A081189

/-!
# A081190: 8th binomial transform of (1,0,1,0,1,.....), A059841.

The programs for A081190, the canonical program `A081190.P5076735419547249316` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081190 has offset 0).

The definition of A081190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081190.P5076735419547249316

`16*a(n-1)-63*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081190

/-- `16*a(n-1)-63*a(n-2)` -/
def P5076735419547249316.Spec : Prop :=
  ∀ n, P5076735419547249316.a n = A081190 n

theorem P5076735419547249316.correct : P5076735419547249316.Spec := by
  intro n
  simp only [A081190]

end A081190

/-! ## A081190.P14336039480691972387

`ceil(Δ[(3^n/4)²])+(7^n-1)/2`
-/

namespace A081190.P14336039480691972387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈f1 (n + 1) - f1 n⌉ : ℚ) + ((7 ^ n : ℤ) - 1 : ℚ) / 2

end

end A081190.P14336039480691972387

namespace A081190

/-- `ceil(Δ[(3^n/4)²])+(7^n-1)/2` -/
def P14336039480691972387.Spec : Prop :=
  ∀ n, P14336039480691972387.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P5241029854566168316

`abs(A081338(n)+(7^n-5^n)/2)`
-/

namespace A081190.P5241029854566168316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A081338 n : ℚ) + ((7 ^ n : ℤ) - (5 ^ n : ℤ) : ℚ) / 2|

end

end A081190.P5241029854566168316

namespace A081190

/-- `abs(A081338(n)+(7^n-5^n)/2)` -/
def P5241029854566168316.Spec : Prop :=
  ∀ n, P5241029854566168316.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P3633750139368989705

`A074623(n)/2`
-/

namespace A081190.P3633750139368989705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074623 n : ℚ) / 2

end

end A081190.P3633750139368989705

namespace A081190

/-- `A074623(n)/2` -/
def P3633750139368989705.Spec : Prop :=
  ∀ n, P3633750139368989705.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P10447908583724047741

`floor(A074524(n)/2)`
-/

namespace A081190.P10447908583724047741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074524 n : ℚ) / 2⌋

end

end A081190.P10447908583724047741

namespace A081190

/-- `floor(A074524(n)/2)` -/
def P10447908583724047741.Spec : Prop :=
  ∀ n, P10447908583724047741.a n = A081190 n

end A081190

/-! ## A081190.P16369401358160165271

`ceil(A155656(n)/2)`
-/

namespace A081190.P16369401358160165271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155656 n : ℚ) / 2⌉

end

end A081190.P16369401358160165271

namespace A081190

/-- `ceil(A155656(n)/2)` -/
def P16369401358160165271.Spec : Prop :=
  ∀ n, P16369401358160165271.a n = A081190 n

end A081190

/-! ## A081190.P11969100610142249366

`(A001019(n)+7^n)/2`
-/

namespace A081190.P11969100610142249366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001019 n + (7 ^ n : ℤ) : ℚ) / 2

end

end A081190.P11969100610142249366

namespace A081190

/-- `(A001019(n)+7^n)/2` -/
def P11969100610142249366.Spec : Prop :=
  ∀ n, P11969100610142249366.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P9770922349884045198

`((ratio[A000079(n)]+5)^n+9^n)/2`
-/

namespace A081190.P9770922349884045198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 5) ^ n + (9 ^ n : ℚ)) / 2

end

end A081190.P9770922349884045198

namespace A081190

/-- `((ratio[A000079(n)]+5)^n+9^n)/2` -/
def P9770922349884045198.Spec : Prop :=
  ∀ n, P9770922349884045198.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P13458350928105222731

`(A155598(n)+A155593(n))/2`
-/

namespace A081190.P13458350928105222731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155598 n + A155593 n : ℚ) / 2

end

end A081190.P13458350928105222731

namespace A081190

/-- `(A155598(n)+A155593(n))/2` -/
def P13458350928105222731.Spec : Prop :=
  ∀ n, P13458350928105222731.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P4563213112708358280

`(A155612(n)+A155607(n))/2`
-/

namespace A081190.P4563213112708358280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155612 n + A155607 n : ℚ) / 2

end

end A081190.P4563213112708358280

namespace A081190

/-- `(A155612(n)+A155607(n))/2` -/
def P4563213112708358280.Spec : Prop :=
  ∀ n, P4563213112708358280.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P15048609565717267537

`(A074545(n)-A000079(n))/2`
-/

namespace A081190.P15048609565717267537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074545 n - A000079 n : ℚ) / 2

end

end A081190.P15048609565717267537

namespace A081190

/-- `(A074545(n)-A000079(n))/2` -/
def P15048609565717267537.Spec : Prop :=
  ∀ n, P15048609565717267537.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P11021818856116736430

`(A074559(n)-A000244(n))/2`
-/

namespace A081190.P11021818856116736430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074559 n - A000244 n : ℚ) / 2

end

end A081190.P11021818856116736430

namespace A081190

/-- `(A074559(n)-A000244(n))/2` -/
def P11021818856116736430.Spec : Prop :=
  ∀ n, P11021818856116736430.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P18390892143925196920

`(A074580(n)-A001018(n))/2`
-/

namespace A081190.P18390892143925196920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074580 n - A001018 n : ℚ) / 2

end

end A081190.P18390892143925196920

namespace A081190

/-- `(A074580(n)-A001018(n))/2` -/
def P18390892143925196920.Spec : Prop :=
  ∀ n, P18390892143925196920.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P6571330547172805095

`(A000420(n)+A000244(n)²)/2`
-/

namespace A081190.P6571330547172805095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n + A000244 n ^ 2 : ℚ) / 2

end

end A081190.P6571330547172805095

namespace A081190

/-- `(A000420(n)+A000244(n)²)/2` -/
def P6571330547172805095.Spec : Prop :=
  ∀ n, P6571330547172805095.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P2760114922121115995

`∑[(A055275(n)+A055272(n))/2]`
-/

namespace A081190.P2760114922121115995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055275 n + A055272 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081190.P2760114922121115995

namespace A081190

/-- `∑[(A055275(n)+A055272(n))/2]` -/
def P2760114922121115995.Spec : Prop :=
  ∀ n, P2760114922121115995.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P9689843052305169735

`(A000420(n)+Δ[A002452(n)])/2`
-/

namespace A081190.P9689843052305169735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A081190.P9689843052305169735

namespace A081190

/-- `(A000420(n)+Δ[A002452(n)])/2` -/
def P9689843052305169735.Spec : Prop :=
  ∀ n, P9689843052305169735.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P336042464119168787

`Δ[(A023000(n)+A002452(n))/2]`
-/

namespace A081190.P336042464119168787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 n + A002452 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081190.P336042464119168787

namespace A081190

/-- `Δ[(A023000(n)+A002452(n))/2]` -/
def P336042464119168787.Spec : Prop :=
  ∀ n, P336042464119168787.a n = (A081190 n : ℚ)

end A081190

/-! ## A081190.P12369084691949773980

`Δ[(A047852(n)+A002452(n))/2]`
-/

namespace A081190.P12369084691949773980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047852 n + A002452 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081190.P12369084691949773980

namespace A081190

/-- `Δ[(A047852(n)+A002452(n))/2]` -/
def P12369084691949773980.Spec : Prop :=
  ∀ n, P12369084691949773980.a n = (A081190 n : ℚ)

end A081190

/-!
# A081192: 10th binomial transform of (1,0,1,0,1,......), A059841.

The programs for A081192, the canonical program `A081192.P15740551207536898250` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081192 has offset 0).

The definition of A081192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081192.P15740551207536898250

`20*a(n-1)-99*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081192

/-- `20*a(n-1)-99*a(n-2)` -/
def P15740551207536898250.Spec : Prop :=
  ∀ n, P15740551207536898250.a n = A081192 n

theorem P15740551207536898250.correct : P15740551207536898250.Spec := by
  intro n
  simp only [A081192]

end A081192

/-! ## A081192.P5489484125492266811

`(9^n+11^n)/2`
-/

namespace A081192.P5489484125492266811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n + 11 ^ n : ℚ) / 2

end

end A081192.P5489484125492266811

namespace A081192

/-- `(9^n+11^n)/2` -/
def P5489484125492266811.Spec : Prop :=
  ∀ n, P5489484125492266811.a n = (A081192 n : ℚ)

end A081192

/-! ## A081192.P5119146255040678430

`11*a(n-1)-9^(n-1)` with `a(0)=1`
-/

namespace A081192.P5119146255040678430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081192.P5119146255040678430

namespace A081192

/-- `11*a(n-1)-9^(n-1)` -/
def P5119146255040678430.Spec : Prop :=
  ∀ n, P5119146255040678430.a n = (A081192 n : ℚ)

end A081192

/-! ## A081192.P10759409140791928294

`ceil(A155670(n)/2)`
-/

namespace A081192.P10759409140791928294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155670 n : ℚ) / 2⌉

end

end A081192.P10759409140791928294

namespace A081192

/-- `ceil(A155670(n)/2)` -/
def P10759409140791928294.Spec : Prop :=
  ∀ n, P10759409140791928294.a n = A081192 n

end A081192

/-! ## A081192.P5020674285452423198

`A161999(2*(n+1))`
-/

namespace A081192.P5020674285452423198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (2 * (n + 1))

end

end A081192.P5020674285452423198

namespace A081192

/-- `A161999(2*(n+1))` -/
def P5020674285452423198.Spec : Prop :=
  ∀ n, P5020674285452423198.a n = A081192 n

end A081192

/-! ## A081192.P14317187989286602132

`record[A161999(A133265(n))]`
-/

namespace A081192.P14317187989286602132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081192.P14317187989286602132

namespace A081192

/-- `record[A161999(A133265(n))]` -/
def P14317187989286602132.Spec : Prop :=
  ∀ n, P14317187989286602132.a n = A081192 n

end A081192

/-! ## A081192.P12478079253655044399

`record[A161999(A004442(n)+1)]`
-/

namespace A081192.P12478079253655044399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081192.P12478079253655044399

namespace A081192

/-- `record[A161999(A004442(n)+1)]` -/
def P12478079253655044399.Spec : Prop :=
  ∀ n, P12478079253655044399.a n = A081192 n

end A081192

/-! ## A081192.P15013217720076062941

`record[A161999(A161984(n+1)+1)]`
-/

namespace A081192.P15013217720076062941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (A161984 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081192.P15013217720076062941

namespace A081192

/-- `record[A161999(A161984(n+1)+1)]` -/
def P15013217720076062941.Spec : Prop :=
  ∀ n, P15013217720076062941.a n = A081192 n

end A081192

/-! ## A081192.P16431839356910373314

`∑[(A055276(n)+A055275(n))/2]`
-/

namespace A081192.P16431839356910373314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055276 n + A055275 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081192.P16431839356910373314

namespace A081192

/-- `∑[(A055276(n)+A055275(n))/2]` -/
def P16431839356910373314.Spec : Prop :=
  ∀ n, P16431839356910373314.a n = (A081192 n : ℚ)

end A081192

/-!
# A081193: a(n) = 6*a(n-1)-8*a(n-2) for n>1, a(0)=1, a(1)=9.

The programs for A081193, the canonical program `A081193.P16464092214619306552` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081193 has offset 0).

The definition of A081193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A081193.P16464092214619306552`, by `A081193.P16464092214619306552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081193.P16464092214619306552

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081193

/-- `6*a(n-1)-8*a(n-2)` -/
def P16464092214619306552.Spec : Prop :=
  ∀ n, P16464092214619306552.a n = A081193 n

theorem P16464092214619306552.correct : P16464092214619306552.Spec := by
  intro n
  simp only [A081193]

end A081193

/-! ## A081193.P4452075917891743659

`Δ[(2^n-1)*(2^(n-1)-1)]+2^n*∑[2^n]`
-/

namespace A081193.P4452075917891743659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℚ)

end

end A081193.P4452075917891743659

namespace A081193

/-- `Δ[(2^n-1)*(2^(n-1)-1)]+2^n*∑[2^n]` -/
def P4452075917891743659.Spec : Prop :=
  ∀ n, P4452075917891743659.a n = (A081193 n : ℚ)

end A081193

/-! ## A081193.P8571874563708604430

`2^(n-1)*A154118(n+1)`
-/

namespace A081193.P8571874563708604430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A154118 (n + 1) : ℚ)

end

end A081193.P8571874563708604430

namespace A081193

/-- `2^(n-1)*A154118(n+1)` -/
def P8571874563708604430.Spec : Prop :=
  ∀ n, P8571874563708604430.a n = (A081193 n : ℚ)

end A081193

/-! ## A081193.P5444001558891108529

`abs(A020522(n)+5/2*4^n-3/2*2^n)`
-/

namespace A081193.P5444001558891108529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A020522 n : ℚ) + ((5 : ℚ) / 2 * (4 ^ n : ℚ) - (3 : ℚ) / 2 * (2 ^ n : ℚ))|

end

end A081193.P5444001558891108529

namespace A081193

/-- `abs(A020522(n)+5/2*4^n-3/2*2^n)` -/
def P5444001558891108529.Spec : Prop :=
  ∀ n, P5444001558891108529.a n = (A081193 n : ℚ)

end A081193

/-! ## A081193.P17463253955398295741

`abs(A060867(n+1)-A134057(n))`
-/

namespace A081193.P17463253955398295741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060867 (n + 1) - A134057 n|

end

end A081193.P17463253955398295741

namespace A081193

/-- `abs(A060867(n+1)-A134057(n))` -/
def P17463253955398295741.Spec : Prop :=
  ∀ n, P17463253955398295741.a n = A081193 n

end A081193

/-! ## A081193.P4540391888604421147

`Δ[A006095(n)+A000225(n)²]`
-/

namespace A081193.P4540391888604421147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A000225 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081193.P4540391888604421147

namespace A081193

/-- `Δ[A006095(n)+A000225(n)²]` -/
def P4540391888604421147.Spec : Prop :=
  ∀ n, P4540391888604421147.a n = A081193 n

end A081193

/-! ## A081193.P12804454613666743702

`Δ[A171477(n)-A049775(n+2)]`
-/

namespace A081193.P12804454613666743702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n - A049775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081193.P12804454613666743702

namespace A081193

/-- `Δ[A171477(n)-A049775(n+2)]` -/
def P12804454613666743702.Spec : Prop :=
  ∀ n, P12804454613666743702.a n = A081193 n

end A081193

/-! ## A081193.P12979835831265128671

`Δ[(A083597(n)-A083575(n))/2]`
-/

namespace A081193.P12979835831265128671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083597 n - A083575 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081193.P12979835831265128671

namespace A081193

/-- `Δ[(A083597(n)-A083575(n))/2]` -/
def P12979835831265128671.Spec : Prop :=
  ∀ n, P12979835831265128671.a n = (A081193 n : ℚ)

end A081193

/-! ## A081193.P6064985902199007000

`A000079(n)²*A154118(n+1)/A000079(n+1)`
-/

namespace A081193.P6064985902199007000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 * A154118 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A081193.P6064985902199007000

namespace A081193

/-- `A000079(n)²*A154118(n+1)/A000079(n+1)` -/
def P6064985902199007000.Spec : Prop :=
  ∀ n, P6064985902199007000.a n = (A081193 n : ℚ)

end A081193

/-! ## A081193.P2263991741926063751

`A000079(2*n)*A154118(n+1)/A000079(n+1)`
-/

namespace A081193.P2263991741926063751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) * A154118 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A081193.P2263991741926063751

namespace A081193

/-- `A000079(2*n)*A154118(n+1)/A000079(n+1)` -/
def P2263991741926063751.Spec : Prop :=
  ∀ n, P2263991741926063751.a n = (A081193 n : ℚ)

end A081193

/-!
# A081194: a(n) = 8*a(n-1) -15*a(n-2), a(0)=1, a(1)=16.

The programs for A081194, the canonical program `A081194.P2943703833915496807` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081194 has offset 0).

The definition of A081194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-15*a(n-2)` (program `A081194.P2943703833915496807`, by `A081194.P2943703833915496807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081194.P2943703833915496807

`8*a(n-1)-15*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081194

/-- `8*a(n-1)-15*a(n-2)` -/
def P2943703833915496807.Spec : Prop :=
  ∀ n, P2943703833915496807.a n = A081194 n

theorem P2943703833915496807.correct : P2943703833915496807.Spec := by
  intro n
  simp only [A081194]

end A081194

/-! ## A081194.P11497240210318695133

`A226511(n+1)-A074606(n)`
-/

namespace A081194.P11497240210318695133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226511 (n + 1) - A074606 n

end

end A081194.P11497240210318695133

namespace A081194

/-- `A226511(n+1)-A074606(n)` -/
def P11497240210318695133.Spec : Prop :=
  ∀ n, P11497240210318695133.a n = A081194 n

end A081194

/-! ## A081194.P9014736680016009958

`A081186(n)+4*A226511(n)`
-/

namespace A081194.P9014736680016009958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n + 4 * A226511 n

end

end A081194.P9014736680016009958

namespace A081194

/-- `A081186(n)+4*A226511(n)` -/
def P9014736680016009958.Spec : Prop :=
  ∀ n, P9014736680016009958.a n = A081194 n

end A081194

/-! ## A081194.P6025629679482853866

`A081186(n)+6*A005058(n)`
-/

namespace A081194.P6025629679482853866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n + 6 * A005058 n

end

end A081194.P6025629679482853866

namespace A081194

/-- `A081186(n)+6*A005058(n)` -/
def P6025629679482853866.Spec : Prop :=
  ∀ n, P6025629679482853866.a n = A081194 n

end A081194

/-! ## A081194.P9749433011453526010

`A005058(n+1)+A005059(n+1)-A074606(n)`
-/

namespace A081194.P9749433011453526010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 (n + 1) + (A005059 (n + 1) - A074606 n)

end

end A081194.P9749433011453526010

namespace A081194

/-- `A005058(n+1)+A005059(n+1)-A074606(n)` -/
def P9749433011453526010.Spec : Prop :=
  ∀ n, P9749433011453526010.a n = A081194 n

end A081194

/-!
# A081195: a(n) = 10*a(n-1)-24*a(n-2) for n>1, a(0)=1, a(1)=25.

The programs for A081195, the canonical program `A081195.P16083237487331511264` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081195 has offset 0).

The definition of A081195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-24*a(n-2)` (program `A081195.P16083237487331511264`, by `A081195.P16083237487331511264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081195.P16083237487331511264

`10*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081195

/-- `10*a(n-1)-24*a(n-2)` -/
def P16083237487331511264.Spec : Prop :=
  ∀ n, P16083237487331511264.a n = A081195 n

theorem P16083237487331511264.correct : P16083237487331511264.Spec := by
  intro n
  simp only [A081195]

end A081195

/-! ## A081195.P9718214101050043655

`A016149(n)+15*A081199(n)`
-/

namespace A081195.P9718214101050043655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n + 15 * A081199 n

end

end A081195.P9718214101050043655

namespace A081195

/-- `A016149(n)+15*A081199(n)` -/
def P9718214101050043655.Spec : Prop :=
  ∀ n, P9718214101050043655.a n = A081195 n

end A081195

/-!
# A081196: a(n) = (n+4)^n*binomial(n+2,2).

The programs for A081196, there is no canonical definition to state claims against.
-/

/-! ## A081196.P15531188404357555983

`(n+4)^n*∑[n+1]`
-/

namespace A081196.P15531188404357555983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081196.P15531188404357555983

/-! ## A081196.P5394069470868757090

`(n+1)*(n+2)*A008785(n)/2`
-/

namespace A081196.P5394069470868757090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 2 : ℤ) * A008785 n) : ℚ) / 2

end

end A081196.P5394069470868757090

/-! ## A081196.P13240604287546952177

`A065889(n+4)/(n+3)`
-/

namespace A081196.P13240604287546952177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065889 (n + 4) : ℚ) / (n + 3 : ℚ)

end

end A081196.P13240604287546952177

/-! ## A081196.P8753701487556474452

`A065888(n+4)/(2*(n+3))`
-/

namespace A081196.P8753701487556474452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065888 (n + 4) : ℚ) / (2 * (n + 3) : ℚ)

end

end A081196.P8753701487556474452

/-! ## A081196.P4952209841523721495

`A201685(A052905(n)+9)/(2*(n+3))`
-/

namespace A081196.P4952209841523721495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201685 (A052905 n + 9).toNat : ℚ) / (2 * (n + 3) : ℚ)

end

end A081196.P4952209841523721495

/-!
# A081197: Diagonal sums of A081130.

The programs for A081197, there is no canonical definition to state claims against.
-/

/-! ## A081197.P8438725242183796829

`A101494(A133263(n))-C(2, n)`
-/

namespace A081197.P8438725242183796829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A133263 n).toNat - (Nat.choose 2 n : ℤ)

end

end A081197.P8438725242183796829

/-! ## A081197.P16352331205838289046

`A101494(A133263(n))*A157928((1-n)²)`
-/

namespace A081197.P16352331205838289046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A133263 n).toNat * A157928 ((1 - (n : ℤ)) ^ 2).toNat

end

end A081197.P16352331205838289046

/-! ## A081197.P4142669895661064166

`char[A204900(n+1)+1]*A101494(A133263(n))`
-/

namespace A081197.P4142669895661064166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204900 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A101494 (A133263 n).toNat

end

end A081197.P4142669895661064166

/-! ## A081197.P996508428796944263

`A000035(A076973(n+1))*A101494(A133263(n))`
-/

namespace A081197.P996508428796944263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A076973 (n + 1)).toNat * A101494 (A133263 n).toNat

end

end A081197.P996508428796944263

/-! ## A081197.P1342981330971911490

`A101494(A133263(n))%A186020(A000124(n))`
-/

namespace A081197.P1342981330971911490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101494 (A133263 n).toNat) (A186020 (A000124 n).toNat)

end

end A081197.P1342981330971911490

/-! ## A081197.P11106111385374008981

`A101494(A133263(n))%A167894(n)`
-/

namespace A081197.P11106111385374008981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101494 (A133263 n).toNat) (A167894 n)

end

end A081197.P11106111385374008981

/-!
# A081199: 5th binomial transform of (0,1,0,1,...), A000035.

The programs for A081199, the canonical program `A081199.P13504535584202629676` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081199 has offset 0).

The definition of A081199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081199.P13504535584202629676

`10*a(n-1)-24*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A081199

/-- `10*a(n-1)-24*a(n-2)` -/
def P13504535584202629676.Spec : Prop :=
  ∀ n, P13504535584202629676.a n = A081199 n

theorem P13504535584202629676.correct : P13504535584202629676.Spec := by
  intro n
  simp only [A081199]

end A081199

/-! ## A081199.P1960329254299422337

`(6^n-4^n)/2`
-/

namespace A081199.P1960329254299422337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 2

end

end A081199.P1960329254299422337

namespace A081199

/-- `(6^n-4^n)/2` -/
def P1960329254299422337.Spec : Prop :=
  ∀ n, P1960329254299422337.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P4214382659505612216

`lcm(3^n-2^n, floor(2^(n-1)))`
-/

namespace A081199.P4214382659505612216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 ^ n : ℤ) - (2 ^ n : ℤ)) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A081199.P4214382659505612216

namespace A081199

/-- `lcm(3^n-2^n, floor(2^(n-1)))` -/
def P4214382659505612216.Spec : Prop :=
  ∀ n, (P4214382659505612216.a n : ℤ) = A081199 n

end A081199

/-! ## A081199.P5803849812435752937

`floor(A155627(n)/2)`
-/

namespace A081199.P5803849812435752937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155627 n : ℚ) / 2⌋

end

end A081199.P5803849812435752937

namespace A081199

/-- `floor(A155627(n)/2)` -/
def P5803849812435752937.Spec : Prop :=
  ∀ n, P5803849812435752937.a n = A081199 n

end A081199

/-! ## A081199.P5744989891883476214

`round(A248337(n)/2)`
-/

namespace A081199.P5744989891883476214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248337 n : ℚ) / 2)

end

end A081199.P5744989891883476214

namespace A081199

/-- `round(A248337(n)/2)` -/
def P5744989891883476214.Spec : Prop :=
  ∀ n, P5744989891883476214.a n = A081199 n

end A081199

/-! ## A081199.P2366610769320323397

`A081187(n)-4^n`
-/

namespace A081199.P2366610769320323397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081187 n - (4 ^ n : ℤ)

end

end A081199.P2366610769320323397

namespace A081199

/-- `A081187(n)-4^n` -/
def P2366610769320323397.Spec : Prop :=
  ∀ n, P2366610769320323397.a n = A081199 n

end A081199

/-! ## A081199.P16935474635357598437

`2^(n-1)*A001047(n)`
-/

namespace A081199.P16935474635357598437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001047 n : ℚ)

end

end A081199.P16935474635357598437

namespace A081199

/-- `2^(n-1)*A001047(n)` -/
def P16935474635357598437.Spec : Prop :=
  ∀ n, P16935474635357598437.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P12565756874736014260

`2^(n-2)*A056182(n)`
-/

namespace A081199.P12565756874736014260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A056182 n : ℚ)

end

end A081199.P12565756874736014260

namespace A081199

/-- `2^(n-2)*A056182(n)` -/
def P12565756874736014260.Spec : Prop :=
  ∀ n, P12565756874736014260.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P9217647859920810338

`2^(n-1)*Δ[A134063(n)]`
-/

namespace A081199.P9217647859920810338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A081199.P9217647859920810338

namespace A081199

/-- `2^(n-1)*Δ[A134063(n)]` -/
def P9217647859920810338.Spec : Prop :=
  ∀ n, P9217647859920810338.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P145018292059694696

`(3^n-2^n)*A011782(n)`
-/

namespace A081199.P145018292059694696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (2 ^ n : ℤ)) * A011782 n

end

end A081199.P145018292059694696

namespace A081199

/-- `(3^n-2^n)*A011782(n)` -/
def P145018292059694696.Spec : Prop :=
  ∀ n, P145018292059694696.a n = A081199 n

end A081199

/-! ## A081199.P16335681620092611802

`A081341(n)-A081294(n)`
-/

namespace A081199.P16335681620092611802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 n - A081294 n

end

end A081199.P16335681620092611802

namespace A081199

/-- `A081341(n)-A081294(n)` -/
def P16335681620092611802.Spec : Prop :=
  ∀ n, P16335681620092611802.a n = A081199 n

end A081199

/-! ## A081199.P10863923508112198255

`A001047(n)*A131577(n)`
-/

namespace A081199.P10863923508112198255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n * A131577 n

end

end A081199.P10863923508112198255

namespace A081199

/-- `A001047(n)*A131577(n)` -/
def P10863923508112198255.Spec : Prop :=
  ∀ n, P10863923508112198255.a n = A081199 n

end A081199

/-! ## A081199.P1660032593309500828

`Δ[A016283(n)]-A016283(n)`
-/

namespace A081199.P1660032593309500828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016283 n

end

end A081199.P1660032593309500828

namespace A081199

/-- `Δ[A016283(n)]-A016283(n)` -/
def P1660032593309500828.Spec : Prop :=
  ∀ n, P1660032593309500828.a n = A081199 n

end A081199

/-! ## A081199.P3318896891752587140

`A081341(n)-A011782(2*n)`
-/

namespace A081199.P3318896891752587140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 n - A011782 (2 * n)

end

end A081199.P3318896891752587140

namespace A081199

/-- `A081341(n)-A011782(2*n)` -/
def P3318896891752587140.Spec : Prop :=
  ∀ n, P3318896891752587140.a n = A081199 n

end A081199

/-! ## A081199.P11049829003546235496

`A001047(n)/2*A155559(n)`
-/

namespace A081199.P11049829003546235496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 n : ℚ) / 2 * (A155559 n : ℚ)

end

end A081199.P11049829003546235496

namespace A081199

/-- `A001047(n)/2*A155559(n)` -/
def P11049829003546235496.Spec : Prop :=
  ∀ n, P11049829003546235496.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P14390783839138127006

`A001047(n)/2*A171449(n)`
-/

namespace A081199.P14390783839138127006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 n : ℚ) / 2 * (A171449 n : ℚ)

end

end A081199.P14390783839138127006

namespace A081199

/-- `A001047(n)/2*A171449(n)` -/
def P14390783839138127006.Spec : Prop :=
  ∀ n, P14390783839138127006.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P18273996551241164012

`A001047(n)/2*A171559(n)`
-/

namespace A081199.P18273996551241164012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 n : ℚ) / 2 * (A171559 n : ℚ)

end

end A081199.P18273996551241164012

namespace A081199

/-- `A001047(n)/2*A171559(n)` -/
def P18273996551241164012.Spec : Prop :=
  ∀ n, P18273996551241164012.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P9154516615705379545

`A056182(n)/2*A131577(n)`
-/

namespace A081199.P9154516615705379545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 n : ℚ) / 2 * (A131577 n : ℚ)

end

end A081199.P9154516615705379545

namespace A081199

/-- `A056182(n)/2*A131577(n)` -/
def P9154516615705379545.Spec : Prop :=
  ∀ n, P9154516615705379545.a n = (A081199 n : ℚ)

end A081199

/-! ## A081199.P17942398714991764335

`A001047(n)/2*Δ[A168616(n)]`
-/

namespace A081199.P17942398714991764335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A081199.P17942398714991764335

namespace A081199

/-- `A001047(n)/2*Δ[A168616(n)]` -/
def P17942398714991764335.Spec : Prop :=
  ∀ n, P17942398714991764335.a n = (A081199 n : ℚ)

end A081199

